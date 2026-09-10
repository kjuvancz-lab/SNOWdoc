# Zurich Strategic Portfolio Management — Project Management

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1188–1237 of 2289 | Part 2 of 2

Sections: Project Management (p1038)

---

<!-- page 1188 -->
• Project did not start on the planned start date
• Project is not complete by the planned end date

Notification regarding change of project manager
When there is a change in the manager of your project, an update is made to the Project
manager field of the project record.
• A notification including the project URL is sent to your project channel on this update.
• New project manager is added as a member of the channel.
• If no project tasks are assigned to the old project manager, this user is removed as a member
of the channel.

Notification for other updates to the project
Project's status
When an update is made to the Status field of the project, a notification including
the project URL is sent to your project channel.
RIDAC records
You receive notifications in your project channel when a new RIDAC record is added
to or an existing RIDAC record is updated in the project for the following scenarios.
With every notification, you receive a direct URL to the corresponding record.
• Risk
◦ New risk is created with the priority field set to High or Absolute
◦ Updates are made to the State or Risk status fields for an existing risk
• Issue, Decision, Action, and Change request
◦ New record is created with the priority field set to 1-Critical or 2-High
◦ Priority of an existing record is updated to 1-Critical or 2-High
Milestones
Whenever a key milestone is closed, you are notified about the closure and the user
who closed it, with a direct URL to the milestone task.
Related topics
Collaborate with your project teams using PPM Collaboration application
Archiving your project collaboration channel or team
Understand how your project Slack channel or Microsoft team is archived when your project is
moved to a closed state.

Moving the project to a closed state
When the project manager moves the project to Closed Complete, Closed Incomplete, or Closed
skipped state, the following actions are triggered:
• A notification about project closure is sent to the channel or team immediately.
• The channel or team is archived within 15 days from the day the project is moved to a closed
state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1188


<!-- page 1189 -->
This duration of 15 days helps the project members to bring any pending communication to
closure or share any pending project documentation.
Project managers can contact their administrator to update this duration of 15 days to a value
of their choice.

Deletion of a project task
When a project task is deleted, the members in the corresponding Slack channel or Microsoft
team are not removed automatically. To remove the members on deletion of a project task, you
must enable the Remove Users From Slack/Teams Channel business rule. This business rule
is created on the Project Task table and is not enabled by default. For more information, see
Business rules .

Deletion of the project channel or team
If the channel is deleted in the Slack application, or the team is deleted in the Microsoft Teams
application, the PPM Collaboration application does not handle the deletion of the project's
reference in the Entity Channel [sn_collab_common_entity_channel] table automatically. So, the
project manager cannot see the Enable Slack Collaboration or Enable MS Teams Collaboration
related link on the project form again.
If the project manager wants to create a channel or team again for this project, administrator
must manually delete the project's reference from the Entity Channel table. Then, the related link
to enable collaboration appears on the project form.
Related topics
Collaborate with your project teams using PPM Collaboration application
Virtual Agent for PPM
®

ServiceNow Virtual Agent for PPM enables project managers to get quick answers to businessrelated queries by interacting with a virtual agent through various messaging services.
Virtual Agent for PPM helps project managers view business-related information quickly in a
single step rather than having to navigate through various lists. For example, you can get the list
of all your project tasks that are overdue.
The base system provides the following predefined Virtual Agent topics (chatbot conversations):
• Project and Task status
◦ All active projects
◦ Projects with status red
◦ Projects ending next week and % complete less than 60%
◦ Overdue milestones/ key milestones
◦ Overdue tasks
◦ Delayed tasks
• Resources
◦ Resource plans with actual hours greater than allocated hours
◦ Unallocated resource plans starting next week
◦ Unallocated resource plans with requested extension
• Financials

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1189


<!-- page 1190 -->
◦ My active projects
◦ Projects with EAC greater than planned cost
◦ Projects with EAC greater than budget
• RIDAC (Risk, Issue, Decision, Action, and Request Changes)
◦ Absolute and high probability risks due this week
◦ Critical and high priority issues due this week
◦ Critical and high priority action items due this week
• Data quality
◦ Projects without business case
◦ Projects without strategy
◦ Projects without program or portfolio
A topic defines the dialog between the Virtual Agent (chat support bot) and user, which enables
you to gather information for a specific business need. For more information, see Virtual Agent .

Integration with messaging applications
You can run Virtual Agent bot conversations for PPM using third-party messaging applications
like Slack or Microsoft Teams.
Use the Virtual Agent integration app to configure the messaging apps for your instance.
For more information, see Virtual Agent integration with messaging apps

.

For more information on integrating with Slack or Microsoft Teams, see Setting up Virtual Agent
notifications .
Related topics
Install Virtual Agent for PPM
Enable Virtual Agent for PPM
PPM Virtual Agent conversation flows
Reusable PPM Virtual Agent topic blocks
Install Virtual Agent for PPM
Install Virtual Agent for PPM from the ServiceNow store.

Before you begin

Role required: admin

About this task

To install Virtual Agent for PPM, activate the following plugins:

Name

Description

PPM Standard
(com.snc.financial_planning_pmo)

Activates the PPM Standard basic plugin
for the PPM (Project Portfolio Management)
applications.

Glide Virtual Agent (com.glide.cs.chatbot)

Activates the Virtual Agent framework and
other necessary plugins.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1190


<!-- page 1191 -->
Name

Description

Virtual Agent for PPM (com.sn_ppm_va)

Activates a conversational bot platform
for providing user assistance through
conversations within a messaging interface for
PPM.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the application using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find an application, you may
have to request it from ServiceNow store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. Select Install.
4. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they will be installed, are currently installed, or
need to be installed. If there are any plugins or applications that need to be installed, you must
install them before you can install Virtual Agent for PPM.
5. Optional: If demo data is available and you want to install it, selectLoad demo data.
(Optional) Demo data comprises sample records that describe application features for
common use cases. Load demo data when you first install the application on a development or
test instance.

Important: If you don't load the demo data during installation, it's unavailable to load
later.
6. Select Install.
Related topics
Virtual Agent for PPM
Enable Virtual Agent for PPM
PPM Virtual Agent conversation flows
Reusable PPM Virtual Agent topic blocks
Enable Virtual Agent for PPM
Enable Virtual Agent for PPM to start chatting with the Virtual Agent.

Before you begin

Role required: admin, virtual_agent_admin
The base system provides predefined Virtual Agent topics (chatbot conversations). To customize
a topic, duplicate it and then edit it. See Virtual Agent Designer

Procedure
1. Navigate to All > Collaboration > Virtual Agent > Designer > Topics.
2. Select the PPM Virtual Agent card to open it.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1191


<!-- page 1192 -->
◦ To use the provided topic with no changes, select Publish.
◦ To duplicate the topic so you can customize it, select Duplicate. Enter a name for the
duplicate topic and select Save.
Related topics
PPM Virtual Agent conversation flows
Reusable PPM Virtual Agent topic blocks
PPM Virtual Agent conversation flows
Virtual Agent for PPM provides several predefined topic conversations to enable project
managers to gather information on their business-related tasks.
The following predefined topic conversations are available to view if you have the
it_project_manager role.
Project and task status
Project and task-related information like active projects, projects that are in the red
state, projects due to end in the near future, and projects with overdue tasks and
milestones. This information helps you track and plan projects per set milestones.
Resources
Resource-related information such as resource plans containing actual hours
greater than allocated hours, or unallocated resource plans that are due to start in
the coming week or have an extension requested. You can then manage resources
and act on resource plans that are not progressing as planned.
Financials
Finance-related information such as projects where the estimate at completion
amount is greater than the planned cost or projects where the estimate at
completion amount is greater than the budget amount. This information helps you
understand the financial performance of your projects.
RIDAC
RIDAC (Risks, Issues, Decisions, Actions, and Request Changes) related information
like projects with absolute or high probability risks due in the coming week, or
projects with critical or high probability issues and actions due in the current week.
This information helps you analyze and identify patterns, trends, and probable
resolution for planning future projects.
Data quality
Quality-related information like projects that do not have a business case, strategy,
program, or portfolio assigned to them. This information helps you evaluate projects
that are not aligned to any strategy, business case, program, or portfolio.
Related topics
Install Virtual Agent for PPM
Enable Virtual Agent for PPM
Reusable PPM Virtual Agent topic blocks
Reusable PPM Virtual Agent topic blocks
Create and reuse topics blocks to simplify the topic authoring and maintenance process. Topic
blocks enable you to reuse standard procedures across conversation topics.
The following predefined reusable topic blocks are available:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1192


<!-- page 1193 -->
• Project Topic for PPM VA
• Specific Project Options
• Project Data Quality Topic for PPM VA
• Project Financials Topic for PPM VA
• Resource Topic for PPM VA
• RIDAC Topic for PPM VA
To view just the reusable topic functions, access the Topics page in Virtual Agent Designer and
select the Topic Blocks tab. For detailed information, see Reusable topic blocks .
Related topics
Install Virtual Agent for PPM
Enable Virtual Agent for PPM

