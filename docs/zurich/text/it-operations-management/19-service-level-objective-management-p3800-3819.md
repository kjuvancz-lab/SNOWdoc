# Zurich IT Operations Management — Service Level Objective Management

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 3800–3819 of 4823

Sections: Service Level Objective Management (p3800)

---

<!-- page 3800 -->
ITOM Mobile Agent reference
Learn about ITOM Mobile Agent settings. You can view the app version, give feedback, and
adjust your preferences.

Explore reference documentation
ITOM Mobile Agent auto-integrates with ITSM Mobile Agent, letting you manage alerts, incidents,
and on-call schedules from the same mobile app. Visit the following ITSM Mobile Agent
documentation to learn more about your mobile app settings.
Settings

Service Level Objective Management
Service Level Objective Management (SLO Management) helps your organization define, track,
and meet agreed-upon service quality standards. It works alongside Service Level Agreements
(SLAs) to help make sure that services meet customer expectations.

Overview of how SLO Management works
• SLAs set the expectations
SLAs are formal agreements that outline the level of service a customer can expect. SLAs can
include response times, resolution times, and uptime targets.
• SLOs defines how to meet expectations
SLOs are specific, measurable objectives that an organization sets to achieve the SLAs. They
translate the broad goals of the SLA into actionable metrics.
• ServiceNow SLO Management helps manage SLOs. It offers functionalities to:
◦ Define SLOs based on various metrics.
◦ Monitor SLO performance in real-time.
◦ Generate alerts when SLOs are at risk of being breached.
◦ Track historical data to identify trends and improve processes.

Get started

Explore

Use

Learn about Service Level Objective
Management concepts and features.

Using Service Level
Objective Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3800


<!-- page 3801 -->
Reference

Get details about Service Level
Objective Management components,
such as fields, tables, and properties.

Troubleshoot and get help
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring SLO Management
Service Level Objective Management (SLO Management) helps IT services meet customer
expectations.

SLO Management overview
SLO Management is a framework for setting clear expectations and measuring the performance
of IT services. It helps organizations deliver consistent services and identify areas for
improvement. SLOs define the target service level for a specific service, such as incident
resolution or service request fulfillment. Effective SLO management involves setting realistic
objectives, monitoring performance, and continuously improving services to meet customer
needs.

SLO Management users
Users
Users

admin

Description

A ServiceNow administrator is
responsible for the administration,
development, operation, education,
and maintenance of the ServiceNow
platform.

Contains Roles

All

Responsible for installation and
can perform Service Operations
Workspace Admin Center
configuration of SRM.
Administrator
[srm_admin]

SRM administrators can manage
account settings, configurations, and
users.

• Manager
• Responder

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3801


<!-- page 3802 -->
Users (continued)
Users

Note:
Not the
ServiceNow
admin role

Description

Contains Roles

Administrators can perform the
following actions:
• Access, create, edit, or delete all
SRM configurations.
• Add or manage integrations.
• Create Integrations with Application
Performance Monitoring (APM) tools
• Set up and maintain Reliability
Indicators.
• Set up and maintain Error Budget
Policies.

Manager
[srm_manager]

Managers oversee a team of service
reliability engineers (SREs). Managers
assign SREs to the team on-call
schedule, monitor their performance,
create procedures to deal with
incidents, and develop solutions.
Managers help ensure resilience
across all the systems and the
DevOps workflows.

Responder

Managers can perform the following
actions within the context of their
teams:
• Define and set up and teams, oncall schedules, and services.
• Add and delete users such as
responders, and managers for the
teams the are a part of.
• Add or manage integrations.
• Create Integrations with Application
Performance Monitoring (APM) tools
• Set up and maintain Reliability
Indicators.
• Set up and maintain Error Budget
Policies.
Responder
[srm_responder]

An SRE that uses SRM to perform
everyday tasks. Responders are
the individuals who are on call and
diagnose and remediate incidents.
Responders can only access
configurations that they’re a part
of. They can only access the alerts
or incidents for which they have
permissions.

