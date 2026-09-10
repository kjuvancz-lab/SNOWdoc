# Zurich IT Operations Management — ITOM AIOps / ITOM AIOps use case / Event Management

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 3172–3321 of 4823 | Part 3 of 4

Sections: ITOM AIOps (p2872); ITOM AIOps use case (p2873); Event Management (p2874)

---

<!-- page 3172 -->
Column

Description

Action name

Name of the action that was taken to resolve the alert (subflow
or workflow).

Link to execution

Link to the action execution log that was created when the
action was performed.

Related task

Link to the task that was created when the alert was resolved.
For example, if the action for a rule is to create an incident,
this field provides the incident number with a link to open the
incident.
A link is provided to the workflow remediation task that is
created to monitor the remediation.

Log

Notice or information showing the result of the execution
action, for example, how executions took place, "1 out of
2 executions". When the alert closes, the execution count
number (the first number) resets to 0.
This information does not indicate that the subflow was
executed successfully, rather that the call to that subflow was
successful and that the subflow is correctly configured.

Automatic run

Indication of how the action ran: automatically (true) or
manually (false).

Created

Date and time that the entry was created.

Migrate an alert action rule to an alert management rule
Existing alert action rules from an earlier release can be executed, but cannot be modified. Alert
action rules that have been migrated become alert management rules and all the definitions of
the alert action rules are migrated to the alert management rule format. Migrated rules can be
modified.

Before you begin

Role required: evt_mgmt_admin

About this task

Existing alert action rules are active, read-only rules. An alert action rule can be modified only
after it is migrated to an alert management rule.

Procedure
1. Navigate to All > Event Management > Rules > Alert Action Rules.
2. Select an alert action rule to migrate or delete.
Alert Action Rule record

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3172


<!-- page 3173 -->
3. Click Migrate.
If you clicked Migrate, the list of migrated rules can be found, together with new alert
management rules, by navigating to Event Management > Rules > Alert Management.
After a successful migration, all the definitions of the alert action rules are migrated to the alert
management rule format.

Result

When an alert action rule has been migrated successfully, the alert action rule can no longer be
modified. However, the new alert management rule can be modified.

What to do next

If the alert action rule that was migrated had a task template, you can customize the alert
management rule designer to display the task template name.
1. In the header of the alert management rule, click Additional actions

.

2. Select Configure > Form Layout.

3. In the Available pane, select Task template and move it to the Selected pane. Position it as
required.

4. In the Task template field, select the required template.
5. In the Actions tab, in the Remediation Subflows area, select the Create Task (legacy) subflow to
run the task template.

Related topics
Apply a quick response in an alert
Synchronizing alert response with automated alert grouping
Synchronize alert response with grouping by ensuring alert management jobs runs after alert
grouping jobs—this prevents duplicate actions like incident creation on secondary alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3173


<!-- page 3174 -->
Before you begin

Role required: admin

About this task

By default, the alert grouping job (Service Analytics group alerts using RCA/Alert
Aggregation) and the alert management job (Event Management - Evaluate Scoped Alert
Rules Management0) run independently of each other. To synchronize the alert response
with automated alert grouping (for example, to avoid creating an incident on a secondary
alert), you must enable the property evt_mgmt.avoid_int_enabledto ensure that the
Alert Management job is executed after the Alert Grouping job is completed. This property
is accessible from the Event Management Properties page (All > Event Management >
Administration > Event Management Properties). In addition, you must configure the relevant
alert management rule (for example, for incident creation), to filter out all secondary alerts.

Note: If only one alert exists when the Alert Management job runs, an incident is created.
When a second alert arrives later, the next Alert Grouping job forms a group, makes the new
alert as secondary, and creates a new incident.

Procedure
1. Navigate to All > Event Management > Administration > Event Management Properties.
2. If you want to avoid incidents on secondary alerts, select the Enable Avoid Incidents on
Secondary alerts and wait for Grouping job to be executed check box.
3. Select Save.
4. To filter out secondary alerts, navigate to All > Event Management > Rules > Alert
Management Rules.
5. Select the relevant rule.
6. In the Alert Management Rule form, select the Alert Filter tab.
7. In the Condition area, select And.
8. Add a condition:
◦ Role in Group
◦ is not
◦ Secondary
9. Select Update.
Configure alert remediation actions
Run commands to perform alert remediation on remote Linux and Windows CIs.

Before you begin

Install the following plugins:
• IntegrationHub Enterprise spokes plugin
• ServiceNow IntegrationHub Action Step - PowerShell
• ServiceNow IntegrationHub Action Step - SSH
For Linux: Ensure that the remote Linux host is reachable using the MID Server IP address that
runs action scripts.
For Windows:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3174


<!-- page 3175 -->
• Ensure that Powershell v3.0 - 5.0 are supported and installed on the Windows target server.
• Enable Powershell remoting on the remote Windows target server.
• Ensure that the remote Windows target server is reachable using the FQDN from the MID
Server that runs action scripts.
Add credentials to the credential aliases that come with the base system:
• linuxAdmin
• windowsAdmin
Role required: evt_mgmt_admin or flow_designer

Procedure
1. Access remediation actions in one of the following ways:
◦ Quick actions in an alert, as described in Apply a quick response in an alert.
◦ The Playbook tab in Service Operations Workspace, as described in Run actions to resolve
alert issues .
2. Configure additional input in the alert's Additional Information field, using this format:
{"remediation_action_resource":"<mandatory input>"}
The mandatory input per action is described in the following table.

Action name

Mandatory input in Additional information field

Stop Windows Process

Process ID

Restart Linux Service

Service Name

Kill Linux Process

Process ID

Get Windows Processes

N/A

Stop Windows Service

Service Display Name

Restart Windows Service

Service Display Name

Get Windows Services

N/A

Stop Linux Service

Service Name

Start Windows Service

Service Display Name

Suspend Windows Service

Service Display Name

Get Linux Services

N/A

Run Linux Top for Memory

N/A

Show Disk Space Used

N/A

Run Linux Top

N/A

Start Linux Service

Service Name

Show Disk Space Used

N/A

Result

After executing an alert action, the results are noted in the Work Notes field of the alert.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3175


<!-- page 3176 -->
Related topics
Troubleshooting WMI/Powershell issues on the remote machine
WMI, PowerShell, and Windows Firewalls
MID Server: troubleshooting WMI/Powershell issues - Credentials
How to Enable/Test PowerShell Remoting on Windows Host
CI Remediation
Alert and configuration item (CI) remediations help troubleshoot and resolve underlying
problems that generate alerts. Remediation is based on Orchestration workflows that can be
scripted to perform remediation tasks such as gathering system information or rebooting a
server.
Event Management provides a framework for configuring and implementing a system-wide
remediation plan to resolve, minimize, or prevent problems that generate events and alerts.
Configure alert management rules to remediate alerts and CI remediation rules to remediate a
set of CIs.

Alert remediation
Use alert management rules to associate specific alerts with a remediation workflow. You can
apply a workflow to alerts manually. Alternatively, you can configure the alert management rule
that executes a workflow automatically for alerts that match the rule criteria. The workflow can
also be scripted to request user approval before executing subsequent workflow tasks. The
workflow is paused for user approval, even if it was automatically triggered.

CI remediation
Configure remediation more comprehensively by creating CI remediation rules to manually apply
remediation to specific CIs.

Remediation tasks
When a remediation workflow is executed, a remediation task is created to capture details such
as the time that the workflow started to run, the alert that triggered the remediation workflow (if
relevant), and the CI that was remediated. View these tasks to track remediation activities in the
organization.
Related topics
Migrate an alert action rule to an alert management rule
Create or edit CI remediation
Create a CI remediation rule that lets users manually apply an Orchestration workflow for
resolving issues with specific CIs associated with alerts. Define these CIs in the CI filter
conditions of the rule.

Before you begin

Create the workflow to remediate CIs. In the workflow settings, select Remediation Task
[em_remediation_task] in the Table field.
Then submit the workflow definition, and add the following conditions to the workflow properties:
• [Run Remediation][is][true]
• [Workflow][is][<name of the new workflow that you just created>]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3176


<!-- page 3177 -->
For example, if the name of the workflow is CI remediation, add this condition:
[Workflow][is][CI remediation]
After you finish configuring the workflow, make sure that you publish it. For more details, see
Create a workflow .
Role required: evt_mgmt_admin

About this task

A CI remediation rule associates a set of CIs that might experience problems with a remediation
workflow. The remediation workflow can either resolve the underlying problem or help
troubleshoot the problem that generated the alert. For example, you can proactively configure a
workflow with the appropriate response actions for predictable alerts. For more details, see the
Event Management Remediation
short video.

Procedure
1. Navigate to All > Event Management > Rules > CI Remediations.
2. Click New, or select a CI remediation to edit.
3. Fill in the fields, and click Submit or Update.
CI remediation form
Control

Description

CI filter

Conditions to match the CIs that you want to apply this remediation
to.

Orchestration
workflow

The remediation workflow to apply to CIs that match the filter
conditions.

Result

In service maps that are opened from the Event Management dashboard, this remediation can
be applied to any CIs that match the filter conditions.
View remediation tasks
Event Management automatically creates a remediation task to capture every remediation that
was applied to a CI or to an alert. It gives you an overall view of remediation activities in the
organization.

Before you begin

Role required: evt_mgmt_user

Procedure
Navigate to All > Event Management > Remediation Tasks.

Column

Description

Number

Number assigned to this task.

Configuration item

Item or service affected by this task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3177


<!-- page 3178 -->
Column

Description

Priority

Priority that was assigned to this task, based
on impact and urgency.

State

State of the task, which can be open or closed.

Assigned to

Person that this task was assigned to.

Short description

Description for the task.

Task type

This task type is a remediation task.

How alerts work with CIs in maintenance
When a CI is in maintenance, the impact tree, the service map, and Alerts tab are updated based
on various factors.
Event Management Part 2 | Impact Tree Watch this brief video to learn about how alerts work with
CIs.
A CI is in maintenance when:
• A change request is scheduled for the CI.
• The Install Status field on the CI record is set to In Maintenance.

Note: To customize how alerts work with CIs in maintenance, see Create maintenance
rules.

How CIs in Maintenance appear in Event
Management

CI with an active change request

Description and the optimal time to resolve the
alert

An active change request has the following
values:
• The State is Scheduled or Implement.
• The current time is between the Planned
start date and Planned end date on the
change request.
OR

If an active change request is scheduled for
the CI or if the Install Status of the CI is In
Maintenance, all alerts on the affected CI are
excluded from impact calculation. The Alerts
tab also temporarily hides all corresponding
alerts. The impact tree shows the CI in green
with a note of (In Maintenance). The impact
tree and the service map temporarily show CIs
in green.
For a service, all alerts on CIs in the service
are also hidden from the Alerts tab. The entire
service is shown in green on the impact tree.
For a host with an active change request, the

• The current time is between the Actual start
date and Actual end date on the change
request.
You can monitor the progress of the change
request. Wait until the change request moves
to the Review or Closed state. Then you
can address all alerts for the affected CI and
any alerts that generated between start and
end dates. Use the impact tree, topology,
and Alerts tab to show the calculated impact
severity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3178


<!-- page 3179 -->
How CIs in Maintenance appear in Event
Management

Description and the optimal time to resolve the
alert

Note:
host applications are considered as one unit.
All child applications are treated in the same
manner as the host until the change request is
no longer active.

CI with no active change request
and not in maintenance

The Maintenance check box for an alert
is selected when the Install Status field
on the CI record is In Maintenance. This
Maintenance check box indicates that
the alert must be hidden from the Alerts
tab.
An inactive change request has the following
values:
• The State is New, Assess, Authorize,
Review, Close, or has no changes at all.
• The State is Scheduled or Implement.
However, the current time is before or after
the planned or actual date ranges on the
change request.

When there is no active change request for
a CI and when the CI is not in maintenance,
impact calculation resumes. The impact tree,
the service map, and Alerts tab show the
calculated impact severity for alerts.
CI with no active change request
and in maintenance

You can monitor the progress of the change
request. When a CI has an inactive change
request, you can address the corresponding
alerts as appropriate.

All alerts on a CI with an inactive change
request and In Maintenance has no impact
calculation.

If no active change request is scheduled
for the CI and if the Install Status of the CI
is In Maintenance, all alerts on this CI are
excluded from impact calculation. The impact
tree shows the CI in green with a note of
(In Maintenance). The impact tree and the
service map temporarily show CIs in green.
Related topics
Create maintenance rules
SLAs for application services and CIs
Event Management supports the creation of SLAs for application services and for CIs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3179


<!-- page 3180 -->
You can monitor and manage the quality of the application services offered by your organization.
For example, you might want to set up an SLA that is triggered when the max alert severity of an
application service or CI is Critical, and measure the time it takes to bring the application service
or CI back to the OK state, when the conditions that caused the alert have been resolved.

SLAs and the Task table
You can create SLA definitions only for tables that extend the Task table. The Event Management
application provides a table named Event Management SLA [em_ci_severity_task], which
extends the Task table. Use this table in your SLA definitions to specify the severity level that
should trigger and stop the SLA. During alert impact calculation, changes in the severity level
of application services and CIs are automatically updated in the Event Management SLA table.
Scheduled jobs keep the information in this table up to date.

How the Event Management SLA table is populated
The Event Management SLA table is populated differently for application services and CIs:
• For application services, the system automatically populates the Event Management SLA table
when an application service is created or when its max severity is changed.
• For CIs, you must first identify which CIs can be made available for SLAs by creating an SLA
configuration record. The system then automatically populates the Event Management SLA
table with the CI max severity is changed.

Note: Duplicate CIs are not added to the Event Management SLA table even if the same
CI matches more than one SLA configuration filter.
Create an SLA configuration for CIs
Create an SLA configuration from the Event Management application to determine which CIs are
available for SLAs.

Before you begin

Role required: evt_mgmt_admin

About this task

The SLA configuration record is a filter on a table in the system. Select a table that has the CIs for
which you want to create an SLA.

Procedure
1. Navigate to All > Event Management > Rules > SLA Configuration.
2. Click New.
3. Fill in the form fields (see table).
SLA Configuration form fields
Field

Description

Name Provide a descriptive name.
Table Select a table with the CIs for which you want to create the SLA. You can also use the
Configuration Item to Host View [query_based_service_basic_view] table, which is
used by Dynamic CI Groups .
Filter

Configure the filter for the records.

4. Right-click the header and select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3180


<!-- page 3181 -->
Example:

The following is an example.
If you want to run an SLA on all Linux servers for major and critical alerts, first create an SLA
configuration on the Linux Server [cmdb_ci_linux_server] table. Then create the SLA definition
with this filter:
• CI.class is Linux Server
• Severity is Major or Critical

What to do next

Create an SLA definition on the CIs that match this SLA configuration.
Limit the records for the SLA configuration filter
If too many records are returned by the SLA configuration filter, you can add a property to set the
maximum number of records.

Before you begin

Role required: evt_mgmt_admin

About this task

By default, the size of dynamic CI group records is limited to 10,000 elements. Exceeding this
limit can affect system stability. If the filter configuration for a specified dynamic CI group returns
too many records, you can limit the number of records that are returned by setting the value of
the sa.qbs.max_num_of_cis property. For more information, see Create a Dynamic CI Group .

Procedure
1. Enter sys_properties.list in the application navigator.
2. Add the following property:

sa.qbs.max_num_of_cis

3. Set the value to an integer that represents the maximum number of records to return.
Create an SLA definition for a CI or application service
You can create SLA definitions for CIs and application services just as you can for other task
records in the instance.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Service Level Management > SLA > SLA Definitions.
2. Click New.
3. Fill out the fields on the SLA Definition form.
For a description of each field, see Create an SLA definition for a CI or application service.
4. For the Table field, select Event Management SLA [em_ci_severity_task].
5. Configure the Start condition filter by adding conditions, such as:
SLA filter conditions
For all CIs where the Severity is Critical
Type

is CI

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3181


<!-- page 3182 -->
Note: Event Management SLAs work only on CI classes from
Service Instance [cmdb_ci_service_auto].
Severity

is Critical

For a specific service, such as Email, when the Severity is Critical
Application
Service

is Email

Severity

is Critical

6. Configure pause, stop and reset conditions.
7. Click Submit.
Alert lifecycle configuration
Event Management provides various modules, templates, and properties for configuring alerts
and the actions that execute for these alerts.
Configure the alert active interval
The active interval property (evt_mgmt.active_interval) determines how Event Management
handles a new event that is similar to events that appear on an existing closed alert. Based on
the active interval, event, and existing closed alert information, the alert is reopened and the
event information is added to the existing alert or a new alert is created.

Before you begin

Role required: evt_mgmt_admin

About this task

When the new event is received and the alert is already closed, Event Management compares
the time since the last alert update (sys_updated_on) and the active interval property value.
Then, the system either updates the existing alert or creates a new alert (if the original alert is
closed), as explained in the following table. If the alert is open, Event Management automatically
updates it without checking the active interval property value.

Scenario

Result

The new event occurs before the active
interval elapses for the existing closed alert.

The event is identified as a recurrence of an
existing issue. The alert is updated with the
event information and the alert is reopened.

The new event occurs after the active interval
elapses for the existing closed alert.

A new alert is created because the event
is identified as a new issue. The event
information is added to the new alert.

Change the active interval by editing the Active interval (in seconds), within which a new event
reopens a closed alert property value.

Procedure
1. Navigate to All > Event Management > Administration > Event Management Properties.
2. Change the number of seconds for the Active interval (in seconds), within which a new event
reopens a closed alert property.
3. Click Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3182


<!-- page 3183 -->
Configure alert flapping
Set flapping properties to determine when an alert enters and exits the flapping state. Flapping
can indicate configuration problems (that is, thresholds set too low), troublesome services, or
real network problems.

Before you begin

Role required: evt_mgmt_admin

About this task

Flapping occurs when the event source continues to generate events even after its associated
alert has been closed. Flapping causes the resource's status to repeatedly fluctuate between the
OK severity and a severity requiring attention, for example, Critical.

Procedure
1. Navigate to All > Event Management > Administration > Event Management Properties.
2. Edit the following properties, as appropriate.
Property

evt_mgmt.update_alert_restricted_fields_­
elapsed_time

Description

When the system receives events that do
not update alerts—because the event data is
not new and is identical to the existing alert
—system fields are not updated by default.
This helps reduce noise. For example, a "keep
alive" event might be sent every few minutes
from a server to confirm that a device is still
connected, even if no new data is being ex­
changed.
This property defines the minimum time inter­
val (in seconds) that must pass before an alert
can be updated based on identical events.
If an identical event is received within this in­
terval, the update is suppressed to avoid gen­
erating frequent, redundant notifications. By
default, the interval is set to 86,400 seconds
(24 hours).
Flap interval, in seconds, which is the time pe­
riod within which an alert enters the flapping
state.

evt_mgmt.flap_interval

An alert enters the flapping state when its cur­
rent Flap Count value reaches or exceeds the
given evt_mgmt.flap_frequency prop­
erty value within the time period specified by
the evt_mgmt.flap_interval property.

evt_mgmt.flap_frequency

Flap frequency, frequency an alert must reoc­
cur to enter the flapping state.

evt_mgmt.flap_quiet_interval

Flap quiet interval (in seconds), quiet time
that must pass for an alert to exit the flapping
state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3183


<!-- page 3184 -->
Property

Description

An alert exits the flapping state when the
time interval between the latest occur­
rence of the event and the Flap last update
time of the alert reaches or exceeds the
evt_mgmt.flap_quiet_interval prop­
erty value. An alert can also exit flapping in
these conditions:
◦ When an incoming event arrives after
the flap_quiet_interval time has
elapsed. The new alert generates and its
state value depends on the incoming event
severity.
◦ After a background job, which runs
every five minutes, verifies that no
alert updates occurred and the
flap_quiet_interval time has
elapsed. If there are no updates, the alert
shows the previous state value that it had
before the background job ran.
3. Click Save.

What to do next

You can monitor the Event Management > All Alerts list for alerts that are in the flapping state.
For details, see View alerts in the flapping state.
Related topics
Work with flapping alerts
View alerts in the flapping state
Alert priority
Determine the order in which to handle alerts according to the alert priority score. Multiple
factors determine the alert priority score and this value changes with changes to the underlying
factors.

Multi-factor decisions
The value of the alert priority score is a composite of the value of the category and its relative
weight. You can configure the factors that make up the score, as described in the following
sections, according to Category order, Category value mapping, and CI type
weight factor mapping. The categories are:
• Accumulated categories - These categories accumulate items with different sub-types
that may have a different status or weighing factor. For example, services that are factored
according to different criticality or services that are factored according to cost.
• Choice-list categories - A list of items. You can map any of the items to a different
value, thereby changing the priority for that item. For example, critical severity, which has
the value of 1 by default, can be mapped to 4 to give it a higher weight in the calculated alert
priority score.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3184


<!-- page 3185 -->
List of categories
Category

Description

Accumulated categories
Number of impacted
business-services

This category is factored by the business-criticality of the service.
An alert that has an impact on one service has a lower priority
score than an alert that has an impact on many services. For
example, if a router is down, then it might affect many services and
a higher priority ensures that this alert is handled before handling
another alert that has an impact on fewer services. An alert that
has an impact on many non-critical services must be handled with
priority. However, if an alert has an impact on only a few services,
but they are critical services, then this alert has a higher priority.

CI type

This category distinguishes between various CI types. For
example, an alert on a CI type that is a router or switch may have
a higher priority than an alert on another CI type, like a server or
application.

Number of Secondary
alerts

Alerts that have characteristics similar to other alerts are usually
grouped together, such as alerts with the same message key. A
parent alert which has many secondary alerts has a higher priority
than a parent alert that has only a few secondary alerts.
All secondary alerts of a parent alert are counted. If a secondary
alert is closed, it is no longer correlated to the parent alert. If a
parent alert is closed, all secondary alerts are no longer correlated
and their priority value is calculated accordingly.

Choice-list categories
Alert state

Priority score is not calculated for an alert that is in Closed state.
The available states with their default values are:
• Open = mapping value 1
• Reopen = mapping value 2
• Flapping = mapping value 3

Alert severity

The priority score reflects the level of seriousness of the underlying
alert, for example, an alert that has severity of Critical has
a higher weighted value than an alert with a severity of Minor.
Priority is not calculated for an alert that has a severity of OK. The
available levels are:
• Critical
• Major
• Minor
• Warning

Role

The priority score reflects the role of the alert. The priority score
is higher for an alert that has a role of Parent, next is the role
of None, and the least weight is given to an alert with a role of
Secondary. A parent alert that has many secondary alerts has a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3185


<!-- page 3186 -->
List of categories (continued)
Category

Description

higher value than a parent alert that has less secondary alerts. The
available roles are:
• Parent
• None
• Secondary

Structure of the alert priority score
Weighted value for each category
Each category has its own placement in the alert priority score, according to its
order and limit. You can configure the order and limit, as described in Modify the
alert priority score, below. There are only positive numbers.
All category values are mapped from the

em_alert_priority_category_mapping table, except for the following:
• CI Type: Mapped from the em_alert_priority_ci_type table.
• Secondary: Value is the number of secondary alerts and is not mapped from any
table.

Note: To ensure optimal memory protection, alert groups with more than 1000 alerts may
not have an accurate priority score.
Example constituents of alert priority score of 7302020.003
Category

Score

Services

(7.0, 1000000.0)
For example, if there are 2 impacted services whose
business criticality priority score is as follows:
• Service1: Business criticality priority score = 3
• Service2: Business criticality priority score = 4
The sum of the business criticality priority scores is 7, so
the computed priority value is 7,000,000 (7 * 1,000,000)

Note: The business criticality priority score
is the mapped value (Value after mapping)
in the application services entries of the
Alert Priority Category Mappings table
(em_alert_priority_category_mapping).
Severity

(3.0, 100000.0)

CI type

(20.0, 100.0)

Role

(2.0, 10.0)

Secondary

(0, 0.01)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3186


<!-- page 3187 -->
Example constituents of alert priority score of 7302020.003 (continued)
Category

Score

State

(3.0, 0.001)

Using the scores from the preceding table, the alert priority score is computed as follows:

(Services value * 1,000,000) + (Severity value * 100,000) +
(CI type value * 100) + (Role value * 10) + (Secondary value) +
(State value * 0.001)
Replacing the values of the categories from the preceding table into the formula:

(7 * 1,000,000) + (3 * 100,000) + (20 * 100) + (2 * 10) + (0 *
0.001) + (3 * 0.001) = 7,302,020.003
In the Priority Breakdown area of the More Information tab, the alert priority value is displayed
as 7302020.003. In the Alerts list, this value is displayed as 7302 (number of thousands).

Note: If you have customized business criticality values that differ from the
out-of-box values, add an entry to the Alert Priority Category Mappings table
[em_alert_priority_category_mapping].
Effect of category limits
Limits placed on categories enable overflow values to affect the next category that
is ranked higher in priority order. Each accumulated category has a predefined limit.
If the count goes above that limit, 1 is added to the next higher-order category. For
example, if the number of CI types goes over the limit, then 1 is added to the next
category (Severity) which is higher in priority: yyy-zzz becomes yy(y+1) 000

Display in All Alerts list
In the All Alerts list, the alert priority score value is displayed in the Priority column. For display
purposes only, the actual calculated alert priority score is divided by 1000, while in the database,
for calculation and sorting purposes, the full computed value is used.
The detailed computation of the alert priority of the selected alert is displayed in the Priority
Breakdown area More Information tab.

Calculating the alert priority score
Calculating alert priority is based on all of a group's alerts, and not only the group's primary alert.
Priority is calculated for alerts that match these conditions:
• State not-equal to Closed
• Severity not-equal to OK
Alerts that are queued for priority calculation are listed in the em_alert_trigger_queue
table. In the Scheduled Jobs table, there are two Event Management - Alert
Priority Queue jobs. These two jobs can run in parallel. You can use Insert and Stay
to create another job. The Event Management - Alert Priority Queue job runs
once every minute and calculates priorities in batches of 1000 open alerts. There are multiple
factors that determine the value of the priority of an alert. A change in severity triggers an
immediate update of the alert priority score. In this case, only the severity-part of the priority
is changed, together with severity information in the Priority Breakdown area of the More
Information tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3187


<!-- page 3188 -->
Triggers that cause recalculation
Triggers that can cause the alert priority score to be recalculated are:
List of recalculation triggers
Trigger

Effect on the alert priority score

New alert

The generation of a new alert is a trigger to calculate the alert
priority score.

Existing alert that changes
from closed to any other state

Priority is not calculated for a closed alert, so if the alert state
is changed from its current state of closed to open, reopen,
or flapping, that change is a trigger to recalculate the alert
priority score.

Role change, between primary, Changes in role are a trigger for the alert priority score to be
secondary, or none
recalculated. For example:
• An alert whose type has changed to Primary, triggers the
alert priority score to be recalculated.
• An alert whose type has changed to None, triggers the alert
priority score to be recalculated.
• An alert whose type has changed to Secondary, triggers
the alert priority score to be recalculated.
CI type

When a CI becomes bound to alert, that change is a trigger to
recalculate the alert priority score. This trigger to recalculate
the priority occurs once only, when the CI is bound to the
alert.

Change of number of
secondary alerts

A change in the number of secondary alerts triggers the alert
priority score to be recalculated.

Severity

A change in severity is a trigger to recalculate the alert priority
score. For example, changing from OK to Major triggers
the score to be recalculated. Unlike the other triggers listed
above, a change in severity triggers an immediate update of
the severity part of the alert priority score calculation.

Modify the alert priority score
You can change the importance of some categories of the alert priority, by modifying their order
and/or their weight, as described below. For example, if the CI type is higher in importance than
the number of impacted services, you can change their respective order. As a result, the number
of services is now multiplied by 100, while CI type is now multiplied by 1000000.

Note: The changes that you make, using this advanced procedure, change the default
method of calculating the alert priority score. Alerts that might otherwise not have a high
score, by changing these configurable values, change the way you determine the order in
which to handle alerts.
Changing category order
Navigate to the em_alert_priority_category_order table. In the Order
column, you can change the order of the required category.
Category value mapping

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3188


<!-- page 3189 -->
The em_alert_priority_category_mapping table shows the
configuration value for each category choice. Each value in a drop-down list of
categories can be remapped to a different value by configuring this table.
CI type weight factor mapping
Navigate to the em_alert_priority_ci_type table. You can add a new
CI, for example, DualCoreCPU and in the Priority column, you can change the
priority of the required category. In addition, you can edit existing Type and also
change its priority value. This table is used to map the value of each CI type, for
example, a mainframe that is CI_type: cmdb_ci_mainframe might have a priority
of 80, while a server with CI type: cmdb_ci_server might have a priority of 60. The
mapping enables you to customize the priority of the various Ci types.
Alert assignment groups for teams
Alert assignment groups assign alerts to the right teams promptly and automatically, improving
overall incident management capabilities.
Admins determine the alert assignment group priority, making sure that alerts are routed to the
appropriate team members.
The Alert assignment group is determined by the

