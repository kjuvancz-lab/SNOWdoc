# Zurich IT Service Management — ITSM dashboards / IT Agent dashboard for Service Operations Workspace / Platform Analytics KPIs and dashboards

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 3713–3722 of 3857

Sections: ITSM dashboards (p3713); IT Agent dashboard for Service Operations Workspace (p3714); Platform Analytics KPIs and dashboards (p3715)

---

<!-- page 3713 -->
To

Do this

a. Click the personalize icon.
Configure the Vendor Score Metric Model
list

b. Move Domain from the Available to the
Selected column.
c. Click OK.
a. From the list, select a vendor score metric
model.

Configure a Vendor Score Metric Model
form

b. Right-click the context menu icon and se­
lect Configure > Form Layout. Make sure
you are in the Vendor Manager Workspace
section.
c. Move Domain from the Available to the
Selected column.
d. Click Save.

Quick start tests for Vendor Management Workspace in configurable
workspace
Validate that Vendor Manager Workspace still works after you make any configuration change
such as apply an upgrade or develop an application. Copy and customize these quick start tests
to pass when using your instance-specific data.
Vendor Management Workspace quick start tests require activating the Vendor Manager
Workspace plugin (com.snc.vlm.vmw) and loading demo data.
Vendor Management Workspace - Tests test suite
Test

Description

Release version

VLM: Create a Vendor

Track problems with the
Vendor Manager Workspace
plugin after upgrade. Create a
new vendor.

New York

Related topics
Quick start tests

Platform Analytics ITSM Dashboards
The ITSM Dashboards content pack provides several Platform Analytics Solutions that contain
preconfigured dashboards. This content pack also includes several dashboards and indicators
of its own. These dashboards contain actionable data visualizations that help you improve your
business processes and practices.
Alternatively, executives and managers can use the metrics in the ITSM Success Dashboard
to make informed decisions. For more information, see Exploring ITSM Success Dashboard
indicators. Agents can use the IT Agent dashboard in Service Operations Workspace to
obtain information about their work and their group's work. For more information, see IT Agent
dashboard for Service Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3713


<!-- page 3714 -->
Platform Analytics data visualizations use Performance Analytics indicator data to show you data
over time, helping you analyze your business processes and identify areas of improvement. With
Platform Analytics Solutions, you can get value from Performance Analytics for your application
with minimal setup. You can always create your own objects as well.

Note: For more information on activating the Analytics subscription see, Activating your
Performance Analytics subscription
Related topics
Activate your Performance Analytics subscription

IT Agent dashboard for Service Operations Workspace
View the closed incidents that belong to you and your assignment groups through personalized
metric visualization.
Navigate to Workspaces > Service Operations Workspace.
Select the Dashboard icon

to view the dashboard.

Procure the ITSM Pro package subscription to get additional performance analytics features.
For more information on performance analytics subscription, see Activating your Performance
Analytics subscription .
You can monitor data by any of the following time aggregations.
• Weekly: View the data aggregated weekly. For counts, this data is the weekly sum of the daily
values. For percentages, this data is the weekly average of the daily percentages.
• Monthly: View the data aggregated monthly. For counts, this data is the monthly sum of the
daily values. For percentages, this data is the monthly average of the daily percentages.
• Quarterly: View the data aggregated quarterly. For counts, this data is the quarterly sum of the
daily values. For percentages, this data is the quarterly average of the daily percentages.
• Yearly: View the data aggregated yearly. For counts, this data is the yearly sum of the daily
values. For percentages, this data is the yearly average of the daily percentages.
Once the time aggregation is set, all the score-cards show the data for that period.
You can also view the summary for Today, Yesterday, Last 6 months, and Custom range time
period.

End user and roles
End user and goal

Required role

itil

View only the incidents in the base system.
The user with itil role can also view the metrics
related to change, problem, and request if the
administrator has configured in the Service
Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3714


<!-- page 3715 -->
Data visualizations
Title

Description

Average resolution time

Average resolution time of resolved incidents

Closed incidents

Number of closed incidents is measured daily

Incidents that missed SLA

