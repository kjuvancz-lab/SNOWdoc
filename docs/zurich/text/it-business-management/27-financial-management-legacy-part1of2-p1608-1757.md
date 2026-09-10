# Zurich Strategic Portfolio Management — Financial Management - Legacy

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1608–1757 of 2289 | Part 1 of 2

Sections: Financial Management - Legacy (p1608)

---

<!-- page 1608 -->
Procedure
1. Log in to your instance using the Now Mobile application.
2. From the time sheets list in the Team approvals requests section, open the time sheet you
want to recall or the one that contains the time card you want to recall.
3. Recall the time sheet or time card.
◦ To recall an approved time sheet, navigate to All time sheets section, and select a time sheet
from the This week, Last week, or Older tab, and then tap the Recall (

) icon

◦ To recall the entire time sheet, tap the action icon, and select Recall Time sheet or tap the
Recall time sheet button at the bottom of the screen.
◦ To recall a specific time card, tap the action icon, and select Recall time card.

Financial Management - Legacy
®

Use the ServiceNow Financial Management application to allocate, track, and report on
expenses in your organization.

Important:
Starting March 2021, Financial Modeling is no longer available for activation.
• New customers: If you do not currently have the entitlement to Financial Modeling but
are interested to use it, reach out to one of the Partner Store Apps. Your ServiceNow
implementation partner could help you with the Partner Store App details.
• Existing customers:
◦ If you own the entitlement to Financial Modeling but have not implemented it, reach out
to one of the Partner Store Apps. Your ServiceNow implementation partner could help
you with the Partner Store App details.
◦ If you own the entitlement to Financial Modeling and have already implemented it, you
can continue using it. The ServiceNow Support team would continue to support you
with the application, in the way that you have implemented it.
Enhancements to the application in the future would be done only on the performance
but not to the functionality.
Watch this five-minute video to learn more about financial planning, actual expenses, and
budgeting. Information about financial planning, actual expenses, and budgeting in financial
management
The application provides a workbench, which is a visual tool that you can use to extract
expenses from your general ledger. You can also use it to process the expenses, and map them
to the functions used by IT. Various reports are also available to help you know exactly how much
of your expenditures are related to IT.
The Financial Management application is available starting with the Fuji release. The modules
in the Financial Management application prior to the Fuji release are included with IT Cost
Management.

How Financial Management Works
The Financial Management application uses these components:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1608


<!-- page 1609 -->
• The general ledger: A list of your organizational expenses.
• The fiscal period: The time frame during which expenses were incurred. You can work with only
one fiscal period at a time.
• The cost models: The underlying records that tell the application how to allocate expenses to
the accounts in the hierarchy of segments.
• The allocation engine: The core of the application that uses your cost model to calculate
expenses and determine how to allocate expenses.
• Financial reports and dashboards: Graphical representations of the expense allocations that
show you where your expenses are coming from.
With the workbench, you can choose the fiscal period, build your cost model, and run the
allocation engine.
There are specific dashboards for Business Application Costing cost model that you can use to
track key data relevant to your business applications.

Requirements
The following are required to use Financial Management:
• For all financial overview and dashboard reports to function properly, activate Report Charting
v2 on your instance.
• If you are using Internet Explorer, use version 11 or later. You can also use any of the other
generally supported web browsers.

Installed with Financial Management - Legacy
Several components are installed with the Financial Management application.
Demo data is available with Financial Management. The demo data provides sample hierarchy of
segments information, allocations, and expenses.
Tables installed with Financial Management - Legacy
Financial Management adds the following tables.

Table

Description

Actuals Log [itfm_actuals_run_log]

Logs of actuals generated and keys generated for the
associated plan definition.

Base Statement Item Breakdown
[itfm_charge_item_breakdown]

Statement item breakdown definitions.

Breakdown Relationship
[itfm_breakdown]

Statement item breakdown definitions.

Bucket [itfm_bucket]

Buckets used in the allocation workbench to group
similar expenses.

Bucket Account Allocation
[itfm_bucket_account_allocation]

Bucket assignment information.

Bucket Allocation Account
[itfm_bucket_allocation_account]

A reference link among buckets, accounts, and cost
models.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1609


<!-- page 1610 -->
Table

Description

Bucket Allocation Rule
[itfm_bucket_allocation_rule]

Allocates expenses to buckets.

Budget [itfm_budget]

Final budgets.

Budget Actual [itfm_gl_actuals]

Actual expenses.

Budget Definitions
[itfm_plan_definition]

Parent table for budgeting that holds the metadata such
as name, budget plan year span, forecast time span,
ownership, and frequency of forecasting.

Budget Forecast
[itfm_budget_forecast]

All budget forecasts.

Budget Forecast Items [itfm_bf_item] All items on the budget forecast.
Budget Keys [itfm_plan_key]

The key used to identify forecasts and plans.

Budget Notes [itfm_budget_note]

Notes for budgets that you enter in the budget variance
report.

Budget Override Categories
[itfm_budget_override_categories]

Categories that you use to classify budget overrides.

Budget Period [itfm_budget_period]

Budget periods.

Budget Reference Rate
Configuration [itfm_fx_config]

Exchange rate / fiscal period relationships.

Budget Reference Rates
[itfm_fx_rate]

The exchange rates that budgets use.

Budget Segment Map
[itfm_budget_segment_map]

A relationship between segments that budgets use and
a budget key.

Budget Targets [itfm_budget_target]

All budget target values.

Budget Task [itfm_budget_task]

Budget tasks.

Business Unit [business_unit]

All business units.

Cleansing Condition
[itfm_cleansing_condition]

Conditions that the application automatically generates
when you clean data in the workbench.

Consumption Breakdown
Breakdown definitions for statement items that are
[itfm_charge_item_breakdown_cons] based on a user-defined consumption table.
Consumption Statement Item
[itfm_charge_item_cons]

Showback source definitions for statement items that
are based on a user-defined consumption table.

Cost Allocation
[itfm_account_allocation]

An all-around view of the allocations going to and from
each account.

Cost Allocation [itfm_allocation]

All allocation lines that are processed from allocations.
This table holds a more detailed level of allocation lines
as compared to the Cost Allocation Aggregate table.

Cost Allocation
Breakdown Aggregate
[itfm_allocation_breakdown]

Allocation lines created based on cost allocation
breakdown relationships.

Cost Allocation Group
[itfm_cost_allocation_group]

Groups that can be associated with allocations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1610


<!-- page 1611 -->
Table

Description

Cost Allocation Metric
[itfm_cost_allocation_metric]

Metrics that weighted and custom allocation methods
use.

Cost Allocation Aggregate
[itfm_allocation_aggregate]

A more brief set of allocation line data than is saved in
the Cost Allocation [itfm_allocation] table.

Cost Allocation Rollup [itfm_rollup]

Rollups that the application creates when you use the
workbench.

Cost Allocation Rollup Override
[itfm_rollup_override]

Values that you can use to override allocation rollups.

Cost Allocation Runs Log
[itfm_ca_run_log]

A log of all allocations that have been run.

Cost Model Breakdown
[itfm_charge_item_breakdown_cm]

Breakdown definitions for statement items that are
based on the Financial Modeling output.

Cost Model Statement Item
[itfm_charge_item_cm]

Showback source definitions for statement items that
are based on the financial modeling output.

Financial Data Source
[itfm_data_source]

The source of the financial data: the staged general
ledger or the cost plan breakdown.

Financial Data Source Field Map
[itfm_data_source_field_map]

Individual fields mapped to the sources of financial data.

Financial Model [itfm_cost_model]

Financial cost models.

FM Report [itfm_report]

Finance reports.

Forecast Period
[itfm_forecast_period]

Forecast periods.

General Ledger Accounts
[itfm_gl_accounts]

Accounts and associated account numbers.

General Ledger Cleansed Data
[itfm_gl_data_cleansed]

Expenses in the general ledger that is cleansed.

General Ledger Log [itfm_gl_log]

Log records that are created when expenses are added
to the general ledger for a fiscal period.

General Ledger Staged Data
[itfm_gl_data_staged]

Imported expenses that have not been cleansed or
groomed.

Groomed General Ledger Data
[itfm_gl_data_groomed]

Expenses in the general ledger that have been
groomed.

Grooming Condition
[itfm_grooming_condition]

Conditions that the application creates during the
financial grooming process in the workbench.

ITCOA Definition
[itfm_itcoa_definition]

Reference field mappings for cost models.

IT Shared Service
[itfm_shared_service]

Services shared across the IT infrastructure.

IT Shared Service Type
[itfm_shared_service_type]

Categories that are associated with IT shared services.

ITFM Session [itfm_session]

Saves session information for the workbench.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1611


<!-- page 1612 -->
Table

Description

Main Report Configuration
[itfm_ca_main_config]

Configuration settings for the main Financial
Management report.

Plan Actuals [itfm_plan_actuals]

Actual items created based on budget definition from
staged source expense lines.

Plan Actual Breakdowns
[itfm_ai_breakdown]

Actual amount breakdowns of the item for each fiscal
period.

Plan Core [itfm_plan_core]

Meta information such as name, original plan, budget
currency of a plan. itfm_plan and itfm_plan_versions
extend from the table.

Plan Item Breakdown
[itfm_pi_breakdown]

Breakdowns of costs for a given plan item.

Plan Item Execution
[itfm_plan_item_execution]

Unit cost and its validity of plan item.

Plan Items [itfm_plan_item]

Financial details such as account number, budgeted
amount, forecast amount, actual amount, and attributes
associated to asset, project, catalog, and contract.

Plans [itfm_plan]

Associates a budget key and the fiscal yearly details of
the plan.

Planner [itfm_planner]

Owners of budget keys.

Plan Template Column
[itfm_plan_template_column]

Defines columns as template columns for budget
definition.

Plan Versions [itfm_plan_versions]

Plans that are created during promotion of each plan.

Plan Viewer [itfm_plan_viewer]

Access to view the plans.

Plan Yearly Details
[itfm_plan_year_details]

Yearly plan details.

Planning Data Source Field Map
[itfm_plan_data_source_field_map]

Planning data source field map.

Planning Log [itfm_plan_run_log]

Planning log.

Reporting Entity
[itfm_reporting_entity]

Reporting entity assigned to a user or group.

Segment Definition
[itfm_ca_segment_map]

Segments specified in the hierarchy of segments.

Segment Group Accounts
[itfm_group_segment_acct]

Grouped ITCOA accounts.

Segment Relationship
[itfm_itcoa_hierarchy]

Relationships between segments in the segment
hierarchy as defined in the Data Definition stage of the
workbench.

Service Catalog Breakdown
[itfm_charge_item_breakdown_sc]

Breakdown definitions for statement items that are
based on Service Catalog requests.

Service Catalog Statement Item
[itfm_charge_item_sc]

Showback source definitions for statement items that
are based on Service Catalog requests.

Service Charge Line
[itfm_charge_line]

Individual showback lines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1612


<!-- page 1613 -->
Table

Description

Service Charge Line Drilldown
[itfm_charge_line_drilldown]

Individual showback line drilldowns.

Service Charge Price Ratecard
[itfm_sc_price_rate_card]

Showback price rate card.

Showback Statement [itfm_sb_stmt]

Showback statements.

Showback Statement Definition
[itfm_sb_stmt_def]

Showback statement definitions.

Showback Statement Line Definition
[itfm_sb_stmt_line_def]

Showback statement line definitions.

Showback Statement
Line Unit Cost Definition
[itfm_sb_stmt_line_unit_cost_def]

Showback statement line unit cost definitions.

Sibling Rollup Relationship
[itfm_sibling_relationship]

Sibling segment rollup relationship definitions.

Statement Dispute [itfm_dispute]

Showback disputes.

Statement Expense Line
[itfm_charge_expense_line]

Individual showback statement expense items.

Statement Expense Line Details
[itfm_charge_expense_line_details]

Detailed showback expense information.

Statement Item [itfm_charge_item]

Showback source definitions.

Statement Item Drilldown
[itfm_chg_item_drilldown]

Statement item drilldown definitions.

Unit Cost Metrics
[itfm_segment_unit_metrics]

Unit cost metric definitions.

Unit Costs [itfm_unit_cost]

Unit cost lines generated by cost allocation.

Weight Map Run Log
[itfm_weight_map_run_log]

Weight map generation log.

Weight Maps [itfm_weight_map]

Weight relationships that the application uses to
calculate weighted metrics.

The application also uses this table created by the Fiscal Calendar.
Tables for the fiscal calendar
Table

Description

Fiscal period [fiscal_period]

Fiscal calendars and the periods used by fiscal calendars.

User roles installed with Financial Management - Legacy
Financial Management adds the following user roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1613


<!-- page 1614 -->
Role

Description

Contains Roles

cost_transparency_admin

Has access to all Financial
Modeling menus and modules.

• cost_transparency_analyst

cost_transparency_user

Has read-only access to general
ledger and allocation records.

cost_transparency_analyst Has access to the Financial
Modeling module and the
workbench.
sn_itfm_read

Access to view FM APM
dashboards provided by the
base system and the underlying
tables from where the data for the
dashboards are retrieved.

• cost_transparency_owner
none
cost_transparency_user

• pa_viewer
• cmdb_read

View Financial Management
Application TCO dashboard,
Costing for Business Applications
dashboard, CIO dashboard.
service_charging_analyst

• Can create, update, delete, and
view charge items.
• Can create, update, delete, and
view charge item breakdowns.
• Can create, update, delete, and
view charge item drilldowns.
• Can create, update, delete,
and view showback statement
definitions.
• Can create, update, delete, and
view showback statement line
definitions.
• Generate and publish the
showback statements.

service_charging_owner

• View charge items.
• Access the service charging
console to review and set the
pricing policies.
• Review the charge item drilldown
with the available breakdowns
and drilldowns.

showback_user

• View the showback statements.
• Accept the showback statements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1614


<!-- page 1615 -->
Read-only roles for Financial Management - Legacy
You can restrict the level of access of your users with a read-only role that enables them to view
the Financial Management (FM) dashboards. Users with the read-only role can view FM reports
and the underlying tables that provide data.

Plugin information
If you are a new customer, the Read only roles for PPM Standard (com.snc.pmo_read_roles)
plugin is activated on zBoot. However, you also require Financial Management For
APM (com.snc.financial_management_for_apm) plugin, which activates Performance
Analytics – Content Pack – Financial Management for Application Portfolio Management
(com.snc.pa.fm.apm) plugin. With this plugin you can access the FM APM dashboards.

Why read-only roles for FM
Read only roles for Financial Management (sn_itfm_read) is available when Read only roles for
PPM Standard plugin (com.snc.pmo_read_roles) is activated. Users with this role can access
dashboards and view reports in Financial Management for Application Portfolio Management. To
assign user roles, including read-only roles, see assign a role to a user .

Dashboards accessible to users with FM read role
Following are the dashboards available for users with the read-only role:
• Financial Management Application TCO dashboard
• Costing for Business Applications dashboard
• CIO dashboard

Tables accessible to users with FM read role
Following are the Financial Management tables that the users with the FM read role can access:
FM tables
Label

Table name

Cost Allocation Aggregate

itfm_allocation_aggregate

Cost Allocation

itfm_allocation

Financial Model

itfm_cost_model

Bucket

itfm_bucket

Segment Definition

itfm_ca_segment_map

IT Shared Service

itfm_shared_service

Cost Allocation Breakdown Aggregate

itfm_allocation_breakdown

Domain separation and Financial Management - Legacy
Domain separation is unsupported in Financial Management. Domain separation enables you
to separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1615


<!-- page 1616 -->
Support level: No support
• The domain field may exist on data tables but there is no business logic to manage the data.
• This level is not considered domain-separated.
For more information on support levels, see Application support for domain separation

.

Related topics
Domain separation for service providers

Financial Management for licensed APM users - Legacy
If you are an Enterprise Architecture (formerly Application Portfolio Management) licensed
user and using Financial Management, then the base system provides you with a Business
Application Costing cost model that you can use to evaluate the cost of your business
applications along with its prescribed metrics.

Business Application Costing cost model
Business application costing cost model

The specifications of the Business Application Costing cost model are:
• The cost bucket layer is tied to the ITFM bucket table [itfm_bucket] and the cost buckets are
specific to the model.
• IT shared service segment accounts are sourced from the IT shared service table
[itfm_shared_service].
• Business application segment accounts (the middle layer in this model) are sourced from
the Business Application [cmdb_ci_business_app] table. This table is the source of accounts
to the applications segment. Or, it can be Application [cmdb_ci_appl] table or other custom
tables.
• The business unit layer is tied to the platform business unit table [business_unit].
• There is no data source to this cost model, which means that you should enter the spend
information directly into the model and not come from the general ledger. Using the general
ledger as a source of spend information is an optional feature that you can configure. See
Prerequisites to modify data source of a cost model for more information.

Seeded IT Shared Services
IT Shared Service: End User Compute
IT Shared Service: Equip End Users is a cost collection container that holds any
money spent on providing the end users with personal (not shared) devices, the
software that runs on these devices, and the support associated with making and
keeping those devices functioning. This container excludes major device upgrades,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1616


<!-- page 1617 -->
lease cycle turnover, and other replenishment-related costs, which are captured
within the Facilitate Ongoing Change container.
IT Shared Service: Database
IT Shared Service: Facilitate Configuration Change is a cost collection container
that holds money spent on supporting the ITSM Change, Release and Configuration
Management processes. That is, any dollars spent on managing ongoing, daily,
common, and ad-doc configuration changes. This includes activities like patching
(non-security related), firmware updates, hardware/software configuration setting
changes, installation, de-installation, and upgrade of hardware components, and
general add, move, or change requests across the IT landscape. This container
excludes major upgrades and changes across a large portion of the environment for
which a project plan and/or funding would need to be secured.
IT Shared Service: Network
IT Shared Service: Facilitate Connectivity is a cost collection container that holds
any money spent on providing all device network connectivity to the company,
its computing and/or knowledge assets, the hardware and software to do it, and
the support associated with making (and keeping) the access up. This includes all
personal and enterprise devices. This container excludes monitoring hardware,
software, and personnel costs, which are captured in the Monitor the Environment
container.
IT Shared Service: IT Management
IT Shared Service: Management and Overhead is a cost collection container that
holds any money spent on IT executive compensation, as well as one-time charge
items that apply to the existence of IT operations, compliance or audit costs, and
otherwise uncategorised costs. This container excludes any costs captured or
accounted for in any of the other IT process definitions.
IT Shared Service: Data Center
IT Shared Service: Monitor the Environment is a cost collection container that holds
the money spent on supporting the ITOM Event Management process; that is,
any dollars spent on monitoring the entire IT landscape. This includes endpoint
connectivity speeds, endpoint application performance testing, hardware/software/
network/storage threshold checking, and fault and event correlation management
tools used by operations management personnel. This container excludes security
specific and/or cloud monitoring services mentioned in other process areas.
IT Shared Service: IT Operations
IT Shared Service: Perform Upgrades/Maintenance is a cost collection container
that holds money spent supporting the ITSM Change, Release and Configuration
Management processes. That is, all dollars spent on managing major upgrades,
either project planned and/or specifically funded. This includes activities such as
widespread OS upgrades; hardware replacement cycle activities; and internal or
third-party business or IT management software package release updates across
the IT landscape. This container excludes ongoing, daily, common, and ad-doc
configuration changes that only require a change ticket to be executed.
IT Shared Service: Service Desk
IT Shared Service: Provide Tech Support is a cost collection container that holds
money spent supporting the ITSM Incident, Problem and Knowledge Management
processes. That is, any dollars spent on providing technical support services to
end users across the organization. This includes tier 1, 2, and 3 personnel, incident
or problem management software, root cause analysis time, routine or ad-doc
assistance (password resets, how to Q&A), and/or standard operating procedure
guidance. This container excludes actual configuration changes to end user and/or
corporate assets performed by way of documented change tickets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1617


<!-- page 1618 -->
IT Shared Service: Application
IT Shared Service: Run Business Applications is a cost collection container that
holds any dollars spent on ongoing personnel time to keep business applications
operating. This includes resources dedicated to applications and excludes IT or
infrastructure operation costs.
IT Shared Service: Security & Compliance
IT Shared Service: Secure the Environment is a cost collection container that holds
money spent on supporting the Security Operations. That is, any dollars spent on
providing information security across the corporate IT landscape. This includes
individual user endpoint devices, cloud applications, cloud computing, and/or onpremise computing resource of all types in addition to all desktops, laptops, smart
phones, network gear, servers, databases, and applications. This excludes the
physical security costs associated with datacenters, and office space card readers.
IT Shared Service: Storage
IT Shared Service: Store and Manage Data is a cost collection container that holds
any dollars spent on the underlying tools and foundational activities related to
the management of structured and unstructured data (for example, encryption,
backups, purging, archiving, migrations, and DR replication) and/or storage capacity
(for example, reorganizations and excess capacity acquisition). It includes these
types of activities and all the people power used to ensure the health of the data
and storage landscape. This container excludes elements related to local storage
on end user devices utilized by single individuals and specific activities, and
allocated storage that can be related to specific applications or systems.
IT Shared Service: Compute
IT Shared Service: Supply Computing Power is a cost collection container that
holds any dollars spent on providing foundational elements that exist, cost money
to maintain, but may never actually be used such as disaster recovery facilities or
contracts, hardware spares inventory, on-premises UPS systems, and generators. It
also includes daily active data center costs related to things such as space, power,
and cooling.

ITFM prescribed metrics
Allocate to Application based on Active User Count
The metric allocates shared service cost to applications based on the following
weighted metric:
Allocate to Applications using active user count

• The Business Application [cmdb_ci_business_app] table provides a list of all
business applications.
• The prescribed metric performs a sum of active users and weights the costs
accordingly to the receiving applications by Sys ID.
Allocate to Application based on Compute Power
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1618


<!-- page 1619 -->
The metric allocates shared service cost to applications based on the following
weighting table:
Allocate to Application based on Compute Power

• The CI Relationship [cmdb_rel_ci] table provides a list of all relationships between
configuration items.
• The prescribed metric performs a count of configuration items where the
Child.Class = Server and weights the costs accordingly to the receiving
applications.
Allocate to Business Unit on Headcount
The metric allocates shared service cost to business unit based on the following
weighting table:
Allocate to Business Unit on Headcount

• The User [sys_user] table provides a list of all system users and their related
department.
• The Department [cmn_department] table provides a list of all departments and
their related business unit.
• The prescribed metric performs a count on the number of users per business unit
and weights the costs accordingly.
Filter criteria: Only count active users.

Dashboards for Business Application Costing cost model
There are three performance analytic dashboards that you can access with Business Application
Costing cost model. They are:
• Application TCO dashboard.
• Business Application Costing dashboard.
• CIO Dashboard for Business Applications. CIO Dashboard for Business Applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1619


<!-- page 1620 -->
Configure business application costing cost model - Legacy
Configure the business application costing cost model to allocate expenses and generate
bucket cost lines for the fiscal periods to suit your requirements.

Before you begin

Role required: cost_transparency_analyst

Procedure
1. Navigate to All > Financial Modeling for APM > Business Application Costing Model.
The field values in the Financial Model – Business Application form are pre-populated. You
can choose to enter a model owner and user group for the Business Application Costing cost
model. There is no data source for this cost model.
2. On the form, update the required fields.
Financial Model – Business Application Costing form
Field

Description

Name

Name of the cost model.

Description

Short description of the cost model.

Model Owner

User who owns the cost model.

Data Source

Source of data for the cost model.
This cost model has no data source, hence
the field is non-editable.

User Group

Group of users who can access the cost
model.

Include Sub-Bucket info

Option to show sub-bucket information.
If selected, the generated cost lines
and breakdown lines hold sub-bucket
information.

3. Click Update.
4. To run cost allocations, click Allocate Expenses button.

Note: If you are a non-analyst licensed customer, ensure that the number of accounts in
each segment and the total number of accounts in the cost model is within the threshold
values 4000 and 12000 respectively.
Use this option to run cost allocation from the cost model form and not necessarily from the
workbench.
a. Select the fiscal period in the Allocate Expense dialog box.
b. Click OK.
The allocation engine runs to generate cost allocations for the selected fiscal period. The
engine does cleansing and bucketing. It allocates the expenses and creates allocation
lines. However, if the cost model has no data source, the engine ignores the cleansing and
bucketing stages and creates allocation lines.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1620


<!-- page 1621 -->
5. To generate cost lines for leaf buckets associated to the cost model, click Generate Bucket
Cost button.
Use this option to generate bucket amount lines for this cost model that has no data source.
Cost lines are generated for each leaf bucket that has no further sub-buckets. Even if there is
no amount in the bucket, the amount lines are generated in the Groomed General Ledger Data
[itfm_gl_data_groomed] table, populating zero in the Amount column. The table displays the
bucket, sub-bucket, and amount associated with the cost model for the fiscal period that you
selected.
a. Select the fiscal period in the Generate Bucket Cost dialog box.
b. Click OK.
▪ If there is no amount in a bucket, the allocation engine still generates a groomed line with
zero expense for the selected fiscal period of the cost model.
▪ If there are pre-existing groomed lines with amounts in buckets for that fiscal period, then
the engine does not overwrite those cost lines.
You can edit the Amount column to enter the amount for each sub-bucket.
6. To view the bucket amounts, navigate to Financial Modeling for APM > Bucket Amounts.
For more information, see Create groomed lines for cost models with no data source.
7. To view the buckets associated to this cost model, navigate to Financial Modeling for APM >
Buckets.
For more information, see Create an account bucket.
8. To access the dashboards available for this cost model, navigate to Financial Modeling for
APM > Financial Modeling for APM Dashboards.

Financial Management for licensed SPM users - Legacy
If you are a Strategic Portfolio Management (SPM) user and have activated Financial
Management, then the base system provides you with a Service Offering Costing cost model.
Use this cost model to evaluate the amount spent at each level of service. Financial Modeling
allocates expenses and generates cost lines based on the level of service for a defined price.

Service Offering Costing cost model
Service Offering Costing cost model

The specifications of the Service Offering Costing cost model are:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1621


<!-- page 1622 -->
• IT shared service segment accounts are sourced from the IT shared service
[itfm_shared_service] table.
• Service Offering segment accounts are sourced from the Service Offering [service_offering]
table.
• IT Shared Service segment rolls up to the Service Offering segment. However, there are no
default rollup overrides.
• All sub-buckets are spread equally to all accounts in IT Shared Services provided by the base
system setup.
• There is no data source to this cost model, which means that you should enter the spend
information directly into the model and not come from the general ledger. Using the general
ledger as a source of spend information is an optional feature that you can configure. See
Prerequisites to modify data source of a cost model for more information.
• The expenses are allocated from IT Shared Services segment to the Service Offering segment
by Equal method of the base system. By default, the allocation setup provided in the Allocation
Setup stage is Equal rollup method. You can configure the rollup method, if needed, to match
your specific requirements.

