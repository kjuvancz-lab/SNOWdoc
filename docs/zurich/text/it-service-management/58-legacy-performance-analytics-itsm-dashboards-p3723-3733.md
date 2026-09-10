# Zurich IT Service Management — Legacy: Performance Analytics ITSM Dashboards

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 3723–3733 of 3857

Sections: Legacy: Performance Analytics ITSM Dashboards (p3723)

---

<!-- page 3723 -->
On-Call Scheduling KPIs (continued)
Data Visualization

Description

KPI (Performance Analytics
Indicator)

Mean time to acknowledge an Mean time to acknowledge
escalation (by level)
an escalation based on
escalation level.

Average Level
Acknowledgment

Average time to acknowledge
escalation notification

Average time taken to
acknowledge the escalation
notification.

Average time to acknowledge
escalation notification

Total On-call hours (by user)

Total number of hours the user Total On-call hours
was available for On-call.

Legacy: Performance Analytics ITSM Dashboards
The ITSM Dashboards content pack provides several Platform Analytics Solutions that contain
preconfigured dashboards. This content pack also includes several dashboards and indicators
of its own. These dashboards contain actionable data visualizations that help you improve your
business processes and practices.

Important: Alternatively, executives and managers can use the metrics in the ITSM
Success Dashboard to make informed decisions. For more information, see Exploring
ITSM Success Dashboard indicators. Agents can use the IT Agent dashboard in Service
Operations Workspace to obtain information about their work and their group's work. For
more information, see IT Agent dashboard for Service Operations Workspace.
Platform Analytics data visualizations use Performance Analytics indicator data to show you data
over time, helping you analyze your business processes and identify areas of improvement. With
Platform Analytics Solutions, you can get value from Performance Analytics for your application
with minimal setup. You can always create your own objects as well.
To enable the solution plugin for ITSM dashboards, an admin can navigate to System Definitions
> Plugins and activate the Performance Analytics - Content Pack - ITSM Dashboards plugin.

Inactive dashboards
Some dashboards in this content pack are inactive when installed. Complete configuration and
run data collection jobs before you activate these dashboards. You can activate dashboards in
Dashboard Properties, accessible from the context menu. You have to assign an owner to the
dashboard to activate it.

Add Self-Service Analytic widgets to the ITSM dashboards
If you have Self-Service Analytics activated on an instance, you can add Self-Service
analytics widgets to your Performance Analytics dashboards or a Service Portal. To obtain
a ready-made set of indicators and breakdowns, activate the Self-Service Analytics PA
(com.snc.pa.self_service_analytics) plugin. Find the Self-Service indicators
through the Performance Analytics Admin Console, then create widgets and add them to your
dashboard or portal. Also activate the [SSA] Self-Service Analytics data collection job.
Related topics
Activate your Performance Analytics subscription

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3723


<!-- page 3724 -->
Legacy: IT Executive dashboard
See a high-level view across all of ITSM.
IT executives can use the ITSM Success Dashboards to view the metrics for ITSM.

End user and roles
End user and goal

Required role

IT Executive

None

Indicators
% of new critical incidents
The result of the formula ( [[Number of new incidents > Priority =
1 - Critical]] / [[Number of new incidents]] ) * 100
% of new critical problems
The result of the formula ( [[Number of new problems > Priority =
1 - Critical]] / [[Number of new problems]] ) * 100
% of open incidents not updated in last 5 days
Number of open incidents not updated in last 5 days as a percentage of
number of open incidents, according to the formula ( [[Number of open
incidents not updated in last 5 days]] / [[Number of open
incidents]] ) * 100.
% of open requested items before due date
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3724