Number of incidents missed SLA is measured
daily

Percent of incidents resolved without
reassignment

Percentage of incidents resolved by first
assigned group

Average age of open incidents

Average age of open incidents

Percent of incidents resolved on same day
opened

Percentage of incidents resolved on the same
day opened

Manage the dashboard in Service Operations Workspace
Add or edit the cards that are to be viewed on the IT Agent Dashboard in Service Operations
Workspace.

Before you begin

Note: This dashboard is applicable to all the itil users and user groups.

Role required: admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select Dashboard icon (

).

3. Select Edit.
4. Select the Add new element drop-down, and then select the element to be added to the
dashboard.
For more information to edit a dashboard, see Edit Platform Analytics dashboards .

Platform Analytics KPIs and dashboards
Use the dashboards to monitor the operational KPIs and identify areas for improvement, optimize
processes, to achieve their strategic goals.
An operational KPI is a quantifiable measure that tracks the efficiency and effectiveness of dayto-day operations in your organization. The KPIs can be organized in a dashboard that highlights
the areas that are running efficiently and the areas that need attention.

Note:
• Ensure the itsm_analytics application is activated in the instance.
• These user-friendly and comprehensive Next experience dashboards are designed for
easy navigation and quick access to all the required information.
By monitoring operational KPIs, you can identify areas for improvement, optimize processes, and
ultimately achieve their strategic goals. Here are some techniques to use the operational KPIs:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3715


<!-- page 3716 -->
• Ensure your KPIs match your organization’s business goals. Define your KPIs that contribute to
achieving those objectives.
• Focus on the most critical KPIs that add value to the organization’s growth.
• Track and review KPIs regularly. Monitor your progress and modify the KPIs as required by the
organization’s goals.
• Use data to drive decisions: Identify trends, uncover root causes, and use insights to improve
processes and performance.
• Use the data to identify trends and use insights to improve processes and performance.

Incident management dashboard
Dashboard providing a view into process metrics related to Open and Closed incidents.

Incident
KPI (Performance Analytics
Indicator)

Data Visualization

Description

Overdue incidents

Number of open incidents that Number of open and overdue
are pass the due date.
incidents

Incidents nearing SLA

Percentage of the incidents
Incidents nearing SLA
nearing the SLA threshold.
threshold
This is based on the
percentage of SLA elapsed
where the elapsed percentage

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3716


<!-- page 3717 -->
Incident (continued)
Data Visualization

Description

KPI (Performance Analytics
Indicator)

is between 50-75%,76- 85%,
86-95%, above 95%.
Open incidents not updated

Number of open incidents that Number of open incidents
aren't updated as per the age.
This is categorized as per the
age of an incident that are
between 1-5, 6-10, 10-30, and
greater than 30 days.

Incidents created (by priority)

Distribution of the Incidents
created priority wise

Number of incidents created

Incidents by activity channel

Total number of closed
incidents created from
different sources.

Number of resolved incidents

Mean time to resolve an
incident (by priority)

Mean time to resolve the
incidents priority wise

Incident MTTR

Average incident
reassignment

Average number of times that
incidents were reassigned.

Average incident
reassignment

% high priority incidents

Percentage of P1 and P2
% high priority incidents
incidents that are successfully
closed

Average number of incidents
created per user

Average number of the
Average number of incidents
incidents that are created by a created per user
specific user

% Incidents associated with
Problem

Percentage of the incidents
that are associated with
problem

Total outages due to incidents Total outages in hours
because of incidents.

% Incidents with associated
Problem
Total outages due to incidents

Major incident dashboard
Dashboard providing a view into the process and communication related metrics for Open and
Closed major incidents.
KPIs for Major Incident.
Major incident
KPI (Performance Analytics
Indicator)

Data Visualization

Description

Overdue major incidents

Number of the major incidents Overdue major incidents
that have breached the SLA.

Open major incidents (by age
and assignment)

Total number of open major
incidents assigned/not

Open major incidents (by age
and assignment)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3717


<!-- page 3718 -->
Major incident (continued)
Data Visualization

Description