Seeded IT Shared Services
See the list of seeded IT Shared Services.

ITFM prescribed metrics
Allocate to Service Offering on Allocation Maps
The metric allocates shared service cost to service offering based on the following
weighted metric:
Allocate to service offering on allocation maps

• The Service Offering Allocation Map [itfm_service_offering_allocation_map]
provides a list of all service offering allocations. This intermediary table
references IT shared services from IT shared service [itfm_shared_service] table
and service offering from the Service Offering [service_offering] table.
• The prescribed metric performs a sum of shared services and weights the costs
accordingly to the receiving service offerings.
Allocate to Service Offerings on related CIs
The metric allocates shared service cost to service offerings based on the following
weighting table:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1622


<!-- page 1623 -->
Allocate to service offering on allocation maps

• The CI Relationship [cmdb_rel_ci] table provides a list of all relationships between
configuration items.
• The prescribed metric performs a count of configuration items and weights the
costs accordingly to the receiving service offerings.
Allocate to Service Offerings on Total Subscribers
The metric allocates shared service cost to service offerings based on the following
weighting table:
Allocate to service offerings on total subscribers

• The Service Offering [service_offering] table provides a list of all service offerings.
• The prescribed metric performs a sum of all subscribers and weights the costs
accordingly to the receiving service offering by Sys ID.
Configure service offering costing cost model - Legacy
Configure the service offering costing cost model to allocate expenses and generate bucket cost
lines for services offered at each level.

Before you begin

Role required: cost_transparency_analyst

Procedure
1. Navigate to All > Financial Modeling for SPM > Service Offering Costing Model.
The field values in the Financial Model – Service Offering Costing form are pre-populated.
You can choose to enter a model owner and user group for the Service Offering Costing cost
model. There is no data source for this cost model.
2. On the form, update the required fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1623


<!-- page 1624 -->
Financial Model – Service Offering Costing form
Field

Description

Name

Name of the cost model.

Description

Short description of the cost model.

Model Owner

User who owns the cost model.

Data Source

Source of data for the cost model.
This cost model has no data source, hence
the field is non-editable.

User Group

Group of users who can access the cost
model.

Include Sub-Bucket info

Option to show sub-bucket information.
If selected, the generated cost lines
and breakdown lines hold sub-bucket
information.

3. Click Update.
4. To run cost allocations, click Allocate Expenses button.

Note: If you are a non-analyst licensed customer, ensure that the number of accounts in
each segment and the total number of accounts in the cost model is within the threshold
values 4000 and 12000 respectively.
Use this option to run cost allocation from the cost model form and not necessarily from the
workbench.
a. Select the fiscal period in the Allocate Expense dialog box.
b. Click OK.
The allocation engine runs to generate cost allocations for the selected fiscal period. The
engine does cleansing and bucketing. It allocates the expenses and creates allocation
lines. However, if the cost model has no data source, the engine ignores the cleansing and
bucketing stages and creates allocation lines.
5. To generate cost lines for leaf buckets associated to the cost model, click Generate Bucket
Cost button.
Use this option to generate bucket amount lines for this cost model that has no data source.
Cost lines are generated for each leaf bucket that has no further sub-buckets. Even if there is
no amount in the bucket, the amount lines are generated in the Groomed General Ledger Data
[itfm_gl_data_groomed] table, populating zero in the Amount column. The table displays the
bucket, sub-bucket, and amount associated with the cost model for the fiscal period that you
selected.
a. Select the fiscal period in the Generate Bucket Cost dialog box.
b. Click OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1624


<!-- page 1625 -->
▪ If there is no amount in a bucket, the allocation engine still generates a groomed line with
zero expense for the selected fiscal period of the cost model.
▪ If there are pre-existing groomed lines with amounts in buckets for that fiscal period, then
the engine does not overwrite those cost lines.
You can edit the Amount column to enter the amount for each sub-bucket.
6. To view the bucket amounts, navigate to Financial Modeling for SPM > Bucket Amounts.
7. To view the buckets associated to this cost model, navigate to Financial Modeling for SPM >
Buckets.
8. To view the list of all service offering allocations, navigate to Financial Modeling for SPM >
Service Offering Allocation Maps.
9. Optional: Use the Allocate to Service Offering on Allocation Maps metric and allocate
expenses using weighted method.
(Optional) Calculate spend per service offering based on the consumption data stored in the
service offering allocation maps table.
To configure the service offering allocation map table and allocate expenses using weighted
method, see Allocate expenses using service offering allocation map.
Allocate expenses using service offering allocation map - Legacy
You can allocate expenses based on the actual consumption of services offered using the
weighted method. In the weighted rollup method the metric weights the amount by the account
values. Use the service offering allocation maps table to store your actual consumption data of
the cost for service offerings.

Before you begin

Role required: cost_transparency_analyst

About this task

Although the base system provides you with the default Equal method to roll up the expenses
from the IT Shared Services segment to the Service Offering segment, you can also opt for
Weighted rollup method. In this method, the expenses from the IT shared service segment are
allocated to the service offering segment based on the consumption data that you have stored
or entered in the Service Offering Allocation Map [itfm_service_offering_allocation_map] table.
In this case, the expense is allocated based on the weightage of consumption. Therefore, cost is
divided using Allocate to Service Offering on Allocation Maps metric and the Service Offering
Allocation Map table that has the consumption data is used to weight the metric.

Procedure
1. Navigate to All > Financial Modeling for SPM > Service Offering Allocation Maps.
2. Click New.
3. On the form, fill in the fields.
Service Offering Allocation Map form
Field

Description

Allocation Weight

Expenses allocated based on a weighted
calculation.

IT Shared Service

Segment from where the money is allocated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1625


<!-- page 1626 -->
Field

Description

Service Offering

Segment to which the money is rolled up.

4. Click Submit.
For more information on the calculated spend per offering and to configure the estimated
spend offering cost source, see Financial Management for Service Owner Workspace .

Financial Modeling - Legacy
With Financial Modeling, you can determine the allocation rules and run them automatically for
all data in the future. There are several other components that you must set up before you can
use the workbench to allocate expenses.
Start with associating data sources to cost models. Use data source to add additional columns
for cleansing or bucket split by selecting the Used by cleansing option of the Financial Data
Source Field Map record.
Fiscal calendars, which was under IT Financial Management, has been moved to ServiceNow AI
Platform area. You can access the documentation for Fiscal calendars here .
Financial data import - Legacy
Financial data resides in the General Ledger Staged Data table.
You can import financial data into the General Ledger Staged Data [itfm_gl_data_staged] table by
using either of the following methods:
• Import sets
• Easy import
See Import sets

.

Important: Be sure that your fiscal calendar can be used with your financial data.
General ledger - Legacy
The general ledger contains all expenses for your organization for all fiscal periods.
The general ledger contains these types of expenses:
• Staged expenses that you imported from your external source. Imported expenses are saved
in the General Ledger Staged Data [itfm_gl_data_staged] table.
• Cleansed expenses that the workbench uses during the Data Cleansing stage.
Changes to expenses during this stage are saved in the General Ledger Cleansed Data
[itfm_gl_data_cleansed] table. Each time you add an expense to the General Ledger Staged
Data table, a corresponding expense is created in this table.
• Groomed expenses that the workbench uses during the Bucketing stage. Changes
to expenses during this stage are saved in the Groomed General Ledger Data
[itfm_gl_data_groomed] table. This is also used for non-General Ledger expenses to hold the
amounts manually entered through the workbench or to enter the amounts directly.
View expenses in the general ledger - Legacy
You can view records in any of the general ledger tables and make changes if necessary.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1626


<!-- page 1627 -->
Before you begin

Role required: cost_transparency_admin, cost_transparency_analyst

Procedure
1. Navigate to All > Financial Modeling > Workbench and navigate to the review stage of the
workbench.
2. Open the link in the number of Groomed lines that are generated in the Others section.
3. On the form, fill in the fields.
Groomed General Ledger Data form

Groomed General Ledger Data form
Field

Description

Number

Auto-generated identification number for the general ledger data record.

State

The current state of the record:
◦ Unallocated: Allocations for this expense are not allocated.
◦ Allocated: This expense has been allocated.
◦ Locked: The general ledger expense is locked so that its allocation lines
cannot be reverted.

Account
name

Name of the account.

Account
number

Account number this expense applies to. This field is mandatory on the
Cleansed General Ledger Data form to ensure that all cleansed expenses
appear in an account in the Bucketing stage of the workbench.

Description Detailed description of the expense.
Amount

The amount of the expense.

Cleansed
expense

[General Ledger Staged Data form]
A reference to the corresponding record in the General Ledger Cleansed
Data table. The expense in the General Ledger Cleansed Data table that is

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1627


<!-- page 1628 -->
Field

Description

automatically created when you create an expense in the General Ledger
Staged Data table.
Staged
expense

[General Ledger Cleansed Data form]

Groomed
expense

[General Ledger Cleansed Data form]

Grooming
rule

[General Ledger Cleansed Data form]

Currency

Currency that the expense is valued in. The currency is a three letter code
defined in the Currency [fx_currency] table. If the value in this field does not
match any code in the Currency table, dollar signs are displayed by default for
all expenses. Make sure that your expenses in all general ledger forms are in
the same currency as your system currency.

Document
amount

Amount of the original expense document.

Document
currency

Currency that the original expense document uses. As with the Currency field,
the value in the field is a three letter code defined in the Currency table.

Bucket

[Groomed General Ledger Data form]

A reference to the corresponding record in the General Ledger Cleansed Data
table.

A reference to the corresponding record in the Groomed General Ledger Data
table.

The condition that the workbench uses to filter expenses that are put in
buckets.

Bucket that this expense is associated with.
Sub-bucket [Groomed General Ledger Data form]
Sub-bucket that this expense is associated with.
Cost center Cost center this expense applies to.
Department Department associated with this expense.
Fiscal
period

[Groomed General Ledger Data form]

Document
date

Date on which the original expense document was issued.

Import set

The import set containing the data that you imported into the instance.

Location

The location of where the expense was incurred.

Vendor

The vendor record that is referenced from the Company [core_company] table.

Posting
date

The date of when this expense was incurred.

Local
amount

The amount represented in the local currency.

Period during which this expense occurred.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1628


<!-- page 1629 -->
Field

Description

Local
currency

The currency associated with the account.

Segments

Expense amounts for the segments that are defined in the hierarchy of
segments.

Related Lists section of the Groomed General Ledger Data form
Field

Description

Cost Allocations

[Groomed General Ledger Data form]
Allocation lines created from this expense.

General Ledger Cleansed Data

[Groomed General Ledger Data form]
The records in the General Ledger Cleansed
Data table that created the groomed expense
records after the expenses are put into
buckets.

4. Click Submit.
Financial data sources and field maps - Legacy
Financial data sources point to the actual raw expense data table used by financial modeling and
financial planning.
In the Financial Management application, the data source helps to map the raw expense data
and its fields to the transaction table fields.
You can use the General Ledger Staged Data table and General Budget Staged Data table for
base system financial model activities. These tables can also be extended to create a custom
source table for your financial model. You can model your financial activities using any data
source or without any data source at all. If it is without any data source, then it is expected that
the amounts would be manually entered directly into the cost model. You can create more
field maps and configure which fields are to be used for cleansing or split bucket, as and when
required.
Financial planning uses data source to generate actuals. The segments used in budget model
hierarchy must be a mandatory part of data source field maps to accurately map the actuals with
the budget. It also helps in budget key generation.
Start working with the following data sources available with the application:
• GL Staged
• Cost Plan Breakdown (FM-PPS financial planning integration)
The following table lists the default field maps provided with each data source. You can change
the default mapping to point to a different segment or column. For example, by default the Cost
Center column is mapped to the Cost Center name [cmn_cost_center]. If the data in that column
is the code in your case, then you can change to Cost Center code [cmn_cost_center]. You can
create more field maps for the custom fields as required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1629


<!-- page 1630 -->
Default data source field maps
Segment name

Transaction table

Cost Center

Cost Center [cmn_cost_center]

Location

Location [cmn_location]

Vendor

Company [core_company]

Department

Department [cmn_department]

Project

Project [pm_project]

Financial data source and its field maps

Create a financial data source - Legacy
Database columns referring to raw expense details must be identified to create a new data
source in Financial Management.

Before you begin

Role required: itfm_plan_analyst, admin, cost_transparency_admin

About this task

Data sources are available for both Financial Modeling and Financial Planning applications.

Procedure
1. Navigate to All > Financial Modeling > Data Sources > Setup.
2. Click New.
3. On the form, fill in the fields.
Financial Data Source form
Field

Description

Name

Enter a descriptive name for the new data
source record.

GL Account

Select the database column that refers to
general ledger account expenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1630


<!-- page 1631 -->
Field

Description

Amount

Select the database column that refers to
actual expense amount.

Table

Select a database table with actual raw
expense data.
The Table field shows the source from where
the financial data is retrieved. The source
of the Financial Modeling application is
no longer confined to the General Ledger
Staged table alone, but can point to any table
with financial transaction information. Any
table in the platform can be used as long
as the mandatory column requirements of
representing amount, account number and
date are met.

Currency

Select the database column that refers to
currency values for the expenses.

Posting date

Select the database column that refers to the
date when the expense was incurred.

Condition

Apply conditions to filter records.

4. Click Submit.

What to do next

Create field maps for the data source.
Create a data source field map - Legacy
Field maps create a reference between the data source columns and transaction columns.

Before you begin

Role required: itfm_plan_analyst or cost_transparency_admin

About this task

The transaction table is associated to a segment. Define a relationship between the data source
and transaction fields to enable flexible data cleansing and bucket split.

Procedure
1. Navigate to All > Financial Modeling > Data Sources > Setup.
2. Click to open a data source record.
3. Click New in the Financial Data Source Field Maps tab to create a field map.
4. On the form, fill in the fields.
Financial Data Source Field Map form
Field

Description

Data source

Auto populates the data source for which the
field map is created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1631


<!-- page 1632 -->
Field

Description

Datasource field

Column on the data source table for field
mapping.

Cleansed Column

Defines the mapping between the Data
source table column and the Cleansed table
column.
If the field is None, data from the Data source
table column is not copied during cleansing.
For the existing General Ledger Staged data
source mappings are preconfigured.

Used by cleansing

Check box to make this field map reference
available for cleansing in financial modeling.

Segment name

Segment to map the transaction table.

Mapped to transaction field

Column on the transaction table for field
mapping.

Used for Bucket split

Check box to make the field map reference
available for cost bucket split when using the
Allocation Setup tab of the workbench.

5. Click Submit.
Segments - Legacy
Segments define the transaction table used in cost model hierarchy.
You can modify the default segments offered by the Financial Modeling application. You can also
create new segments based on your requirement. If segments are enabled for cost allocation,
they are available during building of cost model hierarchy.
Default segments
Segment name

Transaction table

Business Unit

Business Unit [business_unit]

Department

Department [cmn_department]

Business Service

Service [cmdb_ci_service]

Business
Capability

Business Capability [cmdb_ci_business_capability]

Business
Application

Business Application [cmdb_ci_business_app]

Service Offering

Service Offering [service_offering]

Server

Server [cmdb_ci_server]

Cost Center

Cost Center [cmn_cost_center]

Location

Location [cmn_location]

Vendor

Company [core_company]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1632


<!-- page 1633 -->
Default segments (continued)
Segment name

Transaction table

Note: Only companies with the Vendor check box selected are
included.
IT Shared Service

IT Shared Service [itfm_shared_service]

Note: You cannot delete a segment that is allocated to a cost model.
Create a segment definition - Legacy
Define segments to be used with cost and budget models.

Before you begin

Role required: budget_admin or cost_transparency_admin

About this task

You can create more than one segment in the same transaction table with different filter
conditions. For example, create one segment for vendors in the core_company table where the
Vendor field is true, and another segment for customers in the same table where the Vendor
field is false.

Procedure
1. Navigate to All > Financial Modeling > Administration > Segments.
You can also create a new segment from the Segment Definition tab on the workbench.
2. Click New.
3. On the form, fill in the fields.
Segment Definition form
Field

Description

Segment name

Descriptive name for the new segment.

Transactional table

Database table for transaction data to
associate with the segment.

Primary field

Field in the transactional table to serve as
the primary source of information for the
segment.

Used by Cost Allocation

Check box to make the segment available for
financial modeling.

Used by Budgeting

Check box to make the segment available for
financial planning.

Condition

Conditions that can be set to filter the
records.

Fiscal effective start

Fiscal start period to filter the records in
allocation setup for that fiscal period. Used by
Financial Modeling.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1633


<!-- page 1634 -->
Field

Description

Fiscal effective end

Fiscal end period to filter the records in
allocation setup for that fiscal period. Used by
Financial Modeling.

4. Optional: Set a fiscal validity for the segment to include only valid records for allocation.
To view all the accounts in all fiscal periods, specify the fiscal effective start and end date as
'none'.
a. Example 1: Consider 'server' as a segment.
To filter valid servers for allocation, set the fiscal start date as the install date and set the
fiscal end date as the decommissioned date.
b. Example 2: To view only active projects for a fiscal period, use active start and end dates in
the projects table.
5. Click Submit.
IT shared services - Legacy
IT shared services are business services that are IT related but are still shared and used across
your organization.
Examples of IT shared services are user services like a help desk and voice network services like
a call center. You can create business services for your organization and put them into broader,
customizable categories like IT operations or security and compliance.
By default, the hierarchy of segments includes a segment for IT shared services. When expenses
are associated with IT shared services, they roll up to business services by default. This allows
you to allocate expenses to any IT shared service and see the effects of the expenses on
business services and, ultimately, the business units that comprise your organization.
For a list of seeded IT shared services, see Prescriptive cost models for shared services and
business applications.
Create IT shared services - Legacy
Create IT shared services to set up the IT shared services segment in the hierarchy of segments.

Before you begin

Role required: cost_transparency_admin

About this task

Then you can create rollup rules to have expenses roll up to these shared services, which in turn
roll up to business services by default. Then create service types to use with shared services.

Procedure
1. Navigate to All > Financial Modeling > Hierarchy of Segments > IT Shared Services.
2. Click New.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1634


<!-- page 1635 -->
IT Shared Service form fields
Field

Description

Name

The name of the shared service.

Owner

The user in the group that owns the shared service.

Description

A detailed description of the shared service.

Group

The group that owns this shared service.

Service type

The type of service that you are creating.

An example IT shared service

4. Click Submit.
Create a service type - Legacy
Create service types, which are used by IT shared services.

Before you begin

Role required: cost_transparency_admin

Procedure
1. Open one of the IT shared service records.
2. Click the lookup icon in the Service type fields.
The IT Shared Service Types list appears.
3. Click New.
4. Enter a name.
5. Click Submit.
Financial Management workbench - Legacy
The Financial Management workbench provides financial administrators with a graphical
interface to allocate expenses.
Access the workbench through the Financial Modeling > Workbench module.
When you use the workbench to allocate expenses, you pass through the following stages:
Workbench stages

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1635


<!-- page 1636 -->
Note:
The data cleansing stage will not be available in the Workbench stages if you do not select
a data source in the Financial Model form, as there is no financial data source to pull the
expense lines from. In this case, you can enter the groomed lines directly in the subbuckets.

The Workbench tab
• Data Definition: Select a fiscal period and cost model to work with. See The Data Definition
stage - Legacy.
• Data Cleansing: Remove unnecessary financial expenses and put similar expenses in the
same segment. This cleansing stage gives you the opportunity to tidy up expenses in the
general ledger. See The Data Cleansing stage - Legacy.
• Bucketing: Group related expenses into customizable buckets. See The Bucketing stage Legacy.
• Allocation Setup: Assign the buckets to accounts and segments that comprise the hierarchy
of accounts, and create rules that govern how segments relate to each other. See Allocation
Setup stage - Legacy.
• Review: Review the expense assignments you made, and then run the allocation engine to
allocate expenses. See The Allocation Review stage - Legacy.

The Cost Models tab
All cost models in the application. You can create a basic cost model from this tab and open,
modify, or delete existing cost models. See The Cost Models tab - Legacy.

The Configuration tab
General configuration settings, such as currency, the fiscal calendar, the main Financial
Management report, and advanced actions that allow you to delete financial data. See The
Configuration tab - Legacy.

Threshold value for number of accounts
If you are a non-analyst licensed customer, when the number of accounts in a segment or cost
model exceeds the threshold value, the Basic Allocation Setup option is enabled automatically.

Parameter

Threshold value

Maximum number of accounts allowed in a segment

4000

Total number of accounts allowed in a cost model

12000

Note: Running Allocation Expenses does not work when the number of accounts exceeds
the threshold value.

Browser requirements
If you are using Internet Explorer, use version 11 or later to use the workbench. You can also use
any of the other generally supported web browsers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1636


<!-- page 1637 -->
The Data Definition stage - Legacy
The Data Definition stage provides you with settings to set up the application, before you start to
allocate expenses.
These sections are presented:
• Working Set: Select the fiscal period that you want to work with. Fiscal periods are
automatically created based on the financial data that you import. As you progress through
the workbench, only the expenses that were incurred during the fiscal period that you select
here are available to you. You can also select a cost model you want to work with and clone
one from the selected cost model.
◦ Use the clone this cost model (

) icon to clone a cost model from an existing one.

◦ Use the download ( ) icon to download the cost model for the purpose of uploading it
to, or deploying it in another instance to do cost modeling in a different pre-production
environment. You can later move the cost model to other production environments.
◦ When you open the workbench and if the fiscal period is not displayed with current one or
when you switch between different cost models and the fiscal period is not refreshed, then
click the refresh fiscal periods for cost models (

) icon to display the current fiscal period.

• Hierarchy of Segments: View the segments in the hierarchy of segments and their positions in
the hierarchy for the cost model you are dealing with.
• Expense Summary: See whether or not there are records in the staged and groomed general
ledger tables, and if there are allocation lines.
The data definition on the workbench

Choose a working set - Legacy
A working set refers to the set of expenses that you want to use in the workbench as you pass
through all the stages.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

About this task

The working set consists of the fiscal period, which is the block of time on the fiscal calendar
during which the expenses were incurred. Make sure you select the correct fiscal period. As you
progress through the stages of the workbench, the expenses you work with are those that were
incurred during the selected fiscal period only, not any other fiscal periods. The fiscal period
you select is referred to as the working period, and is always visible on the upper-right side of all
workbench pages.

Procedure
Select the fiscal period for the data that you want to work with from the Fiscal period choice list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1637


<!-- page 1638 -->
The options in this choice list come from the fiscal calendar. If you do not see the fiscal period
you want, you can make changes to the fiscal calendar.
Clone a cost model in the workbench - Legacy
Use the preconfigured cost models or clone one from the base cost models for your financial
model activities. By cloning you can map your financial data source to the cost model as per your
business requirements without affecting the original cost model.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Important:
• This feature is available only when you own an ITBM Analyst license.
• If you are upgrading from a previous version to Zurich, by default, the Generate
Controlled Cost Lines option is enabled on the new model and the Generate GL
Expense Lines option is disabled on the new model irrespective of whether the options
were disabled or enabled in the base model. These options are not editable and do not
appear on the default view of the Cost Model View page.

About this task

You can select a preconfigured basic cost model or clone a cost model from the Data Definition
stage of the Workbench or from the Cost Models tab.

Procedure
1. Navigate to All > Financial Modeling > Workbench.
2. Do one of the following to access the basic cost model interface:
◦ Select a cost model from the Cost Model choice list in the Working Set region of the Data
Definition stage, and click the Clone this cost model (

) icon.

◦ Click the Cost Models tab, select the base cost model, and click the Clone Cost Model
button or the Clone this cost model (

) Action icon.

3. On the form, fill in the fields.
Clone Cost Model form
Field

Description

Name

Name of the cost model that you selected
pre-populates in the field.

Description

Description of the cost model defaults.

Clone From

A cost model to clone the new one from.

Data source

The actual raw expense data table used for
financial modeling activities. See Financial
data sources and field maps. The base
system options are:
◦ Cost Plan Breakdown: Maps to the raw
expense data, where the actual cost
and allocated cost are captured for a
fiscal period in the cost plan breakdown
[cost_plan_breakdown] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1638


<!-- page 1639 -->
Field

Description

◦ General Ledger Staged: Maps to the
database column that refers to general
ledger account expenses in the general
ledger staged data [itfm_gl_data_staged]
table.
◦ No Data Source: Option to manually enter
the amounts in the cost model at the
bucketing stage.
4. Click the Clone Cost Model button.
You can also create a cost model on the cost model form.
Expense summary - Legacy
The Data Definition stage of the workbench shows a summary of the expenses in the application.
Icons for each type of expense and for each fiscal period shows you the state of allocation
records.
Icons on the expense summary
Icon Description

Records do not exist.
Record lines exist.
Records changed since allocations were last generated.
Errors occurred when the application was running allocations. If you see this icon, verify
all your settings in the workbench and run the allocations again.
The Expense Summary section
Label

Description

Period

Each period in the fiscal calendar.

Staged

If records are in the General Ledger Staged Data [itfm_gl_data_staged] table.

Cleansed If records are in the General Ledger Cleansed Data [itfm_gl_data_cleansed] table.
Groomed If records are in the Groomed General Ledger Data [itfm_gl_data_groomed] table.
Lines

If records are in the Cost Allocation [itfm_cost_allocation] table.

The Data Cleansing stage - Legacy
The Data Cleansing stage allows you to clean up the expenses that you imported into the
application.
On the Data Cleansing page, the expenses that you imported appear in expense rows grouped
by one of the following segments: vendors, cost centers, departments, and locations. Starting
with Istanbul, data cleansing can be performed on custom fields. To enable custom field
cleansing, select the check box for Used by cleansing under financial data source field map.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1639


<!-- page 1640 -->
The summary section on the right pane provides a breakdown of the expenses that comprise
each segment. From here, you can:
• Review the imported expenses
• Merge expense rows
• Map expenses to records in the selected segment
Data cleansing on the workbench

Review expenses before cleansing - Legacy
You can view several additional details about the expenses that you imported into the
application.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
1. Select a segment from the Attributes choice list and review the data (see table for column
descriptions).
The data cleansing table
Column

Description

Name

Name of the specific item in the selected segment, such as the name of the vendor
or location.

Amount Amount of the imported expense associated with the item in the segment.
Merge
Count

Number of other expenses have been combined with the expense in that row. By
default, the value for each record is None. When you merge expenses, the value
changes to show the number of expenses merged.

Mapped If the application can find a match between the name of the specific item in
to
the selected segment, such as the same vendor or cost center, already in your
instance. If the application cannot find a matching record, a new one is created
when you cleanse the data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1640


