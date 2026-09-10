# Zurich IT Service Management — Service Level Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 3503–3581 of 3857

Sections: Service Level Management (p3503); Explore (p3504); Configure (p3511); Use (p3532); Reference (p3541)

---

<!-- page 3503 -->
Value

Description

When the Cost model value is Fixed,
additional fields appear on the Service
Offering form, including: Offering cost, Time
period, and Cost Unit.
When the Cost modelis Per Unit, additional
fields appear on the Service Offering form,
including: Offering cost, Time period, Units
per period, and Cost Unit.
Financial Management

With this source, the offering Estimated
Spend cost is calculated based on the
following Service Offering form fields, as
calculated by the Financial Management
application:
◦ FM period: Fiscal calendar period.
◦ FM cost: The actual currency amount.

None

With this value, or any incorrect values, the
system ignores both the local and Financial
Management cost models and does not
display associated Service Offering form
fields.

3. Click Update to save any changes.

Service Level Management
®

The ServiceNow Service Level Management (SLM) application helps to gather service
requirements as well as monitor and report with regards to agreed service levels (SLAs).

Get started

Explore

Configure

Exploring Service Level Management

Configuring Service Level Management

Use

Reference

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3503


<!-- page 3504 -->
Using Service Level Management

Service Level Management reference

Exploring Service Level Management
Use Service Level Management across your organization to monitor and manage the quality of
the services.

Service Level Management overview
Service Level Managers are responsible for negotiating a set of agreements between a service
provider and customer that define the scope, quality and speed of the services being provided
and ensuring that the agreed service levels are met.

Service Level Management concepts
®

The ServiceNow Service Level Management (SLM) application facilitates you to oversee and
control the services within the organization.
Service Level Managers are responsible for a set of agreements between a service provider and
customer that define the scope, quality, and speed of the services being provided. The intention
of SLM is to provide the customer with an expectation of service within a known timescale and
the ability to monitor when service levels are not being met.
The SLM offers the following features:
• Service Level Agreement (SLA) definitions
• Task SLAs
• Integration with other ServiceNow plugins

Service Level Agreement (SLA) roles
Ensure that users can perform all necessary actions by assigning SLA roles.

Role

Definition

sla_admin

Provides full administrative rights to SLM.
Users that possess the sla_admin role can
configure SLM properties, run SLA repair, view
the SLA Overview dashboard, and manage
SLA definitions. They may associate existing
workflows or schedules to SLA definitions,
but are unable to create workflows. The
additional roles required to create workflows
or schedules must be granted explicitly. See
Base system roles
for more information.

sla_manager

Lets users define SLA definitions, view SLA
repair logs, and view the SLA Overview
dashboard. Does not let users change SLM
property values or define SLA condition types.

Service Level Agreement (SLA) definitions
Use the SLA Definition record to define a specific set of criteria that would result in an SLA being
generated. Define some of the following parameters:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3504


<!-- page 3505 -->
• Table: The task table that the SLA is defined for.
• Duration: The time duration in which the service must be provided to the customer.
• Schedule: The schedule, which indicates valid working and non-working days that the service
provider follows to deliver the service. The selected schedule is used to determine when the
SLA breaches.
• Conditions: The conditions under which the SLA starts, pauses, stops, or resets.

Task SLA definitions
When an SLA definition is triggered against a particular task, the task SLA record is generated
and contains all the tracking data for the specific SLA on that record. For example, if an SLA
definition exists for P1 incidents a task SLA record attaches to the P1 incident record and
captures all the data associated with it. Often there are multiple task SLA records against a single
task because many definitions apply.

Note: This feature is available only in new instances starting with Jakarta
or a later release. The Problem Management Best Practice – Jakarta plugin
(com.snc.best_practice.problem.jakarta) plugin must be activate.
On the Task SLA form, you can also select the target for the SLA: Response, Resolution, or None.

Integration with other ServiceNow plugins
The following plugins introduce extra functionality within SLM:
• SLA Contract Add-on
• Service Portfolio Management - SLA Commitments

SLM Template support in App Engine Studio
Application Templates support Service Level Management tables to be included when creating
templates from applications in the App Engine Studio. The SLM tables that can be included in
templates are:
• SLA Definition [contract_sla]
• Service Offering SLA [service_offering_sla]
• SLA Timer Configuration[sla_timer_config]
• SLA timer configuration mapping[sla_timer_config_mapping]

Define a service contract
A new table of SLA contracts is provided through the Service Level Management > Service
Contracts module. These contracts group together SLAs that relate to a single vendor or
customer, as well as the CIs, locations, groups, users, and child contracts that are related to the
contract.
The table Service Contract [ast_service] extends the table Contract [ast_contract]. It stores
information about service contracts for asset management purposes. To get the service contract
functionality, activate the Service Level Management - Contract Management Integration
[com.snc.sla.contract2] plugin. Installing the SLA Contract Add-on plugin adds relations to this
table to make it useful for Service Management purposes. Once the plugin is installed, the
Service Contract record possesses related lists for:
• SLAs
• Contract CIs
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3505


<!-- page 3506 -->
• Contract Locations
• Contract Groups
• Contract Users
• Child Contracts
Service contract table fields
Field

Description

Number

A unique number associated with the contract.

Starts

The date on which the contract takes effect.

Ends

The date on which the contract expires.

Approver

The person who approves the contract.

Location

The primary location of the contract, if applicable. If there
are multiple, use the Contract locations related list.

Active

Whether the contract is currently in use.

Automatically renew/extend

Whether the contract has the possibility of being renewed
or extended at the end of its term.

Vendor

The vendor responsible for the contract.

Vendor account

The account the vendor is responsible to.

Contract number

The number of the contract defining the Service Contract.

Total cost

The total cost of the contract.

Payment amount

The amount which has been paid so far.

Payment schedule

The duration at which payments are made.

Process non-contractual SLAs

If selected, you can have both contractual SLAs as well
as non-contractual SLAs, such as OLA and Underpinning
contracts, processed for the same task. You can track the
contractual SLAs as well as any SLA that is internal to the
organization to enhance compliance.

Note: The Process non-contractual SLAs
check box is available for the zboot and
upgrade customers. The system property
com.snc.sla.contract.tables is not
available for zboot customers so that contracts are
processed for any table in the system instead of
specific tables.
Short description

A short description of the Service Contract.

Description

A full description of the Service Contract.

Add contract field to task form
Depending on how the contract is used, the Contract field can be added to any task form by
configuring the form. For information about how to configure a form, see Form configuration
.
As the Caller, Assignment Group, Location, and Configuration item fields are populated, the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3506


<!-- page 3507 -->
Contract field filters appropriately, helping the support desk to associate the ticket to the correct
contract.

Note: Do not add the same field to different sections of a form unless the field displays
read-only data. Having two or more instances of an editable field can cause data loss and
prevent the proper functioning of UI and data policies.

Service Level Agreement (SLA) breakdown definitions
Using SLA breakdown, the service owner or service desk manager can see detailed task
ownership and SLA duration related data for any task SLA record associated with a task. This
helps determine which teams and users are contributing to SLA compliance.
SLA breakdown is configurable and typically should be configured for the more significant
SLAs such as P1 and P2 resolution. By default, the system deletes SLA breakdown
data that is more than one year old. This is performed by a new table cleanup job
sla_breakdown_by_assignment. Table cleanup jobs are defined in the [sys_auto_flush]
table.
Related topics
Configure Service Level Agreement (SLA)

Service Level Agreement (SLA) processing
The SLA engine performs two passes to evaluate SLA definitions and their conditions based on a
task.
The SLA engine performs the following passes:
1. Checks the SLA definitions that do not have an active SLA record associated to the task. The
SLA engine determines if the SLA definition applies to the task and if it needs to create a SLA
record. The following condition checks are performed:
a. If the Start condition is true and the Stop condition is true, do nothing. No SLA record is
created, because the Stop condition overrides the Start condition.
b. If the Start condition is true and the Stop condition is false, a new SLA record is created for
this task using the SLA definition. The SLA record is then set to the In Progress stage.
2. Checks all active SLA records associated to the task. The engine determines if the SLA records
are changing stage. The condition checks are performed in the following order:
a. If the Stop condition is true, the SLA changes to Completed and becomes inactive.
b. If both the Reset and Start conditions are true, the SLA changes to Completed and a new
task SLA is created.
c. If the Start condition is false, the SLA changes to Cancelled and becomes inactive.
d. If the SLA is active, the Pause condition is true, and the SLA stage is In Progress, the SLA is
paused.
e. If the SLA is active, the Pause condition is false, and the SLA stage is Paused, the SLA
changes back to In Progress.
Actual and business elapsed times
Task SLA records contain two sets of timing information: Actual elapsed and Business elapsed.
The difference between these two sets of timing is vital when you create and report on SLA
definitions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3507


<!-- page 3508 -->
• Actual elapsed values are calculated on a 24x7 basis.
• Business elapsed values are calculated based on the schedule specified in the task SLA. The
schedule is taken from the SLA definition by default.

Note: If no schedule is specified, then the Business elapsed time is the

same as the Actual elapsed time. This can be disabled by changing the
com.snc.sla.always_populate_business_fields property to false in the
SLA Engine. When this property is set to false, the Business fields will be 0 or empty.
By default, the related list for the task SLA record displays the actual elapsed time only. You can
configure the list to also display the business elapsed time.

Elapsed times and schedules
Consider a scenario where an SLA has a defined schedule of 9 am to 5 pm on weekdays. With
this schedule, the difference between actual and business elapsed times can be significant.
For example, if a task SLA starts at 2 pm on a weekday, its business elapsed time at 9 am on the
next weekday is 3 hours while its actual elapsed time is 19 hours.
Business elapsed time vs actual elapsed time

In addition, if a schedule defines an 8 hour working day, then 24 hours or one day in business
elapsed time equates to 3 days in actual elapsed time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3508


<!-- page 3509 -->
Exampl of business and actual elapsed times - 24 X 7

Example
For example, an incident is opened on Friday, December 12 at 9 pm, outside of the SLA schedule
of 8 am to 5 pm on weekdays.
If the current time is the following Monday at 9:30 am, then:
• Business elapsed time is 1 hour and 30 minutes because the SLA business timer stopped at 5
pm on Friday and restarted at 8 am on Monday.
• Actual elapsed time is 60 hours and 30 minutes, representing the real time between the
incident being opened and the current time.
Elapsed percentages are also similarly calculated. The actual elapsed percentage is over 750%
while the business elapsed percentage is 19% on an 8 hour SLA.

SLA timer
Use the SLA timer component to track the amount of time that is required to complete the task as
defined by the matching SLA definition.
The SLA timer component is designed to visually display the current status of the Task SLA. You
can also view more information about the task in the tooltip, such as the SLA definition name, the
remaining time to breach, and the percentage completed details. When your task is in-schedule,
then the tooltip provides extra information, such as the out-of-schedule details.
The timer component can show any of the following stages depending on the current status of
the task.
SLA timer stages
Stage

In-progress

Color code

Description

The stage of the timer when
the task SLA is in progress.
You can find more information

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3509


<!-- page 3510 -->
SLA timer stages (continued)
Stage

Color code

Description

about the schedule and time
on tooltip. The color code
changes for in-progress state:
•

green to yellow:
When the time to complete
reaches 50%

•

yellow to orange:
When the time to complete
reaches 25%

Breached

The stage of the timer
when the time allocated to
complete the task SLA is over.
The tooltip provides more
information on the time that
the task was breached.

Cancelled

The stage of the timer when
the task SLA is cancelled. On
the tooltip, you can see the
time when it was cancelled.

Paused

The stage of the timer when
the task SLA is paused or put
on-hold. The color displayed
in this stage will correspond to
the percentage elapsed when
the task SLA was paused.
When the stage changes from
Pausedto in-progress the
timer starts from time when
it was paused. You can find
more information about the
schedule and time on tooltip.

Achieved (2010 SLA engine)

The stage of the timer when
the task SLA is achieved.
The information on when it
was achieved is seen on the
tooltip.

Completed

The stage of the timer when
the task SLA is completed.
You can see when the it was
completed on the tooltip.

Out of Schedule

The stage of the timer when
the task SLA goes out-ofschedule. You can find
more information about the
schedule and time on tooltip.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3510


<!-- page 3511 -->
Configuring Service Level Management
You can configure various aspects of Service Level Management based on the specific
requirements of your organization.

Service Level Management plugins
You can activate one or more of the Service Level Management plugins if they are not already
active. Some plugins include demo data.
You can activate one or more of the following Service Level Management plugins.
Activate Service Level Management
You can activate the Service Level Management plugin (com.snc.sla) if you have the admin role.
This plugin includes demo data and activates related plugins if they are not already active.

Before you begin

Role required: admin

About this task

Activating this plugin, provides the core SLA functional.ities.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
List of plugins (Zurich)
Installed with Service Level Management
Activating the Service Level Management plugin adds or modifies these components:
tables, properties, UI actions, UI policies, script includes, client scripts, business rules, email
notifications, scheduled jobs, and workflows.
Tables installed with Service Level Management
Tables are added with Service Level Management.

Display name [Table name]

Description

SLA Definition [contract_sla]

Provides the conditions, duration, and schedule for an SLA
Definition.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3511


<!-- page 3512 -->
Display name [Table name]

Description

SLA Conditions
[sla_condition_class]

Defines how the conditions in the SLA Definition are used to
determine the transitions between different stages of each task
SLA.

SLA Repair
Log[sla_repair_log]

Used to provide a log of when the SLA Repair function is set to
action.

SLA Repair Log Entry
[sla_repair_log_entry]

Extends syslog and stores the before or after values of a task
SLA record that has been repaired.

Task SLA [task_sla]

Associates a task with the SLA Definition that applies to it.

SLA Timer Configuration
[sla_timer_config]

Stores the timer configuration information.

SLA timer
configuration mapping
[sla_timer_config_mapping]