KPI (Performance Analytics
Indicator)

assigned distributed over the
age.
Open major incidents (by
services and state)

Distribution of major incidents Open major incidents (by
between various services and services)
state.

Major incidents nearing
resolution SLA

Percentage of the major
Major incidents nearing
incidents nearing the
resolution SLA
SLA. This is based on the
percentage of SLA elapsed
where the elapsed percentage
is between 50-75%,76- 85%,
86-95%, above 95%.

Closed major incidents (by
services)

Distribution of closed major
incidents between various
services.

Closed major incidents (by
services)

Mean time to take actions on a Average time taken for a major Mean time to resolve a major
major incident
incident to be proposed,
incident
acknowledged and resolved.
% Major incidents breached
SLA

Percentage of major incidents
that breached SLA.

% Major incidents breached
SLA

% Major incidents closed
without post incident report

Number of major incidents
% Major incidents closed
that are closed without having without post incident report
a post incident report (PIR).

% Major incidents associated
with problems

Percentage of the major
incidents associated with
problems.

% Major incidents associated
with problems

Outages due to major
incidents

Total outages (in hours)
caused due to major
incidents.

Outages due to major
incidents

Change dashboard
Dashboard providing a view into Change request workflow with metrics around successful and
failed Change Request for different Change models and types.
KPIs for Change.
Change KPIs
KPI (Performance Analytics
Indicator)

Data Visualization

Description

Open changes (by age and
priority)

Priority wise distribution of the Number of open changes
open change requests priority
wise. This is categorized in
days between 0-1, 2-5, 6-30,
31-90, and above 90 days.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3718


<!-- page 3719 -->
Change KPIs (continued)
Data Visualization

Description

KPI (Performance Analytics
Indicator)

Open emergency changes (by Priority wise distribution of the Number of new emergency
age and priority)
emergency change requests
changes
that are still open. This is
categorized in days between
0-1, 2-5, 6-30, 31-90, and
above 90 days.
New change request (by risk)

Distribution of the new change Number of new changes
requests by risk.

Average age of open changes
(by risk)

Average age of a change
requests based on risk.

Average age of open changes

Closed changes (by priority)

Priority wise distribution of
the changes requests that are
successfully closed.

Number of closed changes

Mean time to close a change
(by priority)

Mean time to close the
change request priority wise.

Mean time to close a change

Incidents caused by change
requests

Total number of incidents
that are created because of a
change request.

Incidents caused by change

% Unauthorized changes

Percentage of the
% Unauthorized changes
unauthorized change requests
that are created.

Outages due to change

Total outages in hours
because of change.

Outages due to Change

Change Success Score KPIs
KPI (Performance Analytics
Indicator)

Data Visualization

Description

Change success score (by
assignment group)

Distribution of the change
requests by assignment
group.

Change success scores

% Successful change with
issues (by model and type)

Distribution of the change
requests closed with issues
distributed by change model
and change type.

% Successful changes with
issue

% Successful change without
issues (by model and type)

Distribution of the change
requests that are successfully
closed with some issues by
change model and change
type.

% Successful changes

% Failed changes

Percentage of the change
requests that are not
successfully completed.

% unsuccessful changes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3719


<!-- page 3720 -->
Note: Access all the change success score related metrics categorized under the Change
Success Score tab in the Change Management dashboard.

Request dashboard
Dashboard providing a view into process metrics related to Open and Closed Requested items.
KPIs for Request.
Request
Data Visualization

Description

KPI (Performance Analytics
Indicator)

Open requested items (by
stages)

Distribution of the requested
items that are open by stages.

Number of open requested
items

Open requested items (by
states)

Distribution of the requested
items by state.

Number of open requested
items

Active requested items due
within 5 days

Total number of open
requested items that are due
in 5 days.

Active RITMs nearing due date

Open requested items (by
age)

Distribution of the requested
items in open state. This is
categorized in days between
0-1, 2-5, 6-30, 31-90, and
above 90 days.

Number of open requested
items

Mean time to fulfill a
requested item

Average time taken to fulfill a
requested item.

Mean time to fulfil a requested
item