Inherits 17 roles including the
following:
• cmdb_read
• sn_sow.sow_user
• sn_sow_srm.srm_responder
• workspace_user
• slo_operator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3802


<!-- page 3803 -->
Users (continued)
Users

Description

Contains Roles

SREs can perform the following
actions, within the context of their
teams:
• Set up services, teams, and
integrations
• Confirm their on-call schedules
• Manage incident and alert records
• Update teams that they’ve created
• Add other responders
• Create Integrations with Application
Performance Monitoring (APM) tools
• Set up and maintain reliability
metrics
• Set up and maintain error budget
actions

Note: If you're using the SLO plugin without SRM, make sure that the required alert and
cmdb_ci read access is granted to team members.

SLO Management workflow
1. Define SLOs - Identify critical services and define SLOs based on customer expectations and
business requirements.
2. Establish SLIs - Develop Service Level Indicators (SLIs) to measure SLO performance.
3. Monitor and analyze - Track SLI data and analyze performance against SLO targets.
4. Identify gaps and improve - Determine areas where SLOs aren't being met and implement
changes to improve service performance.
5. Review and refine - Regularly review SLO performance and refine SLOs as needed.

SLO Management benefits
• Improved service quality - SLOs help IT services meet customer expectations, leading to
increased satisfaction and loyalty.
• Increased transparency - Clear SLOs provide a shared understanding of service expectations
between IT and customers.
• Better resource allocation - SLOs help prioritize resources and focus on areas that need
improvement.
• Enhanced collaboration - SLO management encourages collaboration between IT teams and
customers to achieve common goals.
• Data-driven decision making - SLO performance data informs decisions and drives continuous
service improvement.
Working with reliability metrics
Learn about the reliability metrics and features that can help you track service health, respond to
issues, and support business goals.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3803


<!-- page 3804 -->
Service reliability dashboard
The Service reliability dashboard displays a customizable, high-level view of service
performance. It helps you monitor and manage reliability using visualizations that track service
states, error budgets, and service level objectives (SLOs) over time.
The dashboard displays information about all services in Service Reliability Management (SRM).
You can access the dashboard in Service Operations Workspace in the following ways:
• Navigate to Services (
• Navigate to Home (

) > Service reliability.
) > Service reliability

For more details, see Visualizations in the Service reliability dashboard.

Note: You can also view SLO information for all services on the Services Overview tab.
See Working with SRM services for more information.

Notification destinations
Notification destinations help keep teams informed about service reliability. Attach them to error
budget policies to send notifications when a policy is breached.
To view and manage notification destinations in Service Operations Workspace, navigate to
Teams > [Your team] > SLO Notification destinations.
Visit the following links to learn more about creating and working with notification destinations:
• Create a notification destination in SRM
• Create SLOs, SLIs, and error budget policies
• Notifications for breached error budgets

Reliability metrics tab
The Reliability metrics tab shows how well a specific service is meeting its reliability goals. Use it
to track SLOs, service level indicators (SLIs), and error budgets for a service.
To view the Reliability metrics tab in Service Operations Workspace, navigate to Services (
[Your service] > Reliability Metrics.

)>

See these links to learn more about what you can do in the Reliability metrics tab:
• Create SLOs, SLIs, and error budget policies
• Edit a reliability metric
• View SRM reliability metrics

Service level objectives table
On the Reliability metrics tab, the Service level objectives table includes the following details
about the service SLOs:
• Name - Name of the SLO. You can select the name to view the SLO record.
• Reliability - Current state of the SLO. For example, stable, at risk, or critical.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3804