<!-- page 1641 -->
Each expense row is not a record in the system, but rather an aggregate view of the expenses
in the General Ledger Staged Data table that contain the same value for a segment that you
select. For example, if you select the Cost center segment, each expense row is actually the
sum of all the general ledger expenses that have the same cost center.
Expenses in the data cleansing table

2. You can do any of the following on the list of expenses that appear:
◦ Filter the list of expense rows by typing text into the search field at the top-right of the list.
The field searches the text in the Name column.
◦ Click the expense amount in the Amount column to view the expense records in the General
Ledger Staged Data table that comprise the row.
◦ Click the delete icon ( ) on the left of the expense to ignore the row. The expenses that you
ignore here are not carried over to the next stage to be assigned to buckets.
Merge expense rows by segment - Legacy
Merging expenses means taking the expenses that are associated with one segment record.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

About this task

For example, you can take vendor ABC and associate expenses for this vendor with another
segment record, like vendor XYZ. Effectively, you are changing the value for the Vendor field on
the expenses from ABC to XYZ.

Procedure
1. Click one or more expense rows to select them.
These rows can be referred to as the source expenses.
2. Drag them onto another expense.
This row can be referred to as the destination expense.
The general ledger expense records for the source expenses are modified. The field that is
modified is the segment you are currently working with, such as Vendor. The value for the field
is changed to whatever value that field had on the destination expense.

Note: When you merge expenses, you are only modifying the segment value, such as
the vendor or the cost center. You are not modifying the account numbers associated
with the general ledger expenses that comprise the expense row.
3. Click the number of entries in the Merge Count column.
4. To ignore a merged expense row, click the delete icon (
Segments window.
The expense row reappears in the list of all expenses.

) next to the entry in the Merged

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1641


<!-- page 1642 -->
Map segment records to expense rows - Legacy
The application attempts to map the expense row to an existing record in the segment that you
selected and gives you the option of creating a new record in the segment's table, as long as the
expense row segment field has a value.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

About this task
For example:

• If you are cleansing data based on the Vendor segment, and the expense row's vendor is
already in the Company [core_company] table, the Mapped to column shows Existing vendor.
• If the expense's vendor does not exist in the Company table, the Mapped to column shows A
new vendor will be created. This message tells you that when you finally cleanse the data, the
application creates a record for the vendor in the Company table.
• If the expense Vendor field is empty, the expense does not show up in any expense rows
when Vendor is selected.
If a match is found, you can view the matching record and make changes by clicking the edit icon
(

) and modifying the form.

If no match is found and you want the system to create a record, simply leave the field as it is.
Later, when you click Cleanse Data, the record is automatically created.
If no match is found and you do not want to create a record, you can manually associate an
existing record with the expense:

Procedure
1. Click the lookup icon next to the value in the Mapped to column.
2. Filter the list by typing keywords in the search field.
3. Select an existing record from the list.
Associating a vendor with an expense

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1642


<!-- page 1643 -->
Cleanse data - Legacy
After you clean up the expenses on the Data Cleansing table, run the cleansing engine.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
Click Cleanse Data on the right-hand pane.
The actual expense records you are manipulating in the Data Cleansing stage are in the General
Ledger Staged Data table, but a replica of each expense record is also in the General Ledger
Cleansed Data table. After you cleanse the data, changes are saved to the records in the General
Ledger Cleansed Data table, not the General Ledger Staged Data table.
The Bucketing stage - Legacy
The Bucketing stage allows you to assign expenses to groups called buckets.
A bucket can be any type of category that helps you organize expenses. Do not confuse buckets
with segments. Buckets are customizable groups in which to put expenses before allocation.
Segments, which are defined in the hierarchy, are parts of your organization to which you can
allocate expenses.
On the Bucketing page, the expenses that you cleansed appear on the left pane, grouped by
account number. The buckets into which you can group expenses appear in the middle pane.
The summary section on the right pane provides a breakdown of how the expenses are assigned
to buckets. If you do not see the correct data in the Accounts column, open the cleansed general
ledger and verify that the records are correct.
In the Bucketing stage, you can:
• Create and modify buckets
• Create the filter conditions
• Create groomed lines for cost models with no data source
• Put the expenses from each account into the correct bucket
• Review bucket assignments and run the bucketing engine
Bucketing on the workbench

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1643


<!-- page 1644 -->
View account details - Legacy
The bucketing page shows all the cleansed data grouped by accounts on the left pane, and the
existing buckets on the main pane. The buckets are presented with sub-buckets grouped within
parent buckets.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
1. Click the gear icon (

) next to Accounts.

2. Show or hide the accounts that are already assigned by clicking the Show accounts
categorized in buckets toggle.
You can assign expenses to buckets for unassigned accounts only.
3. Sort the accounts by selecting Name, Account, or Amountin the Sort by list.
4. Further sort the accounts by selecting Ascending or Descending from the Sort list.
5. View the records from the General Ledger Cleansed Data table that belong to an account by
clicking the lines icon (
).
The records open in the list view in a new browser tab or browser window.
Create and modify buckets - Legacy
You can create a bucket in the Bucketing stage of the workbench if you did not already do so
with the standard Bucket form.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
Click Create New Bucket on the top-right of the middle pane.
The Bucket form appears. The form is the same as the Bucket form that you can access from the
Financials > Cost Model > Account Buckets. See Creating Buckets for more information.

Note: You can create buckets that are excluded from your cost model, meaning that they
are not available for assignment to accounts and segments in the next stage: Allocation
Setup. If you select the Exclude from cost model option on the Bucket form, the bucket
appears at the bottom of the Bucketing page under Buckets Excluded from Cost Model.
Create bucket filter conditions - Legacy
You can also create a condition to filter the data that goes into the bucket. These bucket filter
conditions are also called grooming conditions, and they are the Advanced query conditions
type.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
1. Click the filter icon in the bucket.
2. Fill in the form fields (see table).
3. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1644


<!-- page 1645 -->
An example bucket filtering condition

Fields for bucket filter conditions
Field

Description

Name

Descriptive name for the condition.

Priority

Value that determines when the filter is applied relative to other filters. If two
filters have the same settings, the filter with a higher priority is applied.

Table

The table containing the expenses that are filtered when put into the bucket.
By default, the General Ledger Cleansed Data [itfm_gl_data_cleansed] table
is selected.

Advanced
bucketing
condition

Use the condition builder to create the filter.

When you create a bucket filter, it appears in the Advanced Conditions tab above the donut
chart in the right pane.
The Advanced Conditions tab

What to do next

You can verify the filter conditions or make changes:
• Click the name of the condition to open the Advanced Condition form.
• Click the amount to open the list of general ledger expenses that match the filter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1645


<!-- page 1646 -->
The advanced filter condition icon also appears on the bucket:
The advanced filter condition icon on a bucket

Create groomed lines for cost models with no data source - Legacy
If there is no data source for the cost model that you have selected in the Data definition stage of
the Financial Management workbench, there is no cleansing process either.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

About this task

In the bucketing stage, there is no left pane with accounts. In such cases, you can create or edit
the groomed lines in the Bucket Amount Line form by clicking the edit icon in the sub-buckets.
Note: If you are an Application Portfolio Management or Service Portfolio Management
user, then Business Application Costing Model cost model and Service Offering Costing
cost model do not have data source.

Procedure
1. Navigate to All > Financial Modeling > Workbench.
2. In the Bucketing stage, click the edit icon (
groomed lines to.

) of a sub-bucket that you want to add the

3. On the form, fill in the form fields.
Groomed lines form
Field

Description

Amount

Amount of the sub-bucket.

Currency

Currency for the amount.

Description

Description for the bucket amount.

For a preconfigured Customer Service Management (CSM) cost model, the Account number,
Cost center, Department, Account name, Location, and Vendor fields are not applicable.
If more than one groomed lines exist for a given sub-bucket, a list of groomed lines is
displayed.
4. Click Submit.
Put expenses into buckets - Legacy
After you set up the buckets, simply drag and drop expenses into buckets.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1646


<!-- page 1647 -->
Procedure
1. In the Accounts pane, find the accounts you want to assign to buckets by typing the account
name in the filter box or scrolling through the list.
2. In the Buckets pane, you can show or hide sub-buckets by clicking Collapse All.
3. Drag expenses from the Accounts pane to the relevant sub-bucket.
The Total Amount value in the bucket and the Total Amount Assigned on the donut chart in
the right pane change based on the assignment.
Putting an expense into a bucket

Review bucket assignments and run bucketing - Legacy
After the data is in buckets, you can see the total amounts for each bucket and the individual
general ledger expense records for each bucket.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
1. Click the information icon (
bucket.

) on any bucket to display summary information about the

2. Under Advanced Conditions, verify that the bucket filter condition is correct.
a. Click the condition name to open the bucket filter condition form and make changes if
necessary.
b. Under Detailed Rows, click Show Details to show the expense records, which are saved in
the General Ledger Cleansed Data [itfm_gl_data_cleansed] table, that are assigned to the
bucket.
c. To remove a bucket filter condition, click the delete icon (

).

3. Under Accounts Assigned, verify that the correct accounts and all the expenses in them
appear in the bucket.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1647


<!-- page 1648 -->
a. Click the account name to show the expense records from the General Ledger Cleansed
Data table that are assigned to the bucket.
b. To remove an account and all expenses that belong to the account from the bucket, click the
delete icon (

).

4. Under Fields to Keep, select the check boxes for fields you want to keep on the records in the
bucket.
Bucket summary

5. Close the window when you are finished.
6. When the data is correct, click Run Bucketing on the right pane.
◦ When you run the bucketing engine, the data is saved in the Groomed General Ledger Data
[itfm_gl_data_groomed] table.
◦ The application deletes all existing allocation lines for the fiscal period you are working with
when you click Run Bucketing.
Allocation Setup stage - Legacy
The Allocate Setup stage enables you to assign expenses to accounts and segments.
On the Allocation Setup page, the sub-buckets that you created appear in the left pane, except
for sub-buckets that you excluded from the cost model. The segments and their accounts appear
in the middle pane, in the hierarchy that you defined in the data definition stage. The summary
in the right pane provides a breakdown of how the expenses are assigned to accounts in each
segment.
In the Allocation Setup stage, you can:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1648


<!-- page 1649 -->
• View bucket contents and split buckets into smaller buckets, if necessary.
• Create and modify rollups to specify exactly how expenses are applied to higher-level
segments in the hierarchy.
• Assign expenses to accounts.
• Review assigned expenses and revert bucket assignments if necessary.
• Filter the allocation setup segment account by amounts greater than, lesser than, or equal to a
certain value.
• Configure the Display Records per segment pagination option in the Configuration tab to
display 5, 10, 15, 25, or 50 accounts per page at the same time. The pagination option displays
the selected number of accounts out of the total number of accounts in a segment per page.
The right and left arrows help you to navigate to the next set of records until all the accounts in
the segment are displayed.
• Similarly, view selected number of accounts on the lighter workbench page by setting up the
pagination option in the Configuration tab.
Setting up allocations on the workbench

Basic allocation setup
This feature helps you to use allocation setup with ease especially while dealing with large
accounts and allocation rules.
Configure basic allocation setup parameter to open the allocation setup UI in a lighter mode.
Enabling basic allocation setup helps you to open the allocation setup page faster with minimal
information, without having the UI loaded with the amount previews along with the accounts.
Information in basic allocation setup is fetched only on demand.
Functionally, with basic allocation setup you can do all functions as in the regular allocation
setup UI, where the primary purpose is to allocate bucket accounts and define rollup allocation
rules. The icon indicators for buckets and rollups guide you when rules are defined in basic
allocation setup.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1649


<!-- page 1650 -->
Note: If you are a non-analyst licensed customer, the Basic Allocation Setup option is
enabled automatically even though the option is disabled if:
• The number of accounts in a segment exceeds the threshold value (4000)
• The total number of accounts in the cost model exceeds the threshold value (12000)
With this parameter enabled, you cannot view the following details:
• The amount preview displayed in each of the accounts.
• The summary chart in the right pane.
• The See relationships link in the accounts. However, you can view the accounts that each
account rolls up to, on demand, in the Accounts Rolling Up tab in accounts pop-up.

Missing money analysis

Note:
Missing money analysis is an extended and improved version of the allocation log
functionality available before the Madrid release.
During the allocation setup stage, there is a possibility that the amount may not be rolled up
correctly and the money may go missing during the process. The reasons can be due to errors in
any of the following stages:
• Bucket Allocation
• Segment Rollup
• Account Rollup
Missing money logs provide details of why a part of the amount may be missing and fail to reach
the target segment or account as per the allocation rules that have been set, and an actionable
link to resolve issues.
To configure missing money logs, click the Configuration tab and toggle Missing Money
Analysis to enable the logs. This action enables the Missing Money Logs (
allocation setup stage of the workbench.

) icon in the

Warning: Enabling the log may delay the loading of the allocation setup page.
Missing money logs are categorized into segment rollup errors, account rollup errors, and bucket
allocation errors listed in the choice list to help identify the missing amount during allocation
and to categorically point out the incorrect rules and allocation issues. The segregation helps to
resolve allocation and rollup issues quickly, and track how the money went missing instead of
reaching its target.
Clicking the Troubleshoot Errors/Warnings link opens up a web page that guides you to take
necessary actions with steps that you can follow to resolve each error.
View bucket contents - Legacy
You can modify what you see in the list of buckets in the Bucketing stage of the IT Finance
workbench.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1650


<!-- page 1651 -->
Procedure
1. Click the gear icon (

) next to Allocation Setup.

2. Show or hide the buckets that are already assigned by clicking the Show assigned buckets
toggle.
You can assign the expenses in buckets to accounts for unassigned buckets only.
3. Sort the accounts by selecting Name or Amount in the Sort by list.
4. Further sort the accounts by selecting Ascending or Descending from the Sort list.
Click the information icon to view the records, which are saved in the General Ledger
Cleansed Data [itfm_gl_data_cleansed] table, that belong to a bucket. The records open in the
list view in a new browser tab or browser window.
Split buckets - Legacy
Buckets contain groomed general ledger expenses. These expenses can be associated with
items like a cost center, vendor, department, or location.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst
You can only split buckets that are not yet assigned to accounts.

About this task

You can split the expenses in a bucket by any of the attributes such as cost center, vendor,
department, or location. Starting with Istanbul release, you can use any custom attributes to split
buckets. Use Financial Data Source Field Map for bringing additional attributes to split a bucket
by enabling the Used for Bucket split option.
For example, if a bucket includes expenses for two different vendors, you can split the bucket
into two smaller buckets, one for each vendor. Each split bucket contains the groomed general
ledger expense associated with that vendor.

