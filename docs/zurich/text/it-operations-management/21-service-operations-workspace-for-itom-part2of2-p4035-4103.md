# Zurich IT Operations Management — Service Operations Workspace for ITOM

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4035–4103 of 4823 | Part 2 of 2

Sections: Service Operations Workspace for ITOM (p3885)

---

<!-- page 4035 -->
7. In the Then, apply the following actions section, select one or more of the three automation
actions that can be triggered by the automation.

Action

Description

Creates an incident for the alerts that match
the specified filter.

Create an incident

For details on mapping the alert fields to the
incident fields, see Alert field mapping on the
Respond page.
To include additional fields in the incident, se­
lect + Add.
Sends notifications to other systems using
outbound webhooks. For example, this capa­
bility can be used to send a chat notification,
create a case, or trigger an external runbook
to remediate the issue.

Use outbound webhooks to send data to oth­ For details on configuring an outbound web­
hook, see Outbound webhook parameters.
er systems
To create an additional property, select + Add
property. The property can be any custom
key-value pair that you want to include in the
webhook payload, such as "Content-Type: ap­
plication/json" or "Authorization: Bearer <to­
ken>".

Run other response actions

Executes selected subflows from Workflow
Studio for alerts that match the specified con­
dition. For example, you may select out-ofthe-box subflows to restart services. You can
also create your own custom subflows, lever­
aging hundreds of integrations available in In­
tegration Hub.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4035


<!-- page 4036 -->
Action

Description

a. In the Response subflow field, select the
subflow.
Clicking the Information icon ( ) takes
you to the workflow of the subflow. For ex­
ample, if you click the Information icon (
)
next to Close Alert, the Close Alert workflow
opens.
Close Alerts workflow

b. In the How should the subflow execute?
field, select Automatically, Manually or Au­
tomatically and Manually.

Note: If you select a subflow with

an execution type of Manually or Au­
tomatically and Manually, and then
save the automation, it appears in the
Express List.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4036


<!-- page 4037 -->
Action

Description

c. In the Execution limit field, specify the max­
imum number of times the subflow can run.
After reaching the limit, the subflow won't
execute again.
To add another response action, select + Add
response action.
The new Create Incident Advanced subflow
introduces a configurable delay mechanism
to reduce unnecessary incident creation. It al­
lows event management admins and opera­
tors to set delay durations (in hours, minutes,
or seconds) and validate alert conditions—
such as status and severity—before creating
an incident.

The delay ensures that incidents are creat­
ed only for valid and persistent alerts, not
for temporary or transient ones. It enables
the system to wait for a specified period be­
fore creating an incident, allowing alerts that
may resolve or change in status or severity
to be filtered out. After the delay, the system
performs a validation check on alert parame­
ters—such as alert status and severity—to con­
firm whether the alert still meets the criteria
for incident creation.

Note: If you don’t select at least one action, the automation is deactivated.
8. In the And finally section, to continue running other response automations with same filter
conditions after this automation is executed, select Run other response automations.
If you select Don't run response automations, additional automation of this type stops running
after this automation is executed once. If the automation is managed by an administrator, it
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4037


<!-- page 4038 -->
stops running administrator-owned automations but continues to run automations owned by
other assignment groups.
9. In the Automation details section, provide an order and automation description.

For more information, see unique_2334.
10. Select Save automation.
A notification appears when the automation is successfully saved. Otherwise, an error
message is displayed.
The response automation that you created appears on the All response automations page
where you can view, edit, or delete the existing automations.
Delete an automation
Delete an automation to permanently remove an automated alert handling rule from your system.

Before you begin

Role required: evt_mgmt_admin, evt_team_operator, or srm_responder

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps Configuration Center page, under the Optimize section, select the
automation, such as Enrich alerts or Group alerts, from which you want to delete an
automation.
The page for that automation type opens, showing a list of all existing automations.
4. On the Alert Automation page, under Automation types, select the automation type that you
want to delete, such as Ignore, Enrich, Group, or Respond.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4038


<!-- page 4039 -->
The page for that automation type opens, displaying all the existing automations.
5. Select the check box next to the automation you want to delete, and then select Delete.

6. In the confirmation window, select Delete.
The alert is permanently deleted.
AIOps Dashboards in Service Operations Workspace for ITOM
The AIOps dashboards offer comprehensive visualizations of critical operational data. You can
monitor key performance indicators (KPIs), track service health, and gain valuable context on the
overall IT environment. These dashboards provide actionable insights that facilitate proactive
responses to potential issues.

Access to dashboards
From the bottom of the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. Navigate to the Dashboards section and
select the required dashboard.
Key benefits of using the AIOps dashboards:
• Configure the dashboards to focus on the metrics and data most relevant to your role.
• Enjoy interactive visual representations of critical operational data.
• Monitor KPIs, service health metrics, and other important performance data at a glance.
• Leverage actionable insights derived from data analysis for better decision-making.

Note: Opening a set of dashboards shows the most recently accessed dashboard in that
category.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4039


<!-- page 4040 -->
AIOps Dashboard home page

To view AIOps Operational dashboards, such as AIOps Value Realization, select the AIOps
Operational list and then select the dashboard name.
AIOps dashboard list

AIOps 360 overview dashboard
The AIOps 360 Overview dashboard offers a unified view of value and performance across
IT operations, helping teams track efficiency, monitor alert handling, and assess automation
outcomes. It enhances visibility into AIOps impact, supports informed decisions, and drives
faster, smarter operations.

Prerequisites
Ensure that the Event Management application is installed.

Required ServiceNow AI Platform roles
• evt_mgmt_admin
• evt_mgmt_operator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4040


<!-- page 4041 -->
Breakdowns
Breakdowns available in the AIOps 360 overview dashboard are:
• Value overview
• Performance overview

Value overview section
Use filters such as Date and Assignment Group to customize the dashboard view and focus on
specific time periods and teams. This helps you pinpoint trends, identify areas for improvement,
and make data-driven decisions tailored to your operational needs.
The Value overview section highlights the overall impact of AIOps on operational efficiency. It
showcases how much manual effort has been reduced through automation and intelligent alert
grouping. It also reflects noise reduction levels, outage history, and overall workload savings—
giving a clear picture of time and cost benefits realized.

Metrics

Description

Est. Total time saved

Sum of time saved through alert automation
and alert grouping, calculated in hours.

Est. Total time saved by automation

Time saved based on the number of alert
automation rules executed multiplied by the
mean resolution time per alert, calculated in
hours.
The mean resolution time can be adjusted by
administrators in All > System Properties > All
Properties.
Use the

sn_aiops_dashboard.ITOM.Dashboard.Avg_time_s
property to get the actual time saved by
automation, in minutes, as used by the
Automation Time Saved indicator. By default,
it's set to 5 minutes.
Est. Total time saved by grouping

Time saved based on the number of alerts
grouped versus the time required to triage
each alert individually, calculated in hours.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4041


<!-- page 4042 -->
Metrics

Description

The mean resolution time can be adjusted by
administrators in All > System Properties > All
Properties.
Use the

sn_aiops_dashboard.ITOM.Dashboard.MTTR_for_t
property to define the MTTR (in minutes) used
in the alert grouping time saved calculation. By
default, it's set to 5 minutes.
Workload saving

Measures the reduction in manual effort by
filtering, grouping, automating alert closures,
and preventing incident escalations.
• Events to significant alerts: Percentage of
events that were filtered out and did not
convert into alerts, reduced through AIOps
settings like ignore automations.
• Grouped alerts: Percentage reduction in
the number of stand-alone alerts due to
grouping rules defined in alert grouping
automations.
• Auto-closed alerts: Percentage of
alerts automatically closed by Respond
automation, Clear event actions, or closed
as part of alert group resolution.
• Incident prevention rate: Percentage of
alerts resolved successfully without needing
escalation to incidents.

Last reported outage

Most recent date of a major outage (e.g.,
CMDB) affecting a service or server, based on
reported outages on all classes inherited from
cmdb_ci_service or cmdb_ci_server.

Noise reduction

Percentage effectiveness in ignoring duplicate
and meaningless events. Typical customer
value exceeds 90%.

Performance Overview section
This section focuses on how effectively alerts and incidents are being handled. It includes
metrics like resolution times across groups, trends in detection and response, automation
usage, and the distribution of resolution ownership. It helps identify performance gaps, track
improvements, and optimize response strategies across the organization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4042


<!-- page 4043 -->
Metrics

Description

Alert MTTR

Alert resolution time by assignment group to
identify slower-responding teams and enforce
SLAs. Can also be grouped by severity using
the grouping drop-down menu.

Alert MTTx over time

MTTR (mean time to resolve), MTTA (mean
time to final group assignment), and average
group reassignment count tracked over time.
Indicates assignment efficiency and the ability
to resolve alerts within a single group.

Critical alert by CI location

Critical alerts on a geographic map based
on the physical or logical location of
Configuration Items (CIs). Helps identify
recurring hotspots for retrospective analysis
and to spot regional trends.

Resolution types by assignment groups

Closure reasons by top assignment groups,
highlighting automation closures (within 10
minutes of execution) to encourage quick
resolution, and time threshold closures
(after the auto-close interval), which indicate
unattended alerts.
You should consider the number of alerts that
are automatically closed when they reach their
time limit. This figure can reveal if your team
is unable to resolve or close all alerts, leaving
some unaddressed.

Note: If you're starting with Zurich, some charts, graphs, or metrics in the dashboard may
appear blank or show limited data. This is expected if there's no historical data or only a few
weeks or months of data available. As your system continues to collect and process alerts,
the dashboard will populate with more complete insights over time.
If you want to know about funnel visualization, see Create a funnel visualization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4043


<!-- page 4044 -->
AIOps Value Realization dashboard
The AIOps Value Realization dashboard uses Performance Analytics to offer comprehensive
visibility into the business outcomes of alerts, events, and incidents. It features metrics such as
noise reduction (events to alerts compression), average MTTR for incidents created by Event
Management[var.event-mgmt], and the most critical services impacted by hours.
The AIOps Value Realization dashboard includes a calendar feature that enables users to select
various date ranges such as custom dates, the last 3 months, the last 30 days, the last 6 months,
the last 7 days, the last year, today, and year-to-date (YTD). You can specify a custom start and
end date and apply these selections to view reports specifically for the chosen date range. This
feature facilitates tailored analysis and reporting based on specific time periods of interest.
AIOps Value Realization dashboard date range selection