<!-- page 3805 -->
• % Error budget remaining - Percentage of the error budget still available in the current
compliance period.
• Compliance period - Time window used to calculate performance:
◦ Month - Current month, for example, if the current date is January 26, the month is January 1
through January 31.
◦ Rolling 7, 30, or 90 days - Number of days from the current date. For example, for rolling 7
days, the duration is 7 days back from the current date.
• SLI type - Performance category being measured:
◦ Availability - Percentage of time your service or configuration item is available, also known as
uptime.
◦ Errors - Frequency of your service errors.
◦ Latency - Time that it takes to service a request.
◦ Saturation - Fullness of your system, focusing on resource usage.
• Source type - Origin of the data used to calculate the SLIs for this SLO:
◦ Alert - Uses alerts from integrated monitoring tools.
◦ Outage - Uses outages detected by monitoring tools and reported by users. An outage
indicates when the service was unavailable. This source type excludes planned outages,
such as scheduled maintenance.
• Updated - The date and time the SLO was last edited.
• Updated by - The user name of the person who last edited the SLO.
• State - Status of the SLO. For example, running or retired.

Note: For performance purposes, SLO and SLI records ([sn_sow_srm_slo_history] and
[sn_sow_srm_sli_metric]) are archived after one year and deleted five years later. Archived
data is omitted from tables and visualizations.

Using SLO Management
Using SLO Management ensures IT services meet customer expectations, improves service
quality and transparency, and enables data-driven decision making.
Activate SLO-based change approval decisions
Activate Service Level Objective (SLO) change approval decisions to evaluate change requests
based on SLO performance.

Before you begin

Review change approval policies and their terminology, including policy inputs, decisions, and
approval definitions. For more information, see Change approval policies .
Role required: admin

About this task

Activate the Service Level Objective Change policy's decisions to include SLO performance in
your change management process. The policy is active by default, however, its decisions are
inactive.
When you activate the policy's decisions, the policy evaluates SLOs as inputs and implements
the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3805


<!-- page 3806 -->
• Require group manager approval if these conditions are true:
◦ The lowest SLO error budget is less than 25%.
◦ The highest SLO burn rate is greater than 1%.
• Auto-approve change requests if these conditions are true:
◦ The lowest SLO error budget is greater than 25%.
◦ The highest SLO burn rate is less than 1%.

Procedure
1. Navigate to All > Change > Change Policy > Change Approval Policies.
2. Select the Service Level Objective Change policy.
3. In the Decisions tab, set Active to true for these decisions:
◦ Budget < 25% and Burn Rate > 1
◦ Budget > 25% and Burn rate < 1
4. Select Update to save your changes.
The decisions are active and part of your change management process.

What to do next

Use a test change request to verify that change requests are either auto-approved or routed to a
manager as expected.
You can also customize the Service Level Objective Change policy, including its name and
conditions, as needed.
For more advanced setups, use Flow Designer to customize the SLOs and services included as
policy inputs:

Important: Customizing the flow prevents it from receiving future release updates. That
behavior is intentional to avoid overwriting your customizations.
1. Navigate to Process Automation > Flow Designer.
2. In the list of flows, select Change - SLO – Authorize and then select SLO - Get worst
performing SLOs.
3. Customize the Action Inputs section.
4. Select Done to implement your changes.
Create a notification destination in SRM
Set up notification destinations to help keep teams informed about service reliability.

Before you begin

Before creating notification destinations, set up the Microsoft Teams Graph spoke. When
registering an application in the Microsoft Azure portal, grant the following Microsoft Teams
Graph API permissions:
• ChannelMessage.Send
• Group.ReadWrite.All**
For setup instructions, see Set up the Microsoft Teams Graph spoke.
Role required: srm_manager, srm_admin, or admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3806


<!-- page 3807 -->
About this task

Create a notification destination to deliver messages to a specific Microsoft Teams channel.
After you set up a notification destination, team members can attach it to error budget policies to
receive messages about policy breaches.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the primary navigation, select Teams (

).

3. On the Teams page, select the team you want to use the notification destination.
4. Select the SLO Notification destinations tab, select Create a destination, and then fill out the
form.
Field

Description

Deep link to the relevant Microsoft Teams
channel.
Channel URL