Project Management reference
Reference information to provide additional details about Project Management such as the
fields, user roles, tables, and properties.
Properties installed with Project Management
There are several Project properties that you can configure.
You need the PPS admin role to access the Project properties.
Navigate to Project Administration > Settings > Preferences - Project to configure the following
properties.

Property

Description

Enable firing of Business Rules on save from Planning Console.
This property will be applicable only during insert and delete of
tasks and relations.

If set to true, the project
planning console triggers
business rules.

com.snc.project.fire_brs_from_planning_console

Note: Reload the
console if you make
changes to this
property.
Default value: false

Enable move project for WIP projects
com.snc.project.move_project.wip

If set to true, this property
enables you to move the
projects which are in WIP
state.

Note: When a project
is moved, only tasks
in open and pending
state are moved and
the project takes the
rolled up dates from all
the project tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1193


<!-- page 1194 -->
Property

Description

Default value: false
Calculate ROI percentage based on a project's estimated cost
and its net value
com.snc.project.calculate_roi

If set to true, this property
calculates the return on
investment using the (net
value/estimated cost) x 100
formula. This field is only
available from the Advanced
view of the Project form.
Default value: true

Enable alter of planned date with Actual for Manual Project

If set to true, the property
recalculates the planned
com.snc.project.change_planned_date_from_actual_for_manual end date of a manual project
from actual start date and
planned duration.
Default value: false
Enable project cost rollup (estimated and actual) – updating the
cost of a project task will update the cost of its parent
com.snc.project.rollup.cost

If set to true, this property
updates the cost of a parent
project task if the cost of the
child task is updated.
Default value: false

Roll up project start date from tasks
com.snc.project.rollup_project_start_date

If set to true, the project
planned start date rolls up
from the planned start date
of the earliest task. Disable
this property if you want the
project planned start date to
remain the same despite the
start date of the earliest task.
Default value: true

Automatically close project milestone tasks when they change
to work state
com.snc.project.auto_close_milestones

If set to true, this property
closes milestones
automatically so you do not
have to close them manually.
Default value: false

Enable altering of planned date(s) for task in WIP/Closed
com.snc.project.enable_alter_of_planned_dates

If set to true, this property
enables you to change the
planned start date for tasks
even if they are in the Work
in progress state or any of
the closed states.
Default value: false

Change Resource Plan, Cost Plan and Benefit Plan Start Date
with Demand or Project Start Date change. Benefit Plan Start
Date will change only if the offset type for the plan is not None

If set to true, this property
changes the start dates for
a resource plan, cost plan,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1194


<!-- page 1195 -->
Property

Description

com.snc.project.date_change_cascade

and benefit plan when there
is a change in the project or
demand start dates.

Note: The start date
of benefit plans with
the offset type None
does not change with
the project or demand
date change.
Default value: true
Retain users & resource plan state as confirmed / allocated
when project moves
com.snc.project.date_change_cascade_persist_resource

If set to true, this property
retains the confirmed or
allocated state of a resource
plan, booked resources,
and planned daily contour
when a property is moved.
On moving the project, the
resource plan is reallocated
or reconfirmed based on the
availability of the resources
in the future time period to
which the project is moved.

Note: This property
is enabled only when
the Change Resource
Plan, Cost Plan and
Benefit Plan Start
Date with Demand
or Project Start Date
Change property has
been set to true.
Default value: true
Create project(s) on confirming demands from portfolio
workbench
com.snc.project.portfolio_workbench.confirm_to_create_project

If set to true, this property
converts all selected
demands in a portfolio to
projects.
Default value: false

List of attributes (comma-separated) that will be copied from the By default, the Copy Project
originating project task
and Copy partial project
options only copy the short
com.snc.project.copy.additional_attributes
description, planned dates,
and duration fields from
source project to the target
project. If additional columns
must be copied, they should
be declared in this property.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1195


<!-- page 1196 -->
Property

Description

Default value: blank
Default the expense type for a new project.
sn_plng_att_core.default.expense_type

When a new project is
created in the Project
Workspace, expense type
of the project is marked as
Opex.

The following project properties are available in System Property [sys_properties] table. Only a
system administrator can edit these properties.

Property

Description

Retain start on constraint on tasks after adding relations

The property keeps the Start on
selection of a task even after you
put the task in a relation to another
task, for example, FS relation.

com.snc.project.allow_start_on_relations

Default value: true
Max duration (in days) allowed for a project/project task
com.snc.project.task.max_task_duration

The property governs the max
duration of a project task or the
overall project.

Note: If your project
includes milestones, the
duration is calculated taking
holidays and weekends into
account.
Default value: 2600

Warning: Increasing the
value of the property to
more than 2600 will have an
impact on memory usage
of the platform. A very high
value causes out of memory
error, for example, if you
try to create a project or a
project task with 15000 days
duration.
Max date span into future or past from the current date for The property governs the max date
the project/project task
in future when entering the planned
dates of a project or a project task.
com.snc.project.task.check_date_span_years
Default value: 10

Warning: Increasing the
value of the property to more
than 10 will have an impact
on memory usage of the
platform. A very high value
causes out of memory error.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1196


<!-- page 1197 -->
Property

Description

Synchronize the planned and original dates when
creating or updating a project or task

If set to true, this property
synchronizes the planned and
original dates.

com.snc.project.sync_original_dates_with_planned_dates

Default value: true
Use a predefined template when generating a status
report
sn_pw.project_status_report_default_templateId

Generate the status report as read-only
sn_pw.doc_status_report_read_only

The property specifies the default
template used for generating
project status reports. You can
replace the existing default
template with your desired
template and set it as default by
updating the sys id in value field
of project status report default
template property.
The property restrict edits in the
status report. The property sets the
status report to read-only.
Default value: true

Quick start tests for PPM Standard Multicurrency
Validate that PPM Standard Multicurrency still works after you make any configuration change
such as apply an upgrade or develop an application. Copy and customize these quick start tests
to pass when using your instance-specific data.
Project currency quick start tests require activating the PPM Standard Multicurrency – ATF Tests
plugin (com.snc.ppm_multicurrency.atf).
Product currency test suite tests
Test

Description

Release version

Verify cost in project currency
on cost plan

Validate the calculation of cost Orlando
line breakdown with budget
reference rate and verify roll
up to cost plan and also for
the project in project currency.

Verify benefit in project
currency on benefit plan

Validate the calculation of
benefit line breakdown with
budget reference rate and
verify roll up to benefit plan
and also for the project in
project currency.

Orlando

Related topics
Quick start tests
Form field information for Project Management
Field information for forms used in the Project Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1197


<!-- page 1198 -->
Benefit Plan form
Learn about the fields of benefit plan form.
Benefit Plan form
Field

Description

Name

Descriptive name of the benefit plan.

Work

Project or demand to which the benefit plan belongs.

Sponsor

Sponsor for the project.

Category

Type of benefit:
• Hard: Benefits that can be measured in terms of revenue.
• Soft: Benefits that are measured in terms of value.

Sub
category

Sub-categories of hard and soft benefits.

Benefit
type

Type of benefit. Select Monetary benefits.

The selection in Category field determines the selections available in this field.

Offset type Field to indicate when the benefits start realizing. Select any of the following
options:
• None: The default value is None. When you select None, you need to manually
enter the benefit plan start and end fiscal periods.
• Milestone: After completion of a milestone.
• Start Date: At the start of the project.
• End Date: After the project ends.
If the value in the selected offset type changes, the benefit plan start date shifts
accordingly. For example, if the offset type is set to End Date and the end date of
the project changes, the benefit plan start date shifts to align with the new end
date of the project.
Milestone

Note: The field appears if you select Milestone in the Offset type field.
Project milestones to which the benefit plan belongs.

Milestone
start date

Note: The field appears if you select Milestone in the Offset type field.
Start date of the selected milestone.

Work start
date

Note: The field appears if you select Start Date in the Offset type field.
Start date of the project or demand.

Work end
date

Note: The field appears if you select End Date in the Offset type field.
End date of the project or demand.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1198


<!-- page 1199 -->
Benefit Plan form (continued)
Field

Description

Offset

Number of periods before or after the offset type when the benefit plan starts. For
example, if the offset type is selected as End Date and the offset is -2, the benefit
plan is two periods prior to the project end date. If the project end date shifts, the
benefit plan start date shifts to two periods prior to the new project due date.

Duration in The length, in periods, of the benefit plan.
periods
Start fiscal
period

Starting fiscal period. Populated based on the value in the Offset field relative to
the selected Milestone, Project or Demand start date, or Project or Demand end
date, and Duration in period values.
The field is editable if you select None in the Offset type field.
When you change the start fiscal period, the associated benefit breakdown values
also change.

End fiscal
period

Ending fiscal period. Populated based on the value in the Offset field relative to
the selected Milestone, Project or Demand start date, or Project or Demand end
date, and Duration in period values.
The field is editable if you select None in the Offset type field.
When you change the end fiscal period, the associated benefit breakdown values
also change.