The AIOps Value Realization dashboard offers key insights and metrics crucial for operational
efficiency and business impact assessment. It includes features such as noise reduction to
enhance focus on critical issues by reducing event-to-alert conversions. Tracking average
MTTR for incidents and measuring downtime on critical services aids in improving operational
efficiency and prioritizing resolutions. Categorized into Operational Excellence and Business
Impact sections, the dashboard provides detailed coverage on alerts grouping, swift resolution
of critical incidents reported by users, and quantifying service impacts by severity to optimize
operational stability.
Run the [PA EM] Historic Data Collection job once to enable the partial collection of historical
Event Management data:
1. Navigate to All > Performance Analytics > Data Collector > Jobs.
2. Select [PA EM] Historic Data Collection.
3. Select Execute Now.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4044


<!-- page 4045 -->
AIOps Value Realization dashboard key features overview

Prerequisites
Ensure that the Event Management application is installed.

Required ServiceNow AI Platform roles
• evt_mgmt_admin
• evt_mgmt_operator

Use cases
For examples of how different people in your organization would use this dashboard, refer to
these use cases.

User

Dashboard use

evt_mgmt_admin or admin

Edit the dashboard and grant view and share
permissions.

evt_mgmt_operator or admin

View the dashboard and review record details
to visualize and track the business impact of
alerts, events, and incidents.

Breakdowns
Breakdowns available in the AIOps Value Realization dashboard are:
• Operational Excellence
• Business Impact

Reports
Title

Type

Description

Noise reduction (events to
alerts compression)

Line graph

The compression rate from
events to alert creation: a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4045


<!-- page 4046 -->
Title

Type

Description

higher number indicates fewer
alerts are being created.
Average MTTR incidents
Line graph
created by Event Management

The average Mean Time
to Repair (MTTR) of an
incident created by Event
Management: a lower number
indicates greater efficiency of
your IT team.

Most critical services
impacted, in hours

Line graph

The total time your
organization's most critical
business services are
impacted: a higher number
indicates more time critical
services are affected by open
alerts.

Alerts grouping coverage

Line graph

The percentage of total alerts
that are grouped: a higher
number indicates more alerts
are being correlated and
grouped within an alert group.

Number of affected services,
by severity

Line graph

The number of services
impacted by alerts, grouped
by severity, such as the count
of services experiencing
critical issues per day.

Number of new P1 incidents
Line graph
on monitored services created
by users

The number of incidents
created on services monitored
by Event Management: a
lower number indicates fewer
users are being impacted
by a service outage or
performance degradation.

Event and Alert dashboard
The Event and Alert dashboard uses Performance Analytics to provide real-time visibility into
events and alerts in Event Management, showcasing key trends, outcomes, and the most
impacted configuration items. It highlights metrics such as noise reduction, alert grouping
coverage, and top alert sources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4046


<!-- page 4047 -->
Run the [PA EM] Historic Data Collection job once to enable the partial collection of historical
Event Management data:
1. Navigate to All > Performance Analytics > Data Collector > Jobs.
2. Select [PA EM] Historic Data Collection.
3. Select Execute Now.

Prerequisites
Ensure that the Event Management application is installed.

Required ServiceNow AI Platform roles
• evt_mgmt_admin
• evt_mgmt_operator

Access the Events and alerts dashboard
To open the dashboard, use one of the following methods:
• Navigate to All > AIOps Dashboards > AIOps Operational > Events and Alerts.
• Navigate to Workspaces > Service Operations Workspace and select the AIOps Dashboards
icon (

).

By default, the Events and Alerts tab is selected.

Use cases
For examples of how different people in your organization would use this dashboard, see these
use cases.

User

Dashboard use

evt_mgmt_admin or admin

Edit the dashboard and grant view and share
permissions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4047


<!-- page 4048 -->
User

Dashboard use

evt_mgmt_operator or admin

View the dashboard and details of the
records contained in it to visualize and track
events, alerts, trends, outcomes, and the
most impacted Configuration Items in your
organization.

Breakdowns
Breakdowns available in the Event and Alert dashboard are:
• Trends
• Outcomes

Reports
Title

Type

Description

Noise reduction (events to
alerts compression)

Line graph

The compression rate from
events to alert creation. The
higher the number, the fewer
alerts are being created.

Alerts grouping coverage

Line graph

The percentage of alerts
aggregated into grouped
alerts over time.

Line graph

The percentage of alerts
that did not result in incident
creation. A higher percentage
means more alerts were
resolved without generating
incidents.

Top 20 alert sources (last 7
days)

Bar chart

The number of alerts per
source categorized by severity
over the last 7 days.

Top 20 event sources (last 5
days)

Bar chart

The number of events per
source categorized by severity
over the last 5 days.

Alerts without CI (created on
last 7 days)

Line graph

The number of alerts without
CI binding created over the
last 7 days.

Alerts grouping (last 7 days)

Bar chart

The distribution of grouped
alerts over the last 7 days.

Incident compression rate

Most impacted Configuration Items
The Most Impacted Configuration Items section of the Event and Alert dashboard provides a
comprehensive overview of the configuration items (CIs) that are most impacted by the issue.
This section lists key details such as the name of each CI, the number of associated alerts, their
classification (such as application service), and location. Additionally, it identifies the owner and
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4048


<!-- page 4049 -->
support group responsible for each CI, facilitating targeted and efficient incident resolution. By
highlighting the most impacted CIs, this section helps prioritize critical assets and resources,
ensuring that the most significant issues are addressed promptly to maintain system stability and
performance.
Agent Health dashboard
The Agent Health dashboard provides visibility into the status and distribution of agents
installed in your system. It allows you to quickly assess the number of deployed agents and their
distribution, helping you prioritize your work more efficiently.
The following example shows the agents in your system that are currently up, which agents are
configured to collect data, and which agents have stopped data collection due to having reached
their CPU threshold (Silent/Off). It also displays the agents according to their version, OS, and
connected MID Server.

Prerequisites
The Agent Client Collector application must be installed.

Required ServiceNow AI Platform roles
A user must have the agent_client_collector_admin role to see all the widgets in the dashboard.

Access the Events and alerts dashboard
To open the dashboard, use one of the following methods:
• Navigate to All > AIOps Dashboards > AIOps Operational > Agent Health.
• Navigate to Workspaces > Service Operations Workspace and select the AIOps Dashboards
icon (

) and then select the Agent Health tab.

• After upgrading to Discovery Admin Workspace version 1.3.1 (August 2024 Store), you can
navigate to Workspaces > Discovery Admin Workspace > Insights and use the enhanced
dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4049


<!-- page 4050 -->
Use case
For examples of how different people in your organization would use this dashboard, see the use
case in the following table.
Dashboard use case
User

Dashboard use

admin

Visibility into the status of the agents.

Breakdowns
Breakdowns available in the Agent Health are:
• Agent status: The status of the agents currently deployed in your system.
• Agent distribution: The distribution of the agents by the agent version number, the MID Server
that the agent is assigned to, and the OS that the agent is working on.

Reports
Title

Type

Description

Agent status breakdown

Pie chart

Agents deployed in your
system that are up and down.
Select the relevant color in the
widget to display a list of up or
down agents.

Agent by data collection
status

Pie chart

Agents deployed in your
system with data collection
turned on and off. Select the
relevant color in the widget
to display a list of agents with
data collection on or off.

Silent/Off (auto) agents

Line graph

Agents that automatically
stopped collecting data after
crossing the CPU usage
threshold. The CPU usage
threshold is configurable in
the acc.yml configuration
file.
For more information on the
acc.yml configuration file,
see Configuration file options.

Agent by version

Bar chart

Breakdown of your deployed
agents by their version
numbers.

Agent by MID Server

Bar chart

Breakdown of the deployed
agents according to the MID
Server they're assigned to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4050


<!-- page 4051 -->
Title

Type

Description

Agent by OS

Bar chart

Breakdown of your deployed
agents according to the
operating systems they are
working on.

HLA Operational dashboard
The Health Log Analytics Operational dashboard uses Performance Analytics to enable you to
monitor log data, alerts, and error rate information in Service Operations Workspace and address
issues as they occur in the system.

Prerequisites
Ensure that the Health Log Analytics application is installed.

Required ServiceNow AI Platform roles
• evt_mgmt_admin
• evt_mgmt_operator

Access the HLA Operational dashboard
To open the dashboard, use one of the following methods:
• Navigate to All > AIOps Dashboards > AIOps Operational > HLA Operational.
• Navigate to Workspaces > Service Operations Workspace and select the AIOps Dashboards
icon (

), then display the HLA Operational dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4051


<!-- page 4052 -->
Use cases
These use cases provide examples of how different people in your organization would use this
dashboard.

User

Dashboard use

evt_mgmt_admin

Edits the dashboard and grants view and
share permissions.

evt_mgmt_operator or evt_mgmt_admin

Monitors the dashboard to visualize and track
HLA log and alerts data, error rates, and other
relevant information.

Breakdowns
Breakdowns available in the HLA Operational dashboard are:
• HLA Overview
• Error rate

Reports
Title

Type

Description

Logs processed

Bar chart

The number of logs that were
processed and analyzed
in the selected period. By
default, the dashboard
visualizes log data that was
ingested in the last 24 hours.

Active alerts created by logs

Table

Detailed data on all currently
active alerts.

Endpoints streamed

Line graph

The number of endpoints
(IPs, networks, and devices)
that are streaming into Health
Log Analytics, by application
service.

Logs by level state

Bar chart

The severity level of the logs
for the streaming sources.

Logs per application service

Line graph

The number of logs streamed
for each application service in
the selected period.
Monitor this data to ensure
that log data is streaming as

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4052


<!-- page 4053 -->
Title

Type

Description

expected for each application
service.
Logs per host

Line graph

The number of processed logs
for each host in the selected
period.
Monitor this data to detect
hosts that are logging more or
less data than expected.

Error rate per application
service

Line graph

The number of logs with errors
for each application service
analyzed in the selected
period.
Monitor this data to further
investigate the errors.

Note: Health Log
Analytics automatically
creates alerts for Error
anomalies.
Error rate per component

Line graph

The number of logs with errors
for each component analyzed
in the selected period.
Monitor this data to ensure
that the error rate for each
component is normal.