You can find deep links to chan­
nels in Microsoft Teams. They fol­
low this general format: https://
teams.microsoft.com/
l/channel/19%abcdef.
Display name of the notification destination.

Destination name

Teams see this name when adding notifica­
tion destinations to error budget policies.

5. Optional: Select Send test notification to verify your setup.
When successful, a message appears in the relevant Microsoft Teams channel. The message
is titled Test Notification and includes the following text:
This is a test notification from the Service Reliability
Management (SRM) Team '<team-name>'.
6. Select Save.
The notification destination appears in the SLO Notification destinations tab. The table
includes details about the Microsoft Teams channel and when the notification destination was
last updated.

What to do next

To use and learn more about notification destinations, visit the following pages:
• Create SLOs, SLIs, and error budget policies
• Notifications for breached error budgets
You can also edit and delete notification destinations from the SLO Notification destinations
tab. Deleting a notification destination removes it from all error budget policies where it was
previously used.
Create SLOs, SLIs, and error budget policies
Define service level objectives (SLOs), service level indicators (SLIs), and error budget policies
to monitor service health. These tools help you and your teams track performance and respond
when needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3807


<!-- page 3808 -->
Before you begin

To send notifications when an error budget policy is breached, your team must have a
notification destination configured. You can check by navigating to Teams > [Your team] > SLO
Notification destinations in Service Operations Workspace. For more information, see Create a
notification destination in SRM.

Note: By default, the outage data source for SLIs includes unplanned and degradation
outages. Administrators can include planned outages by adding planned to the
sn_sow_slo.outage_supported_types system property value.
Role required: srm_admin, srm_manager, or srm_responder

About this task

Create SLOs, SLIs, and error budget policies to monitor service health and help make sure that
your services support business goals.
• SLOs are specific targets that you set for SLIs. They define the expected performance level.
• SLIs are metrics that measure performance based on a data source, such as alerts or outages.
• Error budget policies define the acceptable margin of error and what happens if that threshold
is breached.
In Service Reliability Management (SRM), an SLO must have at least one SLI. SLIs can be filtered
to a service or configuration item (CI) within the parent service's hierarchy. Filtering an SLI to a CI
can help you more accurately track service health and identify root causes faster.

Note: In SRM, each SLI can be associated with only one SLO to prevent conflicting
performance expectations.

Procedure
1. Navigate to Workspaces > Service Operations Workspace > Services (

).

2. On the Services page, select the service you want to monitor, then select the Reliability
metrics tab and select Add SLO & SLI.
3. In the Service Level Objective (SLO) form, fill in the fields for your SLO and select Next.
For information about the SLO fields, see Create SLO form.
4. In the Service Level Indicators (SLI) form, select the data source for your SLI.
Data source

Description

Base the SLI on alerts from integrated monitor­
ing tools.
Alerts

Use alerts when you want your SLI to include
early warning signs and a broader view of reli­
ability.
Base the SLI on outages detected by monitor­
ing tools and reported by users.

Outages

Use outages when you want to measure actu­
al downtime and customer impact.

Note: If you create multiple SLIs for an SLO, they must use the same data source.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3808


<!-- page 3809 -->
5. In the same form, select Add indicators for <data source>, fill in the fields for your SLI, and
then select Next.
For more information about the SLI fields, see Create SLI form.
6. Optional: In the Error budget policies form, select Add policy, and fill in the fields for your error
budget policy.
For more information, see Add an error budget policy form.

Note: If you don't add an error budget policy, the SLO objective percentage is
only informational. Adding a policy helps you take corrective actions based on the
performance data. If you're not ready to add a policy, you can add one later.
7. Review your SLO, SLI, and error budget policy, and then select Activate.
Your SLO, SLI, and error budget policy are now active. The SLO record opens, displaying its
reliability state and error budget information.

What to do next