Stores the Task SLA mapping information.

Roles installed with Service Level Management
Roles are added with activation of Service Level Management plugin.
Roles installed
Role title [name]

Description

Contains roles

sla_admin

Users with this role have full
administrative rights to the
Service Level Management
application

flow_operator

sla_manager

Users with this role can define
SLA definitions and view SLA
repair logs.

flow_operator

Scheduled jobs installed with Service Level Management
Scheduled jobs are added with Service Level Management.

Scheduled job Description

SLA update
(already
breached)

Refreshes the timings in task SLA records that have already breached. This is
limited to task SLAs where the breach time is within the last 365 days. This job
runs once a day.

SLA update Refreshes the timings in task SLA records where the breach time is more than
(breach after 30 days away. This is limited to task SLA records where the breach time is within
30 days)
the next 365 days. This job runs every 5 days.
SLA update
(breach
within 1 day)

Refreshes the timings in task SLA records where the breach time is more than 1
hour away and less than 24 hours away. This job runs every hour.

SLA update Refreshes the timings in task SLA records where the breach time is more than 10
(breach
minutes away and less than 1 hours away. This job runs every 10 minutes.
within 1 hour)
SLA update
(breach

Refreshes the timings in task SLA records where the breach time is in the next
10 minutes This job runs every minute.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3512


<!-- page 3513 -->
Scheduled job Description

within 10
min)
SLA update
(breach
within 30
days)

Refreshes the timings in task SLA records where the breach time is more than 1
day away and less than 30 days away. This job runs once a day.

Activate SLA Breakdown definitions
You can activate the SLA Breakdowns plugin (com.snc.sla.breakdowns) if you have the admin
role. This plugin includes demo data and activates related plugins if they are not already active.

Before you begin

Role required: admin

About this task

SLA Breakdowns plugin (com.snc.sla.breakdowns) activates these related plugins if they are not
already active.
Plugins for SLA Breakdowns
Plugin

Description

Service level Provides the core SLA functionality.
management
SLA Definitions provide conditions to start, pause, stop, cancel and reset Task
[com.snc.sla] SLAs against any Task type.
In addition, you can specify a schedule on the definition to define the working
hours and also a workflow to run against each Task SLA which is typically used
to generate notifications.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
List of plugins (Zurich)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3513


<!-- page 3514 -->
Installed with SLA breakdown definitions
Several types of components are installed with the SLA breakdown definitions.
Plugins installed with SLA breakdowns
Plugins are added with activation of SLA breakdowns.
SLA breakdowns adds the following plugin.

Plugin

ID

Description

SLA
com.snc.sla.breakdowns Provides the ability to generate breakdown data for
Breakdowns
each Task SLA record. For example, the breakdown
data for each Task SLA record can be generated by
Assignment group or Assigned to field.

Note: You must have up-to-date versions

of script includes TaskSLAController
and RepairTaskSLAController
before activating the plugin to ensure that
breakdown data is generated correctly. If you
have customized versions of either of these
script includes, any customizations should be
incorporated into the versions of these files from
the most recent upgrade.
Table installed with SLA breakdowns
Tables are added with activation of SLA breakdowns.
SLA breakdowns adds the following tables.

Table

Description

SLA Breakdown Definition

A breakdown definition that is associated to a
specific task type. For example, Incident.

[sla_breakdown_definition]
SLA Breakdown Definition Field
[sla_breakdown_definition_field]

A breakdown definition field (a child record of
a breakdown definition). Each record defines a
mapping between a field on the associated task
table and the breakdown data table.

SLA Breakdown Definition to SLA Definition
relation

The relation between SLA Breakdown Definition
and SLA Definitions.

[sla_definition_sla_breakdown]
SLA Breakdown Core
[sla_breakdown_core]

The common columns for all SLA breakdown
data tables. Each breakdown data table must
extend this core table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3514


<!-- page 3515 -->
Table

Description

Note: In the Madrid release, only
the single breakdown data table
SLA Breakdown By Assignment
[sla_breakdown_by_assignment] is
supported.
SLA Breakdown By Assignment
[sla_breakdown_by_assignment]

Contains the breakdown records generated for
each Task SLA record that has an associated
breakdown definition.

Properties installed with SLA breakdowns
Properties are added with activation of SLA breakdowns.
SLA breakdowns adds the following properties.

Property

Usage

com.snc.sla.breakdown_processor.log

Logging level for script include

SLABreakdownProcessor.
Type: Choice list
Default value: Notice
Location: SLA logging module
UI policy installed with SLA breakdowns
UI policies are added with activation of SLA breakdowns.
SLA breakdowns adds the following UI policies.

UI policy

Table

Description

Make
definition
fields read
only

SLA Breakdown Definition Field

Make read only any fields on the form that are
from the parent SLA Breakdown Definition

[sla_breakdown_definition_field]

Hide
SLA Breakdown Definition Field The ui policy hides the field “Fieldname data”
"Fieldname
from the form. This field is only used by scripts
data" field [sla_breakdown_definition_field] that dynamically update other fields on the form
and which should not be modified through the
UI.
Script includes installed with SLA breakdowns
Script includes are added with activation of SLA breakdowns.
SLA breakdowns adds the following script includes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3515


<!-- page 3516 -->
Script include

Description

SLABreakdown

Base class that provides constants for SLA Breakdowns.

SLABreakdownDefinition

Extends SLABreakdownDefinitionSNC and in future
releases can be used to override default functionality or
provide additional methods. For the Madrid release, the
script include is read only.

SLABreakdownDefinitionSNC

Provides methods for managing records in the
sla_breakdown_definition table.

SLABreakdownDefinitionAJAX

Provides client callable methods used for managing
records in the sla_breakdown_definition table.

SLABreakdownDefinitionBreakdownField
Extends SLABreakdownDefinitionBreakdownFieldSNC
and in future releases can be used to override default
functionality or provide additional methods. For the Madrid
release, the script include is read only.
SLABreakdownDefinitionBreakdownFieldSNC
Provides methods that determine the available values for
breakdown_field on the sla_breakdown_definition_field
table.
SLABreakdownDefinitionSourceField
Extends SLABreakdownDefinitionSourceFieldSNC and in
future releases can be used to override default functionality
or provide additional methods. For the Madrid release, the
script include is read only.
SLABreakdownDefinitionSourceFieldSNC
Provides methods that determine the available values for
source_field on the sla_breakdown_definition_field table.
SLABreakdownDefinitionTaskTablesExtends SLABreakdownDefinitionTaskTablesSNC and in
future releases can be used to override default functionality
or provide additional methods. For the Madrid release, the
script include is read only.
SLABreakdownDefinitionTaskTablesSNC
Provides the method that determines the available Task
tables for breakdown definitions.
SLABreakdownProcessor

Extends SLABreakdownProcessorSNC and can be used to
override default functionality or provide additional methods.

SLABreakdownProcessorSNC

Provides the methods for generating the breakdown data
records for Task SLAs based on the available breakdown
definition records.

SLABreakdownUtils

Extends SLABreakdownUtilsSNC and can be used to
override default functionality or provide additional methods.

SLABreakdownUtilsSNC

Provides utility methods used by some of the other SLA
breakdown script includes.

TaskSLABreakdownUtils

Extends TaskSLABreakdownUtilsSNC and can be used to
override default functionality or provide additional methods.

TaskSLABreakdownUtilsSNC

Provides methods for the task_sla table.

Client scripts installed with SLA Breakdowns
Client scripts are added with activation of SLA breakdowns.
SLA breakdowns adds the following client scripts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3516


<!-- page 3517 -->
Script include

Table

Description

Hide assignment
breakdown reports

Task SLA
[task_sla]

Hides the embedded charts on the Task
SLA form when no breakdown data is
available.

Set available
breakdown tables

SLA Breakdown
Definition

Populates the options in the
sla_breakdown_table field.

[sla_breakdown_definition]
Set fieldname data

SLA Breakdown
Definition Field

Sets data into a hidden field which is
then used by the field choice scripts that
populate breakdown_field_name and
[sla_breakdown_definition_field]
source_field_name.

Show 2010 engine
message

SLA Breakdown
Definition

Show breakdown data
exists message

SLA Breakdown
Definition Field

Show breakdown data
exists message

SLA Breakdown
Definition

Update already defined
task tables

SLA Breakdown
Definition

Warning on setting
inactive

SLA Breakdown
Definition

Displays a message on the form for
instances that are running the 2010 SLA
engine.
[sla_breakdown_definition]
Displays a message on the form to explain
that fields are read only due to breakdown
data existing.
[sla_breakdown_definition_field]
Displays a message on the form to explain
that fields are read only due to breakdown
data existing.
[sla_breakdown_definition]
Disables options in the task_table field for
task types that already have a breakdown
definition.
[sla_breakdown_definition]
Prompts for confirmation when a
breakdown definition is updated to be
inactive.
[sla_breakdown_definition]

Business rules installed with SLA breakdowns
Business rules are added with the activation of SLA breakdowns.
SLA breakdowns adds the following business rules.

Business rule

Table

Description

Clear SLA Breakdown definitions cache

SLA Breakdown Definition to
SLA Definition relation

Clears the SLA breakdown
definitions cache whenever a
record is inserted, updated, or
deleted.

[sla_definition_sla_breakdown]
Clear SLA Breakdown definitions cache

SLA Breakdown Definition Field

Clears the SLA breakdown
definitions cache whenever a
[sla_breakdown_definition_field] record is inserted, updated, or
deleted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3517


<!-- page 3518 -->
Business rule

Table

Description

Clear SLA Breakdown definitions cache

SLA Breakdown Definition

Clears the SLA breakdown
definitions cache whenever a
record is inserted, updated, or
deleted.

[sla_breakdown_definition]
Delete active breakdown data on inactive

SLA Breakdown Definition
[sla_breakdown_definition]

Get breakdown table data

SLA Breakdown Definition
[sla_breakdown_definition]

Get SLA breakdown data

Task SLA
[task_sla]

m2mSLABreakdownRestrictBreakdownDefs Global
[global]

m2mSLABreakdownRestrictSLAs

Global
[global]

Process changes to tables

SLA Breakdown Definition
[sla_breakdown_definition]

Process SLA Breakdowns

Task SLA
[task_sla]

Set field values into scratchpad

Deletes any breakdown data
records for active Task SLA
records when the breakdown
definition is updated to
inactive.
Populate data on the
scratchpad that is required by
client scripts.
Populate data on the
scratchpad that is required by
client scripts.
Script to restrict the
available values in the
sla_breakdown_definition
column in many-to-many table
sla_definition_sla_breakdown.
Script to restrict the available
values in the sla_definition
column in many-to-many table
sla_definition_sla_breakdown.
Perform additional
processing when either the
sla_breakdown_table or
task_table is changed.
Creates and updates
breakdown data whenever a
Task SLA record is created or
updated.

SLA Breakdown Definition Field

Populate data on the
scratchpad that is used by
[sla_breakdown_definition_field] other business rules or client
scripts.

Activate SLA timeline
You can activate the SLA timeline plugin (com.snc.sla.timeline) if you have the admin role. This
plugin activates related plugins if they are not already active.

Before you begin

Role required: sla_admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3518


<!-- page 3519 -->
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
List of plugins
Script includes installed with SLA timeline
When SLA timeline is activated, script includes are installed.
SLA timeline adds the following script includes.

Script include

Description

SLATimeline

This script include generates the timeline data for a task
SLA record by replaying the task’s history and using the
SLATimelineAPI to determine the appropriate stage transitions
and timings for the task SLA.

SLATimelineAPI

This script include provides a number of functions that simulate
how the SLA engine processes a particular task and SLA
definition without actually creating any task SLA records.

SLATimeLineV2SNC

This script include is used by SLA Timeline internal REST API to
inspect audit history of a Task and extract task SLA details to be
presented on the UI.

ReadOnlyTaskSLAContoller This script include is a helper script include and is for internal use.
This script include is called by SLATimeLineV2SNC to process the
task SLA stage details.
Activate Service Level Management - SLA Timer Config API
You can activate the Service Level Management - SLA Timer Config API plugin
(com.sn_slm_timer) if you have the admin role.

Before you begin

Role required: admin

About this task

Activating this plugin provides the ability to set a preferred SLA for a given task through
configuration which is dynamic, such as First SLA to breach, or declarative through a hierarchical
mapping of first to match SLA definitions. This plugin includes demo data and activates related
plugins if they are not already active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3519


<!-- page 3520 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
List of plugins (Zurich)
Installed with Service Level Management - SLA Timer Config API
The Service Level Management - SLA Timer Config API (com.sn_slm_timer) plugin installs the
admin role.

Roles installed
Role title

Description

Contains roles

sn_slm_timer.sla_timer_admin Users with this role has full
administrative rights to the
Service Level Management
timer configuration.

sn_sla_definition_read

Script Includes installed with SLA Timer Config API
When SLA Timer Config API is activated, script includes are installed.
SLA Timer Config API adds the following script includes.

Script include

Description

SLATimerConfigAPI

This script includes provides various functions
to process and identify the task SLA that is
about to breach.

Configure Service Level Agreement (SLA)
Configure SLAs to define a set amount of time for a task to reach a certain condition, to ensure
that incidents are closed or resolved according to the expectations set for customers.
Service Level Agreement (SLA) definition
An SLA definition is used to create and progress SLAs, enabling you to use an SLA system for
your organization's tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3520


<!-- page 3521 -->
An SLA definition record defines the timings, conditions, workflows, and other information
required to create and progress task SLAs.
For example, the default Priority 1 resolution (8 hour) SLA Definition defines the Task SLAs to
attach to incidents with a P1 - Critical priority, specifies appropriate conditions for those Task
SLAs, and uses the default SLA workflow to create events such as to send a notification, when an
incident's Task SLA reaches 50% of its allotted time.
Create an SLA definition
You can create one or more Service Level Agreement (SLA) definitions and use them to create an
SLA record. This SLA record enables you to use an SLA system for your organization's task.