evt_mgmt.alert_auto_assignment_field property value. As an admin, you can
choose to set the assignment group based on the alert fields using the property value and the
order of the comma-separated fields by editing the property value.
Related topics
Assigning alert assignment group precedence
Team-based integration properties
Create or edit an event rule
Create event field mappings
Assigning alert assignment group precedence
Assign alert assignment group precedence to make sure that alerts are routed to the appropriate
team members.

Before you begin

Role required: admin

Procedure
1. Navigate to All and search for sys_properties.list.
2. In the Search field, enter evt_mgmt.alert_auto_assignment_field and select the
property record.
For more information on the property, see Team-based integration properties.
3. In the Value field, enter the assignment group precedence.
Set the assignment group precedence according to the order of the comma-separated fields
such as cmdb_ci.support_group, IntegrationGroup.
4. Select Update.
Related topics
Team-based integration properties

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3189


<!-- page 3190 -->
Configuring Express List views for users and user groups
Centrally control what users monitor by predefining views in Express List and assigning them to
users and user groups.
As an Event Management admin, you can create Express List views to ensure that users focus on
specific services, priorities, or alerts. Event Management enables you to define the filters, column
order, and filter attributes for an Express List view and then assign the view to individual users
and user groups.
Users belonging to a group can only see the predefined views you assigned to that group and
their own saved views. If a user belongs to multiple groups, they can see the views you assigned
to all of these groups. Users can switch between views and modify and save all views except
their assigned default view. However, they can't override settings in any of their assigned views
and modify or share their default view.
The filter conditions builder enables you to configure AND and OR conditions between attributes.
Express List view filter conditions

For example, the admin can configure conditions that allow the user to see only alerts that are
not assigned to an assignment group or in maintenance. In the example, the alerts must also
contain a value of email_sid and must be from one of the specified sources.
Related topics
Create a predefined Express List view for users
Use an assigned Express List view
Create a predefined Express List view for users
Configure an Express List view for users to make sure that they focus on specific services,
priorities, or alerts. You can set the filters, column order, and filter attributes for this view and
assign it to individual users or user groups.

Before you begin

For more information about predefined Express List views, see Configuring Express List views for
users and user groups.
Role required: evt_mgmt_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3190


<!-- page 3191 -->
Procedure
1. Navigate to All > Event Management > Administration > Express List Views.
2. Select New.
3. On the Express List View form, fill in the fields.
Express List View table
Field

Description

Name

Unique name of the Express List view.

Primary Sort By Field

The field by which to sort the Express List.
Default: Initial event generation time.

Secondary Sort By Field

The field by which to sort the results of the
primary sort-by field.
This field is optional.

Order

The order of this Express List view, if multiple
views exist.

Order of Primary Sort By Field

The sorting order of the Primary Sort By Field:
Ascending or Descending.

Order of Secondary Sort By Field

The sorting order of the Secondary Sort By
Field, if set: Ascending or Descending.

Default

Option to set this Express List view as the
default view for the assigned user or group.
If multiple default views exist, the value set in
the Order field determines their order.

4. Set filter conditions for the Express List view.

Note: When you include even a single unsupported filter in your Express List view, it
prevents the Event Management operator from modifying the settings of any filters in
this view, including those that are supported. If you want to allow operators to adjust their
personal view, make sure to only include supported filters.
a. In the Filter tab, select a field, an operator, and one or more values for a condition.

Note: The default field is State.
b. Optional: Perform the following tasks:

Task

Add a filter condition

Procedure

i. Select either the AND or the OR operator.
ii. Select a field, an operator, and one or
more values for the condition.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3191


<!-- page 3192 -->
Task

Procedure

Add an alert tag filter condition

i. In the Alert Tags Filter section, select
Insert a new row....
ii. Select the required tag, operator, and
value for each tag filter.

Add an additional set of alert tag filter
conditions

i. In the Alert Tags Filter section, select New
Criteria.
ii. Add the required tag filter conditions.
Select Preview.

View the number of results a query with the
configured conditions would return
5. Assign users and groups to the Express List view.
Task

Procedure

a. In the Users tab, select Insert a new row....
Assign a user to the selected Express List
view

b. Select the search icon (
) and search for
the relevant user in the Users table.
c. Select the user and then select the save
icon (

).

a. In the Groups tab, select Insert a new
row....
b. Select the search icon (
) and search for
the relevant group in the Groups table.
Assign a user group to the selected Express
List view

c. Select the group and then select the save
icon (

).

Note: Users who belong to a group can
only see the views that you assigned to
that group. If a user belongs to multiple
groups, they can see the views you con­
figured for all of these groups.

6. From the form menu, select Save.
The following tabs display:
◦ The Express List Table Fields tab shows the fields to be displayed as table columns in
Express List.
◦ The Express List View Field Attributes tab shows the filter attributes for the open alerts in
Express List.
7. Optional: Add table fields and field attributes to the Express List view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3192


<!-- page 3193 -->
Task

Procedure

a. In the Express List Table Fields tab, select
New.
b. On the form, fill in the fields:
▪ Field: The column to add.
Add a column to the Express List table

▪ Express List View: The name of the view
to which to add the column.
▪ Minimum Width: Minimum width of the
column.
▪ Order: The position of the column in the
table.
▪ Active: Option to activate the column.
c. Select Submit.
a. In the Express List View Field Attributes
tab, select New.
b. On the form, fill in the fields:

Add an attribute to the Filter pane in Ex­
press List

i. Field: The attribute to add to the Filter
pane.
ii. Express List View: The name of the view
to which to add the attribute.
iii. Order: The position of the attribute in the
pane.
iv. Active: Option to activate the attribute.
c. Select Submit.

8. Optional: Exclude fields or field attributes from the Express List view by deactivating them.
Task

Procedure

a. In the Express List Table Fields tab, select
Deactivate a field

the information icon (
field record.

) to the left of a

b. On the field form, clear Active.
c. Select Update.
a. In the Express List View Field Attributes
Deactivate a field attribute

tab, select the information icon (
left of a field attribute record.

) to the

b. On the field form, clear Active.
c. Select Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3193


<!-- page 3194 -->
Note: You can view the updated state of a field or a field attribute in the table by
selecting the list controls icon (

) and then selecting Refresh List.

9. When you're satisfied with the Express List view, select Update.
Assign users and groups to predefined Express List views
Assign individual users and user groups to preconfigured Express List views to make sure that
they focus on specific services, priorities, or alerts.

Before you begin

For more information about predefined Express List views, see Configuring Express List views for
users and user groups.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Administration > Express List Views.
2. Select the predefined Express List view that you want to assign to a user or group.
3. Assign users or groups to the selected Express List view.
Task

Procedure

a. In the Users tab, select Insert a new row....
Assign a user to the selected Express List
view

b. Select the search icon (
) and search for
the relevant user in the Users table.
c. Select the user and then select the save
icon (

).

a. In the Groups tab, select Insert a new
row....
b. Select the search icon (
) and search for
the relevant group in the Groups table.
c. Select the group and then select the save
Assign a user group to the selected Express
List view

icon (

).

Note: Users belonging to a group
can only see the predefined views you
assigned to that group and their own
saved views. If users belong to multiple
groups, they can see the views you as­
signed to all of these groups.

4. Select Update.
Alert impact calculation
Impact calculation shows the magnitude of an outage on CIs, services, alerts, and alert groups.
The system uses factors such as impact rules and CI relationships to calculate the severity

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3194


<!-- page 3195 -->
of a generated alert. The severity appears on the impact tree, application services maps, and
dashboards.
Impact calculations are available for application services alert groups. The following factors are
used to calculate the overall impact of an outage.
• Impact rules.
• Number of related active alerts.
• Past history of the affected CI.
• Relationships between CIs for a particular application service or application services.
• If the CI element includes a network or storage devices.
• Alerts on CIs in the maintenance state are excluded from impact calculation.

Note:
◦ CIs are considered to be in maintenance not only when an active change request is
scheduled, but also when the Status field of the CI is set to In Maintenance.
◦ When a child CI is put in maintenance, it also places the parent CI in maintenance.
• By default, impact is calculated for all operational application services. However, the system
allows you to filter impact calculation by service class or by individual application service. For
more information, see Add CMDB tables or classes for impact calculation and Add application
services for impact calculation.
If there is a connection between services, the impact of one service on the other is also
calculated.
Impact calculations use information from various sources to set the alert severity

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3195


<!-- page 3196 -->
How impact is calculated
Impact calculation varies depending on the CI relationships for a application service or
application services. Additional factors, such as change requests, network paths, storage paths,
and related CIs all affect impact calculation.
Services
The following impact calculation flow operates for alerts where the outage does
not affect a network or network storage. Event Management performs the following
steps:
1. Create a service map. Use the Service Configuration Item Associations
[svc_ci_assoc] and CI Relationships [cmdb_rel_ci] tables to create child-parent
relationships in the application service or application services.
2. If there is no CMDB path from the service to the CI but an association appears in
the svc_ci_assoc table, show a Depends-on relationship between the application
service and the CI. Otherwise, show no connection.
3. For an application services, if the CIs assigned to the service are also connected
to the service in the CMDB, the map keeps the hierarchy between CIs as
they appear in CMDB. The CI service assignments appear in the Service
Configuration Item Associations section of the Application service form. If there
is no connection to the service in the CMDB, the CIs appear directly under the
application services in the map.
4. Create the impact tree. Mark the magnitude of an outage by 100% down, 60%
affected, 40% impaired, or 20% impaired. If the items in two or more clusters are
affected, the impact is 100% down.
Change requests and the In Maintenance status
If an active change request is scheduled for the CI or if the Install Status of the CI is
In Maintenance, all alerts on the affected CI are excluded from impact calculation.
The Alerts tab also temporarily hides all corresponding alerts. The impact tree
shows the CI in green with a note of (In Maintenance). The impact tree and the
service map temporarily show CIs in green.

Note:
• CIs are considered to be in maintenance not only when an active change
request is scheduled, but also when the Status field of the CI is set to In
Maintenance.
• When a child CI is put in maintenance, it also places the parent CI in
maintenance.
For a service, all alerts on CIs in the service are also hidden from the Alerts tab. The
entire service is shown in green on the impact tree. For a host with an active change
request, the host applications are considered as one unit. All child applications are
treated in the same manner as the host until the change request is no longer active.
For additional information, see How alerts work with CIs in maintenance.
Network paths
To account for network redundancy, Event Management uses a separate impact
calculation. You can see network topology or path changes in the application
service. The following impact calculation flow operates for alerts where a network
path is affected. Event Management performs the following steps:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3196


<!-- page 3197 -->
1. Create a application service map for the affected network.
◦ Use the host ID and target IP information from the alert and the network path
from the Network Paths [sa_network_paths] table.
◦ Use the elements in the network path that derive from the Configuration Item
[cmdb_ci] table. Also, use the elements that are associated to the path, from the
Infra Path To Elements [sa_infra_path_assoc] table.
◦ Set the relationships. The application CI has a Depends on::Used by
relationship on an element in the path that is defined in the CI Relationship
[cmdb_rel_ci] table. In the relationship, the application CI is the parent and the
element in the network path is the child.
2. Calculate a separate severity for each regular element in the path. Each regular
element in the path contributes its own severity to its ancestors up to the
application CI where the path originated from.
3. Calculate all redundant elements in the path with the redundancy rule by
reducing the severity on the impacted CIs by one level. For example, if the
severity is Critical, the redundancy rule decreases severity by one level to
Major.
4. Create the impact tree. Mark the magnitude of an outage by 100% down, 60%
affected, 40% impaired, or 20% impaired. If the items in two or more clusters are
affected, the impact is 100% down.
Storage paths
To account for storage device redundancy, Event Management uses a separate
impact calculation. You can see impact tree updates when the network storage
topology changes from the application service. Event Management performs the
following steps for alerts that contain storage CIs:
1. Create a application service map for the affected storage device:
◦ Use the storage device in the sa_fs_to_storage_path table. The storage device
definition uses the file system information in the path.
◦ Use the elements in the storage path that derive from the Configuration Item
[cmdb_ci] table. Also, use the elements that are associated to the path from the
Infra Path To Elements [sa_infra_path_assoc] table.
◦ Set the relationships. The application CI has a Depends on::Used by
relationship on an element in the path that is defined in the CI Relationship
[cmdb_rel_ci] table. In the relationship, the application CI is the parent and the
element in the storage path is the child.
2. Calculate a separate severity for each regular element in the path. Each regular
element in the path contributes its own severity to its ancestors up to the original
application CI the path.
3. Use the redundancy rule to calculate redundant elements in the path by reducing
the severity on the impacted CIs by one level. For example, if the severity is
Critical, the redundancy rule decreases by one level to Major.
4. Create the impact tree. Mark the magnitude of an outage by 100% down, 60%
affected, 40% impaired, or 20% impaired. If the items in two or more clusters are
affected, the impact is 100% down.
Related CIs

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3197


<!-- page 3198 -->
As alerts generate for a CI, additional impact calculations run for related CIs. For
example additional impact calculations run for a application service dependency
to a CI that is not actually part of the application service. These related CIs are
not discovered as part of the service. Instead, the related CIs are specified by an
infrastructure relationship definition.
The following impact calculation flow operates for alerts with CIs that have a
dependency to related CIs which are considered outside the application service.
Event Management performs the following steps:
1. Derive relationships between the application service CIs and related CIs. Use
the relationships, impact rules, and other data from the Infrastructure Relations
[em_impact_infra_rel_def] table.
2. Add related CIs to the impact tree and alert list on the Event Management
dashboard.
◦ Use data from the Infrastructure Relationship [em_impact_infra_rel_def] table to
show containment links to the host.
◦ Use the Impact Status [em_impact_status] and Alert History [em_alert_history]
tables to determine the status.

Impact rules
Impact rules, which are used for impact calculation, estimate the magnitude or severity of an
outage based on affected CIs.
The Impact Rule [em_impact_rule] table contains impact rules that show the applicable CIs,
application services, and settings for impact. The following default impact rules are available.
Application Cluster Member
Determines how application cluster members affect the overall impact of the cluster.
For example, if a three-member cluster requires 90% Influence to set the severity
for the entire cluster to Major, each member has 30% Influence (90% divided by 3).
The severity of the entire cluster can only change to Major when all three members
have a severity of Major.
You can configure different impact rules per cluster and thus the child CI impact
propagation to the parent (for the same child CI) will be different. Therefore, you can
manually create groups of Cis (aka manual clusters) and configure the impact rule at
the cluster level for downstream towards the cluster children.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3198


<!-- page 3199 -->
Example where the same child CI will propagate its impact to its
parent cluster differently to each cluster

In the above example, there are two entry points. The Osaka cluster on the righthand side has three CIs. The Tokyo cluster on the left-hand side has two CIs. The
Tokyo and Osaka backup server has shared parents - Tokyo cluster and Osaka
cluster. On the right-hand panel you can see the Impact Tree where the Tokyo
cluster has two Application Cluster Members with 50% influence each and the
Osaka cluster has three with 34% influence each.
For manual cluster configuration there are two rows: Application Impact and
Application Cluster Member. The children are displayed since the Impact On field
was selected as Parent and not Application Service. In the Application Cluster
Member row the Influence field is configured to two. This implies that the minimum
amount of children who fail (and that they propagate the failure upwards to their
parents) are two. The Osaka cluster is configured to three. The percentage is
different for the Tokyo and Osaka backup server for each cluster (50% and 34%). As
you can see, even though the Tokyo and Osaka backup server failure is Red Critical,
it influences the parents differently. The Osaka cluster remains green even though
the Tokyo cluster failure is Orange Major.
Click a service or CI to see the alerts that are associated with it. For example, if you
click the high-level application service, the alerts that are associated with it are
displayed in the alert area under the Map View when you select Alerts. The alerts
listed are those of the selected service. Alerts of child-services are listed when
those services are selected.
The following impact fields are displayed when you select Impact.
Inclusion
Determines the impact on entities with a Contains relationship. This rule is readonly.
Infrastructure Dependencies
Determines the definition of impact propagation for CIs in infrastructure
relationships.
CI application service
Determines how impact applies to parent or child entities that are part of an
application service.
CI Impact
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3199


<!-- page 3200 -->
Applies to application services. Determines the relationship between service
members. The impact from child to parent CIs is always 100%. For example, the
parent impact severity is derived from the child CI with the highest severity.
CI Parent in Application
Sets impact only on the parent entity.
Network Path
Determines how impact applies to parent or child entities that are part of a
traditional network.
OS Cluster Member
Determines how host cluster members affect the overall cluster status based on
a percentage or number of cluster members. For example, if a three-host cluster
requires 60% Influence to set the severity of Major, each member has 20%
Influence (60% divided by 3). The severity of the entire cluster can only change
to Major when two or more cluster members have a severity of Major. The entire
cluster is also considered to be down.
Storage Path
Determines how impact applies to parent or child entities that are part of a storage
network.

Properties
In addition to configuring impact rules, you can configure properties for impact calculation.
Configure these properties, as appropriate:
Impact Calculation Properties
Property Name

Description

evt_mgmt.impact_calculation.alert_group_support
Enable alert group support.
evt_mgmt.impact_maintenance.sleep_time_sec
Minimum time in seconds for checking CI
maintenance: checks both the Status field on
the CI and any change request schedule for
the CI.
evt_mgmt.impact_calculation.alert_copy_delay
The delay after creating or updating an alert,
before it is used for impact calculation and
grouping. Used to compensate for the late
arrivals or slow business rules defined on the
em_alert table. Default = 2000 msec.
Used when alerts and events are
processed one at a time (when the
evt_mgmt.max_objs_in_alert_query
property is not defined or is set to 1).

evt_mgmt.impact_calculation.alert_copy_delay_when_alerts_are_processed_in_ba
The delay after creating or updating an alert,
before it is used for impact calculation and
grouping. Used to compensate the late arrivals
or slow business rules defined on em_alert
table. Default = 30000 msec.
Used in large customer environments
with high traffic, when alerts and events
are processed in batches (when the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3200


<!-- page 3201 -->
Impact Calculation Properties (continued)
Property Name

Description

evt_mgmt.max_objs_in_alert_query
property is set to a value greater than 1).
For more information, see Event Management - Impact calculation [KB1157218]

.

Understand Service Maps
Service maps show active alerts for CIs and the relationships between CIs. By viewing this
information, you can better understand the source of alerts and take remediation steps. The
service map is available for all application services.

About Service Maps
A service map shows alerts with impacted CIs and CI interdependencies. For example, changes
to a connection between a host and hypervisor appear on the service map. As service map
definitions change, the service map, alert, and impact information updates accordingly. From
the Quebec release, there is enhanced visibility. When the alert is bound to the entry point, the
service map identifies an entry point problem.

Note: Alerts will not be displayed for the entry points on the service map.
You can open a service map from these places:
• From the Application services list, you can view service maps for application services.
• From the Monitored services list, you can view service maps for monitored services.
The following icons are used in service maps. The icon shapes are slightly different for
application services.
Service map icons
Icon Description

(

) Represents applications such as Microsoft IIS or SQL servers.

(

) Represents physical and VM computers and servers.

(

Represents the network starting point. For example, Layer 3 devices appear toward the
) top of the map, and connected software and services appear near the end of the map.

( )

Shows the number of redundant CIs.

(

) Shows the workload between machines.

(

)

(

Each CI with no active alerts box represents a network CI. A gray box represents a CI with
) no active alerts. Information about the CI is hidden.

(

) Hides multiple CIs that are designated as redundant.

The gray connector shows a relationship between CIs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3201


<!-- page 3202 -->
Service map icons (continued)
Icon Description

An impacted CI displays the color that represents the severity of the alert associated with
the CI.
• Critical (red): Immediate action is required. The resource is either not functional or
critical problems are imminent.
• Major (orange): Major functionality is severely impaired or performance has degraded.
(

)

• Minor (yellow): Partial, non-critical loss of functionality or performance degradation
occurred.
• Warning (blue): Attention is required, even though the resource is still functional.
• OK (green): An alert is created. The resource is still functional.
• No color: No active alerts.

(

) Represents a fiber channel, hard drives, or other data storage devices.

(

) Represents related web services for the network such as NGINX or JBoss web server.

Note: Session timeout settings don't apply to this screen. The session remains
connected, even when there is no human interaction. If this setting is a concern, either log
out or close the active tab in the browser.
Related topics
Alert impact calculation
View an alert impact on CIs in a service map
View the impact tree
The impact tree shows the relationships between CIs and the relative percentage impact for
each child CI. This information is available for both discovered services and application services.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

About this task

The impact tree shows the result of impact rules on CI parent and child relationships. The
tree represents a service map with CIs from the Service Configuration Item Associations
[svc_ci_assoc] table. When related CIs are connected but not part of the service map, the impact
for the related CIs can also appear in the impact tree.
The numbers or percentages on a parent CI summarize overall severity based on alerts from
child CIs. The parent severity is based on impact rule computations.
You can also learn about the impact tree from the following video tutorial.
Event Management Part 2 | Impact Tree

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3202


<!-- page 3203 -->
Impact Tree

Procedure
1. Open the service map for the service from the Application service list.
a. Navigate to Event Management > Services > Application Services.
b. Click View service next to the service.
2. On the service map, click a CI that has a severity color.
3. Click the Impact tab.
4. From the Impact Tree tab in the side pane, expand the parent CI and click the CI that
generated alerts.
5. Use the severity color to locate CIs that contain alerts:
◦ Critical (red): Immediate action is required. The resource is either not functional or critical
problems are imminent.
◦ Major (orange): Major functionality is severely impaired or performance has degraded.
◦ Minor (yellow): Partial, non-critical loss of functionality or performance degradation
occurred.
◦ Warning (blue): Attention is required, even though the resource is still functional.
◦ OK (green): An alert is created. The resource is still functional.
6. Do one or more of the following.
Option

Description

a. Click the Impact tab.
Adjust impact rules

b. Review and adjust the impact rules as nec­
essary.
a. Click the Alerts.

Remediate an alert

b. Right-click the alert and select Run remedia­
tion.

Network paths appearing in the impact tree can use a large amount of resources,
which degrades system performance. To disable network paths from appearing

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3203


<!-- page 3204 -->
in the impact tree, navigate to System Properties > All Properties and set the
evt_mgmt.network_path_excluded property to true.
To view impact tree using Service Operations Workspace, see View impact tree using Service
Operations Workspace.
Adjust impact rules for a CI
Configure impact rules to customize the impact calculation for discovery services and manual
services. The impact rules update the overall alert and show the impact on related CIs. When
you change impact rules, the updates apply to alert severity in places such as the Event
Management dashboard and Operator Workspace.

Before you begin

Role required: evt_mgmt_admin

About this task

You can view and adjust the impact rules of CIs from the application service map of a service.

Note: Event Management Dashboard is not supported for new instances in the Paris
release. However, instances upgraded from a release prior to Orlando that use Event
Management Dashboard can continue to do so.

Procedure
1. Open the application service map from either the Event Management dashboard or the
Application service list.
Option

Description

From the Event Management dashboard

From the Application Service list

a. Navigate to Event Management > Dash­
board.
b. Double-click the tile of the application ser­
vices.
a. Navigate to Event Management > Services
> Application Services.
b. Click View Map next to the application ser­
vices.

2. On the application service map, click a CI.
3. Below the map, click the Impact tab and then adjust the impact rules accordingly.
Impact Rules
Field

Description

Name

The name of the impact rule.
◦ Application Cluster Member: Determines how application cluster members
affect the overall impact of the cluster. For example, if a three-member cluster
requires 90% Influence to set the severity for the entire cluster to Major, each
member has 30% Influence (90% divided by 3). The severity of the entire
cluster can only change to Major when all three members have a severity of
Major.

Note: To configure a manual cluster, see Configure a manual cluster
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3204


<!-- page 3205 -->
Field

Description

◦ Application Impact: Determines how impact is applied to a specific CI, the
overall application service, or parent/child entities within an application service.
For the Application Impact rule, you can choose from the following Impact
options: Application Service or Parent.
▪ If no CI is selected, the alert rule applies to the entire application service.
▪ If you select a specific CI, you can define whether the rule applies to the
service or its parent.
◦ CI Parent in Application: Sets impact only on the parent entity.
◦ Inclusion: Determines the impact on entities with a Contains relationship. This
rule is read-only.
◦ Infrastructure Dependencies: Determines the definition of impact propagation
for CIs in infrastructure relationships.
◦ Network Path: Determines how impact applies to parent or child entities that
are part of a traditional network.
◦ OS Cluster Member: Determines how host cluster members affect the overall
cluster status based on a percentage or number of cluster members. For
example, if a three-host cluster requires 60% Influence to set the severity of
Major, each member has 20% Influence (60% divided by 3). The severity of
the entire cluster can only change to Major when two or more cluster members
have a severity of Major. The entire cluster is also considered to be down.
◦ Storage Path: Determines how impact applies to parent or child entities that are
part of a storage network.
Impact
On

The valid type of service for this impact rule.
◦ Application Service: The impact rule applies to a application service.
◦ Parent: The impact rule applies to the parent CI.

Influence The value to allow the impact rule to set on the parent. Set a value on the parent.
This field works with the Influence Units field.
Influence The unit of measurement to show impact on the parent. Set the highest value on
Units
the parent CI. Set lower values on each child CI. When alerts occur for several
child CIs, Event Management calculates the sum of the Influence Units of each
affected child. If the sum exceeds the parent Influence Units value, the parent
receives the highest severity in the set. This field works with the Influence field.
◦ Percent: When the percentage exceeds the Influence value, apply the impact
on the parent.
◦ Number: When the number exceeds the Influence value, apply the impact on
the parent.
For example, you can set the parent Influence Units to 100% and the child CIs
to these values:
▪ Child 1: 34%
▪ Child 2: 34%

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3205


<!-- page 3206 -->
Field

Description

▪ Child 3: 34%
▪ Child 4: 70%
When alerts for Child 3 and Child 5 have the Critical severity, the severity of
the parent is set to Critical because the sum is greater than 100% (34% + 70% =
104%).
Impact
when
Critical

The alternative impact to use when the calculated severity is Critical. If the column
to the right of Impact when Critical has a higher severity, update all right-most
columns with the same or a lower severity as Impact when Critical. To make sure
the topology and impact tree accurately show impact, always update each column
accordingly.
◦ Critical: Red (highest severity).
◦ Major: Orange.
◦ Minor: Yellow.
◦ Warning: Blue (lowest severity).

Impact
when
Major

The alternative impact to use when the calculated severity is Major. If the column
to the right of Impact when Major has a higher severity, update all right-most
columns the same or a lower severity as Impact when Major. To make sure the
topology and impact tree accurately show impact, always update each column
accordingly.
◦ Critical: Red (highest severity).
◦ Major: Orange.
◦ Minor: Yellow.
◦ Warning: Blue (lowest severity).

Impact
when
Minor

The alternative impact to use when the calculated severity is Minor. Controls the
field values to the right of this field. If the Impact when Warning column has a
higher severity, use the Impact when Minor value for both fields. To make sure
the topology and impact tree accurately show impact, always update each column
accordingly.
◦ Critical: Red (highest severity).
◦ Major: Orange.
◦ Minor: Yellow.
◦ Warning: Blue (lowest severity).

Impact
when
Warning

The alternative impact to use when the calculated severity is Warning. To make
sure the topology and impact tree accurately show impact, make sure that the
columns to the left have higher severities.
◦ Critical: Red (highest severity).
◦ Major: Orange.
◦ Minor: Yellow.
◦ Warning: Blue (lowest severity).

What to do next

Review the changes on the impact tree. For example, if you changed a number or percentage
influence for child CIs, review the impact tree updates accordingly.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3206


<!-- page 3207 -->
View an alert impact on CIs in a service map
You can view service maps to see active alerts for CIs and the relationship between CIs. By
viewing this information, you can better understand the source of alerts and take remediation
steps. The service map is available for all application services.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

About this task

You can open a service map from these places:
• From the Application services list, you can view service maps for application services.
• From the Monitored services list, you can view service maps for monitored services.

Procedure
1. Open an application service map:
a. Navigate to Event Management > Services > Application Services.
b. Next to the service, click View Map.
2. Do one or more of the following.
Option

action

In the service map:
View alerts for a CI by type and severity

a. Click a CI tile.
b. Below the map, click the Alerts tab and re­
view the listed alerts.
In the service map:

View changes to a CI in a discovered ser­
vice

a. Click a CI tile.
b. Below the map, click the Changes tab.
In the service map:
a. Click a CI tile.

Show alert bindings to CIs

b. Click the additional actions menu icon
to view the Affected CIs indicator.
c. Below the map, click the Affected CIs tab.
In the service map:
a. Click a CI tile.

View CI properties

b. In the side pane, click the Properties tab
and review information about the CI.
c. If you want to view more detailed informa­
tion, scroll to the end of the pane and click
Detailed Properties.
In the service map:

Show the impact rules for a CI

a. Click a CI that has a severity.
b. Below the service map, click the Impact tab
and review the listed impact rules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3207


<!-- page 3208 -->
Option

action

In the service map:
Show alert details for networks or storage
for a service

a. Right-click a path between CIs.
b. Select Show network pathor Show stor­
age path.
In the service map header:

Display additional information for CIs

a. Click the additional actions menu icon
b. You can select the Map Indicators for addi­
tional information that you want to view.
In the topology, right-click the CI, and then se­
lect Remediation options.