See the following to learn how to monitor and manage your SLOs:
• Working with reliability metrics - Learn where and how to view SLO performance.
• Edit a reliability metric - Update your SLOs to keep them aligned with your reliability goals.
Edit a reliability metric
Update a reliability metric to keep it relevant and aligned with your team's goals.

Before you begin

Updating reliability metrics, such as Service Level Objectives (SLOs) or Service Level Indicators
(SLIs), during active measurement periods can result in graph inconsistencies.
Role required: srm_admin, srm_manager, or srm_responder

About this task

To help you manage reliability-metric history, Service Reliability Management (SRM) follows
specific naming conventions. When you edit a reliability metric, SRM does the following:
• Retires the existing SLO.
• Creates a copy of the SLO with your edits in a draft state, which you can either save as a draft
or activate.
• Appends a number to the copy name, for example, Uptime (2) or Uptime (3).

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Follow these steps to access the Reliability metrics tab:
a. Select the Services page icon (

).

b. Select the service that uses the reliability metric you want to edit.
c. Select the Reliability metrics tab.
3. To edit a reliability metric, select the relevant reliability metric, and then select Edit and
Continue to edit.
4. Make your changes in the Details, Service level indicators, or Error budget policies tabs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3809


<!-- page 3810 -->
Note: If you change the SLI data source, all existing SLIs for the SLO are removed and
you must create new ones. An SLO can use only one data source type, and each data
source has unique settings that can’t be preserved or automatically converted.
While you can’t recover the removed SLIs while editing the SLO, you can view the earlier
versions in the Reliability metrics tab.
5. To save and implement your changes, select Activate.
Your edited reliability metric appears in the Reliability metrics tab. SRM sets the state to
running and includes a version number in its name, for example, Uptime (3).

What to do next

Managing SLOs requires ongoing updates to make sure that they reflect your reliability goals. You
can edit or retire existing SLOs and, if needed, reactivate retired SLOs.

Note: If you reactivate a retired SLO, SRM creates and activates a new copy of it. For
example: If there are two versions of an SLO, Uptime (1) and Uptime (2), and you reactivate
Uptime (1), SRM creates an active version called Uptime (3).
View SRM reliability metrics
Learn about an existing service level objective (SLO) and service level indicator (SLI).

Before you begin

Role required: srm_manager, srm_responder, or srm_admin

Note: Administrators can view any Service Reliability Management (SRM) SLO.
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the primary navigation, select the Services icon (

).

3. Select a service, select the Reliability metrics tab, and then open an SLO.
4. View the SLO header to get key information about the SLO, SLI, and state.

Header element

Description

SLI type
◦ Availability: Percentage of time the service
is available.
◦ Errors: Frequency of service errors.
◦ Latency: Time taken to service a request.
◦ Saturation: Fullness of the system,
focusing on resource use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3810


<!-- page 3811 -->
Header element

Description

SLO type

◦ Duration: Measures the time that the
service spends without breaching. The
associated metrics are:
▪ Objective (percentage): The target
percentage of the SLI that the service is
expected to meet.
▪ Error budget: The remaining error
budget, shown in days and time, before
the objective is breached.
◦ Count: Measures the number of
occurrences during a compliance period.
The associated metrics are:
▪ Limit (occurrences): The number of
occurrences that triggers a breach.
▪ Remaining breach occurrences: The
number of occurrences left before a
breach occurs.

State
◦ Draft: The SLO isn't active yet. You can add
new SLIs, update existing ones, or delete
the SLO.
◦ Running: The SLO is active. You can edit,
retire, or delete the SLO. Editing a running
SLO automatically retires it and creates a
new copy. See Edit a reliability metric for
more information.
◦ Retired: The SLO is no longer active. You
can reactivate it if needed.
Service

The service associated with the SLO.

Reliability
◦ Stable: All SLOs have more than 25% of
their error budget remaining.
◦ At risk: All SLOs have some error budget
remaining, but at least one SLO has less
than 25% left.
◦ Critical: At least one SLO has fully used its
error budget.