Before you begin

When you create an SLA definition, avoid using dot-walked fields that change frequently in any of
the SLA conditions (start, stop, pause, and reset). The SLA engine features, such as SLA Timeline
and SLA Repair replays the audit history of the Task record that the task_sla is attached to. The
SLA engine does not replay the audit history of any dot-walked fields from that Task, rather only
considers the final state of the dot-walk fields.
For example, a pause condition is set to an incident dot-walk field
incident.company.cost_center. The value of the Cost Center is first set to Finance and
later changed to Engineering. When the SLA repair runs, only the final value of the Cost Center
is considered. So, if the SLA pause condition is: incident.company.cost_center is
Engineering, SLA Repair pauses immediately, because the SLA Repair does not consider
the previous Cost Center value: Finance. This condition also applies to SLA Timeline (as well as
when executing the SLA Engine asynchronously).
Now, if the requirement is to pause when incident.company.cost_center is Engineering and not
Finance, then the audit history must be on the Task record using a custom field. Create a custom
field (in this example on the incident table) such as: u_company_cost_center and a business
rule to populate the field when either the company changes or the Cost Center of the company
changes. In this approach, instead of setting the SLA pause condition to the dot-walked field, it is
set against the custom field. The given approach ensures that the task_sla, SLA repair, and SLA
Timeline always shows the same results.

Note: The deeper the dot walk, the more business rules are required.
Role required: admin

Procedure
1. Navigate to All > Service Level Management > SLA > SLA Definitions.
2. Click New.
The SLA Definition form is displayed.
3. On the form, fill in the fields.
SLA Definition form
Field

Description

Name

Name that identifies the SLA definition.

Type

Select the type of agreement being defined: SLA, OLA, or
Underpinning contract.

Note: Type is used for reporting purposes only.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3521


<!-- page 3522 -->
Field

Description

Target

Select the target of the agreement being defined: None, Response,
or Resolution. Target is used for filtering, searching, and reporting
purposes only.

Note: This feature is available only in new instances starting
with Jakarta or a later release.
Table

Table that determines the records tracked by the SLA. SLAs can be
defined for any table that extends the task table, including incident,
change request, and service catalog tasks.

Note: Starting with the Helsinki release, you can and create an
SLA definition for configuration items and business services
Event Management.

for

Flow

Select the flow to run when the SLA definition attaches to a Task
record. Selecting a flow disables the Workflow field.

Workflow

Select the workflow to run when the SLA definition attaches to a Task
record. Selecting a workflow disables the Flow field.

Vendor

Select the vendor associated with the SLA definition.

Service
Commitment

A flag that helps to differentiate between a normal SLA definition and a
service offering SLA definition.

Enable logging

Check box to activate debug logging just for the specific SLA
definition. The debug logging information includes details of the
conditions that have matched or not matched. The information also
provides the before and the after values for the task SLA and task
records.

Duration type

Specify the method for calculating the duration of the SLA. The
duration can either be a User specified duration, or a Relative
Duration, such as Breach on Due Date or End of next business day.

Duration

Specify the length of time the SLA runs before it is marked Breached.
This field appears when the duration is User specified duration.

Note: The number of days specified in this field is converted to
24-hour blocks. If the Schedule field identifies a schedule with
eight-hour days, a duration of 1 Day sets the SLA to breach three
business days later.
Relative duration
works on

Specify the record that the relative duration should be calculated for.
Select either Task record or SLA record. This field appears only when
the relative duration is specified.

Schedule source

Specify the schedule to be used when creating task SLAs. You can
specify one of the following options:
◦ No schedule: If the No Schedule option is selected, the SLA
calculates the schedule duration based on a 24 x 7 schedule.
◦ SLA definition: If the SLA definition option is selected, the
Schedule choice list appears.
Schedule: Specify the hours during which the SLA timer runs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3522


<!-- page 3523 -->
Field

Description

◦ Task field: This option title is determined from the option selected in
the Table field, for example, if the Incident option is selected in the
Table field, this option becomes the Incident field. If the Task table
field option is selected, the Schedule source field list appears.
Schedule source field: Select the appropriate field from the task
such as an incident or problem that provides the schedule. For
example, Configuration item > Schedule.
Timezone Source

Specify the time zone source to be used when creating task SLAs. You
can specify one of the following time zones:
◦ The caller's timezone.
◦ The SLA definition's timezone: If the The SLA definition's timezone
option is selected, the Timezone choice list appears.
Timezone: Specify a time zone for the SLA. The time zone can be the
system time zone or active standard geographical time zones.
◦ The CI location's timezone.
◦ The task's location's timezone.
◦ The caller's location's timezone.

Tabs
Start condition

Define the conditions under which the SLA is attached.
From the When to cancel list, you can choose the conditions under
which the SLA is canceled.
◦ Start conditions are not met option: If one or more of the specified
start conditions change, the SLA is canceled. This option is selected
by default.
◦ Cancel conditions are met option: The start condition must be met
only once, thereafter the SLA is canceled only when the cancel
condition is met.
◦ Never option: The SLA is never canceled.
Retroactive start: to choose a date and time field from the task that
provides the start time of the task SLA. If you select the Retroactive
start check box, the Set start to field and the Retroactive pause time
check box appear.
◦ Set start to field: Offers the date and time fields available on the task
type that this SLA definition applies to. For example, if you select
Retroactive start on a Priority 1 SLA definition and choose Created
in the Set start to field, then the SLA is attached with the start time
that is the date and time from the Created field on the incident.
◦ Retroactive pause time check box: Enables the calculation of
retroactive pause time on the specific SLA definition. For example,
if you select Retroactive start on a Priority 1 SLA definition and then

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3523


<!-- page 3524 -->
Field

Description

select the Retroactive pause time check box, the SLAs that have
enabled retroactive start can recover prior to the pause time.

Note: The Retroactive pause time check box is available only
when the duration is a user-specified duration.
Pause condition

Define the conditions under which the SLA suspends increasing
elapsed time.
From the When to resume list, you can choose the conditions under
which the SLA resumes increasing elapsed time.
◦ Pause conditions are not met option: If one or more of the specified
pause conditions no longer match, the elapsed time continues to
increase. The Pause conditions are not met option is selected by
default.
◦ Resume conditions are met option: If one or more of the specified
resume conditions match, the elapsed time continues to increase.

Stop condition

Define the conditions under which the SLA completes. If all these
conditions match, then the task SLA completes regardless of whether
it is breached.

Reset condition

Determines whether the existing task is canceled or completed on
task SLA reset. Defines the conditions under which the running SLA is
canceled or completed and a new SLA is attached. For a new SLA to
be attached, the start condition must match.
Reset condition also helps to configure SLAs when the value of any
specific field on the task record changes, changes to, or changes from
a specific value. For example, the value of the Location field in the
task record is 101 Broadway East, Seattle,WA. If you set the SLA reset
condition as Location changes from 101 Broadway East, Seattle,WA,
any change in the value of the Location field resets the SLA of the task
record.

Fields that can be added by configuring the form
Condition type

Select the condition type to determine when an SLA attaches, pauses,
completes, or resets.

Configure SLA retroactive start and pause
You can use retroactive start to retain timing information for an SLA when a task record changes.
Retroactive pause prevents immediate breaches and notifications when retroactive start is
enabled for SLA definitions.

Before you begin

Role required: admin

About this task

When a task record changes, typically a new SLA may be attached, with a new set of timing
information. This is useful if you are re-assigning an incident to another group and want to attach
a new SLA record with new timing information.
However, you may want to retain time information for the task in specific situations. For example,
an incident is raised with a priority of 3 - Moderate and the priority changes to 1 - Critical after
3 hours. A priority 1 SLA is attached to the incident at that time. You can use retroactive start to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3524


<!-- page 3525 -->
ensure this SLA timing is adjusted retroactively to count from when the incident was first created,
rather than from when the incident's priority changed. This reflects the actual time the user
contacted you.
You can use the retroactive pause property to apply pause times to the new SLA.

Procedure
1. Navigate to All > Service Level Management > SLA > SLA Definitions.
2. Open the relevant SLA definition record.
3. In the Start Condition section, select the Retroactive start check box.
4. From the Set start to, select the event from which the SLA starts.
This option determines the start time used for every task SLA record created from this SLA
definition.
For example, you can select Opened to start the SLA from when the task form was initially
opened to create the record, which accurately reflects the time the end user contacts the
service desk. Alternatively, you can select Created to start the SLA from when the task form
was initially saved.
5. To enable the retroactive pause property, select the Retroactive pause check box.
Enabling this property ensures that the new task SLA record gets any pause time that would
have been accumulated during the period between the retroactive start time and now. This
pause time increases the breach time with the appropriate amount.
6. Click Update.

What to do next

When retroactive start is enabled, it may result in task SLAs being breached as soon they attach,
which will trigger multiple notifications. To prevent the workflow from being processed for these
breached SLAs, set the com.snc.sla.workflow.run_for_breached property to false.

Configure the SLA timer
Configure the SLA timer to determine which task SLA must be displayed as part of the timer
component.

Before you begin

Role required: sla_admin, sla_manager, itil, sn_slm_timer.sla_timer_admin or admin

About this task

All Service Level Agreement (SLAs) attached to a task, such as an incident, problem, or change
are of equal importance. However, on various scenarios and user interfaces, you might want to
configure a hierarchy of preferred SLAs. After configuring the hierarchy, you can determine from
the list, the most important or preferred SLA that can be displayed.
The slm-timer-config-api application provides the ability to set a preferred SLA for
a given task using the configuration that is either dynamic, such as First SLA to breach or
declarative from a hierarchical mapping of first to matching SLA definitions.
The SLA timer configuration provides the following foundation data which also serves as an
example to customize.
Do not show SLA timer
Use this configuration if you do not want to show the timer component.
Show SLA that will breach first
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3525


<!-- page 3526 -->
Use this configuration to determine the task SLA that has the earliest breach time.
The SLA Timer Configuration application comes only with demo data, it is always advisable to
create your own configuration records. You can use the demo data as a guide to help ensure the
preferred task SLA record is shown against a particular task.

Procedure
1. Navigate to All > Service Level Management > Administration > SLA Timer Configuration.
2. Click New.
3. On the forms, fill in the fields.

Name

Description

Name

The name of the SLA timer configuration

SLA timer source

The source of the SLA timer. The available
options are:
None
The timer is not displayed.
First to breach
Displays the task SLA with the
earliest breach time.

Note: When a task SLA
with the earliest breach
time pauses, goes out of
schedule, or is completed,
the next task SLA is
displayed.
Task to SLA mapping
Uses a customized display
hierarchy of task SLAs. SLA
Definition mappings must be
defined to ensure a preferred
SLA definition is available.
Show completed

Option to display the preferred task SLA that
includes the breached stage. If this option is
selected, on completion, the process will not
move to the next SLA priority.

Show cancelled

Option to display task SLAs in the cancelled
state.

Show actual time

Option to display the actual time remaining
until breach time, including time outside
business hours.

4. Click Update.
5. Open the SLA configuration you created.
6. If the SLA timer source field value is set to First to breach, configure the additional filters and
target fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3526


<!-- page 3527 -->
Name

Description

Advanced condition

Option to display the condition builder to
define and filter the task SLA displayed.
These conditions are executed on the
definitions in the SLA Definition [contract_sla]
table.

Condition

The condition builder to define the filter.

Note: When conditions are defined,
the task SLA that is earliest to the
breach time and that satisfies all
defined conditions is displayed. If all
SLAs that satisfy the defined conditions
have already been breached, the SLA
that has breached first among SLAs
that meet the defined conditions, is
displayed.
This field appears only when the Advanced
condition check box is selected.
Target

The target used to map the SLAs. The
available options are:
None
Displays the task SLA with the
earliest breach time.
Response
Displays the task SLA with the
earliest breach time for tasks for
which Response is configured
as the target field in the SLA
definition.
Resolution
Displays the task SLA with the
earliest breach time for which
Resolution is configured as the
target field in the SLA definition.

Note: You can customize the available
options using the sys_choice table.

7. If the SLA timer source field is set to Task to SLA Mapping, configure the mappings.
8. Select New in the SLA timer configurations mappings related list.
9. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3527


<!-- page 3528 -->
Name

Description

SLA timer config

The desired timer configuration. If the timer
was created from a related list, this field will
be auto-populated with the parent record.

Order

The hierarchical order of the task SLA. This
value is pre-populated. However, you can edit
it based on your requirements.

Table

The table that the task belongs to,which is
used as a reference qualifier on the SLA
definition. The available values are Incident,
Problem, or Change.

SLA definition

Select the SLA definition that is available for
the table.

Note: If an identical mapping for the Order or SLA definition in the selected table, the
configuration is prevented from using business rules. This check ensures that there is
always only one preferred SLA definition at each level in the hierarchy.
10. Click Submit.
Trouble?
If no configuration sys_id is provided to the sla-timer-configuration API, then default behaviour is:
• SLA Timer source: First to Breach
• Show cancel: true
• Show complete: true
However, as a best practice do not provide a configuration sys_id to the application. Setup their
your own configuration, even if it is identical to the default behavior.

Extend SLA condition rules
You can create custom SLA condition class and condition rule records.
Custom SLA condition class and condition rule records enable you to modify the logic around
one or more of the transitions involved in task SLA processing. The custom records can then be
applied globally to the processing of all task SLA records or on a per SLA definition basis.
Create a custom SLA condition rule
You can create custom SLA condition rules to determine whether an SLA should attach, pause,
complete, reattach, or cancel. SLA condition classes contain script to define processing for an
SLA condition rule. Create an SLA condition rule after the SLA condition class is defined.

Before you begin

Role required: admin

Procedure
1. Define an SLA Condition Class.
Navigate to System Definition > Script Includes and click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3528