<!-- page 3725 -->
The result of the formula ( [[Number of open requested items
before due date]] / [[Number of open requested items]] )
* 100
% of overdue requested items
The result of the formula 100 - [[% of open requested items before
due date]]
Active Breached SLAs Today
The result in percentage of the formula ([[Number of breach task sla
today]]/[[Number of active task sla]])*100
Average age open incidents
The result, in days, of the formula [[Summed age of open incidents]] /
[[Number of open incidents]] / 24
Average Cost per Resolved Incident - Weekly
The result of the formula [[Cost of Incidents Resolved / By week
SUM +]]/[[Number of resolved incidents / By week SUM +]].
In other words, the weekly sum of the cost of resolved incidents, including partial
weeks, divided by the weekly sum of resolved incidents, including partial weeks.
Average reassignment of open incidents
The result of the formula [[Summed re-assignment of open
incidents]] / [[Number of open incidents]]
Average resolution time of resolved incidents
The result of the formula [[Summed duration of resolved
incidents]] / [[Number of resolved incidents]] / 24
ITSM Average Overall Customer Satisfaction
Average of the normalized score for the Customer Satisfaction survey, as a result of
the formula [[ITSM normalized satisfaction score]] / [[ITSM
survey instances]]
Number of new incidents
The number of incidents opened today
Number of new problems
The number of incidents opened today
Number of open incidents
Number of incidents with no Resolved date
Number of open incidents not updated in last 5 days
Number of open incidents with an Updated date of more than five days ago
Number of open requested items
Number of requests with a registration date on or before today and no closed date,
or a closed date after today
Number of open requested items before due date
Number of requested items open today (before midnight on collection date) and a
due date after midnight on the collection date.
Number of resolved incidents
Number of incidents with a value in the Resolved date field
The following indicators do not appear on the dashboard but are used in formulas:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3725


<!-- page 3726 -->
Cost of Incidents Resolved
The daily sum of the Value field of incident_metric records where the Definition field
value is Incident Resolution Fixed Cost.
ITSM normalized satisfaction score
Sum of the normalized score of metric results for the Customer Satisfaction survey
ITSM survey instances
Number of the survey instances of the Customer Satisfaction survey
Number of active task sla
The count of active SLA tasks on task_sla with a start time before today and a stop
time after today.
Number of breach task sla today
The count of active SLA tasks on task_sla with a breach time before today
Summed age of open incidents
The sum of hours between the time an incident was opened and now
Summed duration of resolved incidents
The sum of hours between the time an incident was opened and the time it was
resolved
Summed reassignments of open incidents
The summed reassignment count of all open incidents

Breakdowns
• Age (Requested Item, Incident)
• Assignment Group
• Backordered (Requested Item)
• Category (Incident)
• Contact Type (Incident)
• Item
• Opened by Department
• Priority (Requested Item, Incident, Problem)
• Requested by Department (Requested Item)
• SLA Definition
• Stage (Requested Item)
• State (Change, Request, Problem)

Legacy: IT Manager dashboard
Follow the daily and weekly progress of incidents, problems, and requests for your assignment
groups.
IT managers can use the ITSM Success Dashboards to view the metrics for their assignment
groups.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3726


<!-- page 3727 -->
End user and roles
End user and goal

Required role

IT Manager - Needs to track the progress of
their group in resolving incidents, problems,
and requests

pa_viewer is required to see lists of indicators

Indicators
% Closed Requests with Breached SLA
The results of the formula ([[Number of Closed Requests with
Breached SLAs]]/[[Number of closed requests]]) * 100
% of incidents resolved by first assigned group
The results of the formula ( [[Number of resolved incidents
by first assigned group]] / [[Number of resolved
incidents]] ) * 100
% of open incidents missed SLA
The percentage of open incidents that did not meet the SLA, as calculated by the
formula [[Number of incidents missed SLA]] / [[Number of
open incidents]] * 100
% of open incidents not updated in last 5 days
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3727