Data visualization in ITOM
Gain insights faster with data visualization in IT Operations Management (ITOM). Visualize
metrics, logs, events, and alerts through intuitive dashboards and charts to identify trends,
monitor performance, and resolve issues proactively.
Anyone with access to data can create a visualization of that data on a dashboard that they own.
Create a funnel visualization
A funnel visualization shows how data progresses through sequential stages, helping you
identify drop-offs or bottlenecks at each step. Use it to track conversions, workflows, or process
completion rates. You can add a funnel visualization to an existing dashboard or to a new
dashboard.

Before you begin

Role required: report_user, admin, or viz_creator
Ensure you have an admin role or permission from the dashboard owner to edit the dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4053


<!-- page 4054 -->
About this task

If you have the appropriate role, you can add and edit funnel reports on a dashboard. The Edit
button is not available on the ITOM dashboards unless the user has rights to edit it. For more
details on creating dashboards, see Common dashboard tasks in the in-line editor .

Procedure
1. Navigate to Workspaces > Service Operations Workspace and select the AIOps Dashboards
icon (

).

2. From the Dashboard picker, select AIOps 360 overview.

3. Select Edit to put dashboard in the edit mode.

4. From the Add new element drop-down menu, select Data visualization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4054


<!-- page 4055 -->
5. In the Add Visualization window, select New visualization.

6. From the Visualization type field, select Funnel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4055


<!-- page 4056 -->
Note: The Funnel visualization type is currently available only to customers who have
the ITOM plugin installed.
7. Under Data sources, select + Add data source.
There are two kinds of data sources avail for the Funnel visualization type: Table and Indicator.
Visualizations based on table data show a snapshot of the state of that data. Indicator
visualizations reflect data over time based on data collection jobs. You can configure funnel
stages using indicators in one of the following ways:
You can configure funnel stages using indicators in one of the following ways:
◦ Option 1: Use a single indicator or table with a breakdown
Select a single indicator or table, and then define the breakdown using the Group by field.
The breakdown values are used as the funnel stages.

Note: If you select only one indicator without a breakdown, the visualization displays
an error: Invalid configuration. A 'Group By' must be selected
for the visualization to render.
◦ Option 2: Use multiple indicators without a breakdown
Select multiple indicators without setting a breakdown. In this case, each indicator's value
represents a stage in the funnel.

8. Select the required data source and select Add this source.
When you select a table or indicator data source for a funnel visualization, refer to the following
topics for the available data configuration options:
◦ Table data options for funnel visualizations
◦ Indicator data options for funnel visualizations
9. Select Save.
Table data options for funnel visualizations
When you select a table data source for the funnel visualization, the following data configuration
options are available.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4056


<!-- page 4057 -->
Data configuration options
Field

Description

Predefined conditions

Preset filters to quickly narrow down data based on
common criteria.

+ Add custom conditions

Custom filters based on user-defined criteria.

Header and border
Show header

The visualization header, including title and icons.

Show header separator

Option to display a line separating the header from the
rest of the component.

Chart title

Text shown as the title of the chart.

Description

Optional explanatory text shown below the title.

Wrap title

Option to wrap long titles onto multiple lines.

Show border

Option for border visibility setting for the widget container.

Header background color

Background color setting for the header area.

Data
Data sources

Available inputs that supply data to the visualization.

Metric
Label

Custom name for the selected metric. By default, the label
matches the data source name.

Select an aggregation

Aggregation type applied to the metric (e.g., sum,
average). The default is Count, which displays the number
of records selected.

Note: Select Count Distinct to count only unique
records. For example, when generating a report of
users with one or more roles from a list, you count
each user only once. Without this option, users with
multiple roles are counted more than once.
Field

Source field from the data set for the selected metric.

Note: The data appears in a format that matches
the field type. For example, an integer field like
Priority is shown as a number. A duration field
like Business duration from the [Incident] table is
displayed in days, hours, and minutes.
If function fields were created in Report Designer for the
table, they are available in the drop-down list. For more
information, see Report on function fields .
Format values

Formatting style for displaying metric values. Select to
open the Formatting values dialog.
For more information, see Value formatting in reports

.

Group
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4057


<!-- page 4058 -->
Data configuration options (continued)
Field

Description

Field for incident

Field used specifically to group incident data.

Max number of groups

Limit on the number of groups shown in the visualization.

Show others

Option to group excess data into an Others category.

Data update
Follow filter

Follows filters set at the page level.
When selected, the visualization reflects workspace
filters. When not selected, the visualization ignores all
page-level filters.

Show filter icon

Option to display the filter icon and the number of filters
affecting the visualization. If the check box is not selected,
the icon and filter count are hidden.

Refresh after being away for X min

Trigger based on time spent away from the dashboard
within the same workspace, including the Platform
Analytics experience. Defines the number of minutes after
which the visualization automatically refreshes when you
return.
Do not confuse this setting with Scheduled repetition on
inline dashboards, which refreshes the entire dashboard
only while it remains open.

Info messages
Set custom message when no data Custom text displayed when no data is available for the
visualization.
Colors
Set color type

Color scheme applied to different data values or ranges.

Chart interaction

User actions supported within the chart, such as hover or
select.

Indicator data options for funnel visualizations
When you select an indicator data source for the funnel visualization, the following data
configuration options are available.
You can either select a single indicator and use the Group by field to calculate stage values, or
select multiple indicators without a breakdown, where each indicator’s value represents a funnel
stage.
Data configuration options
Field

Description

Breakdown

Provides a way to segment data using fields like Alert
Severity or Alert Status.
Each condition includes a Breakdown field, an Operator,
and an Element that defines the target value. All

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4058


<!-- page 4059 -->
Data configuration options (continued)
Field

Description

conditions are applied using AND logic, meaning data
must meet every specified criterion to be included in the
visualization.
Header and border
Show header

Option for visibility setting for the widget header.

Show header separator

Option to display a dividing line below the header.

Chart title

Text shown as the title of the chart.

Description

Optional explanatory text shown below the title.

Wrap title

Option to wrap long titles onto multiple lines.

Show border

Option for border visibility setting for the widget
container.

Header background color

Background color setting for the header area.

Data
Data sources

Available inputs that supply data to the visualization.

Metric
Label

Custom name for the selected metric. By default, the
label matches the data source name.

Select an aggregation

Aggregation type applied to the metric (e.g., sum,
average). The default is Count, which displays the
number of records selected.

Note: Select Count Distinct to count only unique
records. For example, when generating a report of
users with one or more roles from a list, you count
each user only once. Without this option, users with
multiple roles are counted more than once.
Field

Source field from the data set for the selected metric.

Note: The data appears in a format that matches
the field type. For example, an integer field like
Priority is shown as a number. A duration field
like Business duration from the [Incident] table is
displayed in days, hours, and minutes.
If function fields were created in Report Designer for the
table, they are available in the drop-down list. For more
information, see Report on function fields .
Format values

Formatting style for displaying metric values. Select to
open the Formatting values dialog.
For more information, see Value formatting in reports

.

Group
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4059


<!-- page 4060 -->
Data configuration options (continued)
Field

Description

Field for incident

Field used specifically to group incident data.

Max number of groups

Limit on the number of groups shown in the visualization.

Show others

Option to group excess data into an Others category.

Data update
Follow filter

Follows filters set at the page level.
When selected, the visualization reflects workspace
filters. When not selected, the visualization ignores all
page-level filters.

Show filter icon

Option to display the filter icon and the number of
filters affecting the visualization. If the check box is not
selected, the icon and filter count are hidden.

Refresh after being away for X min

Trigger based on time spent away from the dashboard
within the same workspace, including the Platform
Analytics experience. Defines the number of minutes
after which the visualization automatically refreshes when
you return.
Do not confuse this setting with Scheduled repetition on
inline dashboards, which refreshes the entire dashboard
only while it remains open.

Info messages
Set custom message when no data

Custom text displayed when no data is available for the
visualization.

Colors
Set color type

Color scheme applied to different data values or ranges.

Chart interaction

User actions supported within the chart, such as hover or
select.

Log Analytics in Service Operations Workspace for ITOM
View and address the alerts that Health Log Analytics generates in the Service Operations
Workspace.
Take action on a Log Analytics alert from the Overview tab
Start the Log Analytics alert remediation process from the Overview tab in the Service
Operations Workspace. This tab provides information on the alerts, log data associated with
the anomalous behavior, CIs that generated the triggering metric, and services impacted by the
alerts.

Before you begin

Role required: evt_mgmt_operator, or evt_mgmt_user, or evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4060


<!-- page 4061 -->
Procedure
1. In the Service Operations Workspace, select the lists icon (

).

2. Select the appropriate list in the Alerts sublist and navigate to the desired alert or group.
All alerts generated by Health Log Analytics have the value Log Analytics in the Source
column. The value in the Group column identifies the type of Log Analytics alert. See Types of
Health Log Analytics alerts for a more detailed description of each type of alert or group.

Tip: To preview an alert in the list, click its info icon (

).

3. Select the alert number.
The Overview tab displays.
4. View the section of the Overview tab that provides the information that you need.
For a description of the sections and cards, see Sections and cards on the alert Overview tab
in Health Log Analytics.

Note: Because some sections on the Overview tab show only a portion of the
information, many sections include a link that displays different or more complete
information.
5. Optional: Run predefined remediation tasks to resolve alert issues.
a. Select Launch playbook.
b. Select the Playbook tab.
The Run remediation card displays the available remediation actions.
c. Select the tile corresponding to the action you want to run.
When the action is complete, it appears in the Completed card.
Sections and cards on the Overview tab for a Component-based alert in Health Log Analytics
The Overview tab in the Service Operations Workspace helps you understand Componentbased alerts.
For a detailed description of Component-based alerts, see Types of Health Log Analytics alerts.

Summary
Identified issue
This card describes the issue that led to the alert. The identified issue appears
on the card and in the title for the alert. Information about the alert appears in the
banner.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4061


<!-- page 4062 -->
Identified issue

Select View surrounding logs to view log messages that are relevant to the alert.
See Analyze log lines that surround an anomaly in Health Log Analytics.
Anomaly
This card illustrates the anomalous activity that led to the alert.
• The blue line shows the recent anomalous activity.
• On some charts, the lightly shaded area indicates the expected (learned
baseline) behavior.
A peach-shaded area represents the baseline values for the same hour one day
earlier. A pink-shaded area shows the values for the same period in the previous
week.
In this example, the peach-shaded area shows the data for the same hour one day
earlier. The drop in the metric value (events per minute) is clearly visible.
Anomaly card