Remediate a CI
Related topics
Alert impact calculation
Understand Service Maps

Create an infrastructure relationship for related CIs
Infrastructure relationships show CIs that are connected to a application service but are not
necessary parts of the service. Infrastructure relationships are only available for application
services.

Before you begin

Role required: evt_mgmt_admin

About this task

When you create a CI infrastructure relationship, the information is stored in the Infrastructure
Relations [em_impact_infra_rel_def] table. When alerts generate, the related CI accompanies
the application service information on the Event Management dashboard and in the impact tree.
Additional information for the related CIs only appears on a related dependency view map for the
application service. The following default infrastructure relationships are available.
Default infrastructure relationships
Infrastructure relationship

Impact rule

Description

cmdb_ci_appl

OS Cluster Member

Shows alert impact between
hardware and software
applications.

cmdb_ci_esx_server

Infrastructure Dependencies

Shows alert impact between
VCenter and ESX clusters.

cmdb_ci_kvm

Infrastructure Dependencies

Shows that alert impact on
Linux Kernel-based Virtual
Machine (KVM) connectivity.

cmdb_ci_vm_zones

Infrastructure Dependencies

Shows alert impact on the
Solaris VM zones.

For example, based on of the cmdb_ci_vm_zones Infrastructure relationship definition, Event
Management adds ZoneServer@mmp1 to the application service. The Containment rule
manages impact severity on alerts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3208


<!-- page 3209 -->
Related CIs appear on the BSM

Procedure
1. Navigate to All > Event Management > Administration > Infrastructure Relations.
2. Click New.
3. Fill in the fields, as appropriate.
Infrastructure Relations form
Field

Description

Child
Type

The table that contains data about the child entity.

Parent
Type

The table that contains data about the parent entity.

Relation
Type

The relationship between the child and parent entities.

Impact
The impacts direction to show on the application service map.
Direction
◦ From Child to Parent: When an alert is regarding a child, show the impact on the
parent.
◦ From Parent to Child: When an alert is regarding a parent, show the impact on
the child entity.
Impact
Rule

The impact rule to calculate infrastructure relationships:
◦ OS Cluster Member : Determines how host cluster members affect the overall
cluster status based on a percentage or number of cluster members. For
example, if a three-host cluster requires 60% Influence to set the severity of
Major, each member has 20% Influence (60% divided by 3). The severity of
the entire cluster can only change to Major when two or more cluster members
have a severity of Major. The entire cluster is also considered to be down.
◦ Application Cluster Member : Determines how application cluster members
affect the overall impact of the cluster. For example, if a three-member cluster

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3209


<!-- page 3210 -->
Field

Description

requires 90% Influence to set the severity for the entire cluster to Major, each
member has 30% Influence (90% divided by 3). The severity of the entire
cluster can only change to Major when all three members have a severity of
Major.
◦ Infrastructure Dependencies : Determines the definition of impact propagation
for CIs in infrastructure relationships.
◦ CI Application Service: Determines how impact applies to parent or child
entities that are part of an application service.
◦ CI Parent in Application: Sets impact only on the parent entity.
◦ Inclusion: Determines the impact on entities with a Contains relationship. This
rule is read-only.
◦ Network Path: Determines how impact applies to parent or child entities that
are part of a traditional network.
◦ Storage Path: Determines how impact applies to parent or child entities that are
part of a storage network.
◦ CI Impact : Applies to application services. Determines the relationship
between service members. The impact from child to parent CIs is always 100%.
For example, the parent impact severity is derived from the child CI with the
highest severity.
4. Click Submit.
View impact of child service on parent service
In the map view of an application service, the severity of a child service is propagated to its
parent service.

Before you begin
Role required:

• for application services, evt_mgmt_admin
• for discovered services, service_mapping_admin

About this task

In the map view of a discovered application service, you can see that the severity of a child
service is propagated to the parent service.
An application service is affected by the severity of alerts that are directly associated with it and
alerts on the CIs that are in the service. If the severity of a child service is higher than that of its
parent service, on the map view the parent service shows the severity of the child service. In the
map view, the Impact Tree list shows the CIs. The color of the CIs indicates the alert severity. The
child service is also affected by application services that are under it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3210


<!-- page 3211 -->
Example where the parent service shows the severity of the child service

If a loop is created, for example, by connecting a parent service to a sub-service, this relationship
can be viewed in the map view. The impact of this loop is not calculated and the Impact Tree
does not display this relationship. For example, assume that there are three CIs, A, B, and C,
where C is a sub-service to B and B is a sub-service to A. The relationship of the A connected
service to C is displayed in the map view. However, this relationship is not shown in the Impact
Tree.

Note: A message appears in the system error log in the following format, where the sys_id
of the service and the node changes accordingly: Found loop in ServiceId:
[sysId], and node:[sysId]. Removing this relation to avoid
impact loops
For example, Found loop in
ServiceId:409d4fd59f030200fe2ab0aec32e705c, and
node:df5cf6159f030200fe2ab0aec32e70a2. Removing this relation
to avoid impact loops
Click a service or CI to see the alerts that are associated with it. For example, if you click the
high-level application service, the alerts that are associated with it are displayed in the alert area
under the Map View. The alerts listed are those of the selected service. Alerts of child-services
are listed when those services are selected.
Example of alerts listed under the Map View

Procedure
Open an application service map:
a. Navigate to Event Management > Services > Application Services.
b. Select View Service next to the service.
c. On the right-hand panel, select Impact tree.
d. On the lower panel, select Impact.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3211


<!-- page 3212 -->
Result

In the service map, you can visually verify that the service health of the sub-service is rolledup to the parent service. At the bottom of each icon of an impacted CI is a colored bar that
represents the severity of the alert. This color bar also displays in the bottom bar of its parent
service. For manual cluster configuration, you can modify the Application Impact and Application
Cluster Member.
Related topics
Transfer a map segment into another application service
Configure a manual cluster
Adjust alert impact while triaging an alert
View an alert impact on CIs in a service map
Add CMDB tables or classes for impact calculation
Add the CMDB tables that contain application services to be considered during impact
calculation, helping ensure accurate and relevant impact results.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

About this task

Organizations may have a vast number of CMDB tables—or classes—such as
cmdb_ci_service_by_tags, cmdb_ci_service_auto and many others. However, not all of these are
required for impact calculation. To streamline analysis and avoid processing irrelevant data, you
can selectively add or remove only those CMDB classes that represent critical infrastructure or
components. The procedure below shows how to add a CMDB class. If you want to remove any
CMDB table from the list, see Remove CMDB tables or classes from impact calculation.
When you add a CMDB class, all application services related to that class are considered for
impact calculation. However, if you do not want to include all services of a specific class and
only want to select specific ones, you can do so on the Impact Filter Services page. For more
information on how to include or exclude a service, see Add application services for impact
calculation.

Procedure
1. Navigate to All and search for em_impact_inclusion_class.list.
The Impact Inclusion Classes page opens, displaying a list of CMDB classes that are included
in impact calculation.

2. Select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3212


<!-- page 3213 -->
3. From the Table field, select a CMDB table.

Note: The list contains only the CMDB tables supported for impact calculation, not all
CMDB tables.

4. Select Submit.
The CMDB table adds to the list of impact inclusion classes.

Remove CMDB tables or classes from impact calculation
Exclude unnecessary CMDB tables or classes from impact calculation to improve performance
and focus on relevant data.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

Procedure
1. Navigate to All and search for em_impact_inclusion_class.list.
The Impact Inclusion Classes page opens, displaying a list of CMDB classes that are included
in impact calculation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3213


<!-- page 3214 -->
2. Select the CMDB table that you want to remove.
3. Select the Actions on selected rows menu and then select Delete.
4. In the confirmation window, select Delete.
The CMDB table is removed from the list.
Add application services for impact calculation
Specify the application services that must be considered during impact calculation to ensure
accurate service impact assessment.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

About this task

Organizations may have thousands—or even hundreds of thousands—of application services.
If a CMDB class is added to the em_impact_inclusion_class.list table, then all application
services related to that class are included in impact calculation. However, there are two possible
scenarios:
• Scenario 1: CMDB class is added to em_impact_inclusion_class.list but you want only specific
services to be considered for impact calculation. You can either:
◦ Remove the unwanted services from the em_impact_filter_service.list, or
◦ Set their status to false in the em_impact_filter_service.list.
For information on how to remove the application service from the list, see Remove application
services from impact calculation.
• Scenario 2: CMDB class is not added to em_impact_inclusion_class.list. So, none of the
application services related to this class are considered for impact calculation. However, you
want only specific application services from this class to be included, you can directly add
those services to the em_impact_filter_service.list table and set their status to true without
adding the CMDB class to the em_impact_inclusion_class.list table.
The following procedure shows how to add an application service directly to the
em_impact_filter_service.list table so that it is considered for impact calculation.

Procedure
1. Navigate to All and search for em_impact_filter_service.list.
The Impact Filter Services page opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3214


<!-- page 3215 -->
2. Select New.

3. In the Service field, select the search icon (

).

Note: By default, the Calculate impact check box is selected.
4. In the Service Instances page, select the service that you want to add for the impact
calculation.

5. Select Submit.
The application service adds to the list of impact filter services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3215


<!-- page 3216 -->
Note: Only the application services added to the Impact Filter Services list appear in
the Service Dashboard.
Remove application services from impact calculation
Exclude specific application services from impact calculation to reduce noise and focus on
critical components.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

About this task

Removing or deleting a record from the list won’t necessarily exclude the application service
from impact calculation if the CMDB class still exists in em_impact_inclusion_class.list.
However, even if the class exists in em_impact_inclusion_class.list, the application service
will not be considered for impact calculation if its status is set to Calculate Impact = false in
em_impact_filter_service.list.
For the application service that you want to exclude from the impact calculation, add the
application service with Calculate Impact = false, or change the Calculate Impact = false, if this
record already exist. The procedure shows how to configure this setting.

Procedure
1. Navigate to All and search for em_impact_filter_service.list.
The Impact Filter Services page opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3216


<!-- page 3217 -->
2. For the application service that you want to exclude from the impact calculation, change the
Calculate impact status of the application service to false.
This keeps the application service record in the list but excludes it from impact calculation.
Probable Root Cause Analysis (RCA)
Shorten the mean time to repair (MTTR) by discovering the root cause of an alert.
Probable root cause analysis (RCA) provides a list of probable root causes for alerts. This
capability uses existing data in IT Service Management to help you determine the root cause of
an issue.
RCA takes three factors into consideration: Alerts, configuration item (CI) topology, and change
requests on the CIs. It extracts CIs from alerts or alert groups and analyzes the CI relationships in
the CMDB. It then uses a set of configurable filters to consider relevant change requests on the
CIs as possible root causes.
Change requests can be related to a time frame or to a CI, the application service it belongs to, or
the software installed on it. For example, a CI must be upgraded or a security patch installed on
it. A change request on one CI can affect other CIs.
RCA maps the alerts and change requests to the CIs. It proceeds to calculate the root cause
score, a logical score used for sorting probable root causes. The calculation of this score is
based on change requests on CIs, and on alerts on a crucial CI called the Topology Origin CI.
The root cause score determines how RCA populates the probable root causes list.
Probable root cause analysis list

By default, the list shows the five probable root causes with the highest score. It lists the CIs
related to each alert, and the reason RCA identified them as probable root causes.
Scoring for probable root causes is determined by the following criteria, in the indicated order
(lower number = higher priority):
1. Change on a CI that originates from topology.
2. Change on a related CI originates from topology.
3. Change on a CI.
4. Change on a related CI/change on an application service/change on software.
5. Alert on the CI that originates from topology.
To disable the Probable Root Cause Analysis feature, you must create the property
sa_analytics.disable_prc and set the value to true. For more information on how to
create a property, see Add a system property .
Customize RCA settings
Modify default settings that determine RCA behavior.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3217


<!-- page 3218 -->
Before you begin

Role required: evt_mgmt_admin

About this task

Default filter settings control which change requests RCA considers as possible root causes. You
may want to change certain default settings, for example to make RCA ignore standard change
requests.
You can also change the number of probable root causes shown in the list. By default, the list
shows the five probable root causes with the highest root cause score.
By default the RCA calculation is enabled. You can disable it by changing the default
sa_analytics.disable_prc value to True.

Procedure
1. Navigate to All > System Properties > All Properties.
2. Do one or both of the following, as needed.
◦ Change default filter settings:
a. Select New.
b. In the Name field, specify the name of the property for which you want to change the
default setting.
The new property must have the same name as the related property in the table.

Property

Description

sa_analytics.rca.filter_category
The categories of
change requests
that RCA considers
as possible root
cause.

Type

Default value

string

""

sa_analytics.rca.filter_type
The types of change string
requests that
RCA considers as
possible root cause.

"standard,normal,emergency"

sa_analytics.rca.filter_state
The state of change
requests that
RCA considers as
possible root cause.

"-1,0,3,7,8,157"

string

▪ Implement: -1
▪ Review: 0
▪ Closed: 3,7,8,157

sa_analytics.rca.filter_interval_in_hour
The time frame,
in hours, during
which change
requests occurred
that RCA considers
as possible root
cause.

int

168

sa_analytics.rca_use_legacy_query
Use legacy queries
for RCA calculation.

Boolean

True

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3218


<!-- page 3219 -->
Property

Description

Type

Default value

sa_analytics.rca.get_tasks_for_impacted_cis
Includes change
Boolean
requests for
impacted services in
the RCA list.

True

sa_analytics.rca_scoring_by_alert_proximity
Enables sorting
Boolean
of RCAs by time
proximity to the alert.

True

sa_analytics.rca_cmdb_relations_levels
Number of hops
to search related
configuration items.

1

int

sa_analytics.rca_time_filtering_by_planned_time
Enables filtering of
Boolean
change requests by
planned time.

True

sa_analytics.rca_time_filtering_by_actual_start_time
Enables filtering of
Boolean
change requests
by implementation
time.

True

sa_analytics.rca.upper_filter_interval_in_hours
Determines the time int
upper bound for
change requests
filtering.

1

sa_analytics.rca.order_by_scoring_for_virtual_alerts
When calculating
Boolean
RCAs for virtual alert
– order the records
by scoring of PRCs
of the corresponding
secondaries.

True

sa_analytics.rca_same_reasoning_use_newer
When 2 PRCs have
Boolean
the same reasoning,
prioritize the one
with the most recent
change request
during scoring
calculations.

True

sa_analytics.rca.prefer_cr_on_app_service
In case there
Boolean
is the same
change request on
application service
and on CI, prefer the
one from application
service.

False

c. Enter a valid value for the property.

Note: The value you set for the new property overrides the default value for the
related property.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3219


<!-- page 3220 -->
◦ Change the maximum number of probable root causes shown in the list:
a. Find the property sa_analytics.rca_task_table_max_records.

Property name

Description

Type

sa_analytics.rca_task_table_max_records
The maximum
int

Default value

5

number of probable
root causes shown
in the Probable root
causes list.
b. Replace the default value with a new valid value.
◦ Disable RCA by creating the sa_analytics.disable_prc property.
a. Select New.
b. Fill in the form with the following values.

Property name

Description

sa_analytics.disable_prc
Disabling the

Type

Value

Boolean

True

Probable root cause.
3. Click Submit.
Alert similarity
Finding alerts that are similar to the alert that you are currently investigating can help save
troubleshooting time by seeing how similar alerts were resolved.

Finding similar alerts
Alert similarity applies natural language processing (NLP) based on ServiceNow AI Platform
machine learning (ML) as implemented in Predictive Intelligence .
ML logic filters out irrelevant information and provides further information to help you understand
the cause of alerts. You can view solutions used to resolve similar alerts and the probable root
cause.
ML helps find similar alerts based on text found in these alert record fields:
• Configuration item.Class
• Metric name
• Description

Additional alert information
In the Alert Workspace, select the required alert and click Insight to view additional information
about the alert.
In the Alerts list, select the required alert and use the Alert Insight tabs on the right side of the
alert record to view additional information about the alert. For example, you can view the top
recent alerts for the current CI and similar CIs to find the most suitable solution towards resolving
the alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3220


<!-- page 3221 -->
The alert insight tabs are:
• Impacted Services
• Flapping
• History
• Activities
• More Information
• Repeated Alerts
• Similar Alerts
• CI Incidents
• CI Change Requests
• CI Problems
• Related Incidents
• Related Change Requests
• Related Problems
For more information about the alert insight tabs, see Alert insight information.
Find similar alerts
You can find alerts similar to the alert currently being investigated. Save troubleshooting time by
reviewing similar alerts to see how they were resolved.

Before you begin

Ensure that the Predictive Intelligence plugin is activated. To activate this plugin, see Activate a
plugin .
Ensure that the evt_mgmt.similarity_use_ml property is set to true.
Role required: evt_mgmt_admin

About this task

Save time in resolving the current alert by reviewing how similar alerts were resolved. Provide
resolution consistency by resolving similar alerts in the same way.

Procedure
1. Navigate to All > Event Management > All Alerts.
2. In the list of alerts, click the alert record that you want to investigate.
3. In the alert record, click the Similar Alerts tab.
Alerts that are similar to the alert that is being investigated are listed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3221


<!-- page 3222 -->
By default, up to 10 similar alerts are listed. You can modify this value by setting the
evt_mgmt.similarity_max_similar_alerts_shown property.
4. If you configured a threshold, in the Related links area, click Show Similarities Details.
The Sys ID and confidence level of each similar alert is displayed. The Confidence level is
an indication of how the similar alert matches the parameters that you set. As an example, a
high confidence percentage value indicates a higher likelihood of similarity of the alerts to the
values that you set.

You can modify the value of the threshold by setting the
evt_mgmt.similarity_use_threshold property.
Similarity solutions
Similarity solutions enable you to use Machine Learning (ML) to compare the text in a resolved
alert record to an open alert record to reuse its resolution approach.

Training a similarity solution
To train a similarity solution, you collect words to compile a collection that Machine Learning (ML)
can use to compare text in the Short Description, Description, Source, Type, Resource, and
Metric Name fields in a resolved alert to see whether the words in the set match words in an
open alert. The resolved alert, which is similar to an open alert, provides an example to show how
the open alert can be resolved.
To train a solution, the filter must return at least one record. If your filter returns no records,
update it.

Note: The preferred number of records for training a solution is between 30,000 records
and 300,000. If you submit more than 300,000 records, the most recent 300,000 records
are used to train the solution. Use only authentic records from the database.
• Ensure that the records you train are not too old and that they are relevant to your business
needs. Keep the words in the collection current.
• Do not use hard-coded dates as filters because these filters are not updated when you retrain
solutions unless you update them manually before every retraining. Instead, use relative date
filters, for example, the last 3 months, last 6 months, or last 12 months.
• Perform training as needed until it provides an acceptable similarity solution. This practice
provides you time to review and update your solution definition.

Fields to include in the solution
Record the fields that are likely to contain words and phrases that help the system identify similar
records for your solution.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3222


<!-- page 3223 -->
The similarity fields that you select should be a subset of your input field selections. For example,
if you select fields from incident records that are in Open state, do not select Close note as a
similarity field. Because open records do not include Close note fields, the text cannot be similar.
The similarity fields are available to users when they create records.

About the similarity score
The similarity score is a measure from 0-100 of the degree of similarity between two alert records.
Alert records that have a similarity score higher than the threshold that you specify is returned by
the solution.
Review similarity examples and their scores using the Show training progress feature to
determine whether to either increase or decrease the solution threshold. You can change the
threshold value in the Threshold for Similarity Score field.

View training solution progress
Training times vary based on the number of records and classes within the training set. The more
records and classes you use, the longer the training can take. For example, a data set containing
100,000 records and several hundred classes can take around five hours to complete.
To show the training solution progress, the ML solution automatically performs the following
activities when you select Show training progress on the Solutions page. For more information,
see View solution training progress .
Solution training activities
Activity

Description

Fetching files for training.

The system downloads the training records and sends
them to the nearest training service.

Preparing the data.

The system removes duplicate records from the training
set.

Training the solution.

The training service trains the solution.

Uploading the trained solution.

The training service uploads the solution as attachment
records.

Create an Event Management similarity solution
Create and train a solution that applies machine learning to a collection of words to target and
suggest similar alerts in your instance dataset. For example, you can compare the text in a
resolved alert record to an open alert record to reuse its resolution approach.

Before you begin

Role required: evt_mgmt_admin

About this task

The encryption scheme that you use can affect whether you can train solutions.
• If your data is encrypted by Full Disc Encryption (FDE), you can train solutions.
• If the field you are using for training is encrypted using Field Encryption, ensure that the shared
service worker user has the correct encryption module role that has been used for encryption.
• If you are using Edge Encryption, training is not supported.

Note: This feature supports only English language processing.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3223


<!-- page 3224 -->
Procedure
1. Navigate to All > Predictive Intelligence > Similarity > Solution Definitions.
2. Click New.
3. On the form, fill in the fields.
ML Solution Definition form
Field

Description

Solution
Template

Use to define a word collection.

Label

Unique name for the similarity solution.

Name

Field that is auto-populated with a system-assigned name that is similar to the
label name when the solution is created.

Table

Table that contains the records to use for the word collection, for example, the
Incident table or the Asset table. When you assign a table value, a link appears
that shows the number of records that match your current conditions.

Filter

Conditions that you want to apply to the training records. To train a solution, the
filter must return at least one record. If your filter returns no records, update it.

Input
Fields

Record the fields that contain the text and context that you want to include in
your word collection.
The field data type can be a string, reference, choice, or HTML, such as Short
description and Description.

Note: Journal type is not a supported data type.
Good candidates for your input fields have text that is relevant to the solution.
For example, if you are configuring a solution to find similar incident records,
you can select the Short Description, Description, Resolution notes, and Close
notes fields.
Training
Training is performed once by the system, by default.
Frequency
Because your data can age over time and degrade the accuracy of
recommendations, consider invoking scheduled trainings once your solution
definition is fairly stable.
Domain

On instances where domain separation is active, select the domain whose target
records you want to use for your word collection. Create a separate similarity
solution definition record for each domain whose field values you want to use for
your word collection.

Similarity
Fields

Record fields that are likely to contain words and phrases that help the system
identify similar records for your solution.
To change your Similarity Field choices, click the Lock icon ( ) to open the
field and make your updates. Click the icon again to close the field and save your
updates.

Similarity
Window

The period in which you want to look for similar records. If you have a smaller
number of total incoming records, a larger window might be best. However, if the
window is too large, you may retrieve records that are not as useful. If the window
is too small, you might not retrieve enough similar records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3224


<!-- page 3225 -->
Field

Description

For example, if you are looking for similar incident records that are open, you can
select Last 1 day. This selection targets the most recent records, many of which
could still be open.
Similarity
Window
Filters

Filter conditions for your similarity window.
These filters define the dataset conditions under which your similarity results are
determined. For example, if you are looking for similar incident records that are
open, you can filter your search by creating conditions such as: [Incident state]
[is] [In progress]
These filters are applied in addition to the Input Field filters.

Window
Frequency to refresh the similarity window. For example, if your window contains
Refresh
incident records that are open, you can select a refresh frequency value of
Frequency Every 15 minutes. New incidents typically occur frequently throughout the
day so this frequency increases the likelihood that newly opened records are
included in the refresh.

Note: If your similarity window is composed of records such as
Knowledge article records, which are typically not created often, you can
choose a larger refresh frequency such as Every 1 day.

4. Click Save to save the solution definition record so you can return to it later, or click Submit &
Train to create the solution definition record and train it.
5. If you submitted the solution for training, click OK on the Training Activation window to
confirm.

Result

The system schedules the solution for training with the nearest training service. You and other
users subscribed to the Predictive Intelligence Notifications category receive a notification
when the training completes, including any errors that might have occurred in the training. When
training is complete, the system uploads the solution as an Attachment record.

What to do next

Review the trained similarity solution examples in the Similarity Examples related link on your
ML Solution Definition form.
View Event Management solution training progress
View solution training progress or statistics to determine whether a solution is available or how
long the next training cycle might take to complete.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Predictive Intelligence > Similarity > Solutions.
2. In the ML Solutions list, select the solution whose progress or statistics you want to view.
3. Click the Show training progress related link.
The ML solution automatically performs activities that appear in the Training Progress pop-up
window.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3225


<!-- page 3226 -->
The system shows a Training Progress pop-up window. In the following example, the progress
failed.

If the training is a success, all bars would be fully blue and the progress for each step would
show 100%.

What to do next

See Review Event Management similarity examples.
Review Event Management similarity examples
Review the similarity examples and scores that the system provides during solution training
to see how the selected alert record compares to existing alert records. For example,
you can modify the similarity score threshold to increase the accuracy of your similarity
recommendations.

Before you begin

Train a similarity solution in a ServiceNow datacenter. For more information, see Create an Event
Management similarity solution.
Role required: evt_mgmt_admin

About this task

Adjust the current threshold to provide useful results. For example, a low similarity score has
more coverage but less precision.

Procedure
1. Navigate to All > Predictive Intelligence > Similarity > Solutions.
2. In the ML Solutions list, locate your solution and click the Information icon (

).

3. Click Open Record.
4. Click the Similarity Examples related link.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3226


<!-- page 3227 -->
5. Review the similarity examples and their threshold scores to determine the accuracy and
coverage levels you want applied to your solution similarity results.
The higher the similarity score, the more precise it is and the less coverage it offers. The lower
the similarity score, the more coverage it has and the less precision it offers.
6. Based on your review, determine whether to increase or decrease the similarity score
threshold value for your similarity solution
The solution returns only similarity results that have a score that is higher than the threshold. If
the current threshold is not providing useful results, adjust the threshold value.
7. Navigate to Predictive Intelligence > Similarity > Solutions.
8. In the ML Solutions list, locate your solution and click the Reference icon (

).

9. Click Open Record.
10. In the Solution Statistics tab, enter a new value in the Similarity Score Threshold field.
For example, suppose that the current score is 80. Based on your similarity example review,
you might want to update the field by entering a higher score of 90, which will return fewer
results but ones that are more similar to the alert record under review. A lower similarity score
has more coverage but less precision.
11. Right-click in the form header and click Save.
Your solution uses the new similarity threshold value. In the example, the solution returns
similar results that have a score higher than 90.
Activate Event Management solution version
The system activates the most recent version of the solution, but you can activate any previously
trained Event Management solution version if it is more appropriate.

Before you begin

Because you might have created more than one solution, you can choose to activate the solution
that is most appropriate.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Predictive Intelligence > Similarity > Solutions.
2. In the ML Solutions list, click the Reference icon (
activate.

) for the trained solution that you want to

3. Click Open Record.
You can assign a title to the solution using the
evt_mgmt_similarity_solution_title property. The default value is
ml_x_global_alert_similarity. This property changes the value in the Solution
Name field.
4. In the solution record, click Activate.
The system activates this solution version and deactivates any other solution version.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3227


<!-- page 3228 -->
Self-health monitors for Event Management
Use the Event Management self-health monitors to track Event Management features and
resolve issues.

Monitor Event Management to detect and resolve issues
Enable the self-health feature to help detect and troubleshoot Event Management health issues.
Some configuration is required before the self-health feature can display meaningful data. Once
configured and the related scheduled jobs are enabled, the Service Operations Workspace
displays data that is automatically collected and calculated on a recurring schedule.

Note: Event Management Dashboard is not supported for new instances in the Paris
release. However, instances upgraded from a release prior to Orlando that use Event
Management Dashboard can continue to do so.
The self-health feature creates CIs in the CMDB to represent the components of the selfhealth service. Use the provided monitors to monitor and track the health of services and Event
Management features.
Event Management self-health can:
• Trigger alerts when there is an issue with Event Management.
• Display the ServiceNow Event Management application services in Service Operations
Workspace. Use Service Operations Workspace to view alerts by application service, technical
service, and alert groups. You can double-click a tile to view general information about the
service.

• Click Service Details to view details of the service.
• Click Service Map to view a map representation of the ServiceNow Event Management
application services to see the relationships between CIs in the ServiceNow Event
Management application services.

Self-health monitoring process workflow
After the Event Management — self-health monitoring property is enabled:
1. The ServiceNow Event Management application services is automatically created.
2. Jobs are automatically scheduled to run scripts that configure what must be monitored.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3228


<!-- page 3229 -->
3. The Monitoring States [em_monitor_state] table is updated after each event run that the
configuration scripts trigger.
4. The alerts that are generated are monitored.
The service displays the status of the monitored entity. For example, alerts are displayed in the
Event Management dashboard, Service Operations Workspace or All Alerts list.
You can resolve the alerts according to the underlying issue by using Quick Response on the
standard platform interface. For details, see Apply a quick response in an alert.

Jobs scheduled to process scripts
The jobs scheduled to run by default after the Event Management — self-health
monitoring property is enabled are:
• The Event Management - Insert Health Monitor scheduled job which runs the
scripts.
• The Event Management - Update Health Monitor scheduled job which runs the
update scripts. This job runs once every minute.
Start or stop self-health monitoring
You can control the starting or stopping of the self-health monitor feature by configuring the selfhealth monitoring property. The first time that the self-health monitoring property is enabled, it
automatically creates the ServiceNow Event Management application services.

Before you begin

Role required: evt_mgmt_admin

About this task