Associated Non-monetary benefit that is associated to this monetary benefit plan.
benefit
Financials details
Field

Description

Entered benefit

Benefit incurred from the project or demand
specified in terms of entered currency.
If the selected currency is different from the
functional currency, the corresponding budget
reference rate is used to calculate the Total
planned benefit of the project.

Entered currency

Currency in which you want the benefit plan to
be created.

Functional currency

Currency that is obtained from the
glide.system.locale property .
For upgraded customers, if the selected
currency is different from the functional
currency configured in the Financial
Management application, the corresponding
budget reference rate is used to calculate the
Total planned benefit of the project.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1199


<!-- page 1200 -->
Financials details (continued)
Field

Description

Total planned benefit

Estimated amount of potential benefit of the
project or demand.

Benefit in functional currency

Benefit incurred from project or demand in
terms of functional currency.

Actual benefit

Actual benefit that is incurred from the project
or demand. This value is rolled up from the
Actual benefit field of all the benefit plan
breakdowns.

Recurring

Check box to indicate that the benefit is
recurring for all the fiscal periods in the benefit
plan.

Related topics
Create a monetary benefit plan for a project
Cost Plan form
Learn about the fields of cost plan form.
Cost Plan form
Field

Description

Name

Descriptive name of the cost plan.

Project/ Project or demand to which the cost plan belongs.
Demand
Start
fiscal
period

Indicates the starting fiscal period.

End
fiscal
period

Indicates the ending fiscal period.

When you change the start fiscal period, the associated cost plan breakdowns also
change. Start fiscal period also changes when you create cost plan breakdowns
earlier than the start fiscal period.

When you change the end fiscal period, the associated cost plan breakdowns also
change. End fiscal period also changes when you create cost plan breakdowns later
than the end fiscal period.

Financials section of the Cost Plan form
Field

Description

Entered currency

Currency in which you want the cost plan to be
created.
If the selected currency is different from
the functional currency, the corresponding
budget reference rate is used to calculate the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1200


<!-- page 1201 -->
Financials section of the Cost Plan form (continued)
Field

Description

total planned cost, planned capital, planned
operating of the project.
Unit cost

Cost of a single unit of the resource, which is
in terms of entered currency.

Quantity

Quantity of the resource that is required.

Recurring

Option to indicate that the cost is recurring for
each fiscal period.
Quantity x Unit cost incurred for every fiscal
period.

Cost type
Investment

Cost type definition.
Name of the investment created for the
project.
This field appears only if the
legacy Investment Funding
(com.snc.investment_funding) plugin
is activated or the Investment Funding
(sn_invst_pln) application is installed.

Source type

Funding entity to associated with the project
investment for funding.
This field appears only if the
legacy Investment Funding
(com.snc.investment_funding) plugin
is activated or the Investment Funding
(sn_invst_pln) application is installed.

Source

Funding entity value from which you request
fund.
The field is available when you select a value
in the Source type field.
This field appears only if the
legacy Investment Funding
(com.snc.investment_funding) plugin
is activated or the Investment Funding
(sn_invst_pln) application is installed.

Total planned cost

Total estimated cost of the cost plan.
If the cost is recurring, the calculation is
Quantity x Unit cost x number of fiscal
periods. If the cost is non-recurring, the
calculation is Quantity x Unit cost.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1201


<!-- page 1202 -->
Financials section of the Cost Plan form (continued)
Field

Description

Functional currency

Currency that is obtained from the
glide.system.locale property .
For upgraded customers, if the selected
currency is different from the functional
currency configured in the Financial
Management application, the corresponding
budget reference rate is used to calculate the
total planned cost, planned capital, planned
operating of the project.

Note: If budget reference rates
are not defined, then exchange rate
is considered as 1. For example, if
functional currency is USD, entered cost
is EUR, and no exchange rate is defined,
then 1000 USD equals to 1000 EUR.
Cost in functional currency

Value that is rolled up from the Functional cost
field of all cost plan breakdowns.

Total actual cost

Value that is rolled up from the Actual cost
field of all cost plan breakdowns.

Estimate at Completion

Sum of all actuals for past fiscal periods added
to the functional cost for future fiscal periods.
For example, the duration of a project is
from January 01 to December 31, and if you
check the Estimate at Completion in the
month of May, it is calculated as: Sum of
actuals from Jan to April + Sum
of functional cost from May to
December.

Related topics
Create a project cost plan
Cost plan breakdown form
Learn and update the enabled fields of cost plan breakdown form.
Cost plan breakdown form
Field

Description

Task

Task to which the cost plan breakdown
belongs.

Portfolio

Portfolio to which the cost plan breakdown
belongs.

Entered currency

Currency specified in the cost plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1202


<!-- page 1203 -->
Cost plan breakdown form (continued)
Field

Exchange rate

Description

Rate in effect for the period corresponding to
the cost plan breakdown. When the period
corresponding to the cost plan break down
has multiple rates, the rate in effect on the first
date of that period is used.
Exchange rate is used to convert entered cost
into functional cost. It is obtained from the
itfm_fx_rate [budget_reference_rates] table.

Actual

Actual cost generated from processed
expense lines.

Cost plan

Cost plan to which the cost plan breakdown
belongs.

Fiscal period

Fiscals generated at period level. For
information on periods, see fiscal calendars

Entered cost

Breakdown amount in entered currency.

Functional cost

Functional cost obtained by multiplying
exchange rate with entered cost.

Exchange rate date

First date of the fiscal period corresponding to
the cost plan breakdown.

.

Related topics
Update a cost plan breakdown
Diagnostics form
Learn about the fields of diagnostic form.
Diagnostics form
Field

Description

Name

Name of the diagnostic scan. This
name appears in the application
to which this diagnostic scan

belongs.
Active

Option for activating the diagnostic scan.

Order

Order in which this diagnostic scan appears in
the application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1203


<!-- page 1204 -->
Diagnostics form (continued)
Field

Description

Feature

Diagnostic feature with which you want to
associate this diagnostic scan.

Roles

Option for adding or removing user roles that
can access the diagnostic scan.

Description

Details of the diagnostic scan. The
description is displayed in the
application to which the diagnostic scan

belongs.
Related topics
Create Diagnostic scans and map related scripts
Diagnostics Feature form
Learn about the fields of diagnostics feature form.
Diagnostics Feature form
Field

Description

Name

Name of the diagnostic feature. This
name appears in the application
to which the diagnostic feature

belongs.
Active

Option for activating the diagnostic feature.

Application

Search for and select the application with
which you want to associate this diagnostic
feature.

Roles

User roles that allow access to the diagnostic
feature.

Description

Details of the scans in the diagnostic
feature. The description is displayed in the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1204


<!-- page 1205 -->
Diagnostics Feature form (continued)
Field

Description

application to which the diagnostic feature

belongs.
Diagnostics Input fields
Field

Description

Label

Name of the label for the input fields.

Field Type

The Reference field type.

Table

Name of the table on which the query
specified in the condition should run.

Key

An identifier for the user input condition. If a
user specifies multiple conditions, this key
acts as a unique identifier for each condition.
You can use this key as the input for the
scanContext section of the diagnostic
script.
For example, if you specify projectFilter
as a key, the scanContext section
of the diagnostic script would appear
as follows: var encodedQuery =
scanContext.input.projectFilter;

Related topics
Create and add diagnostic features
Diagnostic Scripts form
Learn about the fields of diagnostic scripts form.
Diagnostic Scripts form
Field

Description

Name

Name of the diagnostic script. Use a name that clearly explains
the objective of the script. The script name also enables you to
identify the correct script while mapping the script to a feature
when creating a diagnostic scan.

Description

Details describing the actions of the diagnostic script.

Diagnostic script