For more information on the kinds of anomalies that you might encounter, see Types
of anomalous behavior in Health Log Analytics.

Impact
Configuration Items
This card provides information about the CIs that are impacted by the alert.
Impacted services
This card provides information about the services that are impacted by the alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4062


<!-- page 4063 -->
Impact section

Cause
Meaningful log properties
On this card, each bar chart shows the distribution of values for a single log
property that contributed to the anomaly. Each property value is associated with a
color. The length of a color bar correlates to the percentage that the property value
holds in comparison with all other values for the property.
Meaningful log properties

Sections and cards on the Overview tab for a Log Analytics group in Health Log Analytics
The Overview tab in the Service Operations Workspace helps you understand Log Analytics
groups.
For a detailed description of Log Analytics groups, see Types of Health Log Analytics alerts.

Summary
Identified issue

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4063


<!-- page 4064 -->
This card describes the issue that led to the alert. The identified issue appears
on the card and in the title for the alert. Information about the alert appears in the
banner.
Identified issue

Select View correlations to view the list of correlations that relate the Log Analytics
alerts.
Correlations list
During initial analysis, alerts are scored. Each correlation in the alert's log data with
another alert contributes to the score. The higher the score, the more likely the alert
is to be included as a Log Analytics alert in a Log Analytics group.
The following kinds of data are considered when determining whether alerts are
correlated:
• Time: The events all occurred within a configured time interval.
• Metadata: The alerts have matching values in log-line metadata. For example, all
alerts involve the same host.
• Message text: The message text in the log data is similar or identical between
alerts.
• Trend: The alerts show a similar tendency in values or rates. For example, a
particular metric value is increasing in all alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4064


<!-- page 4065 -->
Correlations

1. List of correlations: The first correlation in the list is expanded to show the
individual Log Analytics alerts that are correlated and the log correlator that the
alerts share.
2. An individual log correlator: The identifier for a group of correlated Log Analytics
alerts. The alerts are grouped by the log-line data or metadata that is common to
the alerts (for example, IP address, host name, or user name). The number in the
blue square indicates the number of correlated alerts.
3. Log Analytics alerts that are correlated.
Alerts in group
For a Log Analytics alert, the Alerts in group card shows the Log Analytics alerts that
are grouped under the Log Analytics alert. Select a Log Analytics alert to view its
details.
Alerts in group

Select View all to the view the list of all Log Analytics alerts in the group and
relevant information about them. You can also view the Alerts in group list by
selecting the Related records tab and then selecting Alerts in group. For more
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4065


<!-- page 4066 -->
information, see View the Log Analytics alerts in a Log Analytics group in Health Log
Analytics

Impact
Configuration Items
This card provides information about the CIs that are impacted by the alert.
Impacted services
This card provides information about the services that are impacted by the alert.
Impact section

View the Log Analytics alerts in a Log Analytics group in Health Log Analytics
View a list of all Log Analytics alerts in a Log Analytics group on the Related records tab.

Before you begin

Role required: evt_mgmt_operator, or evt_mgmt_user, or evt_mgmt_admin

About this task

For a detailed description of Log Analytics groups and Log Analytics alerts, see Types of Health
Log Analytics alerts.

Procedure
1. On the Overview tab for a Log Analytics alert, go to the Alerts in group card and select the
View all link.
The Alerts in group section on the Related records tab displays.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4066


<!-- page 4067 -->
Alerts in group section on the Related records tab

2. For each Log Analytics alert in the Log Analytics group, the information described in the table
is available.
Alerts in group
Column

Description

Number

The number of the alert.
Select the number to view detailed
information for an alert.
This field is automatically set.

Initial event generation time

The time when the event that generated the
alert first occurred.

Note: Time here is the ServiceNow
processing time, not the source system
time.
Group

Type of group that the alert belongs to:
a standalone Log Analytics alert or a
Component-based alert.

Description

Anomalous pattern or metric that caused the
alert to be generated.

Severity

Severity value for the alert. The available
values are:
◦ Critical: Immediate action is required.
Either the resource is not functional or
critical problems are imminent.
◦ Major: Major functionality is severely
impaired or performance has degraded.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4067


<!-- page 4068 -->
Column

Description

◦ Minor: Either performance has degraded
or there is a partial, non-critical loss of
functionality.
◦ Warning: Attention is required even though
the resource is still functional.
◦ Info: An informational message. An alert is
created, but the resource is still functional.
◦ Clear or Resolved: No action is required.
An alert is not created from this event.
Existing alerts are closed.
Priority group

Priority group that indicates the order in
which to resolve alerts. Choices are as
follows:
◦ Urgent
◦ High
◦ Moderate
◦ Low
The priority group value is more important
than severity alone. For example, a high
priority and low severity alert should be
addressed before a low priority and high
severity alert. For information on how priority
is calculated, see Alert priority.

State

Processing state of the alert. A newly
generated alert is in the Open state. Other
states are as follows:
◦ Reopen: A previously closed alert is open
again, and it requires your attention.
◦ Flapping: The alert is receiving identical
events from the same source at high
frequency. This state can cause an alert to
re-open from the Closed state, resulting
in a high frequency of changes between
Open and Closed states.
◦ Closed: The alert is closed and does not
require any further action. You close an
alert when it is remediated.

Configuration item

CI in the CMDB. The CI is applied to by the
alert.

Node

Node field that is received in the log
message. The event described in the log
message occurred on this node. Often, the
node is the name of the CI that is associated
with the alert. For example, a computer name,
IP address, FQDN, or MAC address.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4068


<!-- page 4069 -->
Column

Description

Source

All Health Log Analytics alerts have the
value Log Analytics in the Source column
to indicate that the Health Log Analytics app
generated the alert.

Metric name

Name of the metric whose anomalous
behavior led to the alert. For example,
the I/O request in the case that the
I/O request took longer than 15000 ms to
complete.

Updated

Most recent time when the alert information
or state was updated.

Information on the Overview tab for a Log Analytics alert in Health Log Analytics
The Overview tab in the Service Operations Workspace helps you understand Log Analytics
alerts.
For a detailed description of Log Analytics alerts, see Types of Health Log Analytics alerts.

Summary
Identified issue
This card describes the issue that led to the alert. The identified issue appears
on the card and in the title for the alert. Information about the alert appears in the
banner.
Identified issue

Select View surrounding logs to view the log lines that were generated one minute
before and one minute after the alert. See Analyze log lines around the anomaly to
help find the root cause.
Anomaly
This card illustrates the anomalous activity that led to the alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4069


<!-- page 4070 -->
• The blue line shows the recent anomalous activity.
• On some charts, the lightly shaded area indicates the expected (learned
baseline) behavior.
A peach-shaded area represents the baseline values for the same hour one day
earlier. A pink-shaded area shows the values for the same period in the previous
week.
In this example, the peach-shaded area shows the data for the same hour one day
earlier. The drop in the metric value (events per minute) is clearly visible.
Anomaly card

For more information on the kinds of anomalies that you might encounter, see Types
of anomalous behavior in Health Log Analytics.

Impact
Configuration Items
This card provides information about the CIs that are impacted by the alert.
Impacted services
This card provides information about the services that are impacted by the alert.
Impact section

Cause
Meaningful log properties
On this card, each bar chart shows the distribution of values for a single log
property that contributed to the anomaly. Each property value is associated with a
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4070


<!-- page 4071 -->
color. The length of a color bar correlates to the percentage that the property value
holds in comparison with all other values for the property.
Meaningful log properties

Analyzing the logs around an anomaly to help find the alert's root cause in Health Log
Analytics
When Health Log Analytics identifies an anomaly, viewing the logs that surround the anomaly
provides clues about the state of faulting systems. This information can help you narrow down
the root cause of an alert.
While viewing a Log Analytics alert, the Surrounding logs tab lists the log lines that were
generated one minute before and one second after the anomaly occurred. The log lines
are related to the metric or pattern that triggered the alert. The list is filtered to the relevant
component.
Logs generated immediately before the anomaly might point to warning signs or conditions that
led to the issue. By reviewing these logs, you can trace the sequence of events that led to the
anomaly, helping you understand what went wrong. Logs created right after the anomaly can
help you evaluate the impact of the event by analyzing how the system responded and whether
other components were affected. The timeline of the logs around the anomaly can help clarify
what might have caused the issue, for example a configuration change or a software update.
You can modify the time range of the displayed log lines, for example to investigate logs from
more than one minute before the anomaly, or more than a second afterward.

Note: Logs that surround the anomaly are retained and available for 30 days after the
creation of the alert. The system does not delete these logs when the global retention
period of logs expires. When the retention period expires, the surrounding logs are
available only on the Surrounding logs tab and not in the Log viewer.
Health Log Analytics enables you to view the anomalous log data graphically on the Log viewer,
accessed from the Service Operations Workspace. The Log viewer displays a chart of the
frequency of anomalous log lines during one minute before and one minute after the Log
Analytics alert and lists the associated log lines. It automatically shows the query that relates to
the anomaly, the selected component, and the appropriate time filter. For more information, see
Reviewing the logs that are connected with an alert on the Log Viewer in Health Log Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4071