Configure the self-health monitoring property to monitor and track application services and Event
Management.

Procedure
1. Navigate to All > Event Management > Event Management Properties.
2. Locate the Enable Event Management self-health monitoring
(evt_mgmt.self_health_active) property.
Select one of these values:
Enable Event Management self-health monitoring property
Field

Description

Enabled The ServiceNow Event Management application services is created and set to
monitor self-health. Events are received and alerts are generated.
Alerts
Only

The ServiceNow Event Management application services and the CIs related to it
are not created. Alerts are created but are not bound to a CI.

Disabled The ServiceNow Event Management application services is not operational.
Events are not received, and alerts are not generated.
3. Click Save.

Result

The ServiceNow Event Management application services is set according to the value selected
for the evt_mgmt.self_health_active property.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3229


<!-- page 3230 -->
Configure the Event Management - Insert Health Monitor scheduled job
Determine what the Event Management - Insert Health Monitor scheduled job is to monitor. After
the job runs, you can view the ServiceNow Event Management application services.

Before you begin
Ensure that the Enable Event Management — self-health monitoring
property is enabled on the Event Management Properties page (Event Management > Event
Management Properties).
Role required: evt_mgmt_admin

Procedure
1. Navigate to System Definition > Scheduled Jobs.
2. Locate and select the Event Management - Insert Health Monitor job.

3. Modify the scripts indicated in the Run this script field to determine what the scripts are to
monitor.
Monitor self-health with domain separation
Use domain separation to enable self-health to display Event Management health issues that are
based on data, rules, and settings from the logged in user domain. The selected domain must
not contain any child domains.

Before you begin

Ensure that the Domain Support — Domain Extension Installer
(com.glide.domain.msp_extensions.installer) plugin is activated and that the MID Server you’re
connecting to is configured for Event Management.
Role required: evt_mgmt_admin

About this task

Self-health monitoring is domain aware. If the Domain Support — Domain Extension Installer
(com.glide.domain.msp_extensions.installer) plugin has been activated, then self-health displays
health issues based on data, rules, and settings from the logged in user domain. If rules and
settings aren’t defined for a child domain, then the settings of the parent are applied, recursively.

Note: To generate self-health monitoring events in the domain-separated instance, you
must specify the domain of these generated events. This is done by specifying the sys_id
of the required domain in the evt_mgmt.domain_self_monitoring property.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3230


<!-- page 3231 -->
When the Domain Support — Domain Extension Installer
(com.glide.domain.msp_extensions.installer) plugin isn’t activated, adding, or removing a
connector or MID Server is immediately reflected in the map.
When the Domain Support — Domain Extension Installer
(com.glide.domain.msp_extensions.installer) plugin is activated, updates are done periodically
according to the interval specifications of the Event Management — Insert Health Monitor
scheduled job.

Procedure
1. Navigate to All > System Scheduler > Scheduled Jobs.
2. In the Schedule list, locate and select the Event Management — Insert Health Monitor job.
3. In the Event Management — Insert Health Monitor job, under Related Links, select Configure
Job Definition.
4. Set the required periodic update time in the Repeat Interval field by specifying the required
values.
The default interval is one hour.

5. Select Update.

Result

Further configuration is required for CI creation, receipt of events, and alert
generation. The sys_id of the domain must be specified in the Value field of the
evt_mgmt.domain_self_monitoring property.
1. Navigate to System Properties All Properties.
2. Locate and select the evt_mgmt.domain_self_monitoring property.

3. In the Value field, specify the sys_id of the domain.
4. Select Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3231


<!-- page 3232 -->
Related topics
Domain separation setup and basic administration
Configure a self-health monitor
You can configure a self-health monitor to track Event Management components and see that
they do not exceed the specified threshold.

Before you begin

Role required: evt_mgmt_admin

About this task

The Monitoring Configurations [em_monitor_conf] table lists the records that determine
which Event Management components are being monitored. Each record contains the health
monitor script that is relevant to what you are monitoring. If you intend to create a new health
monitor script, you must configure a monitor to match the purpose of the custom script. You
can configure the monitoring configuration records to track the items that are important to
you. For example, you can modify the threshold aspect in the Connector's Idle state
monitoring record, by specifying that the monitoring job frequency is 90 seconds instead of
120 seconds.

Note: Each of the monitoring configuration records can be disabled.
If a monitoring configuration specifies a threshold, the configuration value determines what alert
severity to display. Threshold values specify the delay time values in units of minutes.
After the Event Management - self-health monitoring property is enabled, these
jobs are automatically scheduled to run scripts that configure what must be monitored:
• The Event Management - Insert Health Monitor scheduled job runs the scripts.
Determine what must be monitored by adding or modifying the script in this job, which runs
once every hour.
• The Event Management - Update Health Monitor scheduled job runs the update
scripts. This job runs once every minute.
Use the following procedure to configure whether a monitoring configuration can run and set the
frequency of the monitoring job. You can specify the threshold values that, if exceeded, trigger an
alert.

Procedure
1. Navigate to All > Event Management > Administration > Self-Health Monitoring.
2. From the Monitoring Configurations list, select a monitoring configuration record and modify
the required field.
On the form, fill in the fields.
Monitoring Configuration form
Field

Description

Active

Check box for enabling the monitoring configuration to
be active.

Monitoring job frequency [seconds] Frequency that the monitoring job is run.
Critical Threshold

Any point above the value is considered a critical
consequence.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3232


<!-- page 3233 -->
Field

Description

Major Threshold

Any point above the value, but below the value
of the Critical Threshold, is considered a major
consequence.

Minor Threshold

If exceeded, the value is considered a minor
consequence.

Warning Threshold

If the value is exceeded, a warning is issued.

3. Click Update.

Result

The values in the modified monitoring configuration record are compared to the actual values as
they occur in events that are received. Alerts are created according to the configuration settings.

Example:

Example 1: Use the following procedure to modify the Critical Threshold field of the Connector's
Idle state monitoring monitor from 30 seconds to 35 seconds. This field determines the number
of seconds that pass before an alert is generated when the Critical Threshold idle state value
of a connector is exceeded. In this example, the Critical Threshold field is modified from 30
seconds to 35 seconds.
1. Navigate to Event Management > Settings > Self-Health configuration.
2. From the Monitoring Configurations list, select Connector's Idle state monitoring.
3. In the Critical Threshold field, modify the value to 35.
4. Click Update.
Result The threshold value of the Critical Threshold field is increased from 30 to 35, thereby
increasing the number of seconds that pass before an alert is generated for this threshold.
Example 2: This example describes the configuration of the severity threshold when using the
Connectors Status monitor. The Connector Status monitor has a true (= value 1) or false (= value
0) configuration for the severity threshold. For this monitor, where a threshold has the value 1,
then that severity is displayed. Only one severity threshold can have the value1. This example
assumes that the required severity displayed is Minor.
1. Navigate to Event Management > Settings > Self-Health configuration.
2. From the Monitoring Configurations list, select Connectors Status.
3. In the Minor Threshold field, specify the value 1.
4. Click Update.
Result The monitor issues an alert if the threshold value of the Minor Threshold field is
exceeded.

What to do next

Create a customized monitor. A template is provided to assist you to create script that can
monitor the specified components. For more information, see Create a self-health monitor to use
custom health monitor script.
Create a self-health monitor to use custom health monitor script
You can create a self-health monitor to use custom health monitor script to monitor specified
Event Management components.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3233


<!-- page 3234 -->
Before you begin

Role required: evt_mgmt_admin

About this task

To augment the self-health monitors that are provided with the base system, you can create a
self-health monitor to monitor the components that you specify. The health monitor scripts that
are provided with the base system are listed in the following table.
Health monitor scripts provided with the base system
Health monitor script

Used by a monitor to:

Check delay in event
processing

Monitor the duration of events [in minutes] that remain in
Ready state and are not processed.

Connectors Monitor

Monitor:
• Whether the time that a connector in idle state surpassed
the threshold [in minutes] configured.
• The active status of connectors.

Get Event Processing state

Monitor the time that events are in Ready state. Alerts are
sent when this time exceeds the threshold.

MID Server Threshold Alerts

Monitor MID Server health. Events are sent when changes in
MID Server state are detected.

You can create alert management rules to respond to and remediate the issues detected by selfhealth. Alerts are generated based on the specified severity and threshold. Navigate to Event
Management > Administration > Self-Health Monitoring for the monitors that are provided with
the base instance to monitor the issues detected by self-health, which are:

Monitor

Description

Connector's idle state monitoring

Monitor to verify whether any of the connectors were in
idle state that surpassed the threshold [in minutes] that
was configured.
Health Monitor script selected: Connectors
Monitor.

Connectors Status

Monitor to track the active status of the connectors.
Select only one threshold to configure which severity to
invoke using 1 to select the threshold field or 0 to ignore
the threshold field. For more information, see Connector
status example.
Health Monitor script selected: Connectors
Monitor.

Delay in event processing

Monitor to track the duration of events [in minutes]
that remain in Ready state and were not processed.
This duration period initiates an alert for the event
processing CI with severity according to the configured
thresholds [minutes].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3234


<!-- page 3235 -->
Monitor

Description

Health Monitor script selected: Check delay in
event processing.
Event Processing job

Monitor the state of the event processing jobs. An alert
is generated when the idle time of a job exceeds the
configured threshold.
Health Monitor script selected: Get Event
Processing state.

MID Server MID Server Threshold
Alerts

Monitor MID Server MID Server health. Events are sent
when issues with MID Server availability and resource
thresholds are detected.
Health Monitor script selected: MID Server
Threshold Alerts.

Note: To prevent a self-health monitor from detecting the connector status, at any time
you can clear the Active check box of the monitor and then click Update.

Procedure
1. Navigate to Event Management > Administration > Self-Health Monitoring, and click New.
2. On the form, fill in the fields.
Monitoring Configuration form
Field

Description

Name

Descriptive and meaningful name for the monitor.

Description

Text narrative that describes the monitor.

Active

Check box to enable the monitor.

Monitoring job frequency
[seconds]

Frequency that the monitoring job should run. Default: 120
seconds.

Last Run

Last run date and time. These values are automatically updated.

Script

Monitoring script. Click the search icon. The existing scripts
are listed in the Health Monitor Scripts screen, or click New
to create a custom health monitor script. For more information
about creating a custom health monitor script, see step 3.

Note: Regarding all the following threshold configuration fields: All monitored values
are compared against the thresholds. If a monitored value exceeds a threshold, an alert
with the appropriate severity is issued.
Critical Threshold

Any point above the value is considered a critical
consequence.

Major Threshold

Any point above the value, but below the value of the Critical
Threshold, is considered a major consequence.

Minor Threshold

If exceeded, the value is considered a minor consequence.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3235


<!-- page 3236 -->
Field

Description

Warning Threshold

If the value is exceeded, a warning is issued.

Additional information

Further information about the monitor.

3. To create a custom health monitor script, on the Monitoring Configuration form, next to the
Script field, click the search icon to open the Health Monitor Scripts form, and click New.
4. On the form, fill in the fields.
Health Monitor Script form
Field

Description

Active

Check box to enable the monitor.

Description Text narrative that describes the custom script.
Name

Descriptive and meaningful name for the custom script.

Script

Custom script to run when called from a monitor. A script template is provided
as a guide.
You can use the Health monitor scripts provided with the base system as
examples of how to author the script, and use the script editor tools .
Ensure that the custom script includes:
Run the monitor function, which is called according to the "monitoring job
frequency” setting runUpdateHealthMonitorScripts(scriptId).
Add this function to run the monitoring logic.
Specify the configuration function that is called every hour
runInsertHealthMonitorScripts(scriptId). Add the
configuration logic and add a CI if needed. In the navigation pane search
field, enter em_monitor_state.list. In the Monitoring States
[em_monitor_state] table, specify the initialization of the monitor record in the
required record.
Use the helper functions defined in EvtMgmtHealthMonitorCommon and
EvtMgmtEventAlertGenerator script includes:
◦ EvtMgmtHealthMonitorCommon
◦ healthMonitorCommon.shouldRun
◦ healthMonitorCommon.calculateSeverity
◦ EvtMgmtEventAlertGenerato
◦ openAlert
◦ closeAlert

You can use the Monitoring Configurations [em_monitor_conf] table for self-health monitoring
configuration, the Health Monitor Scripts [em_monitor_scripts] table for scripts, and Monitoring
States [em_monitor_state] table for displaying the results of the monitor, as initialized inside
runInsertHealthMonitorScripts.
For more information about script includes and APIs, see:Script includes that are installed with
Event Management
5. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3236


<!-- page 3237 -->
Result

To monitor the Event Management components that you specify, you can configure a self-health
monitor that uses the custom health monitor script that you created.
View the Event Management self-health application services map
You can view Event Management application services maps to have a visualization of the data on
configuration items (CIs) that comprise this service, and the relations and connections between
these CIs.

Before you begin

Role required: evt_mgmt_admin
The Event Management application services topology map only displays MID Servers that have
passed validation and connectors that are active.

About this task

The Event Management components that are monitored by the self-health application services
are listed in the following table:
Components monitored by the self-health application service
Component

What is monitored

Event connectors

For each connector:
• Status: Success or Error
• Delay: Elapsed time from ‘last run time’ (above threshold)

Event processing
jobs

For each event processing job:
• Number of actual jobs executed compared to the number of jobs
configured to run.
• Delay of any of the event processing jobs above the time set as
threshold.
• Duration of events in Ready state compared to the specified threshold.
• Delay of event rule processing above the set threshold. If there is a
delay, an alert is generated and the event rule is disabled.

MID Servers

MID Servers that have been validated are displayed. The MID Server
status and the Ecc_agent_issue table are monitored. An event
is triggered whenever this table is updated. The MID Server status is
displayed, either Up or Down.
For information about MID Server health, see MID Server heartbeat

Procedure
1. Navigate to All > Event Management > Services > Application Services.
2. Click the ServiceNow Event Management application services.
3. On the Application Services page, locate ServiceNow Event Management and click View
Service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3237


<!-- page 3238 -->
Displayed on the map are the related MID Servers and the Event Management object, as
depicted in the following image; these MID Servers have an UP status. MID Servers are
updated when they are created or deactivated.

Under the Event Management object is Event Processing, Alert Processing, and Event Sources
(for example, connectors). Only Active connectors are shown; when a connector is created,
the connector is displayed only after it has been activated. The status of active connectors is
updated and the status of non-active connectors is not displayed.
In the preceding image, the health of Event Management components is displayed. The
omniConnector component has a red bar, indicating that a critical alert has occurred that
affects this connector. In addition, this critical alert impacts the parent Alert Processing object,
which as a result, has a red bar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3238


<!-- page 3239 -->
Result

You can select the configuration item that has a critical alert and change the impact from parent
to application service.
Create maintenance rules
Use maintenance rules to mark CIs in maintenance status. When in maintenance status, these
CIs are excluded from impact calculation.

Before you begin

Role required: evt_mgmt_admin

About this task

You can define rules to mark CIs that match the specified criteria as being in maintenance status.
The marked CIs populate the Impact Maintenance CIs [em_impact_maint_ci] table.

Note: When running maintenance rules, the cmdb_ci status of matching CIs is not
changed. However, matching CIs are flagged in the em_impact_maint_ci table by these
rules and this status is considered for impact and alert calculations.
The field flagged by this rule as being in maintenance status is the CMDB status field.

Note: To activate a maintenance rule, select the Active field in the maintenance rule. To
deactivate a maintenance rule, clear the Active field.

The maintenance rules provided with the base instance are:

Default maintenance rule

Description

CI in Change Window

Where the CI has an active change window,
the matching CIs are marked as being in
maintenance status.
The rule runs a query against the change
request [change_request] table to determine
whether the rule is applied. All these
conditions in the change_request table must
be met:
• State is one of these options: Scheduled,
Implement, Work in Progress, or Open/New
(state in (-2, -1, 1, 2)).
• Approval is Approved (approval =
'approved').
• The change request window is active, that
is, the current time is between Planned
start date and Planned end date, or the
current time is between Actual start date
and Actual end date.
• The change request record is not an on-hold
record (on_hold='false').
Note: All these conditions must be present
for the CI to be placed in maintenance
status by this rule. For example, if the
State of the change request approval
status is Change is waiting for

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3239


<!-- page 3240 -->
Default maintenance rule

Description

approval, then the change is not added to
the em_impact_maint_ci table.
Maintenance status of CI

CIs whose CMDB status field is In
Maintenance are flagged by this rule as being
in maintenance status.
By default, retired CIs are not included in CIs
that are In Maintenance. To include retired
CIs:
1. Navigate to All Properties.
2. Select New.
3. Configure the

evt_mgmt.maintenance_rule_include_retired
property with Value = true.

Note:
Including thousands of retired CIs may
decrease system performance.

Procedure
1. Navigate to All > Event Management > Rules > Maintenance Rules.
2. Click New.
3. Fill in the fields, as appropriate.

Column
heading

Description

Name

The maintenance rule name.

Active

Select to activate the maintenance rule.

Advanced

Select to enable the optional script section to display.

Description Information that describes this maintenance rule.
Flag CIs
that run on
this host

Select to flag all applications running on the recognized host as being in
maintenance.

Table

Select the table that contains the CI that you require.

Filter

Specify how to select the data.

CI field
name

Select the CI from the list. The list is populated according to your selection in
the Table field.
If a CMDB table, or a table derived from CMDB, was selected, specify sys_id
for the CI field name. Otherwise, specify the required CI field that you want to
use. See the examples.

4. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3240


<!-- page 3241 -->
Example:

Example of a maintenance rule using a CMDB table.
Assume that a company defines a CI as being in maintenance when the Operational Status of
the CI is either Repair in Progress or DR Standby.

Example of a maintenance rule using a table other than CMDB.
Assume that a company uses Incident records to track maintenance. Any maintenance request
is translated to an incident when it has a description that starts with “Performing maintenance on
CI”. As long as the status of such an incident is open, this status indicates that the maintenance
is in progress. For the CI field name field, specify a CI name from the table that was chosen, in
this case Incident.

Example of a maintenance rule that uses the advanced script feature.
In the Maintenance Rule page, select the Advanced option. Customize the provided example
script:
var now_GR = new GlideRecord('cmdb_ci');
gr.addQuery('name', 'your_name_here');
gr.query();
while (gr.next()){
result.push(gr.sys_id +'');}
The return value for this example script is a text string that represents an array of CI IDs, for
example, ['sys_id1','sys_id2','sys_id3'].
You can use this script as an example to prepare your own customized script.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3241


<!-- page 3242 -->
Related topics
How alerts work with CIs in maintenance
Place an alert into maintenance
Resolve an incident related to an alert
When you resolve an incident that is associated with an alert, the alert can also close according
to the evt_mgmt.incident_closes_alert property.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

Procedure
1. Open an incident.
2. Click Resolve Incident.
The corresponding alert is closed, resolved, or left alone as specified by the
evt_mgmt.incident_closes_alert system property.
The alert may not close immediately when the incident is closed. Depending on the value of
the evt_mgmt.alert_rule_close_delay parameter, the alert may close 5 seconds
after the last alert update. This value (in seconds) is defined in the parameter. To use the
property, you need to create the property with the same name and assign the required value to
it. For more information on how to create a property, see Add a system property .
Close an alert
Close an alert by an event or a user action. Closing an alert also closes any related incident that
is not already resolved or closed.

Before you begin

Role required: evt_mgmt_admin or evt_mgmt_operator

About this task

An alert can be closed manually, automatically by a close or clear event, or when a related
incident is resolved. Whether the alert is closed when the incident is closed is determined by the
evt_mgmt.incident_closes_alert property.
When a Clear event is triggered for an open alert, the corresponding alert is set to the "Closed"
state. Closing an alert also closes any related incident that is not already resolved or closed.
This default behavior can be configured using the evt_mgmt.alert_closes_incident
property.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3242


<!-- page 3243 -->
Procedure
1. Navigate to Event Management > All Alerts.
2. Select the alert you want to close.
3. In the Alert Form, select Close.
The alert closes without confirmation. If the alert has any resolved or closed incidents, a work
note is added to the incident indicating that the related alert was closed.
If an alert has an open incident that is not related to any other open alerts,
the incident is either closed, resolved, or left unchanged based on the
evt_mgmt.alert_closes_incident property.
Reopen an alert
Additional events can cause reopening of alerts, or you can reopen an alert by changing its state.
When an alert reopens, any associated incidents can also be updated or reopened according to
the incident state and the evt_mgmt.alert_reopens_incident property.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

About this task

When an alert is reopened, the related incident is processed as follows:
• If the incident is not Resolved or Closed, a work note is added to indicate that the related
alert was reopened.
• If the incident is Resolved or Closed, the incident is reopened, a new incident is created,
or nothing is done, depending on the evt_mgmt.alert_reopens_incident property
value.
◦ If the incident is reopened, work notes are added to the incident.
◦ If a new incident is created, any matching alert management rule, alert action rule, and task
template applies to the incident. If there is no matching alert action rule or template, fields
from the existing incident are copied to a new incident.

Procedure
1. Navigate to All > Event Management > All Alerts.
2. Search by alert number.
3. In the State field, click Reopen.
4. Click Update.
Alert insight properties
Use these properties to configure alert insight.
The role required: evt_mgmt_admin
The following alert_insight properties are under sys_properties.

Property

Usage

Time Frame

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3243


<!-- page 3244 -->
Property

Usage

evt_mgmt.alert_insight_alert_history_min

Set the time frame (in minutes) to retrieve
repeated and similar alert data. Default 43200
(30 days)

Note: Alerts are retrieved regardless
of their state (open / reopen / flapping /
closed).
evt_mgmt.alert_insight_closed_alert_window

Set the time frame (in minutes) to retrieve
alerts that were already closed. It is the time
after the alert last updated date. Default: 4320
(3 days)

Similarity
evt_mgmt.alert_insight_alert_same_as_filter

This property is a comma-separated string
that defines which of the alert fields is used
to consider alerts to be similar. Default:
source,type,resource,metric_name

Related CIs
evt_mgmt.alert_insight_related_cis_topology_levels For ‘Within application service’ relationship
type, this property sets the depth or the
The relationship types are:
maximum level of relationship of retrieved CIs.
Default: 3
• CMDB based (metadata rules and suggested
relations)
• Within application services
• Within Alert groups
Score
evt_mgmt.alert_insight_group_mapping

This property sets the score for within alert
group relations. Default: 2

evt_mgmt.alert_insight_level_1_mapping

This property sets the score for level 1
relationship. Default: 3

evt_mgmt.alert_insight_level_2_mapping

This property sets the score for level 2
relationship. Default: 2

evt_mgmt.alert_insight_level_3_mapping

This property sets the score for level 3
relationship. Default: 1

Maximum related tasks
evt_mgmt.alert_insight_max_tasks

Maximum related tasks to retrieve for alert
insight. Default: 10

Metadata rules consideration
The parent-child relationship of CIs is considered. Dependent relationship rules consist of
hosting and containment rules, each type modeling the data from a different perspective of the
CI.
To manage dependent relationship rules:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3244


<!-- page 3245 -->
• To access rules at the class level, use the CI Class Manager. Navigate to All > Configuration >
CI Class Manager.
• To access grouped rules, use the Metadata Editor. Navigate to All > Configuration >
Identification/Reconciliation > Metadata Editor.
Containment rules represent configuration hierarchy of CIs, describing which CI contains which
other CIs.
Hosting rules represent placement of CIs in a business definition, describing what CIs run on.
Modify the alert insight properties to configure the way alert information and analysis appears in
the Alert Insight pane.

Related CIs configuration
The following properties control which CMDB relationships to consider for related CIs. The
CMDB relationships include regular CMDB relation rules, metadata rules (containment rules and
hosting rules), and suggested relations.

Property

Usage

evt_mgmt.related_cis_get_all_relation_types

Get all relation types, not including
metadata rules. Default: false

evt_mgmt.related_cis_use_containment_rules

Use metadata containment rules.
Default: true

evt_mgmt.related_cis_use_hosting_rules

Use metadata hosting rules. Default:
true

evt_mgmt.related_cis_use_suggested_relations_rules Use suggested relations rules. Default:
false
evt_mgmt.related_cis_validate_relation_rules

This property controls whether to
validate relation of CI according to
metadata rules. Default: true

Score
Scores are configured per relation type or depth. Scores are accumulated. The higher the score,
the more relevant is the related CI to the current CI.
Example:For a CI that was found at level 2 in the same application service of the current CI,
the score is 2. The same CI is in the same alert group, so there is an extra score of 3. The
accumulated score is therefore 2+3 = 5.

Affiliation type
The Affiliation Type column in the Related Incidents, Related Change Requests, and Related
Problems tabs shows the type of relationship that the CI of the selected alert and the related CI
have.
To see affiliation type relationships, navigate to All > Configuration > Identification/
Reconciliation > Metadata Editor.
The parent-child relationship between configuration items is considered.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3245


<!-- page 3246 -->
Rotate event and alert table for cleanup
The growth of data tables impedes performance. Preserve instance performance by event table
rotation and alert table cleanup for status and alert history retention.

Containing the growth of event tables
By default, the Event Management event [em_event] table uses table rotation. The table rotation
schedule ensures that new data is written to one of the tables in the rotation group. According
to the value of Clean base rotation setting, the base table is deleted and then a new round of
writing the tables in a daily rotation commences. By default, this table deletion occurs after seven
rotations.
To back up events to a custom table, see Event Management configuration preferences.

Containing the growth of alert tables
By default, a scheduled job cleans out the alert [em_alert] table. Table cleanup is done also for
impact status and alert history table.
Related topics
Purge impact status and alert history
Alert table clean up
Table rotation
Modify event table rotation
Table rotation is used by Event Management, by default, to contain the growth of event
[em_event] tables within the rotation table group.

Before you begin

Role required: evt_mgmt_admin

About this task

Table rotation ensures that event tables grow to a reasonable size.
Each table rotation has a schedule, according to which new data is written to one of the tables
in the rotation group. A table rotation group includes the original table plus several additional
tables. After the rotation procedure has written the last table in a rotation, the rotation overwrites
the first table in the rotation. By default, the table rotation for Event Management is to rotate the
em_table to an offload table and the base table cleanup takes place after seven table rotations.
For information about backing up events to a custom table, see Event Management configuration
preferences.

Procedure
1. Navigate to All > System Definition > Table Rotations.
2. Select the [em_event] table rotation group to modify.
3. Edit the required fields.
4. Select Update.
Related topics
Table rotation
Apply table rotation
Rotate event and alert table for cleanup
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3246


<!-- page 3247 -->
Purge impact status and alert history
Automatically cleans up outdated impact statuses and alert history from the database to free up
space, improve system performance, and ensure only relevant data is retained.

Before you begin

Role required: evt_mgmt_admin

About this task

If records are older than 90 days, by default they are purged. If records are retained for a longer
period, larger volumes of data are stored, and performance may be impacted. The data cleanup
is done by two jobs: Event Management - Clean Alert History Table and Event Management Clean Impact Status Table.

Procedure
1. Navigate to All > Event Management > Administration > Event Management Properties.
2. To shorten the retention period, use the highlighted properties.

Related topics
Rotate event and alert table for cleanup
Modify event table rotation
Clean alert history and impact status tables
Alert table clean up
Clean alert history and impact status tables
Schedule jobs to mark and remove old alert records in the Alert History [em_alert_history] and
Impact Status [em_impact_status] tables, to prevent the tables from becoming overloaded with
data.

Before you begin

Role required: evt_mgmt_admin

About this task

Schedule the following jobs to remove old alert records:
• Backfill: Determines when alerts are to be marked for deletion.
• Clean: Deletes the alerts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3247


<!-- page 3248 -->
Note: The records in the [em_alert_history] and [em_impact_status] tables
are deleted by default after three months. This is controlled by the properties

evt_mgmt.impact_calculation.cleanup_age_seconds.em_alert_history
and

evt_mgmt.impact_calculation.cleanup_age_seconds.em_impact_status.
The default value is 7,776,000 seconds (equivalent to 90 days).

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
The Scheduled Jobs page appears.
2. To determine how often to mark alerts for deletion on the Impact Status table:
a. Locate and select the Event Management - Backfill Impact Status Table job.
The Scheduled Script Execution page appears.
Scheduled Script Execution page

b. In the Repeat Interval field, configure how often you want the job to run.
To run the job immediately, select Execute Now.
c. Select Update.
3. To remove old alerts from the Impact Status table:
a. Locate and select the Event Management - Clean Impact Status Table job.
The Scheduled Script Execution page appears.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3248


<!-- page 3249 -->
b. In the Repeat Interval field, configure how often you want the job to run.
To run the job immediately, select Execute Now.
c. Select Update.
4. Repeat steps 2 and 3 to perform the Backfill and Clean jobs on the Alert History Table.
Alert table clean up
The Scheduled Jobs feature runs a script to automatically close alerts in the Alerts [em_alert]
table that meet specific conditions, helping reduce alert noise and keep the system clean and
efficient.

Before you begin

Role required: evt_mgmt_admin

About this task