The code for the diagnostic script. The following example shows
a diagnostic script to identify tasks with an invalid top portfolio.
/*
- Inputs can be accessed from
scanContext.input as per, the key
specified in feature input table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1205


<!-- page 1206 -->
Diagnostic Scripts form (continued)
Field

Description

eg. scanContext.input.projectSysID
- To pass variables from the one script
to another script use varSpace in
scanContext.
eg. scanContext.varSpace.variable1 =
'...';
*/
(function(scanContext) {
try {
var errorTasks = [];
var encodedQuery =
scanContext.input.projectFilter;
var now_GR = new
GlideRecord("pm_project");
gr.addEncodedQuery(encodedQuery);
gr.query();
while (gr.next()) {
var entitySysID =
gr.getValue("sys_id");
var projectData = new
ProjectData(entitySysID);
var projectTopTaskValidator =
new ProjectTopTaskValidator(projectData);
if
(projectTopTaskValidator.tasksWithInvalid
TopPortfolioPresent()) {
var failedTasks =
projectTopTaskValidator.getTasksWithInval
idTopPortfolio();
if (failedTasks &&
failedTasks.length) {
for (var i = 0; i <
failedTasks.length; i++) {
errorTasks.push(failedTasks[i].sys_id);
}
}
}
Related topics
Add diagnostic and fix scripts
Expense line form
Learn about the fields of expense line form.
Expense line form fields
Field

Description

Number

Auto generated number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1206


<!-- page 1207 -->
Expense line form fields (continued)
Field

Description

Amount

Select a currency type and enter the expense cost.

Date

Date of the expense generated.

Process
date

Date on which the expense line was processed.

Source ID

Record that generated the associated cost.

State

State of the expense line. The state can be Pending or Processed. The cost roll-up
happens only if the expense line is processed.

Cost plan

Name of the cost plan against which you want to create the expense line.

Summary
type

Select the category you want to group the expense under.

Cost type

Select the cost type.

Expense
type

Select Capex for a capital expense or Opex for an operating expense.

Short
Enter a short description of the expense type.
description
Sources

Select the records for the sources of the expense line. These sources include:
• Assets
• Fixed assets
• Contracts
• Users
• Configuration items
• Tasks
• Cost centers

Related topics
Create an expense line
Investment board form
Learn about the fields of investment board form.
Investment board form
Field

Description

Name

Name for the investment board.

Type

Level to filter projects and demands.
• Portfolio: When selected, projects and
demands matching that type are displayed.
• Program: When selected, projects and
demands matching that type are displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1207


<!-- page 1208 -->
Investment board form (continued)
Field

Description

• Demands/Projects: When selected,
demands and projects matching that type
are displayed, and are not bound to any
particular portfolio or program.
Portfolio

Name of the portfolio from which the projects
and demands are filtered.
This option is available only when Type is
Portfolio.

Program

Name of the program from which the projects
and demands are filtered.
This option is available only when Type is
Program.

Demand/Projects

Option to specify filter criteria for projects and
demands.

Note:
• If no filter criteria is specified for
demand, then no demands are
retrieved. Similarly, if no filter criteria is
specified for project, then no projects
are retrieved.
• You can view a CSM column in an
Investment Portal board, but you
cannot add a filter on such columns in
the board.
Active projects and demands

Check box to filter only active projects and
demands.
This option is available only when Type is
Portfolio or Program.

Related topics
Create an investment board
Monetary Benefit Plan Breakdown form
Learn about the fields of monetary benefit plans form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1208


<!-- page 1209 -->
Monetary Benefit Plan Breakdown form
Field

Description

Task

Task to which the benefit plan breakdown
belongs.

Portfolio

Portfolio to which the benefit plan breakdown
belongs.

Entered currency

Currency specified in the benefit plan.

Exchange rate

Rate in effect for the period corresponding to
the benefit plan breakdown. When the period
corresponding to the benefit plan break down
has multiple rates, the rate in effect on the first
date of that period is used.
Exchange rate is used to convert the
entered benefit into the functional benefit.
It is obtained from the itfm_fx_rate
[budget_reference_rates] table.

Actual benefit

Actual benefit that is incurred from the project
or demand.

Benefit plan

Benefit plan to which the benefit plan
breakdown belongs.

Fiscal period

Fiscals generated at the period level. For
information on periods, see fiscal calendars

Entered benefit

Benefit in entered currency.

Functional benefit

Functional benefit obtained by multiplying the
exchange rate with the entered benefit.

Exchange rate date

First date of the fiscal period corresponding to
the benefit plan breakdown.

.

Related topics
Create a monetary benefit plan for a project
Update a monetary benefit plan breakdown for a project
Non-monetary benefit plans form
Learn about the fields of non-monetary benefit plans form.
Benefit Plan form
Field

Description

Name

Descriptive name of the benefit plan.

Work

Project or demand to which the benefit plan belongs.

Sponsor

Sponsor for the project.

Category

Type of benefit:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1209


<!-- page 1210 -->
Benefit Plan form (continued)
Field

Description

• Hard: Benefits that can be measured in terms of revenue.
• Soft: Benefits that are measured in terms of value.
Sub
category

Subcategories of hard and soft benefits.

Benefit
type

Type of benefit. Select Non-monetary benefits.

The selection in the Category field determines the selections available in this
field.

Offset type Field to indicate when the benefits start to be realized. Select any of the following
options:
• None: The default value is None. When you select None, you must manually
enter the benefit plan start and end fiscal periods.
• Milestone: After completion of a milestone.
• Start Date: At the start of the project.
• End Date: After the project ends.
If the value in the selected Offset type field changes, the benefit plan start date
shifts accordingly. For example, if the Offset type field is set to End Date and the
end date of the project changes, the benefit plan start date shifts to align with the
new end date of the project.
Milestone

Project milestones to which the benefit plan belongs. This field appears only when
Milestone is selected from the Offset type field.

Milestone
start date

Start date of the selected milestone. This field appears only when Milestone is
selected from the Offset type field.

Work start
date

Start date of the project or demand. This field appears only when Start Date is
selected from the Offset type field.

Work end
date

End date of the project or demand. This field appears only when End Date is
selected from the Offset type field.

Offset

Number of periods before or after the offset type when the benefit plan starts. For
example, if the offset type is selected as End Date and the offset is -2, the benefit
plan is two periods prior to the project end date. If the project end date shifts, the
benefit plan start date shifts to two periods prior to the new project due date.

Duration in The length, in periods, of the benefit plan.
periods
Start fiscal
period

Starting fiscal period. Populated based on the value in the Offset field relative
to the selected Milestone, Project/Demand start date, or Project/Demand end
date, and Duration in periods field values.
The field is editable if you select None in the Offset type field.
When you change the start fiscal period, the associated benefit breakdown values
also change.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1210


<!-- page 1211 -->
Benefit Plan form (continued)
Field

Description

End fiscal
period

Ending fiscal period. Populated based on the value in the Offset field relative to
the selected Milestone, Project or Demand start date, or Project or Demand end
date, and Duration in period values.
The field is editable if you select None in the Offset type field.
When you change the end fiscal period, the associated benefit breakdown values
also change.

Associated Monetary benefit that is associated to this non-monetary benefit plan.
benefit
Non-monetary Details
Measure

Type of measure for the non-monetary
benefit plan. The measure types are Count,
Percentage, Hours, Days, and Score.
Select the option Yes/No to track the benefits
that are not quantifiable. When this option is
selected, the only field available is Benefits
achieved. You can select the check box to
indicate that the benefits have been achieved.

Non-monetary entered benefit

Estimated value of the potential benefit.
Any change in the planned benefit on the
benefit plan updates the associated benefit
breakdown values for future fiscal periods
only.

Non-monetary planned benefit

Benefit value that is rolled up from the benefit
breakdown.

Benefits achieved

Option to indicate if the benefit is achieved.

Breakdown type

Type of breakdown creation when you save
the benefit plan.
• None: No breakdowns are created.
• Automatic: A Non-monetary Benefit Plan
Breakdowns record is created automatically
with data. The breakdown is calculated
linearly.
• Manual: A Non-monetary Benefit Plan
Breakdown record is created automatically
but without data in the Entered benefit
column.

Aggregation mode

Determines how the roll-up happens from
breakdowns to the benefit plan and updates
the values in the Non-monetary planned

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1211


<!-- page 1212 -->
Non-monetary Details (continued)
benefit and Non-monetary actual benefit
fields.
• Sum: Aggregates data from all breakdowns.
• Average: Average value from all
breakdowns.
• Most recent: Recent breakdown value.
• Max: Maximum value among the
breakdowns.
• Min: Minimum value among the
breakdowns.
Non-monetary actual benefit

Actual benefit value that is rolled up from the
actual benefit in the non-monetary benefit
plan breakdown.

Related topics
Create a non-monetary benefit plan for a project
Update a non-monetary benefit plan breakdown for a project
Project task form
Learn about the fields of project task form. The fields appear when the Project Portfolio
Management is active and the Project form is in the Basic view. Configure the form to display the
fields.
Project Task form
Field

Description

Short
Brief description of the project task.
description
Number
Status

System-generated number with a configurable prefix.
Status of the project task.
The status updates automatically based on the difference of the planned end
date of the task from the current date. The color of the status changes as the
planned end date approaches:
• Green: The planned end date for the project task is more than the offset
working days that you defined.
• Yellow: The planned end date for the project task is less than the offset working
days that you defined.
• Red: The planned end date for the project task is past the offset working days
that you defined.
The default offset for status calculation is 3 working days. You can update the
com.snc.ppm.yellow_status_duration property to change the offset
duration. Your project schedule determines the working days.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1212


<!-- page 1213 -->
Project Task form (continued)
Field

Description

Important: The status of the project task does not affect the overall status
of the project, meaning the project task status does not roll up to the project.
Also, the status of the child tasks does not affect the status of the parent
task.
Execute the Update Active Project Task Status scheduled job to
update the status of your existing tasks. This scheduled job runs daily by default,
however you can execute this job on demand also.
If you do not want the status of a task to update automatically, you can change
the status of the task manually. Changing the status manually, overrides the
automatic update and the execution of the scheduled job does not change the
status of the project task.

Note: Configure the property

com.snc.status_process_planned_task_entities to include
or exclude task types for automatic status updates.
Override
status

Indicates if the project task status is updated manually. By default, this check
box is deselected. When you change the Status field manually, this check box
becomes selected.

State

Current state of the project. The states include: Pending, Open, Work in Progress,
Closed Complete, Closed Incomplete, Closed Skipped.
The state is automatically rolled up from the project tasks. For more information,
see Project calculation and Parent-child rollup task calculations.

Description Detailed description of the project task.
Assigned to User assigned to the project task. The following conditions apply:
• If an assignment group is defined, only users in the assignment group appear
in the lookup list.
• If skills are defined, only users with those skills appear in the lookup list.
• If no assignment groups or skills are defined, only users with one of the Project
Management application user roles appear in the lookup list.
• Users with timecard_user role also appear in the lookup list.
Assignment User group assigned to the project task.
group
Additional
assignee
list

Additional users assigned to the project task.

Percent
complete

Percentage of the work that has been completed for the project task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1213


<!-- page 1214 -->
Details tab
Field

Description

Milestone

Option for converting the task to a milestone.

Key milestone

Option for converting the task to a key
milestone.

Allow dates outside schedule

Indicates whether the project task is set
to start and end on a non-schedule day
(outside regular project schedule) such as
on a weekend. An off-schedule task can start
any time during the day and on any day of the
week.
For example, if you use the project schedule
Monday to Friday, 8:00 to 17:00 and a project
task of duration 2 days should start on
Saturday, then an off-schedule task is allowed
to be scheduled on Saturday and end on
Sunday. Similarly, if a task of duration 3 days
starts on Friday, then an off-schedule will end
on Sunday instead of ending on Tuesday.
The option is not enabled for a parent task.
The value of this field on the parent task is
derived from the child tasks.

Note:
• There is no difference between an offschedule and an on-schedule task if
there is no schedule defined at the
project.
• 1 day is 8 hours for a task in regular
schedule and 24 hours for a task
outside schedule.

Dates tab
Field

Description

Planned start date

Estimated date and time for the project task
to start. You can edit this date when the Time
constraint is Start on Specific Date, Start no
earlier than, or Start no later than.
If the constraint type is Start ASAP or Start no
later than, changing the planned start date for
a task changes the constraint type to Start no
earlier than.

Planned end date

Estimated date and time for the project task to
end.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1214


<!-- page 1215 -->
Dates tab (continued)
Field

Description

For a manual project, any update to the actual
start date does not update the planned end
date of the project task. Enable the project
property Enable alter of planned date with
Actual for Manual Project to update planned
end date from the actual start date and
planned duration.
Planned duration

Estimated length of time (from start time to end
time) of the project task.

Planned effort

Estimate of how much time it will take to
complete this task. After you add child
tasks, this field becomes read-only, rolls-up
calculation and overwrites any earlier entry
that you made.

Constraint date

A read-only field that determines the start
date for tasks with Start no earlier than, Start
no later than, and Start on specific date
constraints. Use the Move project related link
to change this date. For more information, see
Change the planned start date of a project.

Original start date

Original planned date and time for the task to
start.

Actual start date

Date on which the project task started. The
task is set to Work in Progress when the
actual start date is populated.
When you change the State or Percent
complete of the task, the actual dates are
auto-populated with the date component
copied from the planned dates.
When you populate the actual start and end
dates, the time component in actual dates is
defaulted to the date component in planned
dates when the derive time component from
planned dates field on Project form is set to
True.

Actual end date

Date on which the project task ended. The
task is set to Closed Complete when the
actual end date is populated.

Actual duration

Duration of the task from task start to task
closure. As with planned duration, the actual
duration shows total task time.

Actual effort

Actual number of hours charged from the
resources on this project task. If you are using
the Time Card Management application, the
value for the field comes from the application

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1215


<!-- page 1216 -->
Dates tab (continued)
Field

Description

automatically. The application calculates the
actual effort on the task by taking the total
time worked from all approved time cards of all
resources who worked on the task.
Time constraint

When the project task begins:
• Start ASAP: The task starts as soon as
possible as determined by the relationships
and dependencies. The dates for these
tasks are derived from the constraint date of
the project.
• Start on specific date: The task starts
on a date that you specify. The task
dependencies are not considered for date
calculation.
• Start no earlier than: The task starts on or
after the constraint date.
• Start no later than: The task starts on or
before the constraint date. The start date
is determined by the relationships and
dependencies.

Note: If the Calculation field on the
Project form is set to Manual, you cannot
change the constraint type for such
projects. To change the constraint type,
change the project to Automatic.
Original end date

Original planned date and time for the task to
end.

Notes tab
Field

Description

Activity / Work notes / Additional comments

Information about the milestones,
impediments, or changes as the project
progresses. Enter notes or comments in the
Activity field and click Additional comments
or Work notes. The text appears in the feed.

Checklist tab
Field

Description

Checklist

Checklist to track items that must be
completed for the task.

Related topics
Create a project task from a project
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1216


<!-- page 1217 -->
Project Template Form
Learn about the fields of project template form.
Project Template Form Fields
Field

Description

Name

The name of the project template.

Table

Display only. Templates are based on the Project table.

Description A brief description of the project template.
Template

Includes columns of fields and field values to be included in the template. Select
a field in the left column and select the desired field name, then select the field
in the right column to enter the field value. If additional information for the field is
required, a field appears in the third column. For example, to identify the currency
in a money field.
• Select the X to the right of a field to remove that field from the template.
• Use the blank field at the bottom of the list to add new fields.

Related Links
Field

Description

Create Project

Creates a project from this project template.

Copy Template

Creates a copy of this project template.

Related Lists
Field

Description

Project Template Tasks

The project template task list.

Attachments

The files attached to the template.

Project Template Configuration form fields
Field

Definition

Table

The entity to be parameterized in the template.

Parent
table

The parent table for this item.

Link
element

The field that links the table with the parent table.

Active

A check box that indicates this item is included in a template.

Elements A comma-separated list of fields from the table selected in the Table field that are
included in the template.
Planning attribute form
Use the Planning attribute form fields to modify a planning attribute.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1217


<!-- page 1218 -->
Planning attribute form
Field

Description

Attribute type

Attribute type list.
• Resource: To use the attribute for resources
or financials for your project.
• Task: To use the attribute to generate labor
costs only.

Attribute name

Name of the attribute.

Enable for resource management

Option to enable the attribute for resource
planning.
This option is selected by default.

Enable for financials

Option to enable/disable the attribute for
financial planning.

Note:
• To enable an attribute for financials,
it should be enabled for resource
management.
• To disable an attribute for financials
for an ongoing project: Delete all the
existing labor cost plans, disable the
attribute for financials, and regenerate
labor cost plans.
Attribute table

The default attribute table is the Employee
Profile from which the attribute sources the
information.

Attribute field

Element name from the Employee Profile table
to define the attribute.
Relevant lookup tables for the selected field
value are displayed in the Planning attribute
column configurations table after saving the
form.
Enter the respective field names of the
columns to activate the attribute.

Active

Option to activate and use the attribute for
planning.

Task attribute table and field

Table name and field value for a task attribute.
This field is visible only while creating a Task
type attribute.

Related topics
Create or edit planning attributes
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1218


<!-- page 1219 -->
Planned Task Relationship form
Learn about the fields of planned task relationship form.
Planned Task Relationship form fields
Field

Description

Predecessor The predecessor, or determiner, in the relationship. You can select a new
task. However, it is a good practice to delete the relationship and create a new
relationship between the correct tasks.
Successor

The successor in the relationship. The successor depends on the predecessor.
You can select a new task. However, it is a good practice to delete the
relationship and create a new relationship between the correct tasks.

Type

The type of relationship, which is always Predecessor of::Successor of. Do not
change this value.

Sub Type

The type of dependency.

Lag

The lag time between the tasks. The Enter the days, hours, minutes, and seconds
for the lag. Lag time can be positive or negative.

Related topics
Modify a project task dependency
Portal board widget form
Learn about the fields of portal board widget form.
Portal board widget form
Field

Description

Name

Unique name for the widget you are configuring.

Order

The order in which your widgets appear on both your Investment Board and the
Investment Portal page. Lower numbers are placed ahead of higher numbers.
For example, a widget with an order set to 100 appears before a widget with an
order set to 200.

Aggregate
type

Type of aggregation applied for the investment widget calculation: Sum, Average,
Minimum, Maximum, and Count.
For example, you are aggregating the actual cost of three projects, A, B, and C,
surfaced by a filter. Actual costs are 1000 for project A, 2000 for project B, and
3000 for project C.
If sum is selected as the aggregate type, then the actual cost metric value would
be 6000. If average is selected as the aggregate type, then the actual cost metric
value would be 2000. If minimum is selected as the aggregate type, then the
actual cost metric value would be 1000. If maximum is selected as the aggregate
type, then the actual cost metric value would be 3000. If count is selected as the
aggregate type, then the actual cost metric value would be 3.

Scripted

Check box to specify a script for the investment widget calculation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1219


<!-- page 1220 -->
Portal board widget form (continued)
Field

Description

Show
Label

Check box to display either the label or the color indicator.

Active

Check box to indicate that the investment widget is active.

Display on
board

Check box to display the investment widget on your investment board.

Parent
widget

Parent widget for this investment metric widget. A parent widget can have up to a
maximum of three child widgets.

Include by
default

Check box to show an active investment widget by default on:

If you clear the check box, the Color field displays, which allows you to set the
color.

• new boards
• existing boards that do not have widget selection configured
The check box is selected by default.
For more information on configuring widgets on an investment board, see Widget
Configuration.

Short
Brief description about the investment widget.
description
Script

Script written for the dynamic calculation of investment widget. This field is
displayed only when the Scripted check box is selected.
The following script returns a string containing the desired output to be displayed
on widget. Five variables (which are programmatically introduced to the script) are
available:
• projectFilter: Project filter of Investment Portal board.
• demandFilter: Demand filter of Investment Portal board.
• projectClass: Project class of Investment Portal board which is used during
teamspaces value evaluation. It returns tsp1_project for Teamspace1 Portal
Board.
• demandClass: Demand class of Investment Portal board which is used during
teamspaces value evaluation. It returns tsp1_demand for Teamspace1 Portal
Board.
• boardSysId: SysId of Investment Portal board. It provides access to more
information on Investment Portal board when needed.
Sample scripted widget for project cost
totalProjectCost();
function totalProjectCost()
{
var totalCost = 0;
if(!JSUtil.nil(projectClass)
&& !JSUtil.nil(projectFilter))

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1220


<!-- page 1221 -->
Portal board widget form (continued)
Field

Description

{
var projectGa = new
GlideAggregate(projectClass);
projectGa.addEncodedQuery(projectFilter);
projectGa.setGroup(false);
projectGa.addAggregate('SUM', 'cost');
projectGa.query();
if(projectGa.next())
{
if(projectGa.getAggregate('SUM', 'cost'))
totalCost +=
parseFloat(projectGa.getAggregate('SUM', 'cost'));
}
}
return PPMCurrencyHelper.defaultCurrencySymbol() +
PPMCurrencyHelper.getFormattedAmount(totalCost);
}

Project section of the Portal board widget form
Field

Description

Project aggregate column

Aggregation is applied on the selected column
of the Project [pm_project] table.

Project table

Table from which projects are being filtered.

Project filter

Criteria applied to filter projects from the
Project table.

Demand section of the Portal board widget form
Field

Description

Demand aggregate column

Aggregation is applied on the selected column
of the Demand [dmn_demand] table.

Demand table

Table from which demands are being filtered.

Demand filter

Criteria applied to filter demands from the
Demand table.

Related topics
Configure your investment metrics as widgets
Risk, issues, decisions, actions, and request change (RIDAC) form
Learn about the fields of the RIDAC form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1221


<!-- page 1222 -->
Risk form
Field

Description

Number

System-generated ID number with a configurable prefix.

State

Current state of the risk. All new risks are created in the Pending state.
The available states are: Pending, Open, Work in Progress, Closed Complete,
Closed Incomplete, and Closed Skipped.

Risk status

Status of the risk. It provides information on current status of the risk, whether it is
achieved or mitigated or accepted.
The available options are: Pending, Achieved, Not Achieved, Avoid, Mitigate,
Transfer, and Accept.

Probability

The likelihood that the event described in the risk will occur. The available options
are: Absolute, High, Moderate, and Low

Impact

Impact of the risk event on the outcome of the project.

Estimated
cost

Estimated cost the risk event generates.

Risk rank

A value and color assigned to the risk. This value is calculated using risk
probability and impact. You can configure the color and value using Risk Value
Lookup. For more information, see Configure custom Risk rank and Risk value for a
project.

Risk owner Primary resource who is responsible for monitoring and managing the risk.
Assigned
to

Primary resource assigned to work on the risk.

Risk value

A value calculated from Risk Value Lookup. For more information, see Configure
custom Risk rank and Risk value for a project.

Due date

Requested date for the assigned resource to resolve the risk or the date on which
the risk must be closed or addressed if not assigned to any resource.

Show on
project
status
report

Option to specify whether the risk information should be included in the project
status report.

Task

Project to which this risk belongs.

Short
Brief description of the event and its potential impact on the success of the
description project. If the risk is created from the risk library, then this field displays the Risk
Statement name.
Description Details of the event and its potential impact. If the risk is created from the risk
library, then this field displays the Risk Statement short description.
Actual cost Cost generated by the risk event. This information gets added when and if the
event occurs.
Mitigation
plan

Brief description of efforts taken to mitigate the risk.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1222


<!-- page 1223 -->
Risk Assessment Summary section in the Risk form
Field

Description

Inherent risk

This field gets auto-populated with the risk
scores when the risk assessor assesses the
inherent risk.

Elevated to enterprise risk

This option gets selected automatically when
the risk is elevated to enterprise risk by the
project manager.

Residual risk

This field gets auto-populated with the risk
scores when the risk assessor assess the
residual risk.

Enterprise inherent risk

This field gets auto-populated with the risk
scores when the risk assessor assesses the
enterprise inherent risk.

Enterprise residual risk

This field gets auto-populated with the risk
scores when the risk assessor assesses the
enterprise residual risk.

Issue form
Field

Description

Number

System-generated ID number with a configurable prefix.

State

Current state of the issue. All new issue records are created in the Open state.
The available states are: Pending, Open, Work in Progress, Closed Complete,
Closed Incomplete, and Closed Skipped

Priority

Urgency of resolving or managing the issue based on possible impact.

Estimated
cost

Estimated cost the issue generates.

Impact

Impact on the outcome of the project if the issue remains unresolved.

Due date

Requested date for the assigned resource to resolve the issue or the date on
which the issue must be closed or addressed if not assigned to any resource.

Assigned to

Primary resource assigned to work on the issue resolution.

Parent

Project to which this issue belongs.

Show on
project status
report

Option to specify whether the issue information should be included in the
project status report.

Short
description

Brief description of the issue and its potential impact on the success of the
project.
As you start typing the title for your issue, related issues that potentially match
your issue are displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1223


<!-- page 1224 -->
Issue form (continued)
Field

Description

Select the suggestion icon (
descriptions.

) to select from the list of predefined issue

Description

Details of the issue and its potential impact.

Work notes

Information to record and track the work accomplished for resolving the issue.

Decision form
Field

Description

Number

System-generated ID number with a configurable prefix.

State

Current state of the decision. All new decision records are created with
Open state.
The available states are: Pending, Open, Work in Progress, Closed
Complete, Closed Incomplete, and Closed Skipped

Priority

Urgency of approving or implementing the decision based on possible
impact.

Decision status

Status of the decision. The available options are: Pending, Approved, and
Rejected.

Impact

Impact on the outcome of the project if you do not implement the decision.

Approval
required

Option for determining whether approval of the decision is required.

Estimated Cost

Estimated cost of implementing the decision.

Due date

Requested date on which the decision must be approved or implemented.

Assigned to

Primary resource assigned to work on the decision. The default value is the
name of the user creating the decision record.

Parent

Project number to which this decision belongs.

Show on project
status report

Option to specify whether the decision information should be included in
the project status report.

Short description Brief description of the decision such as what the decision is about, who
made it, what it affects, and the decision outcome.
As you start typing the title for your decision, related decisions that
potentially match your decision are displayed.
Select the Suggestion icon (
) to select a description from the list of
predefined decision descriptions.
Description

Details of the decision and its potential impact.

Work notes

Information to record and track the status of decision implementation or
approvals.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1224


<!-- page 1225 -->
Action form
Field

Description

Number

System-generated number with a configurable prefix.

State

Current state of the action. All new action records are created with the state
set to Open.
The available states are: Pending, Open, Work in Progress, Closed Complete,
Closed Incomplete, and Closed Skipped

Priority

Urgency for implementing or approving the action based on impact.

Estimated Cost Estimated cost the action generates.
Impact

The impact on the outcome of the project if you do not implement the action.

Approval

Status of approval from the stakeholders for the action. A user with approval
administrator role can only change the status of approval.

Assigned to

Primary resource assigned to implement the action.

Due date

Requested date on which the action must be approved or implemented.

Parent

The project to which this action belongs.

Show on
project status
report

Option to specify whether the action information should be included in the
project status report.

Short
description

Brief description of the action such as what the action entails, how to
implement the action, who it affects, and the action outcome.
As you start typing the title for your action, the related actions that potentially
match your action title appear.
Select the Suggestion icon (
predefined actions.

) to select a description from the list of

Description

Details of the action and its potential impact.

Work notes

Information about the action. Add work notes to communicate about the
status of action approval, rejection, or implementation with other users.

Request Change form
Field

Description

Number

System-generated ID number with a configurable prefix.

State

Current state of the request change. All new request change records are
created in the Open state.
The available states are: Pending, Open, Work in Progress, Closed
Complete, Closed Incomplete, and Closed Skipped

Priority

Urgency for approving the requested changes based on impact.

Estimated Cost

Estimated cost the requested changes generate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1225


<!-- page 1226 -->
Request Change form (continued)
Field

Description

Impact

Impact on the outcome of the project if you do not approve the requested
changes.

Approval

Status of approval from the stakeholders for the requested changes.

Assigned to

Primary resource assigned to work on the request change.

Due date

Requested date to complete the request change.

Category

Entity for which you are creating the request change. The options are:
Resource, Scope, Cost, and Schedule.

Parent

Project number to which this request change belongs.

Show on project
status report

Option to specify whether the request change information should be
included in the project status report.

Title

Title for the change request.

Description

Details of the request change and its potential impact.

Business
Justification

Reason for requesting the proposed change in the project and its impact
on the business.

Work notes

Additional information to indicate progress on the project request change.

Risk value matcher form
Learn about the fields of risk value matcher form.
Risk Value Matcher form
Field

Description

Impact

Impact value of the risk.
The default values are:
• 1 = High
• 2 = Medium
• 3 = Low

Application

The application to which these risk values
belong.

Risk Rank Color

Color to indicate the severity of the risk.

Tip: You can enter variations of a
color to differentiate between risks with
similar impact and probability values. For
example, you could enter lightgreen to
indicate a low-severity risk.
Risk Value

The value for the specified risk impact and
probability combination.
The options are: High, Medium, and Low.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1226


<!-- page 1227 -->
Risk Value Matcher form (continued)
Field

Description

This value is displayed in the Risk value field
of the Risk form.
Probability

Risk probability value to associate with the
impact value of the risk. The options are:
Absolute, High, Moderate, and Low.

Probability Number

Numerical value to indicate the probability.
This value is multiplied by the value of the
Impact field for calculating risk rank.
The default values are:
• 1 = Absolute
• 1 = High
• 2 = Moderate
• 3 = Low
The calculated risk rank and the risk rank color
are displayed in the Risk rank field of the Risk
form.

Scheduled Script Execution Form
Use the scheduled script execution form to define a scheduled job.
Schedule Item form
Field

Description

Name

Name that identifies this scheduled job.

Active

Option that indicates that scheduled job is active and should be executed at the
specified date and time.

Run

Time interval to use for running the scheduled job:
• Daily: Runs daily, at a designated time.
• Weekly: Runs on a weekly basis, at a designated time and day of the week.
• Monthly: Runs on a monthly basis, at a designated time and day of the month.
• Periodically: Runs on a designated repeating interval.
• Once: Runs for a single occurrence only.
• On Demand: Runs immediately on demand.
• Business Calendar: Entry Start: Runs on the starting entry dates for the
business calendar that you select in the Business Calendar field. A scheduled
job runs for the starting date of each of the business entries that you defined for
the business calendar.
For example, if the business calendar represents a fiscal year, and the starting
date of each entry is a fiscal month, the scheduled job runs on the first day of
each month.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1227


<!-- page 1228 -->
Schedule Item form (continued)
Field

Description

• Business Calendar: Entry End: Runs for the ending date for the business
calendar that you select in the Business Calendar field. This selection runs in
the same manner as Business Calendar: Entry Start, but for the end dates of
the associated business calendar entries.

Note: When you select Business Calendar: Entry Start or Business

Calendar: Entry End, you can apply an offset factor to schedule the job
to run before or after the time span of the selected business calendar. To
learn more, see the Offset type and Offset fields.
To learn more about creating and using business calendars and defining
business calendar entries, see Creating business calendars
and Define
business calendar entries .
Time zone

Time zone to use with the Time field entry when you specify the time at which the
scheduled job should run. Select a time zone entry:
• -None-: Use the default time zone for the logged-in user who is creating the
scheduled job.
For example, the scheduled job runs at 04:45 p.m. US/Pacific time if it is the
user's assigned time zone, and you enter 16:45 into the Time field.
• Use System Time Zone: Use the default system time zone that is specified for
the instance in which it runs.
For example, the scheduled job runs at 10:15 p.m. London time if Europe/
London is the default system time zone for the instance, and you enter 22:15
in the Time field.
• Actual time zone.
For example, the scheduled job runs at 1:30 p.m. in the US Eastern time zone if
you select US/Eastern, and enter 13:30 in the Time field.

Day

Day on which the scheduled job should run.
• If Run is set to Weekly, select the day of the week. For example, select
Wednesday.
• If Run is set to Monthly, select the day of the month. For example, select 25 for
the 25th day of the month.
This field appears only if you select Monthly or Weekly in the Run field.

Repeat
Interval

Duration of the repeat interval for each scheduled job execution. Enter the
duration in the number of days, hours, or minutes. For example:
• To run the scheduled job every four days, enter 04 in the Days field.
• To run it every 26 hours, enter 26 in the Hours field.
• If it should repeat at an interval of 13:30:25, enter 13 in the Hours field, and
then enter 30 and 25 in the two unlabeled fields after it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1228


<!-- page 1229 -->
Schedule Item form (continued)
Field

Description

These fields appear only if you select Periodically in the Run field.

Note: This setting does not account for Daylight Saving Time changes. For
example, if you select a period of one day, the calculation adds 24 hours to
the starting time of the job. If the start time is in a Daylight Saving Time (DST)
period, the job runs with a one-hour offset when that time zone is not in DST.
Business
Calendar

Offset Type

Business calendar entry that you are using to determine the business calendar
start or end date for the scheduled job. This field appears only if you select
Business Entry: Start Date or Business Entry: End Date in the Time field.
Type of time offset, if any, to apply to the business calendar that you selected for
scheduling this job:
• Past: Apply an offset factor to schedule the job to run before the start of the
time span of the selected business calendar.
• Future: Apply an offset factor to schedule the job to run after the end of the time
span of the selected business calendar.
• --None--: Do not apply a time offset when scheduling this job.
Adding an offset factor enables you to schedule the job to run before, or after, the
formal time span that is defined in the business calendar for the following use
cases:
• Schedule a job at a certain time, outside of the time span for the selected
business calendar.
• Arrange multiple jobs to run in sequence, around the time span of the selected
business calendar.
The Offset type and Offset fields appear only if you select Business Calendar:
Entry Start or Business Calendar: Entry End in the Run field.

Offset

Amount of time offset, expressed in days, hours, minutes, and seconds, to apply
to the business calendar that you selected for scheduling this job. For example,
if you want to schedule the job to start three days, 14 hours, 10 minutes, and 45
seconds before the business calendar start date, do the following actions:
• Select Past in the Offset type field.
• Enter 3 in the Days field.
• Enter 14, 10, and 45 in the Hours field.
The Offset Days and Hours fields appear only if you select Business Calendar:
Entry Start or Business Calendar: Entry End in the Run field, and Past or Future
in the Offset type field.

Time

Time of day at which the scheduled job should run, expressed in hours, minutes,
and seconds on a 24-hour clock. The selection that you make in the Time zone
field determines the time zone for this entry.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1229


<!-- page 1230 -->
Schedule Item form (continued)
Field

Description

Note: Time values are always saved in the ServiceNow AI Platform® in UTC
time and then translated into the proper time. This translation depends on
the selected Time zone and the entry in the Time field.
This field appears only if you select Daily, Weekly, or Monthly in the Run field.
Starting
Priority

Date and time of the first scheduled job generation. Select the calendar date and
time. This field appears only if you select Periodically in the Run field.
Numerical priority for the scheduled job:
• Set essential jobs to a priority value below 100.
• Set nonessential jobs to a priority above 100.
• If 70 percent or more of all scheduled jobs are Overdue, any jobs that are
marked with a value above 100 do not run.

Run as

Name of the user who is creating and running the scheduled job. To assign the
scheduled job to the system instead of the person creating the scheduled job,
create a system or dummy user and add it to this field.

Conditional Option for enabling the running of the scheduled job if certain conditions are met
in the associated script.
Condition

Conditional script that determines if a scheduled job should run. The last
expression of the script should evaluate to a Boolean (true/false) value. This text
box appears only if you select Use conditions.

Starting

Date and time of the first scheduled job generation. Select the calendar date and
time. This field appears only if you select Periodically in the Run field.

Related topics
Generate labor costs
Activate a scheduled job to generate labor costs
Status report form
Learn about the fields on the status report form.
Status report form fields
Field

Description

Project

Name of the project.

Status Date

Date until which you want to generate the status report.

Number

A system generated number for the status report with a configurable prefix.

State

Current state of the project.

Percent complete

Percentage of the project that has been completed.

Planned start date Planned start date of the project.
Planned end date

Planned end date of the project.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1230


<!-- page 1231 -->
Status report form fields (continued)
Field

Description

Actual start date

Actual start date of the project.

Actual end date

Actual end date of the project.

Estimated cost

Estimated cost of the project.

Actual cost

Actual cost of the project.

Overall status tab details
Field

Description

Overall health

Color to signify the status of the overall health
of the project in the report.

Executive Summary

Brief summary and analysis of the project.

Comments

Comments for the overall status.

Last Week's Achievements

Progress of the project in the last week.

Key Activities planned

Next planned activities for the project.

Schedule tab details
Field

Description

Schedule

Color to signify the status of the schedulerelated information of the project in the report.

Comments on Schedule

Comments related to the project schedule.

Cost tab details
Field

Description

Cost

Color to signify the status of the cost-related
information of the project in the report.

Comments on cost

Comments related to the project cost.

Resource tab details
Field

Description

Resources

Color to signify the status of the resourcesrelated information of the project in the report.

Comments on Resources

Comments related to the project resources.

Scope tab details
Field

Description

Scope

Color to signify the status of the scope-related
information of the project in the report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1231


<!-- page 1232 -->
Scope tab details (continued)
Field

Description

Comments on Scope

Comments related to the project scope.

Related topics
Create a project status report
Multicurrency fields in project-related forms
When you enable the Project Currency view in Project, Cost Plan, and Cost Plan Breakdown
forms, you can observe multicurrency fields in the Financials section of the forms.

Financials tab of the Project form
Project form
Field

Description

Project currency

Currency in which the project is to be
implemented.

Note:
The Project currency field defaults to
the Functional Currency if you modify the
currency field and save the Project form
without selecting a currency.
The Project currency field of a project
becomes read-only field and cannot
be modified once you create a cost
plan, cost plan breakdown, benefit plan,
benefit plan breakdown, or an expense
line for the project.
Total planned cost in project currency

Estimated cost of the project in project
currency.

Planned capital in project currency

Capital expenditure (Capex) for the project.

Planned operating in project currency

Operational expenditure (Opex) for the project
in project currency.

Budget cost in project currency

Budgeted cost in local currency for the project.

Actual cost in project currency

Actual cost of the project in local currency.

Estimate at completion in project currency

Sum of all actuals for past fiscal periods added
to the functional cost for future fiscal periods
in project currency.

Planned benefit in project currency

Planned benefit for the project in project
currency.

Planned return in project currency

Difference between Planned benefit and
Planned cost values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1232


<!-- page 1233 -->
Project form (continued)
Field

Description

Planned ROI %

Percentage calculated based on the values in
the Planned return and Estimated cost fields.

Net present value in project currency

Present value of future cash in project
currency based on the given annual interest
rate.

Internal rate of return %

Annual interest rate required to achieve the
net present value (NPV) of zero.

Estimate to completion in project currency

Sum of functional cost for all fiscal periods in
project currency.

Preferences section of the Project form
Field

Description

Status report currency

Currency in which the project status report is
generated.
If you have the Project currency view enabled
in the Project form, then you have the choice
to generate the project status report using any
of the following currency options:
• Functional currency: Currency obtained
from the glide.system.locale property in
which the project status report is created.
• Project currency: Project status report
is created in the local currency that is
selected. If you select Project currency, you
can view the planned cost and actual cost in
the selected project currency.
To view the status report of the project, see
View project status reports.

Financials section of the Cost Plan form
Cost Plan form
Field

Description

Project currency

Currency in which you can create the cost
plan.

Cost in project currency

Value that is rolled up from the Entered cost
field of all cost plan breakdowns.

Total actual cost in project currency

Value that is rolled up from the Actual cost
field of all cost plan breakdowns in project
currency.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1233


<!-- page 1234 -->
Cost Plan form (continued)
Field

Description

Estimate at completion in project currency

Sum of all actuals for past fiscal periods added
to the functional cost for future fiscal periods
in project currency.

Estimate to completion in project currency

Sum of functional cost for all fiscal periods in
project currency.

Note: Any change that you make to the unit cost, quantity, or fiscal period of a cost
plan has the amounts recalculated in project currency. See Updates in cost plan and
recalculation of cost in project currency.

Multicurrency fields in the Cost Plan Breakdown form
Cost Plan Breakdown form
Field

Description

Exchange rate for project currency

Rate in effect for the period corresponding to
the cost plan breakdown in project currency.

Project currency

Local currency selected for the cost plan
breakdown.

Cost in project currency

Breakdown amount in project currency.

Actual cost in project currency

Actual cost generated from processed
expense lines in project currency.

Variance project currency

Difference between Cost in project currency
and Actual cost in project currency.

Budget

Project budget amount entered for a fiscal
year gets distributed equally into monthly
breakdowns in functional currency.

Budget cost in project currency

Project budget amount entered for a fiscal
year gets distributed equally into monthly
breakdowns in project currency.

Financials section of the Benefit Plan form
Benefit Plan form
Field

Description

Project currency

Project currency that was selected in the
project is populated.
Benefit plan attached to a project inherits the
same currency as that of the project.

Benefit in project currency

Benefit incurred from project or demand in
project currency.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1234


<!-- page 1235 -->
Multicurrency fields in the Benefit Plan Breakdowns form
Benefit Plan Breakdowns form
Field

Description

Project currency

Currency that is selected in the Project form.

Benefit in project currency

Benefit incurred from project or demand in
project currency.

Project currency exchange rate

Rate in effect for the period corresponding
to the benefit plan breakdown in project
currency.

Project currency reference rate

Rate at which the entered currency is
exchanged for project currency.

Multicurrency fields in the Expense Line form
Expense Line form
Field

Description

Project currency

Currency inherited from the project if the
project has a related expense line.

Amount in project currency

Expense cost in project currency. Amount
entered in the Amount field is converted to
project currency.

Multicurrency fields in the Project Funding form
Project Funding form
Field

Description

Capital budget in project currency

Planned expense amount allocated for capital
expenditure in the selected currency.

Operating budget in project currency

Operating expense amount in the selected
currency.

Budget in project currency

Sum of Capex and Opex amounts.
The total project funding budget amount rolls
up to the Budget cost in project currency
field.

Project currency

Currency in which the project is funded.

Exchange rate

Currency conversion based on the exchange
rates between currencies.

Exchange rate date

Date on which the exchange rate is applied.

Exchange reference date

Budget Reference Rate from where the
exchange rate is retrieved.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1235


<!-- page 1236 -->
Cost rollup in project currency
Cost rollup calculation in projects and sub-projects with different currencies varies with the
budget reference rate. The rate at which the amount is converted depends on the conversion
rate.

Convert amount entered in functional currency fields to project currency
When you create a project in functional currency of the Default view, you can manually enter or
update the amount in the Planned capital, Planned operating, Actual cost, and Planned benefit
fields. As you enter values in these fields, the amount is converted to project currency and stored
in the corresponding project currency fields such as Planned cost in project currency, Planned
operating in project currency, Actual cost in project currency, and Planned benefit in project
currency fields.

Note: You can do so only if the project does not have a cost plan, benefit plan, or expense
lines attached to it.

Roll up project financials from sub-projects to parent projects
Use the com.snc.project.multicurrency.rollup_if_different property for
financial rollups when the sub-projects and parent project have different project currencies.
Multicurrency cost rollup property behavior
Property flag

Behavior

True

If the property is set to True, then you can:
1. Associate a sub-project to a parent project,
where both the projects have different
project currencies.
2. Roll up the sub-project amounts to the
parent project amounts. However, the
accuracy of the rolled up amount in the
parent project varies because of the
currency variation.
◦ If the project currencies of the parent
project and the sub-project are the same,
then the project currency amounts from
the sub-projects to its parent and the top
project are rolled up by adding up the
amounts in the sub-project, and the rolled
up amount is accurate.
◦ If the project currencies of the parent
project and the sub-project are different,
then all the costs of the sub-projects are
converted to the project currency of the
parent or the top project, referencing the
Budget Reference Rate. The rate at which
the amount is converted depends on
the exchange rates between the project
currencies, and the specified time period

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1236


<!-- page 1237 -->
Multicurrency cost rollup property behavior (continued)
Property flag

Behavior

at which the conversion is made. Hence,
the rolled up amount is only an estimate or
an approximate value.
False

If the property is set to False, then you can:
1. Associate any number of sub-projects to a
parent project, where the project currencies
are same or different.
2. Roll up only if the project currencies of the
sub-project and the parent project match.

However, the behavior of

com.snc.project.multicurrency.rollup_if_different property is different
when flagged along with com.snc.project.rollup.cost property.
Multicurrency cost rollup property in combination with functional currency property
Properties flag

Behavior

com.snc.project.rollup.cost

You can associate any sub-projects with
parent project that have same or different
project currency but the costs of sub-projects
do not roll up to the parent project.

property is false

com.snc.project.rollup.cost
property is true and

You can associate sub-projects with parent
project that has the same project currency.

com.snc.project.multicurrency.rollup_if_different
property is false

com.snc.project.rollup.cost

You can associate any sub-project that has
the same or different project currency with the
com.snc.project.multicurrency.rollup_if_different
parent project.
is true
property is true and

Illegal association of properties and possible errors
Following are the possible errors that may occur while making an illegal association:
Property combinations for sub-project and parent project association
com.snc.project.rollup.cost

com.snc.project.multicurrency.rollup_if_different
Behavior

False

Either true or false

Can associate sub-project to
parent project even though
project currency of subproject and parent project
is different but costs from
sub-project to parent project
cannot be rolled up.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1237