<!-- page 3529 -->
Within the script in the SLA Condition Class, provide methods to modify one or more of the
default SLA transitions (attach, pause, complete, reattach, cancel), defining the conditions
for SLA processing. For example, the attach method defines when an SLA is created and
attached to a task. The methods need to test a condition, referencing the condition fields on
the SLA Definition form.
2. Create an SLA Condition Rule.
a. Navigate to Service Level Management > SLA Condition Rules and click New.
b. Name the SLA Condition Rule.
c. Select the Script Include defined above in the Class Name reference field.

Example: Example of an SLA Condition Class
For example, including the following method in an SLA Condition Class attaches the SLA if its
condition matches the SLA's start_condition field:
attach: function() {
return (this._conditionMatches(this.sla.start_condition));
},
The following is an example which shows the format of a script include that would extend the
SLAConditionBase class and provide methods for each of the SLA transitions:
var SLAConditionLocal = Class.create();
SLAConditionLocal.prototype =
Object.extendsObject(SLAConditionBase, {
attach: function() {
// insert script here
},
pause: function() {
// insert script here
},
complete: function() {
// insert script here
},
reattach: function() {
// insert script here
},
cancel: function() {
// insert script here
},
});
Invoke an SLA condition rule globally
You can globally change the default set of SLA condition rules.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3529


<!-- page 3530 -->
About this task
By default, the SLAConditionBase is used for the SLA condition rules. This can be changed
by doing the following:

Procedure
1. Navigate to All > Service Level Management > SLA Properties.
2. Change the value of the com.snc.sla.default_conditionclass SLA property to the
new condition rule name:

Note: This is the default condition rule, if no condition rule is specified on an SLA
definition.
Related topics
SLA condition rules
Invoke SLA condition rules on a specific SLA definition
You can change the SLA condition rules for a specific SLA definition.

Before you begin

Role required: admin

About this task

In cases where a particular SLA requires that specific SLA condition rules should be used, you
can specify the condition rule to be used within the relevant SLA definition form.

Procedure
1. Navigate to All > Service Level Management > SLA > SLA Definitions.
2. Open an SLA definition record.
3. Configure the form to add the Condition type field to the form.
4. Specify the appropriate SLA condition rule in the Condition type field

Note: If no condition rule is defined, the global default condition rule is used.
Related topics
SLA condition rules

Create SLA breakdown definitions
You can define an SLA breakdown to capture, store, and relay detailed task ownership
information and duration for all task SLA records related to a specific task (incident). SLA
breakdown is configurable and you can configure it on the basis of a specific SLA definition.

Before you begin

Role required: admin

About this task

SLA breakdown data includes:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3530


<!-- page 3531 -->
• Task SLA
• SLA Definition
• Assigned to
• Assignment Group
• Start time
• End time
• Business time during this period
• Total % of allocated SLA Duration
• Whether the Task SLA is breached during this period

Note: SLA breakdown is on a per task-type basis. For example, once you define a
breakdown definition for Incident that uses the breakdown table [SLA Breakdown by
Assignment], you cannot define another breakdown definition for this task type.
SLA breakdown by assignment

Procedure
1. Navigate to All > Service Level Management > Breakdowns > Breakdown definitions, and
click New.
2. On the form, fill in the fields.
SLA Breakdown Definitions
Field

Description

Name

Name of the SLA breakdown.

Task table

Task table on which the definition is applicable.

SLA breakdown table

Table where the SLA breakdown data is stored.

Note: For the Madrid release, only a single
breakdown table is available: [SLA Breakdown
by Assignment].
Active

Check box to select if the SLA breakdown definition
is active.

3. Click Submit.
The SLA Breakdown Definition Fields and the SLA Definitions related lists appear.
4. Under the SLA Breakdown Definition Fields tab, click New and fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3531


<!-- page 3532 -->
Field

Description

Breakdown field name

Field in the breakdown table that is mapped
with the field that you select in the source
field.

Source field name

Field in the task record table which is
mapped to the breakdown field.

5. Click Submit.
The breakdown field and the associated source field appears under the SLA Breakdown
Definitions Field tab.
6. Under the SLA Definitions tab, click Edit to relate one or more SLA definitions to the
breakdown definition.
7. In the slush bucket, under Collection, select SLA Definitions to related to SLA Breakdown
Definition.
The breakdown is applied on this task record.
8. Click Save.
The selected SLA Definitions appear.

Using Service Level Management
Use the Service Level Agreement (SLA) to define a set amount of time for a task to reach a certain
condition, to ensure that incidents are closed or resolved according to the expectations set for
customers.

SLA calculation
SLAs are calculated and assessed by a business rule and scheduled jobs that run in the
background.
The mechanisms that control SLA Workflow and SLA Automation are independent of each other.
You may have a requirement to send out email notifications from the SLA Workflow displaying the
current elapsed percentage of the SLA. However, this does not work because using percentage
in a notification only displays the most recently calculated value of the Task SLA. This results
in inaccurate values sent out in email when using SLA calculated values in a Task SLA email
notification.
One solution is to specify elapsed percentage in SLA notifications by using notifications for each
percentage level. For example, an email notification for "75 percent SLA Warning" is created
and a special event is used to trigger that notification. The event can be called "sla.warning.75".
Another solution is hard-coding these email notifications to trigger at a specified duration
percentage, and configure the workflow linked to that SLA definition to send an email notification
after waiting an elapsed percentage.
Run the 2011 SLA engine asynchronously
By default in the 2011 SLA engine, the SLA processing is performed by the Run SLAs business
rule. This business rule runs synchronously and is the suggested configuration.

Before you begin

Role required: sla admin, admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3532


<!-- page 3533 -->
About this task

SLA processing runs asynchronously. For example, you can run this for performance reasons,
such as to avoid delays when a user saves a new incident record. While the SLA engine is
running asynchronously, there can be a short delay before the Task SLA records are available
after updating a Task. Refresh the form to see the updated Task SLAs.
Use synchronous processing to get the best user experience. Asynchronous processing mode is
used only when there a performance issues.

Note: In the 2010 engine, the Process SLAs business rule runs the asynchronous
processing.

Procedure
1. Navigate to All > Service Level Management > Properties > SLA Engine.
2. Select Yes for the Execute the 2011 SLA Engine asynchronously
(com.snc.sla.engine.async) property.
3. Click Save.
Recalculate SLA times automatically
By default when a user opens a task, the SLA timing information for that task is not automatically
recalculated.

Before you begin

Role required: admin

About this task

You can enable this information to be automatically recalculated each time the task is opened, to
provide current information rather than information from the last scheduled job.

Procedure
1. Go to Service Level Management > Properties > SLA Engine.
2. For the Recalculate Task SLA records when a task's form is displayed property, select the
Yes check box.

Note: This property is disabled by default because there is a potential performance
impact when several users concurrently open tasks.
3. Click Save.
Use exact times in SLA calculations
When business percentages are used for SLA calculations, they are rounded up to two decimal
places.

Before you begin

Role required: admin

About this task

As a result, breaches can occur when SLA calculations are rounded up to 100%. You can enable
SLA calculations to instead use the business time or actual time left.
For example, a business percentage of 99.951% is rounded up to 100%, which causes a breach.
For more accurate SLA calculations, enable the SLA engine property for using the exact value of
the business time left if a schedule is specified or the actual time left if the SLA has no schedule
specified.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3533


<!-- page 3534 -->
Procedure
1. Go to Service Level Management > Properties > SLA Engine.
2. For the Use field "business_time_left" to calculate breach time instead of
"business_percentage" field property, select the Yes check box.
3. Click Save.

Repair Service Level Agreement (SLA)
SLA Administrators can repair SLA records to ensure SLA timing and duration information is
accurate.
Repair of SLAs is useful to determine accurate timing information if your system has SLA records
that contain incorrect values. For example, you may need to repair SLA records as a result of:
• Changing the SLA definition or SLA schedule for any task SLA that is still active.
• Changing the conditions of the SLA definition for any task SLA that is still active.
• Some other system anomaly.
The repair function removes the SLA record, then recreates and recalculates it from the start,
including recreating the flow. The repair uses the history from the Task and if appropriate will also
create new Task SLAs that did not previously exist. For example, a new Task SLA may be needed
if a new SLA Definition has been added since an associated Incident was created or updated.
SLA repair does not use the history of dot-walk fields but considers only the final state of
the dot-walk fields. For example, if a pause condition is set to an incident dot-walk field as
incident.caller_id.location and in real time the location is set to London, and later
changed to San Diego. Then, when the SLA repair runs, only the final location is considered. So,
if SLA is in pause state when the incident.caller_id.location is San Diego, repair
pauses immediately as it does not consider the previous London location.
You can repair single SLAs from the relevant form or multiple SLAs from relevant lists.

Note: SLA repair is not available on SLA definitions, as running a repair operation for
an SLA definition could affect large numbers of records on your system, with significant
performance impact.
You can also configure and manage SLA repair functions.
Configure SLA repair
Administrators can set SLA repair properties and view repair logs.

Enable or disable SLA repair
The Repair SLA function is enabled for all new installed instances running the 2011 engine, but
is disabled by default for upgraded instances. If disabled, no SLA repair functions are available,
including all SLA repair modules, SLA repair logs, and UI actions.

Note: Repair actions will not be available for instances that are not running the 2011

engine. To enable or disable SLA repair, use the com.snc.sla.repair.enabled
repair property.

View repair logs
An SLA repair log record is created each time a repair action takes place with details such as
who initiated the repair and start and end date and time. The log record contains a number of
child SLA Repair Log Entry records related to it. Each repair log entry has a type of either Before
repair or After repair that will contain the appropriate values from each Task SLA record that is
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3534


<!-- page 3535 -->
repaired. If there is only a Before repair entry record for a task SLA, this indicates that it has been
deleted. If there is only an After record, the repair function has created a task SLA that did not
previously exist.
Navigate to Service Level Management > Repair Logs to view repair log information:
• Active Repairs: view repairs that are still in progress.
• My Repairs: view repairs you have run.
• All Repairs: view all repairs.
• Repair Entries: view SLA Repair Log entries for all repairs that have run.
Repair SLA from a form
You can repair task SLA records from the Task form, or from the task SLA form for an SLA
associated to a Task.

Before you begin

Role required: admin

About this task

You can also repair multiple task SLA records from a list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3535


<!-- page 3536 -->
Procedure
1. To repair all SLAs associated to a specific task, open that form and select the Repair SLAs
related link.

2. Alternatively, to repair a specific SLA on a specific Incident record, open the Incident record,
open the SLA record associated with that incident, then select the Repair button on that SLA
form.
The SLAs selected are repaired. When the repair process is completed, the user selecting to
repair receives a standard notification of the repair results.

Note: Closing the progress dialog box does not stop the repair process. You can go to

Active repairs or My repairs and click Show progress to view the progress dialog again.
Repair SLAs from a list
You can repair multiple SLA records from a list of task or SLA records.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3536


<!-- page 3537 -->
About this task

You can also repair SLA records from the relevant Task form, or from the SLA form for the SLA
associated with the task.

Procedure
1. Navigate to a list of SLA records or task records.
2. Check the records to repair against.
3. Select the Repair SLAs for selected list action.
4. Alternatively, to repair SLAs for all records on that list, select the Repair for all filtered
definitions related link.
The SLAs selected are repaired. When the repair process is completed, the user selecting to
repair receives a standard notification of the repair results.

Note: Closing the progress dialog box does not stop the repair process. You can go to

Active repairs or My repairs and click Show progress to view the progress dialog again.
Related topics
Repair Service Level Agreement (SLA)

View SLA timeline
View an SLA timeline to review its details and its progress over time.

Before you begin

Role required: itil, sla_admin, sla_manager

Procedure
Open an SLA timeline from the SLA definition form, Task form, or Task SLA form.
Location

Navigation

SLA definition

Navigate to Service Level Management > SLA
> SLA Definitions. Select the name of a SLA
definition and then select the Validate SLA De­
finition link.

Task SLA record

Open a task SLA record from the task form.
Select the Show SLA Timeline link to view the
SLA timeline for that specific SLA.
• Select the Show SLA Timeline link that ap­
pears under related links in the task form.
The SLA Timeline appears with the list of all
the SLAs that are associated with the task.

Task form

• Select and right-click on a Task SLA in the
related list on a task form such an incident
record and select the Show SLA Timeline
option. The SLA Timeline appears for the
specific SLA.

The SLA timeline for the selected task or incident is displayed. It includes SLA report details and
a visual representation of the SLA's progress over the lifetime of the task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3537


<!-- page 3538 -->
Add custom business rules to Service Level Agreement (SLA)
You can add custom business rules to your SLAs.

Before you begin

Role required: admin

Procedure
Select one of the following methods to add custom business rules.
Option

Description

Prior to updating your task, add a call to
setWorkflow(false) on the GlideRecord
object for the task within the business rule that
is updating the task. This prevents the busi­
ness rules from being processed.

Note: The setWorkflow(false) disables
processing of all engines and the update
does not appear in the audit history of
the task.
For example, a script that copies the breach
time to a custom field on the task.
Use setWorkflow(false)