<!-- page 4072 -->
Related topics
Analyze log lines that surround an anomaly in Health Log Analytics
Analyze log lines that surround an anomaly in Health Log Analytics
View the log lines around an anomaly to help you identify the root cause of a Log Analytics alert.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
1. In the Service Operations Workspace, open a Log Analytics alert.
2. Select the Surrounding logs tab and review the information.
The tab displays the list of log lines that were generated one minute before and one second
after the Log Analytics alert. For an explanation of the information on the tab, see Surrounding
logs tab fields.
3. Optional: View a different timespan of the log lines using one of the following methods:
◦ Update the time range relative to the alert to a predefined time range in the Select range list.
◦ Specify a Start time or End time using the time picker.
4. Optional: View the anomalous log data graphically as a function of time by selecting Log
viewer.
For more information, see Reviewing the logs for an alert on the Log Viewer in Health Log
Analytics.
Reviewing the logs for an alert on the Log Viewer in Health Log Analytics
The Log Viewer tab lets you browse the logs for an alert by timestamp or time range, and
visualize anomaly frequency within a specific time period. Customizing the displayed data and
adjusting time filters enables you to better understand the framework in which the anomaly
occurred, helping you find the root cause faster.
The Log Viewer presents all data connected with the Log Analytics alert. It shows the query
that relates to the anomaly, the selected component, and the appropriate time filter. You can
personalize the displayed data, and manually adjust the time range without affecting the other
settings. The applied filters appear in the Filters pane. You can add or remove filters as needed
to show only the data you want to view.
The Log Viewer displays a chart of the frequency of anomalous log lines during one minute
before and one minute after the Log Analytics alert and lists the associated log data. This
information helps you identify trends leading up to and following the event, providing context for
root cause analysis.
As you analyze the logs for an alert on the Log Viewer, you can modify the query to fine-tune the
search, save useful searches, and share them with others. For a description of the information
displayed in the Log Viewer table, see Log Viewer table fields.
You can perform the following tasks on the Log Viewer:
• View log data for an alert in Health Log Analytics
View a chart of the frequency of anomalous log lines and the associated log data.
• Define, save, and share a search of log data in Health Log Analytics
Fine-tune the search query to help determine the causes of the issue, and save and share
useful searches.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4072


<!-- page 4073 -->
• Use or modify a saved log data search in Health Log Analytics
Use a saved search. As the owner of a saved search, you can modify the search values and
save your changes.
• Filter search results on the Log Viewer in Health Log Analytics
Apply filters to show only the data you want to view.
• Customize the Log Viewer table in Health Log Analytics
Add or remove columns in the table to show only the data you want to view.
If you discover an important metric in the log data, you can use it to define a new Log Analytics
alert rule. For more information, see Add a Log Analytics alert rule in Health Log Analytics.
Related topics
Analyzing the logs around an anomaly to help find the alert's root cause in Health Log Analytics
View log data for an alert in Health Log Analytics
View a chart of the frequency of anomalous log lines and the associated log data on the Log
Viewer.

Before you begin

Role required: evt_mgmt_operator, or evt_mgmt_admin

Procedure
1. Open the Log Viewer tab using one of the following methods:
◦ Navigate to Workspaces > Service Operations Workspace and select the Log Viewer icon
(

).

◦ While viewing log entries for an alert on the Surrounding logs tab, select Log Viewer.
2. Optional: Personalize the displayed data and how it is presented on the Log Viewer.
◦ Filter search results on the Log Viewer in Health Log Analytics to show only the data you
want to view.
◦ Customize the Log Viewer table in Health Log Analytics by adding or removing columns.
These features are supported in the Health Log Analytics application, Version 20.0.11 - July
2021, and the Health Log Analytics Viewer application, Version 20.0.4 - July 2021, available
from the ServiceNow Store .
3. Analyze log-based anomalies and added context to help you achieve faster mean time to
repair (MTTR).
For example, say you find a log line with errors found in a configuration file. On the Anomaly
card, a sudden spike on the chart indicates where the configuration file is generating the
errors. You can view additional key-value pairs extracted from the logs on the Meaningful log
properties card and find the affected application services and their related service offerings
on the Impacted services card. For greater context, you may want to investigate the logs that
surround the anomaly, locate the configuration file, and find the time frame where the issues
occurred.

What to do next

Use additional features on the Log Viewer to refine your search or define alerts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4073


<!-- page 4074 -->
• Modify the search query to fine-tune the search and save useful searches. See Define, save,
and share a search of log data in Health Log Analytics.
• If you discover important relationships in the log data, select Define alert to define the kind
of alert that should be triggered by the data. See Add a Log Analytics alert rule in Health Log
Analytics for instructions.
Related topics
Reviewing the logs for an alert on the Log Viewer in Health Log Analytics
Define, save, and share a search of log data in Health Log Analytics
Define, save, and share searches of log data to help determine the causes of Log Analytics
alerts.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
1. Open the Log Viewer using one of the following methods:
◦ Navigate to Workspaces > Service Operations Workspace and select the Log Viewer icon
(

).

◦ While viewing log entries for an alert on the Surrounding logs tab, select Log Viewer.
2. Define a search.
a. Select the selection icon (

) and then select New search.

b. Set the values of the search parameters in the search fields.
Search fields
Search field

Description

Query

Search query.

Tip: The Log viewer uses the
Elasticsearch search engine, so you
can use any supported search term
structure in the Query field.
Component

Logical component of the service instance
that generated the event. Multiple CIs can
sometimes perform the same function.

Time range

Time range to apply to the X-axis when
displaying the returned data. The setting
that you specify appears in the Start time
and End time fields. Use one of the following
methods:
▪ Select a time period from the list.
▪ Click Custom range to use the date and
time picker to specify a range.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4074


<!-- page 4075 -->
Search field

Description

Note: You can modify the settings

in the Start time and End time fields
manually. The selected time range
shown in Select range then changes
to Custom range. This feature is
supported in the Health Log Analytics
application, Version 20.0.11 - July 2021,
and the Health Log Analytics Viewer
application, Version 20.0.4 - July 2021,
available from the ServiceNow Store .

Note: Saved searches do not
include time range settings.

c. Select Search.
The system returns the full list of log lines that match the search values. The information is
displayed in the Results over time chart.
3. Optional: Save the search.
The saved search includes any selected filters. For information about filters, see Filter search
results on the Log Viewer in Health Log Analytics.

Note: Saved searches do not include time range settings.
a. Select Save As.
b. In the Search name field, specify a unique and descriptive name for the search and then
click Save.

Note: If you are using Health Log Analytics application, Version 20.0.11 - July 2021, and
the Health Log Analytics Viewer application, Version 20.0.4 - July 2021, available from
the ServiceNow Store
, you can define an alert rule without saving the search. For more
information, see Add a Log Analytics alert rule in Health Log Analytics.
4. Optional: Share the saved search with an assignment group.
a. Select Share.
b. Select an assignment group from the list.
c. Select Save.
Related topics
Use or modify a saved log data search in Health Log Analytics
Add a Log Analytics alert rule in Health Log Analytics
Use or modify a saved log data search in Health Log Analytics
Use a saved search of log data to better understand the causes of an alert. As the owner of a
saved search, you can modify the search values and save your changes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4075


<!-- page 4076 -->
Before you begin

Note: If you are not the owner of the saved search, save the search with a different name.
You can then update search values, save your changes, and share the search with others.
Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
1. Open the Log Viewer using one of the following methods:
◦ Navigate to Workspaces > Service Operations Workspace and select the Log Viewer icon
(

).

◦ While viewing log entries for an alert on the Surrounding logs tab, select Log Viewer.
2. Use a saved search.
a. Select the selection icon (

) and then select Load search.

b. In the Load search dialog box, select the name of the search to load.
The system returns the full list of log lines that match the search values and displays the
information in the Results over time chart.
3. Optional: Update the saved search.
a. Select the selection icon (
list.

) and then choose Manage my searches from the drop-down

b. Modify the settings.
Manage my searches form
Field

Description

Name

Name of the saved search.

Query

Search query.
(Optional) The Log viewer uses the
Elasticsearch search engine, so you can use
any supported search term structure in the
Query field.

Assignment group

Assignment groups that can access the
search. The members of the groups can use
the search.

Filter

Column filter in standard format
(field1=value1, field2=value2,
field3=value3, ...).

Updated

Date and time the search was updated.
(Optional) This feature is supported in the
Health Log Analytics application, Version
20.0.11 - July 2021, and the Health Log
Analytics Viewer application, Version 20.0.4
- July 2021, available from the ServiceNow
Store .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4076


<!-- page 4077 -->
To revert changes you have made to the search values, select the selection icon (
)
and then select Discard Changes. The changes that you made to the search values are
discarded. You can continue to update the search settings.
c. Save the updated search.
i. Select Save as.
ii. In the Search name field, specify a unique and descriptive name for the search and then
click Save.
Filter search results on the Log Viewer in Health Log Analytics
Apply filters on the Log Viewer to show only your desired data.

Before you begin

Role required: evt_mgmt_operator, or evt_mgmt_user, or evt_mgmt_admin

About this task

This feature is supported in the Health Log Analytics application, Version 20.0.11 - July 2021,
and the Health Log Analytics Viewer application, Version 20.0.4 - July 2021, available from the
ServiceNow Store .

Procedure
1. Open the Log Viewer using one of the following methods:
◦ Navigate to Workspaces > Service Operations Workspace and select the Log Viewer icon
(

).

◦ While viewing log entries for an alert on the Surrounding logs tab, select Log Viewer.
2. Define and run a search.
For more information, see Define, save, and share a search of log data in Health Log Analytics.
3. Filter the search results in one of the following ways.
Option

Description

a. Select the filter icon (

Add filters using the fields list

).

The Selected fields list includes the fields
that currently display as columns in the Log
Viewer table. By default, the table includes
the following columns: Application service,
Component, Host, Level, Message, Raw
message, and Time. The Available fields
list includes all remaining fields that the sys­
tem has extracted from the log.
b. Select a field in the list.

Note: You can search for a specific
field using the search option.
The top five values the system has found
in the records for this field are displayed,
along with the percentage of their occur­
rence.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4077


<!-- page 4078 -->
Option

Description

c. Define a filter for a value in the field.
▪ To display only data that contains a val­
ue, select Add for it.
For example, to set the filter [Level][is]
[critical], select Add for the value "criti­
cal" in the Level field.
▪ To create negative filters that exclude da­
ta that contains a value, select Exclude
for it.
For example, to set the filter [Level][is
not][critical], select Exclude for the val­
ue "critical" in the Level field.
a. In a column header, select the more actions
Add filters from the Log Viewer table

icon (

).

b. In the dialog box, select the operator and
specify the filter terms for the field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4078


<!-- page 4079 -->
Option

Description

c. Select Apply.
A filter icon in the column header indicates
that a filter applies for this field.
The applied filter appears at the top of the Filters pane. The total number of applied field value
filters in the Filter icon adjusts.

4. Optional: Remove a filter in one of the following ways.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4079


<!-- page 4080 -->
◦ In the Filters pane:
a. Locate the filter you want to remove.
b. Select Remove.
◦ In a column header:
a. Select the more actions icon (

).

b. Select the filter you want to remove.
c. Select Remove filter.
Customize the Log Viewer table in Health Log Analytics
Add or remove columns in the Log viewer table to show only the data you want to view.

Before you begin