Note: From the header, you can delete, retire, or edit the SLO. Deleting an SLO also
deletes the associated SLIs. Retiring an SLO changes its state, but you can reactivate it
later from the SLO page or the Reliability metrics tab.
5. Select the Overview tab to view summary metrics and performance charts for the SLO.
◦ Historic periods: Select a time range. The available periods span from the SLO creation date
to the present in defined increments.
◦ Summary metrics: View details about SLO performance depending on the configured SLIs
and error budget policy thresholds.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3811


<!-- page 3812 -->
◦ Service level indicators: View the SLIs associated with the SLO.
◦ Service level objective (SLO) history:
▪ For duration SLOs, view charts for error budget used, error budget remaining, and burn
rate.
▪ For count SLOs, view charts for cumulative breach occurrences, burn rate, and alerts,
incidents & changes impacting this service.
You can point to the charts to view daily values.
6. Select the Details, Service level indicators, and Error budget policy tabs to view key
configuration details.
For information about the details shown, see Create SLO form, Create SLI form, and Add an
error budget policy form. On the Error budget policies tab, you can select Add policy to define
actions based on performance data.

What to do next

To learn how to create or edit SLOs, see Create SLOs, SLIs, and error budget policies and Edit a
reliability metric.

SLO Management reference
Reference topics provide additional information about Service Level Objective Management.
Add an error budget policy form
Learn about the available fields for setting up error budget policies.

Fields in the Add an error budget policy form
The following table describes the available options in the Add an error budget policy form. For
step-by-step instructions, see Create SLOs, SLIs, and error budget policies.

Field

Description

Policy name

Display name of the error budget policy.

Threshold type

Select how you want to track your error
budget.
• Burn rate (count): Tracks how quickly the
error budget is being consumed. A higher
burn rate means faster consumption.
• Error budget remaining (%): Tracks the
percentage of the error budget that’s still
available during the specified period.

Note: You can add multiple thresholds
to a policy, but each must be unique. If
you try to add a duplicate threshold, an
error message appears.
Threshold value

The point at which you get notified based on
the selected SLO indicator.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3812


<!-- page 3813 -->
Field

Description

• Burn rate: Set a value that indicates the burn
rate is too high.
For example, to be notified when your
service or configuration item is burning
through its error budget twice as fast as
expected, set the threshold to 2.
• Error budget remaining: Set a value that
indicates the remaining error budget is too
low.
For example, to be notified when only 25%
or less of the error budget remains, set the
threshold to 25%.

Note: The threshold values support up
to 4 decimal places and then round up.
Policy action

[Optional] If a breach occurs, select the action
that you want to take:
• Create incident.
• Send an email.
• Notify Microsoft Teams.
If you select this option, you must also select
a relevant notification destination. To set up
a notification destination for your team, see
Create a notification destination in SRM.

Note: To learn about the notifications
that teams receive for breached error
budget policies, see Notifications for
breached error budgets.

Create SLO form
Learn about the available fields for adding a service level objective (SLO) to Service Reliability
Management.

Service level objective form
The following table describes the available options in the Service level objective form. For stepby-step instructions, see Create SLOs, SLIs, and error budget policies.
Fields in the Service Level Objective form
Field

Description

Name

Name of the SLO.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3813


<!-- page 3814 -->
Fields in the Service Level Objective form (continued)
Field

Description

SLI type
• Availability: Percentage of time the service
is available.
• Errors: Frequency of service errors.
• Latency: Time taken to service a request.
• Saturation: Fullness of the system, focusing
on resource use.
How do you want to measure this objective?

You can measure this objective by:
• Duration: The amount of time the service
spends without breaching. It's the only value
available.
• Count: The number of periods or
occurrences in a given compliance period.

Measuring by Duration
Field

Description

Objective (%)

The percentage of how available (uptime)
you want the service to be over a length of
time. If measuring by duration, an objective
percentage of Five Nines (99.999%) means
that the service wasn’t available for 26
seconds per month, or about 5 minutes and
35 seconds per year. This is used to calculate
your error budget.