When the Event Management plugin is activated, by default a job is scheduled to run the Event
Management - auto close alerts script to automatically close alerts in the alerts
table that meet the specified conditions. The default retention policy for closed alerts is that
the system deletes closed alerts if it is not updated for 90 days. For more information on the
scheduled job, see Table cleaner .
Due to the high level of traffic to the table, you cannot audit the Alert table [em_alert] as a whole.
Instead, audit selected fields of interest on the table.

Procedure
1. Set the table to audit = true.
2. Set audit = true on the relevant fields.
To avoid an excess of audit records, audit only the fields that are necessary for auditing.

Result

The Event Management - auto close alerts script runs automatically and
repeatedly at the scheduled time and closes alerts that meet the specified conditions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3249


<!-- page 3250 -->
Related topics
Rotate event and alert table for cleanup
Modify event table rotation
Purge impact status and alert history
Alert grouping
Alert grouping is the process of organizing and consolidating related alerts into sets based on
common characteristics or criteria. This helps in simplifying alert management by reducing
noise, making it easier to prioritize, track, and address issues efficiently. Grouped alerts provide a
clearer overview of related incidents, facilitating quicker root cause analysis and remediation.

Understanding alert grouping
Watch this brief video to learn how alert grouping organizes alerts into clusters based on specific
criteria.
Video explaining how alert grouping organizes alerts into clusters based on specific criteria.

How alert grouping works
Alert grouping enhances operational efficiency and optimizes alert management by categorizing
alerts. Here’s how it works:
1. Event consolidation: Event Management collects alerts from multiple sources, providing a
centralized view of notifications and alerts. This consolidation enables teams to manage alerts
more efficiently and recognize critical issues more easily.
2. Contextual Enrichment: Alerts are enriched with data from the Configuration Management
Database (CMDB), which contains detailed information about applications and infrastructure
components. This context allows teams to better understand the significance of alerts and
prioritize responses based on their impact.
3. Intelligent Correlation: Event Management utilizes different types of machine learning
algorithms to automatically group related alerts. This intelligent grouping reduces alert noise by
combining similar alerts, allowing teams to concentrate on significant issues rather than being
inundated with multiple notifications.

Benefits of alert grouping
• Creating automated alert groups by aggregating alerts based on predefined patterns.
• Correlating alerts using timestamps and CI identification to form automated alert groups.
• Forming CMDB based alert grouping by correlating alerts based on CI relationships in the
CMDB.
• Correlating alerts based on text similarity of alerts using NLP (Natural Language Processing).
Related topics
Synchronizing alert response with automated alert grouping
Alert grouping and use cases
Alert grouping methods range from user-defined approaches, like Manual and Rule-based to
advanced, fine-tunable algorithms, including Automatic, Mixed, Text-based, Log Analytics, and
Network Traffic-based grouping.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3250


<!-- page 3251 -->
Alert grouping types and use cases
Type

Description

Use case

Log Analytics Grouping

Alerts are grouped based on
the analysis of log data. This
involves correlating log entries
to identify related alerts and
issues. By leveraging log
patterns and sequences, this
method can detect complex,
multi-step problems across
the IT environment.

An online gaming company
enhances server stability by
implementing proactive log
analytics. They monitor logs
from game servers in realtime and use analysis tools to
detect patterns of errors that
occur before crashes.
For instance, the analysis
reveals that certain error
patterns appear about 30
minutes prior to server
crashes. By setting up
automated alerts for these
patterns, the company can
initiate remediation actions,
such as restarting services
or reallocating resources,
before a crash occurs. This
proactive approach prevents
disruptions, minimizes
downtime, and improves
the gaming experience by
addressing issues before they
impact players.

Rule-based Grouping

Alerts are grouped according
to predefined rules and
criteria set by users. These
rules might include specific
conditions, such as thresholds
or event types. This method
is effective for consistent
and repeatable patterns but
requires maintenance of the
rules.

In a data center managing
an e-commerce website,
rule-based alert grouping
helps handle high traffic
during events like flash sales.
Alerts about server issues,
such as high CPU usage, are
designated as parent alerts.
These parent alerts are linked
to child alerts that report
related problems, like slow
database queries.
The rules ensure that serverrelated alerts are grouped
with their symptoms, allowing
the IT team to quickly identify
and address server overload
issues. This approach
improves issue resolution
efficiency and minimizes
downtime.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3251


<!-- page 3252 -->
Alert grouping types and use cases (continued)
Type

Automated Grouping

Description

Use case

Advanced algorithms
automatically identify and
group related alerts based
on patterns and similarities
in the alert data. This method
leverages machine learning
and AI to adapt to new and
unknown issues, providing
proactive alert management.

A large financial institution
uses machine learning to
manage alerts from numerous
servers and applications. The
system analyzes historical
alert data to recognize
patterns, such as database
server failures frequently
being accompanied by client
connection errors. It then
automatically groups related
alerts together. For instance,
when a new database server
failure alert is detected, it
is grouped with previous
connection error alerts.

Event Management groups
alerts that are similar, but not
necessarily identical, based
on the proximity in time of
the last event generation.
Alerts with the same CI and
the same pattern identifier are
grouped together.
This automated grouping
helps the IT and security
Automatic alert grouping
teams quickly identify and
consists of the following
address issues, improving
components.
response times and reducing
downtime.
• Alert Aggregation Learner
(Service Analytics Alert
Aggregation Learner Daily): This offline job runs
daily to process past alerts
and perform statistical
analysis to build alert
patterns. For details, see
Configure pattern based
alert grouping.
• Real-time Alert Aggregation
job (Service Analytics
group alerts using RCA/
Alert Aggregation):
This job runs every
minute to generate alert
aggregation groups based
on alert patterns, CMDB
relationships, text similarity,
user-defined alert clustering
tags, and network traffic
connection between
processes.
Mixed Grouping

Mixed Grouping method
combines alerts using multiple
grouping strategies, such
as CMDB-based grouping
and tag-based grouping, into
a single, cohesive group.

Use case for CMDB-based
grouping:
A telecommunications
company uses CMDB data to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3252


<!-- page 3253 -->
Alert grouping types and use cases (continued)
Type

Description

Use case

It leverages the strengths
of each strategy to reduce
alert noise, improve alert
correlation, and highlight the
true root cause of incidents.

manage alerts related to their
network infrastructure. Alerts
related to a specific network
router and its connected
devices are grouped together
based on their CMDB
relationships, enabling the
network team to see all related
issues and address the root
cause efficiently.

• CMDB-based Grouping:
Alerts are grouped based
on Configuration Item
(CI) relationships and
dependencies from the
Configuration Management
Database (CMDB). This
approach ensures that
alerts related to specific
infrastructure components
or services are grouped
together, providing contextaware alert management.
• Tag Cluster Grouping:
Alerts are categorized
and grouped using tags
or labels that represent
common attributes, such as
application, server type, or
geographic location. This
method allows for flexible
and dynamic grouping
based on evolving tagging
strategies.

Network-traffic based
Grouping

Network-traffic-based alert
grouping analyzes network
connections between
processes across hosts to
identify related alerts. This
method leverages service
candidates detected through
ML Service Mapping, ensuring
that alerts related to network
traffic issues are grouped
together for better context and
faster alert resolution.

Use case for tag cluster
grouping:
An organization without a
CMDB manages a Linux
server running various
services. The IT team uses
a Node field in each alert to
identify the server, and they
group all events related to
services on the same server
based on this node value.
For example, they cluster
alerts like Service A down and
Service B high CPU usage
together if they share the
same node value.
This approach helps the
IT team address serverrelated issues more efficiently.
By clustering alerts for the
same node, application,
or IP address, the team
streamlines their response
efforts and resolves issues
more effectively, even without
a CMDB.
A cloud-based e-commerce
platform experiences
transaction slowdowns,
causing delays in payment
processing. Traditional alerting
generates separate alerts for
API timeouts, database lags,
and network issues, making
it difficult to pinpoint the root
cause.
With Network-Traffic
Based Grouping, alerts

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3253


<!-- page 3254 -->
Alert grouping types and use cases (continued)
Type

Description

Use case

are automatically grouped
based on process-to-process
connections identified
through ML Service Mapping.
The system detects that
payment gateway services,
fraud detection, and order
processing are part of the
same service candidate. This
reveals that an overloaded
fraud detection process
is causing transaction
bottlenecks. By scaling up
the service, the team quickly
resolves the issue, minimizing
downtime and improving
customer experience.
Text-based Grouping

Alerts are grouped by
analyzing the text content of
alerts to identify similarities
and related issues. Natural
language processing (NLP)
techniques are used to
find commonalities in alert
description, metric name, and
ci class, making this method
effective for unstructured
data.

In an organization that uses
Zoom rooms for virtual
meetings, the IT team
receives numerous alerts
when the Zoom room server
experiences an outage. Each
alert might indicate a different
Zoom room being down, such
as Zoom room no 10 is down,
Zoom room no 11 is down, and
so on, with the only difference
being the room number.
For organizations with a
CMDB, these alerts can
be grouped using CMDB
relations, as the system can
correlate the alerts based
on the server's impact on
all associated Zoom rooms.
However, for organizations
without a CMDB, text-based
grouping can be used. The
system applies natural
language processing to
group alerts with similar
descriptions, helping the
IT team quickly identify
that multiple Zoom rooms
are affected by the same
underlying server issue. This
approach allows the IT team
to efficiently address the
root cause of the problem,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3254


<!-- page 3255 -->
Alert grouping types and use cases (continued)
Type

Description

Use case

reducing downtime and
improving response times.
Manual Grouping

Users manually select and
group related alerts based
on their expertise and
understanding of the system.
This approach allows for
precise control but can be
time-consuming and may miss
automated correlations.

A system administrator
receives multiple alerts about
different services failing on
a single server. The admin
manually groups these alerts,
recognizing that they are all
related to a single hardware
failure on that server, and
prioritizes fixing the hardware
issue to restore all services.

Manual and rule-based alert grouping differs from algorithm-based grouping mainly in how the
parent alert is chosen. In manual, rule-based, or log analytics grouping, one of the real alerts is
designated as the parent alert. In Automatic, CMDB, Text-based, Tag Cluster modes, and Network
Traffic, a virtual alert, representing the oldest and most severe alert in the group, is created as the
parent alert.

Note: In domain-separated environments, alert groups are created only for alerts within
the same domain.
For information on scheduled jobs and parameters, refer to Scheduled jobs and parameters for
alert grouping. For detailed information on different grouping types, see Alert grouping types and
creation methods.
Scheduled jobs and parameters for alert grouping
Automate alert organization by configuring jobs to group alerts based on predefined criteria and
parameters.
To group alerts in Automated, CMDB, Text-based, Tag Cluster, and Network Traffic Correlation
groups, the scheduled job named Service Analytics group alerts using RCA/Alert Aggregation
is typically run once per minute. This job handles the grouping of alerts based on the specified
method. Additionally, you can run multiple scheduled jobs in parallel to manage alert grouping
more efficiently. For further details, see Run multiple scheduled jobs for alert grouping.
To define which alerts are grouped, the following parameters are used:
• sa_analytics.aggregation_enabled: This parameter enables alert grouping created
by the schedule job. Set the property Enable alert aggregation for Automated,
CMDB, and Text-Based groups to true to activate this feature.

Note: This property also applies to Tag Cluster and Network Traffic Correlation grouping.
• sa_analytics.agg.query_dynamic_window: By default, this is set to 10 minutes
(600 seconds). It defines the maximum time difference allowed between the last event
generation times of two alerts that can be grouped together.
• sa_analytics.agg.query_max_group_lifetime: This parameter specifies the
maximum time period from the generation of the first alert to the last alert in a group, with a
default of 30 minutes (1800 seconds). If events arrive with a delay exceeding this period, the
sa_analytics.agg.group_expiration_time parameter can be used to extend the
grouping time beyond 30 minutes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3255


<!-- page 3256 -->
Note: Some parameters, such as sa_analytics.agg.query_dynamic_window,

sa_analytics.agg.query_max_group_lifetime, and
sa_analytics.agg.group_expiration_time, are not provided out of the box. To use these
properties, you need to create properties with the same names and assign the required
values to them. For more information on how to create a property, see Add a system
property .

Example: How alerts are grouped
For tag-cluster grouping, alerts are added to a group based on the timeframe parameter defined
in the alert tag clustering settings. For automated, CMDB, and text-based, network traffic
grouping, alerts are aggregated as follows.
Consider the following alerts with the same CI. (All of them may be added to the same CMDB
group).
• Alert1: Initial event generation at 01:00:00 AM
• Alert2: Initial event generation at 01:11:00 AM
• Alert3: Initial event generation at 01:13:00 AM
• Alert4: Initial event generation at 01:16:00 AM
• Alert5: Initial event generation at 01:25:00 AM
• Alert6: Initial event generation at 01:34:00 AM
• Alert7: Initial event generation at 01:43:00 AM
Alert1 and Alert2 are not grouped due to the time gap exceeding 10 minutes. Alert2 and Alert3
create a group at 01:13:00 AM. The 10-minute dynamic window starts at 01:13:00 AM, with the
following:
• Alert4 is added to the group at 01:16:00 AM, restarting the 10-minute window.
• Alert5 and Alert6 are added to the group as their event times are within the 10-minute window.
• Alert7 is not added to the group because it arrives 9 minutes after Alert6, exceeding the
sa_analytics.agg.query_max_group_lifetime limit of 30-minute maximum
group lifetime from the initial group creation (01:13:00 AM + 30 minutes = 01:43:00 AM).

Note: After an alert is created, correlation logic is applied only once. Changes to the alert
after its creation are not re-evaluated for correlation. If correlation is not established initially,
the alert may still be added to a group later—but only if a new incoming alert matches and
triggers grouping logic.
Configure scheduled job-based alert grouping
Set up rules and parameters to group related alerts automatically, streamlining alert management
and reducing alert noise.

Before you begin

Role required: evt_mgmt_admin

About this task

The scheduled job Service Analytics: Group Alerts Using RCA/Alert Aggregation helps in
grouping alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3256


<!-- page 3257 -->
Procedure
1. Navigate to All > Event Management > Administration > Alert Correlation Properties.
2. On the Alert Correlation Properties page, enable the relevant properties.
◦ Enable CMDB correlation
(sa_analytics.agg.query_cmdb_correlation_enabled).
◦ Enable Network Traffic correlation
(sa_analytics.agg.query_network_traffic_correlation_enabled).
◦ Enable ML based Automation correlation
(sa_analytics.specific_patterns_enabled).
◦ Enable Text based correlation (sa_analytics.text_based_group_enabled).
◦ “Group by” property, with comma-separated list of field names that need to
have matching values across alerts to allow alerts to be grouped together. The
property can contain alert field names (such as assignment_group), CI field
names (such as alert_cmdb_ci.location), alert additional info field names (such as
additional_info.state) or alert tags (such as t_data_center). When the specified field
values match each other between alerts, those alerts can be grouped together
(sa_analytics.agg.group_alert_with_same_group_by_fields).
◦ Max number of relations between CIs in a topology which form a CMDB group
(sa_analytics.agg.query_cmdb_graph_walk_nodes).
◦ Use all CMDB relations for CMDB group correlation
(evt_mgmt.related_cis_get_all_relation_types).
3. Select Save.
To group alerts without a CI as Text-based or ML based groups, set
sa_analytics.enable_no_ci_grouping to true. Ensure the Feature Identifier
includes both the node and metric name. For details on configuring the feature identifier, see
Specify and manage pattern identifier attributes for alert grouping.
4. Optional: Set evt_mgmt.alert_groups_reasoning.enable_worknotes to none
to prevent group reasoning work note display.
(Optional) By default, a work note appears in the Activities tab when a group is created or
updated, showing the grouping reason.
Related topics
Automated alert grouping
CMDB based alert grouping
Text-based alert grouping
Tag cluster alert grouping
Run multiple scheduled jobs for alert grouping
Run multiple scheduled jobs in parallel to group alerts. This helps prevent overwhelming the
system during surges (alert storms).

Before you begin

Role required: admin

About this task

The current scheduled job operates with a single thread. During alert surges (alert storms),
processing takes significantly longer. To address this impact, now multiple jobs can process
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3257


<!-- page 3258 -->
alerts within the scheduled job. This enhances scalability and improves overall performance
during high-volume periods.
The number of jobs to be running in the alerts processing is defined in a new property
sa_analytics.agg.alert_grouping.num_of_jobs. The job number is sent as a
parameter to the relevant method.

Note: In this scenario, the procedure for increasing the scale-out from no scale-out (single
job) to 2 jobs is shown.
You can efficiently manage and run multiple scheduled jobs in parallel to group alerts using
specific properties. These properties allow you to tailor the grouping criteria to meet your needs,
ensuring that alerts are processed based on assignment groups, domain separation, or group-by
fields. The available properties are:
• sa_analytics.agg.group_alert_with_same_assignment_group_only:
Groups alerts that share the same assignment group. By default, the value is set to false. If you
want to set this property to true, create a property with the same name and set the value to
true.
• sa_analytics.agg.group_alert_with_same_domain_only: Groups alerts that
belong to the same domain. By default, the value is set to true.
• sa_analytics.agg.group_alert_with_same_group_by_fields: “Group by”
property, with comma-separated list of field names that need to have matching values across
alerts to allow alerts to be grouped together. The property can contain alert field names (such
as assignment_group), CI field names (such as alert_cmdb_ci.location), alert additional info
field names (such as additional_info.state) or alert tags (such as t_data_center). When the
specified field values match each other between alerts, those alerts can be grouped together.

Note: To ensure efficient scale-out, at least one of these properties must be defined to
establish some form of separation or grouping logic. This is necessary to ensure that all
alerts belonging to the same group are processed correctly by specific jobs, creating a
logical division of alerts.
Without setting at least one of these properties to true, the alerts will not be properly
segregated. For instance, if you do not define any grouping logic (set any property to true)
and both the assignment group and domain separation are set to false, the scale-out will
not work, and all alerts will be processed by a single scheduled job.

Procedure
1. Navigate to All > System definition > Scheduled jobs.
2. Locate the scheduled job: Service Analytics group alerts using RCA/Alert Aggregation.
3. For all existing scheduled jobs Service Analytics group alerts using RCA/Alert Aggregation, set
the value in the Active column to false.
Deactivate scheduled job

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3258


<!-- page 3259 -->
4. Create a new property sa_analytics.agg.alert_grouping.num_of_jobs, or if it
already exists, update the property to the desired number of multiple scheduled jobs for alert
grouping such as 2 or 4.
5. Clone the scheduled job definition from the Scheduled jobs [sys_auto] table to the desired
number of multiple scheduled jobs for alert grouping.
6. In the new jobs, in the Run this script section, call the new JS function queryS0 (instead of old
query() function) and transfer to it the job number as input parameter.

Note: Job numbers must start at 0 and follow consecutively: 0, 1, 2, 3, 4...
7. Fix hashes in the [sa_analytics_status] and [sa_hash] table by selecting the earliest hash with
the same prefix, cloning it, and adding the hash name suffix, for example, “_groupingX”, where
X is the job number.
In the case of scaling out from no scale-out (single job) to 2 jobs, and for the hash
name last_alert_process_time, clone it to maintain the same value as in
last_alert_process_time:
◦ last_alert_process_time_grouping0
◦ last_alert_process_time_grouping1
In the case of scaling out from no scale-out (single job) to 4 jobs, and for the hash
name last_alert_process_time, clone it to maintain the same value as in
last_alert_process_time:
◦ last_alert_process_time_grouping0
◦ last_alert_process_time_grouping1
◦ last_alert_process_time_grouping2
◦ last_alert_process_time_grouping3
Hashes to be cloned
Hash name

Table

query_job_last_run

sa_hash

last_alert_process_time

sa_analytics_status

last_staging_table_update_time

sa_analytics_status

last_staging_table_truncate_time

sa_analytics_status

analytics_trigger_g1

sa_hash

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3259


<!-- page 3260 -->
8. Activate the new jobs by selecting the Active check box for each job.
Activate scheduled job

Result

The scheduled job Service Analytics group alerts using RCA/Alert Aggregation is set up to run
multiple jobs simultaneously for alert grouping.
Configure alert correlation logic order
Improve alert management by enabling users to customize correlation logic order. This feature
empowers you to fine-tune correlation methods to their specific needs, enhancing alert
prioritization and response efficiency.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Properties > All Properties.
2. Search for the property sa_analytics.agg.query.group_logic_order.
Default value is “CMDB,NETWORK_TRAFFIC,TAG_BASED,PATTERN,TEXTBASE". This is a
comma separated list of the grouping types in the order of their execution.

Note: If one of the grouping types is not specified in the property, it needs to be added
manually. Alert correlation rules are trigger-based and applied immediately when an alert
is created or updated, before other grouping algorithms.
◦ CMDB: CMDB grouping
◦ NETWORK_TRAFFIC: Network traffic grouping
◦ TAG_BASED: Tag cluster grouping
◦ PATTERN: Automated CI-based patterns grouping
◦ TEXTBASE: Text-based grouping
3. Use the property sa_analytics.agg.query.group_logic_order to define or
modify the order of correlation methods based on your preferences.
Related topics
Alert grouping and use cases

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3260


<!-- page 3261 -->
Configure filters for automatic alert groups
Filter alerts and alert groups to reduce alert noise. Only alerts that match the filter are included in
the group of the selected group type (Automated, CMDB, or Text).

Before you begin

Role required: evt_mgmt_admin

About this task

If your filter specifies alerts whose configuration item class is not Linux, then only alerts with nonLinux configuration items are included in the group of the selected group type.

Note: After the filter is created, it will only apply to new alerts.
Procedure
1. Navigate to All > Event Management > Administration > Automatic Group Filter.
2. On the Automatic Group Filters page, either select an existing group filter or create a new filter.
3. If you are creating a new filter:
a. Select New.
b. Enter a name for the filter in the Name field.
c. Select the alert group type:
▪ Automated
▪ Test
▪ CMDB
You can assign more than one group type with a single filter condition.
Each group type can have only one active filter.
4. In the Alert Filter section, create conditions for the alert to meet to be included in the group.
5. Save the alert group filter.
◦ For an existing alert group filter, select Submit.
◦ For a new alert group filter, select Update.

Result

The filter condition appears on the SA Grouped Alert Filters page in the Alert filter column.
Apply alert group filters to aggregated groups
Reduce noise by locating only aggregated alert groups that match a configured filter. Aggregated
groups are groups created for alerts with identical CIs and pattern identifiers.

Before you begin

Note: This procedure is relevant for advanced configuration only.

Role required: evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3261


<!-- page 3262 -->
Procedure
1. Navigate to All > Event Management > Administration > Automatic Group Filters.
2. On the Automatic Group Filters page, add the Aggregated column.
a. Select the Personalize List icon (

) in the upper right corner.

b. Move the Aggregated entry from the Available list to the Selected list.
c. Select the up/down arrows to determine where the Aggregated entry is to appear on the
form.
d. Select OK.
3. On the Automatic Group Filters page, double-click the value in the Aggregated column.
Aggregated groups apply only to automated alert groups. When the Aggregated option
appears, it is automatically activated for an automated alert group.

Note: If the value of the Automated field changes, the value of the Aggregated field

also changes. You can change the value of the Aggregated field only if the value of the
Automated field is true.
4. Select true for the specified filter to apply to groups with identical CIs and pattern identifiers or
select false to ignore the filter and create aggregated groups for all alerts in the system.
Related topics
Specify and manage pattern identifier attributes for alert grouping
Alert grouping types and creation methods
Explore different alert grouping types, understand their descriptions, and learn about their
creation methods to enhance problem identification and streamline alert management.

Viewing and managing alert groups
Navigate to Event Management > All Alerts to view all alert groups. The icon in the Group
column denotes the alert group type, while alerts not associated with any group have no entry in
the Group column. Double-click the Group column to open the Grouped Alerts dialog, where you
can view all alerts in the group and manually add or remove alerts.

Note: An alert can belong to only one alert group at a time.
Types of alert grouping
Alert grouping types
Type

Icon

Log
L
Analytics

Description

Creation method

Log Analytics groups are
formed when the system
identifies multiple related Log
Analytics alerts, grouping
them based on their
significant connections.

Created as part of log analytics
event processing.

Additional
information

Kinds of
Health Log
Analytics
alerts

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3262


<!-- page 3263 -->
Alert grouping types (continued)
Type

Icon

Description

Creation method

Rulebased

R

Rule-based groups consist
of related alerts that
are organized based on
compliance with alert
correlation rules, which
determine how alerts are
grouped according to their
relationships.

Created via business rule
(Calculate correlation rule) on
em_alert table when alert is
created or updated.

Additional
information

• Rulebased
alert
grouping
• Create
an alert
correlation
rule

Automated
A

Automated groups are formed Created via scheduled job.
by alert aggregation and
include a virtual alert as the
primary alert of the group. An
Aggregated automated group
is created when two or more
alerts share the same CI type
and metric name.

Automated
alert
grouping

CMDB

C

CMDB groups are formed
based on CI relationships in
the CMDB, specifically for CIs
that are not included in rulebased or automated groups.

Created via scheduled job.

CMDB
based alert
grouping

Network N
traffic
based

Network traffic alert groups
are formed by analyzing
network traffic connections
between processes across
hosts. This method leverages
service candidates identified
through ML Service Mapping
to group alerts related to
network traffic issues.

Created via scheduled job.

Network
traffic
based alert
grouping

Text

Text groups are formed by
Created via scheduled job.
grouping alerts based on
similar text from frequently
used words in following fields.

Textbased alert
grouping

T

• Description
• Metric Name
• CI Class
Tag
Tag
Cluster

Tag Cluster groups are formed Created via scheduled job.
by grouping alerts according
to user-defined tag-based
alert clustering definitions.

Tag cluster
alert
grouping

Manual M

Alerts grouped manually by
users to organize related
issues.

Manual
alert
grouping

Created manually by the user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3263


<!-- page 3264 -->
For information on scheduled jobs and parameters, refer to Scheduled jobs and parameters for
alert grouping. For detailed information on configuring alert correlation logic order, see Configure
alert correlation logic order.
Log analytics alert grouping
ServiceNow Health Log Analytics identifies patterns in log data and learns pattern behavior.
When its artificial intelligence engine detects anomalous behavior, it sends an event to the
ServiceNow Event Management application.
Log analytics alert groups are created by the Health Log Analytics application. For more
information, see Types of Health Log Analytics alerts.
Rule-based alert grouping
Rule-based alert grouping is created by alert correlation rules. These rules allow you to manually
classify alerts as primary or secondary and establish a relationship between them. Use alert
correlation rules to group related alerts. The rule runs only for new alerts or alerts whose status
changed from close/flapping to open/reopen.
Example: If rule-based alert grouping is applied, secondary alerts indicating that virtual machines
or applications on the offline server are also down and are grouped under the primary alert,
which is the root alert for the server that is offline. You can view rule-based alert grouping in
Express List of Service Operations Workspace (ITOM). For more information, see Viewing links
between alerts in rules-based alert groups.

Primary and secondary alerts
• Primary alert: Identifies the root cause of an alert group and represents its secondary alerts.
• Secondary alert: Related to the same issue, they are grouped under the primary alert. The
purpose of secondary alerts is to determine which alerts to suppress, reducing alert noise and
allowing you to focus on the primary alert.

How primary and secondary alerts interact
In rule-based alert grouping, one of the real alerts is designated as the primary alert. Primary
and secondary alert filter conditions specify which alerts are classified as primary and which as
secondary. The filter criteria are applied to the Alert [em_alert] table.
In this alert grouping, both primary and secondary alerts are visible but secondary alerts are
grouped under the primary alert. The property Keep the secondary alert open even when
primary closed. for manual or rule based (evt_mgmt.rule_based_manual_closure)
controls whether secondary alerts remain open or are closed when the primary alert is closed.
If the property is not selected (i.e., set to No), after the primary alert is closed, the parent
reference is removed from the secondary alerts (the grouping is dissolved), and the secondary
alerts are closed and become stand-alone. If you select the checkbox for the property (i.e., set it
to Yes) and the primary alert is closed, the parent reference is removed from the secondary alerts
(the grouping is dissolved), causing them to become stand-alone open alerts.

Alert hierarchy
Only one level of secondary alerts is permitted. In situations where a secondary alert has its own
secondary alert, the Event Management application flattens the hierarchy to preserve only two
levels.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3264


<!-- page 3265 -->
For example, assume alert A is the primary alert and alert B is the secondary alert. If alert C
becomes a secondary alert for alert B, the application flattens the hierarchy so that A remains the
primary and B and C become sibling secondary alerts, one level below A.
As another example, assume that there are three correlation rules that produce the following
results:
• Rule 1 (with an Order value of 1): B becomes a primary alert for A.
• Rule 2 (with an Order value of 2): A becomes a primary alert for C and D.
• Rule 3 (with an Order value of 3): E becomes a primary alert for A.
When alerts B, C, D, and E are triggered, they all appear in the alert list separately because there
are no correlations between them.
When alert A is triggered:
1. Rule 1 makes A a secondary alert under alert B.
2. Rule 2 makes both C and D secondary alerts under alert A, and the hierarchy is flattened so
that A, C, and D become secondary alerts to the primary alert B.
3. Rule 3 is not applied because multiple parents are not allowed—A already has B as its primary.
Therefore, if all alerts are triggered, only B appears as the primary alert for A, D, and C, while E
remains a standalone alert.
Create an alert correlation rule
Create an alert correlation rule to designate primary and secondary alerts. The primary alert is
identified as the root cause of the alert group and the secondary alerts are grouped under the
primary alert.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Rules > Alert Correlation Rules.
2. Click New.
3. On the form, fill in the fields.
For information on the fields, see Alert correlation rule form.
4. Select Submit.