(function(){
if
(current.planned_end_time.cha
nges()) {
var taskGr =
current.task.getRefRecord();
taskGr.u_sla_breach_time =
current.planned_end_time;
taskGr.setWorkflow(false);
taskGr.update();
} )
();
In your custom business rule, use the Script
field to generate a scheduled job to update
the task. To ensure that the scheduled job is
queued for processing immediately, it must be
of type Run once, and have next action time of
Now.

Create a sys_trigger (Schedule job) to up­
date the task

Note: The ScheduleOnce script in­
clude includes functions to specify the
target record and when to run the sched­
uled job. This enables you to specify the
script to be executed and call another
function to create the appropriate record
in the sys_trigger table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3538


<!-- page 3539 -->
Option

Description

For example, a script to create a scheduled job
that copies the breach time from the task SLA
to a custom field on the task.
(function(){
if
(current.planned_end_time.cha
nges()) {
var scheduleJob
= new ScheduleOnce();
scheduleJob.setDocument(t.tas
k.getRefRecord());
scheduleJob.script =
"current.u_sla_breach_time.se
tValue('" +
current.getValue('planned_end
_time') +
"');current.update();";
scheduleJob.schedule();
}
)();

Add custom business rules to Service Level Agreement (SLA) considerations
Prior to adding custom business rules to the task SLA table, you must consider a few points
regarding the processing and calculation of the task SLA based on your organization’s needs.

Add custom fields to the task SLA table
You can add custom fields to the task SLA table and write business rules to populate them. This
does not impact the SLA engine. However, you must consider performance implications, if any, of
these business rules since task SLAs are updated frequently during their lifecycle.

Points to consider
• Business rule that directly updates the parent task when an SLA is updated.
Avoid writing a business rule on the task SLA table that updates the parent task directly. Doing
so causes recursive processing of the business rules. This is represented in the diagram.
Recursive business rule

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3539


<!-- page 3540 -->
• Business rule that updates the default fields on a task SLA.
Avoid writing a business rule on the task SLA table that updates the default fields. These
default fields are managed and updated by the SLA engine and any updates made to them
might result in the following.
◦ Fields being ignored, overwritten, or both the next time the SLA is calculated.
◦ Incorrect calculations of other values on the task SLA.

Monitoring Service Level Agreement (SLA)
You can view the details for every task SLA record created for a task.
In the task SLA record, you can view the task SLA details such as the stage the task SLA is in and
if it has breached.
You can also view the target of the agreement being defined: None, Response or Resolution.
Target is used for filtering, searching, and reporting purposes only.

Note: This feature is available only in new instances starting with Jakarta
or a later release. The Problem Management Best Practice – Jakarta plugin
(com.snc.best_practice.problem.jakarta) plugin must be activate.
In addition, you can get an overview of the timings for the task SLA such as the actual and
business elapsed time and percentage, and the actual and business time left in days and hours.
Verify SLA definition using SLA timeline
You can verify that a task is mapped appropriately with a defined SLA using the SLA timeline. If
a task is mapped with the SLA definition, the SLA timeline displays a graphical representation of
the progress of the task SLA.

Before you begin

Role required: admin

Procedure
1. Navigate to All > SLA > SLA Definitions.
2. Click the SLA Definition that you want to verify.
3. Click the Validate SLA Definition related link.
The SLA Timeline page appears.
4. From the SLA Definition Picker, select the SLA definition for which you want to confirm if an
appropriate task is mapped.
5. From the Task Record Picker, select the task that must be mapped to the SLA definition.
If the selected task is mapped to the SLA definition, then the SLA timeline displays a graphical
progress of the task SLA.

Note:
When a selected task does not have any task SLA attached to it, the SLA timeline still
displays the update to the task when the Show all Task updates check box is selected.
This information can be used for debugging the task SLA.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3540


<!-- page 3541 -->
Service Level Management reference
Reference sections provide additional information about components installed with Service
Level Management.

Flows for SLA
Use the flow actions to send SLA notifications when the duration specified in the SLA definition is
crossed.
Starting with the Yokohama release, the new base system flows replace the existing workflows
for Service Level Management. However, you can continue to create custom workflows or use
the existing ones. To migrate your existing workflows to flows, check the new base system flows
available in Workflow Studio for guidance. For any new requirements, use flows.
You can create and edit flows using Workflow Studio. The default flow that is available with the
Service level management plugin is Default SLA flow.
The Default SLA flow creates the events that send out notifications. For example, it creates an
event to send a notification to the user assigned to a task, such as an incident, when the task
SLA reaches 50% of its allotted time.
The SLA Notification and Escalation flow creates the events that send out notifications. When
a task reaches 50% of its allotted SLA duration, a notification is sent to the assignee and the user
listed in the Supported by field on the configuration item. At 75% and 100%, a notification is sent
to the assignee and the assignee's manager.

Note: This feature is available only in new instances starting with Orlando or a later
release.
For more information on SLA notifications, refer SLA notifications.
Related topics
Flow Designer

SLA notifications
SLA sends notifications at certain events defined in the workflow.
By default, SLA notifications are sent on three occasions:
1. SLA is at 50% of the duration specified in the SLA Definition: Notification is sent to the user
in the Assigned to field mentioned in the incident form and the Supported by field in the
configuration item form.
2. SLA is at 75% of the duration specified in the SLA Definition: Notification is sent to the user in
the Assigned to field mentioned in the incident form and the manager of the user.
3. SLA is breached: Notification is sent to the user in the Assigned to field mentioned in the
incident form and the manager of the user.
For more information on SLA flows, refer Flows for SLA.

SLA duration types
You can select one of two SLA duration types to define the length of time within which a task
must be completed before the SLA is breached.
If an SLA schedule is defined, the duration works along with the schedule. In a user-specific
duration, you can choose to specify the length of time that an SLA must run before it is marked as
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3541


<!-- page 3542 -->
breached. Relative durations specify durations that are relative to the start time of the task SLA
and are defined using a script.
When you define an SLA, you can select either a user specified duration or a relative duration.
User specified duration
Specifies a static duration period, such as 8 hours, along with a business schedule.
The Duration field is displayed, enabling you to specify the length of time in days,
hours, minutes, and seconds that the SLA must run before it is marked as breached.
The number of days specified in the Duration field is converted to 24- hour blocks.
Each time that you set a duration, an example breach time information message is
displayed at the top of the form. This information assists you in understanding how
the breach date is calculated. For example, if the current date is January 1, 2015,
the time is 10:30 am, and the duration is set to 10 hours and no schedule has been
selected, the following information message is displayed: An SLA starting
now will end breach on 2015-01-01 20:30 (Actual elapsed
time: 10 Hours).
Relative duration
Specifies a duration relative to the start time of the task SLA and is defined
using a script. For example, you can select a relative duration such as Breach on
Due Date, End of next business day or Next business day by 4pm. The set of
relative durations is defined in the core configuration using script-based duration
calculations.

Note: Pause conditions are not compatible with relative durations.
You can use a relative duration within the Service Level Management application in the
following ways:
• Specify a relative duration.
• Relative duration usage scenarios.
Specify a relative duration
To specify a relative duration, select an option such as Next business day by
4pm or End of next business day from the list of available relative durations in the
Duration type field.
When you select a relative duration such as Next business day by 4pm, the
Relative duration works on field appears. You can specify the record that the
relative duration should be calculated for. You can select to use Task record or SLA
record and the record you select is available as current for the relative duration
script.

Note: If a relative duration is selected, the example breach date information
message is not displayed.
If your task record has a target date and time field, you can create an SLA with a
relative duration based on that field.
Relative duration usage scenarios
If a schedule is selected in the SLA definition, the SLA duration works with the SLA
schedule. For example, an SLA might have a user-specified duration of 16 hours
with the schedule as 8-5 weekdays. If this SLA starts to run for a task at 8:00, it
breaches at 16:00. The breach time is calculated from the schedule that defines
working time as eight hours per day from Monday to Friday. So the 16-hours duration
equates to two days later in the schedule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3542


<!-- page 3543 -->
The Breach on Due Date sets the breach time of the SLA to the date and time from
the Due Date field of the task that the SLA is attached to.
If the Due Date field is empty or occurred in the past, the breach time of the task
SLA is calculated to be one second ahead of the task SLA start time. If the date
and time in the Due Date field is outside the schedule for the task SLA, the breach
time is set to the next available scheduled time. For example, if the SLA definition
specifies a task SLA schedule as 08:00-16:00 and the value in the Due Date field is
Wednesday 11th Jan 2017 20:30, the breach time is set to Thursday 12th 2017 Jan
08:00.
If your task record has a target date and time field, you can create an SLA with a
relative duration based on that field.

Schedules within SLA
Schedules within SLA enable you to define the time periods during which the SLAs accumulate
business time.
Schedules are typically based on the working hours of the resource or departments to whom
a task is allocated. When you define an SLA, you can select a schedule during which the SLA
will accumulate business time. You can specify the schedule that each SLA must use in the SLA
definition form.

Schedules in SLA definitions
You can specify the schedule to be used when creating new task SLAs in the Schedule source
field. You can specify one of the following options:
• No schedule: If the No Schedule option is selected, the SLA will calculate based on a 24 x 7
schedule.
• SLA definition: If the SLA definition option is selected, the Schedule drop-down list appears.
• Schedule: Specify the hours during which the SLA timer runs. These set of schedules are
defined in the core configuration. For example, you can select a schedule of 8-5 weekdays or
8-5 weekdays excluding holidays.
• Task table field: This option picks its title from the option selected in the Table field earlier on
the SLA Definition form. For example, if Incident is selected in the Table field, then this option
appears as Incident field. If the Task table field option is selected, the Schedule source field
drop-down list appears.
• Schedule source field: This option allows you to select the appropriate field from the task such
as an incident or problem that will provide the schedule. For example, Configuration item >
Schedule.

SLA duration and schedules
Schedules have an impact on the duration specified in an SLA definition.
This impact is reflected in the timings that are taken into consideration while calculating an SLA.

Note: If a schedule is not selected for an SLA, the SLA will run 24X7.
Consider a scenario where you select a duration of one day, which is 24 hours, and a schedule
of 9 am to 5 pm, which is 8 hours. The SLA calculation will distribute the 24 hours across three
working days of 8 hours each. So a team working on a task associated with this SLA has 3 days to
complete the task before the SLA is breached.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3543


<!-- page 3544 -->
Time distribution

Time zones in SLAs
You can specify the geographical time zone that is used for schedule calculation.
Specify the time zone source to be used when creating task SLAs. You can select one of the
following options:
• The caller's timezone: If this option is selected and the caller has not selected a time zone,
then the system time zone is used.
• The SLA definition's timezone: If the The SLA definition's timezone option is selected, the
Timezone list appears.
Timezone: Specify a time zone for the SLA. The time zone can be the system time zone or active
standard geographical time zones.
• The CI location's timezone
• The task location's timezone
• The callers' location's timezone

Note: If you select a time zone source other than the The SLA definition's timezone and
the time zone derived from the time zone source is empty, the system time zone is used.

SLA conditions
SLA conditions determine when a task SLA record is attached, paused, resumed, reset,
canceled, and completed.
On the SLA definition, you specify up to six conditions that are evaluated each time a task record
is created or updated. For example, for an SLA to attach to a task, the start conditions must match
and stop conditions must not match.
SLA conditions work in the following ways:
• SLA conditions
• SLA condition evaluation

SLA conditions
You can set up to six SLA conditions: start, cancel, pause, resume, stop, reset.
Start condition
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3544


<!-- page 3545 -->
Enables you to define the conditions under which the SLA will be attached.
You can choose the conditions from the When to cancel list under which the SLA
will be canceled.
• Start conditions are not met option: If one or more of the specified start
conditions change, then the SLA will be canceled. The Start conditions are not
met option is selected by default.
• Cancel conditions are met option: The start condition has to be met only once,
thereafter the SLA will only cancel when the cancel condition is met.
• Never option: The SLA will never be canceled.
Select Retroactive start to choose a date and time field from the task that will
provide the start time of the task SLA. If you select the Retroactive start check box,
the Set start to field appears offering the date and time fields available on the task
type that this SLA definition applies to. For example if you select Retroactive start
on a Priority 1 SLA definition and then choose Created in the Set start to field, then
the SLA is attached with the start time being the date and time from the Created
field on the Incident.
Cancel condition
Enables you to define the conditions under which the SLA will cancel. You
can specify the cancel conditions at the same time when you specify the start
conditions.
Pause condition
Enables you to define the conditions under which the SLA will suspend increasing
elapsed time.
You can choose the conditions from the When to resume list under which the SLA
will resume increasing elapsed time.
• Pause conditions are not met option: If one or more of the specified pause
conditions no longer match, then the elapsed time will continue to increase.
• Resume conditions are met option: If one or more of the specified resume
conditions match, then the elapsed time will continue to increase. The Resume
conditions are met option is selected by default.
Resume condition
Enables you to define the conditions under which under which the SLA will resume
increasing elapsed time. You can specify the resume conditions at the same time
when you specify the pause conditions.
Stop condition
Enables you to define the conditions under which the SLA completes. If all of the
specified stop conditions match, then the task SLA will complete regardless of
whether it is breached.
Reset condition
Enables you to define the conditions under which the running SLA will be
completed and a new SLA will be attached. For a new SLA to be attached, the start
condition must match.
Reset condition also helps to configure SLAs when the value of any specific field on
the task record changes, changes to or changes from a specific value in the record.
For example, the value of the Location field in the task record is 101 Broadway
East, Seattle,WA. If you set the SLA reset condition as Location changes from 101
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3545


<!-- page 3546 -->
Broadway East, Seattle,WA, any change in the value of the Location field resets the
SLA of the task record.

SLA condition evaluation
Every task in the system is evaluated in the following order:
• Process new SLAs-- Determine if a new SLA record must be attached to a task
• Process existing SLA records attached to a task.
SLA conditions are evaluated in the following ways:
• Attach if start condition matches and both the stop and cancel conditions don't match.
• Complete if the stop condition matches.
• Pause if the pause condition matches.
• Resume if the pause condition doesn't match or resume condition matches.
• Reattach if both the reset and the start conditions match.
• Cancel if the start condition doesn't match or cancel conditions matches.
Consider this evaluation order when you create conditions. For example, if your Start condition
is a subset of your Stop condition, the Stop condition will always match when the Start condition
matches and the SLA will never attach. This includes processing any new SLAs that were just
created.
Similarly, if your Pause condition is a subset of your Start condition, the SLA will attach but will
permanently be in Paused state. As soon as the Pause condition does not match, the equivalent
Start condition will also not match and that task SLA record will be canceled.
In addition, if you create a SLA definition with a Start condition and a Pause condition that are
mutually exclusive, your SLA will never pause but will always be canceled first. For example,
for an SLA definition where the Start condition is State is one of "New, Active" and the Pause
condition is State is "On Hold", when the Task is updated to state On Hold, the start condition
will no longer match and the task SLA will be canceled.

SLA transitions
SLA records pass through a series of transitions during processing.
The following transitions exist for an SLA:
• Attach: when an SLA is created and bound to a task.
• Pause: when an SLA should temporarily stop tracking time.
• Resume: when an SLA should resume tracking elapsed time.
• Complete: when an SLA is marked complete.
• Reattach: when an SLA is marked completed and a new copy is reapplied.
• Cancel: when an SLA is cancelled.
SLA conditions determine what action is performed on a task SLA record.

SLA condition

Resultant action on task SLA record

If Start condition matches and both Stop and
Cancel conditions don't match

Attach

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3546


<!-- page 3547 -->
SLA condition

Resultant action on task SLA record

If Start condition matches, and When to
Cancel is set to Start conditions are not met

Cancel if one or more of the specified start
conditions no longer match.

If Start condition matches, and When to
Cancel is set to Cancel conditions are met

Cancel when cancel conditions match.

Pause condition matches

Pause

If Pause condition matches, and When to
Resume is set to Pause conditions are not
met

Resume if one or more of the specified paused
conditions no longer match.

If Pause condition matches, and When to
Resume is set to Resume conditions are met

Resume if one or more of the specified resume
conditions match.

Start and Reset

Reattach

Stop

Complete

Cancel

Cancel

SLA condition methods when the default cancel and resume conditions are
selected

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3547


<!-- page 3548 -->
SLA Conditions Methods when the cancel and resume conditions are selected

Each of these conditions is defined as a method within a Script Include, referenced by an SLA
Conditions Rule record.

SLA condition rules
SLA condition rules control how the different conditions you define in an SLA definition are
combined to determine whether an SLA should attach, pause, complete, reattach, or cancel.
The way that the conditions in an SLA definition are interpreted, to control transitions in state,
can be varied using SLA Condition Rules. SLA Condition Rules are defined globally, and can be
overridden for specific SLA definitions.
SLAConditionBase is the default set of SLA condition rules.
Navigate to Service Level Management > Administration > SLA Condition Rules to see a list of
SLA condition records.
SLAConditionBase script
The SLAConditionBase script include implements the default SLA transitions.
The SLAConditionBase script include implements the default SLA condition processing.
To view the script, navigate to Service Level Management > Administration > SLA Condition
Rules, then click on the SLAConditionBase entry to view details. The record in the Class name
field is the script include that defines the condition processing.

Note: We recommend you do not modify this script , but use it as an example for creating
your own script includes.
The following diagram shows how the transitions work:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3548


<!-- page 3549 -->
SLAConditionBase

SLAConditionSimple script
The SLAConditionSimple script include provides an example modification of default SLA
condition processing.
The SLAConditionSimple script include is one of the default supplied SLA condition rules.
This shows an example of how you can modify and extend condition processing, by overriding
the SLAConditionBase methods, with a 'simple' variation that interprets each condition to match
a particular transition. For example, for an SLA to attach only the start condition is checked. This
affects attach, reattach, and cancel.
To edit this script, navigate to Service Level Management > Administration > SLA Condition
Rules, then click on the SLAConditionSimple entry to view or modify details. Click Class name
field to open the script include that defines the condition processing.
The following diagram shows how the transitions work:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3549


<!-- page 3550 -->
SLAConditionSimple

Service Level Agreement (SLA) process example
As work is done on the relevant task, the SLA may change stage appropriately, depending on the
information defined for that SLA in the relevant SLA definition.

Before you begin

Role required: admin

About this task

For example, if an incident is resolved within the time specified, the SLA stage is typically set to
Complete.
Similarly, if the incident does not reach the required condition within the set amount of time, the
Task SLA record associated to that Incident marked as Has Breached. For example, by default, if
a P1 incident is not resolved within 8 hours, the Task SLA for that incident will have Has Breached
set to true.
This example demonstrates how an SLA can be attached to an incident, then progressed to
completion.

Procedure
1. Navigate to All > Incident > Create New.
2. Set both Impact and Urgency to 1.
This setting changes the Priority to 1 - Critical.
3. Save the form.
The Task SLA Related List should now have a Priority 1 SLA attached to this incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3550


<!-- page 3551 -->
Note: The default Priority 1 resolution (8 hour) SLA definition record is used to create
and attach this Task SLA.
4. Change the Impact to 2, which changes the Priority to 2 - High, then save the form.
The Priority 1 SLA is now marked Cancelled, and a Priority 2 SLA has been attached, because
of the conditions on the SLAs.

5. Change the Incident State to Awaiting User Info, then save the form.
Awaiting User Info is a Pause condition on the Priority 2 SLA, so the SLA is marked Paused.

Note: The pause duration on Task SLA gets updated only after the SLA moves out of
pause.

6. Change the Incident State to Active, then save the form.
Because the incident is no longer in a Pause condition, it resumes timing.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3551


<!-- page 3552 -->
7. Enter any Close code and Close notes values in the Closure Information section of the
incident.
8. Change the Incident State to Resolved, then save the form.
The SLA is marked Completed.

Scheduled jobs for SLA
SLA has default scheduled jobs to regularly refresh the time calculations on each active task
SLA.
• SLA update (breach after 30 days): repeats every 5 days
• SLA update (breach within 1 day): repeats every hour
• SLA update (breach within 1 hour): repeats every 10 minutes
• SLA update (breach within 10 min): repeats every 1 minute
• SLA update (breach within 30 days): repeats every day
• SLA update (already breached): repeats every day

Note: By default, the SLA update (already breached) scheduled job will
calculate either for up to one year after it was breached or if 1000% of its allocated time
is breached. You can set this maximum actual elapsed percentage value property in the
SLA Engine properties.
Scheduled job runs more frequently when the task SLA is closer to being breached.
Related topics
Event scheduling
Create a scheduled job
SLA engine properties

SLA timeline
The SLA timeline is a feature of the Service Level Management application. The SLA timeline
detail helps you understand the progress of an SLA. The timeline provides detailed insight to the
task updates which triggered stage changes during the life cycle of a task SLA.
The SLA timeline detail helps you to:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3552


<!-- page 3553 -->
• View the progress of SLAs, OLAs, and underpinning contracts.
• View related task updates.
• Identify the reason a task update triggered a specific stage in the task SLA.
• Debug and verify a task SLA and the SLA definition.

Note: This feature is available only on the SLA Engine 2011 version.
Role required: itil, sla_admin, sla_manager
SLA Timeline

SLA Timeline field description
Levels

1

Field

Description

Name

Specifies the SLA definition name and lists the task SLAs
that result from the SLA definition. This field also displays,
in the form of symbols, the last known stage, and the
completion or the cancellation status, if any, of the task SLA.
Business elapsed time:
Specifies the business time that has accumulated from the
beginning of the SLA to its end.
Business time left:

2

Specifies the business time that is remaining by which the
Preference to see
Business elapsed time SLA task must be completed.
or Business time left on
Note: The selected option from the choice list
timeline row
is saved as a user preference and is selected by
default when you navigate to the SLA timeline in the
future. Whether you set the system property Always
populate business fields on a Task SLA to true or
false, the SLA timeline always populates the Business
fields for representation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3553


<!-- page 3554 -->
SLA Timeline field description (continued)
Levels

Field

Description

Enables filtering of the data displayed by the SLA timeline .
You can filter data by selecting the following options:
• Show only breached: When selected, displays the task
SLAs that are breached. This check box appears only
when the SLA engine property Enable compatibility with
2010 ‘breached’ stage for SLAs is set to false.
3

• SLA Stage: Select to view the task SLA records that
match the final stage of a specific task SLA.

Note: If the SLA engine property Enable

compatibility with 2010 ‘breached’ stage for SLAs
is set to true, the Completed stage appears as
Achieved and the Breached check box appears
under the SLA stage.
• SLA Definitions: Select to view the task SLA records for a
specific SLA definition.
4

Lets you view detailed information about the task when you
click the information icon.
Provides several zoom in/out levels to control SLA timeline
zoom resolution.

Note: If the duration of any task SLA is more than
1 year, then the 5-minutes view is disabled because
of performance issues and browser limitations. The
condition is applicable for all the browsers.
For IE and EDGE:
5

• The 5-minutes view is not available for any task SLA
that has a duration of more than 35 days.
• The 8-hours view is not available for any task SLA
that has a duration of more than 10 months, and the
default view is set to 16 hours.
• The 16-hours view is not available for any task SLA
that has a duration of more than 21 months, and the
default view is set to 24 hours.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3554


<!-- page 3555 -->
SLA Timeline field description (continued)
Levels

Field

Description

The legend provides the following categories.
• Shapes
◦ Completed: Symbolizes a task update which
completed the task SLA.
◦ Canceled: Symbolizes a task update which canceled
the task SLA.
◦ Task update: Symbolizes an update of the task.
◦ Task update with stage change: Symbolizes an update
of the task which also led to the change in SLA stage.
◦ Breach time (Estimated): Symbolizes estimated
Breach time of an in-progress task SLA that is not yet
breached or paused.
◦ Expected start: Symbolizes estimated Start time of a
task SLA. This scenario is encountered for a retroactive
task SLA starting in the future.
• Bar color (SLA Duration)
6

◦ Below 50%: Green represents a task SLA stage below
50% of the defined SLA duration.
◦ In-between 50% and 75%: Yellow represents a task
SLA stage between 50% and 75% of the defined SLA
duration.
◦ In-between 75% and 100%: Orange represents a task
SLA stage between 75% and 100% of the defined SLA
duration.
◦ Above 100%: Red represents a task SLA stage after the
SLA is breached.
◦ Paused: Gray represents a task SLA stage when it is
paused.
• Modifiers
◦ Retroactive (in lighter shade): Represents the
stages, updates, and out-of-schedules that are in the
retroactive time.
◦ Out of schedule (with center stripe): Represents
the time period that the task SLA was outside of the
schedule time defined in the SLA definition.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3555


<!-- page 3556 -->
SLA Timeline field description (continued)
Levels

Field

Description

7

Provides a toggle to show and hide task updates that
did not cause an SLA stage. Task updates that are not
responsible for an SLA stage change can help debug SLA
definition conditions.

8

Refreshes the information on the SLA timeline.
Displays the details of a task SLA, depending on where you
click the timeline.
Stage details: When you click the update on the task
SLA timeline, the stage details section appears with the
following information:
• Summary of the changes or useful information relevant to
the selected stage.
• Information on stage start and stage end such as the start
and the end time, actual elapsed time and percentage,
actual time left, pause duration. The stage information
also displays any breach of the SLA.

Note: If no schedule is attached to the SLA
definition, then business values are hidden and
actual values are displayed. If any schedule is
attached to the SLA definition, both the business
and the actual values are displayed.
9

Task SLA Details

Task update details: When you click the task update, the
Task update details section appears with the following
information:
• SLA definition conditions: Displays the respective
conditions of the task SLA and the values for the related
columns at that point for the task. A blue check mark
appears for the conditions that affect the SLA stage
change.
• Time: Displays the date and the time when an update
takes place in the task SLA. It also displays the delta
changes that occurred in the task for that update.
Out of schedule details: When you click the out of
business schedule on the task SLA timeline, the outside
business period details section appears with the following
information:
• Start date: Displays the start date of the selected task
SLA.
• End date: Displays the end date of the selected task SLA.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3556


<!-- page 3557 -->
SLA Timeline field description (continued)
Levels

Field

Description

• Duration: Displays the duration of the current out of
schedule selection.
• Total out of schedule duration: Displays the total outofschedule hours until the end of the current selection.

Note: Click and to navigate to the left and right
task update in the details section.

Note:
The SLA timeline receives information about the task from the audit history and refers to
the current SLA definition to pull data for the SLA timeline. The SLA timeline displays task
SLA information as though the SLA repair is already executed, irrespective of whether it is
executed or not.
Related topics
Use SLA timeline to determine business schedule
Use SLA timeline to understand SLA stage change
Use SLA Timeline to validate a new SLA definition
Understand why an SLA did not trigger as expected
Understand why an SLA did not trigger as expected
Describes the conditions when an SLA might not trigger as expected.
Using Task SLA -1 (highlighted in the screenshot) as an example, an SLA Manager may have
expected this SLA to trigger earlier.

To troubleshoot this inconcistency, the SLA Manager can enable Show all task updates from the
settings menu in the upper right of the SLA Timeline. The SLA timeline displays task updates that
do not cause an SLA stage change as a white triangle.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3557


<!-- page 3558 -->
If you click the first or second task updates that did not cause a stage change, the details section
displays the SLA start conditions and the task values that are key to trigger the start condition.
In this case, the Configuration Item field is not populated and the SLA Definition conditions are
defined to trigger when the Configuration Item is defined as the CI SAN 001.

On inspecting the details for the task update that triggered the SLA start condition, you can
find that the configuration item is set to Storage Area Network 001 and this matches the SLA
Definition start condition.
Show all task updates is a powerful tool to help SLA Managers understand why an SLA may not
have behaved as expected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3558


<!-- page 3559 -->
Use SLA timeline to determine business schedule
This example demonstrates how to use the SLA timeline to determine the business schedules
and business percentage time related to a task SLA.
SLA timeline

In the example above, the business percentage for the priority 2 incident is 0 seconds. The dark
stripe in the SLA timeline determines the time when the SLA was out-of-schedule. The SLA time
is not calculated during the out-of-schedule time. So, the business elapsed time is 0 since the
total duration of this SLA is out of schedule.
If you want more detail of the out-of-schedule duration, you can hover over the dark stripe for
summary detail or click it. The Out of Schedule detail section provides information on the details
of the schedule such as when the out of schedule started, when it ended, the current duration of
that out of schedule time and the total duration of all out of schedule time for the entire SLA. This
provides detailed insight into when the SLA was accumulating time and the periods of time it did
not accumulated time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3559


<!-- page 3560 -->
Out of schedule details

Using another example, you can understand in details how business time in an SLA is calculated.
In the example below, the total SLA defined duration for Task SLA-2 is 8 hours. The highlighted
area shows that the SLA is out of schedule from 07:00AM until 08:00AM and starts accumulating
time at 8:00AM reaching 50% of it's total duration at 12:00PM. From 12:00PM to 14:00PM
the SLA accumulates from 50 – 75% of it's total duration and from 14:00PM to 16:00PM it
accumulates from 75 – 100% of it's total duration, ultimately breaching at 16:00PM.
At any time, you can hover over any stage to get a summary of it's detail or click a stage to get
comprehensive detail of that SLA’s stage, including a summary and detail of the stage start and
stage end.
Details of task stage

Use SLA timeline to understand SLA stage change
Describes how you can understand SLA stage changes using SLA timeline.
Using Task SLA-2 as an example, you can see a period of retroactive and out of schedule time
preceding the task update that caused the SLA to attach to INC0010001. The task update is
represented by the first triangle. When this event is selected, the detail pane displays and the
Start tab has a blue check and is highlighted indicating this is the SLA Definition condition this
event met and the task values which matched the SLA Definition start condition.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3560


<!-- page 3561 -->
When the second task update represented by the second black triangle, which triggered an SLA
stage change occurs, you can see that it triggers a pause condition. If you select this event in the
timeline, the detail pane displays the highlighted Pause that contains a blue check indicating a
match. Once again, the task values which match the SLA Definition condition are displayed so
you easily know why the stage change occurred.

Similarly, when the third task update which triggers a stage change occurs, you can see this
resumes the SLA. When that update is clicked, the Stage details section highlights the Resume
tab which now contains a blue check and provides detailed information about the task update
that occurred and the SLA conditions those updates matched.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3561


<!-- page 3562 -->
The SLA continues to accumulate time, until it is breached and this is visually represented by
the yellow, orange, and the red colors. Eventually, another task update occurs which triggers the
SLA’s cancel conditions that is represented by the white diamond. The Stage details section
highlights the conditions for the task SLA cancellation. In this case, the SLA Definition is defined
to cancel when the ‘Start conditions are not met’.

Use SLA Timeline to validate a new SLA definition
When a new SLA Definition is created the SLA Timeline can be used to see how the SLA will
behave against existing task records.
From the SLA Definition form, open the SLA Timeline by clicking the Validate SLA Definition
related link. Select a task by using the task picker in the upper left. The SLA Definition
automatically populates for you. When a task is selected that matches your SLA Definition, the
SLA Timeline allows you to inspect the different elements of the SLA.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3562


<!-- page 3563 -->
Service Level Agreement (Legacy) engines
If you are on an earlier version of the SLA engine, you can upgrade to the 2011 engine to make
use of the complete service level management functionality.
The SLA engine has three versions:

SLA engine version

Description

Escalation engine
(pre-2010)

Tracks only one SLA per task.

The 2010 engine
(the Service level
management plugin)

Supports multiple SLAs per task. Business rules handle the
processing of these SLAs while workflows handle notifications. The
majority of logic is in a single large business rule called Process SLAs.

The 2011 engine (also
part of the Service
level management
plugin)

The 2010 SLA engine functionality is concentrated into a number of
script includes.
Provides retroactive pause calculations and enables the
customization of SLA condition processing through the use of
condition rules.

Legacy SLA fields
Previously, only a single SLA could be attached to a task via the Escalation engine. The
information for the SLA was stored in the task table using the SLA Due, Made SLA, and
Escalation fields.
The Task SLA engine now enables multiple SLAs to be attached to a single task, making the
earlier task fields redundant. Their equivalents are in the task_sla table for each SLA attached to
the task.
• Task SLA, Breach time: This is equivalent to the SLA Due field
• Task SLA, Has breached: This will be true if the SLA has breached, the opposite of Made SLA
field.
• There is no equivalent field for Escalation field. Notifications can be sent via the SLA workflow
and an increase in priority can trigger additional SLAs to be attached to the task.

Note: The Business Duration field is neither part of the Escalations Engine nor the Task
SLA Engine.
The fields on the Task are considered legacy and are not updated by the Task SLA engine. In
case these fields are being updated, the legacy Escalation engine may still be running. This can
happen if you have upgraded from Express or a previous instances.
To prevent the Escalation engine from running, set the
com.snc.sla.run_old_sla_engine property to false. If this property is set to false and
the fields are still being updated, check the customizations made to your instance.
Upgrade SLA to 2011 engine
You can upgrade SLA processing to use the 2011 Engine.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3563


<!-- page 3564 -->
About this task

The service level management plugin was enhanced with the ability to script the condition
rules for SLA transitions, giving control over how the conditions in an SLA Definition are used.
Please review the documentation before enabling the enhancements to understand how the
new engine will impact existing customizations

Note: Activating the 2011 SLA engine will deactivate all business rules on the task_sla

table (except for the rule Task SLA Empty Schedule Warning, which is part of the
2011 engine). If you have added any additional business rules or customized the default
business rules, these will not be automatically deactivated. So you should review these
customizations, and manually deactivate such business rules, before making this change.
The default Process SLAs rule on the task table will also be deactivated, so any customizations
to this script must be incorporated into the new SLA engine.
In addition, breach information is removed from the Stage field, and stored in the new Has
breached field.
To enable the new functionality:

Procedure
1. Navigate to All > Service Level Management > SLA Properties.
2. Change the following property from 2010 to 2011:
Example

By default, the 2011 Engine sets the Stage field to In Progress, shaded red to indicate the
breached status, and sets the Has Breached field to true. The SLA continues to run until the
stop conditions are met.
Organize the migration process
There are several ways to convert the old SLAs to the new Task SLAs.

Before you begin

Role required: admin

About this task

Perform the following steps to organize the conversion process:

Procedure
1. Convert the old SLAs to new SLA Definitions, but leave the Active flag unchecked on each one.
2. Back up the old SLAs by exporting the table to XML.
3. Deactivate the old SLAs, setting the Run the old SLA engine (System Policy -> SLA
Management) system property (com.snc.sla.run_old_sla_engine) to false.
This setting deactivates the legacy SLA engine preventing both engines from running and
conflicting. This property is set to true by default, but will be set to false by the new SLA
plugins, effectively deactivating the old SLAs.
4. Activate the new SLA Definitions by checking the Active flags on each one.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3564


<!-- page 3565 -->
5. Navigate to Incident > Open and use the List Editor to "touch" each record.
As each record is updated, the new Task SLA will attach to each incident. If there are too many
open incidents to effectively touch using the List Editor, run a business rule that will update
every open incident.
Convert an SLA to an SLA Definition
You must replicate the default SLA record as a new SLA definition.

Before you begin

Role required: admin

About this task

To convert old SLAs to SLA Definitions:

Procedure
1. Transfer the Name and Table fields.
2. If desired, check the Retroactively Start checkbox.
If checked, this will cause the SLA to calculate from the moment the record is created (or from
the date and time on the selected task), rather than the moment the SLA is attached. This is
especially helpful for Task SLAs that will attach to active incidents that have old SLAs currently
running.
3. Transfer the Conditions field to the Start Conditions field.
Make sure to add Active is True as well, so that the new Task SLAs don't attach to closed
incidents when they are updated.
4. Define a new set of Pause Conditions and Close Conditions.
5. Set the Duration Type and Duration fields.
The old SLAs did not support relative duration, so to define the Task SLA to behave similarly
to the old SLA, select User Defined Duration as the Duration Type and put the total length of
time of all of the escalations here.
Example
For instance, an old SLA that has escalations of 4 hours to Moderate, 2 hours to High, and 2
hours to Overdue, the new Task SLA should have Duration set to Days 0 Hours 08:00:00.
6. Calendars have been replaced by Schedules, so if schedules haven't been defined yet, they
will need to be.
7. Instead of escalations, attach an SLA Workflow.
There is a default SLA workflow, however, you must create a new workflow to replicate the
escalation levels on the old SLA. Escalation Levels are defined hour-by-hour, whereas the SLA
Workflow uses a percentage timer.
Example
So for the above example of 4 hours to Moderate, 2 hours to High, and 2 hours to overdue, the
workflow will need a 50% timer and then two 25% timers. The new task SLA records do not use
the Escalation or Made SLA fields on the task record.

Example:

The following example is an old SLA for Priority 1 incidents to be resolved on a Monday-Friday
(8-5) Calendar, with escalations to Moderate at 4 hours, to High at 2 hours, and to Overdue at 2
hours:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3565


<!-- page 3566 -->
Old SLA example

This is the new Task SLA created from the same information:
New SLA example

This is the workflow which powers the new Task SLA.

Note: This example workflow responds to each escalation by firing off an event. A
business rule can be configured to respond to escalation events, or the workflow can be
adjusted to match the organization's process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3566


<!-- page 3567 -->
New SLA workflow

Reactivate escalation engine
Escalation engine is replaced with 2011 SLA Engine.

Before you begin

Role required: admin

About this task

ServiceNow Express used the legacy Escalation Engine to process SLAs. If for any reason a
customer who has upgraded from ServiceNow Express to ServiceNow Enterprise wants to
reactivate the Escalation engine, they can follow the steps below.

Procedure
1. Navigate to sys_properties.list.
2. Update the property com.snc.sla.run_old_sla_engine to true.

Note:
ServiceNow recommends using the 2011 SLA Engine.

Task SLA table
The Task SLA [task_sla] table stores Task SLA records for the SLAs attached to particular tasks.
For each task, attached SLAs are accessible in a related list on the Task's form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3567


<!-- page 3568 -->
Task SLA table

The SLA form for a task shows further details:
Task SLA form

Stage values
The following Stage values are defined:
• In progress
• Cancelled
• Paused
• Completed

Note: The Breached stage value is also available for systems either using the 2010 SLA
engine, or running in compatibility mode.

Timing information
The Timings fields on the Task SLA contain the crucial information powered by the SLA Engine:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3568


<!-- page 3569 -->
Task SLA Time-Based Fields
Field

Description

Start time

The time the SLA was started.

Stop time

The time the SLA ended.

Breach time

The time the SLA will breach, adjusted for business pause duration (for task
SLAs with a schedule specified) or pause duration (for task SLAs with no
schedule).

Note: Breach time is the same as Planned end time.
Actual
Elapsed Time

Time between start time and now (minus pause duration).

Actual
Elapsed
Percentage

Percentage of total SLA that has elapsed (minus pause duration).

Actual Time
Left

Time remaining until SLA breach.

Business
Elapsed Time

Time within the specified schedule between start time and now (minus pause
duration).

Business
Elapsed
Percentage

Percentage of total SLA that has elapsed within the specified schedule (minus
pause duration).

Business
Time Left

Time within the schedule remaining until SLA breach.

Original
breach time

The date/time the SLA would breach, as calculated when the SLA is first
attached.

Note: You may have to configure the form to see this field.
Service level management overview dashboard
The Service Level Management Overview Dashboard provides insight into Service Level
Agreement (SLA) information relevant to the logged-in user. By default, the Overview dashboard
is available to users who possess the itil role.
The Overview Dashboard is enabled by default for new customers. Customers upgrading
from a prior release have to enable the Service Level Management Dashboard plugin
(com.snc.sla.overview) to activate this feature.
You can navigate to the dashboard in the following ways:
• Service Level Management > Overview
• Self – Service > Dashboard > SLA Overview

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3569


<!-- page 3570 -->
SLA overview dashboard

UI component

Description

My at Risk SLAs

Number of active task SLAs for tasks assigned to the logged in user
that have not yet breached but have elapsed 75% of the duration of
the SLA.

My Active Breached
SLAs

Number of active task SLAs for tasks assigned to the logged in user
that have breached.

My Active SLAs (count)

Number of active task SLAs for tasks assigned to the logged in user.

My Groups Active SLAs
(count)

Number of active task SLAs for tasks assigned to groups that the
logged in user is a member of.

My Active SLAs (bar
chart)

Displays a bar chart of active task SLAs for tasks assigned to the
logged in user. The data can be grouped and/or stacked on some of
the fields available in the task SLA records.

My Groups Active SLAs
(bar chart)

Displays a bar chart of active Task SLAs for Tasks assigned to groups
that the logged in user is a member of. The data can be grouped
and/or stacked on some of the fields available in the task SLA
records.

My Active SLAs (list)

Displays a list of active task SLAs for tasks assigned to the logged in
user. The data can be grouped on some of the fields available in the
task SLA records.

Platform Analytics Solutions for Service Level Management
This Platform Analytics Solution contains preconfigured dashboards. These dashboards contain
actionable data visualizations that help you improve your business processes and practices.

Enabling the Platform Analytics Solution
Use the Performance Analytics widgets on the dashboard to visualize data over time, analyze
your business processes, and identify areas of improvement. With solutions, you can get value
from Performance Analytics for your application with minimal setup.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3570


<!-- page 3571 -->
Note: Solutions include some dashboards that are inactive by default. You can activate
these dashboards to make them visible to end users according to your business needs.
For unlimited access to all features of this Platform Analytics Solution, purchase a
Performance Analytics subscription. For more information, see Activating your Performance
Analytics subscription .
To enable the solution for Service Level Management, an admin navigates to System Definitions
> Plugins and activates the Service Level Management PA Dashboard (com.snc.pa.sla.overview)
plugin.
To use this Platform Analytics Solution, you must have an entitlement to use Performance
Analytics with Service Level Management.

Domain separation and 'Run As' user
In some solutions, System Administrator is the Run As user for data collection jobs in the
Platform Analytics Solutions. In other solutions, the Run As user for data collection jobs is left
blank. Verify that the Run As user exists on the instance, and that this user has the appropriate
level of access. An inappropriate Run As user can cause errors or limit the data that is collected.
This setting only has an effect if domain separation is enabled.
Related topics
Activate your Performance Analytics subscription
Service level management PA dashboard
The Service Level Agreement (SLA) Overview module provides a Performance Analytics (PA)
Dashboard to review SLA information at a glance.
Users with the itil role can access the dashboard.
You can navigate to the PA dashboard in the following ways:
• Service Level Management > Overview
• Self – Service > Dashboard > SLA Overview (Premium)
This dashboard has the following requirements:
• An entitlement to use Performance Analytics with Service Level Management.
• The Service Level Management PA Dashboard (com.snc.pa.sla.overview) plugin, which
contains this dashboard.
• The SLA Breakdowns plugin (com.snc.sla.breakdowns) plugin, because some of the reports
are generated from the breakdown data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3571


<!-- page 3572 -->
Overview tab
SLA PA dashboard - Overview

UI component

Duration of Active
Breached SLAs

Description

Uses available SLA breakdown data to generate a report showing
time spent working on breached task SLAs that are still active and
the SLA Definition Type is SLA.
Use the Group by and Stacked By breakdown lists to show different
representations of this data, for example: Group by Assignment
group and Stacked By SLA Definition.
The Assignment Group filter on the right can be used to limit the
data shown in this report to a specific group.

Active Breached SLAs

This chart shows all breached task SLAs that are still active and the
SLA Definition Type is SLA.
Use the Group by and Stacked By breakdown lists to show different
representations of this data, for example: Group by Assignment
group and Stacked By SLA Definition.
The Assignment Group filter on the right can be used to limit the
data shown in this report to a specific group.

Achieved SLAs in Last
30 Days

This chart shows all task SLAs that completed in the last 30 days
without breaching and where the SLA Definition Type is SLA.
Use the Group by and Stacked By breakdown lists to show different
representations of this data, for example: Group by Assignment
group and Stacked By SLA Definition.

KPI tab
The KPI dashboard uses the following Performance Analytics indicators:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3572


<!-- page 3573 -->
Indicator

Version introduced

Average durations of breached task SLA closed today

London

Number of closed task SLA today

London

Average duration of achieved SLA today

London

Number of achieved closed task SLA today

London

Achieved SLAs Today

London

Note: These indicators are calculated on a daily basis to provide trend analysis.
Further operations are performed on the Performance Analytics indicators to generate the
following KPIs on the dashboard:
KPIs based on Performance Analytics indicators
UI component

Description

% of Active Breached
SLAs (Daily)

Shows the % of active task SLAs that breached yesterday.

Average Assignment
Duration (Breached)

Shows the average duration of individual assignments for breached
task SLAs completed yesterday. The KPI that provides the data
captures this value on a daily basis to provide trend analysis.
This report is based on SLA breakdown data and so shows data only
for SLA definitions that are linked to an SLA Breakdown definition.

% of Achieved SLAs
(Daily)

Average Assignment
Duration (Achieved)

Shows the % of task SLAs that were completed yesterday without
breaching. The KPI that provides the data captures this value on a
daily basis to provide trend analysis.
Shows the average duration of individual assignments for achieved
task SLAs completed yesterday. The KPI that provides the data
captures this value on a daily basis to provide trend analysis.
This report is based on SLA breakdown data and shows data only for
SLA definitions that are linked to an SLA Breakdown definition.

Average Duration
of Assignments for
Breached SLAs

Shows the average duration of individual assignments for breached
task SLAs completed yesterday broken down by either Assignment
group or SLA Definition. Use the Breakdown field to change which
breakdown data is displayed.
The KPI that provides the data captures this value on a daily basis to
provide trend analysis.
This report is based on SLA breakdown data and shows data only for
SLA definitions that are linked to an SLA Breakdown definition.

Average Duration
of Assignments for
Achieved SLAs

Shows the average duration of individual assignments for achieved
task SLAs completed yesterday broken down by either Assignment

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3573


<!-- page 3574 -->
KPIs based on Performance Analytics indicators (continued)
UI component

Description

group or SLA Definition. Use the Breakdown field to change which
breakdown data is displayed.
The KPI that provides the data captures this value on a daily basis to
provide trend analysis.
This report is based on SLA Breakdown data and shows data only
for SLA definitions that are linked to an SLA Breakdown definition.

Domain separation and Service Level Management
Domain separation is supported in Service Level Management. Domain separation enables you
to separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: Standard
• Includes all aspects of Basic level support.
• Application properties are domain-aware as needed.
• Business logic: The service provider (SP) creates or modifies processes per customer. The use
cases reflect proper use of the application by multiple SP customers in a single instance.
• The instance owner must configure the minimum viable product (MVP) business logic and data
parameters per tenant as expected for the specific application.
Sample use case: An Admin must be able to make comments required when a record closes for
one tenant, but not for another.
For more information on support levels, see Application support for domain separation

.

Service Level Management overview
• Service Level Management helps customers monitor, measure, and report on agreed service
level agreements (SLAs); SLA definitions encapsulate these agreements.
• Users can see only content in the domain to which they have access.

How domain separation works in Service Level Management
The intention of SLM is to provide customers with an expectation of service within a known
timescale and the ability to monitor when service levels are not being met. To learn specific terms
and definitions see Service Level Management concepts.
• SLA definitions and task SLAs have domain fields. However, task SLAs are created only in the
domain of its attached task record.
• SLA definitions must be defined in a tenant domain (or global) in order for task SLAs to be
created and attached to a given task (or extensions).
• Task SLAs attach to a task if an SLA definition exists in the task records domain or in an
ancestor domain.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3574


<!-- page 3575 -->
• Task SLAs always inherit the domain of its attached task record, which includes the workflow
running on the task SLA record. If a task record ever flips, the task SLA also slips.
• If an SLA definition exists in an ancestor’s domain, the definition can be overridden in a subdomain (delegated administration).

Service Level Management domain-separated tables
• SLA definition [contract_sla]
• Task SLA [task_sla]

Service Level Management use cases
• An ESS user in the ACME domain logs in and creates an incident, at which point an SLA is
attached. The SLA is created in the domain of the associated task record (incident), which is
the ACME domain. The ESS user is not able to read SLA records. These are restricted to the
following roles:
◦ Administrator
◦ ITIL
◦ SLA Administrator
◦ SLA Manager
• An ITIL user in the Acme domain logs in and creates an incident. The process above is the
same except that the ITIL user can read the SLA record attached to the incident.
• If an SLA definition exists in the Acme domain and doesn’t meet the needs of an Acme subdomain (Acme child) an SLA Administrator can remediate. SLA Administrators can navigate
to the ACME SLA definition when their session domain is ACME child, make the relevant
changes, and save them. The SLA Administrator is alerted that an override has been created.
• An ITIL user sets the session domain to Acme child and creates an incident. The task SLA is
created using the SLA definition from Acme child.
Related topics
Domain separation for service providers

Quick start tests for Service Level Management
Validate that Service Level Management still works after you make any configuration change
such as apply an upgrade or develop an application. Copy and customize these quick start tests
to pass when using your instance-specific data.
Service Level Management quick start tests require activating the Service Level Management ATF Tests plugin (com.snc.service_level_management.atf).
Service Level Management quick start tests
Test

Description

Release version

SLM: Service Level
Management Task SLA
completed workflow

Tests that a user can create
a task SLA and complete the
workflow.

Orlando

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3575


<!-- page 3576 -->
Service Level Management quick start tests (continued)
Test

Description

Release version

SLM: Service Level
Management Task SLA
cancelled workflow

Tests that a user can create
a task SLA and cancel the
workflow.

Orlando

SLM: Service Level
Management Task SLA timer
REST API

Tests that the SLA Timer
API response matches data
expected by SLA Timer
Seismic component.

Paris

Related topics
Quick start tests

Configure Service Level Agreement (SLA) properties
You can configure the SLA engine, logging, and repair properties based on the requirements
within your organization.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Level Management > Properties.
2. Select one of the following:
SLA Engine
configure properties for the SLA engine.
SLA Logging
configure logging properties for SLA Script Includes and logging output
destination.
SLA Repair
configure properties for the SLA Repair process.
SLA engine properties
Administrators can manage the SLA engine using SLA engine properties.
Navigate to Service Level Management > Properties > SLA Engine to view SLA engine
properties.
SLA Engine Properties
Property name

com.snc.sla.calculation.percentage

Description

Maximum 'Actual
elapsed percentage'
value after which
the 'SLA - update
calculations'
scheduled job
will stop regularly

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3576


<!-- page 3577 -->
SLA Engine Properties (continued)
Property name

Description

calculating the SLA's
time values. This
is used to prevent
'long since breached'
records from being
unnecessarily
updated. Setting
to '0' will stop all
calculations and
leaving this blank will
allow all SLAs to be
calculated.
By default, this is set
to 1,000%, so that
recalculation stops
after the breach is
exceeded by a factor
of 10.
• Type: integer
• Default value: 1000

com.snc.sla.maximum_duration

Maximum duration in
days that is allowed
in the SLA definition.
• Type: integer
• Default value: 1095

com.snc.sla.engine.version

Run the 2011 SLA
engine (2010, 2011)
• Type: choice list
• Default value: 2011

com.snc.sla.engine.async

Run the 2011
SLA engine
asynchronously after
task insert or update
operations.
• Type: true | false
• Default value: false

com.snc.sla.compatibility.breach

Enable compatibility
with 2010 'breached'

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3577


<!-- page 3578 -->
SLA Engine Properties (continued)
Property name

Description

status of SLAs
(default: false)
Only enable if you
require the old way
of showing breached
status (in the stage
value), for reporting
purposes. Using only
the 'breached flag' is
preferred
• Type: true | false
• Default value: false

com.snc.sla.default_conditionclass

The name of the
Script Include class
that will be used
to evaluate SLA
Conditions for the
2011 SLA engine (use
to override with your
own extension of the
SLAConditionBase
class)
• Type: String
• Default value:
SLAConditionBase

com.snc.sla.workflow.run_for_breached

An update to a Task
can result in an SLA
being attached that
is already breached
- for example when
an Incident that
has already been
open for a while is
upgraded to a high
priority with a short
resolution SLA.
By default if there is
a workflow specified
in the SLA Definition
it will not run if the
Task SLA is attached
and the Planned End
Time has already
passed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3578


<!-- page 3579 -->
SLA Engine Properties (continued)
Property name

Description

Enable this property
if you would like the
workflow to run for
a Task SLA that is
already breached
when it is attached to
the Task.
• Type: true | false
• Default value: false

com.snc.sla.calculate_planned_end_time_after_breach

Continue to recalculate the
"Planned End Time"
of SLAs after they
have breached
• Type: true | false
• Default value: false

Note: zboot
customers
do not have
this property
available in the
SLA Engine
Properties
page.

com.snc.sla.calculation.use_time_left

Use field
business_time_left
to calculate breach
time instead of
business_percentage
field. Using
business_time_left
is more accurate
because the
business_percentage
field is rounded to 2
decimal places. This
means that once the
business percentage
reaches 99.995%, it
is recorded as 100%,
and the task SLA is
marked as breached.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3579


<!-- page 3580 -->
SLA Engine Properties (continued)
Property name

Description

• Type: true | false
• Default value: false

glide.sla.calculate_on_display

Recalculate Task SLA
records when a Task
form is displayed.
This ensures that
the task SLAs
calculations are up
to date but this may
increase form load
time.
• Type: true | false
• Default value: false

com.snc.sla.always_populate_business_fields

When this property
is set to true, the
business fields
such as Business
elapsed time will be
populated with the
same values as those
in the actual fields
when there is no
schedule specified
on the Task SLA.
If the property is
false, the business
fields will be empty
when a Task SLA has
no schedule.
• Type: true | false
• Default value: true
for new instances,
false for upgraded
instances

SLA logging properties
Administrators can configure SLA logging using SLA properties.
Navigate to Service Level Management > Properties > SLA Logging to view SLA logging
properties.
The Logging level for... properties set logging levels for relevant script includes. This allows you
to activate extra logging targeted at whenever that script include is invoked via a task SLA. For
example, if you know of an issue with the TaskSLAworkflow script include, you can use the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3580


<!-- page 3581 -->
com.snc.sla.workflow.log property to enable logging on that script include. These properties are
all set to Notice level by default.
SLA Logging Properties
SLA Logging Property

Description

com.snc.sla.task_sla_controller.log Logging level for TaskSLAController
com.snc.sla.task_sla.log

Logging level for TaskSLA

com.snc.sla.condition.log

Logging level for SLAConditionBase

com.snc.sla.workflow.log

Logging level for TaskSLAworkflow

com.snc.sla.calculatorng.log

Logging level for SLACalculatorNG

com.snc.sla.repair.log

Logging level for SLARepair (SLA repair must be enabled
to use this)

com.snc.sla.log.destination

Logging output destination.
Select the log destination: either output to both the
Database and node logs (the default), or output to node
logs only.
Database and node logs (gs.log) are visible as system logs
from ServiceNow, node logs (gs.print) only appear in log
files.

Logging levels
The following logging levels are available for the Logging level for... properties:
Logging Levels
Level

Name

Description

Emerg

Emergency

Total failure.

Alert

Alert

System corruption of a database, for example.

Crit

Critical

Typically used for hardware errors, for example.

Err

Errors

Errors

Warning Warnings

Warnings

Notice

Notice

Possible action required but not essential.

Info

Informative

No action required.

Debug

Debugging

Generally not used except for capturing everything for fault-finding.

Note: By default, logging levels are set to Notice
SLA repair properties
Administrators can manage the SLA repair function using system properties.
Navigate to Service Level Management > Properties > SLA Repair to view SLA repair properties.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3581