Compliance period

Period for which the metrics are calculated.
The available options are:
• Month: The duration is considered to be the
current month. For example, if the current
date is 26th January, the duration will be
considered from 1st January until 31st
January.
• Rolling 7 days: The duration is considered to
be 7 days from the current date.
• Rolling 30 days: The duration is considered
to be 30 days from the current date. For
example, if the current date is 26th January,
the duration will be considered from 25th
December.
• Rolling 90 days: The duration is considered
to be 90 days from the current date. For

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3814


<!-- page 3815 -->
Measuring by Duration (continued)
Field

Description

example, if the current date is 26th January,
the duration will be considered from 25th
October.
Error budget

Auto-populated.
The maximum level of errors (downtime)
allowed over a certain period. A percentage
of total service availability. Once you set
your objective (%), your error budget is
automatically calculated using this formula: 1 –
(Desired) Availability.
The error budget of a service will be calculated
in days, hours, minutes, and seconds for a
desired availability of 99.99% (Four Nines) of
the year by:
1. Calculating the total time in seconds in a
year: 31536000 seconds.
2. Determining the error budget as 1 –
(Desired) Availability: 1 - 0.9999 = 0.0001.
3. Converting the error budget to time units.
For example, if the error budget is 0.0001:
• Error Budget in Seconds = 0.0001 *
31,536,000 seconds = 3,153.6 seconds.
• Error Budget in Minutes = 3,153.6 seconds /
60 = 52.56 minutes.
• Error Budget in Hours = 52.56/60 = 0.875
hours.
• Error Budget in Days = 52.56 minutes / (24 *
60) ≈ 0.0364 days.

Note: Your error budget appears
in units of days, hours, minutes, and
seconds only when you measure your
SLO by duration.

Measuring by Count
SLO type

Count by periods or Count by occurrences

Limit occurrences

The number of occurrences after which a
breach occurs.
Limit occurrences act as an error budget.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3815


<!-- page 3816 -->
Measuring by Count (continued)
SLO type

Count by periods or Count by occurrences

Compliance period

Period for which the metrics are calculated.
The available options are:
• Month: The duration is considered to be the
current month. For example, if the current
date is 26th January, the duration will be
considered from 1st January until 31st
January.
• Rolling 7 days: The duration is considered to
be 7 days from the current date.
• Rolling 30 days: The duration is considered
to be 30 days from the current date. For
example, if the current date is 26th January,
the duration will be considered from 25th
December.
• Rolling 90 days: The duration is considered
to be 90 days from the current date. For
example, if the current date is 26th January,
the duration will be considered from 25th
October.

Note: The Assignment group is auto-populated.
Create SLI form
Learn about the available fields for adding a service level indicator (SLI) to a service level
objective (SLO).

Add SLI form
The following table describes the available options in the Add SLI form. For step-by-step
instructions, see Create SLOs, SLIs, and error budget policies.
Fields in the Add SLI form
Field

Description

SLI name

Enter a name for your SLI. For example, Critical
router issue.

Data source

This field is auto-populated.
The alerts or outages are used to calculate the
error budget.

Service or configuration item

• <Service-name> - Select this option to filter
your SLI to the entire service. This option
helps you measure overall service health.
• Related configuration item - If your service
includes one or more configuration items

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3816


<!-- page 3817 -->
Fields in the Add SLI form (continued)
Field

Description

(CIs) in its hierarchy, select this option to
filter your SLI to specific CIs. This option
provides a more granular view of service
health.

Note: By default, only levelone CIs appear in the CI list.
Administrators can change the number
of levels displayed by updating the
sn_sow_slo.slo_rollup_depth
system property value.
Set conditions (optional)
Customize your SLI by filtering it to specific alerts or outages. The fields in this section are
optional.
Add condition set

Select this option to specify the alerts or
outages included in the error budget.
For example, for alerts, if you set the condition
to Status is Critical, only alerts with a critical
status count toward the error budget.