Procedure
1. Open the Allocation Setup stage in the workbench.
) for the bucket you want to split.
2. In the Allocation Setup pane, click the split bucket icon (
The split bucket window appears, showing you the amount of money in the bucket.
3. From the Split by list, either select an attribute that is associated with the groomed general
ledger expense or select Percentage.
◦ If you select an attribute, the new buckets appear in the window with default names in the
format [original bucket name] > [attribute name].
◦ If you select Percentage, enter the percentages for the new buckets and give each bucket a
name.
◦ If you select Weighted split method, you have the choice to split the bucket amount to any
segment in the hierarchy based on the available metric.

Note:
If the metric is Total weight configured, then you cannot split a bucket using that
weighted metric.
After you split a bucket based on the Weighted method, you cannot split it further.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1651


<!-- page 1652 -->
A preview of the split buckets appears in the window along with the expense amounts for each
bucket.
4. Click Split Bucket.
5. The application creates new buckets and splits the expenses among them according to your
settings.
Buckets that are split appear with a folder icon.
Split bucket

6. To view a newly split bucket with the other buckets that were split along with it, click the folder
icon.
7. To revert the bucket split, click Unsplit Bucket.
Splitting the hardware bucket

Rollups for allocations - Legacy
A rollup is an allocation rule that specifies how a lower-level account in the segment hierarchy
connects to other accounts above it in the hierarchy. Rollups allow you to allocate expenses to
the lower-level account and have expenses automatically allocated to the higher-level accounts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1652


<!-- page 1653 -->
Rollups can be account-specific or segment-specific. Account-specific rollups specify how
expenses roll up from one specific account to one or more accounts above it. Segment-specific
rollups specify how expenses in all the accounts for a segment roll up to all the accounts in
the segment above it, that is the parent level. You can also roll up segments to any segment
preceding in the hierarchy, that is to the grandparent level.
Rollups specified for an individual account take precedence over the rollup specified for the
segment. For example, if you create these two rollups:
• An account-specific rollup that allocates expenses in the email account in the business service
segment to the IT account in the business unit segment.
• A segment-specific rollup that allocates expenses in the business service segment to the
business unit segment.
Then the account-specific rollup allocates the expenses. The segment-specific rollup does not
allocate any expenses.
Account-specific level rollup supports rolling to any parent or grandparent account in the
hierarchy. You can roll up the expenses to any account up in the hierarchy, and not necessarily to
the immediate parent in the hierarchy.
Rollups can not only be up in the hierarchy, you can also roll up amounts to accounts in the
sibling segments.
Configure the rollup at the account level to any parent segment in the hierarchy, by selecting the
Parent Segment in the Rollups popup.

Total weight support for allocations using weighted metric
If you use a weighted metric that is enabled with total weight support, then the metric calculates
the allocation percentage accurately in the following total weight calculations:
• At segment level rollup, where allocate to metric is used and accounts do not have any rollup,
the total percentages of all accounts in the segment add up to be less than 100%.
• At segment level rollup, where allocate to metric is used, the percentage of each account in
the segment is calculated based on the consumption weight of the account.
• At account level rollup, where the account level rollup rule overrides the segment level rollup
rule, the total percentage of all accounts adds up to be less than 100%.
• At account level rollup, the percentage of each account is calculated based on the
consumption weight of the account.
• When allocating a bucket amount to a segment, the total percentage allocated to the segment
adds up to be less than 100%.
• When allocating a bucket amount to a segment, the percentage allocated individually to each
account in the segment is calculated based on the consumption weight of the account.
View accounts that roll up to an account
You can view the accounts that roll up to another account.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1653


<!-- page 1654 -->
Procedure
1. Click the information icon (

) on an account.

The account summary window appears, showing you:
◦ The total amount of money currently assigned to this account.
◦ The buckets that contribute expenses to this account.
◦ The method that this account uses to roll up to the parent segments.
◦ The accounts that roll up to this account.
◦ The accounts that this account rolls up to.
2. To see the buckets that are allocated directly to this account, click Show allocated buckets.
3. If you want to allocate one or more bucket amount (among all the buckets allocated to this
account, as mentioned in step 2) to any specific account segment overriding the default
rollups, then click the Bucket Rollups tab.
You can do such a bucket based rollup using the None, Equal, Manual, Weighted, or Scripted
methods.
The other undefined buckets, which are not rolled up in this manner, follow the default rollup
method.
Navigate to Financial Modeling > Cost Models > Allocation Rollups Override to view the
From Account Segment, To Account Segment, rollup metric, and type details of such an
allocation.
An example of bucket based rollup

4. Click the Accounts Rolling Up tab if it is not selected.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1654


<!-- page 1655 -->
You can see the accounts that roll up, and the buckets that comprise the Total expenses for
the account.
5. Click the information icon to view an account that rolls up or a bucket.
6. To sort the list, click the gear icon and choose the number of items per page and specify how
to sort the items.
Create rollups from one account to another account
You can create rollups from one account in the segment hierarchy to another account in a
segment above it.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
1. Click the hyperlink on the name of an account.
The Account summary pop-up appears, showing you:
◦ The total amount of money currently assigned to the account.
◦ The buckets that contribute expenses to the account.
◦ The method that the account uses to roll up to the parent segments.
◦ The accounts that roll up to the account.
◦ The accounts that the account rolls up to.
2. To see the buckets that are allocated directly to this account, click Show allocated buckets
next to the Total value.
3. Click the Rollups tab if it is not selected.
4. Select a method from the Rollup Method choice list.
Option

Description

Segment's default method

Expenses follow the default rollup rule for CI
relationships that was created during the Da­
ta Definition stage. This is the default option
for items in the CMDB that roll up to other
items in the CMDB.

None

Expenses do not roll up to any parent ac­
counts.

Equal

Expenses roll up to the parent accounts by
the same percentage. Specify the parent ac­
counts.

Manual

Expenses roll up to the parent accounts by
a percentage that you specify. Enter the
amounts in the Percentage fields.

Weighted

Expenses roll up to parent accounts using a
weighted metric that exists. The metrics avail­
able are those that specify a rollup to the seg­
ment that the parent account belongs to. If a
metric has the Enforce Relationship option
selected, the segment to which the child ac­

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1655


<!-- page 1656 -->
Option

Description

count belongs is also considered. If a met­
ric does not have the Enforce Relationship
option selected, the segment of the child ac­
count is ignored.
Scripted

A script determines the rollup.

5. To link the account with an item above it, click Add Rollup.
6. Select a value in the Parent Segment choice list.
7. Select an account from the Parent Account choice list.
8. If you selected the manual rollup method, enter the amounts in the Percentage field.
9. Enter as many rollups as necessary.
The percentages must add up to 100%. To remove any of the accounts, click the delete icon
(

).

10. Click Save Changes after making your changes.
The rollup rules appear in the right pane under the donut chart.
11. To see only those accounts that a selected account rolls up to, click the relationship icon (
on the account.

)

Only the linked accounts appear. The color of the account that is assigned the expense is
a randomly assigned color by the workbench. The color matches the account's color on the
donut chart.
The up arrow icon (

) is indicative of rollups defined at segment or account level.

12. To show all accounts in the segment hierarchy again, click

.

When you create a rollup, the system automatically updates the system metric that is used to
manage the segment relationships in the hierarchy. This metric is created by the application
during the Data Definition stage.
Create rollups from one segment to another
A segment can roll up to the segment above it in the hierarchy using a weighted metric.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
1. Click the information icon (

) on a segment.

2. In the Rollup Method choice list, select Weighted.
a. Select the metric in the Divide using metric choice list.
The metric automatically weights the amounts by the values in the Value column.
b. To further change the amounts, modify the values in the Percentage column.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1656


<!-- page 1657 -->
Rollup example

c. Click Save Changes.
3. In the Rollup Method choice list, select Scripted.
a. On the form, fill in the fields.
Segment form
Field

Description

Account Scope

Enabling the Account Scope check box
executes the rollup script defined for each of
the accounts at the segment level. Disabling
the check box executes the default rollup
defined at the segment level, thereby
overriding the rollup defined for each
account with the sys_id (FromAccountID).
Instead of repeating similar rollup scripts
for the accounts under a segment, you
can provide the rollup scripts for individual
accounts using the FromAccountID of each
account. You can provide a default rollup
for all the remaining accounts for which
you have not provided the FromAccountID.
You can provide all these rollups in a single
script for execution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1657


<!-- page 1658 -->
Field

Description

Script

The script to rollup the accounts.

b. Click Update.
Grouping segments by an attribute: You can categorize the segment accounts using the
group by attribute if there are thousands of segment accounts. The accounts roll up to the
grouped segments, just as they roll up to a non-grouped segment, and the allocation lines are
generated in the itfm_allocation_breakdown table. Rolling up to grouped segments helps in
better performance.
Edit rollup records
You can view and edit records for segment rollups and account rollup if necessary.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

About this task

Note: As a good practice, use the workbench to create, modify, and delete rollups rather
than modifying the scripts in the rollup records.

Procedure
1. Navigate to All > Financial Modeling > Cost Models > Allocation Rollups to access the rollups
that are created from one account to another.
2. Click a rollup name to open it.
3. Make modifications, if necessary.
Bucket assignments - Legacy
Setting up an allocation means assigning the expenses in a bucket to an account in a segment or
to several accounts in a segment.
The expenses in the bucket automatically roll up based on the allocation rules you created
for rollups. When you assign expenses, the application creates an allocation rule with the
prefix BCK:ALLC: in the name and gives it an order value of 10 more than the highest value, not
including the values for the rules created for rollups. Rules that the application creates for rollups
have a default value of 1,000,000. The application also creates a method that specifies the
percentage allocated to the account.
Assign a bucket to a segment or an account
During the Allocation Setup stage in the workbench, you can assign expenses from buckets to
accounts in the hierarchy.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
1. Drag a bucket to a specific account.
You can also select multiple buckets and drag them to a specific account. If a bucket is
allocated to an account, then the allocation method is always Allocate 100%.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1658


<!-- page 1659 -->
Alternatively, select one or multiple buckets. Click the Assign bucket icon (
) that contains
the expenses you want to assign to a single account or multiple accounts by performing the
following steps:
a. Under Allocate Method, select allocate to an account.
b. Under Allocate To Segment, select a segment.
c. Under Allocate to Account, select the segment account to which you want to assign all
expenses in the selected buckets.
d. On the other hand, to assign the selected buckets to multiple accounts, click Go with the
default Multiple Accounts selected under Allocate To Account.
The Create Allocation Rule window appears showing you a list of Selected Buckets along
with the selected account or option to choose the accounts in the selected segment. If you
don’t want to allocate a bucket, select and delete the bucket.
2. Drag a bucket to a segment or click the Assign bucket icon (
) to assign a bucket to a
segment.
You can assign a bucket to a segment one at a time. Multiple-bucket selection doesn’t apply
for segment assignment. If the bucket allocation is to a segment, then you must select the
allocation method from the choice list.
Option

Description

Equal

Expenses are assigned to the accounts by
the same percentage.

Manual

Expenses are assigned to the accounts by a
specified percentage. Enter the amounts in
the Percentage fields.
Expenses are assigned to the accounts using
a weighted metric.

Weighted

If the metric is configured with Total weight,
you can’t split a bucket using that weighted
metric.

3. From the Divide among choice list, select a segment.
4. If you’ve selected a weighted method, select a preconfigured metric from the Divide using
metric choice list.
The only metrics that are available are those metrics that specify the parent and child
segments.
5. Click Create.
6. To know how the bucket amount was distributed previously to the segments or an account,
click the bucket name.
The bucket opens up in a pop-up displaying a message on top. The message displays the
allocation method by which the bucket amount has been distributed, and the name of the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1659


<!-- page 1660 -->
segment to which the amount has been assigned. If the assignment is by Allocate to account
method, then the message also displays the account name and the percentage of allocation.
Sample message of bucket assignment information

Review assigned expenses - Legacy
Review the expenses assigned to accounts and verify the information is correct in the Total
Amount Allocated section in the right pane.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
1. Click the information icon ( ) on an account to view the allocation summary.
The following information appears:
◦ The total amount allocated.
◦ The buckets that are assigned to the account.
◦ The rollups to this account.
2. Click the information icon (

) next to the bucket to view the bucket summary.

An account summary window

Verify the total amount allocated - Legacy
The donut chart on the right shows the assigned expenses for all segments.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1660


<!-- page 1661 -->
About this task

By default, the calculations in both the donut chart and the segment hierarchy include data
from the new rules that you created in the workbench, and any existing rules that you previously
created. You can choose to turn off the pre-existing rules, called User Rules, so that you see only
the calculations from your newly created rules.

Procedure
1. On the Preview tab, select a segment from the Total Amount Assigned list to view the
allocation for that segment.
The breakdown for each account appears below the donut chart.
2. To change whether or not to refresh the information in the donut chart automatically when you
make changes, click the gear icon ( ) on an account to view the allocation summary, and
click the Refresh Automatically toggle.
The Preview tab

3. Click the User Rules tab to view the allocation rules and rollups that you manually set up
outside of the workbench.
On this tab, you can perform the following actions:
◦ Click a rule name to open the Cost Allocation Rule form for that rule.
◦ Click the preview icon (

) to preview the allocation for that rule in the allocation viewer.

◦ Click the Show check box to include allocation lines from existing, user-created rules in the
calculations for assigned buckets. When you select this check box, the application includes
existing allocation lines that are active on the accounts. The amounts that you see in the
segments and in the donut chart are affected by the inclusion of these allocation lines. You
shouldn’t select this option if you want the calculated values to show only what you assign
from buckets.
◦ Click See all rules to see a list of all allocation rules in the application.
The User Rules tab

Preview an allocation from a bucket - Legacy
You can preview a graphical representation of how the workbench allocates the expenses in the
bucket by opening the allocation viewer.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
To open the viewer, click the allocation preview icon (

) on the bucket.

Revert bucket assignments - Legacy
Reverting bucket assignments means taking the expenses out of the segments and accounts
and leaving it in the bucket. Reverting buckets also deletes existing allocation lines for the
working fiscal period that are associated with this bucket.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1661


<!-- page 1662 -->
About this task

You can revert bucket assignments for a single bucket or all buckets.

Note: You can also revert expenses outside the workbench.
Procedure
1. To revert bucket assignments for a single bucket, perform the following actions:
a. Click the information icon on a bucket to open the account summary.
b. Click Unallocate Bucket.
2. To revert bucket assignments for a single bucket and delete existing allocation lines for that
working fiscal period, perform the following actions:
a. Click the unassign bucket icon (

) on the bucket.

b. Click Yes on the confirmation window.
c. You can also delete existing allocation lines for all fiscal periods by clicking click here on the
confirmation window, and then clicking Delete.
The Unallocate Bucket window

3. To revert all bucket assignments, perform the following actions:
a. Click the Gear icon (

) next to Allocation Setup.

a. Click Unassign All Buckets.
b. Confirm the action.
The Allocation Review stage - Legacy
The Allocation Review stage allows you to review the allocation setup before you process the
allocations.

Allocation Setup Review
On the Review page, these summaries are available:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1662


<!-- page 1663 -->
• Bucketing: The percentage of expenses that are assigned to buckets on the Bucketing stage.
• Allocation Setup: The percentage of buckets that are assigned to accounts in the segment
hierarchy on the Allocation Setup stage.
• Others: Detailed allocation information, such as the expense amounts that are to be allocated
to segments, the amount that was cleansed in the data cleansing stage, and the amounts in
the unassigned buckets and assigned buckets.
Reviewing an allocation setup

Allocation
You can trigger allocation runs for multiple cost models for various fiscal periods concurrently by
queuing the allocation jobs to the allocation engine. This also allows multiple users on the same
instance to queue their requested allocation runs. When the allocation engine has completed an
allocation run, a confirmation message appears.
• The engine automatically picks up the next job in queue after the current job is complete.
• You can queue any number of allocation jobs for multiple cost models and fiscal periods.
• You can cancel a job (stop the engine) when the job is in progress thereby saving the engine
runtime for the next job in queue.
• You can also dequeue a job from the jobs that are in queue by removing it from the queue, if
you do not want to run it.
With this enhancement, you can view the last run details of the cost model and its breakdown
details with links to allocations and unit costs.
• View on Cost Analysis: View the cost lines for analysis.
• View Expense Lines: (For customers upgrading from a previous version to Zurich) If you
had enabled the Generate GL Expense Lines check box in the Financial Model form for the
existing cost models, then you can view the GL expense lines of the cost model after the
allocation engine is run. The GL expense lines will not be generated for the cost models you
create after upgrading to Zurich.

Important: This feature is only available to customers who own an ITBM Analyst
license.
• View Cost Lines: View the cost allocation aggregates.
• View Cost Line Breakdowns: The cost allocation breakdown aggregates for the cost model.
If Run On Demand Only flag is set to true, then the allocation engine does not generate
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1663


<!-- page 1664 -->
breakdown lines. To explicitly generate the breakdown lines, generate breakdown allocations
in the Breakdown Relationships related list of the Financial Model form.
• View Unit Costs: View the unit costs.
You can also view the details of the current cost model that is in progress and the total number
of allocation jobs in queue. Also, view the current job progress with the status of the current
allocation run and its details.
View Cost Tree: View all the segment accounts contributing to the selected account in a
hierarchical view. You can further drill, on each segment account, down in the hierarchy.
1. Click View Cost Tree.
2. Select a segment in the Segment choice list.
3. Select an account from the Account choice list.
4. Click Go.
Allocate expenses with the workbench - Legacy
If any of this information looks incorrect, go back to a previous stage and make the necessary
modifications.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
1. Verify your allocation settings on the Configuration tab.
2. Navigate to the Review stage of the workbench.
3. Choose what kind of allocation lines you want to generate:
4. Click Allocate Expenses.

Note: If you are a non-analyst licensed customer, ensure that the number of accounts in
each segment and the total number of accounts in the cost model is within the threshold
values 4000 and 12000 respectively.

Result

The system allocates the expenses, creates allocation lines, and changes the State field on the
general ledger record to Allocated. The values of all allocation lines created from the allocation
add up to the value of the general ledger expense. If no rules apply to the general ledger
expense, no allocation lines are created and the state of the general ledger record remains
Unallocated.

Note: The system rounds allocation lines to two decimal places. An allocation totaling
$100.495 is rounded up to $100.50. An allocation totaling $100.494 is rounded down to
$100.49. If an allocation is rounded down to $0.00, the system does not create an allocation
line.
The Cost Models tab - Legacy
The Cost Models tab enables you to view all the existing cost models, clone a cost model from
the existing cost models, and delete cost models that you do not need.

Important:
This feature is available only when you own an ITBM Analyst license.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1664


<!-- page 1665 -->
A list of cost models appears on this tab. You can perform several actions from here:
• Clone a cost model from an existing cost model.
• View settings for each cost model.
• Delete cost models.
• Import and export cost models.
• Compare cost models.
The Cost Models tab

Prescriptive cost models for shared services and business applications - Legacy
L1 Costing – Shared Services provides a complete visibility of fully loaded IT infrastructure cost,
infrastructure shared services showback, and lays foundation for future growth. L2 Costing
– Business Applications provides cost of applications and end user, aligns applications to
business units, furnishes cost information to support each business unit in business terms.

Important:
This feature is available only when you own an ITBM Analyst license.

L1 Costing – Shared Services
The specifications of the L1 Costing – Shared Services are:
L1 Costing – Shared Services

• The cost bucket layer is tied to the ITFM bucket table [itfm_bucket] and the cost buckets are
specific to a model.
• IT shared service segment accounts (the middle layer in this model) are sourced from the IT
shared service table [itfm_shared_service].
• The business unit layer is tied to the platform business unit table [business_unit].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1665


<!-- page 1666 -->
L2 Costing – Business Applications
L2 Costing – Business Applications

The specifications of the L2 Costing – Business Applications are almost the same as L1 Costing
– Shared Services. However, there is an additional layer for applications. Enterprise Architecture
(formerly APM) Business Application [cmdb_ci_business_app] table is the source of accounts to
the applications segment. Or, it can be Application [cmdb_ci_appl] table or other custom tables.

Seeded IT Shared Services
IT Shared Service: Equip End Users
IT Shared Service: Equip End Users is a cost collection container that holds any
money spent on providing the end users with personal (not shared) devices, the
software that runs on these devices, and the support associated with making and
keeping those devices functioning. This container excludes major device upgrades,
lease cycle turnover, and other replenishment-related costs, which are captured
within the Facilitate Ongoing Change container.
IT Shared Service: Facilitate Configuration Change
IT Shared Service: Facilitate Configuration Change is a cost collection container
that holds money spent on supporting the ITSM Change, Release and Configuration
Management processes. That is, any dollars spent on managing ongoing, daily,
common, and ad-doc configuration changes. This includes activities like patching
(non-security related), firmware updates, hardware/software configuration setting
changes, installation, de-installation, and upgrade of hardware components, and
general add, move, or change requests across the IT landscape. This container
excludes major upgrades and changes across a large portion of the environment for
which a project plan and/or funding would need to be secured.
IT Shared Service: Facilitate Connectivity
IT Shared Service: Facilitate Connectivity is a cost collection container that holds
any money spent on providing all device network connectivity to the company,
its computing and/or knowledge assets, the hardware and software to do it, and
the support associated with making (and keeping) the access up. This includes all
personal and enterprise devices. This container excludes monitoring hardware,
software, and personnel costs, which are captured in the Monitor the Environment
container.
IT Shared Service: Management and Overhead
IT Shared Service: Management and Overhead is a cost collection container that
holds any money spent on IT executive compensation, as well as one-time charge
items that apply to the existence of IT operations, compliance or audit costs, and
otherwise uncategorised costs. This container excludes any costs captured or
accounted for in any of the other IT process definitions.
IT Shared Service: Monitor the Environment
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1666


<!-- page 1667 -->
IT Shared Service: Monitor the Environment is a cost collection container that holds
the money spent on supporting the ITOM Event Management process; that is,
any dollars spent on monitoring the entire IT landscape. This includes endpoint
connectivity speeds, endpoint application performance testing, hardware/software/
network/storage threshold checking, and fault and event correlation management
tools used by operations management personnel. This container excludes security
specific and/or cloud monitoring services mentioned in other process areas.
IT Shared Service: Perform Upgrades/Maintenance
IT Shared Service: Perform Upgrades/Maintenance is a cost collection container
that holds money spent supporting the ITSM Change, Release and Configuration
Management processes. That is, all dollars spent on managing major upgrades,
either project planned and/or specifically funded. This includes activities such as
widespread OS upgrades; hardware replacement cycle activities; and internal or
third-party business or IT management software package release updates across
the IT landscape. This container excludes ongoing, daily, common, and ad-doc
configuration changes that only require a change ticket to be executed.
IT Shared Service: Provide Tech Support
IT Shared Service: Provide Tech Support is a cost collection container that holds
money spent supporting the ITSM Incident, Problem and Knowledge Management
processes. That is, any dollars spent on providing technical support services to
end users across the organization. This includes tier 1, 2, and 3 personnel, incident
or problem management software, root cause analysis time, routine or ad-doc
assistance (password resets, how to Q&A), and/or standard operating procedure
guidance. This container excludes actual configuration changes to end user and/or
corporate assets performed by way of documented change tickets.
IT Shared Service: Run Business Applications
IT Shared Service: Run Business Applications is a cost collection container that
holds any dollars spent on ongoing personnel time to keep business applications
operating. This includes resources dedicated to applications and excludes IT or
infrastructure operation costs.
IT Shared Service: Secure the Environment
IT Shared Service: Secure the Environment is a cost collection container that holds
money spent on supporting the Security Operations. That is, any dollars spent on
providing information security across the corporate IT landscape. This includes
individual user endpoint devices, cloud applications, cloud computing, and/or onpremise computing resource of all types in addition to all desktops, laptops, smart
phones, network gear, servers, databases, and applications. This excludes the
physical security costs associated with datacenters, and office space card readers.
IT Shared Service: Store and Manage Data
IT Shared Service: Store and Manage Data is a cost collection container that holds
any dollars spent on the underlying tools and foundational activities related to
the management of structured and unstructured data (for example, encryption,
backups, purging, archiving, migrations, and DR replication) and/or storage capacity
(for example, reorganizations and excess capacity acquisition). It includes these
types of activities and all the people power used to ensure the health of the data
and storage landscape. This container excludes elements related to local storage
on end user devices utilized by single individuals and specific activities, and
allocated storage that can be related to specific applications or systems.
IT Shared Service: Supply Computing Power
IT Shared Service: Supply Computing Power is a cost collection container that
holds any dollars spent on providing foundational elements that exist, cost money
to maintain, but may never actually be used such as disaster recovery facilities or
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1667


<!-- page 1668 -->
contracts, hardware spares inventory, on-premises UPS systems, and generators. It
also includes daily active data center costs related to things such as space, power,
and cooling.

ITFM prescribed metrics
Allocate to Business Unit based on Change Request volume based on CIs
The metric allocates shared service cost to business unit based on the following
weighting table:
Allocate to Business Unit based on Change Request volume based
on CIs

• The Change Request [change_request] table provides a list of all change
requests and their related configuration item.
• The CMDB [CMDB_ci] provides a list of all configuration items and their related
department.
• The Department [cmn_department] table provides a list of all departments and
their business unit.
• The prescribed metric performs a count of change requests (for CIs) per business
unit and weights the costs accordingly. Count number of CRs related to things
requested by BUs (does not align with the allocations matrix) for the relevant fiscal
period.
The weight table enforces lifespan on this metric.
◦ Duration start: Actual start.
◦ Duration end: Actual end.
Allocate to Business Unit based on CI Count
The metric allocates shared service cost to business unit based on the following
weighting table:
Allocate to Business Unit based on CI Count

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1668


<!-- page 1669 -->
• The CMDB [CMDB_ci] provides a list of all configuration items and their related
department.
• The Department [cmn_department] table provides a list of all departments and
their related business unit.
• The prescribed metric performs a count of configuration items per business unit
and weights the costs accordingly.
Allocate to Business Unit on Headcount
The metric allocates shared service cost to business unit based on the following
weighting table:
Allocate to Business Unit on Headcount

• The User [sys_user] table provides a list of all system users and their related
department.
• The Department [cmn_department] table provides a list of all departments and
their related business unit.
• The prescribed metric performs a count on the number of users per business unit
and weights the costs accordingly.
Filter criteria: Only count active users.
Allocate to Business Unit on Computer count
The metric allocates shared service cost to business unit based on the following
weighting table:
Allocate to Business Units on Computer count

• The Computer [cmdb_ci_computer] table provides a list of all computer names
and their related department.
• The Department [cmn_department] table provides a list of all departments and
their related business unit.
• The prescribed metric performs a count on the number of computers per
business unit and weights the costs accordingly.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1669


<!-- page 1670 -->
Allocate to Business Unit on Change Request volume
The metric allocates shared service cost to business unit based on the following
weighting table:
Allocate to Business Unit on Change Request volume

• The Change Request [change_request] table provides a list of all change
requests and who requested it.
• The Department [cmn_department] table provides a list of all departments and
their related business unit.
• The prescribed metric performs a count of change requests per business unit and
weights the costs accordingly.
◦ The weight table enforces lifespan on this metric.
◦ Duration start: Actual start.
◦ Duration end: Actual end.
Allocate to Business Unit based on Incident volume
The metric allocates shared service cost to business unit based on the following
weighting table:
Allocate to Business Unit based on Incident volume

• The Incident [incident.list] table provides a list of all incidents and their related
callers.
• The Caller [users [ITIL view]] table provides a list of all departments and their
related business unit.
• The prescribed metric performs a count of incidents per business unit (opened
and closed within the period) and weights the costs accordingly.
Allocate to Business Application based on Compute Power
The metric allocates shared service cost to applications based on the following
weighting table:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1670


<!-- page 1671 -->
Allocate to Application based on Compute Power

• The CI Relationship [cmdb_rel_ci] table provides a list of all relationships between
configuration items.
• The prescribed metric performs a count of configuration items where the
Child.Class = Server and weights the costs accordingly to the receiving
applications.
Prescriptive cost models for business services and business capabilities - Legacy
Use the preconfigured business services and business capabilities cost models with their
prescribed metrics for weight allocation. Understand the system requirements that each model
supports, the allocation methods, and the datasets required to use them effectively.

Important:
This feature is available only when you own an ITBM Analyst license.

Level 2 Costing — Business Services cost model
Level 2 Costing — Business Services cost model

The cost model provides:
• Cost of Enabling the Business: The expenses of the IT to ensure that the business is aligned to
transformational initiatives.
• Cost to support each Business Service in business terms: The cost to provide business
services.
The cost model is recommended:
• At phase II or if you have previously invested in Financial Management.
• For showback in terms of core business functions or alignment to business capabilities.
• To provide insight into operational cost drivers.
Specifications of the Level 2 Costing — Business Services cost model:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1671


<!-- page 1672 -->
Model complexity of Level 2 Costing — Business Services cost model

• The cost bucket layer ties to the ITFM Bucket table [itfm_bucket]. Cost buckets are model
specific.
• IT Shared Service segment accounts (the second layer in this model) are sourced from the IT
Shared Service table [itfm_shared_service].
• Business Service segment accounts (the third layer in this model) are sourced from the
Service table [cmdb_ci_service].
• The Business Unit layer ties to the Platform Business Unit table [business_unit].

Level 3 Costing — Business Capabilities cost model
Level 3 Costing — Business Capabilities cost model

The cost model provides:
• Cost of Enabling the Business: The expenses of the IT to ensure that the business is aligned to
transformational initiatives.
• Cost to support each Business Capability in business terms: The cost of innovation.
The cost model is recommended:
• At phase II or if you have previously invested in Financial Management.
• For showback in terms of core business functions or alignment to business capabilities.
Specifications of the Level 3 Costing — Business Capabilities cost model:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1672


<!-- page 1673 -->
Model complexity of Level 3 Costing — Business Capabilities cost model

• The specifications are similar to that of the Level 2 Costing — Business Services cost
model, aligned to business application. However, there is an extra layer for business
capabilities. The accounts in this segment are sourced from the Business Capability
[cmdb_ci_business_capability] table, which is a flat list.
• There is a prescribed scripted metric that aligns the actual capability associated with an
application with the high-level business capability in the table.

Rollup methods
Use the following allocation methods to move the cost from the cost buckets to the upper layers
of the model (IT Shared Services, Allocations, or Business Units).

Rollup methods

Description

None

Does not allocate out to the next layer.

Equal

Equally splits the cost to each item it is related
to.

Manual

Allocated by estimated or pre-calculated fixed
percentages.

Weighted

Allocated based on actual usage. For example,
allocate to BU based on change request
volume, incident volume, or CI count or by
a property of the object being allocated to,
which is headcount.

The prescribed metrics support the Weighted rollup method, and source data directly from
applications within the ServiceNow platform. For example:
• IT organizational structure: Business unit or department level.
• PPM or Time Card: Labor efforts charged to projects.
• CMDB: CI inventory with relationships, usage, and owner alignment.
• Asset Management: Asset inventory (end user and infrastructure) aligned to asset owners.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1673


<!-- page 1674 -->
• IT Service Management: Volume related to Incident, Problem, and Change.
• IT Operations Management: Relationships and alignment to hardware and applications.
• Enterprise Architecture (formerly Application Portfolio Management): Inventory of application
hierarchy, associated business owner, and technology mapping.

Prescribed metrics - IT Shared Services to Business Services
Following are the descriptions of each metric with an explanation of the weighting methodology
and their related tables within the ServiceNow system.

Note: If the related tables have incomplete data or if there are gaps in the data, then the
calculated weighting percentages are affected.
The preconfigured cost model begins with equal weighting to the next segment.
Prescriptive metrics are available for more mature solutions.
Allocate to Business Service based on CI count
The metric allocates shared service cost to business services based on the
following weighting table:
Allocate to Business Service based on CI count

• The CI Relationship [cmdb_rel_ci] table provides a list of all CIs and their
relationship to their parent CI such as dependency, use, runs on, and contained
by.
• The Service [cmdb_ci_service] table provides a list of all business services that
are the parent CIs.
• The prescribed metric performs a count of CIs per parent and weights the cost to
the business services accordingly.
The weight table enforces lifespan on the following metric.
◦ Filters: Child.Class is not Business Service and Type is Depends on::Used by.
◦ Duration start: Actual start.
◦ Duration end: Actual end.
Allocate to Business Service based on compute power
The metric allocates shared service cost to business services based on the
following weighting table:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1674


<!-- page 1675 -->
Allocate to Business Service based on compute power

• The CI Relationship [cmdb_rel_ci] table provides a list of all CIs and their
relationship to their parent CI such as dependency, use, runs on, and contained
by.
• The Service [cmdb_ci_service] table provides a list of all business services, which
are the parent CIs.
• The prescribed metric performs a count of CIs per server (Child.Class) and
weights the cost to the (parent) business services accordingly.
The weight table enforces lifespan on the following metric:
◦ Filters: Child.Class is Server and Type is Depends on::Used by.
◦ Duration start: Actual start.
◦ Duration end: Actual end.
Allocate to Business Service based on database count
The metric allocates shared service cost to business services based on the
following weighting table:
Allocate to Business Service based on database count

• The CI Relationship [cmdb_rel_ci] table provides a list of all CIs and their
relationship to their parent CI such as dependency, use, runs on, and contained
by.
• The Service [cmdb_ci_service] table provides a list of all business services, which
are the parent CIs.
• The prescribed metric performs a count of CIs per database (Child.Class) and
weights the cost to the (parent) business services accordingly.
The weight table enforces lifespan on the following metric:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1675


<!-- page 1676 -->
◦ Filters: Child.Class is Database and Type is Depends on::Used by.
◦ Duration start: Actual start.
◦ Duration end: Actual end.
Allocate to Business Service based on change request volume
The metric allocates shared service cost to business unit based on the following
weighting table:
Allocate to Business Service based on change request volume

• The Change Request [change_request] table provides a list of all change
requests and who requested it including the related business service.
• The Service [cmdb_ci_service] table provides a list of all business services.
• The prescribed metric performs a count of change requests per business service
and weights the costs accordingly.
The weight table enforces lifespan on the following metric:
◦ Duration start: Actual start.
◦ Duration end: Actual end.
◦ Enforce lifespan selected on the weight table.
Allocate to Business Services based on incident volume
The metric allocates shared service cost to business unit based on the following
weighting table:
Allocate to Business Services based on incident volume

• The Incident [incident.list] table provides a list of all incidents, their related
callers, and the related business service.
• The Service [cmdb_ci_service] table provides a list of all business services.
• The prescribed metric performs a count of incidents per business service
(opened and closed within the period) and weights the costs accordingly.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1676


<!-- page 1677 -->
◦ Duration start: Opened.
◦ Duration end: Resolved.
◦ Enforce lifespan selected on the weight table.

Prescribed metrics - IT Shared Services to Business Applications
Allocate to Applications using active user count
The metric allocates shared service cost to applications based on the following
weighted metric:
Allocate to Applications using active user count

• The Business Application [cmdb_ci_business_app] table provides a list of all
business applications.
• The prescribed metric performs a sum of active users and weights the costs
accordingly to the receiving applications by Sys ID.
Allocate to Applications using database count
The metric allocates shared service cost to applications based on the following
weighted metric:
Allocate to Applications using database count

• The CI Relationship [cmdb_rel_ci] table provides a list of all CIs and their
relationship to their parent CI such as dependency, use, runs on, and contained
by.
• The Business Application [cmdb_ci_business_app] table provides a list of all
business applications, which are the parent CIs.
• The prescribed metric performs a count of CIs per database (Child.Class) and
weights the cost to the (parent) business application accordingly.
◦ Filters: Child.Class is Database and Type is Depends on::Used by.
◦ Duration start: Actual start.
◦ Duration end: Actual end.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1677


<!-- page 1678 -->
Prescribed metrics - Business Applications to Business Capabilities
Following is the scripted metric to allocate to business capabilities:
// Create a Scripted metric if you have complex logic to derive
the weights for an Allocate to Segment.
//
// This Return Object is json:
// 1) key: The sys_id of the Allocate To segment's transaction
table
// 2) value: the weight for the
//
// The API is called for each fiscal period and stored in weight
Maps table which is in turn used in allocation.
// 'inputObject' is available in the script to have access to
fiscal period and from Account id.
// The from account id is applicable only for "Allocate From"
is part of metric setup where each entity in Allocate From
table have their own weight distribution
// An 'inputObject' is injected during the evaluation of the
script.
// It is an object of 2 key value pairs for fiscal period and
allocate from accountId.
function getTopCapability(capabilityId){
var now_GR = new GlideRecord('cmdb_ci_business_capability');
gr.get(capabilityId);
if(gr.isValidRecord())
return getParentCapabilityRecur(now_GR);
}
function getParentCapabilityRecur(capabilityGr){
if(JSUtil.nil(capabilityGr.parent))
return capabilityGr;
else
return
getParentCapabilityRecur(capabilityGr.parent.getRefRecord());
}
getScriptedWeightedMetric();
function getScriptedWeightedMetric(){
var appId = inputObject.from_id; // where inputObject.from_id
is one of the Business Applications Id from Allocate From
segment(Business Applications)
var relGr= new GlideRecord('cmdb_rel_ci');
relGr.addEncodedQuery('parent.sys_class_name=cmdb_ci_business_ca
pability^child.sys_class_name=cmdb_ci_business_app');
relGr.addQuery('child',appId);
relGr.query();
var retObj={};
while(relGr.next()){
retObj[getTopCapability(relGr.parent).getUniqueValue()] = 1;
}
return retObj;
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1678


<!-- page 1679 -->
• The Business Capability [cmdb_ci_business_capability] table provides a list of all business
capabilities and is part of Enterprise Architecture (formerly Application Portfolio Management).
• The script, in essence, flattens the business capability list.

Note: Everything should be related to its Level 0 Business Capability for Financial
Modeling although applications within Enterprise Architecture (formerly Application
Portfolio Management) may be assigned to lower-level capabilities.
Scripted metric logic from APM to FM

View settings for each cost model - Legacy
You can create a basic cost model from the Data Definition stage of the Workbench or from the
Cost Models tab.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
1. Open the Cost Models tab on the workbench.
2. Click the name of the cost model to review.
A window appears with these tabs:
◦ Buckets: The account buckets currently associated with the cost model. A bucket can be
associated with only one cost model.
◦ Segments: The segments that the cost model uses from the hierarchy of segments
definition.
◦ Hierarchy of Segments: The segment hierarchy of the cost model.
◦ Fiscal Period Data: The expense summary for all fiscal periods.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1679


<!-- page 1680 -->
An example cost model summary

3. Click Launch in Workbench to open the cost model in the Data Definition stage of the
workbench, or click Cancel to close the window.
Delete a cost model - Legacy
You can delete cost models if you no longer need them.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
Perform one of the following steps:
• Open the Cost Models tab on the workbench and click the delete icon.
• Open the Cost Models tab on the workbench, select the check boxes next to the models to
delete, and select the Delete action from the choice list.
• Navigate to Financials > Cost Models, open the cost model record, and click Delete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1680


<!-- page 1681 -->
Compare cost models - Legacy
You can compare any two cost models to see the differences in bucketed expenses, the
hierarchy of segments, and allocation data for a fiscal period.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

About this task

Compare cost models if you want to see how the expenses in a potentially new cost model
breakdown into allocations. The data shown in the cost model comparison is actual data from
the bucketing stage and actual allocation data. If you didn’t yet complete the bucketing and
allocation stages in the workbench, no data appears.
You can only compare two cost models at a time.

Procedure
1. Open the Cost Models tab on the workbench.
2. Select the check boxes next to the cost models that you want to compare.
3. Click Compare Cost Models.
4. Select a fiscal period.
5. Click any of the following items.
Option

Description

Buckets

The amounts in each bucket and subbuck­
et. Click Collapse All or Show All to hide or
show all the buckets.

Hierarchy

Hierarchy of segments.

Data

Allocation data for each segment that has
costs allocated to it.

6. You can also change cost models by selecting a new model from the Current Cost Model or
Proposed Cost Model lists on either side.
Clone a cost model - Legacy
If you want to create a cost model based on an existing one, you can clone a cost model.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Important:
This feature is available only when you own an ITBM Analyst license.

About this task

When you clone a cost model, all data related to cleansing conditions, allocations, buckets,
hierarchy of segments and rollups are copied over to the new cost model. Allocation lines are not
cloned. You still need to perform allocations to generate allocation lines and run reports on the
new allocation data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1681


<!-- page 1682 -->
Procedure
1. Open the Cost Models tab on the workbench.
2. Click the clone icon for the cost model you want to clone.
3. On the form, fill in the fields.
Clone Cost Model form
Field

Description

Name

The name of the new cost model.

Description

A description of the new cost model.

Clone From

The cost model you are basing the new cost model on.

4. Click Create.
Create breakdown relationship - Legacy
Define a breakdown relationship between required segments to view cost lines generated
between the segments.

Before you begin

Role required: cost_transparency_admin

Procedure
1. Navigate to All > Financial Modeling > Cost Models > All.
2. Click New in the Breakdown Relationships related list.
3. On the form, fill in the fields.
Breakdown Relationship form
Field

Description

Cost Model

Cost model from the list.

X Segment

Segment name from the list.
You can also create a new segment using the
Segment Definitions form.

Y Segment

Segment name from the list.
You can also create a new segment using the
Segment Definitions form.

Run On Demand Only

Option to manually generate the cost line
breakdowns on demand.
By default, the flag is set to false, which
means the allocation engine generates
breakdowns for the related segments of
the cost model. If the flag is true, then the
allocation engine will not generate the cost
line breakdowns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1682


<!-- page 1683 -->
4. Click Submit.
Leftover calculation for breakdowns
The cost lines generated for the amounts coming to the segment indirectly from
other segments, which are not part of a breakdown relationship with the segment,
or by direct bucket allocations to the segment are the leftovers.
If you want to calculate the leftovers for a
breakdown, then set the system property

com.glide.financial_management.generate_breakdown_leftovers
to true.
Run On Demand Only
Use the option to generate the cost lines breakdowns on demand. This option
helps in optimal usage of the allocation engine runtime.
5. To manually generate the cost lines for a breakdown, navigate to the Breakdown
Relationships related list of the Financial Model form.
a. Select the check box next to the breakdown and click Generate Breakdown Allocations
action from the Action on selected rows list.
b. Enter the fiscal period in the Generate Breakdown Allocations dialog box.
c. Click OK.
6. To view the cost lines of the breakdown that you manually generated, navigate to the Review
stage of the Financial Management workbench.
7. Click the View Cost Line Breakdowns link of the breakdown.
You can view the cost lines in the Cost Allocation Breakdown list.
The Configuration tab - Legacy
The Configuration tab provides you with additional settings.
These sections are presented:
• General Settings: View the system currency in use for the application and control the level of
detail on the allocation lines that the application creates.
• Main Report Configuration: Configure settings for the main Financial Management report that
appears on the CIO Dashboard .
• Advanced Actions: Revert allocations for expenses or delete allocation lines.
Configure general settings - Legacy
Configure the level of detail for allocation lines on the Configuration tab of the workbench.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

About this task

You can vary the level of detail that is available on allocation data. The application can keep
track of Sys_IDs of segment values in the allocation line tables, which allows you to dot-walk on
allocation reports. This might have a performance impact on your application, depending on the
number of allocation lines you generate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1683


<!-- page 1684 -->
Procedure
1. On the workbench, click the Configuration tab.
The currency code for the base system currency is shown in the General Settings pane.

Note:
Until Kingston release, you can use

com.glide.financial_management.currency_code property to get the
currency code. The property was removed in London release. If you are an upgraded
customer in London, you can still use this property. Currently, glide.system.locale
is the functional currency.
To get the currency code, use the new scriptable

SNC.FMCurrency().getGlobalCurrencyCode() API irrespective of you being
an upgraded or a new customer.
2. Enable the Basic Allocation Setup to open the allocation setup UI in a lighter mode.

Note: If you are a non-analyst licensed customer, the option is enabled automatically if
the number of accounts in a segment or the total number of accounts in the cost model
exceeds the threshold values 4000 and 12000 respectively.
3. Enable Missing Money Analysis to enable the log in the Allocation Setup page of the
Workbench.
Missing money analysis is an extended and improved version of the allocation log functionality
that was available before the Madrid release.
4. Display Records per segment is a configuration setup that helps you to choose the number of
accounts such as 5, 10, 15, 25, or 50 of a segment for display in the Allocation Setup page of
the workbench, Allocation Setup page of lighter workbench, and the Cost Lines Analysis page.
Configure main report settings - Legacy
Configure settings for your main financial report, including which cost models and fiscal periods
are represented.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

About this task

The main financial report provides the basis for the Financial report on the CIO Dashboard
and on other report overviews. The main setting that you can configure for the main report is
which cost model that the application uses to generate reports for each fiscal period. If you have
the financial admin or analyst role, you can select the cost model in the report parameters of
the default reports. If you have the financial user role, the cost model is determined by these
settings.

Procedure
1. On the workbench, click the Configuration tab.
2. Select a cost model from the Main Cost Model list.
The main financial report includes this cost model when new fiscal periods are added.
3. Click Update configurations.
4. On the Cost Model Selection window, select the cost model for each fiscal period.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1684


<!-- page 1685 -->
The report uses this cost model to calculate and display the data that you see on the main
financial report.
5. Click Save.
Delete allocation lines - Legacy
On the Configuration tab of the workbench, you can delete the allocation lines for any fiscal
period if you no longer need this data, or if you need to make changes to segments or fiscal
periods that are already associated with allocation lines.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
1. Open the workbench and go to the Configuration tab.
2. Under Advanced Actions, next to Delete Data For, select the fiscal period.
3. Click Delete.
4. Confirm the action.
Missing money logs factoring tips - Legacy
The error type and the possible causes and resolution tips help you to troubleshoot the errors
easily.

Note: Missing money analysis is an extended and improved version of the allocation log
functionality available prior to Madrid.
Missing money logs and resolution
Category

Condition

Cause

Action

Bucket Allocation

Bucket Data
Validation: '{0}' is
excluded: {1} but one
of its sub-buckets is
not: {2}

Either parent or child
buckets ({Test Parent
Bucket}/{Test Child
Bucket}) are excluded
from allocation

Contact Customer
Service and Support

Bucket Allocation

Bucket Allocation:
'{0}' is allocated to an
invalid segment

Bucket {Test Parent
Bucket} is with
corrupted target
segment

Revert and reassign
the bucket.
1. Click the error
message to
highlight the bucket.
2. To revert the bucket
assignment, click
the revert bucket
assignment (
icon.

)

3. Assign a bucket to
a segment or an
account.
Bucket Allocation

Bucket Allocation:
'{0}' is allocated to a

Bucket {Test Parent
Revert and reassign
Bucket} is allocated to the bucket.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1685


<!-- page 1686 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

segment {1} that is not
associated with the
current cost model

a segment that is NOT
1. Click the error
associated with the
message to
current cost model
highlight the bucket.
2. To revert the bucket
assignment, click
the revert bucket
assignment (
icon.

)

3. Assign a bucket to
a segment or an
account.
Bucket Allocation

Bucket Allocation: '{0}'
is using a weighted
allocation method, but
no metric is specified

{Test Bucket} is using
weighted allocation
method, but metric is
not specified

Revert and reassign
the bucket.
1. Click the error
message to
highlight the bucket.
2. To revert the bucket
assignment, click
the revert bucket
assignment (
icon.

)

3. Assign a bucket to
a segment or an
account.
Bucket Allocation

Bucket Allocation:
'{0}' is allocated using
an invalid allocation
metric

{Test Bucket} is using Revert and reassign
weighted allocation
the bucket.
method, but an invalid
1. Click the error
metric is used
message to
highlight the bucket.
2. To revert the bucket
assignment, click
the revert bucket
assignment (
icon.

)

3. Assign a bucket to
a segment or an
account.
Bucket Allocation

Bucket Allocation:
'{0}' is allocated to an
unspecified account

{Test Bucket} is
allocated to an
unspecified account

Revert and reassign
the bucket.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1686


<!-- page 1687 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

1. Click the error
message to
highlight the bucket.
2. To revert the bucket
assignment, click
the revert bucket
assignment (
icon.

)

3. Assign a bucket to
a segment or an
account.
Bucket Allocation

Bucket Allocation:
'{0}' is allocated to an
invalid account

{Test Bucket} is
allocated to an invalid
account

Revert and reassign
the bucket.
1. Click the error
message to
highlight the bucket.
2. To revert the bucket
assignment, click
the revert bucket
assignment (
icon.

)

3. Assign a bucket to
a segment or an
account.
Bucket Allocation

Bucket Allocation: '{0}'
is missing mandatory
manual allocation
information

In the {Test Bucket}
allocation, one
of the manually
allocated lines has
missing information
(Transaction Account
or Transaction
Segment or
Percentage allocation)

Fill in the missing
mandatory
information such
as the transaction
account, transaction
segment, percentage
allocation.
1. Click the link to
navigate to the
Bucket Allocation
Account form.
2. Enter the missing
mandatory
information such
as the transaction
Segment,
transaction
Account, and the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1687


<!-- page 1688 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

Percentage in the
respective fields.
3. Click Update.
Bucket Allocation

Bucket Allocation: '{0}'
is manually allocated
to an invalid segment:
'{1}'

{Test Bucket} is
manually allocated
and one of the
allocated lines has an
invalid segment {Test
Segment}

Correct the segment
information in the
bucket allocation
account.
1. Click the link to
navigate to the
Bucket Allocation
Account form.
2. Select the segment
from the Segment
choice list.
3. Click Update.

Bucket Allocation

Bucket Allocation: '{0}'
is manually allocated
to an invalid account
{1} in the segment {2}.
{3}% of amount is lost

{Test Bucket} is
manually allocated
to an invalid account
{Test Account} in
the segment {Test
Segment}. {Amount}%
of amount may be lost

Correct the account
information in the
bucket allocation
account.
1. Click the link to
navigate to the
Bucket Allocation
Account page.
2. Select the account
from the Account
choice list.
3. Click Update.

Bucket Allocation

Bucket Allocation: '{0}'
is manually allocated
with a missing or
invalid percentage
value

{Test Bucket} is
manually allocated
with a missing or
invalid percentage
value

Correct the
percentage in the
bucket allocation
account.
1. Click the link to
navigate to the
Bucket Allocation
Account page.
2. Enter correct
percentage in the
Percentage field.
3. Click Update.

Bucket Allocation

Bucket Allocation:
'{0}':- sum of the
manual percentages

In the {Test Bucket}
manual allocation,

Correct the allocation
percentages in the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1688


<!-- page 1689 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

is {1}% which is more
than 100%

sum of the allocation
percentages is 120%

bucket allocation
accounts.
1. Click the link to
navigate to the
Bucket Allocation
Accounts list.
2. Enter correct
percentages in the
Percentage column.
3. Click the save ( )
icon or press Enter
after each entry.

Bucket Allocation

Bucket Allocation:
'{0}':- sum of the
manual percentages
is {1}% which is less
than 100%

In the {Test Bucket}
manual allocation,
sum of the allocation
percentages is 70%

Correct the allocation
percentages in the
bucket allocation
accounts.
1. Click the link to
navigate to the
Bucket Allocation
Accounts list.
2. Enter correct
percentages in the
Percentage column.
3. Click the save ( )
icon or press Enter
after each entry.

Bucket Allocation

Bucket Allocation:
'{0}' manual allocation
was chosen, but
no accounts were
specified

In the {Test Bucket}
manual allocation,
accounts have not
been specified.

Revert and reassign
the bucket.
1. Click the error
message to
highlight the bucket.
2. To revert the bucket
assignment, click
the revert bucket
assignment (
icon

)

3. Assign a bucket to
a segment or an
account.
Bucket Allocation

Bucket Split for '{0}':
sum of the split

Bucket Split for {Test
Bucket}: Sum of the

Contact Customer
Service and Support

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1689


<!-- page 1690 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

percentages is {1}
split percentages is
which is less than 100 70%
Bucket Allocation

Bucket Split for '{0}':
sum of the split
percentages is {1}
which is more than
100

Bucket split for {Test
Bucket}: Sum of the
split percentages is
120%

Contact Customer
Service and Support

Segment Rollup

Segment Rollup: '{0}':
target segment is not
in Hierarchy: {1}

The rollup of {Test
Redefine the rollup for
Segment} segment
the segment.
has a corrupted target
1. Click the error
segment, which is not
message to
in the hierarchy.
highlight the
segment.
2. Click the segment
name.
3. Select the right
segment from the
choice list in the
segment rollup popup.
4. Select the Rollup
Method from the
choice list.
5. Click Save
Changes.

Segment Rollup

Segment Rollup: '{0}': The rollup of {Test
Redefine the rollup for
target segment has
Segment} segment
the segment.
not been specified: {1} has a corrupted target
1. Click the error
segment.
message to
highlight the
segment.
2. Click the segment
name.
3. Select the right
segment from the
choice list in the
segment rollup popup.
4. Select the Rollup
Method from the
choice list.
5. Click Save
Changes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1690


<!-- page 1691 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

Segment Rollup

Segment Rollup: '{0}': The rollup of {Test
Redefine the rollup for
target segment has
Segment} segment
the segment.
not been specified: {1} has a corrupted target
1. Click the error
segment.
message to
highlight the
segment.
2. Click the segment
name.
3. Select the right
segment from the
choice list in the
segment rollup popup.
4. Select the Rollup
Method from the
choice list.
5. Click Save
Changes.

Segment Rollup

Segment Rollup: '{0}':
target segment is not
valid: {1}

The rollup of {Test
Redefine the rollup for
Segment} segment
the segment.
has a corrupted target
1. Click the error
segment.
message to
highlight the
segment.
2. Click the segment
name.
3. Select the right
segment from the
choice list in the
segment rollup popup.
4. Select the Rollup
Method from the
choice list.
5. Click Save
Changes.

Segment Rollup

Segment Rollup: '{0}':
weighted rollup is
chosen, but no metric
is specified

The rollup of {Test
Segment} segment
has a corrupted
metric.

Redefine the rollup for
the segment.
1. Click the error
message to
highlight the
segment.
2. Click the segment
name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1691


<!-- page 1692 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

3. Select the right
segment from the
choice list in the
segment rollup popup.
4. Select Weighted
from the Rollup
Method choice list.
5. Click Save
Changes.
Segment Rollup

Segment Rollup: '{0}'
rollup is using an
invalid metric: {1}

The rollup of {Test
Segment} segment
has a corrupted
metric.

Redefine the rollup for
the segment.
1. Click the error
message to
highlight the
segment.
2. Click the segment
name.
3. Select the right
segment from the
choice list in the
segment rollup popup.
4. Select Weighted
from the Rollup
Method choice list.
5. Click Save
Changes.

Segment Rollup

Segment Rollup: '{0}':
rollup script contains
syntax errors

The rollup script
defined for {Test
Segment} segment
has syntax errors.

The rollup script
must be syntactically
corrected on the
Segment Rollup
Override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
form.
2. Correct the syntax
of the script in the
Script field.
3. Click Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1692


<!-- page 1693 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

Segment Rollup

Segment Rollup:
'{0}': {1} argument
is missing in rollup
of script for target
Account {2}

{Test Segment}: {Test
Argument} is missing
in the rollup script for
target account {Test
Account}

The rollup script
must be syntactically
corrected.
1. Click the link to
navigate to the Cost
Allocation Rollup
form.
2. Correct the syntax
of the script in the
Script field.
3. Click Update.

Segment Rollup

Segment Rollup:
'{0}': To transaction
Segment is given
empty/null for
Scripted Rollup for to
Account {1}

The rollup script
defined for {Test
Segment} segment
has an invalid JSON
return. One of the
rollup values in JSON
is Null.

The rollup script
returns a JSON
variable that must be
corrected for a valid
rollup value. Correct
the script in the Cost
Allocation Rollup form.
1. Click the link to
navigate to the Cost
Allocation Rollup
form.
2. Correct the syntax
of the script in the
Script field.
3. Click Update.

Segment Rollup

Segment Rollup:
'{0}': To transaction
Segment: {1} is invalid
for Scripted Rollup for
to Account {1}

The rollup script
defined for {Test
Segment} segment
has an invalid JSON
return. One of the
rollup values in JSON
is invalid.

The rollup script
returns a JSON
variable that must be
corrected for a valid
rollup value. Correct
the script in the Cost
Allocation Rollup form.
1. Click the link to
navigate to the Cost
Allocation Rollup
form.
2. Correct the syntax
of the script in the
Script field.
3. Click Update.

Segment Rollup

Segment Rollup:
'{0}': To transaction

The rollup script
defined for {Test

The rollup script
returns a JSON

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1693


<!-- page 1694 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

Segment: {1} is not in
hierarchy for Scripted
Rollup for to Account
{2}

Segment} segment
has an invalid JSON
return. One of the
rollup values in JSON
is not in the hierarchy.

variable that must be
corrected for a valid
rollup value. Correct
the script in the Cost
Allocation Rollup form.
1. Click the link to
navigate to the Cost
Allocation Rollup
form.
2. Correct the syntax
of the script in the
Script field.
3. Click Update.

Segment Rollup

Segment Rollup:
'{0}': To transaction
Account ({1}) of
Segment ({2}) does
not exist for Scripted
Rollup

The rollup script
defined for {Test
Segment} segment
has an invalid
JSON return. One
of the rollup values
(Account) in JSON
does not exist.

The rollup script
returns a JSON
variable that must be
corrected for a valid
rollup value. Correct
the script in the Cost
Allocation Rollup form.
1. Click the link to
navigate to the Cost
Allocation Rollup
form.
2. Correct the syntax
of the script in the
Script field.
3. Click Update.

Segment Rollup

Segment Rollup:
'{0}': To transaction
Account is null for
Segment ({1}) does
not exist for Scripted
Rollup

The rollup script
defined for {Test
Segment} segment
has an invalid
JSON return. One
of the rollup values
(Account) in JSON is
Null.

The rollup script
returns a JSON
variable that must be
corrected for a valid
rollup value. Correct
the script in the Cost
Allocation Rollup form.
1. Click the link to
navigate to the Cost
Allocation Rollup
form.
2. Correct the syntax
of the script in the
Script field.
3. Click Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1694


<!-- page 1695 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

Segment Rollup

Segment Rollup:
'{0}': To transaction
Account: {1} ({2}) is
invalid for Scripted
Rollup for to Account
{3}

The rollup script
defined for {Test
Segment} segment
has an invalid
JSON return. One
of the rollup values
(Account) in JSON is
invalid.

The rollup script
returns a JSON
variable that must be
corrected for a valid
rollup value. Correct
the script in the Cost
Allocation Rollup form.
1. Click the link to
navigate to the Cost
Allocation Rollup
form.
2. Correct the syntax
of the script in the
Script field.
3. Click Update.

Segment Rollup

Segment Rollup: '{0}'
rollup is divided by
no/invalid percent
value for Scripted
Rollup for to Account
{1}

The rollup script
defined for {Test
Segment} segment
has an invalid JSON
return. One of the
rollup percentage
values is invalid.

The rollup script
returns a JSON
variable that must
be corrected to sum
up to 100%. Correct
the script in the Cost
Allocation Rollup form.
1. Click the link to
navigate to the Cost
Allocation Rollup
form.
2. Correct the syntax
of the script in the
Script field.
3. Click Update.

Segment Rollup

Segment Rollup: '{0}'
scripted rollup is
divided by percent
{1}% which is more
than 100%

The rollup script
defined for {Test
Segment} segment
has an invalid JSON
return. The sum of the
rollup amount is 120%

The rollup script
returns a JSON
variable that must
be corrected to sum
up to 100%. Correct
the script in the Cost
Allocation Rollup form.
1. Click the link to
navigate to the Cost
Allocation Rollup
form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1695


<!-- page 1696 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

2. Correct the syntax
of the script in the
Script field.
3. Click Update.
Segment Rollup

Segment Rollup: '{0}'
scripted rollup is
divided by percent
{1}% which is less than
100%

The rollup script
defined for {Test
Segment} segment
has an invalid JSON
return. The sum of the
rollup amount is 70%

The rollup script
returns a JSON
variable that must
be corrected to sum
up to 100%. Correct
the script in the Cost
Allocation Rollup form.
1. Click the link to
navigate to the Cost
Allocation Rollup
form.
2. Correct the syntax
of the script in the
Script field.
3. Click Update.

Account Rollup

Account Rollup: '{0}':
The rollup of '100
target segment has
South Charles
not been specified: {1} Street, Baltimore,
MD' account has
a corrupted target
segment.

Redefine the rollup for
the account.
1. Click the error
message to
highlight the
account.
2. Click the account
name.
3. Delete the existing
corrupt target
segment by clicking
the actions ( )
icon in the account
rollup pop-up.
4. Click Add Rollup
button and select
the target segment
in the To Segment
choice list.
5. Select the Rollup
Method from the
choice list.
6. Click Save
Changes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1696


<!-- page 1697 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

Account Rollup

Account Rollup: '{0}':
target segment is not
valid: {1}

The rollup of '100
South Charles
Street, Baltimore,
MD' account has
a corrupted target
segment.

Redefine the rollup for
the account.
1. Click the error
message to
highlight the
account.
2. Click the account
name.
3. Delete the existing
corrupt target
segment by clicking
the actions ( )
icon in the account
rollup pop-up.
4. Click Add Rollup
button and select
the target segment
in the To Segment
choice list
5. Select the Rollup
Method from the
choice list.
6. Click Save
Changes.

Account Rollup

Account Rollup: '{0}':
target segment is not
in Hierarchy: {1}

The rollup of '100
South Charles Street,
Baltimore, MD'
account has a target
segment that is not in
the hierarchy.

Redefine the rollup for
the account.
1. Click the error
message to
highlight the
account.
2. Click the account
name.
3. Delete the existing
corrupt target
segment by clicking
the actions ( )
icon in the account
rollup pop-up.
4. Click Add Rollup
button and select
the target segment
that is in the
hierarchy in the To
Segment choice list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1697


<!-- page 1698 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

5. Select the Rollup
Method from the
choice list.
6. Click Save
Changes.
Account Rollup

Account Rollup: '{0}':
target segment is not
in Hierarchy: {1}

The rollup of '100
South Charles
Street, Baltimore,
MD' account has
a corrupted target
account

Redefine the rollup for
the account.
1. Click the error
message to
highlight the
account.
2. Click the account
name.
3. Delete the existing
corrupt target
segment by clicking
the actions ( )
icon in the account
rollup pop-up.
4. Click Add Rollup
button and select
the target segment
in the To Segment
choice list.
5. Select the target
account in the To
Account choice list.
6. Select the Rollup
Method from the
choice list.
7. Click Save
Changes.

Account Rollup

Account Rollup:
'{0}': To transaction
Account: {1} ({2}) is
invalid

The rollup of '101
Broadway East,
Seattle, WA' account
rolls up to an invalid
account.

Redefine the rollup for
the account.
1. Click the error
message to
highlight the
account.
2. Click the account
name.
3. Delete the existing
corrupt target
segment by clicking

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1698


<!-- page 1699 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

the actions ( )
icon in the account
rollup pop-up.
4. Click Add Rollup
button and select
the target segment
in the To Segment
choice list.
5. Select a valid
account in the To
Account choice list.
6. Select the Rollup
Method from the
choice list.
7. Click Save
Changes.
Account Rollup

Account Rollup: '{0}':
weighted rollup is
chosen, but no metric
is specified

The rollup of
'Development'
account has a corrupt
metric.

Redefine the rollup for
the account.
1. Click the error
message to
highlight the
account.
2. Click the account
name.
3. Delete the existing
target segment by
clicking the actions
( ) icon in the
account rollup popup.
4. Click Add Rollup
button and select
the target segment
in the To Segment
choice list.
5. Select a valid
account in the To
Account choice list.
6. Select the
Weighted metric in
the Rollup Method
choice list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1699


<!-- page 1700 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

7. Select a valid metric
in the Select Metric
choice list.
8. Click Save
Changes.
Account Rollup

Account Rollup: '{0}':
weighted rollup is
chosen, but no metric
is specified

Account Rollup:
The rollup of
'Development'
account has a corrupt
metric.

Redefine the rollup for
the account.
1. Click the error
message to
highlight the
account.
2. Click the account
name.
3. Delete the existing
target segment by
clicking the actions
( ) icon in the
account rollup popup.
4. Click Add Rollup
button and select
the target segment
in the To Segment
choice list.
5. Select a valid
account in the To
Account choice list.
6. Select the
Weighted metric in
the Rollup Method
choice list.
7. Select a valid metric
in the Select Metric
choice list.
8. Click Save
Changes.

Account Rollup

Account Rollup: '{0}'
The sum rollup
is manually divided
percentage of 'HR' is
by a missing or invalid 70%.
percentage value

Redefine the rollup to
sum up to 100%
1. Click the link to
navigate to the Cost
Allocation Rollup
Overrides list.
2. Enter percentage
for each record

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1700


<!-- page 1701 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

so that the
percentages of all
records sum up to
100% in the Percent
column.
3. Click the save ( )
icon or press Enter
after each entry.
Account Rollup

Account Rollup: '{0}'
- sum of the manual
percentage is {1}%
which is more than
100%

The sum rollup
percentage of 'HR' is
70%.

Redefine the rollup to
sum up to 100%
1. Click the link to
navigate to the Cost
Allocation Rollup
Overrides list.
2. Enter percentage
for each record
so that the
percentages of all
records sum up to
100% in the Percent
column.
3. Click the save ( )
icon or press Enter
after each entry.

Account Rollup

Account Rollup: '{0}'
- sum of the manual
percentage is {1}%
which is less than
100%

The sum rollup
percentage of 'HR' is
70%.

Redefine the rollup to
sum up to 100%
1. Click the link to
navigate to the Cost
Allocation Rollup
Overrides list.
2. Enter percentage
for each record
so that the
percentages of all
records sum up to
100% in the Percent
column.
3. Click the save ( )
icon or press Enter
after each entry.

Account Rollup

Account Rollup: '{0}'
is equally divided by

'{0}' rollup override
is equally divided by

Redefine the rollup to
sum up to 100%

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1701


<!-- page 1702 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

a missing or invalid
percentage value

no/invalid percent
value.

Action

1. Click the link to
navigate to the Cost
Allocation Rollup
Overrides list.
2. Enter percentage
for each record
so that the
percentages of all
records sum up to
100% in the Percent
column.
3. Click the save ( )
icon or press Enter
after each entry.

Account Rollup

Account Rollup: '{0}'
is equally divided by
percent {1}%, which is
more than 100%

The rollup of '125
West South Street,
Indianapolis, IN'
account is more than
100% and may lead
to unaccountable
amounts.

Redefine the rollup
to sum up to 100% on
the Account Rollup
Override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
Overrides list.
2. Enter percentage
for each record
so that the
percentages of all
records sum up to
100% in the Percent
column.
3. Click the save ( )
icon or press Enter
after each entry.

Account Rollup

Account Rollup: '{0}'
is equally divided by
percent {1}% which is
less than 100%

The rollup of '125
West South Street,
Indianapolis,
IN' account is more
than 100% and may
lead to unaccountable
amounts.

Redefine the rollup
to sum up to 100% on
the Account Rollup
Override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
Overrides list.
2. Enter percentage
for each record
so that the
percentages of all
records sum up to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1702


<!-- page 1703 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

100% in the Percent
column.
3. Click the save ( )
icon or press Enter
after each entry.
Account Rollup

Account Rollup: '{0}':
rollup script contains
syntax errors

The rollup script
defined for
the Facilitate
Connectivity account
has syntax errors.

The rollup script
must be syntactically
corrected on the
account rollup
override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
Override form.
2. Correct the syntax
of the script in the
Script field.
3. Click Update.

Account Rollup

Account Rollup:
'{0}': To transaction
Segment {1} is
given empty/null
for Scripted Rollup
Override for to
Account {2}

The rollup script
defined for the
Facilitate Connectivity
account has an invalid
JSON return. One of
the rollup values in
JSON is null.

The rollup script
returns a JSON
variable that must
be corrected for a
valid rollup value.
Correct the script on
the Account Rollup
Override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
Override form.
2. Correct the rollup
value in the Script
field.
3. Click Update.

Account Rollup

Account Rollup:
'{0}': To transaction
Segment: {1} is
invalid for Scripted
Rollup Override for to
Account {2}

The rollup script
defined for the
Facilitate Connectivity
account has an invalid
JSON return. One of
the rollup values is
Test Account, which is
not a valid Business
Unit.

The rollup script
returns a JSON
variable that must
be corrected for a
valid rollup value.
Correct the script on
the Account Rollup
Override form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1703


<!-- page 1704 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

1. Click the link to
navigate to the Cost
Allocation Rollup
Override form.
2. Enter a valid
rollupValue in the
Script field.
3. Click Update.
Account Rollup

Account Rollup:
'{0}': To transaction
Segment: {1} is not
in the hierarchy
for Scripted Rollup
Override for to
Account {2}

The rollup script
defined for
the Facilitate
Connectivity account
has an invalid JSON
return. One of the
rollupToSegment is
Test Segment, which
is not in the hierarchy.

The rollup script
returns a JSON
variable that must be
corrected for a valid
rollupToSegment.
Correct the script on
the Account Rollup
Override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
Override form.
2. Enter a valid
rollupToSegment in
the Script field.
3. Click Update.

Account Rollup

Account Rollup:
'{0}': To transaction
Account ({1}) of
Segment ({2}) is
given empty/null
for Scripted Rollup
Override

The rollup script
defined for
the Facilitate
Connectivity' account
has an invalid JSON
return. One of the
rollup values is given
empty/Null.

The rollup script
returns a JSON
variable that must
be corrected for a
valid rollup value.
Correct the script on
the Account Rollup
Override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
Override form.
2. Enter a valid
rollupValue in the
Script field.
3. Click Update.

Account Rollup

Account Rollup:
'{0}': To transaction
Account is null for
Segment ({1}) for

The rollup script
defined for the
Facilitate Connectivity
account has an invalid

The rollup script
returns a JSON
variable that must
be corrected for a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1704


<!-- page 1705 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

Scripted Rollup
Override

JSON return. One of
the rollup values is
given empty/Null.

valid rollup value.
Correct the script on
the Account Rollup
Override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
Override form.
2. Enter a valid
rollupValue in the
Script field.
3. Click Update.

Account Rollup

Account Rollup:
'{0}': To transaction
Account: {1} ({2}) is
invalid for Scripted
Rollup Override

Script returns invalid
JSON. One of the
rollup values is
BlackBerry, which is
not a valid Business
Unit.

The rollup script
returns a JSON
variable that must
be corrected for a
valid rollup value.
Correct the script on
the Account Rollup
Override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
Override form.
2. Enter a valid
rollupValue in the
Script field.
3. Click Update.

Account Rollup

Account Rollup:
'{0}' rollup override
is divided with
no/invalid percent
value for Scripted
Rollup Override for to
Account {1}

One of the
percentage values,
rollup amount, is given
Null or invalid value
for rollup value 'test
account'.

Correct the rollup
amount in the script
on the Account Rollup
Override form.
Correct the script on
the Account Rollup
Override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
Override form.
2. Correct the
rollupAmount in the
script.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1705


<!-- page 1706 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

3. Enter a valid
percentage value in
the Script field.
4. Click Update.
Account Rollup

Account Rollup:
'{0}' rollup override
is divided with
no/invalid percent
value for Scripted
Rollup Override for to
Account {1}

One of the
percentage values is
given Null or invalid
for a missing rollup
argument or rollup
value.

Correct the rollup
amount in the script
on the Account Rollup
Override form.
Correct the script on
the Account Rollup
Override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
Override form.
2. Correct the
rollupAmount in the
script.
3. Enter a valid
percentage value in
the Script field.
4. Click Update.

Account Rollup

Account Rollup: '{0}'
scripted rollup is
divided by percent
{1}% which is more
than 100%

The rollup script
defined for the
Facilitate Connectivity
account has an invalid
JSON return. The sum
of the rollupAmount is
120%.

The rollup script
returns a JSON
variable that must be
corrected to sum up
to 100%. Correct the
script on the Account
Rollup Override list.
1. Click the link to
navigate to the Cost
Allocation Rollup
list.
2. Enter percentage
for each record
so that the
percentages of all
records sum up to
100% in the Percent
column.
3. Click Update.

Account Rollup

Account Rollup: '{0}'
scripted rollup is

The rollup script
defined for the

The rollup script
returns a JSON

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1706


<!-- page 1707 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

divided by percent
Facilitate Connectivity
{1}% which is less than account has an invalid
100%
JSON return. The sum
of the rollupAmount is
70%

Action

variable that must be
corrected to sum up
to 100%. Correct the
script on the Account
Rollup Override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
list.
2. Enter percentage
for each record
so that the
percentages of all
records sum up to
100% in the Percent
column.
3. Click Update.

Account Rollup

Account Rollup: '{0}'
has bucket-based
rollup with invalid
bucket

Account Rollup: '{0}'
has bucket-based
rollup with invalid
bucket

Redefine the bucket
rollup for the account.
1. Click the error
message to
highlight the
account.
2. Click the account
name.
3. Click the Bucket
Rollups tab.
4. Delete the existing
invalid bucket
record by clicking
the delete (

) icon.

5. Click Add Bucket
Rollup.
6. Select the bucket
from the Bucket
choice list in the
bucket rollup popup.
7. Select the Rollup
Method from the
choice list.
See View accounts
that roll up to an

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1707


<!-- page 1708 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

account for more
information.
8. Click Save
Changes.
Account Rollup

Account Rollup

Account Rollup: '{0}'
has bucket-based
rollup where bucket
has no parent

Account Rollup: '{0}'
has bucket-based
rollup where the
bucket has no parent

Contact Customer
Service and Support

Account Rollup: '{0}'
has bucket-based
rollup where bucket is
not in the current cost
model

Account Rollup: '{0}'
has bucket-based
rollup where the
bucket is not in the
current cost model

Redefine the bucket
rollup for the account.

.

1. Click the error
message to
highlight the
account.
2. Click the account
name.
3. Click the Bucket
Rollups tab.
4. Delete the existing
bucket record by
clicking the delete
(

) icon.

5. Click Add Bucket
Rollup.
6. Select a bucket that
is in the current
cost model from the
Bucket choice list
in the bucket rollup
pop-up.
7. Select the Rollup
Method from the
choice list.
See View accounts
that roll up to an
account for more
information.
8. Click Save
Changes.
Account Rollup

Account Rollup: '{0}'
has bucket-based
rollup where bucket is

Account Rollup: '{0}'
has bucket-based
rollup where the

Redefine the bucket
rollup for the account

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1708


<!-- page 1709 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

not at the lowest split
level

bucket is not at the
lowest split level

Action

1. Click the error
message to
highlight the
account.
2. Click the account
name.
3. Click the Bucket
Rollups tab.
4. Delete the existing
bucket record by
clicking the delete
(

) icon.

5. Click Add Bucket
Rollup.
6. Select a bucket
that is at the lowest
split level from the
Bucket choice list
in the bucket rollup
pop-up.
7. Select the Rollup
Method from the
choice list.
See View accounts
that roll up to an
account for more
information.
8. Click Save
Changes.
Account Rollup

Account Rollup:
'{0}' has bucketbased rollup divided
manually for bucket
'{1}' has a missing or
invalid percentage
value

Account '{0}'
rollup override is
manually divided with
no/invalid percent
value.

Redefine the rollup to
sum up to 100%.
1. Click the link to
navigate to the Cost
Allocation Rollup
Overrides list.
2. Enter percentage
for each record
so that the
percentages of all
records sum up to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1709


<!-- page 1710 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

100% in the Percent
column.
3. Click the save ( )
icon or press Enter
after each entry.
Account Rollup

Account Rollup:
'{0}' has bucketbased rollup divided
manually for bucket
'{1}' with percent {2}%
which is more than
100%

The sum rollup
percentage of 'HR' is
70%.

Redefine the rollup to
sum up to 100%.
1. Click the link to
navigate to the Cost
Allocation Rollup
Overrides list.
2. Enter percentage
for each record
so that the
percentages of all
records sum up to
100% in the Percent
column.
3. Click the save ( )
icon or press Enter
after each entry.

Account Rollup

Account Rollup:
'{0}' has bucketbased rollup divided
manually for bucket
'{1}' with percent {2}%
which is less than
100%

The sum rollup
percentage of 'HR' is
70%.

Redefine the rollup to
sum up to 100%.
1. Click the link to
navigate to the Cost
Allocation Rollup
Overrides list.
2. Enter percentage
for each record
so that the
percentages of all
records sum up to
100% in the Percent
column.
3. Click the save ( )
icon or press Enter
after each entry.

Account Rollup

Account Rollup: '{0}'
has bucket-based
rollup divided equally
for bucket '{1}' with
a missing or invalid
percentage value

'{0}' rollup override is
equally divided with
no/invalid percent
value

Redefine the rollup to
sum up to 100%.
1. Click the link to
navigate to the Cost
Allocation Rollup
Overrides list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1710


<!-- page 1711 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

2. Enter percentage
for each record
so that the
percentages of all
records sum up to
100% in the Percent
column.
3. Click the save ( )
icon or press Enter
after each entry.
Account Rollup

Account Rollup: '{0}'
has bucket-based
rollup divided equally
for bucket '{1}' with
percent {2}% which is
more than 100%

The rollup of '125
West South Street,
Indianapolis, IN'
account is more than
100% and may lead
to unaccountable
amounts.

Redefine the rollup
to sum up to 100% on
the Account Rollup
Override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
Overrides list.
2. Enter percentage
for each record
so that the
percentages of all
records sum up to
100% in the Percent
column.
3. Click the save ( )
icon or press Enter
after each entry.

Account Rollup

Account Rollup: '{0}'
has bucket-based
rollup divided equally
for bucket '{1}' with
percent {2}% which is
less than 100%

The rollup of '125
West South Street,
Indianapolis,
IN' account is less
than 100% and may
lead to unaccountable
amounts.

Redefine the rollup
to sum up to 100% on
the Account Rollup
Override form.
1. Click the link to
navigate to the Cost
Allocation Rollup
Overrides list.
2. Enter percentage
for each record
so that the
percentages of all
records sum up to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1711


<!-- page 1712 -->
Missing money logs and resolution (continued)
Category

Condition

Cause

Action

100% in the Percent
column.
3. Click the save ( )
icon or press Enter
after each entry.

Cost models - Legacy
A cost model is a set of rules, methods, and metrics that tell the application how to allocate
expenses to the accounts in the hierarchy.
Cost models are associated with allocations and reports. If you own an ITBM analyst license,
then you can create several cost models and choose the one you want to run the allocation
engine against.
Cost models have the following attributes which give you more control over your expense
allocation:
• User Group: Associate a cost model to a user group of type ITFM. Anyone with the appropriate
financial model role can access the cost model (with the associated user group), provided the
user is also part of the user group. With this association, you can restrict users who can access
the cost model.
• Fiscal Period: Associate a cost model to a fiscal unit. The Fiscal Period field in the Data
Definition stage of the financial modeling is set based on the fiscal unit that you have selected
in the cost model. Hence, you can perform financial model activities for different fiscal periods
(month, quarter, or a period).
• Data Source: Define the staged lines source for the cost model. Optionally, you can opt not to
define a data source, in which case you can create groomed lines directly or enter the amount
directly into the buckets.
If you own an ITBM analyst license you can use the prescribed cost models that the base system
provides, other than the cost models that you can create. See prescriptive cost models for
shared services and business applications, and prescriptive cost models for business services
and business capabilities for the following cost models:
• Level 1 Costing — Shared Services
• Level 2 Costing — Business Applications
• Level 2 Costing — Business Services
• Level 3 Costing — Business Capabilities
If you are using Enterprise Architecture (formerly Application Portfolio Management) or Service
Portfolio Management (SPM), then you can use one of the following cost models that depends
on the application that you use:
• Business Application Costing
• Service Offering Costing

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1712


<!-- page 1713 -->
Create a cost model from Cost Model form - Legacy
You can create multiple cost models to process allocations. Use the Cost Model form to configure
all possible settings available to the cost model.

Before you begin

Important: This feature is available only when you own an ITBM Analyst license.

Role required: cost_transparency_admin

About this task

You can select a cost model in The Data Definition stage - Legacy when you set up allocations.
You can also clone a cost model in the workbench.

Procedure
1. Navigate to All > Financial Modeling > Cost Models > All.
2. Click New.
3. Fill in the form fields (see table).
Financial Model form
Field

Description

Name

Name of the cost model in accordance with its description, of up to 80
characters in length.

Description Description of the cost model.
Used
by Cost
Allocation

Option to specify if the model is to be used for cost allocation.

Model
Owner

The user who created the cost model.

Data
Source

The source from where the data is taken.
Data Source field is editable until financial model actions are not done.
The application is preconfigured to point to the Budget Staged table as a data
source for the Default Budget Cost Model as it is linked to ITFM Budget staged
expenses.
You also have the option not to select a data source. In such a case, the
Workbench stages will not have the data cleansing stage as there is no financial
data source to pull the expense lines from. Amounts would then be keyed in
manually at the bucketing stage.

Used by
Budgeting

Check box if the model is being used for budgets.

Cost Transparency section of the Financial Model form
Field

Description

Fiscal Unit

Defines the fiscal unit to be a month, quarter,
or a period based on the fiscal calendar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1713


<!-- page 1714 -->
Field

Include Sub-Bucket info

User Group

Description

If enabled, the generated cost lines
and breakdown lines hold sub-bucket
information.
The user group selected is associated with
the cost model. This restricts access to the
cost model by other user groups that are not
associated with the user group of type ITFM.
Users with the cost_transparency_analyst
role can access default cost model and the
cost model associated to their user group
only.
Users with cost_transparency_admin and
system administrator roles can access all
the cost models, including the default cost
model.
If the Used by Budgeting check box is
enabled for the cost model, then users with
appropriate budgeting role can view all the
budget models.
If the cost model is used for purposes of both
budgeting and generating cost allocation
lines, that is, if Used by Cost Allocation
and Used by Budgeting check boxes are
enabled, then all users can access the cost
model.

4. Click Submit.
5. To run cost allocations, click Allocate Expenses button.

Note: If you are a non-analyst licensed customer, ensure that the number of accounts in
each segment and the total number of accounts in the cost model is within the threshold
values 4000 and 12000 respectively.
Use this option to run cost allocation from the cost model form and not necessarily from the
workbench.
a. Select the fiscal period in the Allocate Expense dialog box.
b. Click OK.
The allocation engine runs to generate cost allocations for the selected fiscal period. The
engine does cleansing and bucketing. It allocates the expenses and creates allocation
lines. However, if the cost model has no data source, the engine ignores the cleansing and
bucketing stages and creates allocation lines.
6. To download the cost model, click Download Cost Model button.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1714


<!-- page 1715 -->
You can download the cost model for uploading it to, or deploying it in another instance to do
cost modeling in a different pre-production environment. You can later move the cost model to
other production environments.
With the ability to download the cost model you can also download all its related tables and
the related elements such as segment definition and hierarchy, buckets, cleansing and
grooming conditions, bucket allocations, rollups and rollup overrides, and consumption
metrics.
7. To generate cost lines for leaf buckets associated to the cost model, click Generate Bucket
Cost button.
Use this option to generate bucket amount lines for this cost model that has no data source.
Cost lines are generated for each leaf bucket that has no further sub-buckets. Even if there is
no amount in the bucket, the amount lines are generated in the Groomed General Ledger Data
[itfm_gl_data_groomed] table, populating zero in the Amount column. The table displays the
bucket, sub-bucket, and amount associated with the cost model for the fiscal period that you
selected.
a. Select the fiscal period in the Generate Bucket Cost dialog box.
b. Click OK.
▪ If there is no amount in a bucket, the allocation engine still generates a groomed line with
zero expense for the selected fiscal period of the cost model.
▪ If there are pre-existing groomed lines with amounts in buckets for that fiscal period, then
the engine does not overwrite those cost lines.
You can edit the Amount column to enter the amount for each sub-bucket.
8. To create model hierarchy using the interactive user interface, click Build segment hierarchy
related link.
Add new segments to the hierarchy or remove segments from the cost model per your
requirements.
9. To replace the top segment of the selected cost model that you want to clone:
a. Click the Clone Model and Replace Top Segment related link.
b. Select a segment from the choice list of the Clone Model and Replace Top Segment pop-up
and click OK.
You can replace the top segment in the cost model with another segment of your choice.
Segments that have not been used in the cost model are available for you to choose to
replace the top segment of the cost model. The replacing segment is from the available
segments but has not been already used in the current cost model segment hierarchy.
The selected segment replaces the existing top segment and will not be an addition to the
existing segment levels in the hierarchy. Replacing the top segment enables you to configure
the cost model specifically for the organizational structure of your enterprise.

Note: The rules such as bucket assignments, rollups, rollup overrides, breakdown
relationship, unit metrics, sibling relationship, and GL segment configured for the
original segment become invalid for the replaced segment. Hence, you must set these
rules for the replaced top segment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1715


<!-- page 1716 -->
What to do next

The buckets that use this cost model are shown in the Buckets related list.
You can also create an account bucket.
Map a unit cost metric to a segment of a cost model to generate unit costs.
The breakdown relationship to explicitly generate breakdown cost lines in the
itfm_allocation_breakdown table for a given segment-segment mapping are shown in the
Breakdown Relationships related list.
You can also define a sibling relationship to roll up accounts at the sibling level.
Generating controlled cost lines
Generating controlled cost lines helps you to control the allocation lines that are required for
your business needs.
If you're a new customer, by default, the allocation engine automatically generates the controlled
cost lines.
If you're upgrading from a previous version to the Zurich release, the following changes are made
to the Controlled Cost Lines and GL Expense Lines options:
• When you clone a cost model, the Generate Controlled Cost Lines option is enabled in
the new model and the Generate GL Expense Lines option is inactivated in the new model
irrespective of whether the options were inactivated or enabled in the base model. These
options aren't editable and don't appear on the default view of the Cost Model View page.
• When you create a cost model, the default values are set. The default value for the Generate
Controlled Cost Lines option is true and the default value for the Generate GL Expense Lines
option is false. These options aren't editable and don't appear on the default view of the Cost
Model View page.
• For existing cost models, the existing values remain the same. If the Generate Controlled Cost
Lines option is inactivated, it remains inactive. If the Generate GL Expense Lines option is
enabled, it remains enabled. You can change the values for these options to default values.
To view the sub-bucket information and view reports on the relationship between the two
segments, do the following:
• If you require the sub-bucket information of the generated lines, select the Include sub-Bucket
Info option on the Cost Model View page.
The generated controlled cost lines are sufficient to plot single-dimension charts with the
buckets.
• Define a breakdown relationship explicitly to view reports on the relationship between the two
segments.
The engine then generates the additional breakdown allocation lines in the Cost Allocation
Breakdown Aggregate [itfm_allocation_breakdown] table, which help to plot a two-dimension
chart between segments. For example, IT Shared Service contribution to Business Unit.
Generate unit costs
Associate a unit cost metric with a segment of a cost model hierarchy to generate unit costs.
The mapping helps to derive unit cost based on the allocation lines from the Financial Modeling
application.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1716


<!-- page 1717 -->
Procedure
1. Navigate to Financial Modeling > Cost Models > All.
2. To associate the unit cost metric to a segment or an account of a segment of the cost model,
click open a cost model.
3. Click the Unit Cost Metrics related list.
4. Click New.
5. On the form, fill in the fields.
Unit Cost Metrics form
Field

Description

Cost Model

Cost model from the list.

Unit Cost Segment

The cost model segment for which the unit
cost is to be generated.

Unit Cost Metric

Unit cost metric that has been defined in the
consumption/weight table.

Unit

Unit of measure for the unit cost.

Transactional table

Segment transactional table, which cannot
be edited.

Include Bucket Info

Option to enable the bucket information in
unit costs.
By default, Include Bucket Info flag is set
to False. If the flag is true, then the bucket
information is populated in the bucket
column of the Unit Cost [itfm_unit_cost] table.

Unit Cost Accounts filter

Accounts filtered based on a criteria.
Unit costs are generated only for the filtered
accounts.

6. Click Submit.
7. Select the unit cost metric and click Generate Unit Cost Metrics.
8. Select the fiscal period in the Generate Unit Cost Metrics pop-up that appears.
The engine has run the allocations already for the fiscal periods that appear in the list.
9. Click OK.
10. To see the unit costs, navigate to Financial Modeling > Cost Model Lines > Unit Costs.
The unit costs are generated and populated in the Unit Cost table. The unit costs are
generated for all the filtered accounts of the Unit Cost Segment in the Unit Cost Account
column of the unit cost table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1717


<!-- page 1718 -->
Enabling Include Bucket Info check box gives you a visibility of the amount coming from
different buckets. You can track the bucket-wise unit cost in the bucket and sub-bucket
columns of the unit cost table.
The table also shows the total cost and quantity. Based on the enforced relationship of the
metric, you can further drill down from the account unit cost.
Define a sibling rollup relationship
Define a relationship to roll up amounts to accounts in the sibling segments. You can roll up the
expenses to any account in the hierarchy, not restricting to the immediate parent or grandparent
in the hierarchy.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

Procedure
1. Navigate to Financial Modeling > Cost Models > All.
2. Click the Sibling Rollup Relationship tab.
3. Click New.
4. On the form, fill in the fields.
Sibling Rollup Relationship form
Field

Description

Relation Name

Name that is generated for the sibling
relationship that you define.

From Segment

The segment from which the relationship is
created.

To Segment

The segment to which the relationship is
established.

5. Click Submit.
Prerequisites to modify data source of a cost model
Clean the cost model of its existing data source and all the data collected and accumulated in
the associated tables. Follow the steps to seamlessly change the data source.

Steps to change the data source of a cost model
1. Remove the following data from their respective tables:
a. The allocation breakdowns for the cost model from the Cost Allocation Breakdown
Aggregate [itfm_allocation_breakdown] table.
b. The allocation for the cost model from Cost Allocation [itfm_allocation] table.
c. The allocation aggregates for the cost model from the Cost Allocation Aggregate
[itfm_allocation_aggregate] table.
d. The groomed records for the cost model from the Groomed General Ledger Data
[Itfm_gl_data_groomed] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1718


<!-- page 1719 -->
e. The cleansed records for the cost model from the General Ledger Cleansed Data
[itfm_gl_data_cleansed] table.
f. The records from the Cost Allocation Runs Log [itfm_ca_run_log] table for the cost model.
2. Modify the data source of the cost model.
Choose a cost model - Legacy
You can choose one cost model that you want to use in the workbench as you pass through all
the stages.

Before you begin

Role required: cost_transparency_admin

Procedure
Select the cost model for the data that you want to work with from the Cost Model choice list in
the Data Definition stage.
If you do not see the cost model you want, you can create one.
Cost model hierarchy - Legacy
All the accounts belong to segments, which are structured in a cost model hierarchy.
The cost model hierarchy makes it possible for you to roll up expenses from lower-level accounts
and segments to higher-level accounts and segments. For example, assume that you use the
default hierarchy, which has the business service segment under the business unit segment.
This rollup enables you to have the expenses that are allocated to a business service, such
as email, also apply to the business units that consume the email service, one of which is
commonly IT.

Note: Using the workbench is the preferred method of modifying the hierarchy, rather
than using the Segment Relationship form. When you use the workbench to modify the
hierarchy, it automatically creates all the rules and methods.

Build segment hierarchy

Important: This feature is available only when you own an ITBM Analyst license.
You can use the Build segment hierarchy link in the Financial Model form to create model
hierarchy easily using interactive user interface as in Financial Modeling workbench. Add new
segments to the hierarchy or remove segments from the cost model per your requirements.
Allocations - Legacy
When the Financial Management application allocates an expense, it breaks down the expense
into detailed amounts of money called allocations.
The allocations are then associated to specific segments and accounts in the Hierarchy of
Segments.
To allocate expenses, the application uses the following items, which comprise your cost model:
Bucket allocations
Allocation of a particular bucket to a segment or an account in a segment using
allocation methods, using the rule to calculate the breakdown of the expense, either
on an equal basis, manual, or weighted.
Segment rollups
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1719


<!-- page 1720 -->
Defines how the amount rolls up from one segment to another segment.
Rollup overrides
Amount from a particular account of a segment can roll up to any account or
segment in the hierarchy.
Allocation metrics
Contain additional instructions that the application uses to allocate expenses
based on a weighted calculation or on a script. A method can use one or more
metrics.
When you use the workbench to assign expenses to accounts and segments, it creates all the
rules, methods, and conditions automatically.
Users with the financial management administrator or financial analyst role can administer cost
allocations through the workbench, which is the preferred method, or by using lists and forms.

Chargebacks
The application supports "chargebacks", or negative amounts in general ledger expenses that
can be used to transfer credits between segments for a shared cost. Chargeback expenses
process fixed amount methods in the opposite way of other expenses. For example, a fixed
amount type method that allocates $50 on a $100 dollar chargeback, shown as "-100" in the
general ledger expense, applies a $50 credit as specified by the rule.

Example Allocations
The demo data provided with the application provides good examples of different types of
allocations. You can make several types of allocations, such as allocating:
• Storage costs based on consumption
• Private cloud costs based on usage of virtual machines
• Servers based on cost, CPUs, location, and so on
• Project management contract costs
Account buckets - Legacy
Account buckets help you categorize cleansed expenses before you assign the expenses to
accounts and segments.
Buckets can be put in parent-child relationships so that several child buckets can refer to a
single parent bucket.
Buckets must also be associated with one cost model, starting with the Geneva release.
Create an account bucket
You can create account buckets in the workbench, but you can also create them with the Bucket
form.

Before you begin

Role required: cost_transparency_admin

Procedure
1. Navigate to All > Financial Modeling > Cost Models > Buckets.
2. Click New.
3. Fill out the fields on the form as appropriate (see table).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1720


<!-- page 1721 -->
4. Click Submit.
The Bucket form

Bucket form fields
Field

Description

Number Auto-generated identification number for the bucket.
Name

Descriptive name for the bucket.

Bucket
type

The type of bucket:
◦ Selector: a split bucket
◦ Expenses: standard buckets (non-split)

Cost
Model

The cost model associated with this bucket. Select the cost model. If you open the
cost model record, the buckets associated with it appear in the Buckets related list.
These are the buckets that are available to that cost model on the Workbench when
you put expenses into buckets.

Exclude If the bucket is not used for allocations.
from
cost
model
Parent
bucket

Parent bucket that this bucket is associated with.

When you put expenses into buckets, you can also add new buckets and create conditions for
buckets that filter the data that goes into the bucket.
Grooming and cleansing conditions - Legacy
Grooming conditions define how expenses are related to each other and to buckets when
you make changes in the workbench, while cleansing conditions define how financial data is
cleansed by segment.

Grooming conditions
The workbench creates three types of grooming conditions:
• Data cleansing conditions: Defines the expense combinations that you make during the
Cleansing stage. For example, if you drag the expense entry for the Acme vendor onto the
Acme Inc. vendor, the application creates a grooming rule that specifies to the workbench
that all those expenses should be considered as belonging to the Acme Inc. vendor. The
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1721


<!-- page 1722 -->
application does not actually add, delete, or modify the expense records in the General Ledger
Cleansed Data table [itfm_gl_data_cleansed].
• Bucketing conditions: Defines which expenses you added to buckets during the Bucketing
stage.
• Advanced query conditions: Defines which expenses are allowed to be added to buckets
during the Bucketing stage. The application creates data cleansing and bucketing conditions
automatically when you use the workbench. The only type of grooming condition that you
create manually, either through the form view or through the workbench, is the advanced query
condition.

Cleansing conditions
The application creates cleansing conditions when you merge expenses in the cleansing stage
of the workbench. You do not need to modify these cleansing conditions.
Modify advanced query conditions
You can modify existing advanced query conditions, which define how expenses are added to
buckets.

Before you begin

Role required: cost_transparency_admin

About this task

Note: Grooming conditions are automatically created in the workbench.
Procedure
1. Navigate to All > Financial Modeling > Cost Models > Grooming Conditions.
The resulting list of records is filtered to show only advanced query conditions.
2. Click the grooming condition number to open it.
3. Modify the fields on the form as appropriate (see table).
4. Click Update.
Example grooming condition

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1722


<!-- page 1723 -->
Example grooming conditions
Field

Description

Number

Auto-generated identification number for the bucket.

Name

Descriptive name for the bucket.

Priority

A code for the bucket that the system uses to identify it. Enter any
alphanumerical code. Bucket codes cannot have duplicates.

Description If the bucket is not used for allocations.
Bucket

The buckets that use this bucket as a parent. To create a sub-bucket, click New
and fill out the fields on the form. The fields are the same as on the Bucket form,
except that the Parent bucket field is visible.

Condition
Type

The type of grooming condition. Select Advanced Query condition.

Table

The table containing the expenses that are filtered when put into the bucket.
By default, the General Ledger Cleansed Data [itfm_gl_data_cleansed] table is
selected. Do not change the table.

Advanced
bucketing
condition

The condition that determines the financial data that must meet the advanced
query condition. Use the condition builder to create the filter.

Expense allocation - Legacy
Expense allocation refers to the assignment of expenses to accounts in the hierarchy of
segments.
You can allocate expenses by applying rules to groomed expenses in the general ledger. The
methods and metrics in the rules specify how the expenses are allocated. See Allocations for
more information on how rules, methods, and metrics work.

Reversions and Reallocations
After a groomed expense in the general ledger is allocated, it cannot be allocated again unless
the original allocation is reverted. You should revert allocations if changes to allocation rules,
methods, or metrics are made and the general ledger expenses must be reallocated according
to the modifications. In addition, if you make changes to the hierarchy of segments, all expenses
need to be reverted first.
View allocation lines
After you complete an allocation, you can view the allocation lines that the application created.

Before you begin

Role required: cost_transparency_admin

Procedure
1. Open the allocation line that you want to modify through either of the following methods:
◦ To access an allocation through the general ledger that created it:
a. Navigate to Financial Modeling > General Ledger > Groomed Expenses.
b. Open the expense that generated the allocation you are looking for.
c. In the Cost Allocations related list, click the allocation number.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1723


<!-- page 1724 -->
◦ To access an allocation from a list of all allocations:
a. Navigate to Financials > Cost Models > Allocation Lines.
b. Click the allocation number.
2. Verify or change any of the editable fields on the form (see table).
3. Click Update.
An example allocation line

Cost Allocation form fields
Field

Description

Amount

The amount of this allocation.

Fiscal period The fiscal period fiscal period this expense belongs in.
GL Entry

The groomed expense from which this allocation line was derived.

Final

If the allocation line was processed by a rule that is marked final or if no
subsequent rule can process this allocation. Reports are run on final
allocation lines.

Bucket

The bucket that the allocation belongs to. This bucket is taken from the
expense during allocation.

Sub-bucket

The sub-bucket that the allocation belongs to. The sub-bucket is also taken
from the expense during allocation.

[Dimensions] The segments in the hierarchy of segments. The segments fields that contain
values are the segments that you specified in the allocation methods that
processed the allocation. If more than one method processes an allocation,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1724


<!-- page 1725 -->
Field

Description

all the allocated segments specified in all the methods contain a value. To
make a change, click the lookup icon next for each dimension and select the
relevant record.
Financial Management example allocations - Legacy
The demo data that is available with the Financial Management application provides examples of
cost allocations that you can use to model allocation rules, methods, and metrics.

Allocate by number of servers
This weighted allocation metric allocates to servers based on the server cost.
• Metric name: Servers by Server cost
• Type: weighted
Notice the following field values:
• Weight table is the Server table in the CMDB.
• Reference to allocate to is the field on the weight table that you are allocating to. In this case,
you are allocating to individual servers that are identified by their sys_id.
• Aggregate takes the value of the Aggregate count field in the weight table, which in this case
is Cost.
• Aggregate count is the cost of each server, which is identified on the server record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1725


<!-- page 1726 -->
A metric that weights allocations by server cost

Metric weight maps - Legacy
Weight maps are generated for each metric for every fiscal unit set in
com.glide.fiscal_calendar.fiscal_unit property.
Weight map is JSON that holds the weighted breakups to allocate accounts for a metric.
Allocation or rollup based on weighted metrics works only if correct weight map is generated for
a given fiscal period.
The Preview Weight Map (also available from the application navigator) in the Weighted
Metric Builder form shows how the weight is split across the accounts for a given fiscal period.
The Weight Map Preview list view shows the total number of weights and the date and time
the weight map was last generated. You can also view the percentage split for each account
breakdown and generate or regenerate the weight map in the Preview Weight Maps user
interface if the current weight map is not correct or has not generated.
Pre-generated weight maps for the fiscal period also helps in the performance of allocation
workbench to avoid generating weight maps spontaneously while allocation page is still in the
process of loading.
Following is an example to understand weight maps and percentage allocation if metric is used:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1726


<!-- page 1727 -->
Weight maps and percentage allocation example

Use cost analysis to view the allocation of amount - Legacy
Use cost analysis for a specific cost model for a fiscal period to view the cost lines using a UI
similar to allocation workbench. Cost analysis helps you to view the bucket amount, the amount
allocated to accounts, and the rolled up amount across segments and accounts based on the
cost lines generated by the allocation engine.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

About this task

You can view allocations made for the previous fiscal periods without any interference of
allocation or rollup rules defined for the current cost model because cost analysis is based
purely on cost allocation lines.
Cost analysis is an effective showback reporting tool that you can use to view the allocated
costs. After running the allocation engine, analysts can use cost analysis to validate if the
allocation rules have allocated the expected amount.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1727


<!-- page 1728 -->
Procedure
Navigate to Financial Modeling > Workbench.
You can also navigate to Financial Modeling > Cost Analysis.
Cost lines analysis page

The Cost Lines Analysis page has the following key features:
• The buckets, accounts, and their amount based on the generated cost lines.
• The consolidated buckets amount allocated to accounts.
• The segment level consolidated amount for all accounts in that segment.
• The bucket icon ( ) and relationship icon (
page, but are based on generated cost lines.
• Allocation viewer (

) function in the same way as the Workbench

) for accounts and buckets shows how the amount has been rolled up.

• Configure to display 5, 10, 15, 25, or 50 accounts in a page out of the total accounts per
segment. The pagination option that you set in the Configuration tab displays the selected
number of accounts of a segment in the Cost Lines Analysis page. The right and left arrows
enable you to navigate to the next set of records until all the accounts in the segment are
displayed.
Allocation metrics - Legacy
Allocation metrics contain additional instructions that the application uses to allocate expenses
based on a weighted calculation or on a script. Allocation methods use metrics to perform the
allocation.
Following are the types of metrics that are available:
• Weighted metrics are calculations based on an aggregate value from a segment. Use
weighted metrics to influence how much of an expense is allocated to a segment based on
other records in the instance, such as the number of servers used by a segment or the value
of depreciation on an asset. Users with the Finance Administrator role can create weighted
metrics.
• Scripted weighted metrics are weighted metrics in script form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1728


<!-- page 1729 -->
• Scripted methods are calculations based on customizable scripts that use the allocation
method API. These metrics were formerly called as scripted metrics.
• System metrics are metrics that the application creates automatically when you use
the workbench. These metrics are read-only and accessible by users with the Finance
Administrator role. See the Using the Workbench topics for more information.

Note: When you use the workbench to assign expenses to accounts and segments, it
creates all the rules, methods, conditions, and so on automatically. Using the workbench is
the preferred method of setting up allocations, rather than using lists and forms.
Starting with the Geneva release, fiscal periods are supported in metrics.
View, modify, and validate fiscal periods - Legacy
After you generate a fiscal calendar, you can view fiscal period records, modify the start and end
date, deactivate a fiscal period if necessary, and validate.

Before you begin

Role required: fiscal_calendar_user

Procedure
1. Navigate to All > System Definition > Fiscal Periods.
2. Open any of the fiscal periods (see table for field descriptions) to view, modify, or deactivate.
Fiscal period form
Field

Description

Name

Name of the fiscal period.

Start date time

Date the fiscal period starts.

End date time

Date the fiscal period ends.

Fiscal Type

[Read-Only] Type of period, either Year or Quarter.

3. Validate the fiscal periods to ensure that there are no gaps and that they match a valid style of
calendar.
a. To validate, return to the list view of fiscal periods and click Validate Periods.
Create weighted allocation metrics - Legacy
You can create weighted metrics using an enhanced form or a standard form.

Before you begin

Role required: cost_transparency_admin

About this task

The enhanced form provides a visualization that helps you understand the relationships
between the various components of the metric. Use the enhanced form that opens by default.

Procedure
1. Navigate to All > Financial Modeling > Consumption Metrics > Create Weighted Metric.
2. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1729


<!-- page 1730 -->
A graphical representation of the weighted allocation appears in the Metric Visualization
section. When you make changes to the form the graphic updates dynamically.
Weighted metric builder

Weighted Metric form
Field

Description

Name

Descriptive name of the metric.

Allocation group

Group associated with this metric. The default group is ITSM.

System metric

Metric created by the application in the workbench.

Refresh frequency

Frequency at which the data is refreshed.

Cost Allocation section of the Weighted Metric form
Field

Description

Allocate to

Segment in the hierarchy to which allocations
are processed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1730


<!-- page 1731 -->
Field

Description

You can access fields in related tables and
the reference to the chain of field names
separated by dots can go on up to any
number.
Apply filter (Cost Allocation)

Check box to display the condition builder.
Specify the criteria that the selected Allocate
tosegment field must be met for this metric to
apply.
The fields available for the first part of the
condition depend on the table you select for
Allocate to. The condition builder supports
dot walking, so you can select fields on
another table.

Weight Table section of the Weighted Metric form
Field

Description

Weight table

The table used to weight the allocation
amounts based on aggregations.

Reference to allocate from

The field on the weight table that refers to the
Allocate from segment. This field is available
when the Enforce relationship check box is
selected.
You can access fields in related tables and
the reference to the chain of field names
separated by dots can go on up to any
number.

Reference to allocate to

The field on the weight table that refers to the
Allocate to segment.
You can access fields in related tables and
the reference to the chain of field names
separated by dots can go on up to any
number.

Aggregate

The type of aggregation to perform on the
records in the weight table. Select from the
following options:
◦ Count: A count of the number of records
in the weight table that meet the weight
condition.
◦ Value of: The value of the selected field.
◦ Sum: The sum of the values in the table for
the selected field.
◦ Average: The average of the values in the
table for the selected field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1731


<!-- page 1732 -->
Field

Description

◦ Min: The minimum value in the table for the
selected field.
◦ Max: The maximum value in the table for
the selected field.
Aggregate field

The field on the weight table that is used
for the aggregate calculation. This field is
available when any aggregate other than
Count is selected.

Apply filter (Weight Table)

Check box to display the condition builder.
If the condition must be met before the
application can allocate expenses using the
weight table.

Intermediary Segment section of the Weighted Metric form
Field

Description

Enforce intermediary segment

Option to enforce intermediary segment.

Intermediary Segment

Segment that is identified as intermediary
segment, which is not included in cost model
hierarchy.

Intermediary segment reference to weight
table

Relationship of the intermediary segment
with theAllocate to segment, defined and
referenced in the weight table.

Aggregate

Type of aggregation performed on the
records in the weight table.

Relationship section of the Weighted Metric form
Field

Description

Enforce relationship

Limits the segments that this metric allocates
to based on an existing relation to another
segment.

Allocate from

The table from which allocations are
processed. This field is available when the
Enforce relationship check box is selected.
You can access fields in related tables and
the reference to the chain of field names
separated by dots can go on up to any
number.

Relation type

The type of relationship between the
Allocate from table and the Allocate to table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1732


<!-- page 1733 -->
Field

Description

◦ Allocate from: A reference from the
Allocate from table to the Allocate to table.
◦ Allocate to: A reference from the Allocate
to table to the Allocate from table.
◦ Intermediary: A reference from an
intermediary table to both the Allocate
from and Allocate to tables.
Relationship field from

The field on the Allocate from table to
allocate from. This field is available when
the Enforce relationship check box and the
Allocate from relationship type are selected.

Relationship field to

The field on the Allocate to table to allocate
from. This field is available when the Enforce
relationship check box and the Allocate to
relationship type are selected.

Apply filter (Relationship)

Condition must be met before the application
can do one of the following actions:
◦ Allocate expenses using the Allocate
from table if you select the Allocate from
relationship type
◦ Allocate expenses using the Intermediary
table if you select the Intermediary
relationship type
Then select this check box to display the
condition builder.

Intermediary table

Table that is used between the Allocate
from and Allocate to tables to connect them.
This field is available when the Enforce
relationship check box and the Intermediary
relationship type are selected.

Intermediary table field from

The field on the intermediate table that
maps to the Allocate from table. This field
is available when the Enforce relationship
check box and the Intermediary relationship
type are selected.
You can access fields in related tables and
the reference to the chain of field names
separated by dots can go on up to any
number.

Intermediary table field to

Field on the intermediate table that maps to
the Allocate to table. This field is available
when the Enforce relationship check box
and the Intermediary relationship type are
selected.
You can access fields in related tables and
the reference to the chain of field names

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1733


<!-- page 1734 -->
Field

Description

separated by dots can go on up to any
number.
Allocate from table condition filter

Criteria that the records in the Allocate from
table must meet for this metric to apply.
These fields are available when the Enforce
relationship check box, the Allocate from
relationship type, and Apply filter check box
are selected.

Intermediate table condition filter

The criteria that the records in the
intermediate table must meet for this
metric to apply. This field is available when
the Enforce relationship check box, the
Intermediary relationship type, and Apply
filter check box are selected.

Preview weight map

Weight Map is generated for the selected
metric and the fiscal period. The preview lists
the weight map review with total number of
weights and the last generated date and time.

Fiscal period choice list

The fiscal period from the fiscal calendar.

Segment choice list

The account in the rollup segment.

Total Weight Table section of the Weighted Metric form
Field

Description

Enforce allocation from total weight

Check box to enable enforce allocation from
total weight.

Total weight table

Table from which the actual consumption
values are retrieved.

Related Links section of the Weighted Metric form
Field

Description

View standard form

Switches between the advanced form and
the standard form.

Related Lists section of the Weighted Metric form
Field

Description

Cost Allocation Methods

The allocation methods that this rule uses to
break down expenses.

Cost Allocations

The allocation lines that this rule created.

Note: You cannot delete a rule that is referenced by a locked allocation line.
Enforce allocation from total weight is an allocation metric based on capacity. As an IT
financial analyst, you can also allocate cost where the total capacity of a service is greater than
the sum of what is consumed. To enable this option, you must select the Enforce allocation
from total weight check box in the Total weight table section. Select a total weight table to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1734


<!-- page 1735 -->
calculate the total weight of metric based on the total consumption capacity. The weighted
metric allocates cost based on the total number of available units of consumption.

Note: You can either enforce allocation relationship or enforce allocation from total
weight. Enforce total weight if the total allocation is greater than the sum of the consumed
values. Whereas, enforce allocation relationship works when the sum of all consumption
values (of all individual entities) in the weight table adds up to a total capacity of 100%.
For more information, see Total weight support for allocations using weighted metric.
Intermediary Segment option: Use this option when you have a segment with large number
of accounts that add to numerous allocation lines. Nevertheless, the intermediary segment is
still considered for the amount to rollup through it for proper allocation. However, the segment
identified as intermediary is not included in the hierarchy of cost model and its allocation lines
are not generated.
The option to identify a segment as an intermediary segment is just to exclude the segment
in the generation of multiple cost lines. However, you should create a metric based on the
relationship between the intermediary segment and the Allocate to segment to include the
segment for accurate amount rollup. Based on the relationship the allocation engine creates
the weight, and based on the weight the allocation lines are generated for the intermediary
segment.
You must create a cost allocation metric to process the weight of the intermediary segment
that is referenced in the weight table. Two sets of weight maps are generated, one for the
intermediary segment and another for the Allocate to segment.
3. Click Submit.

What to do next

To preview the weight map that you created, click the Preview Weight Map button.
Preview weight map - Legacy
You can preview a weight map to give you visibility of the generated metric weight map
because it displays the accounts for the selected metric and the selected fiscal period with the
percentage split for each account.

Before you begin

Role required: cost_transparency_admin or cost_transparency_analyst

About this task

The Allocation workbench displays the expense summary for all months, quarters, or periods
when you run the allocation and the window becomes cluttered with data for all quarters. To
overcome the UI page clutter, you can preview the weight map in its own page.

Procedure
1. Navigate to All > Financial Modeling > Consumption Metrics > Preview Weight Maps.
a. Alternatively, you can navigate to Financial Modeling > Consumption Metrics > All Metrics.
b. Click a cost allocation metric to open the Weighted Metric Builder.
c. Click Preview Weight Map .
2. Select a metric from the Metric list in the left pane.
3. Select a fiscal periodfrom the Fiscal Period list.
4. Click Generate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1735


<!-- page 1736 -->
The right pane displays the generated date and time details, the accounts, their respective
weights, the total weight, and the percentage split. You can regenerate the weight map to
preview each month or a quarter of a fiscal period.
5. Click Generate or Generate All based on the metric that you have selected:
◦ Click Generate to roll up an account of a segment to a segment above in the hierarchy.
Based on the metric that you have selected the amount is divided between the accounts of
that rolled up segment.
◦ The Generate All button is enabled if you select a metric that defines rolling up of all the
accounts individually in a segment using the Enforce Relationships option in the metric
definition to one or more accounts of a segment above in the hierarchy.
Create scripted allocation metrics - Legacy
You can create scripted metrics and methods using the standard Cost Allocation Metric form.

Before you begin

Role required: cost_transparency_admin

About this task

You can create weighted metrics in scripted form and scripted methods Allocation metrics Legacy for more information.

Procedure
1. Navigate to All > Financial Modeling > Consumption Metrics > Create Scripted Weighted
Metric.
2. Click New.
3. Select Scripted weighted metric or Scripted method in the Type field.
4. Fill out the fields on the form as appropriate (see table).
5. Click Submit.
Example scripted metric

Scripted metric form fields
Field

Description

Name

Descriptive name of the metric.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1736


<!-- page 1737 -->
Field

Description

Allocation The group associated with this metric. On the Cost Allocation Method form, the
group
selection of the group limits the selection of the metric to only those metrics that
use the group.
System
metric

If this metric was created by the application in the workbench.

Type

The type of script. Select Scripted method or Scripted weighted metric to make
the Script field appear.

Script

The script to calculate the allocation.

Related List section of the Scripted metric form
Field

Description

Cost Allocation Methods

Methods that use the metric. You can add
methods to the related list or navigate to the
method form and select the metric you just
created.

Note: You cannot delete a rule that is referenced by a locked allocation line.
Financial Charging - Legacy
Financial charging is an integral part of financial management that helps in reporting the financial
aspects of a business service to various stakeholders in the organization that consume the
service such as the business unit heads, department heads, or account heads.

Note: This feature is available only when you own an ITBM Analyst license.
Watch this four-minute video to learn more about Financial Charging in ServiceNow. This video
covers financial charging, the users involved in the financial charging process, showback
statements, and financial modeling.
A business service is a set of interconnected applications and hosts configured to offer service
either within or to an organization. Track the consumed business services and products offered
within your organization and show the cost of the services as showback statements. The
showback statement reports the services consumed in terms of their cost, for reporting to the
business unit heads.
The showback statements provide consumption visibility and improve automation of the services
offered. These statements also help the service owners handling the services to view the
consumption data and formulate budgeting.
Showback statement reports the services consumed through the statement items that are
records of the service consumption details and the cost of the service. These record details are
stated as the statement items and are retrieved from various sources such as:
• Consumption table: The cost and the consumption volumes can be from any platform table
that contains the consumption data.
• Cost model: The source of the cost data is the cost allocation lines from the Financial
Modeling application.
• Service catalog: The cost and consumption volumes can be based on fulfilled catalog
requests for a particular service catalog category or catalog items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1737


<!-- page 1738 -->
What to do next
Assign roles to your users. Set up the Financial Charging application to use the showback
feature.
Financial charging application setup - Legacy
There are several components of the Financial Charging application that you must set up before
you can use the showback feature for a business service.

Important:
This feature is available only when you own an ITBM Analyst license.

What to do next
As a first step you must define a service . Based on the service that you offer and the utilization
of the service, the showback statement is generated for a fiscal period, as a report, for the
business unit that utilized the service.
To measure the business services utilized and the resources used in terms of cost, the showback
statement uses statement items. Statement items capture the source from where the cost details
must be retrieved. Determine the type of the statement item, which in turn determines the source
from where the cost data is retrieved.
Determine the statement item type
Determine the type of statement item as a first step to create a statement item. Or, you must
determine the source from where the consumption or usage details and the cost of consumption
data is retrieved.

Before you begin

Role required: service_charging_analyst

Important:
This feature is available only when you own an ITBM Analyst license.

About this task
Consumption Statement Item
The cost of the consumption statement item is generated every fiscal period from
any platform table that contains the consumption data. Cost information could also
come from the same table or can be applied from a rate card.
Cost Model Statement Item
The cost model statement item retrieves the allocated unit cost data from the
Financial Modeling application.
Service Catalog Statement Item
You can derive the cost, consumption volumes, and consumption details of an item
from the Requested Item (sc_req_item) table in service catalog.

Procedure
1. Navigate to All > Financial Charging > Administration > Statement Items.
2. To create a statement item, click New, or click the name of an existing statement item that you
want to edit in the Statement Items list.
3. Select the type of statement item you want to create.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1738


<!-- page 1739 -->
What to do next

Define a statement item depending on the source where your consumption data is available.
What type of Statement Item form
Field

Description

Consumption Statement Item

Link to create a consumption statement item.

Cost Model Statement Item

Link to create a cost model statement item.

Service Catalog Statement Item

Link to create a service catalog statement
item.

Define a consumption statement item
If your cost and business service usage details are sourced from an external consumption table,
then you can source the consumption details of the consumption table for the statement item.

Before you begin

Role required: service_charging_analyst

Important:
This feature is available only when you own an ITBM Analyst license.

About this task

Business service consumption details can come from a table belonging to one or other platform
applications or from an external consumption table, in which case the consumption details
can be loaded on to the platform table. The consumption table gives you the daily or monthly
consumption details of a business service. Based on the usage, the cost of the service is
computed using the unit cost and quantity consumed for a fiscal period.
For example, the monthly utility bill for household power consumption has details of the
appliances that you run and the power consumed in Watts, calculated monthly and annually.
Based on the unit price and the consumption quantity, the bill amount is generated.

Procedure
1. Navigate to All > Financial Charging > Administration > Statement Items.
2. In the Statement Items list, click New.
3. In the What type of Statement Item? query form, click the Consumption Statement Item link.
4. On the form, fill in the fields.
Consumption Statement Item form
Field

Description

Name

Name of the consumption statement item.

Consumption table

Source table that has the consumption data,
which is configured as the statement item.

Consumption item

The item for which the consumption data is
held in the consumption table.

Consumed date

The column in the consumption table that
has the consumed date details.

Active

Check box to make the statement item active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1739


<!-- page 1740 -->
Field

Description

Business Service

Business service that uses the statement
item as a configured item.
You can also define a service

.

Fiscal unit

Fiscal unit should be a month, quarter, or a
period based on the fiscal calendar for which
the consumption data is generated.

Aggregate

Consumption table is queried based on the
aggregate function you select.

Description

Short description of the statement item.

Consumption table filter

Filter to display the items that meet your
conditions.

Amount section of the Consumption Statement Item form
Field

Description

Price basis

Select the criterion to determine the price.
◦ Amount retrieves the data from the
selected Amount field of the consumption
table.
◦ Ratecard class is based on the pricing
policy that is set for the statement item.
◦ Unit price is the cost per unit of the item.

Amount field

Amount data is taken from the selected field if
the Price basis is amount.

Ratecard class

Rate card class.

Consumption table ratecard mapping field

Amount is derived based on the consumption
table ratecard mapped field and the rate card
item mapping field, if you select Ratecard
class in the Price basis field.

Rate Card Item mapping field

Amount is derived based on the rate card
item mapping field and consumption table
ratecard mapping field, if you select Ratecard
class in the Price basis field.

Service Charging section of the Consumption Statement Item form
Field

Description

Service owner

User who owns the business service and
views the consumption statement items.
As a service owner, you can manage the
showback items. You can view the unit cost,
cost recovery based on consumption, and
set unit price, discount, or surcharge to the
showback item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1740


<!-- page 1741 -->
Field

Description

Pricing policy

Set the pricing policy for the statement item
at the statement item level, statement item
breakdown level, or at the item level.
If you set the pricing policy at the statement
item level, the price adjustment that you
do as a service owner reflects the adjusted
price at the statement item level. Similarly, for
the statement item breakdown and the item
levels, the price adjustment is reflected at the
respective levels.

Pricing policy method

Set the price adjustment based on a
percentage of the average unit cost of the
catalog item. Or, override the average unit
cost by setting a price per unit for the item.

Note: If the pricing policy is at the
item level, then you can opt for the
percentage-based pricing policy
method.

5. Click Submit.
6. To generate the charge lines for the consumption statement item, click Generate Charge Lines
t.
a. To generate the charge lines, enter the fiscal period in the Generate charge lines dialog box.
b. Click OK.
7. To save the updated record, click Update.
8. To delete a record, click Delete.

What to do next

To create breakdown records for the consumption statement item, click New in the Consumption
Breakdowns related list.
Create consumption breakdowns
Create consumption breakdown records to make your showback report more detailed by
reporting the expense line accounts that comprise the consumption statement item.

Before you begin

Role required: service_charging_analyst

Important:
This feature is available only when you own an ITBM Analyst license.

About this task

For example, a storage service invoice can provide the consumption details of individual items
such as Tier I, Tier II, and Tier III storage. Each of these items provides the associated cost
calculated that is based on the unit cost of each item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1741


<!-- page 1742 -->
Procedure
1. Click New in the Consumption Breakdowns related list to create breakdown records for the
consumption statement item.
2. Fill in the form fields.
Consumption Breakdown form
Field

Description

Name

Name of the consumption breakdown.

Table

Defaults to the table from where the data is
retrieved.

Condition

Filters data that fulfill the condition from the
table.

3. Click Submit to save the record.
Define a cost model statement item
The cost of the item or service is derived from the allocation lines of financial modeling
application. The statement item captures the cost from the segment accounts, specific accounts
in a segment, or buckets in an account, which gives you the cost of the statement item for a fiscal
period.

Before you begin

Role required: service_charging_analyst

Important:
This feature is available only when you own an ITBM Analyst license.

Procedure
1. Navigate to All > Financial Charging > Administration > Statement Items.
2. Click New in the Statement Items list.
3. Click Cost Model Statement Item link in the What type of Statement Item? query form.
4. Fill in the form fields.
Cost Model Statement Item form
Field

Description

Name

Name of the cost model statement item.

Cost model

The cost model used in the Financial
Modeling application from which the cost
data are retrieved for the statement item.

Unit cost metric

Calculates unit cost based on the weighted
metric.

Segment

Segment for which cost is to be reported.

Active

Enable the check box to make the cost model
statement item active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1742


<!-- page 1743 -->
Field

Description

Business service

Business service that uses the statement
item as a configured item.
You can also define a service

Fiscal unit

.

Defines the fiscal unit to be a month, quarter,
or a period.
Defaults based on the selected cost model.

Transactional table

Name of the transactional table that the
segment refers to.
Defaults based on the selected segment.

Description

Short description of the statement item.

Filter Criteria section of the Cost Model Statement Item form
Field

Description

Segment accounts filter

Filter conditions to report on the segment
accounts that meet your conditions.

Buckets Filter

Filter condition to the buckets that allocate
expenses to the accounts in the segment.

Sub Segment section of the Cost Model Statement Item form
Field

Description

Sub Segment

Secondary segment for the segment you
selected.
Sub segments are segments under the
selected segment in the cost model
hierarchy.

Transactional table

Name of the transactional table that the sub
segment refers to.
Defaults based on the selected sub segment.

Sub Accounts Filter

Filter conditions to report on the segment
accounts that meet your conditions.

Service Charging section of the Cost Model Statement Item form
Field

Description

Service owner

User who owns the service and who views
the consumption statement items.
As a service charging owner, you can manage
the showback items. You can view the unit
cost, cost recovery based on consumption,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1743


<!-- page 1744 -->
Field

Description

and set unit price, discount, or surcharge to
the showback item.
Pricing policy

Pricing policy can be set for the statement
item at any of the following levels:
◦ Statement item level: The price adjustment
that you do in the console reflects at the
statement item level.
◦ Statement item breakdown level: Reflects
the adjusted price at the statement item
breakdown level.
◦ Account level: The adjusted price is
reflected at the account level in the
expense lines.

Pricing policy method

Price adjustment based on a percentage of
the average unit cost of the segment account.
Or, overriding the average unit cost by unit
price pricing policy method.

Note: If the pricing policy is at account
level, then you can opt for percentage
based pricing policy method.

5. Click Submit.
6. To generate charge lines for the cost model statement item, click Generate Charge Lines.
a. To generate the charge lines, enter the fiscal period in the Generate charge lines dialog box.
b. Click OK.
The statement lines generated for showback are extension of the expense lines.
7. To save the updated record, click Update.
8. To delete a record, click Delete.

What to do next

To create breakdown records for the cost model statement item, click New in the Cost Model
Breakdowns related list.
Create cost model breakdowns
Create breakdowns for the cost model statement item providing more clarity by reporting the
components that constitute the cost model statement item and the cost associated with each of
these components.

Before you begin

Role required: service_charging_analyst

Important:
This feature is available only when you own an ITBM Analyst license.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1744


<!-- page 1745 -->
About this task

For example, Electronic Messaging statement item can provide the breakdown details of its
component services such as Data Network and Storage. Each of these items provides the
associated cost calculated by the set unit cost of each item.

Procedure
1. Click New in the Cost Model Breakdowns related list to create breakdown records for the cost
model statement item that you created.
2. On the form, fill in the fields.
Cost Model Breakdown form
Field

Description

Name

Name of the cost model breakdown.

Statement item

Header under which the consumption details
of the business service appear.

Table

Name of the transactional table the segment
refers to.

Unit cost metric

Allocation metric that is used to calculate the
unit cost.

Segment accounts filter

Filter applied to data in the segment
accounts.

Buckets Filter

Filter applied to buckets that allocate
expenses to the segment accounts.

Sub Segment

Segments added as sub segments to allocate
expenses to records in the sub segment.

Sub Accounts Filter

Filter applied to data in accounts that fulfill
the condition.

3. Click Submit.
Define a service catalog statement item
A business service can be represented by a service catalog category or a catalog item. When a
service request from the service catalog is fulfilled, the price listed for the service in the service
catalog item is captured as the cost of the statement item for a fiscal period.

Before you begin

Role required: service_charging_analyst

Important:
This feature is available only when you own an ITBM Analyst license.

Procedure
1. Navigate to All > Financial Charging > Administration > Statement Items.
2. Click New.
3. Click Service Catalog Statement Item.
4. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1745


<!-- page 1746 -->
Service Catalog Statement Item form
Field

Description

Name

Name of the service catalog statement item.

Business Service

Business service that uses the statement
item as a configured item.
You can create a service

.

Catalog

Catalog on which the statement item should
be reported. Shows the list of catalogs in the
system.

Category

Catalog items under the selected Category
that are used for reporting the consumption
details.

Catalog item

Catalog items under the selected Catalog
and Category for which the consumption is
reported.

Active

Check box to make the service catalog
statement item active.

Fiscal Unit

Fiscal unit should be a month, quarter, or a
period based on the fiscal calendar for which
the statement item is generated.

Description

Short description of the statement item.

Service Charging section of the Service Catalog Statement Item form
Field

Description

Service owner

User who owns the business service and who
views the service catalog statement items.
A service owner can manage the showback
items, view the unit cost, cost recovery based
on consumption, and set unit price, discount,
or surcharge to the showback item.

Pricing policy

Pricing policy can be for the statement item at
any of the following levels:
◦ Statement item level: The adjusted price
reflects at the statement item level.
◦ Statement item breakdown level: The
adjusted price reflects at the statement
item breakdown level.
◦ Catalog item level: The adjusted price
reflects at the individual catalog item level
in the expense lines.

Pricing policy method

Price adjustment based on a percentage of
the average unit cost of the catalog item. Or,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1746


<!-- page 1747 -->
Field

Description

overriding the average unit cost by unit price
pricing policy method.

Note: If the pricing policy is at
catalog item level, then you can opt
for percentage-based pricing policy
method.

5. Click Submit.
6. To generate charge lines for the service catalog statement item, click Generate Charge Lines.
a. To generate the charge lines, enter the fiscal period.

Note:
Charge lines for a service catalog statement item are generated based
on the preconfigured Opened (system property value is opened_at) date
field in the Requested Items table. The dates of the requested items that
fall within the fiscal period are considered for generating the charge lines.
However, as a service charging analyst you can configure the system property
(com.snc.showback.catalog.consumed_date) value to a date field of your choice in the
Requested Items (sc_req_item) table.
b. Click OK.
7. To save the updated record, click Update.
8. To delete a record, click Delete.

What to do next

To create breakdown records for the service catalog statement item, click New in the Service
Catalog Breakdowns related list.
Create service catalog breakdowns
Create service catalog breakdowns by fragmenting the service catalog category of the business
service to its catalog item components into a more detailed level.

Before you begin

Role required: service_charging_analyst

Important:
This feature is available only when you own an ITBM Analyst license.

About this task

For example, the IT Services Consumables statement item can provide the breakdown details
of its component consumables such as Tablets and Laptops. Each of these items can be further
broken down to more details. Tablets can be Google nexus, iPads, and so on with the associated
price used for each unit of the item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1747


<!-- page 1748 -->
Procedure
1. Click New in the Service Catalog Breakdowns related list to create breakdown records for the
service catalog statement item that you have created.
2. Fill in the form fields.
Service Catalog Breakdown form
Field

Description

Name

Descriptive name of the service catalog
breakdown.

Statement item

Defaults to the type of the statement item.

Category

Catalog items under the selected category
are used for reporting the consumption
details.

Catalog item

Item under the selected Catalog and
Category for which the consumption is
reported.

3. Click Submit.
Drill down within a statement item
You can drill down within a statement item to visualize a subset of its data.

Before you begin

Role required: service_charging_analyst

Important:
This feature is available only when you own an ITBM Analyst license.

About this task

Drill down within a statement item to see the entity or the key field that has the data retrieved
from the source table. You can also see the basis on which the mapping is done to the particular
field that has the relevant data to retrieve. You can also edit and change the drilldown method
and use the weighted method. In such a case, the system uses the weighted metric to retrieve
data from the source table.

Procedure
1. Navigate to All > Financial Charging > Administration > Statement Item Drilldowns.
2. Click New to create a statement item or click the name of an existing statement item drilldown
that you want to edit.
3. Click the type of statement item that you want to drill down.
4. Based on the type of statement item drilldown that you select, fill in the relevant form fields.
Statement Item Drilldown form
Field

Description

Name

Name of the statement item drilldown.

Drilldown basis

Lower level access of the item based on the
mapped field or the weighted metric method.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1748


<!-- page 1749 -->
Field

Description

For more information, see Allocation metrics.
Table

Source table that has the statement item
information.

Type

Type of the statement item, determined
based on the source from where the
information is retrieved.
You cannot edit the field as you have already
selected the type of statement item drilldown
that you want to perform.

Mapping field

Maps to the field in the table which has the
drilldown data.

Weighted Metric

Drilldown on calculations based on an
aggregate value from a segment.

Cost model

Cost model for which the drilldown can be
applied.

5. Click Submit to enter a record or Update if you have edited an existing record.

What to do next

After you define the statement items, associate the statement items to the showback statements.
You can use the showback statement to report consumed services to the business unit head,
which displays the detailed service charge lines that the unit has utilized as a part of the
business service. For example, Email service is a business service. When a business unit uses
the email service, then the service charges for consuming the email services are reported as a
showback statement to the business unit head or the department head.
Define, generate, and publish a showback statement
Showback tells the consumers what it costs a service organization such as IT to deliver services
to them. Defining a showback statement helps to capture the reporting entity (for example, a
business unit) to whom you want the showback statement to be reported to.

Before you begin

Role required: service_charging_analyst

Important:
This feature is available only when you own an ITBM Analyst license.

About this task

The showback statement is a collection of charges representing the statement items (the
services consumed by the business unit) and is generated for a fiscal period.
Showback statements provide the business unit a visibility of the services consumed and the
charges associated with these services. It also brings an awareness and helps them to be
judicious in using the business services and conscious of the cost factor associated with it.
You can create multiple showback statements based on the same Statement Item by drilling
down to its lowest level. The showback statements can be for different reporting entities. For
example, you can use a drilldown entity that has the source data on a Statement Item to create
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1749


<!-- page 1750 -->
showback statements for different reporting entities such as a Cost Center, Business Unit, or
Department.

Procedure
1. Navigate to All > Financial Charging > Administration > Showback Statement Definition.
2. Click New to create a showback statement definition or click the name of an existing
showback statement definition that you want to edit.
3. Fill in the form fields.
Showback Statement Definition form
Field

Description

Name

Name of the showback statement definition.

Description

Description for the showback statement
definition.

Reporting entity

Report generated to show the entity of its
consumption details.

Reporting user field

Reporting entity head who sees the report.

Frequency

Fiscal frequency for which the report is
generated.

Reporting user group field

User group who can see the report.
All the members of the user group can see
the report.

4. Click Submit to save the record or Update if you have edited an existing record.
5. Click Generate to generate the showback statement for the selected fiscal period.
The generated report is made available for viewing purpose to the reporting entity (business
unit). The showback statement gives the information that the reporting entity has used the
services mentioned in the statement lines.
As a financial analyst, you can generate the showback statement and publish it so that the
showback user can view it.
As a designated showback user (normally a business unit owner or a business unit finance
lead), you can view the published showback statements assigned to you or your unit. You can
review and accept them or raise a dispute if there is discrepancy and resolve it with the service
owner or service charging analyst through the task workflow.
6. Click Publish.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1750


<!-- page 1751 -->
a. Select the fiscal period in the Fiscal Period choice list of the Publish showback statement
pop-up that opens up.
b. Click OK.

Note:
The fiscal period for which you have generated and not yet published the showback
statement is listed in the choice list. By publishing, the showback statement for the
said fiscal period is available and the showback users can view it in My Showback
Statements menu in the application navigator.
7. Click Delete to delete the record.
Create statement lines for the Showback Statement by clicking the Showback Statement Line
Definitions New button.

What to do next

Monitor the showback statements in the service pricing console.
Service charging - Legacy
As a service owner, you can use the Service Pricing Console to monitor the consumption of the
services, the status of each statement item, and can set the pricing for the statement items.

Important: This feature is available only when you own an ITBM Analyst license.
As a service charging analyst, you can analyze and research on the economic trends and
conditions of the business and make necessary charging recommendations for the business
service.
Monitor service charges in the service pricing console
As a service owner use the service pricing console to generate service charge lines, view the
service charge lines, and set pricing policy. Setting the pricing policy generates the rate card,
which captures the set price, surcharge or discount details.

Before you begin

Role required: service_charging_owner

Important:
This feature is available only when you own an ITBM Analyst license.

Procedure
1. Navigate to All > Financial Charging > Service Charging > Console.
Open the console to monitor all the details related to the statement items in the following
panes:
My Statement Items: A list of all the statement items owned by the service owner appear on
the left pane.
2. Click the statement item on the left pane, the details of which you want to view.
3. Click the Fiscal Period choice list to select a fiscal period.
4. Click Generate Lines to generate charge lines for the statement item for the specified fiscal
period.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1751


<!-- page 1752 -->
The Generate Charge Lines pop-up opens up.

Note:
You can view the list of service charge lines generated based on the statement item by
navigating to Financial Charging > Service Charging > Service Charge Lines. These
service charge lines are records that you can monitor on the console.
5. Update the fiscal period for the period that you want to generate the charge lines.
6. Click Generate.
A message appears confirming that the Charge lines generation job has been scheduled
successfully.
The statement item details pane on the right displays all the details of the statement item.
Overview tab:
◦ Pricing, cost, and charges: The left pane displays the details of the pricing policy method
and the pricing policy adopted for the statement item. It also shows the total cost of the
statement item and the total charges that has been charged for the statement item.
▪ Costs are the actual expenses by service. It is the amount that you incur in buying a
product or a service.
▪ Price is the amount that is determined for a product or a service based on cost factors
involved in production, marketing, selling, and so on.
▪ Charge is the amount of money you are charged by the business service for the services
or goods they provided.
◦ Cost trend: The spline chart shows the trend of the cost against the price over the different
fiscal periods.
◦ Charge lines: The service charge lines are generated for statement item. Each service
charge line lists the name of the product or the service used and the associated unit cost of
the item computed with the quantity, giving you the total cost.
Charge line column heads
Field

Description

Name

Name of the statement item.

Average unit cost

Average cost of one unit of the statement
item.

Quantity

Number of items at the statement item and
at the statement item breakdown level.

Total cost

Unit Cost * Quantity.

Price Adjustment (%)

Price adjustment is based on the pricing
policy method that you defined in the
statement item definition form.
Adjust the price either on percentage or unit
price by incrementing or decrementing a
percentage of the Average Unit Cost. The
adjusted price reflects as the Total Charges.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1752


<!-- page 1753 -->
Field

Description

Unit Price

Sets a predefined unit rate for a service. It is
determined for a quantity of service that is
delivered or the cost of a single statement
item.

Total Charges

Total amount of money charged for each
business service, which is the adjusted
price of the average unit cost.

7. Click Set Pricing Policy button.
You can see more details of the statement item in the right pane of the console that opens up.
8. Click the statement item level or the statement item line level price adjustment box (based on
the pricing policy that you have set) to adjust the price and arrive at the total charges.
9. Click Set Price.
The price adjustment that you made reflects in the Total Charges field.
10. Click the Drilldown tab to view the drilldown details of the statement items at the drilldown
entity level.
You can view the statement item breakdown or compare it with the other charge line item
breakdowns to get better visibility on cost by breakdown.
Drilldown tab:
◦ Drilldown: Click Drilldown field to view the detailed data of statement item’s cost by
breakdown for each drilldown entity on a chart.
◦ Charge line item Breakdown: Click Charge line item Breakdown field to view the charge
line item breakdown by cost for each statement item breakdown.
◦ Charge line item Breakdown accounts: Click Charge line item Breakdown accounts field to
view the accounts for each service charge line of the statement item breakdown.

What to do next

The charges that you define are attached as a rate card to a statement item. As a service
charging analyst and service charging owner, you can also define service charge price rate
cards.
Create ratecards to fix price for your business service
Create a ratecard that lists prices for your business service or business service components. As
a service owner, you can create a ratecard for a statement item, which represents the business
service that you own. The ratecard is based on the pricing policy method attached to the
statement item for a fiscal period.

Before you begin

Role required: service_charging_analyst, service_charging_owner

Important:
This feature is available only when you own an ITBM Analyst license.

About this task

The ratecard for a fiscal period defaults to the next fiscal period if you do not set a new pricing
policy for the statement item before the charges of the next fiscal period are published.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1753


<!-- page 1754 -->
Procedure
1. Navigate to All > Financial Charging > Service Charging > Service Charge Rate Cards.
2. Click New to create a service charge price rate card or click a record that you want to edit.
3. Fill in the form fields.
Service Charge Price Ratecards form
Field

Description

Statement item

Select the statement item for which you want
to create a rate card.

Item table name

◦ If it is a service catalog statement item,
then the item table name is catalog item.
◦ If it is a cost model statement item, then
the item table name is the transaction table
name of the segment.
◦ If it is a consumption statement item, then
the item table name is the consumption
table.

Service charging type

Defaults from the statement item. It can be
percentage based or unit price based.

Fiscal period

Period for which the rate card is valid.

Statement item breakdown

The breakdown line details of the statement
item.

Item name

Refers to a record in the item table.

Percentage

A percentage of the average unit cost, which
you can set at the statement item level,
statement item breakdown level, or item
level of the consumption based statement
item or catalog based statement item; or, at
the account level of the cost model based
statement item.

Unit price

Set the unit price only for the item level
pricing policy. The unit price represents the
price displayed to the business users.

Short description

Meaningful short description for the rate
card.

4. Click Submit or Update.

What to do next

As a service charging analyst, you can view all the showback statements that are generated.
The showback users can view the showback statements only when you publish the showback
statements that you have generated.
Showback statements - Legacy
Showback, an information technology strategy of financial charging, tracks the costs of IT
hardware, software, cloud services, or any shared services that are used by a business unit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1754


<!-- page 1755 -->
Important:
This feature is available only when you own an ITBM Analyst license.
The costs are then consolidated and presented to the business unit, as a reporting invoice
(showback statements), to show the quantum of services and products they have consumed
over a fiscal period.
The HR business unit of an organization might request Attendance Management System
business application to manage the attendance of their employees. The process of procuring
the license, installing, and maintaining this application on twenty computers of the HR staff who
process the attendance in the HR department incurs a cost. The IT department tracks this cost
and reports the expense in the form of a showback statement to the HR business unit head.
View all showback statements
As a service charging analyst, you can view the list of all showback statements that are
generated. You can determine the reporting entity or the user group that the report is intended
for.

Before you begin

Role required: service_charging_analyst

About this task

Generate the showback statements, redetermine the total cost of the statement expense lines
for the fiscal period, and publish the statements for the showback user to see. You can also
create a showback statement.

Procedure
1. Navigate to All > Financial Charging > Showback > All Showback Statements.
2. To create a showback statement, Click New.
3. To edit an existing showback statement record, click New.
4. On the form, fill in the fields.
Showback Statement form
Field

Description

Reporting entity

Business entity that availed the business
service.

Fiscal period

Period for which the showback statement is
generated.

Assigned to

Business unit head or department head who
would see the showback statement.

State

Status of the showback statement.
◦ Draft: The report is in a draft stage.
◦ Published: The report has been published,
which means the reporting user and the
users belonging to the reporting user group
with the showback user role can see the
report.
◦ Disputed: The showback user has seen the
report and has raised a dispute as the user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1755


<!-- page 1756 -->
Field

Description

has a disagreement about the contents of
the statement expense line.
◦ Closed: When the showback user accepts
the statement item, the statement item
moves to the Closed state.
Total cost

The total cost of all the statement expense
lines.

Assignment group

Group that the statement item is assigned to.

Short description

Meaningful short description for the
showback statement.

Additional comments (User visible)

Comments or notes in complete sentences
and paragraphs because users view these
comments. The user gets a copy of all
information saved in the field.

Work notes

Work notes for internal communication only.

5. To save the showback statement, click Submit.
6. To save the edited record, click Update.
7. To acknowledge the expenses reported in the showback statement, click Accept.
8. To delete the record, click Delete.

What to do next

Add statement expense lines and statement expense line details to the showback statement
using the Showback Statement related list.

Add statement expense line
At the statement item breakdown level, add the number of units consumed, unit rate of the item,
and the total cost of all items. Just as an invoice has printed line items, detailing the expense
list, the statement item also has the expense details reported as statement expense lines in the
showback statement.

Before you begin

Role required: service_charging_analyst

Procedure
1. Click New in the Statement Expense Lines related list.
2. On the form, fill in the form fields.
Statement Expense Line form
Field

Description

Showback statement

Defaults to the showback statement reporting
entity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1756


<!-- page 1757 -->
Field

Description

Statement item

Select the statement item that is to be listed
as the statement expense line from the
choice list.

Volume

Number of items consumed (in units).

Cost

Calculated as Unit rate * Volume.

State

Status of the statement expense line.
◦ Pending: Showback statement is not
published, the statement expense line
is in the Pending state. (The showback
statement is in the Draft state.)
◦ Processed: The showback statement is
published, statement expense lines are in
the Processed state. (Showback statement
is in Published state.)
◦ Disputed: If the statement recipient
perceives the volume or unit rate of a
statement expense line to be incorrect,
then the recipient can raise a dispute. (If
the statement expense line is disputed, the
showback statement is also in a Disputed
state.)
◦ Accepted: The showback user accepts the
statement expense lines. (The showback
statement is Closed.)

Statement item breakdown

Select the statement item breakdown that
you want to be listed for the statement item.

Unit rate

Rate at which the reporting entity is charged
for one unit of the item.

3. Click Submit.

What to do next

Add expense line details for the statement expense line of the statement item.
Add statement expense line details
Adding expense line details is drilling down to one more level of the statement expense line. Add
the number of units consumed, the unit rate at which the item is charged, and the total amount of
the expense line at the item level, catalog item level, or account level.

Before you begin

Role required: service_charging_analyst

Procedure
1. Click the Statement Expense Line related list.
2. Click New.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1757