Result

A rule-based alert group is created when a new alert is generated or when the status of an
existing alert changes from Closed or Flapping to Open or Reopened, provided the filter criteria
are matched.
Automated alert grouping
Automated alert grouping is a process that uses historical data to automatically organize similar
alerts into groups. These alerts could be system issues, like server errors or network outages.
By grouping related alerts together, it helps teams quickly identify patterns, manage recurring
problems, and reduce the noise from too many individual alerts.
Imagine you’re monitoring a city’s traffic system. You get a lot of alerts—like reports of accidents,
traffic jams, and road closures. Automated alert grouping works like a smart assistant that
organizes these alerts based on patterns, so you can see related issues together and respond
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3265


<!-- page 3266 -->
more efficiently. These automated alert groups are displayed in the Express List within the
Service Operations Workspace.

How do you enable this grouping
To enable machine learning-based automation for alert correlation, set the property Enable ML
based Automation correlation (sa_analytics.specific_patterns_enabled) to true.
If the Domain Support - Domain Extensions Installer is activated, alert aggregation patterns
are created based on the domain level defined in the sa_analytics.agg.learner_domain_level
property. By default, this domain level is set to two, which corresponds to the second level in the
domain hierarchy. For example, in a company, Level 1 might represent the company itself, while
Level 2 could represent departments or teams within the company. Alerts are grouped based on
this second level, like sorting them by department or team. For more details, Domain separation
and Event Management.

How does it work
Automated alert grouping uses machine learning (ML) and historical data to identify patterns
among alerts. It looks at specific characteristics, called pattern identifiers—such as the type of
issue, the affected system, CI or metric that happened multiple times within a similar time period
—to determine if alerts are related. The Alert Aggregation Learner uses algorithms to group alerts
based on patterns. Specifically, it uses pattern-based algorithms and probabilistic methods to
analyze incoming alerts and identify related ones.
Think of it like noticing that accidents often happen at a particular intersection at rush hour.
The system groups similar alerts (like recurring traffic jams at the same spot) together based on
certain identifiers (like location or type of problem). The system follows these key steps to group
alerts effectively:
• Analyze Historical Data: The system studies past alerts to learn patterns and relationships.
• Apply Machine Learning: ML algorithms analyze historical alert data to identify patterns and
relationships among alerts. It enables the system to learn from past incidents and improve its
ability to group similar alerts together over time.
• Group Similar Alerts: Alerts with matching patterns are automatically grouped together.
Imagine you're managing a city's traffic system, and you receive multiple alerts:
• 8:00 AM: Accident on Main Street
• 8:05 AM: Traffic jam near Main Street
• 8:10 AM: Road closure on Main Street
Automated alert grouping works like a smart assistant by analyzing these alerts and recognizing
a pattern. It groups them together because they all relate to Main Street, likely stemming from
the same accident. This helps you see the bigger picture quickly and focus on resolving the root
cause (the accident), rather than addressing each alert separately.

Benefits
• Find Recurring Issues: Quickly spot patterns (like a server consistently overheating).
• Save Time: Handle groups of related alerts instead of individual ones.
• Improve Response: Focus on fixing the root cause rather than dealing with scattered issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3266


<!-- page 3267 -->
Understanding pattern identifiers
A pattern identifier is a set of criteria or attributes (such as alert type, affected system, etc.) used
to group similar alerts. It helps to identify recurring issues, making it easier for teams to respond
and address ongoing problems.

How pattern identifiers group alerts
Consider a network monitoring system that generates alerts for various issues, such as high CPU
usage, memory leaks, or connection timeouts.
Pattern Identifier: Metric Name and CI
• Alert 1: High CPU usage on Server A at 10:00 AM
• Alert 2: High CPU usage on Server A at 10:05 AM
• Alert 3: Memory leak on Server B at 10:10 AM
• Alert 4: High CPU usage on Server A at 10:15 AM
In this case, the pattern identifier could be set to the Metric Name (e.g., high CPU usage)
combined with the Configuration Item (CI) (e.g., Server A). Alerts 1, 2, and 4 would be grouped
together because they share the same metric (high CPU usage) and the same CI (Server A),
indicating a recurring issue that may need further investigation. Alert 3, however, would not be
included in this group because it has a different metric (memory leak) and CI (Server B).

Note: The set of alert fields used for the pattern identifier is also referred to as Feature
Identifier Attributes or simply attributes.

How to configure effective pattern identifiers
To configure effective pattern identifiers for alert grouping, follow these three key steps to ensure
accurate and meaningful analysis of alerts.

Step

Action

Description

Create an event rule

Define an event rule.

Set up an event rule to
populate the relevant alert
fields for the pattern identifier.

To know how to create an
event rule, see Create or edit
an event rule.
Manage pattern identifier

Add relevant alert field to the
pattern identifier.
To know how to add fields
to the pattern identifier, see
Specify and manage pattern
identifier attributes for alert
grouping.

Choose relevant identifiers

Select alert fields that clearly
identify the problem.
For example, if the issue is
that a service is offline or
there’s no connection to the
database, look for specific

After adding the relevant
alert fields, select Deploy to
activate the pattern identifier.

• Avoid overly unique fields
(e.g., date) that make pattern
identification difficult.
• Avoid overly common
fields that result in too

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3267


<!-- page 3268 -->
Step

Action

Description

values in the alert that indicate
this. Add these types of
fields to the pattern identifier.
By default, we provide the
Metric Name field as a pattern
identifier.

many alerts being grouped
together, making patterns
indistinguishable.

Alert grouping and Learned Patterns
Learn how alert patterns are discovered, grouped, and displayed in the system.

Concept

Description

Pattern discovery

When a set of alert fields matches, the alerts
are grouped into a "Learned Pattern." For
example, alerts with the same Priority Group
and Resource are grouped into a pattern.

Pattern reporting

These patterns are displayed on the
Learned Patterns report found under Event
Management > Administration > Learned
Patterns.

Managing Pattern Attributes and Time Frame
Learn the process of managing pattern identifier attributes, deployment of new sets, and how the
system identifies issues.

Concept

Description

Active pattern identifier attributes

Only one set of attributes can be active at a
time.

Note: The new set replaces the current
one after deployment.
Purpose and time frame

Issue identification

Pattern grouping identifies issues within
the last 30 days, controlled by the
sa_analytics.agg.learner_period_days
property.
To identify an issue, the system utilizes a
combination of Configuration Items (CIs) and
Pattern Identifiers (sometimes referred to as
Feature Identifiers).
By default, a Pattern Identifier is defined as
the Metric Name, but this can be modified.
Two alerts are considered similar if they share
the same CI and Pattern Identifier, although
fields such as Source, Severity, Description,
and others may differ.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3268


<!-- page 3269 -->
Concept

Description

For more information, see Specify and manage
pattern identifier attributes for alert grouping.

Note: The Alert Aggregation Learner
also identifies patterns of alerts within
manual alert groups.
In some cases, you can create patterns
from alerts where the CIs share the same
value in a specified field. For example, to
build patterns from alerts with the same
CI Location field, enter location in the

sa_analytics.agg.learner_group_by_property
property. For more information, Configure
scheduled job-based alert grouping.
When working with CI-based groups, ensure
that the pattern identifier includes both the
node and the metric name. For details on
configuring the Feature Identifier, see Learned
patterns report.

Note: Alerts that lack a CI can still be
grouped together as Text-based or CIbased alert groups, treating a node as
a CI. To enable this functionality, set the
sa_analytics.enable_no_ci_grouping
property to true.
Configure pattern based alert grouping
Configure the Alert Aggregation Learner (Service Analytics Alert Aggregation Learner - Daily),
an offline job that runs daily to process past alerts. It identifies patterns of related alerts using
a combination of pattern-based and probabilistic techniques, enabling quicker detection and
resolution of recurring issues.

Before you begin

Role required: evt_mgmt_admin

About this task

The Alert Aggregation Learner tracks manual additions and removals of alerts from automated
alert groups. If you undo any previous alert additions or removals, the automatic process adjusts
accordingly.
You can review user additions and removals from automated alert groups and undo any action
to prevent it from being automatically repeated. The Alert Aggregation Learner also identifies
patterns in manual alert groups, enabling automatic formation of new alert groups based on
these patterns when new streams of alerts arrive.

Procedure
1. Navigate to All > Event Management > Administration > Alert Corrlelation Properties.
2. Enable the following properties.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3269


<!-- page 3270 -->
◦ Enable alert aggregation for Automated, CMDB, and Text-based groups
(sa_analytics.aggregation_enabled).

Note: When disabled, disables all other groups.
◦ Enable ML based Automation correlation
(sa_analytics.specific_patterns_enabled).
3. Optional: To configure the time period for the Alert Aggregation Learner to process alerts,
perform the following steps:
a. Navigate to All > System Properties > All Properties.
b. On the System Properties page, select the

sa_analytics.agg.learner_period_days property.
If the property doesn't exist, you need to define it.

c. Set the property's Value to the number of days by which you want alert aggregation learner
job to process.

Note: Values larger than 30 days increase job processing time. For optimal
performance, use values of 30 days or less.
Specify and manage pattern identifier attributes for alert grouping
The Alert Aggregation Learner analyzes alerts and identifies patterns using a defined set of alert
and configuration item (CI) attributes. By configuring these attributes as pattern identifiers, you
can control which characteristics are used to group alerts. This customization creates meaningful
alert groups, improving alert management and response times by reducing noise and enabling
focus on critical issues.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to Event Management > Administration > Manage Pattern Identifier.
2. On the SA Alert Aggregation Pattern Attributes page, select New to create a new pattern
identifier, or open an existing pattern identifier.
The SA Alert Aggregation Pattern Attribute page opens.
3. Select the Unlock Feature Identifier Attributes icon (
Available list to the Selected list.

) and move attributes from the

Note: Properties from CMDB CI via dot-walking are not populated.
The Configuration Item attribute is automatically considered as an identifier and should not
be added explicitly to the Feature Identifier Attributes section. The pattern is defined as a
combination of the configuration item and your selected feature identifier attributes.
4. Selecting the Lock Feature Identifier Attributes icon (

).

5. Select Submit for a new pattern identifier or Update for an existing pattern identifier.
6. Navigate back to the SA Alert Aggregation Pattern Attribute page by opening the pattern
identifier.
7. Activate the pattern identifier attributes by selecting Deploy.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3270


<!-- page 3271 -->
What to do next
• Ensure a corresponding event rule exists: Verify that there is an event rule set up to assign
or populate the newly defined pattern identifier attributes to the incoming alerts. Event rules
define how attributes are assigned to alerts based on certain conditions.
• Run the Service Analytics Attribute Populator for Historical Alerts job: After the new event rule
is in place, this job is used to retroactively populate the pattern identifier attributes for existing
alerts that were created before the new attributes were defined. It ensures that even past alerts
(historical alerts) have the necessary attributes filled in for grouping them properly.
Learned patterns report
The Learned Patterns report helps assess the efficiency of alert aggregation and identify
recurring alert patterns. It enables proactive issue resolution, enhancing overall system
performance by providing insights into frequent alerts.

Navigating and sorting the report
To access the Learned Patterns report, navigate to Event Management > Reporting > Learned
Patterns.
Sorting Options: You can sort patterns by Pattern Score, Frequency, and Size to prioritize which
alerts to address first.

Metrics and data in the report
The report displays key metrics associated with learned patterns, including:
• Frequency: The occurrence count of pattern identifier attributes (CI/MetricName).
• Pattern Identifier Attributes: Describes how alert grouping combines relevant pattern attributes
to create a learned pattern. These patterns can reappear across multiple alerts, often
indicating the same underlying issue.
• Presentation Format: Metrics are shown in a table format, organized by learned patterns.
This report allows you to:
• Focus on Higher Frequency Alerts: Allocate resources to higher-frequency alerts to expedite
the resolution of numerous alerts.
• Target Larger Patterns with Lower Frequency: Allocate resources to larger learned patterns with
lower frequency for targeted analysis.

Pattern group details and identifier attributes
• Expand a pattern group to display details about all the identifier attributes that are associated
with the pattern.
• Sort the entries within each pattern by Configuration Item and Feature Identifier.

Column

Description

Configuration Item

CI associated with the combined pattern identifier attributes.

Feature Identifier

Feature identifier used for the combined pattern identifier
attributes.

Frequency

Number of times the combined pattern identifier attributes
appear in the data set.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3271


<!-- page 3272 -->
Column

Description

Size

Number of occurrences of the combined pattern identifier
attributes (like Configuration Item and Feature Identifier) within
a learned pattern.

Score

Calculated score that combines the frequency and size of
the learned pattern. The formula for this score is: Score =
Frequency × (Size + 1).
This score helps prioritize patterns based on their recurrence
and size, making it easier to focus on high-priority patterns.

CI Link

Link in the Configuration Item column to view details of the CI
information.

Exclude patterns from learned patterns
Exclude CI-based or CI class-based alerts and patterns when you encounter alerts incorrectly
added to a learned pattern by the Learned Patterns job. For example, a pattern might include
an alert that occurred at the same time as other alerts but is not actually related to them. This
maintains accuracy, ensuring better alert groupings and improved management efficiency.

Before you begin

Role required: evt_mgmt_admin

About this task

You select the incorrect alert in a pattern to exclude the entire pattern to which it belongs.

Note: When you exclude an incorrect alert, any other patterns containing that alert are
also excluded.

Procedure
1. Navigate to All > Event Management > Reporting > Learned Patterns.

2. On the Learned Patterns page, expand the anomalous pattern.

3. Select the pattern name to open it for exclusion.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3272


<!-- page 3273 -->
4. On the SA Alert Aggregation Learned Pattern page, select Exclude.

Result

The entire pattern is removed from the Learned Patterns report and listed on the Excluded
Patterns page, located at Event Management > Administration > Excluded patterns.
If the pattern includes other alerts, you can restore it by reclaiming those alerts as a learned
pattern. For further details, see Restore excluded patterns.
Restore excluded patterns
Restoring excluded patterns to the learned patterns report lets you reintegrate valuable insights
lost due to incorrect alerts. This flexibility maintains accurate alert aggregation and enhances
monitoring. For example, if you excluded a pattern due to an incorrect alert, you can restore it
without that alert, ensuring relevant data remains accessible for analysis and decision-making.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Administration > Excluded patterns.

2. On the Excluded Patterns page, expand or select a pattern to view its alerts.

3. Select the patterns you want to restore.
4. In the Actions on selected rows drop-down menu, select Delete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3273


<!-- page 3274 -->
5. In the confirmation window, select Delete.
6. Run the Learned Patterns scheduled job.
a. Select System Definition > Scheduled Job.
b. On the Scheduled Jobs page, search for the Service Analytics Alert Aggregation Learner Daily job.
c. Open the Service Analytics Alert Aggregation Learner - Daily job.

d. Select Execute Now.

Result

The pattern appears with its restored alerts on the Learned Patterns report page. To access this
page, navigate to Event Management > Reporting > Learned Patterns.
Network traffic based alert grouping
The Network traffic based alert grouping method groups alerts by analyzing network traffic
connections between processes across hosts. It leverages service candidates identified by ML
Service Mapping to group alerts related to network traffic issues. This ensures alerts from directly
connected processes within the same service candidate are grouped together, offering a more
contextual view of network incidents.
Service candidates are potential collections of processes within your IT environment that
are identified based on their network connections and interactions. They represent different
services or functions that your IT systems provide, even if they are not fully detailed in your
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3274


<!-- page 3275 -->
system’s configuration database. For example, service candidates might group together all the
processes involved in email delivery, even if the configuration details are incomplete.
ML Service Mapping uses machine learning to automatically discover and map out these service
candidates. It identifies how different processes and components are connected and grouped
together based on their network traffic and interactions. This helps in understanding and
organizing the IT services and their components, making it easier to manage and troubleshoot
issues. For example, ML Service Mapping might automatically identify and map the connections
between email servers and mail clients based on their network interactions.

Note: Network traffic based alert grouping is enabled for new
customers starting with the Zurich release. Existing customers
need to enable the property Enable Network Traffic correlation
(sa_analytics.agg.query_network_traffic_correlation_enabled)
manually.

How it works
• Host identification: Alerts related to network issues are generated from various sources.
• Network context identification: The correlation process uses horizontal discovery results
and ML Service Mapping to identify the most relevant service candidates and network
connections.
This process uses the results of the scheduled job Event Management - Populate Service
candidate process to process mapping - Daily, which runs once a day and is used to store
process-to-process connections for Host CIs in the format required by the alert grouping
algorithm.
• Alert grouping: Alerts are grouped based on direct process-to-process connections within
the context of the same service candidate. Grouping is updated in real-time as new alerts are
received.

Benefits
• Improved accuracy: By leveraging network traffic connections and service candidates, this
method provides high accuracy in grouping alerts, minimizing false positives.
• Enhanced coverage: It effectively groups alerts even in environments with low CMDB maturity,
covering a broader range of alerts and issues.
• Streamlined resolution: IT teams can quickly identify and resolve related issues in bulk,
reducing the volume of alerts to manage and improving operational efficiency.
Enable network traffic-based alert grouping
Activate network traffic-based alert grouping to automatically correlate and reduce alert noise by
grouping related events based on network traffic patterns. This helps improve efficiency in alert
response and streamlines alert management.

Before you begin

Ensure the Service Mapping Plus application (sn_sm_scoped_app) is installed.
Role required: evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3275


<!-- page 3276 -->
About this task
Procedure
1. Navigate to All > Event Management > Administration > Alert Correlation Properties.
2. Ensure that the property Enable Network Traffic correlation
(sa_analytics.agg.query_network_traffic_correlation_enabled) is
selected.
Disable network traffic-based alert grouping
Disable network traffic-based alert grouping to prevent alerts from being grouped solely by
network activity, reducing noise during traffic spikes and ensuring critical issues stand out for
quicker resolution.

Before you begin

Role required: evt_mgmt_admin

About this task
Procedure
1. Navigate to All > Event Management > Administration > Alert Correlation Properties.
2. Clear that check box for the property Enable Network Traffic correlation
(sa_analytics.agg.query_network_traffic_correlation_enabled).
3. Set the property sa_analytics.enable_process_mapping_calculation to false.
Follow up on work notes and review service candidate
Track and follow up on work notes while reviewing the service candidate to ensure all actions
and updates are captured. This helps maintain clarity and continuity in the review process,
reducing the chances of missed details.

Before you begin

Role required: evt_mgmt_admin and sm_admin

Procedure
1. Navigate to All > Event Management > All Alerts.

Note: Scroll down to an alert with Network Traffic as the group, and in the Group

column, right-click and select Show Matching. This displays all alerts related to Network
Traffic.
2. For the alert whose work notes you want to see, select the alert number.
3. On the Alert page, scroll down and select the Activities tab.
You can view the work notes for the selected alert.
4. In the work notes, select the service candidate to view details.
The Application Service Candidate page opens.
5. Select Preview Map Graph to view the service candidates mapping in the form of a graph.
Service candidates mapping provides a visual representation of how different service
candidates are connected, making it easier to understand relationships, identify potential
issues, and analyze dependencies more effectively.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3276


<!-- page 3277 -->
Mixed alert grouping
Mixed alert grouping combines multiple strategies—currently CMDB-based and tag-based
grouping—to form a single, cohesive alert group. It reduces noise, bridges gaps when one
method isn't enough, and delivers a clearer, end-to-end view of incidents. This approach helps
operators identify root causes faster and take informed action, even in complex or incomplete
data environments.
To understand how Mixed grouping works in practice, it’s important to look at the individual
strategies it currently supports. At this stage, Mixed Grouping comprises two core methods:
CMDB based alert grouping, which leverages service relationships defined in the CMDB, and
Tag cluster alert grouping, which uses shared metadata across alerts. Each plays a distinct role in
correlating related alerts effectively.
If you're looking to group alerts, see Create Group automation.
CMDB based alert grouping
CMDB based alert grouping helps organizations manage alerts by organizing them according to
their related configuration items (CIs) within the Configuration Management Database (CMDB).
This method group alerts based on CI relations in applications or infrastructure components,
allowing teams to better understand the impact of issues, respond more effectively to alerts, and
maintain service availability.
CMDB alert groups are created based on the current relationships between CIs in an
organization. This means that when several alerts are triggered on different CIs—for example, if a
server is experiencing issues — alerts are grouped based on CI relationships.
By default, all the existing connections between CIs are used to group alerts. However,
given the complexity of IT systems, there are many types of relationships, and organizations
can filter which ones to consider when aggregating alerts. For instance, you can filter
relationship types by suggested relationships that appears in the CMDB Group CI Relations
[em_suggested_relation_type] table. You can also filter using the hosting and containment rules
(dependent relationship rules).
For example, if a server is hosting multiple applications, and there’s a problem with that server, all
the alerts related to both the server and the applications it hosts can be grouped together. This
helps the IT team quickly identify and address the root cause of the issue rather than dealing
with each alert in isolation. Similarly, if different processes are running on a server, grouping
alerts based on those processes allows teams to see how problems in one area might affect
others, leading to a more comprehensive understanding of the situation.
The CMDB alert groups are effectively displayed in the Express List within the Service
Operations Workspace, which allows teams to easily monitor and manage related alerts.
This feature enhances operational efficiency by providing a clear view of alerts that are
interconnected based on the current relationships among configuration items (CIs).
Use cases for CMDB based alert grouping
Use cases for CMDB grouping enhance alert management by correlating alerts based
on Configuration Item relationships, improving visibility, and facilitating more efficient
troubleshooting.

Common CMDB grouping use cases
In the context of CMDB grouping, organizations face several challenges when managing alerts
related to Configuration Items (CIs).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3277


<!-- page 3278 -->
Common use cases
Use Case

Shared Configuration Item (CI)
Scenario: An organization
monitors a database server
experiencing multiple issues,
resulting in numerous
alerts related to different
applications using that
database.

Challenges

Solutions

• Delayed response: Teams
may respond to alerts
in isolation, potentially
overlooking related
alerts, leading to delayed
resolutions.

• Aggregate alerts related to
the same CI into a single
group for a unified view.
• Facilitate faster alert
resolution by addressing all
related alerts together.

• Inefficient resource
allocation: Time and
resources may be wasted
on investigating separate
alerts that are actually
related.
• Lack of context: Alerts
related to the same CI
can be scattered across
different alert groups,
making it difficult to see the
full picture.

Hosting/Containment
Relations
Scenario: A physical server
hosts several virtual machines
(VMs), and an alert is
generated for a hardware
failure on the server. Multiple
alerts also arise for the VMs
due to their reliance on the
server.

• Visibility into dependencies:
Teams may lack visibility
into how CIs are
interconnected, leading to
inefficient troubleshooting
processes.

• Group alerts using CMDB
hosting/containment rules
to aggregate alerts related
to the physical server and
its hosted VMs into a single
alert group.

• Complex alert resolution:
Understanding which CIs
are affected and how they
relate can be complicated,
resulting in longer resolution
times.

• Provide a comprehensive
view of all alerts tied to the
physical server's failure.

• Resource drain:
Mismanagement of alerts
can lead to duplicated
efforts across teams,
wasting time and resources.
Applicative Relations
Scenario: An enterprise
application relies on multiple
micro-services, and an issue
arises with one of these
services, generating alerts
across several components,
complicating diagnosis.

• Understanding application
dependencies: Teams
may find it challenging
to trace how application
components interact,
making it difficult to pinpoint
issues in complex systems.
• Slow incident resolution:
Without a clear
understanding of
applicative flow, alert

• Focus remediation efforts
on the physical server
while monitoring the VMs
to ensure all aspects are
addressed efficiently.

• Implement grouping
based on applicative flow
relations to aggregate alerts
related to the affected
microservice and its
dependent components.
• Utilize dependency maps
to visualize how different
services interact.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3278


<!-- page 3279 -->
Common use cases (continued)
Use Case

Challenges

Solutions

resolution can be slow and
labor-intensive.
• Inconsistent monitoring:
Alerts related to
applications may not be
consistently monitored
or prioritized, leading to
potential oversights.

• Streamline the resolution
process by addressing
grouped alerts related to
the application, improving
response times.

CMDB alert grouping — properties and functionality
Learn about the key properties and functionality of CMDB alert grouping, which facilitate
efficient alert organization based on relationships and enhance the overall effectiveness of alert
management.

Properties for managing CMDB alert group creation
Use the properties listed in the following tables to control CMDB alert group creation. For more
information, see Configure scheduled job-based alert grouping.

Property

Setting

Enable this property to automatically use
CI relationships for alert aggregation,
correlating alerts and creating CMDB alert
sa_analytics.agg.query_cmdb_correlation_enabled
groups.
Enable CMDB correlation

Max number of relations between CIs in a
topology that form a CMDB group

Set the maximum number of enabled
relations between CIs in a topology that
form a CMDB group.

sa_analytics.agg.query_cmdb_graph_walk_nodes
For example, if you set this property
to 3, a CI associated with an alert will
automatically be grouped with similar CIs
within three hops or less.

Note: This property setting impacts
all types of relations used for alert
aggregation. Using a value greater
than 4 may negatively affect the
performance of the alert aggregation
job.
Use all CMDB relations for CMDB group
correlation

Set to true if you want to use all
relationship types for CMDB grouping.
The default setting for new users is that
evt_mgmt.related_cis_get_all_relation_types
the option is set to true, meaning all
relationship types are used for grouping.
Set the property to false to filter the
relations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3279


<!-- page 3280 -->
Properties for managing automatic creation of CMDB alert groups for advanced
use cases
In some use cases, you may need to ignore or exclude certain CI
relationships from automatic alert group creation. In this case, the
evt_mgmt.related_cis_get_all_relation_types property must be set to false,
and the properties in the below table must also be configured.

Note: If the evt_mgmt.related_cis_get_all_relation_types property is set
to false, and the relationship isn’t specified in the [em_suggested_relation_type] table, the
relationship is not considered for alert aggregation.
Properties for managing automatic creation of CMDB alert groups for advanced use cases
Property

Setting

Enable Suggested Relations for CMDB
Correlation

Keep this property enabled to use
any suggested relationships defined
in the CMDB Group CI Relations
sa_analytics.agg.query_cmdb_suggested_relationship_enabled
[em_suggested_relation_type] table when
forming CMDB alert groups. To include a new
relationship, add it to this table.
This property is enabled by default.
Use CMDB relationship based on hostcontainment Metadata rules

Containment rules specify which configuration
item classes can be contained within another
item through a specific relationship when
evt_mgmt.related_cis_use_containment_rules
creating a service template.
Keep this property enabled when forming CMDB
alert groups to use any host-containment rules
defined in the Metadata Editor. For more details,
see CMDB dependent relationship rules .
This property is enabled by default.
Enable filtering by dependent relationship
rules

Hosting rules define what classes of
configuration items are hosted on other classes
of configuration items.

evt_mgmt.related_cis_use_hosting_rules

Keep this property enabled when forming CMDB
alert groups to apply any hosting rules, which
define which classes of configuration items are
hosted on other classes.
This property is hidden and enabled by default.

Note: If you need to change the default
value, add the property, as it does not
exist in the instance by default. For more
information on how to create a property,
see Add a system property .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3280


<!-- page 3281 -->
Properties for managing automatic creation of CMDB alert groups for advanced use cases
(continued)
Property

Setting

Ignore CMDB alert groups from forming due
to CI applicative flow relations

Set this property to true to prevent CMDB
groups from forming based on applicative flow
relations for CI relations in application services.

sa_analytics.agg.ignore_cmdb_applicative_flow

This property is hidden and enabled by default.

Note: If you need to change the default
value, add the property, as it does not
exist in the instance by default. For more
information on how to create a property,
see Add a system property .

sa_analytics.applicative_flow_rc_enabled
This property is hidden and enabled by default.
Event Management stores a map of related CIs in the Event Management CI Graph Reuse
[em_ci_graph_reuse] table for each processed CI. You can adjust the storage period by
modifying the sa_analytics.agg.query_cmdb_graph_reuse_period property, with
the default set to one day (86,400 seconds). This process enhances the search performance of
relations in the CMDB. To disable the storage process during advanced use-case configurations,
set the property value to zero.

Note: If you need to change the default value, add the

sa_analytics.agg.query_cmdb_graph_reuse_period property, as it does not
exist in the instance by default. For more information on how to create a property, see Add a
system property .
View the Dependency map for CMDB alerts
The Dependency map illustrates how and why alerts are grouped, simplifying troubleshooting
and issue management. It reveals connections between CIs within a CMDB alert group,
enhancing visibility into their relationships. Additionally, if a CI is not part of the group but
connects to other alert CIs, it remains visible on the map, aiding alert resolution and proactive
management.

Before you begin

Role required: evt_mgmt_user, evt_mgmt_operator