Mean time to fulfill a
requested item (by category
and catalog items)

Mean time to fulfill a
requested item for different
catalog categories and
catalog items.

Mean time to fulfil a requested
item

Closed requested items (by
states)

Distribution of the requested
items by their closed state
i.e. Skipped, Complete,
Incomplete.

Number of closed requested
items

Request items created from
various channels

Distribution of the requested
items created from different
sources.

Requested Items: Channel
analytics

Requested items from
incidents (by category and
catalog items)

Requested items created from RITMs from Incidents
incidents for different catalog
categories and catalog items.

Service Catalog dashboard
Dashboard providing a view into metrics for catalog items.
KPIs for Service Catalog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3720


<!-- page 3721 -->
Service Catalog KPIs
Data Visualization

Description

Catalog Item best practice deviations

Number of deviations from the best practices
for active catalog items.

Catalog item VA render type

Catalog items distributed by how they will be
rendered on a Virtual Agent bot.

Catalog item fulfilment automation level
distribution

Distribution of the catalog items that are
fulfilled automatically.

Catalog item translation coverage

Language wise distribution of the catalog
items that are translated.

Interaction dashboard
Dashboard with distribution and process metrics for Interaction.
KPIs for Interaction.
Interaction KPIs
Data Visualization

Description

Interactions with task associated (by task type) Number of interactions that are associated
with a task and are distributed by task type.
% First call resolution

Percentage of the interactions that are closed
in the first call and no tasks are created.

Closed interaction (by channel)

Distribution of the closed interactions created
from different channel.

Problem dashboard
Dashboard providing a view into Problem Management related metrics for Open and Closed
Problem records.
KPIs for Problem.
Problem KPIs
KPI (Performance Analytics
Indicator)

Data Visualization

Description

Open problems (by age and
priority)

Problems currently open
distributed over age and
priority.

Open problems (by state and
age)

Problems currently open
Number of open problems
distributed over age and state.

% open critical problems (by
state)

Percentage of critical problem
that are categorized by state.

% open problems classified as Percentage of problem with
known error
associated Known Error
articles.

Number of open problems

% of open critical problems
% of open problems classified
as known error

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3721


<!-- page 3722 -->
Problem KPIs (continued)
Data Visualization

Description

KPI (Performance Analytics
Indicator)

Average reassignment of open This is the average number
problems (by category)
of times problems have been
reassigned.

Average re-assignment of
open problems

Closed problems (by age and
priority)

Closed problems by age and
priority.

Number of closed problems

Mean time to close a problem

Average time taken to close a
problem.

Average close time of
problems

On-call dashboard
Dashboard providing view into the performance of On-call Escalations handled by the team.
KPIs for On-Call Scheduling.
On-Call Scheduling KPIs
Data Visualization

Description

KPI (Performance Analytics
Indicator)

Active escalations (by priority Priority wise distribution of on- Active Escalations
and acknowledgement status) call escalations based on their
escalation status.
Acknowledged escalations
(by level, shift and groups)

Distribution of acknowledged
escalations based on level/
shift/groups.

Acknowledged Escalations

Acknowledged escalations
(by channel)

Number of acknowledged
escalations in a specified
period of time.

Acknowledged Escalations

Acknowledged escalations
level (by user)

Displays the average level at
which the user acknowledges
the escalation.

Acknowledged escalations
level

Escalations not acknowledged Distribution of escalations
(by level, shift and groups)
that are not acknowledged by
level/shift/groups.

Unacknowledged Escalations

Contact attempts
acknowledged

Total count of contact
attempts acknowledged
based on level and contact
attempts.

Count of Contact Attempts
Acknowledged

% Escalations acknowledged
(by groups)

Percentage of the escalations
that are acknowledged.

% of Acknowledged
Escalations

% Escalations not
acknowledged (by groups)

Percentage of the escalations
that are not acknowledged.

% of Unacknowledged
Escalations

Mean time to acknowledge an Mean time to acknowledge
escalation (by group)
an escalation based on
escalation level.

Average Escalation
Acknowledgment

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3722