Notifications for breached error budgets
Details about the notifications that teams receive for breached error budget policies.

When notifications are sent
When a service or configuration item breaches its error budget policy and a notification
destination is set, Service Reliability Management (SRM) sends a notification to the configured
Microsoft Teams channel.

Notification content
The message contains details about the breach to help team members learn about the issue and
act. In Microsoft Teams, the message is titled Error budget policy violation and lists
the following information:
• Service level objective - Name of the service level objective (SLO), for example, Navigation
service availability 99.95.
• Service/CI - Name of the associated service or configuration time. Select the name to open the
relevant service in SRM.
• Policy name - Name of the error budget policy that was breached.
• Error budget remaining - Percentage of error budget left at the time of the breach.
• View SLO in ServiceNow - Link to view the SLO details in SRM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3817


<!-- page 3818 -->
Sample notification
The following image is a sample notification in Microsoft Teams. It shows an error budget policy
violation for the Cart service and details about the SLO and error budget remaining.

Related documentation
See Create a notification destination in SRM and Create SLOs, SLIs, and error budget policies.
Visualizations in the Service reliability dashboard
List of visualizations and options on the Service reliability dashboard in Service Reliability
Management (SRM).

Service state charts
Top-level charts show the number of services in critical, at-risk, and stable states. Their states are
based on the error budget remaining on their service level objectives (SLOs). You can select the
charts to view service names, adjust the time range, and access additional chart options.

Note: An error budget is the amount of failure a service can experience before breaching
its SLO.
Each visualization also includes a trend line showing changes in service count over the past
12 months. Smaller figures indicate how the count has changed compared to a week ago, for
example, ↓25 (22%) since Jun 11.

Chart

What it is

How to use it

Critical

Displays the number of
services in a critical state.
Critical services have 0% error
budget remaining on their
SLOs.

View how many services have
consumed their error budgets
and identify the services
needing immediate attention.

At risk

Displays the number of
services at risk. At-risk
services have <= 25% error
budget remaining on their
SLOs.

Monitor how many services
are approaching critical
thresholds and find issues
early.

Stable

Displays the number of stable
services. Stable services have
more than 25% error budget
remaining on their SLOs.

Get insights into overall
service health and identify if
services are staying reliable
over time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3818


<!-- page 3819 -->
Risk trends over time
Line charts track the number of SLOs with high burn rates and low error budget remaining over
the past 12 months. You can use them to find recurring patterns and potential reliability risks.

Chart

What it is

High burn rate (>=1)

Shows the number of SLOs
with a burn rate >= 1 over time.
A high burn rate indicates
that the service linked to the
SLO is likely to breach its error
budget before the compliance
period ends.
For example, if a service has
30 days to meet its SLO but is
using up its error budget in 15
days, the burn rate is 2.

How to use it

• Find risks early by seeing
when services begin
consuming error budgets
too quickly.
• Identify emerging or
recurring reliability issues
by tracking burn rates over
time.
• Point to the chart to see the
number and percentage of
SLOs with a high burn rate
at that time.
• Select the chart to view
SLO details, adjust the
time range, and access
additional chart options.

Low budget remaining
(<=25%)

Shows the number of SLOs
with low or no error budget
remaining over time.

• Monitor how many services
are nearing or have
breached their SLOs.
• Track rising trends, which
might indicate declining
reliability or recurring issues
that need investigation.
• Point to the chart to see the
number and percentage of
SLOs with little or no error
budget remaining at that
time.
• Select the chart to view
SLO details, adjust the
time range, and access
additional chart options.

Service level objectives (SLOs) table
The SLOs table lists the SLOs defined in Service Reliability Management (SRM), and it’s sorted
by SLO name by default. Use the table to monitor overall reliability, identify services at risk, and
find the assigned teams.
The SLO table includes the following columns by default. To customize the columns shown,
select the gear icon.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3819