Procedure
1. Navigate to All > Event Management > All Alerts.
2. Search for the CMDB group.
3. Open a CMDB group alert.
4. Scroll down and select the Activities tab.
You may see a message similar to the following:
Alert2405199 and Alert2405219 were grouped together because of
CI relationships. Open Dependency Map for CMDB Group Alerts.
Open Dependency Map for CMDB Group Alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3281


<!-- page 3282 -->
5. Select the link to see the dependency view of the CMDB alerts.

Add a CI relationship to CMDB Group CI Relations
Add a CMDB group CI relationship for a CI class to enable accurate alert group generation.

Before you begin

Role required: evt_mgmt_admin

About this task
Configure the

sa_analytics.agg.query_cmdb_suggested_relationship_enabled property
to further enhance alert grouping by using suggested relationships. For more information on
properties, see CMDB alert grouping — properties and functionality.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3282


<!-- page 3283 -->
Procedure
1. Navigate to All > Event Management > Administration > CMDB Group CI Relations.
a. Click New.

b. Complete the form.
Suggested Relationship fields
Field

Description

Base class

The base class in the relationship serves as
either the parent or the child, depending on
the type of relationship established.

Relationship

The type of relationship that defines how
two or more entities are connected.

Dependent class

The class that relies on another class in the
relationship, serving as either the parent
or the child depending on the relationship
type.

2. Click Submit.

Example: CMDB Group CI relation
Base Class

Relationship

Dependent/Target Class

Oracle

Is Hosted On

Linux Server

Oracle

Is Hosted On

Solaris Server

Note: The same parent class and relationship can appear more than once.
Delete a CI relationship from CMDB Group CI Relations
Delete a CMDB group CI relationship to limit available relationships for CMDB alert grouping,
helping to reduce noise and improve alert relevance.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Administration > CMDB Group CI Relations.
2. Select the checkbox next to the CI relationship you want to delete.
3. Select the Actions menu and then select Delete.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3283


<!-- page 3284 -->
4. On the confirmation window, select Delete.
The CI relationship is deleted.
Tag cluster alert grouping
Tag cluster alert grouping enables you to easily create groups of alerts. It is a non-code method
of alert grouping that correlates alerts without having to use CMDB or model training. This
simpler way of grouping similar alerts reduces the overall noise of a large quantity of alerts.
Tag cluster alert grouping is enabled immediately after the activation of the Tag-Based Alert
Clustering Engine application, available in the ServiceNow Store. This grouping is applied
according to the correlation logic order specified in the Configure alert correlation logic order.
Alert grouping tags are attached to definitions on a many-to-many (M2M) basis. Multiple tags can
be linked to a single definition, and a tag can be part of multiple definitions. Groups formed from
tag cluster alert grouping definitions are classified as the Tag Cluster group type.
Tag cluster alert grouping supports domain separation, allowing different domains to have their
own distinct alert grouping configurations and logic.
First, create alert grouping tags to define the criteria for grouping alerts. You can set the tags to
require an exact match, an approximate ('fuzzy') match, or a character pattern match.
You can also use preconfigured tags to speed up alert clustering. These predefined tags are
mapped from alerts and are based on information from sources such as the Alert field, Alert tags,
or Alert additional info. If the required data is missing and the selected tag source is Alert CI or
Alert CI key, the tag is populated using the Configuration Item (CI) value from the Configuration
Management Database (CMDB). Predefined tags are easily identified by their description, which
includes out of the box.
You can attach one or more tags to an alert clustering definition, which specifies the conditions
for alert correlation. You can either create your own alert clustering definition or use a predefined
one provided by the application. Predefined definitions come with associated tags.

Important: Make sure to activate predefined definitions before use. In new systems,
several definitions are active by default. The remaining ones must be activated. For more
information, see Activate a predefined alert clustering definition.
Once one or more alert clustering tags are attached to a definition, the system collects alerts and
checks if their tags match all the tag values specified in the definition. Alerts with matching or
similar tag values are grouped together. New incoming alerts join an existing group if their tags
match the tags in the definition used to create the group.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3284


<!-- page 3285 -->
For tag-cluster grouping, alerts are added to a group based on the timeframe defined in the
alert clustering settings. The time between the initial alert (virtual alert) and subsequent alerts
is evaluated. If two new alerts are received, and their time difference falls within the defined
timeframe, they are added to the group. The initial event's generation time is used to determine
the relevance of the timeframe.
Related topics
Create alert clustering tags
Create an alert clustering definition
Activate a predefined alert clustering definition
Attach a predefined tag to a tag-based alert grouping definition
Configure an event rule to customize alert content
Alert tags
Create alert clustering tags
Create streamlined alert correlations with alert clustering tags by grouping alerts that share
identical or similar tags based on your configured match method. This reduces noise, enhances
incident prioritization, and improves operational efficiency, enabling faster issue resolution and
response times.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Tag Based Alert Clustering Engine > Alert Clustering
Tags.
2. Click New.
3. Fill in the values on the Event Management tag based alert clustering tag form.
4. Select Submit.

Result

The tag appears in the Tag Based Alert Clustering Tags table.
Create an alert clustering definition
Define alert clustering conditions to trigger one or more alert clustering tags, which help create
alert groups from fewer alerts. Creating alert groups from fewer alerts reduces noise, making it
easier to identify critical incidents, prioritize responses, and manage issues effectively.

Before you begin

Role required: evt_mgmt_admin

About this task

To create a tag def users need to use filter to define on which alerts the definition will apply and
define a grouping criteria by specifying which field values should be compared to create a group.

Procedure
1. Navigate to All > Event Management > Tag Based Alert Clustering Engine > Alert Clustering
Definitions.
2. Select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3285


<!-- page 3286 -->
3. Configure the fields on the Event Management tag based alert grouping definition form.
4. Select Save.

Result

The definition appears in the Tag Based Alert Clustering Definitions table and Service
Operations Workspace (ITOM) > Grouping automation. Alert groups created by this definition are
categorized as Tag Cluster groups.
Activate a predefined alert clustering definition
Activate the predefined alert clustering definitions provided with the Tag-Based Alert Clustering
Engine application before use. Utilizing these preconfigured definitions minimizes setup time
and ensures a more efficient configuration process, allowing for quicker implementation and
streamlined alert management.

Before you begin

Important: If you are already using the Tag-Based Alert Clustering Engine application, all
the predefined definitions are inactive and must be activated. In contrast, new customers
will find several definitions active by default, allowing for immediate utilization of the alert
clustering capabilities without additional setup.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Tag Based Alert Clustering Engine > Clustering
Definitions.
2. Select a predefined definition.

Note: For a complete list of the available predefined definitions, see List of predefined
tag-based alert grouping definitions.
3. On the Tag Based Alert Clustering Definition form, select the Active check box.
4. Select Save.

Result

In the Tag Based Alert Clustering Definitions table, the Active field for the activated definition
displays the value true. You can now associate an alert clustering tag with this definition,
enabling effective grouping of alerts based on the defined criteria.
Attach a predefined tag to a tag-based alert grouping definition
Get started faster with alert clustering by attaching a predefined alert clustering tag to a tagbased alert clustering definition in Event Management. By associating a predefined tag, you
ensure that alerts meeting the specified criteria are grouped effectively, facilitating quicker
identification and response to related incidents.

Before you begin

Role required: evt_mgmt_admin

About this task

The Tag Based Alert Clustering Engine application comes with a set of predefined alert clustering
tags. Attach a tag to a tag-based alert clustering definition to specify the conditions that
must be met for alert correlation. This enables effective grouping of alerts based on shared
characteristics, improving the accuracy and efficiency of incident response and management.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3286


<!-- page 3287 -->
Procedure
1. Navigate to All > Event Management > Tag Based Alert Clustering Engine > Alert Clustering
Definitions.
2. Select a definition.
3. Under the Tag Based Alert Clustering Definitions Tags M2M section, select Insert a new row.
4. Use the search field to locate a predefined alert clustering tag, and then select the green
check mark to confirm your selection.

Note: Predefined tags are recognizable by their description, which includes “out of
the box.” For a complete list of the available predefined tags, see List of predefined alert
grouping tags.
5. Select Save.

Result

The predefined alert clustering tag is now attached to the tag-based alert clustering definition.
This association enables the effective grouping of alerts based on the specified criteria,
facilitating improved alert management and response efficiency.
Text-based alert grouping
In text-based alert grouping, alerts are organized and correlated based on specific text patterns
or keywords within the alert content. This approach dynamically groups alerts that share similar
textual characteristics, such as error messages or event descriptions, allowing for more flexible
and adaptive management of alerts.
The EM Alert Clustering Solution is a method used to correlate alerts based on similarities in
specific fields and form clusters or groups. In ServiceNow Event Management, it creates clusters
based on the Description, Metric name, and Configuration item.Class fields. This solution
organizes alerts into text-based groups, and when a new alert arrives, the ML Predictor identifies
the appropriate cluster, grouping alerts within the same cluster.

Note: The ML Predictor job is asynchronous and assigns real-time alerts to clusters, which
may result in slight delays. This delay can cause text-based groups to be created several
minutes later, as the alert grouping job runs once per minute. If prediction results are not
available during a run, they are rechecked in the next grouping job.
For text-based logic to execute, you must have the Predictive Intelligence plugin
(com.glide.platform_ml) installed and the EM Alert Clustering Solution definition activated.
There are specific settings or limits used to control the behavior of text-based alert grouping.
These thresholds define the criteria for how alerts are grouped based on text patterns or
attributes. The text-based thresholds are:
• Cluster quality threshold: The Cluster quality threshold
(sa_analytics.alert_grouping_tb_cluster_quality_threshold)
determines the minimum quality required for an alert cluster to be considered valid. This
threshold ensures that only clusters with a minimum level of similarity and reliability are
used. Clusters that meet this threshold are considered valid, improving the precision of
the groupings and reducing noise from irrelevant or low-quality clusters. The range of the
threshold is from 1 to 100 and the default value is 70.
• Alert rank threshold: The Alert rank threshold
(sa_analytics.alert_grouping_tb_alert_rank_threshold) defines the
minimum rank required for an alert to be included in a group. This threshold ensures that only

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3287


<!-- page 3288 -->
alerts with a certain level of similarity are grouped together, filtering out lower-ranked alerts to
maintain the quality of the alert group. The default value is 0.3, where smaller values indicate
better similarity.

Note: To use these properties, you need to create properties with the same names and
assign the required values to them. For more information on how to create a property, see
Add a system property .
The EM Alert Clustering Solution definition is located in the [ml_capability_definition_clustering]
table. To access it, navigate to Predictive Intelligence > Clustering > Solution Definitions.
To verify if the solution definition is active, see Verify text-based clustering solution. To disable
the EM Alert Clustering Solution definition, disable text-based alert grouping by setting the
property sa_analytics.text_based_group_enabled to false and clearing the
Active check box in the EM Alert Clustering Solution definition.

Example of text-based alert grouping
Scenario

Network Connectivity Problems: There are
widespread network connectivity issues
affecting multiple departments.

Example

Alerts from various network monitoring tools
might report issues like Network segment
down, High packet loss, or Connectivity issues
in subnet. Text-based alert grouping uses the
EM Alert Clustering Solution and ML Predictor
to streamline alert management. The EM Alert
Clustering Solution employs Natural Language
Processing (NLP) algorithms to analyze and
identify common text patterns in alerts such
as Network segment down or High packet
loss. It then clusters these alerts based on
their text similarity, grouping related issues
together. The ML Predictor further enhances
this process by evaluating new alerts in real
time and assigning them to the appropriate
existing clusters based on their text patterns.
This dynamic grouping provides a
consolidated view of the connectivity
problems, allowing network engineers to
quickly diagnose and address the root cause
of the issues more efficiently.

Verify text-based clustering solution
Event Management uses Natural Language Processing (NLP) algorithms to identify common text
patterns in alerts and create alert groups through clustering. This approach not only organizes
similar alerts efficiently but also reduces noise and helps focus on significant issues, enhancing
overall alert management.

Before you begin

Ensure that the Predictive Intelligence plugin (com.glide.platform_ml) is installed.
Ensure the parameter sa_analytics.text_based_group_enabled is set to true.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3288


<!-- page 3289 -->
Note: If the Predictive Intelligence plugin is not installed, the text-based logic will not

execute, even if sa_analytics.text_based_group_enabled is set to true. This
is because text-based grouping relies on clustering alerts based on the description, metric
name, and CI class. Without the plugin, clustering cannot be performed, and as a result,
text-based groups will not be created, regardless of the active status.
Ensure that there are at least 100 alerts in the Alerts table [em_alerts].
Role required: evt_mgmt_admin

Procedure
1. Navigate to Predictive Intelligence > Clustering > Solution Definitions.
The Clustering Definitions page opens.
2. Select EM ALert Clustering Solution.
3. Verify that the Active check box is selected.
4. Select Update & Retrain.
For more information on ML solutions, see Reviewing your ML solution training jobs

.

Manual alert grouping
Manual alert grouping involves organizing and categorizing alerts based on user-defined criteria
and direct intervention.
You can manually select and group alerts to better manage and resolve incidents by tailoring the
grouping based on specific needs, relevance, or context. This approach ensures that alerts are
categorized effectively, enhancing overall incident management and response efficiency.
Create alert group manually
Manually create an alert group to organize and manage related alerts when not using scheduled
jobs. This provides flexibility to group alerts on-demand for effective resolution.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > All Alerts.
2. Select the alert number to open the alert.
The alert will be used to create an alert group, designated as the primary alert, to which you
can add secondary alerts.

Note: A closed alert cannot be assigned as a parent alert.
3. Scroll down and in the Secondary Alerts tab, select Add To Group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3289


<!-- page 3290 -->
4. Select the check boxes for all alerts you want to add to the group as secondary alerts and
select Add Selected.

5. In the Secondary Alerts tab, view the alerts that have been added as secondary.

Add secondary alert manually to an existing alert group
Add any relevant alert discovered during the review of an automated alert group as a secondary
alert to improve the group's completeness and utility for incident troubleshooting.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3290


<!-- page 3291 -->
Before you begin

Role required: evt_mgmt_admin

About this task

The alert you select to add to a new group may already be part of another group. Adding it to the
new group will automatically remove it from its current group, changing its group association.
Alternatively, you can update the alert’s parent to move it to a different group. By specifying a
new parent, the alert is transferred to the new parent’s group and removed from the previous
one. This can be accomplished by updating the Parent field on the alert form or by modifying the
Parent column in the Alerts list.

Note: When you add an alert to a group, this action is logged as feedback for alert
grouping as part of the process. Currently, the feedback option is available but does not
trigger further actions after being logged. Future enhancements to this feature are being
considered.

Procedure
1. Navigate to All > Event Management > All Alerts.
2. Select the alert number to open the alert.
3. In the Parent field, search for the alert you want to assign as the parent for the selected alert.

4. Select the parent alert number.
5. Select Update.

Result

The alert is added as a secondary alert to the selected parent alert.
Remove an alert from an alert group
Remove an alert if you want to improve the group's accuracy and usefulness in troubleshooting
an incident. If this action leaves the group with one or no alerts, the group is deleted and no
longer displays as an alert group.

Before you begin

Role required: evt_mgmt_operator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3291


<!-- page 3292 -->
Procedure
1. Navigate to All > Event Management > All Alerts.
2. Select the alert number to open the alert group.
3. Scroll down to view the Secondary Alerts tab.
4. Select the check box next to the alert you want to remove from the group.
5. From the Actions on selected row menu, select Remove From Group.

Result

The alert is removed from the group.
Configure work notes to capture alert grouping justifications
As alerts are added to a group, a message is recorded in the alert’s Work notes field to explain
why the alert was included in the group. Define alert types for creating these worknotes related to
alert group reasoning.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > System Properties > All Properties.
2. Search for the property evt_mgmt.alert_groups_reasoning.enable_worknotes.
3. Open the property.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3292


<!-- page 3293 -->
4. In the Choices field, define alert types for creating worknotes related to alert group reasoning.
Property values
Value

Description

All Alerts

Work note information is generated for every alert.

Primary Alerts

Work note information is generated only for primary alerts.

Secondary Alerts

Work note information is generated only for secondary alerts.

None

No work note information is generated.

5. Select Update.
Related topics
Alert grouping types and creation methods
Application services in Event Management
An application service is a set of interconnected applications and hosts which are configured to
offer a service to the organization.
For general information on application services, see Application services

.

Manually create an application service in Event Management
You can manually create an application services. Event Management can use application
services to monitor service performance and identify health issues.

Before you begin

Role required: evt_mgmt_admin

About this task

An application services is a set of interconnected applications and hosts which are configured to
offer a service to the organization. Application services can be internal, like an organization email
system or customer-facing, like an organization website. Use application services to organize,
maintain, and monitor services in your organization.
Application services do not support these CI types:
• cmdb_ci_endpoint
• cmdb_ci_translation_rule
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3293


<!-- page 3294 -->
• cmdb_ci_config_file
• cmdb_ci_qualifier
• cmdb_ci_application_cluster

Procedure
1. Navigate to All > Event Management > Services > Application Services.
2. Click New.
3. On the form, fill in the fields.
Create a Service form
Field

Description

Name

Enter a unique application service name.

Owned Specify an owner who is responsible for this application service in the organization
by
Add
entry
points:
CI
Type

Select the CI type (CI class) for the CI you are adding. Every CI belongs to a CI
type which contains a set of attributes configured for this kind of CI, for example,
cmdb_ci_appl for applications.

CI
Name

Select the CI from the list of CIs of the selected CI type.

The CI type list includes only allowed CI types. For example, you cannot add an application
cluster.
4. Click Submit.

What to do next

For details on grouping application services, see Group application services.
For details on controlling user access to application services, see Control user access to
application services.
Convert manual services to application services
You can convert existing manual services to application services. Event Management can use
application services to monitor service performance and identify health issues.

Before you begin

Role required: evt_mgmt_admin

About this task

Manual services are no longer supported and this service type, as well as discovered services,
have been replaced by application services. Any existing manual services must be converted to
application services.
During the conversion process:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3294


<!-- page 3295 -->
• The manual service record is moved from the Manual Services [cmdb_ci_service_manual]
table to the Mapped Application Service [cmdb_ci_service_discovered] table by changing the
record class.
• All the original manual service attributes, such as, name, owner, and operational status, are
retained in the application services.
• The configuration items (CIs) of the manual service are retained in the application services
after the conversion.
• The system queries the CMDB for the latest CI changes and applies CI impact rules.
Application service does not support these CI types:
• cmdb_ci_endpoint
• cmdb_ci_translation_rule
• cmdb_ci_config_file
• cmdb_ci_qualifier
• cmdb_ci_application_cluster
If the preceding CI types are used in the manual service that you want to convert, the conversion
fails. CIs of this type should be removed before conversion. They can be replaced by adding new
CIs to the application services after conversion.
If your ServiceNow instance uses domain separation, the conversion fails if CIs from multiple
domains are in the same service. Replace or remove relevant CIs before conversion. The
converted application services contains only CIs assigned to the same domain as the
application services.

Procedure
1. Navigate to All > Event Management > Services > Manual Services.

2. Select the manual service that you want to convert to an application services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3295


<!-- page 3296 -->
3. Click Migrate to Application Service.
4. Click OK.

Result
• The CIs from the manual service are added to the converted application services.
• After the conversion process is complete, the application services form opens.
Convert manual services to application services using API
You can use a JavaScript API to convert existing manual services to application services. Event
Management can use application services to monitor service performance and identify health
issues.
Manual services are no longer supported and this service type, as well as discovered services,
have been replaced by application services. Any existing manual services must be converted to
application services. Ensure that any automation of manual services (such as business rules or
scheduled jobs) have been built and tested before converting to application services.

Note: Manual services are static and retain their original structure after conversion to
application services. To update imported manual services with the existing CMDB state,
either populate the original manual services to ensure that all CIs are assigned to the
correct service, or run the update with CMDB changes option after the conversion.
During the conversion process:
• The manual service record is moved from the Manual Services [cmdb_ci_service_manual]
table to the Mapped Application Service [cmdb_ci_service_discovered] table by changing the
record class.
• All the original manual service attributes, such as, name, owner, and operational status, are
retained in the application services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3296


<!-- page 3297 -->
• The configuration items (CIs) of the manual service are retained in the application services
after the conversion.
• The system queries the CMDB for the latest CI changes and applies CI impact rules.
The maximum number of CI connections added to application services during this operation
is controlled by the sa.service.max_ci_service_population
property. By default, the value
is 1,000 (one thousand connections). Increasing the number of CI connections may cause
performance issues. To adjust the maximum number of added CI connections, add the
sa.service.max_ci_service_population property, as described in Add a system property .
Attempting to process more CIs than the value specified in the
sa.service.max_ci_service_population property causes the operation to fail.
Run the conversion process in small chunks of approximately 10 at a time, to make it easier to
pinpoint the problematic service in the event of a conversion problem.
Application services do not support these CI types:
• cmdb_ci_endpoint
• cmdb_ci_translation_rule
• cmdb_ci_config_file
• cmdb_ci_qualifier
• cmdb_ci_application_cluster
If the preceding CI types are used in the manual service that you want to convert, the conversion
fails. CIs of this type should be removed before conversion. They can be replaced by adding new
CIs to the application services after conversion.
If your ServiceNow instance uses domain separation, the conversion fails if CIs from multiple
domains are in the same service. Replace or remove relevant CIs before conversion. The
converted application services contains only CIs assigned to the same domain as the
application services.
The JavaScript API is:
BusinessServiceManager.migrateManualToApplicationService(String
service_id)
Parameters
Name

Type

Description

service_id

String

sys_id of the manual service to be converted

Returns
Type

Description

Boolean

true for a successful conversion, false for a conversion that
failed

Where the sys_id of an existing manual service is
451047c6c0a8016400de0ae6df9b9d76, run the following API to convert it to an
application services:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3297