<!-- page 3728 -->
Number of open incidents not updated in last 5 days as a percentage of
number of open incidents, according to the formula ( [[Number of open
incidents not updated in last 5 days]] / [[Number of open
incidents]] ) * 100.
% of open incidents with problem
The result of the formula [[Number of open incidents with
problem]] / [[Number of open incidents]] * 100
% of open problems not updated in last 30 days
The result of the formula ( [[Number of open problems not updated
in last 30 days]] / [[Number of open problems]] ) * 100
% of open problems with at least one incident
The result of the formula [[Number of open problems with at least
one open incident]] / [[Number of open problems]] * 100
% open and overdue incidents
The result of the formula ( [[Number of open and overdue
incidents]] / [[Number of open incidents that should be
resolved in time]] ) * 100
% Resolved Incidents with Breached SLA
The result of the formula ([[Number of Resolved Incidents with
Breached SLAs]]/[[Number of resolved incidents]]) * 100
Active Breached SLAs Today
The result in percentage of the formula ([[Number of breach task sla
today]]/[[Number of active task sla]])*100
Average age of open problems
The result, in days, of the formula [[Summed age of open problems]] /
[[Number of open problems]] / 24
Average age of open requests
The result, in days, of the formula [[Summed age of open requests]] /
[[Number of open requests]] / 24
Average age open incidents
The result, in days, of the formula [[Summed age of open incidents]] /
[[Number of open incidents]] / 24
Average close time of requests
The result, in days, of the formula [[Summed duration of closed
requests]] / [[Number of closed requests]] / 24
Average Cost per Incident
The result of the formula [[Cost of Incidents Resolved]]/[[Number
of resolved incidents]], when the number of resolved incidents is more
than zero.
Average Cost per Request
The result of the formula [[Cost of Requests Completed]]/[[Number
of completed requests]], when the number of completed requests is more
than zero.
Average Cost per Request - Weekly
The result of the formula [[Cost of Requests Completed / By week
SUM +]]/[[Number of completed requests / By week SUM +]].
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3728


<!-- page 3729 -->
In other words, the weekly sum of the cost of completed requests, including partial
weeks, divided by the weekly sum of completed requests, including partial weeks.
Average Cost per Resolved Incident - Weekly
The result of the formula [[Cost of Incidents Resolved / By week
SUM +]]/[[Number of resolved incidents / By week SUM +]].
In other words, the weekly sum of the cost of resolved incidents, including partial
weeks, divided by the weekly sum of resolved incidents, including partial weeks.
Average reassignments of open and overdue incidents
The result of the formula [[Summed reassignments of open and
overdue incidents]] / [[Number of open and overdue
incidents]]
Average resolution time of resolved incidents
The result of the formula [[Summed duration of resolved
incidents]] / [[Number of resolved incidents]] / 24
Closed workload
The result of the formula [[Number of closed incidents]] +
[[Number of closed problems]] + [[Number of closed
requests]]
ITSM Average Overall Customer Satisfaction
Average of the normalized score for the Customer Satisfaction survey, as a result of
the formula [[ITSM normalized satisfaction score]] / [[ITSM
survey instances]]
New workload
The result of the formula [[Number of new incidents]] + [[Number
of new problems]] + [[Number of new requests]]
Number of closed complete requests
Number of requests closed today as complete (State = Complete)
Number of closed incidents
The number of incidents closed today
Number of closed problems
The number of probems closed today
Number of closed requests
The number of requests closed today
Number of Closed Requests with Breached SLAs
Count Distinct of SLA tasks [task_sla] with a task type of Request, Has breached =
true, Stage != Cancelled, and closed today
Number of new incidents
The number of incidents opened today
Number of new problems
The number of incidents opened today
Number of new requests
The number of incidents opened today
Number of open changes planned in the next 7d
The number of Change Request [change_request] records opened today with a
Planned Start date between today and the end of next week
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3729


<!-- page 3730 -->
Number of open incident unassigned
The number of open incidents not assigned to anyone
Number of open incidents
Number of incidents with no Resolved date
Number of open incidents not updated in last 5 days
Number of open incidents with an Updated date of more than five days ago
Number of open and overdue incidents
The number of open incidents related to an SLA task that is not in the Cancelled
stage (task_sla.stage) and has an actual elapsed percentage greater than 100%
(task_sla.percentage).
Number of open incidents that should be resolved in time
The count distinct of open incidents associated with an SLA task [task_sla] that is
not in the Cancelled stage.
Number of open incidents with problem
The number of open incidents with a value in the Problem field
Number of open problems
The number of problems opened on or before today and not yet closed.
Number of open problems not updated in last 30 days
Number of open problems with an Updated date of more than 30 days ago
Number of open problems with at least one open incident
The count distinct of open incidents where the Problem Active field value is true.
Number of open requests
Number of requests opened on or before today and not yet closed
Number of requests closed after due date
Number of requests that are closed after request due date (sc_request.closed_at >
sc_request.due_date)
Number of resolved incidents
Number of incidents with a value in the Resolved date field
Number of resolved incidents by first assigned group
Number of incidents that were resolved by the first group assigned to them
Open workload
The result of the formula [[Number of open incidents]] + [[Number
of open problems]] + [[Number of open requests]]
Predicted Average Cost of Open Incidents
The result of the formula [[Cost of Incidents Resolved / By week
SUM +]]/[[Number of resolved incidents / By week SUM +]]
* [[Number of open incidents]]
Predicted Average Cost of Open Requests
The result of the formula [[Cost of Requests Completed / By week
SUM +]]/[[Number of requests completed / By week SUM +]]
* [[Number of open requests]]
Workload backlog growth
The result of the formula [[New workload]] - [[Closed workload]]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3730