Role required: evt_mgmt_operator, or evt_mgmt_admin

About this task

This feature is supported in the Health Log Analytics application, Version 20.0.11 - July 2021,
and the Health Log Analytics Viewer application, Version 20.0.4 - July 2021, available from the
ServiceNow Store .

Procedure
1. Open the Log Viewer using one of the following methods:
◦ Navigate to Workspaces > Service Operations Workspace and select the Log Viewer icon
(

).

◦ While viewing log entries for an alert on the Surrounding logs tab, select Log Viewer.
) to display the Filters pane.
2. Select the filter icon (
The Selected fields list includes the fields that currently display as columns in the Log viewer
table. By default, the table includes the following columns: Application service, Component,
Host, Level, Message, Raw message, and Time. The Available fields include all remaining fields
that the system has extracted from the log.
In the Service Operations Workspace Log Analytics application, Version 21.2.7 - November
2022 and later, available from the ServiceNow Store , the Log message column is added and
the Raw message column no longer displays by default. You can add the Raw message column
to the table by selecting it from the Filters pane.
3. Add or remove columns in the Log viewer table.
◦ To add a column to the table, select the field of the same name in the Available fields list and
then select the add icon (

).

The added field displays as a column in the table. It is now listed in the Selected fields list.
◦ To remove a column, select the field of the same name in the Selected fields list and then
select the remove icon (

).

The corresponding column is removed from the table. The removed field is added to the
Available fields list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4080


<!-- page 4081 -->
If you have filtered the data for specific values in a field, that data still displays even when
the field is no longer selected. For more information about filtering data, see Filter search
results on the Log Viewer in Health Log Analytics.

Note: The Time column can't be removed from the table.
4. Optional: Adjust the maximum number of characters per field in the table.
a. Navigate to Health Log Analytics > Health Log Analytics Administration > System
Properties.
b. Open the sn_occ.log_viewer.max.characters property record.
c. In the Value field, edit the default value.
d. Select Update.

Result

The Log viewer table shows the customized view from the current session onward until you
change your preferences.
Adding, changing, or deleting Log Analytics alert rules in Health Log Analytics
Add, change, or delete an alert rule that generates an alert for a specified metric.
For more information, see Use alert rules to control when Health Log Analytics generates alerts.
Add a Log Analytics alert rule in Health Log Analytics
Define a Log Analytics alert rule when you encounter log data that should generate an alert. The
alert rule generates an alert for a specified metric with a threshold that you specify and sets the
properties of the generated alert.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
1. Open the Log Viewer using one of the following methods:
◦ Navigate to Workspaces > Service Operations Workspace and select the Log Viewer icon
(

).

◦ While viewing log entries for an alert on the Surrounding logs tab, select Log Viewer.
2. Define and run a search.
For more information, see Define, save, and share a search of log data in Health Log Analytics.
3. When a search returns log data that should generate an alert, click Save or Save as to save the
search.

Note: If you are using Health Log Analytics application, Version 20.0.11 - July 2021, and
the Health Log Analytics Viewer application, Version 20.0.4 - July 2021, available from the
ServiceNow Store
, you don't have to perform this step.
4. Access the form for creating an alert rule by selecting Define alert at the top right of the Log
viewer tab.
5. On the form, provide the name and description for the alert rule.
The name appears on the Anomaly card for generated alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4081


<!-- page 4082 -->
6. Determine whether the rule generates alerts when the threshold conditions are met in the log
data by setting the State field.
To activate the rule, select Enabled.
7. If you have installed the Health Log Analytics application, Version 20.0.11 - July 2021 , set the
Severity value for the alert generated by this alert rule.
◦ Low: Attention is required even though the resource is still functional.
◦ Medium: Either performance has degraded or a partial, non-critical loss of functionality has
occurred.
◦ High: Major functionality is severely impaired or performance has degraded.
◦ Critical: Immediate action is required. Either the resource is not functional or critical
problems are imminent.
8. If you have installed the Health Log Analytics application, Version 20.0.11 - July 2021, and the
Health Log Analytics Viewer application, Version 20.0.4 - July 2021, fill in the details for the
query.
Query details
Field

Description

Your query

The query to search for in the log data.
By default, this is the query that was defined
on the Log viewer. You can modify the query
by adding search requirements to it.
To search for all queries, specify an asterisk
(*).

Active filters

The filters defined for the query on the Log
viewer. You can delete the filters.

Component

The component to which this alert rule
applies.
By default, this is the component that was
defined on the Log viewer. You can choose a
different component by selecting the search
icon ( ) in the Component row and then
selecting the required component from the
list.

9. Fill in the fields related to the threshold that will trigger the alert rule.
Threshold
Field

Description

Operator

Mathematical comparison operator that
qualifies how the hit count triggers an alert
of this kind. This field is automatically set to
Bigger Than.

Hit count

Number of matching log entries that serve as
the trigger for an alert of this kind.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4082


<!-- page 4083 -->
Field

Description

Time period

Period of time over which the hit count is
measured. The period is measured in the
units specified by the Time unit value.

Time unit

Units of the time period. This field is
automatically set to minutes.

Persistence

Time period over which the specified hit
count per unit time must persist in order
to trigger an alert of this kind. The field is
automatically set to 1 minute.

10. Select Save.
Change a Log Analytics alert rule in Health Log Analytics
Modify a Log Analytics alert rule that you have defined.

Before you begin

This feature is supported in the Health Log Analytics application, Version 20.0.11 - July 2021,
and the Health Log Analytics Viewer application, Version 20.0.4 - July 2021, available from the
ServiceNow Store .
Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
1. Open the Log Viewer using one of the following methods:
◦ Navigate to Workspaces > Service Operations Workspace and select the Log Viewer icon
(

).

◦ While viewing log entries for an alert on the Surrounding logs tab, select Log Viewer.
2. Open a defined alert.
a. Select the selection icon (
) at the top right of the Log viewer tab, and then choose
Manage my defined alerts from the drop-down list.
b. From the Defined alerts table, select the alert rule that you want to modify.
3. On the form, update the settings.
For a description of the settings, see Add a Log Analytics alert rule in Health Log Analytics.
4. Select Save to save your changes.
Delete a Log Analytics alert rule in Health Log Analytics
Delete a Log Analytics alert rule that you have defined if it is no longer necessary.

Before you begin

This feature is supported in the Health Log Analytics application, Version 20.0.11 - July 2021,
and the Health Log Analytics Viewer application, Version 20.0.4 - July 2021, available from the
ServiceNow Store .
Role required: evt_mgmt_operator or evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4083


<!-- page 4084 -->
Procedure
1. Open the Log Viewer using one of the following methods:
◦ Navigate to Workspaces > Service Operations Workspace and select the Log Viewer icon
(

).

◦ While viewing log entries for an alert on the Surrounding logs tab, select Log Viewer.
2. Open a defined alert.
a. Select the selection icon (
) at the top right of the Log viewer tab, and then choose
Manage my defined alerts from the drop-down list.
b. From the Defined alerts table, select the alert that you want to delete.
3. Select Delete.
Assigning higher or lower significance to an alert in Health Log Analytics
Label an alert as meaningful or insignificant, or restore normal importance to the metric involved
in generating it.
Mark an alert as significant in Health Log Analytics
Make an alert more likely to be included in a Log Analytics group when the associated metric
behaves anomalously by labeling the alert as meaningful.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
1. In the Service Operations Workspace, open a Log Analytics alert and then select Apply ML
feedback > Mark as significant.
2. Confirm the action in the dialog box.

Note: Processing this feedback might take a few seconds.
3. Optional: Restore the significant alert.
If you no longer want the significant alert to be treated specially, you can restore normal
significance to the alert metric. For more information, see Restore normal importance to an
alert metric in Health Log Analytics.
Mute an unimportant alert in Health Log Analytics
Eliminate distracting new alerts for insignificant issues by muting them.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

About this task

When you mute an alert that is based on the keyword metric or the pattern severity metric, the
system mutes the metric in the dominant pattern. The dominant pattern is the main pattern that
contributes to the anomaly. For the specified source only, anomalous behavior for the metric that
is associated with the muted alert no longer generates alerts. You can also mute the metric that is
associated with an unimportant alert for all components of the Application Service. A component
can be multiple CIs that perform the same function.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4084


<!-- page 4085 -->
Procedure
1. In the Service Operations Workspace, open the Log Analytics alert that you don't want to see
again.
2. Select Apply ML feedback
3. Mute the metric associated with the alert by doing one of the following:
◦ Select Mute alert metric to mute the metric for the specified source only.
◦ Select Mute alert metric for all components to mute the metric for all components of the
Application Service.
4. Confirm the action in the dialog box.

Note: Processing this feedback might take a few seconds.
5. Optional: Restore the muted alert.
If you no longer want the muted alert to be treated specially, you can restore normal
significance to the alert metric. For more information, see Restore normal importance to an
alert metric in Health Log Analytics.
Related topics
View the list of muted metrics in Health Log Analytics
Decrease sensitivity to similar anomalies in Health Log Analytics
Make anomaly detection less sensitive to anomalies like the one that triggered the current Log
Analytics alert.

Before you begin

Note: This functionality is not available for customer alerts and new signal alerts.
Role required: evt_mgmt_operator or evt_mgmt_admin

About this task

Selecting the Raise feedback option raises the threshold for generating alerts when Health Log
Analytics identifies future anomalies similar to the one that led to this alert.

Procedure
1. In the Service Operations Workspace, open a Log Analytics alert and then select Apply ML
feedback > Raise.

2. Confirm the action in the dialog box.

Note: Processing this feedback might take a few seconds.
3. Optional: Restore normal sensitivity to anomalies like the one that triggered this alert.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4085


<!-- page 4086 -->
a. While viewing the alert, select Remove feedback.
b. Confirm the action in the dialog box.
Restore normal importance to an alert metric in Health Log Analytics
Return normal significance to the metric involved in generating a Log Analytics alert. Use
this option if you no longer want an alert to be treated specially that was muted, marked as
significant, or made less sensitive to similar anomalies.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
1. While viewing a Log Analytics alert in the Service Operations Workspace, select Restore ML
feedback.
2. Confirm the action in the dialog box.

Result

The metric that is associated with the alert returns to normal importance.
Dashboards for real-time visualization of log data in Health Log Analytics
Health Log Analytics enables you to create log data dashboards and visualizations in real time for
enhanced data monitoring and faster identification of deviations.
Log data dashboards and visualizations can give you a high-level visual understanding of
important issues as they occur in the system. The Health Log Analytics data source of your
choice is used to ingest the data that is provided to the visualization. The log data is taken
directly from your stored logs, enabling you to create dashboards for any aspect of the data that
interests you. For example, by visualizing the components that are generating logs, you can get
an indication of the number of components that are fully integrated.
The data can be presented in various types of graphs and charts. You can adjust the time range
and the other settings of the visualization as needed.
This functionality is supported in the Service Operations Workspace Log Analytics application,
Version 21.2.7 - November 2022 and later, and has a dependency on the Platform Analytics
Workspace, available from the ServiceNow Store .
As an alternative to defining your own dashboard, you can use the AIOps dashboards, which
offer comprehensive visualizations of critical operational data. For more information, see AIOps
Dashboards in Service Operations Workspace for ITOM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4086


<!-- page 4087 -->
Example of a log data dashboard

Create log data dashboards and visualizations in Health Log Analytics
Build Health Log Analytics log data dashboards and visualizations in real time for easier
identification and understanding of issues.

Before you begin

This functionality is supported in the Service Operations Workspace Log Analytics application,
Version 21.2.7 - November 2022 and later, and has a dependency on the Platform Analytics
Workspace, available from the ServiceNow Store .
For detailed information about creating and working with dashboards, see Dashboards in the
Analytics Center .

Note: As an alternative to defining your own dashboard, you can use the AIOps
dashboards, which offer comprehensive visualizations of critical operational data. For more
information, see AIOps Dashboards in Service Operations Workspace for ITOM.
Role required: evt_mgmt_operator or viz_admin

Procedure
1. Navigate to Workspaces > Platform Analytics Workspace.
2. On the Analytics Center page, select the Dashboards tab.
This tab enables you to view all the dashboards you have rights to access on your instance.
You can filter the dashboard tiles to limit the number that are visible.

Note: If you want to use an existing dashboard, select the dashboard here to open it.
Otherwise, create a dashboard as explained in the remainder of this procedure.
3. Create a dashboard.
a. Select Create new dashboard.
b. In the New dashboard dialog, choose In-line editor and specify a name and optional
description for the dashboard.

Note: The in-line editor does not automatically save your work. Ensure that you save
regularly.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4087


<!-- page 4088 -->
c. Select Create new dashboard.
4. Add an element to the dashboard.
Various elements are available to help you organize and populate the information on the
dashboard. For more information, see Analytics Center dashboard elements .
a. Select Add new element.
b. Select Data visualization from the available elements.
The Data visualization element appears on the dashboard, where you can edit it.

Note: You can click and drag the corners of the element to resize it.
5. Edit the element.
a. On the element, select the Settings icon:

The Configuration panel opens.
b. From the Visualization type list, choose the type of visual representation you want for the
log data.
You can choose from various types of graphs and charts.
For detailed information, see Data visualizations in the Analytics Center

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4088


<!-- page 4089 -->
c. In the Data section, select + Add data source.
The Health Log Analytics data source that you select is used to ingest the log data that is
provided to the visualization.

d. Select the Health Log Analytics Log components data source.
e. Choose the required data source from these options:
▪ Saved searches – a list of all the searches you saved in the Log viewer.
▪ Select component – a list of all the components that stream data to Health Log Analytics.
f. Use Conditions, a Lucene query, or both to specify the data segment you're interested in and
then select Run.

g. Select Add this source to add the selected Health Log Analytics data source.
The specified visualization displays in the Data visualization element.
h. Optional: Set fixed start and end dates to customize the time range of the presented data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4089


<!-- page 4090 -->
(Optional)
i. In the Date range section, select Set absolute period.
ii. Specify the start and end date for the absolute period in the appropriate calendars.
i. Optional: Adjust the other settings of the visualization as needed.
(Optional) For detailed information on settings for all the visualization types, select the link
for the relevant type in Data visualizations in the Analytics Center .
j. Optional: Add more elements as needed.
k. Select Save to save your changes and continue editing.
l. Select Exit editing mode to stop editing and display the dashboard.
Related topics
Share a Platform Analytics dashboard
Monitor visualized log data on a predefined dashboard in Health Log Analytics
Use visualizations to monitor log data on the built-in Operational Dashboard in Service
Operations Workspace Log Analytics and address issues as they occur in the system.

Before you begin

Role required: evt_mgmt_operator or viz_admin

Important: From the Vancouver release onward, this feature is deprecated and
replaced with the AIOps HLA Operational dashboard. For more information about AIOps
dashboards, see AIOps Dashboards in Service Operations Workspace for ITOM. You can
also build a custom dashboard per your needs. For more information, see Create log data
dashboards and visualizations in Health Log Analytics.

Procedure
1. Open the Log Viewer using one of the following methods:
◦ Navigate to Workspaces > Service Operations Workspace and select the Log Viewer icon
(

).

◦ While viewing log entries for an alert on the Surrounding logs tab, select Log Viewer.
2. Select the selection icon at the top right of the Log viewer tab, and then choose Manage my
dashboards from the drop-down list.
The Operational Dashboard tab displays.
By default, the dashboard visualizes log data that was ingested in the last 24 hours.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4090


<!-- page 4091 -->
3. Optional: Change the time range for which data is shown by selecting the required range from
the Date drop-down.
You can specify a custom range by selecting Custom and then selecting the required start and
end dates.
4. Monitor the visualized log data and use it to identify and address issues.
Operational Dashboard
Name

Description

How to use the data

Logs processed

The number of logs that were
processed and analyzed in
the selected period.

Ensure that the log data is
streaming as expected.

Logs per Application Service

The number of logs streamed Ensure that log data is
for each application service
streaming as expected for
in the selected period.
each application service.

Error rate per Application
Service

The number of logs with
errors for each application
service in the selected
period.

Identify errors in the logs.

Note: Health Log
Analytics automatically
creates alerts for Error
anomalies.
Logs per Host

The number of processed
logs for each host in the
selected period.

Identify hosts that are logging
more data, or less data, than
expected.

Error rate per Component

The number of logs with
errors for each component in
the selected period.

Ensure that the components
have a normal Error rate.

Severity rate

The severity level rate of
the logs for the streaming
sources.

Ensure that Critical and Error
level rates are as expected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4091


<!-- page 4092 -->
Add a KB article to a Log Analytics alert
Add your own knowledge base (KB) article to an alert that was generated by Health Log Analytics.
For example, you can provide additional information that might help to resolve the underlying
issue.

Before you begin

This feature is supported in the Health Log Analytics application, Version 22.0.12 - December
2021 and later, and the Health Log Analytics Viewer application, Version 21.0.0 - December 2021
and later. These applications are available from the ServiceNow Store .
Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
1. Open a Log Analytics alert.
a. In the Service Operations Workspace, select the lists icon (

).

b. Select the appropriate list in the Alerts sub-list and navigate to the desired alert.
In the All Alerts list, alerts that were generated by Health Log Analytics have the value Log
Analytics in the Source column.
c. Select the alert number.
2. Select the more actions icon ( ) at the top right of the Details tab and then choose Create
KB article for this issue from the list.
3. On the form, fill in the fields.
Create New Knowledge form
Field

Description

Knowledge base

The knowledge base where the new KB
article is stored. By default, this value is the
Health Log Analytics knowledge base.

Workflow

(Read-only) The status of the KB article.
When you publish the article, its status
automatically changes from Draft to
Published.

Category

The category of the component that caused
the alert.

Short description

Summary of the KB article.

Article body

Content of the KB article.

4. Select Save.
5. When the content of the article is final, select Publish.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4092


<!-- page 4093 -->
Result

The KB article is added to the selected alert. You can search for and display the article in the
Agent assist
side panel. Health Log Analytics also uses your article to enhance similar alerts
with the same Event ID property or alert pattern.

Service Operations Workspace for ITOM reference
Reference topics provide additional information about ServiceNow Service Operations
Workspace.
Components installed with AIOps Experience
Several types of components are installed with activation of the AIOps Experience
[sn_sow_aiops] application, including user role and plugins.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Demo data is available for this feature.

Roles installed
Role title [name]

Description

Contains roles

evt_mgmt_user

Manages the alert lifecycle
and performs basic
operations, such as viewing
alerts.

itil

evt_mgmt_operator

Manages alerts, including
tasks such as closing and
acknowledging them.

evt_mgmt_user

evt_team_operator

Manages Event
Management operations
within a specific team as
defined in the Assignment
Group field. This role allows
the operator to read and
write alerts exclusively
for their assigned team.
Additionally, the operator
can make configuration
changes specific to their
team, including updates to
Alert Automation and the
Integrations Launchpad.

sn_sow_alert_rules.automation_create_nonglobal
sn_sow_alert_rules.automation_delete_nonglobal

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4093


<!-- page 4094 -->
Role title [name]

Description

Contains roles

Note: The
evt_team_operator
role must be assigned
to an assignment
group to view and
manage alerts for
that group. If the role
is created but not
associated with any
groups that have alerts
assigned, the operator
cannot see any alerts.
evt_mgmt_admin

Configures and sets
up Event Management
properties and rules.

evt_mgmt_user and
evt_mgmt_operator

Plugins installed
Plugin

Description

Event Management

Provides service-oriented availability and monitor events through an
intuitive console.

[com.glideapp.itom.snac]
Performance Analytics Premium
[com.snc.pa.em]

Provides core out-of-the-box Key Performance Indicators (KPIs) to
help monitor and enhance event management processes. Please
note that activating this plugin on production instances may require
a separate Performance Analytics license.

Performance Analytics
- Content Pack - Event
Management

Includes core out-of-the-box Key Performance Indicators (KPIs).
Activating this plugin on production instances may require a
separate Performance Analytics license.

[com.snc.pa.premium]
To return to the procedure, see Install Service Operations Workspace for ITOM application.
Attributes in Express List Link View
The table lists the node attributes available in Link View with their icon and description.

Note: "Attribute" is a generic term that represents fields and tags found on the alerts or
configuration items (CI).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4094


<!-- page 4095 -->
Attributes in Link View
Attribute name

Icon

Description

Impacted service

Service in the Configuration
Management Database
(CMDB) impacted by an alert
on a CI.

Resource

Node resource that is relevant
to the event. For example,
Disk C, CPU-1, the name of a
process, or service. Maximum
length: 100 characters.

Source

Event monitoring software
that generated the event,
such as SolarWinds or
SCOM. Maximum length: 100
characters.

Region

Predefined attribute extracted
from connector payload.

Location

Predefined attribute extracted
from connector payload.

Assignment group

Alert assignment group.

Environment

Predefined attribute extracted
from connector payload.

Metric

Unique name that describes
which metric data is collected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4095


<!-- page 4096 -->
Attributes in Link View (continued)
Attribute name

Icon

Description

IP address

Predefined attribute extracted
from connector payload.

CI

JSON string that represents
a configuration item. For
example, {"name":"SAP
ORA01","type":"Oracle"}.
The CI identifier that
generated the event appears
in the Additional information
field. Maximum length: 1000
characters.

Node

Node name, fully qualified
domain name (FQDN), IP
address, or MAC address that
is associated with the event,
such as IBM-ASSET. Maximum
length: 100 characters.

Application

Predefined attribute extracted
from connector payload.

Process

A process or a cluster of
processes running on the
host that are identified by the
horizontal discovery.

Component

A logical part of a service
instance where the alert was
detected, with one component
shown for each child alert.

Service

Attribute extracted from the
log file. The impact of this alert
on the service might not be
clear or defined.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4096


<!-- page 4097 -->
Attributes in Link View (continued)
Attribute name

Icon

Description

Host

Attribute extracted from
the log file. It might not be
identified in the CMBD.

User

Attribute extracted from the
log file.

Account

Attribute extracted from the
log file.

Path

Path or route extracted from
the log file.

Request id

The request ID extracted from
the log file.

URL

Web address or URL extracted
from the log file.

Detection

An identified anomaly on a
metric measured by Health
Log Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4097


<!-- page 4098 -->
Attributes in Link View (continued)
Attribute name

Icon

Other

Description

User-defined attribute.

Note: This attribute

Note: All the other

is user-defined. All
the other attributes
are predefined in the
system.

attributes are predefined
in the system.

Lines linking attributes
Link

Visual representation

Description

Solid line

Solid line linking attributes
in Link View, indicating
that the attributes share
one or more alerts.

Dotted line

Dotted line linking
attributes in Link View,
indicating that the
attributes are correlated
by grouping criteria.

Alert field mapping on the Respond page
The fields to be configured on the Respond page, when selecting an action to be triggered by an
alert automation.
Select automation actions fields
Field

Description

Incident field name

Name of the field that will appear in the incident.

Map field

Option that indicates how the incident field is to be mapped:
• Same as: The selected incident field will have the same
value as the indicated alert field.
• To: The selected incident field will be set to a specified
value.

Alert field value

Value that will be set in the alert field:
• If you select Same as in the Map field column, the alert
field value that you want to appear in the incident field also
appears in the Incident field name column.
• If you select To in the Map field column, enter the alert
field value that you want to appear in the specified incident
field.

To return to the procedure, see Create Respond automation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4098


<!-- page 4099 -->
Outbound webhook parameters
The parameters to be configured when sending data to other systems using an outbound
webhook.
Outbound webhook parameters
Parameter

Definition

Destination URL field

The webhook endpoint (URL) where the alert is to be sent.

JSON payload data tab

The alert data, composed in JSON format, being sent to the
indicated URL.
Enter the details you want to be notified about in the JSON
object when the automation is triggered. You can insert
alert fields by selecting Insert Field Values or add custom
fields by typing {custom_field.JSON_path}.
To add additional alert fields, select Insert alert fields.

Payload headers

Add predefined or custom metadata headers in the Key
and Value fields. A key is the name of a header field, and
a value is the corresponding data assigned to that header
field.

Test payload

Select to verify that the webhook is functioning correctly
and that the receiving system can process the data as
expected.

To return to the procedure, see Create Respond automation.
Application service details page
Provides comprehensive information about an application service, including its name, business
criticality, ownership, process and operational status, traffic-based discovery details, discovery
status, and relevant comments. This enables thorough analysis of the application service's
current state and usage, provides clarity on ownership and criticality, and aids in prioritizing
resources and actions effectively.
Application service details page fields
Field

Description

Name

Name of the application service.

Business criticality

Importance level of the service to business operations.

Owned by

Person or team responsible for managing and overseeing
the service.

Process Status

Current stage or status of the service's operational
processes.

Operational status

Current stage or condition of the service's operational
processes, showing whether it is functioning smoothly or
encountering issues.

Traffic based discovery

Option to identify service instances based on network traffic
patterns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4099


<!-- page 4100 -->
Application service details page fields (continued)
Field

Description

Discovery status

System's ability to locate and recognize the service within its
network.

Comments

Additional notes or pertinent information regarding
the service that may be helpful for understanding its
management or usage.

To return to the procedure, see View application service details in Service Operations
Workspace.
Create list fields
Create customized lists with fields tailored to your needs.
The form you complete varies depending on whether you choose to base your list on an existing
one (Start from existing) or create a new list (Create your own).
Start From Existing form
Field

Description

List

Existing list that you want to modify.

List Name

Name for your list. The default name in this
field is the name of the existing list in the List
field with - Copy appended.

Select columns

Record fields to include in list view. The
columns from the list you selected appear. You
can add or remove columns to modify the list.

Add Filters

Condition used to filter the list. By default the
conditions applied to the list selected appear.
You can modify this condition.

Create Your Own form
Field

Description

List Name

Name for your list.

Select Source

Source table for the records.

Select columns

The columns to display in the list. This field is
populated with columns from a Workspace list
view if one exists. If a Workspace list doesn't
exist, the columns are populated with the
Default list view of the table selected.

Add filters

Condition used to filter the list.

To return to the procedure, see Create a list in Service Operations Workspace for ITOM
Metrics View Configuration form fields
Define how metrics are displayed within Service Operations Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4100


<!-- page 4101 -->
Metrics View Configuration form
Field

Description

Title

Name of the metric.

Active

Option to activate the metric.

Order

Numerical value indicating the order of the metric on the
page.

Configuration Item Type

Configuration item type. Available options are:
• cmdb_ci_app_server_tomcat
• cmdb_ci_metric_extension
• cmdb_ci_app_win_server

Source Metrics Types

Metric types you want the metric to monitor.
Select the Lock icon ( ) to unlock the list of source metric
types and select metric types to be monitored.

Chart Type

Type of chart in which the metric is presented in Service
Operations Workspace, either Line or Stacked Bar.

To return to the procedure, see Configure alert metrics.
Integration and configuration health event fields
Populate the event fields to capture details such as the event time, description, alert number,
state, severity, metric name, node, message key, and error message, enabling precise tracking,
effective incident management, and improved error analysis.
Event fields
Field

Description

Time of Event

Indicates when the event occurred.

Description

Provides details about the event or incident.

Alert

Specifies the alert number that is triggered based on the event.

State

Describes the current state of the event (e.g., open, closed).

Severity

Indicates the severity level of the event (e.g., critical, warning).

Metric Name

Identifies the specific metric associated with the event.

Node

Specifies the node or device related to the event.

Message Key

Unique identifier for the event message.

Error Message

Provides additional information about any errors associated with the
event.

To return to the procedure, see Review integration and configuration health.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4101


<!-- page 4102 -->
Dynatrace advanced settings fields
Populate the pull connector advanced settings fields to optimize event retrieval and
synchronization based on specific requirements such as connection preferences, event
frequency, and time zone settings.
Dynatrace advanced settings fields
Field

Description

Base API path

Root URL or endpoint used to connect to the
Dynatrace Metrics API. All API requests are made
relative to this base path.

Initial sync in mins

Time, in minutes, that the system takes to complete
the first synchronization of data with the Dynatrace
Metrics API.
For example, if the value is 15, the connector fetches
metrics from the past 15 minutes.
Default: 15

Max metrics per query

Maximum number of metrics that can be requested
in a single query to the Dynatrace Metrics API. The
value cannot exceed 32, the maximum limit allowed by
Dynatrace. Requests exceeding this limit must be split
into multiple queries.
Default: 32

Page Size

Number of records returned in a single response when
querying the Dynatrace Metrics API. If the total results
exceed this number, multiple pages are returned.
Default: 500

Port

Port number used for connecting to the Dynatrace
server.

Request per minute

Maximum number of API requests that can be sent
to the Dynatrace Metrics API within one minute.
Exceeding this limit may result in throttling or
temporary blocking of requests.

Note: Relevant only when you enable Throttle
API calls.

Default: 1000
Throttle API calls

Limits the rate of API requests to the Dynatrace
Metrics API, preventing overload, request failures, or
temporary blocking.
Enable this option to automatically limit the rate of
API requests, preventing overloading the Dynatrace
Metrics API and avoiding request failures.
Default: false

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4102


<!-- page 4103 -->
Dynatrace advanced settings fields (continued)
Field

Description

Protocol

Communication protocol used for retrieving events
from Dynatrace server.
Default: https

Debugging

• Debug: Provides detailed logs for troubleshooting.
• Log payload: Displays raw log data. Use only for
debugging, as it can quickly fill the MID Server logs.

To return to the procedure, see Configure Dynatrace metric pull connector.
Pull connector fields
Populate the pull connector advanced settings fields to optimize event retrieval and
synchronization based on specific requirements such as connection preferences, event
frequency, and time zone settings.
Advanced settings fields
Field

Description

Connected MID Server

Determine whether you want to have the system choose the
optimal MID Server or choose a specific MID Server yourself.
Perform only if you must make modifications to the MID
Server otherwise leave it empty and let the system choose the
optimal MID Server.

Event collection schedule
(seconds)

Enter the frequency in seconds that indicates how often the
system should check for new events from the external event
source. The value can’t be lower than the minimum schedule
property, which by default is 120 seconds.

Protocol

Defines the communication protocol used for retrieving
events from external devices.

severity_by_state_type

Determines the severity level assigned to events based on
their state type.

time_zone

Specifies the time zone used for recording and displaying
event timestamps.

offset_min

Sets the time offset for event retrieval to ensure accurate
synchronization.

Port

Verify the default values for your connector type such as port
details or time formats and modify them as necessary. Default
values from your connector are filled-in. Specifies the port
number used for communication with external devices.

max_fetch_interval_min

Limits the maximum interval between event fetch operations.

initial_sync_in_days

Sets the duration for the initial synchronization process when
retrieving historical data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4103