<!-- page 3298 -->
var bsManager = new SNC.BusinessServiceManager();
var res =
bsManager.migrateManualToApplicationService("451047c6c0a8016400
de0ae6df9b9d76");
Related topics
BusinessServiceManager - Global
Configuring CIs in a manual service as a manual cluster
Configure or modify a CI as a specific CI or a generic CI class in a manual service (that was not
discovered automatically) as a manually defined cluster. A manual cluster delivers redundancy
capabilities in the cluster and provides continued operations or services of the entire cluster in
case of failure of one or more CIs in that cluster.
Manual cluster allows you to group CIs under a logical cluster in a service. In the impact tree you
can set the relative impact of a cluster member on the cluster.

Note: Creation of nested manual clusters (cluster inside cluster) is currently not
supported.
Once the CI is defined as a manual cluster its impact calculation shows the magnitude of
an outage on its children CIs. Impact calculation uses factors such as impact rules and CI
relationships to calculate the severity of a generated alert. Impact rules, which are used for
impact calculation, estimate the magnitude or severity of an outage based on affected CIs and
determines how the impact applies to parent or child entities that are part of an application
service.
The magnitude of an outage can be 100% down, 60% affected, 40% impaired, or 20% impaired.
Redundancy is defined in impact rules. For example, you can define that the parent CI is critical if
at least two child CIs are critical. The impact from child to parent CIs is not always 100%. If the CIs
of all three children are affected, the impact is 100% down.
In a service map, you can configure or modify a specific CI or a generic CI class in a manual
service as a manually defined cluster. When configuring as a generic CI class, all the CIs of the
selected class in that service are configured the same.

Note: Visual representation of a manual cluster may differ from the visual representation
of a cluster that is discovered automatically.
Related topics
Alert impact calculation
Configure a manual cluster
Provide redundancy capabilities of an entire cluster in case of failure of one or more CIs in that
cluster. By viewing the relative impact of a cluster member on the cluster information, you can
better understand the source of alerts and take remediation steps.

Before you begin

Role required: evt_mgmt_admin

About this task

In a manual service that was not discovered automatically, you can manually group a specific
CI or a generic CI class under a logical cluster. The relative impact of a cluster member on the
cluster can be configured in the impact tree.
For more information, see Alert impact calculation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3298


<!-- page 3299 -->
Procedure
1. Navigate to All > Event Management > Administration > Manual Clusters.
2. Select New.
3. In the Select a Service containing this manual cluster section, select an application service to
contain the new manual cluster based on a specific CI or general CI class.
The cluster number is automatically generated and appears in the Number field.
a. Select the Lookup using list icon (

) in the Service field.

b. In the CMDB CI Service [cmdb_ci_service_discovered] table, select a manually created
service.
To define a new application service, see Manually create an application service in Event
Management.
c. Optional: Preview the record by selecting the Preview this record icon (

).

4. In the Select a Specific CI or generic CI class section, in the Defined As field, select whether
to define the manual cluster as a specific CI of a manual cluster or as a generic CI class of a
manual cluster that will be applied to all CIs of this class.
◦ Specific CI - In the Configuration item field, select the Lookup using list icon (
the configuration item.

) and select

◦ Generic CI class – In the Configuration item class field, select the configuration item class.
5. In the Provide a Description section, either provide a description in the Description field
or leave it blank to contain an automatically generated description when you select Save or
Submit.
The Description field is automatically updated when you select Save or Submit.
The automatically generated description consists of the configuration item name
and the service name. For example: CI <Alert Processing> in service
<linuxApplService> (*** auto generated ***).
To prevent an automatic update of the Description field and retain your changes, delete the (***
auto generated ***) suffix that appears as part of the description.
6. Activate the cluster by selecting the Activate check box.
7. Select Submit.

Result

The manual cluster is saved in the EM Impact Manual Cluster [em_impact_manual_cluster] table.
The impact calculation is recalculated automatically.
Related topics
Configuring CIs in a manual service as a manual cluster
Modify a manual cluster
Modify an existing manual cluster by changing the service, the specific CI, the generic CI class,
or the description in case of an incorrect initial configuration, changes in the network, or other
issues.

Before you begin

Role required: evt_mgmt_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3299


<!-- page 3300 -->
Procedure
1. Navigate to All > Event Management > Administration > Manual Clusters.
2. From the list, select a manual cluster.
3. Change the service containing the manual cluster by selecting a different one in the Select a
Service containing this manual cluster section.
The cluster number appears in the Number field.
a. Select the Lookup using list icon (

) in the Service field.

b. In the CMDB CI Service [cmdb_ci_service_discovered] table, select a manually created
service.
c. Optional: Preview the record by selecting the Preview this record icon (

).

4. In the Select a Specific CI or generic CI class section in the Defined As field, modify the
manual cluster either as a specific CI of a manual cluster or as a generic CI class of a manual
cluster that will be applied to all CIs of this class.
◦ Specific CI - In the Configuration item field, select the Lookup using list icon (
the configuration item.

) and select

◦ Generic CI class – In the Configuration item class field, select the configuration item class.
5. Optional: In the Provide a Description section, modify the description in the Description field.
(Optional) The Description field is automatically updated when you select Save or
Submit. The automatically generated description consists of the configuration item name
and the service name. For example: CI <Alert Processing> in service
<linuxApplService> (*** auto generated ***).
To prevent an automatic update of the Description field and retain your changes, delete the (***
auto generated ***) suffix that appears as part of the description.
6. Activate or deactivate the cluster by selecting or clearing the Activate check box.
7. Select Update to save your changes.

Result

The manual cluster is saved in the EM Impact Manual Cluster [em_impact_manual_cluster] table.
The impact calculation is recalculated automatically.
Related topics
Configuring CIs in a manual service as a manual cluster
Create an alert query
An alert query is a set of alerts that meet specific criteria for a particular service.

Before you begin

Navigate to Event Management > Administration > Event Management
Properties and ensure that the Enable alert query support
(evt_mgmt.impact_calulation.alert_group_support) property is set to Yes.
Role required: evt_mgmt_admin or evt_mgmt_operator

About this task

The main motivation to use alert queries is a modeling solution based on data contained in the
alert itself, as an alternative to using either discovered, application, or technical services.
Create an alert query to combine similar alerts that meet the specific criteria.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3300


<!-- page 3301 -->
You can learn about Event Management basics, including alert queries, from this video:
Getting started with Event Management

Procedure
1. Navigate to Event Management > Services > Alert Queries.
2. Select New.
3. On the Alert Query form, fill in the fields.
For a description of the field values, see Alert Query form

Note: In the Filter field:
◦ When defining an alert query filter, include only fields that appear in the Alert Histories
[em_alert_history] table. Impact calculation is based on Alert History data and fields
such as Overall Event Count, Priority, and Priority group are not copied to the Alert
Histories [em_alert_history] table.
◦ Do not specify a dynamic time condition. For example, in the filter, do not
specify Created condition of Last 45 minutes because impact
calculation is triggered by a change of alert or alert query. However, for
the dynamic time condition, none of these conditions have changed.

◦ Some filters may slow down impact calculation. To solve this problem, adjust your alert
query by adding an appropriate index, as described in Index suggestions for slow
queries .
4. Select Update.
Related topics
Create alert group manually
Create an application service group
Create service groups to combine similar services. Organize services by groups to perform
actions simultaneously on multiple services and to control user access to services.

Before you begin

Role required: evt_mgmt_admin

About this task

Service groups are a way to organize and group services based on the application services
or technical services they impact. Instead of looking at individual service from different
infrastructure components (like servers, databases, or applications), Service groups help
consolidate them under the umbrella of a service group. Application service groups enable
faster identification of alert impact. Service groups appear in the Group by option on the Service
Operations Workspace dashboard.

Procedure
1. Navigate to All > Event Management > Services > Service Groups.
The Application Service Group page opens.
2. Select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3301


<!-- page 3302 -->
3. In the Name field, enter the name of the new service group.
4. Optional: In the Parent Group field, enter the name of another group in which to embed the
new group.
Users with access to a parent service group automatically have access to all its child groups.
5. Select Submit.
Related topics
Assign a role to a service group
Group application services
Assign a role to a service group
Assign an Event Management role to the application service group to ensure that group
members can manage and act on alerts.

Before you begin

Configure a service group to enable users to manage application services or alert groups.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Event Management > Services > Service Group Responsibilities.
2. Click New.
3. In the Application Service Group field, select the name of the service group.
4. In the Role field, select an Event Management role:
◦ evt_mgmt_admin
◦ evt_mgmt_integration
◦ evt_mgmt_operator
◦ evt_mgmt_user
5. Click Submit.
6. To find users who are assigned to the role, navigate to User Administration > Users > Roles
and search for the role.
Related topics
Roles installed with Event Management
Activate and configure Service Mapping for top-down discovery
A top-down discovery provides a list of CIs and their interrelationships. This information is useful
for managing software services and hardware issues that are associated with alerts.

Before you begin

Role required: evt_mgmt_admin

About this task

In Event Management, Service Mapping relationships appear on alerts. You can view the related
CI and other information in the Event Management dashboard. The mapping relationships
appear in a service map with the generated alert, any CIs that are bound to the alert, and all
related CIs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3302


<!-- page 3303 -->
Procedure
Use Service Mapping to get top-down discovery information.
Service Mapping, which is closely related to Event Management, provides tools to discover the
relationships between network, hardware, software, storage, and other devices.
Related topics
Service Mapping
Request Service Mapping
Configure email notification on application service severity change
Configure an email notification to notify users when there is an application service severity
change.

Before you begin

Role required: evt_mgmt_admin

About this task

Configure an email notification to notify users when there is an application service severity
change. The notification involves specifying when to send it, who receives it, and what it
contains.

Procedure
1. Navigate to All > System Properties > Email Properties.
2. In the Outbound Email Configuration section, in the Email sending enabled option, select Yes
to enable sending severity information by email.
3. Click Save.
4. Navigate to System Notification > Email > Notifications.
5. Click New.
a. In the Email Notification Actions form, specify these values.
Field

Value

Name

Type a descriptive name, for example,

Application Service severity
change.
Table

Select the required service type and
its corresponding table: Alert Group,
Discovered Service, Technical Service, or
Application service.

Active

Select the check box to enable email
notification.

b. Click the Who will receive tab.
In the Users area, search for and select the required user (the user does not require System
Administrator credentials). Repeat this step for as many users that are required to receive
this notification.
c. Click the When to send tab and in the choose field box, search for and select Severity.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3303


<!-- page 3304 -->
d. Click the What will it contain tab and in the Subject field, type meaningful text that makes it
clear to the receiver of the email notification what the content of the email is.
e. In the Message HTML message area, using the Select variables functions, compose the
conditions under which the email notification is to be sent.
For example, configure these variables to change severity:
severity changed
Severity: ${severity}
on application service
Name: ${name}
6. Click Submit.
Configure contextual colors and icons
Use the Contextual colors and icons form to configure color, text, and icons to have different
default or custom contexts, identified by a context ID.

Before you begin

Role required: evt_mgmt_admin

About this task

You can customize the colors or icons of elements in the Contextual colors and icons form to
affect the displayed colors or icons of severities in related Event Management screens, either
when accessibility mode is off or on. For more information about accessibility, see Accessibility
features
.
In each color selection field, you have the option of entering the value of the color as any of the
following Cascading Style Sheet (CSS) formats that determine how HTML elements should be
displayed:
• Name: predefined color names, for example, red, green, olive, blue, darkblue, or lightblue
• RGB decimal: RGB(102, 153, 204)
• RGB hex: 223344
See the following websites for information about CSS color declarations (including hex or RGB
notation):
• HTML Colors (W3CSchools)

for more information on hex and RGB notation.

• HTML Color Names (W3CSchools)

for valid color names.

The context IDs that are provided with the base instance are:
• information_severity
• warning_severity
• minor_severity
• major_severity
• critical_severity
• topology_connection

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3304


<!-- page 3305 -->
Procedure
1. Navigate to All > Event Management > Administration > Contextual colors and icons.
2. Click New or modify an existing configuration.
3. Configure the following fields.

Item

Description

Context details
Context ID

Enter a unique ID for the context, for example,
clear_severity.

Context Name

Readable name for the context. This text is
available to be read out by screen readers.

Batch

The batch that this context is a member of.

Description

Description of uses for the context.

Colors

Note: For each entry in the color fields, after you enter a color code, a block appears
to the right of the field showing the specified color. Use of invalid color codes triggers
an appropriate error notification.
CSS Color

The corresponding CSS color code for the context
color name.

CSS Color on Interaction

CSS color code that appears on hover or focus.

Accessible CSS Color

Accessible CSS color code that appears when
accessibility mode is enabled.

Accessible CSS Color on Interaction

Accessible CSS color code that appears on hover
or focus.

Icons
Icon

Icon that is displayed when the context includes
an icon.

Accessible Icon

Icon that is displayed when the context includes
an icon and when accessibility mode is enabled.
To add your own icon, or to see a list of available
icons, see Upload one or more images .

4. Click Submit.
View Event Management license usage
Event Management is licensed based on the number of CIs bound to alerts during the last year.
For alerts that are not bound to CIs, the system calculates the number of nodes (servers) that can
send events to the instance directly or through a third-party monitoring tool during the last year.

Before you begin

Role required: evt_mgmt_admin or evt_mgmt_operator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3305


<!-- page 3306 -->
About this task

The Event Management - Node Count Store job calculates the number of unique nodes that
send event information, either directly or through third-parties, to Event Management and are
eligible for licensing in the last year. The information from this job is stored in the License Usage
[em_unique_nodes] table for visibility by all users. CIs bound to alerts are counted towards
licensing; if there are no CIs that are bound to alerts, the event node field is used. Node is a
reference to a server, not the instances of the software on it. Your node count is based on the
amount of infrastructure (servers for example) that will be sending events.

Procedure
Navigate to All > Event Management > Reporting > License Usage.
The table is filled automatically based on the alerts in the system. The user has no permission to
edit the table. It is used to calculate the usage of the Event Management licensing.
Column

Description

CMDB CI

The CI that is bound to the alert that is gener­
ated from the event. If there is a value for this
field, the Node field is empty.

Node

The string value of the Node field of the event.
If there is a value for this field, the CMDB CI
field is empty.
One of these values:
• Unknown - A CI has not bound to the gener­
ated alert.

Type

• Server - The source of the event was a serv­
er.
• PaaS - The source of the event was Platform
as a Service.
One of these values:

Is licensable

• True - The event listed is counted towards
the license usage.
• False - The event listed is not counted to­
wards the license usage.

Using Event Management
As an Event Management operator, your role is to find alerts, analyze them, and take action to
help resolve the underlying issue.
This guide can assist you on a regular basis.
View alert information
View a list of all alerts for application services s, and then manage individual alerts as necessary.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3306


<!-- page 3307 -->
About this task

Multiple related events may correlate into a single alert. Event Management only creates alerts
when one or more events meet the conditions defined in event rules, alert action rules, and alert
configuration settings.
When updating an alert, empty field values do not override values inherited from the alert's
event.

Procedure
1. Navigate to All > Event Management > All Alerts.

Note: To stop the message from appearing, set the

show_sow_enhanced_experience_message property in the [sys_properties]
table to false.
2. To view or manage an alert, click the alert number.
3. Review the information on the Alert form.
You can click tabs on the form for further information.
◦ To view flapping information, click the Flapping tab.
◦ To view alert history, click the History tab.
Alert form
Field

Description

Number

If an alert was created as a result of the event, this field contains the
unique ID that Event Management generates to identify the alert.

Source

Event monitoring software that generated the event, such as SolarWinds
or SCOM. Maximum length: 100 characters.

Node

Node name, fully qualified domain name (FQDN), IP address, or
MAC address that is associated with the event, such as IBM-ASSET.
Maximum length: 100 characters.

Type

The metric type to which the event is related, such as Disk or CPU,
which is used to identify an event record from which alerts are created.
Maximum length: 100 characters.

Resource

Node resource that is relevant to the event. For example, Disk C, CPU-1,
the name of a process, or service. Maximum length: 100 characters.

Configuration item

JSON string that represents a configuration item. For example,
{"name":"SAP ORA01","type":"Oracle"}. The CI identifier
that generated the event appears in the Additional information field.
Maximum length: 1000 characters. Note: Reference pop-ups and clickthroughs are hidden by default for read-only fields. For Configuration
item and other read only fields, you can optionally change the readonly setting. For more information, see Configure pop-ups on read-only
fields

. Click

to open the alert in dependency view.

Task

The corresponding task for the alert, such as an incident, change, or
problem.

Metric Name

Unique name that describes which metric data is collected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3307


<!-- page 3308 -->
Field

Description

Description

A description of the alert.

Message key

Unique event identifier to identify multiple events that relate to the
same alert. If this value is empty, it is generated from the Source, Node,
Type, Resource, and Metric Name field values. Maximum length: 1024
characters.

Severity

The severity of the event. The value for this field is copied from the
event unless the event closes the alert, in which case the previous
severity is retained for reporting.
◦ Critical: Immediate action is required. The resource is either not
functional or critical problems are imminent.
◦ Major: Major functionality is severely impaired or performance has
degraded.
◦ Minor: Partial, non-critical loss of functionality or performance
degradation occurred.
◦ Warning: Attention is required, even though the resource is still
functional.
◦ OK: An alert is created. The resource is still functional.
◦ Clear: No action is required. An alert is not created from this event.
Existing alerts are closed.

State

The state of the alert.
◦ Open: The alert requires user action.
◦ Reopen: The previously closed alert requires additional user action.
◦ Flapping: After the alert has been closed, it receives a high frequency
of identical events from the same source that causes many alert
reopenings. User action is required.
◦ Closed: The alert is closed and no further user action is required.

Acknowledged

Select Acknowledged to indicate that a user has acknowledged the
alert.

Maintenance

A check box that shows whether the resource that is affected by the
alert is in maintenance.

Updated

The most recent time that the alert information was updated.

Parent

◦ If this field is blank, you can specify an alert number. The current alert
becomes a secondary alert to this parent alert.
◦ If an alert number is displayed, then the current alert is already a
secondary alert to this current alert, which is the parent alert.

Feedback

This field appears in alert forms only if the alert being modified is a
parent alert. Your response provides feedback about the accuracy and
usefulness of the group. Possible values are:
◦ None - No value was selected.
◦ No Feedback - There is no feedback for this alert.
◦ Yes - The alert group is accurate and useful.
◦ No - The alert group is not accurate and not useful.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3308


<!-- page 3309 -->
Field

Description

Note: Currently, the feedback option is available but does not
trigger further actions after being logged.
Knowledge article

The knowledge article associated with the alert, if any.

Overall Event
Count

The counter is increased every time an event is bound to the alert. The
count value is kept even after the actual event has been purged. Primary
alerts (virtual alerts) are updated based on their secondary alerts. The
actual number of events that affected the alert is displayed.

Note: Do not create an Alert Group based on Event Count. Where
an Alert Group is based on Event Count, the impact of the group
does not calculate properly because the Event Count field is not
copied to the em_alert_history table for impact calculation.
Source instance

The name of the machine or software that generated the event. For
example, SolarWinds on 10.22.33.44.

User name and
role

The user and role of the person who made the most recent alert
updates.

Acknowledged

The Acknowledged check box value after the most alert recent update.
◦ True: The Acknowledged is selected.
◦ False: The Acknowledged check box is cleared.

Correlated Alerts
section

The secondary alerts that are correlated with this alert, where this
alert is the primary alert. For more information, see Rule-based alert
grouping.

Primary Alerts
section

The primary alert that is correlated with this alert, where this alert is a
secondary alert. For more information, see Rule-based alert grouping.

Additional tabs.

Field

Description

Impacted Services tab
Impacted
Services

The impacted services that are related to this alert are listed. For more
information, see View the impact tree.

Flapping tab
Flap count

The number of times the alert has flapped—that is, has fluctuated between a
closed and a non-closed state—within the flap interval since the start time in the
Flap start window.

Flap start
window

The initial start time to measure the flapping occurrences.

Flap last
update
time

The last time flapping occurred. This time is the platform processing time, not
the source system time.

Flap last
state

The state before the alert entered the flapping state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3309


<!-- page 3310 -->
Field

Description

History tab
Initial
The time when the event that generated the alert first occurred. This time is the
event
platform processing time, not the source system time.
generation
time
Last event The last time the event that is linked to the alert occurred. This time is the
generation platform processing time, not the source system time.
time
Created

The time that the alert was created.

Work notes The additional notes about the alert.
Activities tab
Activity

A record of the work that was performed. The text has a date and time stamp.

More Information tab
Priority
Displays the computation of the alert priority score.
Breakdown
Additional A JSON string that gives more information about the event. The JSON
information data is supported for String values only, other value types are not
supported. You must convert numbers to String values by enclosing
them in double quotes. For example, this value is not supported:
{"CPU":100 } while this value is supported: {"CPU":"100"}. Another
example of a valid JSON string is: {"evtComponent":"Microsoft-WindowsWindowsUpdateClient","evtMessage":"Installation Failure: Windows failed. Error
0x80070490"}. This information can be used for third-party integration or other
post-alert processing. Values in the Additional information field of an Event
that are not in JSON key/value format are normalized to JSON key/value format
when the event is processed. For example, assume that the following plain
text is in the Additional information field “Connection instance is successful”.
When the event is processed, all this plain text becomes one JSON string and
might not be useful within an alert. In the resultant alert, this string is in the
Additional information field in JSON key/value format, containing the data:
{“additional_content”: “Connection instance is successful"}.

What to do next

You can respond to the alert in the following ways:
Alert response options
Option

Description

Submit

Save the modifications that were made to the
form and return to the Alerts list.

Acknowledge the alert.

Click Acknowledge. If the alert is
reopened, this button reappears so you can
reacknowledge the alert.

Create an incident.

Click Create incident. For more information,
see Create incident or security incident from
an alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3310


<!-- page 3311 -->
Alert response options (continued)
Option

Description

If Security Incident Response is activated,
create a security incident response.

Click Create Security Incident.

Designate that the alert is in maintenance.

Select the Maintenance check box. For
more information, see View all alerts by the
maintenance status.

Close the alert.

Click Close. For more information, see Close
an alert.

Related topics
Security incidents created from events and alerts
Priority group
For better triage and focus, alerts that have a higher priority are brought to the top of the alert list.
This placement brings to your attention those alerts that require you to handle them at a higher
priority than other alerts.
The priority group indicates which alerts should be attended to first. Priority is calculated for each
open alert and then mapped into one of four priority categories.

Thresholds
Thresholds on the calculated priority are used to determine to which
category the alert is mapped to. Alerts with a priority above the value of the
evt_mgmt.top_priority_group_threshold property are categorized as Urgent, which
is the highest priority. The default value of this threshold is 1M.

Priority group categories
The priority groups into which alerts fall are listed in the following table.
Alert priority groups
Priority group

Icon

Urgent
High
Moderate
Low
The value of the alert priority group is more meaningful than the alert severity on its own. For
example, an alert with a severity of Major, may not be in need of resolution ahead of an alert
whose priority is Critical. The combined group priority value takes the weight of each factor into
account, giving you a better indication of which alert to attend to first.
The alert priority group is available in alert lists in the Dashboard, Alert Intelligence, and All Alerts
page. For example, in the All Alerts list, the alert priority group is displayed as depicted in the
following image.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3311


<!-- page 3312 -->
Triggers that cause recalculation
Changes to open alerts trigger the recalculation of the priority and then the alert is again
categorized into the relevant priority group. Closed alerts are not considered for alert priority
group calculation.
Related topics
Alert priority
Alert execution information
Alert execution information provides a reference to the actions that have been performed
concerning the alert. Among the information presented is which alert management rules ran on
the alert, incidents that were opened, and which remediation workflows ran.

Alert Executions
In an alert form, the Alert Execution tab shows key related records for the alert. For example, it
shows which actions were performed and which alert management rules were run. If an incident
was opened, the related tasks are shown.
Alert Executions

Fields in the Alert Executions section
Field

Description

Alert

Reference to the alert that ran under this rule.

Action name

Indicates how the alert was resolved.

Link to execution

Link action that was taken to resolve the alert.

Related task

Link to the incident that was created when the
alert was resolved.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3312


<!-- page 3313 -->
Fields in the Alert Executions section (continued)
Field

Description

Log

Link to the log that details the actions taken to
resolve the alert

Automatic run

Indicates if the rule was automatic (true) or
manual (false).

Action name
This indicates what occurred, for example, if an incident was created.

Log
The log reveals which alert management rule initiated the action. It shows, for example,
automatic execution 1 out 3, or manual execution, 2 out of 4.
View alerts in the flapping state
You can view alerts that are specifically in the flapping state.

Before you begin

Before starting this procedure, ask your administrator to configure alert flapping properties.
Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

About this task

Flapping occurs when the event source continues to generate events even after its associated
alert has been closed. Flapping causes the resource's status to repeatedly fluctuate between the
OK severity and a severity requiring attention, for example, Critical.
The frequency of events from an identical source within a given time interval determines
whether an alert is in a flapping state or a new issue has occurred. Based on the
evt_mgmt.flap_frequency and evt_mgmt.flap_interval property values:
• If the same issue is recurring, Event Management associates the new event with the existing
alert and the state of the alert is set to Flapping.
• If the issue occurs after the time interval expires, Event Management creates an alert.
For example, you can respond to an alert by rebooting a problematic server. After no events are
generated for several minutes, it is assumed that the issue is fixed and the alert is closed. If the
reboot did not actually fix the issue, this server can generate more events later. Then additional
alerts are generated for the same issue.

Procedure
1. Navigate to All > Event Management > All Alerts.
2. Click the number of an alert that is in the Flapping state.
3. On the alert, click the Flapping tab.
Flapping tab on Alert form
Field

Description

Flapping tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3313


<!-- page 3314 -->
Field

Description

Flap
count

The number of times the alert has flapped—that is, has fluctuated between a
closed and a non-closed state—within the flap interval since the start time in the
Flap start window.

Flap start
window

The initial start time to measure the flapping occurrences.

Flap last
update
time

The last time flapping occurred. This time is the platform processing time, not the
source system time.

Flap last
state

The state before the alert entered the flapping state.

4. If the Parent field is empty, address this alert as a new issue.
Related topics
Configure alert flapping
View all alerts by the maintenance status
The Maintenance status indicates that the CI is under maintenance. For example, there is a
software upgrade, and the issues can result from that activity, therefore all maintenance alerts
are discarded.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

About this task

The alert maintenance status can change due to any of these reasons:
• A user selected the Maintenance check box on the alert, or selected the alert from the list
view, and then clicked the Maintenance UI action.
• A new alert that had been bound to a CI whose status is in maintenance status on the CMDB
table.
• If all previous events associated with the alert are in maintenance, the alert Maintenance
field can automatically be set to true showing maintenance is in progress. However, if an
alert Maintenance field is false but the related CI status is changed to In Maintenance
after the alert was created, any subsequent events do not put the alert into maintenance. For
example, if an alert is generated for a router and later the router is taken down for maintenance,
it is still assumed that there was a problem before maintenance started and the issue must not
be ignored.

Note:
• If a maintenance flag was set on an alert in Geneva, after upgrading to Helsinki it affects
the impact as a regular alert.
• If an alert is bound to a CI by a user action (such as an alert management rule) and the
CI is in the Maintenance state, you must manually bind the CI to the alert and mark it with
the In Maintenance status.

Procedure
1. Navigate to All > Event Management > All alerts.
2. Review the Maintenance column for each alert.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3314


<!-- page 3315 -->
A value of true indicates that the CI is under maintenance.

Note: If the Maintenance field is not visible on the Alert form, personalize the list to add
the field. For more information, see Personal lists

.

Collaborate from within an alert
You can collaborate with colleagues and write work notes while working in an alert.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

About this task

You can select to work either in a compact view of Connect that overlays the standard user
interface or in a full-screen workspace. The conversations are not copied into the alert.

Procedure
1. Navigate to All > Event Management > All Alerts.
2. Click the required alert.
3. In the alert screen, click Follow.
The label of the button changes to Following, showing the current connection to collaboration
status.
4. To view the Connect sidebar in a full window, click the down arrow in the Follow button and
select Open Connect Full.
You can write text in the Worknote field. This text is not copied into the alert.
5. To collaborate with colleagues or with support, click the Add User icon.
6. To conclude the Connect collaboration session, click Following.
Create incident or security incident from an alert
When an alert must be escalated and assigned to someone who can resolve the underlying
issue, you can open an incident.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

About this task

If Security Incident Response is activated, a security incident can be created.
You can manually create incidents and security incidents from the Alert form. To prevent
duplicate tasks, the system checks the conditions of all task templates before creating an
incident.
You can customize the created incident using the

EvtMgmtCustomIncidentPopulator.populateFieldsFromAlert script include.
The customization includes mapping fields from the alert to the incident or aborting the incident
creation according to customized conditions. For more information, see Custom alert fields.
You can populate incident fields using custom alert fields values that where populated from
additional information fields. Use the EvtMgmtCustomIncidentPopulator script include
to copy the values to the incident after copying the data to the alert. For more information, see
Custom alert fields.

Note: If Security Incident Response is activated, the base system includes an alert

action rule called Create security incidents for critical alerts. This alert action rule creates
security incidents when critical security events are reported.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3315


<!-- page 3316 -->
Procedure
1. Navigate to All > Event Management > All Alerts.
2. Click the alert Number.
3. To create an incident:
◦ To create an incident, click Quick Incident.
◦ To create a security incident, click Create Security Incident. You must install the Security
(secops) plugin to enable this option.
4. Click Update.

Result

The created incident appears in the Task field of the Alert form.
Related topics
Security incidents created from events and alerts
Place an alert into maintenance
You can manually place any alert into maintenance to hide it from the Alerts list and Agent
Workspace.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator

About this task

Placing the alert in maintenance does not place the CI into maintenance. The Status field on the
CI record remains the same.

Procedure
1. Navigate to All > Event Management > All Alerts.
2. Perform one of the following actions.
Option

Description

To put multiple alerts into maintenance

Select the check boxes next to each alert,
and then click the Maintenance UI action at
the top of the list.

To put one alert into maintenance

Open the alert, and either select the Mainte­
nance check box and click Update, or click
the Maintenance UI action at the top of the
list.

Related topics
Create maintenance rules
Alert insight information
Alert insight aids faster alert triage, enabling a quicker way to find a solution and expose the
probable root cause of the selected alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3316


<!-- page 3317 -->
Use alert insight to find a solution and help find the root cause of the alert
Results from data analysis provide further information about the alert, beyond that of the alert
form. This aids faster alert triage, enabling a quicker way to find a solution and expose the
probable root cause of the alert.
Information shown is from repeated alerts, similar alerts, incidents, problems, and change
requests on the same CI, similar CIs, and other CIs that are related by CMDB relations or
grouping.
Apply a quick response in an alert
In an alert, use the Quick Response feature to apply remediation to the alert or to launch a
web application.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

About this task

Quick Response is a feature that enables you to perform a quick action on the selected alert.
The action is to apply remediation or to launch an application. If you have upgraded from Istanbul
or earlier, this feature is a combination of the Remediation and Launch an application features.
If you select a remediation link when invoking a Quick Response, a workflow is executed
according to the criteria specified in the alert management rule. Click a launch application link
to launch the web application that was configured in the alert management rule. For further
information, see Migrate an alert action rule to an alert management rule.

Procedure
1. Navigate to All > Event Management > All Alerts.
2. In the Alerts list, right-click the required alert and select Quick Response.

3. In the Quick Response page, click the required link to perform the required action.
If the link that you require is not available, perform one of these actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3317


<!-- page 3318 -->
Option

Description

a. Navigate to Alert Rules.
b. Select the required alert management rule
to edit.
c. Click Remediation.
d. Click Enable Remediation.
e. In the Execution field, select either Auto­
matic or Manual.
For Remediation, define a remediation task
using an Alert rule based on the selected
alert

f. In the Orchestration workflow field, specify
the remediation workflow.
▪ For Orchestration, in the workflow set­
tings, select Remediation Task [em_re­
mediation_task] in the Table field.
▪ After you finish configuring the orchestra­
tion workflow, publish it.
g. Click Update.
For further information, see Migrate an alert
action rule to an alert management rule.
a. Navigate to Alert Rules.
b. Select the required alert management rule
to edit.
c. Click Launcher.
d. Click Enable.

For Launch Application, create a web appli­
cation link using an Alert rule based on the
selected alert

e. In the Display Name field, specify a name
for the link.
f. In the URL field, compose the URL
using data from the alert in the for­
mat: ${source}.com:${port}/
${cmdb_ci.name}
g. Click Update.
For further information, see Migrate an alert
action rule to an alert management rule.

What to do next

To create a remediation task or web application link, see Migrate an alert action rule to an alert
management rule.
Related topics
Launch web application from alert
Monitor service health
On the Operator Workspace, you can view alerts by application services, technical service, and
alert group. For services, you can also open a service map to view relationships between CIs in
the service.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3318


<!-- page 3319 -->
Before you begin

Ask an administrator to create at least one application services, technical service, or alert group
if none of these items exist.
Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

About this task

The Operator Workspace tiles represent a service, alert group, or CI. The tile color represents the
overall alert severity.

Note: Event Management Dashboard is not supported for new instances in the Paris
release. However, instances upgraded from a release prior to Orlando that use Event
Management Dashboard can continue to do so.
These tile icons are available:
Dashboard tile icons
Icon

Meaning

Represents the status of a mapped application services.
Represents the status of an Alert group with a set of corresponding open alerts.
Represents the status of a dynamic CI group.
Each tile represents the highest severity of an alert for the service, alert group, or CI. For
example, a tile appears in red if an alert is critical. A green tile indicates either information alerts
or no currently active alerts. As the alert severities change, the tile colors update accordingly. The
following severities are available:
• Red: critical severity (highest severity). Immediate action is required. The resource is either not
functional or critical problems are imminent.
• Orange: major severity. Major functionality is severely impaired or performance has degraded.
• Yellow: minor severity. Partial, non-critical loss of functionality or performance degradation
occurred.
• Blue: warning severity (lowest severity). Attention is required, even though the resource is still
functional.
• Green: informational. No severity. An alert is created. The resource is still functional.

Procedure
To integrate with Operational Intelligence, activate the Operational Intelligence
(com.snc.sa.metric) plugin.
Follow the steps in the Get started with Metric Intelligence topic. Metrics information appears on
the Metrics tab in the Service Operations Workspace.
Related topics
View metric values in the Insights Explorer
View discovered service history
The discovered service history shows the frequency of discovered services for a particular time
period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3319


<!-- page 3320 -->
Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

About this task

The discovered services history appears only when there are multiple discovered services that
occur over a period. A discovered service is a service that is discovered by Service Mapping. The
discovered services history is not available for application services. If no discovered services are
generated for a particular service, the discovered services history is hidden.

Procedure
1. Navigate to All > Event Management > Service Operations Workspace.
2. Click a service tile and click Service Map.
3. Click the History map button.
The history timeline appears, with changes to the service indicated by a clock icon (

4. To view a map showing changes in the service's severity, click the More icon (
Advanced map.

).

) and select

The displayed color corresponds to the discovered services severity, and the length of the bar
in each color corresponds to how long the discovered services stayed at that severity.
The following table explains the severity colors:
Service severity colors
Severity

Critical
Major
Minor
Warning

Icon color

Red
Orange
Yellow
Blue

5. To change the information that appears on the discovered services history Advanced map,
click a history icon.

◦ Calendar icon: Show information for currently active discovered services.
◦ Hours: Show information for discovered services that occurred in the past hour.
◦ Days: Show information for discovered services that occurred in the past 24 hours.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3320


<!-- page 3321 -->
◦ Weeks: Show information for discovered services that occurred in the past week.
◦ Months: Show information for discovered services that occurred in the past month.
Monitor alerts for an application services
To view information for application services only, navigate to the application services list. From
this list, you can open service maps to view and manage alerts for the CIs in each service.

Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator, or evt_mgmt_user

Procedure
1. Navigate to All > Event Management > Services > Application Services.

2. In the row of the required application services, click View Map.
3. Do one or more of the following.
Option

Action

In the service map:
View alert details for a CI

a. Click a CI tile.
b. Below the map, click the Alerts tab and re­
view the listed alerts.
In the service map:
a. Click a CI tile.

View impact on the CI parent

b. Below the service map, click the Impact tab
and review the listed impact rules.
c. Adjust the impact rules as necessary.
In the service map header:

Change the map display, map layout, or
map indicators

a. Click the menu icon.
b. Configure the appropriate settings.
In the service map header:

Navigate to another application services

a. Click the down arrow next to the service
name or the folder icon for all services.
b. Search for and select another application
services (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3321