<!-- page 3731 -->
The following indicators do not appear on the dashboard but are used in formulas:
Cost of Incidents Resolved
The daily sum of the Value field of incident_metric records where the Definition field
value is Incident Resolution Fixed Cost.
Cost of Requests Completed
The daily sum of the Value field of sc_request_metric records where the Definition
field value is Request Resolution Fixed Cost .
ITSM normalized satisfaction score
Sum of the normalized score of metric results for the Customer Satisfaction survey
ITSM survey instances
Number of the survey instances of the Customer Satisfaction survey
Number of active task sla
The count of active SLA tasks on task_sla with a start time before today and a stop
time after today.
Number of breach task sla
The count of active SLA tasks on task_sla with a breach time before today
Number of incidents missed SLA
The number of records on the incident_sla table created on or before today, not yet
closed, and that have breached SLA
Number of open incidents with problem
The count of open incidents with a Problem referenced in the Problem field.
Number of Resolved Incidents with Breached SLAs
Number of Incident-type SLA tasks that are not cancelled, that were resolved today,
and where Has Breached is true
Summed age of open incidents
The sum of hours between the time an incident was opened and now
Summed age of open problems
The sum of hours between the time a problem was opened and now
Summed age of open requests
The sum of hours between the time a request was opened and now
Summed duration of closed requests
The sum of hours between the time a request was opened and the time it was
closed
Summed duration of resolved incidents
The sum of hours between the time an incident was opened and the time it was
resolved
Summed reassignments of open and overdue incidents
The summed reassignment count of all open Incident SLAs

Breakdowns
• Age (Request, Incident, Problem, and Change)
• Assignment Group
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3731


<!-- page 3732 -->
• Category (Incident, Change)
• Contact Type (Incident, Request)
• Location
• Priority (Request, Incident, Problem, and Change)
• Risk (Change)
• SLA
• SLA Definition
• State (Change, Request, Problem)

Legacy: IT Agent dashboard
View the open incidents, problems, and requests that belong to you and your assignment groups
through personalized reports. You can also see which incidents that belong to your assignment
groups exceed the Spotlight threshold.
Agents can use IT Agent dashboard for Service Operations Workspace to see their own and their
team's assignments and set priorities.
IT Agent dashboard

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3732


<!-- page 3733 -->
End user and roles
End user and goal

Required role

IT Agent - see only those incidents, problems,
and requests that concern you

None, but to see Spotlight reports you need
the pa_spotlight_viewer role.

Data visualizations
Title

Type

Description

Open unassigned incidents

Single score

Incidents that belong to one
of your assignment groups do
not have a person assigned to
them

Single score icon

Open requests

Single score
Single score icon

Critical incidents

Single score
Single score icon

My open problems - Heatmap

Heatmap
Heatmap icon

Incidents above Spotlight
threshold

Single score

My open requests

Single score

Single score icon

Single score icon

My open incidents - Heatmap

Heatmap
Heatmap icon

Open incidents

Single score
Single score icon

Open requests that belong to
you or one of your groups

Incidents with a Priority of 1 Critical that belong to you or
one of your groups

Your problems by assignment
group and priority

Incidents belonging to one of
your groups that meet enough
Spotlight criteria to exceed the
Spotlight threshold
Open requests that belong to
you

Your incidents by assignment
group and priority

Open incidents that belong to
you or one of your groups

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3733


