# Zurich IT Service Management — Insights reports

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1191–1265 of 3857

Sections: Insights reports (p1191); Reference (p1211)

---

<!-- page 1191 -->
Filter ignorable DevOps events
Filter out ignorable DevOps events before they trigger a Flow execution to improve performance.
Azure DevOps and GitHub tool integrations have a filtering mechanism that determines if any
incoming event can be ignored before it causes a Flow to be triggered. Both the integrations
have their own filters, which may be deactivated or overridden to alter the filtering criteria. These
filters check whether the tool is connected, referenced object is tracked and is present in the
system.
You can activate or deactivate these filters.
1. Navigate to All > System Extension Points > Scripted Extension Points and search for
DevOps.
2. Select sn_devops.DevOpsEventFilterAPI.
3. From the Extension Instances section under Related links, select the extension instance of
the tool for which you want to activate or disable the filter.
4. Select the Active check box to enable the filter.
By default, the check box is selected. If you want to disable the filter, clear the check box.

Disable recommendation prompts
Disable the prompts recommending the use of DevOps Change Workspace from appearing
while creating tools and applications using Classic UI, Service Catalog, Service Portal, and
Employee Service Center.
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items and search for
DevOps.
2. For each of the following 4 DevOps catalog items, you must edit the catalog client scripts to
comment out the call to showWorkspaceAdvertisement.
◦ Create DevOps Application
◦ Create DevOps tool
◦ DevOps App Onboarding
◦ DevOps Tool Onboarding
3. Select each DevOps catalog item listed earlier and navigate to the Catalog Client Scripts tab
under Related Links.
4. Select each script available under Catalog Client Scripts.
5. Search for the method showWorkspaceAdvertisement.
6. If present, comment it out.
For example, //showWorkspaceAdvertisement();.
7. Save the changes.

DevOps Insights reports
To help you plan and implement updates to your DevOps processes, DevOps Insights displays
a variety of configurable reports that are grouped by type of metric. From the DevOps Change
Workspace, select the DevOps Insights icon (

) to view the reports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1191


<!-- page 1192 -->
DevOps Insights
Analyze operational and business reports and to determine the overall efficiency and growth of
your development processes.
• Monitor activities, KPIs, and metrics in a central dashboard.
• Track performance over time.
• View summary data broken out by bug, epic, feature, "other", story, or task.

Mining and analyzing the metrics
Each report provides both a summary of an important business metric and access to more
detailed information about the metric.
• By default, many reports display data for the last 30 days. Select the Date icon (
configure a custom date range.

) to

• Point to a specific data point in a chart to view detailed data.
• Select a specific data point to view the key performance indicator (KPI) details for the report
in a separate tab. You can then use the powerful data-management tools in the Performance
Analytics
application to drill deeply into the data.
• To apply any filter other than the date filter, select the filter icon and then move filter categories
from the Available list to the Applied list.
• Filters appear at the top of the tab. For each report, the Applied filter icon ( ) displays the
number of filters that are currently applied to a report. Select the icon to view and configure the
filters that are applied to a widget.

Schedule of data collection
You must enable the daily data collection job to populate the dashboards with new DevOps data
coming in from the connected third-party tools.
1. Navigate to All > Performance Analytics > Data Collector > Jobs.
2. Configure the [DevOps] Daily Data Collection job to run as system admin.

Note: [DevOps] Daily Data Collection job is active by default and
configured to run as admin user.
Run the Load Change Request Repo Detail scheduler script and [DevOps]
Historical Data Collection job for historical data:
1. Navigate to All > System Definition > Scheduled Jobs.
2. Execute the Load Change Request Repo Detail scheduler script.
This job populates the Change Request Repo Detail table
[sn_devops_insights_change_request_repo_detail] if you import demo data after installing the
DevOps Insights application.
If you're installing demo data along with the DevOps Insights application, then there’s no need
to run this job. You can directly run the [DevOps] Historical Data Collection
performance analytics job to see scores.
3. Navigate to All > Performance Analytics > Data Collector > Jobs.
4. Execute the [DevOps] Historical Data Collection job to run as system admin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1192


<!-- page 1193 -->
The execution time depends on the volume of data. This is a one-time task to collect historical
DevOps data, and not meant to be on a schedule.

Tip:
Based on the time taken to complete this job, plan on running it during a period of low usage.

DevOps Insights dashboard - Workspace
The DevOps Insights dashboard provides a flexible graphical view of operational and business
reports. Use the dashboard to evaluate the results of your overall DevOps process.
Summary dashboard
The DevOps Insights Summary dashboard enables an overview of key metrics across various
categories from accelerate to quality metrics along with a quick glance of the most active
applications.
Summary reports

Report

Description

Average WIP cycle time

Average time in days that a
work item is in the WIP state
before completion.

Average lead time

Daily average lead time
for prod deploy pipeline
executions.

Average deployment
frequency

Average number of successful
production deployments.

Source

Calculation: Time to complete
WIP items divided by the
number of completed work
items
Calculation: Sum of
successful prod deploy lead
times divided by the number
of successful production
pipeline executions.
Step execution

Applies to pipeline steps of
type Prod Deploy that are in
the completed state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1193


<!-- page 1194 -->
Report

Description

Source

Average test pass %

Daily average test pass
percentage for pipeline
executions.

Work items completed

Work items, grouped by work
item type, that were set to the
complete state during the last
30 days.

Activity — last 30 days

For each application, the
summary of activity during the Database view joined by
commit, commit work item,
last 30 days.
repository, commit execution,
app, test summary relations,
step execution, test summary.

Database view joined by
test summary, test summary
relations, step execution,
change request repository
detail, step, pipeline, app, and
application product detail.
Database view joined by work
item, metric instance, commit
work item, commit, commit
execution, step execution,
step, pipeline, app, and
application product detail.

Flow metrics dashboard
The DevOps Insights Flow metrics reports help you visualize how work is moving through your
development process. Uncover bottlenecks by determining which kinds of work (such as stories
or bugs) are taking the longest.
Flow metrics reports

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1194


<!-- page 1195 -->
Flow metrics reports
Report

Description

Source

Average flow time

Average time, in days, that
a work item spent from
the created state to step
execution end time of a
successful prod pipeline
deployment.

Database view joined by work
item, metric instance, commit
work item, commit, commit
execution, step execution,
step, pipeline, app, and
application product detail.

Average WIP cycle time

Average time in days that a
Database view joined by Work
work item is in a specific state. Item, Metric Instance, Commit,
Step Execution, Commit
execution, and Commit work
item lists.

Average WIP count

Average number of work items Average count of Work Items
that are WIP during the last 30 with State set to Work In
days.
Progress.

Work items completed

Number of work items in
the complete state that
are associated to commits
through a successful
production pipeline deploy in
the last 30 days.

Note: Filters don’t

Average count of Work Items
associated to Step Execution
type set to Prod deploy. This
requires commit to work item
association as only work items
deployed through a pipeline
are in production.

apply for this chart.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1195


<!-- page 1196 -->
Flow metrics reports (continued)
Report

Description

Source

Average work item cycle time

Average time in days that a
Database view joined by Work
work item is in a specific state. Item, Metric Instance, Commit,
Step Execution, Commit
execution, and Commit work
item lists.

Throughput and distribution

Number of work items, by
type, that are associated to
commits through a successful
production pipeline deploy.

Database view joined by Work
Item, Metric Instance, Commit,
Step Execution, Commit
execution, and Commit work
item lists.

Average planned to deploy
flow time

Average duration from
the time that a work item
associated to a commit was
created to the time that
the item was successfully
deployed to production
through pipelines.

Database view joined by Work
Item, Metric Instance, Commit,
Step Execution, Commit
execution, and Commit work
item lists.

Work in progress

Number of work items that
are currently in the work in
progress state.

Database view joined by Work
Item, Metric Instance, Commit,
Step Execution, Commit
execution, and Commit work
item lists.

Change acceleration dashboard
The DevOps Insights Change acceleration tab displays change acceleration metrics that focus
on your path to automation, comparing automated changes to manual changes, change policy
decisions, and ROI. You can use this information to verify that automated change requests are
being resolved more quickly than manually approved change requests.
Change acceleration reports

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1196


<!-- page 1197 -->
Change requests that are part of step executions qualify as DevOps change requests.
Change acceleration reports
Report

Description

Source

DevOps change volume

Number of DevOps change
requests created.

Database view joined by
Step Execution, Change
request, and change request
repository.

Time to close changes

Average time in hours to
close DevOps changes by
application.

Database view joined by
Step Execution, Change
request, and change request
repository.

For each month, this is the
average for (Time that change

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1197


<!-- page 1198 -->
Change acceleration reports (continued)
Report

Description

Source

request was closed) minus
(Time that change request
was opened).
Automated vs manual
changes

Database view joined by
Comparison between the
Step Execution, Change
numbers of DevOps change
request, and change request
requests using change
repository.
approval policies and DevOps
change requests requiring
manual approval.
• A change request is
considered automated
when a change policy
performs the approve/reject
action.
• A manual change is any
change request that is
assigned to a user or group
for the approve/reject
action and isn’t acted on by
a change policy.

Changes awaiting approval

Number of DevOps changes
that are pending approval by
date range.
By default, change requests
in the New or Assess state are
considered awaiting approval.

Database view joined by Step
Execution, Change request,
System properties, and
change request repository
detail lists.

To specify the states that
are considered awaiting
approval, update the Change

Request Awaiting
States property setting. For
details, see DevOps Insights
properties.
Change policy decision: autoaccept

The number of change policy
decisions by decision type
that automatically accept
change requests.

Database view joined by Step
Execution, Change request,
System properties, and
change request repository
detail lists.

Point to a value on the chart
to view the list of policy
decisions that were used for
auto-approval and the number
of times that a decision was
used for auto-approval.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1198


<!-- page 1199 -->
Change acceleration reports (continued)
Report

Change policy decision: autoreject

Description

The number of change policy
decisions by decision type
that automatically reject
change requests.
Point to a value on the chart
to view the list of policy
decisions that were used for
auto-rejection and the number
of times that a decision was
used for auto-rejection.

Change acceleration savings

Net amount saved per month
by automating DevOps
changes.

Source

Database view joined by Step
Execution, Change request,
Policy applied, Auto approval
rejection action, Change
approval definition, and
change request repository
detail lists.

Calculation: Average hourly
developer cost multiplied by
developer hours saved.

When a change is automated,
a developer doesn’t have to
manually fill out the change
request and associate each
work item, code commits, test
results and other evidence
and artifacts to the change.
After this activity is automated,
hours that would have been
spent on filling out the
change, searching, tracking
down and attaching items
from other tools to a change,
will now be saved. More work
items require a relatively
increasing number of hours
to associate them manually.
Therefore, higher numbers
of work items should result in
more hours saved after the
change is automated. Change
acceleration savings are
calculated by multiplying the
hours saved by the average
hourly developer cost.
To change the default value of
the average hourly developer
cost, update the Average

Hourly developer
Cost property setting. For
details, see DevOps Insights
properties.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1199


<!-- page 1200 -->
Change acceleration reports (continued)
Report

Description

Source

Developer hours saved

Number of developer
hours saved per month by
automating DevOps changes.

Calculation: Number of work
items in a change request
multiplied by 1 hour per
developer.

To change the default value
of 1 (one) hour per developer,
update the X hours per
Developer time property
setting. For details, see
DevOps Insights properties.
Accelerate metrics dashboard

The DevOps Insights Accelerate metrics are four key DevOps metrics that measure software
delivery performance. Deployment frequency and lead time measure DevOps speed, while
change failure rate and mean time to recovery are used to measure stability.
Accelerate metrics reports

Accelerate metrics reports
Report

Average lead time

Description

Average of:

Source

Pipeline execution

([Time the code is
successfully pushed to
production] minus [Earliest
commit time])
Applies to pipeline steps of
type Prod Deploy that are in
the completed state.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1200


<!-- page 1201 -->
Accelerate metrics reports (continued)
Report

Description

Source

Note: This widget uses
average aggregation and
doesn’t support multielement selection.
Average deployment
frequency

Average number of successful
production deployments.

Step execution

Applies to pipeline steps of
type Prod Deploy that are in
the completed state.
Average MTTR

Average resolve time for an
incident caused by a DevOps
change.

Database view joined by
Incident, Change Request,
Step Execution, Step, Pipeline,
and App lists.

Note: This widget uses
average aggregation and
doesn’t support multielement selection.
Average DevOps change
failure rate

Daily average ratio of DevOps
change requests that are
associated to an incident
divided by all DevOps change
requests.

Change request

Note: This widget uses
formula and doesn’t
support multi-element
selection.
Commit to deploy lead time

Duration from the earliest
commit time to production
deployment for a successful
pipeline execution.

Calculation: Sum of
successful prod deploy Lead
times divided by the number
of successful production
pipeline executions.

The value includes only steps Needs 'Commits to Task
of type Prod deploy that are in Execution' association. Both
the completed state.
Repository and Pipeline must
be tracked and associated to
You might investigate high
the same App.
lead times by identifying the
slowest pipeline steps. For
Needs Step type to be Prod
example, a manual change
Deploy.
approval process could
increase lead time.
Needs Task Execution result to
be Successful.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1201


<!-- page 1202 -->
Accelerate metrics reports (continued)
Report

Description

Mean time to restore from
incidents caused by DevOps
changes

Daily average time to resolve
an incident that was caused
by a DevOps change.

Source

Database view joined by step
execution, change request,
change request repository
detail, and incident lists.
Calculated only for DevOps
incidents by considering
incident opened and closed
time.

Production deployment
frequency

Number of successful
production deployments.
The value includes only
pipeline steps of type
Prod deploy that are in the
completed state.
To change the default value
of 30 days, update the Date
range setting.

DevOps change failure rate
from incidents

Percentage of DevOps
changes that caused
incidents divided by all
DevOps changes deployed to
production.
If a change request caused
multiple incidents, then only
the change that caused or
triggered the incident is
considered. The number of
incidents that the change
caused isn’t considered.

Deployment Success Rate

Deployments success rate
over the last 30 days.

Database view joined by
Change Request, Step
Execution, change request
repository detail.
Needs Step Execution state to
be Completed.
Needs Step type to be Prod
Deploy.

Needs DevOps Change
Request (Change associated
to a Step Execution).
Needs Step Execution state to
be Completed.
Needs Step type to be Prod
Deploy.
Needs Incident caused by to
be DevOps Change Request.

Step Execution

Deployment Success Rate
= (Number of Successful
Deployments in the last
30 days / Total Number of
Deployments in the last 30
days) * 100
Applies to steps of type Prod
Deploy in completed state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1202


<!-- page 1203 -->
Accelerate metrics reports (continued)
Report

Description

Source

Note: This widget uses
formula and does not
support multi-element
selection.
Deployment Frequency

Number of successful
production deployments in
the last 30 days.

Step Execution

Applies to steps of type Prod
Deploy that are in completed
state.
Deployments failed

Number of failed production
deployments in the last 30
days.

Step Execution

Applies to steps of type Prod
Deploy that are in failed or
user-canceled state.
Quality metrics dashboard
The DevOps Insights Quality metrics dashboard enables a quick glance at data from tools
such as SonarQube for code coverage, test pass percentage from your orchestration tools,
vulnerabilities from security tools, and even overall bug counts.
Quality metrics reports

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1203


<!-- page 1204 -->
Quality metrics reports
Report

Description

Code coverage %

Percentage of code that is
covered by testing.

Source

Needs Software Quality
Scan Detail with Category =
Coverage (%)
Needs Software Quality Scan
Summary Relations related to
Task Execution

Test pass %

Test pass percentage.

Security vulnerabilities

Count of security
vulnerabilities over time.

Needs Test Summary related
to Task Execution
Needs Software Quality
Scan Detail with Category =
Vulnerabilities
Needs Software Quality Scan
Summary Relations related to
Task Execution.

Bug counts

Number of work items of type
bug.

Needs Commits to Work
Items association. Both
Repository and Plan must be
tracked and associated to the
same app.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1204


<!-- page 1205 -->
Quality metrics reports (continued)
Report

Description

Source

Needs Commits to Task
Execution association.
Both Repository and Pipeline
must be tracked and
associated to the same App
Needs Work Item to be of type
Bug.
DevOps Insights Development dashboard
Development metrics focus on commit data that provides insights into how active and agile your
teams are. With this information, you can reach full traceability of work by ensuring that commits
are being tagged with the appropriate work items.
Development reports

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1205


<!-- page 1206 -->
Development reports
Report

Description

Commit frequency

Number of commits associated to pipeline
executions.
Smaller, more frequent commits are preferred
over larger less frequent commits.

Active committers

Number of committers that submitted
commits.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1206


<!-- page 1207 -->
Development reports (continued)
Report

Description

Because this report uses metric aggregation, it
doesn’t support multi-element selection.
Top committers (30-day running sum)

Top reverters (30-day running sum)

Average commits per committer

Committers with the highest number of
commits.
Committers with the highest number of
reverts.
Average calculated as: (total number of
commits)/(active committers). A
higher value is more favorable.
Because this report uses metric aggregation, it
doesn’t support multi-element selection.

Average commits per pipeline execution

Average commits per pipeline, calculated
as (Total number of commits)/(Number of
pipeline executions).
A low number is preferable, which indicates a
concentrated effort, versus switching from task
to task without completion.
Because this report uses metric aggregation, it
doesn’t support multi-element selection.

Commits without work items

Commits made that aren’t associated to a
work item, grouped by committer.
This report is useful for investigating and
resolving why a commit isn’t tied to a work
item, because all commits should be tied to a
work item.

Pipeline pass percentage

Ratio of successful pipeline executions
divided by total number of pipeline
executions.

DevOps Insights Operational stability dashboard
Operational metrics reflect on the stability of your applications to enable you to ensure that your
teams are moving fast without compromising release quality.
Operational stability reports

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1207


<!-- page 1208 -->
Operations stability reports
Report

Description

Source

Incidents

Number of incidents for
pipeline steps of type Prod
deploy that are linked to a
service in the CMDB.

Needs Step type to be Prod
Deploy.

Number of outages for
pipeline steps of type Prod
deploy that are linked to a
service in the CMDB.

Needs Step type to be Prod
Deploy.

Outages

Service availability

Error budget remaining

Needs Incident associated
to a Service that matches the
one in the prod deploy Step.

Needs Outage
(cmdb_ci_outage) associated
to a Service that matches the
one in the prod deploy Step.

Average service availability
for pipeline steps of type Prod Needs Step type to be Prod
Deploy.
deploy that are linked to a
service in the CMDB.
Needs parent Service Offering
associated to a Service that
matches the one in the prod
deploy Step.
Percentage of error budget
left to spend in a month, for

Needs Step type to be Prod
Deploy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1208


<!-- page 1209 -->
Operations stability reports (continued)
Report

Description

Source

pipeline steps of type Prod
deploy that are linked to a
service in the CMDB. This
data is from the Site Reliability
operations application.

Needs parent Service Offering
associated to a Service that
matches the one in the prod
deploy Step.
Needs SRO application.

An error budget is the amount
of Service Level Objective
(SLO) that you can spend
over a specified time. It can
be used to manage release
velocity. It’s typically based on
availability, latency, and so on.

Group DevOps applications into a product
Products that use an application model in the CSDM support hierarchies of applications. You can
customize hierarchies to simplify tracking of "rolled-up" data on DevOps Insights reports. This is
used for the Product filter in insights.

Before you begin

Role required: application owner, sn_devops.admin

About this task

For example, you can include multiple DevOps microservice applications into a product,
include multiple such products into a portfolio, and then include ("roll up") the portfolio in an
organization. Another example structure might be application > team > product > portfolio or
business unit.
• A DevOps application can belong to one or multiple products.
• A product or multiple products can belong to one or multiple other products.
• Multiple applications and products can belong to a product.
For every product, the system creates a corresponding entry in the application model and SDL
component tables.

Important: To add an application to a product, the application must hold execution data.
For a newly added application, therefore, you must wait until the data import job has run.

Procedure
1. Create applications as described in Create an application - Workspace.
2. Open the application models table: <instanceName>/
cmdb_application_product_model_list.do and then follow this procedure to
configure each application that will be included in a product.
a. In the Application models list, select the application model to open the record.
b. On the Application model form, in the Model categories field, select the appropriate
category.
c. Save the record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1209


<!-- page 1210 -->
3. Follow this procedure to create a product that will act as a parent.
a. In the Application models list, select New.
b. On the Application model form, in the Name field, enter the name of the product.
c. In the Model categories field, select Bundle.
d. Optional: Enter a short description.
e. Save the record.
4. Open the Model category of component table (<instanceName>/
cmdb_m2m_model_component_list.do) to specify the category of each application
(the application is the component in this case).
5. For each application, select New, specify the following settings, and then submit the record.
Model component form
Field

Description

Model category of component

The Model categories value that you
specified for the application on the
Application model form.

Component

The application.

Bundle

The product that will act as a parent of the
application.

The application is now a member of the specified product.

Result

The DevOps Insights tabs provides filters for the reports.
• The scheduled "Data collection" job processes your changes. When the job finishes, you can
view reports for the added products. If you are running the job manually, execute the "Update
Repo Details and Work Item State Detail" job before executing the Data collection job.
• The Application filter lists all applications.
• The Product filter lists all applications plus all products.
• To view the members of a product, view the list in the Model category of component table
(<instanceName>/cmdb_m2m_model_component_list.do). Applications are listed
in the Component column and products are listed in the Bundle column.

DevOps Insights properties
DevOps Insights properties configure how DevOps Insights workspace data is displayed in
reports.
Role required: sn_devops.admin
You can view the Insights properties from the DevOps Change Workspace by navigating to
Workspaces > DevOps Change Workspace > System configuration > Insights properties.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1210


<!-- page 1211 -->
Properties installed with DevOps Insights
Property

Description

Default

X hours per Developer time

The time taken per developer to work
on a single work item in hours.

1

This value is used to calculate the
Developer hours saved report.
For example, for every work item
associated to a change request, a
developer saved X hours in having to
associate the work items, commits, test
results, and other related DevOps data
for their work.
Change Request Awaiting
States

The states that are reported as awaiting -5, -4
a change request in the Changes
awaiting approval report.
Use the following values for the other
states:
• New: -5
• Assess: -4
• Authorize: -3
• Schedule: -2
• Implement -1
• Review: 0
• Closed: 3
• Canceled: 4

Average Hourly Developer
Cost

The average hourly cost of a developer
working on DevOps changes in the
selected currency.

100

This value is used to calculate the
Change acceleration savings report,
where we multiply the Developer
hours saved by this developer cost to
estimate an ROI.

DevOps Change Velocity reference
Reference information to provide additional details about DevOps Change Velocity such as
tables, users, roles, properties, errors, limitations, and others.

Components installed with DevOps Change Velocity
Several types of components are installed with DevOps Change Velocity, including tables, users,
roles, and scheduled jobs.
Demo data is available for this application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1211


<!-- page 1212 -->
Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Users installed
User

Description

devops.integration.user

DevOps Integration User

Note: You must configure the password
before the DevOps Integration User can
configure a tool.
devops.system

DevOps System user

Roles installed
Role title [name]

Description

DevOps Administrator

Sets up and
configures the DevOps
application.

[sn_devops.admin]

Only the DevOps
Administrator
has access to the
Administration module.

Note: To
ensure that the
devops.system
user has correct
access, add the
sn_devops.admin
role to the
field-level ACL
(sys_connection.*)
if a field-level
ACL exists on the
sys_connection
table or
include the
connection_admin
role in the
sn_devops.admin
role.
Has inbound access
to the tools in your
environment to allow
[sn_devops.integration]
integration with the
DevOps application.
DevOps Integration

Contains roles

• sn_devops.app_owner
• sn_devops.integration
• sn_devops.tool_owner
• action_designer
If the DevOps Change Health Scan Content
Pack application is installed, the following
roles are also added to DevOps Administrator
to access the health scan feature.
• sn_cicd.sys_ci_automation
• scan_user

• flow_operator
• cmdb_read

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1212


<!-- page 1213 -->
Role title [name]

Description

Oversees the operation
of the DevOps
application and
[sn_devops.app_owner]
monitors performance
in your DevOps
environment.
DevOps App Owner

Contains roles

• sn_devops.viewer
• cmdb_read

The app owner can:
• Create, update, and
delete applications
only.
• Associate or
dissociate objects
to applications
(pipelines, repos,
plans, artifact
repository)
• Perform change
automation and
modify pipeline
steps.
• Access to see all the
tools but not modify
them.
• Can click discover
from tool records to
find new plans, repos,
or pipelines from
already connected
tools.
• Has the viewer role.
DevOps Tool Owner
[sn_devops.tool_owner]

The tool owners can:

sn_devops.viewer

• Create new tools.

Note:

• Perform the following
actions on the tool:
◦ Discover (classic UI
and workspace)
◦ Enter Manual
Configuration
Mode (classic UI
and workspace)
◦ Configure (classic
UI and workspace)
◦ Configure
Guidance (Jenkins
only, workspace)

• The sn_vul.app_sec_manager role
is added to the DevOps Tool Owner
[sn_devops.tool_owner] role when
the DevOps Vulnerability Integrations
plugin (sn_devops_vul_ints) is
installed.
• The
sn_vul_veracode.configure_integration
role is added to the DevOps Tool
Owner [sn_devops.tool_owner] role
when the Vulnerability Response
Integration with Veracode plugin
(sn_vul_veracode) is installed.

◦ Update Credentials
(workspace)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1213


<!-- page 1214 -->
Role title [name]

Description

Contains roles

◦ Check Permissions
(workspace)
◦ Delete tool (classic
UI and workspace)
• View System health
and Troubleshooting
sections of the
Administration
module and view
Insights dashboards.
• On the tool record
page, the Related
Links tabs will show
Tool connections
and Tool connectivity
history.
• If users have both
Tool Owner and App
Owner roles, they
can also create apps
and change request
automations.
Tool owners can update
credentials only for
tools in which they
are a member of the
access groups, or for
tools without access
restrictions.
DevOps Viewer
[sn_devops.viewer]

Has access to the
DevOps application
to use in their
environment.

• sn_devops_ws.workspace_user
• cmdb_read
• sn_devops.report_viewer

Note: The sn_devops.report_viewer
role enables users to view reports that
are created for DevOps tables. Users
cannot view DevOps reports without
this role.

Warning: When you uninstall DevOps Config, there could be empty rows in the Contains

Roles related list (table: sys_user_role_contains) for the roles installed with DevOps Change
Velocity. You must delete these empty rows before discovering tool objects.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1214


<!-- page 1215 -->
Scheduled jobs installed
Scheduled job

Description

[DevOps]
Historical Data
Collection

Collects data from DevOps tools on demand.

Note: You must run this scheduled job to see historical DevOps data
after installation of the DevOps Insights application.

[DevOps] Daily
Data Collection
DevOps auto
discover tool
associations

Collects data from DevOps tools daily.
Automatically discovers new pipelines, plans, and repositories for all the
tools that are in connected state and for all the capabilities. This job is
scheduled to run once daily.
You can deactivate or change the frequency of the schedule:
1. Navigate to System Definition > Scheduled Jobs and select DevOps auto
discover tool associations.
2. To deactivate the job, deselect the Active check box.
3. To change the frequency, update the Repeat Interval.

Tool connectivity
For all the tools, the scheduled job does the following:
history
• Checks the connectivity of the tool and updates the Connection state
field in the tool record page.
• Checks the inbound events received in the given interval and updates the
Last webhook activity field in the tool record page with the latest date
and time.
This job is scheduled to run every hour. You can update the frequency if
required.
1. Navigate to System Definition > Scheduled Jobs.
2. Search for and select Tool connectivity history.
3. Update the Repeat Interval fields based on your requirement.

Note: This job is scheduled at the product level and cannot be
scheduled for an individual tool.

Tables installed
Name

API Schema Definition
App
Artifact

Table

[sn_devops_api_schema_definition]
[sn_devops_app]
[sn_devops_artifact]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1215


<!-- page 1216 -->
Name

Artifact Repository
Artifact Staged Request
Artifact Version
Base Planning Item
Branch
Build Test Result
Build Test Summary
Callback
Commit
Committer
Commit Details
Contributor Score Change Factor
Environment
Event
Event Processor
Import Filter
Import Request
Import Request Page
Inbound Event
Integration Capability

Table

[sn_devops_artifact_repository]
[sn_devops_artifact_staging]
[sn_devops_artifact_version]
[sn_devops_base_planning_item]
[sn_devops_branch]
[sn_devops_build_test_result]
[sn_devops_build_test_summary]
[sn_devops_callback]
[sn_devops_commit]
[sn_devops_committer]
[sn_devops_commit_details]
[sn_devops_contributor_score_chg_factor]
[sn_devops_environment]
[sn_devops_event]
[sn_devops_event_processor]
[sn_devops_import_filter]
[sn_devops_import_request]
[sn_devops_import_request_page]
[sn_devops_inbound_event]
[sn_devops_integration_capability]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1216


<!-- page 1217 -->
Name

Table

Extends table Application File.
App to Plan
Deployed Artifact to TaskExecution
Artifact Version to Commit
Artifact Version to Package
Branch To Commit
Run Commit
Work Item To Plan Version
Orchestration Task
Orchestration Task Definition
Package

[sn_devops_m2m_app_plan]
[sn_devops_m2m_artifact_execution]
[sb_devops_m2m_artifact_version_commit]
[sn_devops_m2m_artifact_version_package]
[sn_devops_m2m_branch_commit]
[sn_devops_m2m_commit_execution]
[sn_devops_m2m_work_item_plan_version]
[sn_devops_orchestration_task]
[sn_devops_orchestration_task_definition]
[sn_devops_package]
Extends table Configuration Item.

Participant
Pipeline
Pipeline Execution
Plan

[sn_devops_participant]
[sn_devops_pipeline]
[sn_devops_pipeline_execution]
[sn_devops_plan]
Extends table Base Planning Item.

Plan Version

[sn_devops_plan_version]
Extends table Base Planning Item.

Repository
Step

[sn_devops_repository]
[sn_devops_step]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1217


<!-- page 1218 -->
Name

Table

Step Execution

[sn_devops_step_execution]

Tag

[sn_devops_tag]

Task Execution

[sn_devops_task_execution]

Test Execution

[sn_devops_test_execution]

Test Result

[sn_devops_test_result]

Test Type

[sn_devops_test_type]

DevOps Tool

[sn_devops_tool]

Tool Action

[sn_devops_tool_action]

Tool Capability Mapping
DevOps Tool Integration

[sn_devops_tool_capability_mapping]
[sn_devops_tool_integration]
Extends table Application File.

Tool Type Capability

[sn_devops_tool_type_capability]

Work Item

[sn_devops_work_item]
Extends table Base Planning Item.

DevOps Change Velocity properties
Use these properties to configure settings in the DevOps Change Velocity application.
Role required: sn_devops.admin
You can view the properties from the DevOps Change workspace by navigating to System
configuration > Properties.
To view the properties from the Classic UI, navigate to All > DevOps > Administration >
Properties.

Property

Description

Default

Name

Maximum retries
for errored inbound
events

Maximum number
of retries for errored
inbound events.

3

[sn_devops.max_retry_count_inbound_

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1218


<!-- page 1219 -->
Property

Description

Default

Tool capabilities

The tool capabilities
supported, entered
as comma-separated
values.

code,plan,orchestration,artifact,test
[sn_devops.tool_capabilities]

DevOps change
request approval text

The DevOps change
request approval
text to be used for
change management
customizations.

Approved

[sn_devops.change_request.approved_

False (disabled)

[sn_devops.change_request.apply_attri

DevOps change
request - Apply
attributes on change
creation

If enabled, change
attributes are applied
when a change is
created. If there are
any data policies
applied on the change
attributes, they are
enforced when the
change is created. If
this property is not
enabled, change
attributes are applied
after the change
is created, which
may cause change
creation failure if
any data policies
are present on the
change attributes.

Name

Duration of DevOps
system health report
(in days)

Defaults to the last 7
days, to show system
health metrics like
inbound events.

7

[sn_devops.health_duration_report]

Enable automatic
association of repos
to apps on pipeline
execution

If enabled,
automatically
associates
repositories to apps
and enables track
when a pipeline
identifies commits of
a repository that is
not yet associated.
Also associates
pipelines that are not
yet associated to the
corresponding app
when the repository
is already assigned to
the app.

Yes (enabled)

[sn_devops.enable_automatic_associat

Maximum number of
pages to process at

The maximum number 10
of pages that must be

[sn_devops.import.max.pages.processi

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1219


<!-- page 1220 -->
Property

Description

Default

a time for an import
request

processed at a time
for an import request.

DevOps change
request reusability
decision subflow

The subflow that
can be called to
check if a previously
created change can
be reused, instead of
creating a new one.

sn_devops.change_request_reusability_subflow
[sn_devops.change_request_reusability

GitHub URL

For GitHub, this field
is used to get the API
URL (for REST calls).

https://github.com

DevOps change
request cancel state

DevOps change
request cancel
state to be used for
change management
customizations.

Maximum
orchestration tool
executions while
importing

Maximum
orchestration tool
executions while
importing Jenkins
freestyle jobs.

1000

[sn_devops.import.orchestration_tool.ex

To save payloads as
attachments on the
Import Request Page
record, set the "Value"
field to "true". Anything
else is considered as
false.

If true, the fetched
JSON payload
is saved as an
attachment in the
Import Request page.

False (disabled)

[sn_devops.import.save.payloads.as.att

DevOps non-admin
software quality
summary flag

Enable to view and
monitor SonarQube
scans configured on
your GitHub Actions,
Jenkins, or Azure
DevOps pipelines
as a non-admin
SonarQube user.

False (disabled)

[sn_devops.non_admin_software_qualit

Default test type

Default test type
from orchestration
pipelines.

JUnit

Coding tool branches
per page

Number of coding tool 19
branches per page.

4 (Canceled)

Name

[sn_devops.github.url]

[sn_devops.change_request.cancel_sta

To save payloads as
attachments on the
Import Request Page
record, set the Value
field to true. Anything
else is considered
false.

[sn_devops.default_test_type]

[sn_devops.import.coding_tool.branche

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1220


<!-- page 1221 -->
Property

Description

Default

Name

Planning tool issues
per page

Number of planning
tool issues displayed
per page.

100

[sn_devops.import.planning_tool.issues

sn_devops role to be
automatically added
to active DevOps
users

The sn_devops role
entered in the value
field is automatically
added to users who
are active DevOps
users (for example,
making a commit).

sn_devops.viewer

[sn_devops.discovered.user.auto.assign

If a role that is not in
the sn_devops scope
is provided, it is not
added.
Leave empty if
no role should
be automatically
provided.
Software quality
categories shown by
default in the Pipeline
UI view

The software quality
categories shown by
default in the Pipeline
UI view, entered as
comma-separated
values.

coverage,lines_of_code,bugs,code_smells,duplications,vulnerab
[sn_devops.sq_ui_category_preference

Errors or exceptions
(comma separated)
for which errorred
inbound events are
set to Retry

Errors or exceptions
for which the errored
inbound events are
set to Retry. Entered
as comma-separated
values.

TimeOutException,FlowObjectAPIException
[sn_devops.inbound_events_retry_erro

DevOps log level

The DevOps log level.

Warning

sn_devops.devops_log_level

False (disabled)

[sn_devops.custom_change_categoriza

Select the appropriate
level from the
following:
• Error
• Warning
• Information
• Debug
• Trace
Categorize DevOps
change requests on
DevOps Change field

.
Select this option to
categorize change
requests with
category field set to
DevOps as a DevOps
change.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1221


<!-- page 1222 -->
Property

Description

Default

Name

Clear to disable.
Orchestration tool
executions per page

Number of
orchestration tool
executions per page.

50

[sn_devops.import.orchestration_tool.ex

Enable import polling

Option to enable
polling of import
requests. Clear to
disable polling.

False (disabled)

[sn_devops.enable_import_polling]

GitHub API version
path

The GitHub API
version path.

/api/v3

[sn_devops.github.api_version_path]

Tool permission check
10000
timeout per record (in During the tool
connection process,
milliseconds)
the system performs
permission validations
in the foreground,
and restricts the
tool connection
page. For every
permission validation,
a REST API call is
made to external
tools to evaluate the
availability of the
permission. The REST
API response time
may vary based on
your network settings.
To avoid delays, you
can specify how long
the system should
wait to get a response
from an external tool
before marking the
permission as an error
through this property.

[sn_devops.permission_check_timeout

DevOps change
request reusability
model subflow

The DevOps change
request reusability
model subflow.

sn_devops.devops_reused_model_change_request
[sn_devops.devops_reused_model_cha

Time elapsed (in
minutes)

The time elapsed in
minutes. The retry job
checks for errored
inbound events
from the time/value
specified.

1440 (7 days)

[sn_devops.inbound_events_error_retry

False (disabled)

[sn_devops.cancel_change_on_pipelin

Cancel the change
request when the
associated stage in
the pipeline fails or is
canceled

When this property
is enabled and the
orchestration task
mapped to a certain
step in your DevOps

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1222


<!-- page 1223 -->
Property

Description

Default

Name

Cascade delete
Cascade delete
threshold
threshold.
(recommended
foreground limit 1000)

1000

[sn_devops.cascade_delete_threshold]

Maximum retries per
page while importing

Maximum retries
allowed per page
while importing data
from tools.

3

[sn_devops.import.max.retries.per_page

DevOps change
request post
implement state

DevOps change
request post
implement state
to be used for
change management
customizations.

DevOps change
request implement
state

DevOps change
request implement
state to be used for
change management
customizations.

-1 (Implement)

[sn_devops.change_request.implement

Default committer
score

The default committer
score.

50

[sn_devops.committer.score.default]

Enable to track GitLab
pull (merge) requests.
If not enabled, then
pull (merge) requests
and related events will
be ignored.

When this property is
enabled, GitLab pull
(merge) requests are
tracked in DevOps
Change Velocity. If
disabled, then all
merge request events
are ignored.

Yes (enabled)

sn_devops.track.gitlab.pullrequests

Default throttle reset
time in minutes from
current time

If a tool doesn't
support a throttle
reset time, the throttle
reset time will be
considered as the
current time plus the
value given for this
property.

15 minutes

[sn_devops.throttle.reset.time.default]

pipeline fails or is
canceled, the change
request associated
with that step is
also canceled. A
change request can
be canceled only
if it has not already
been rejected or is
not in the implement
or review state at the
time of cancellation.

0 (Review)

[sn_devops.change_request.post_imple

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1223


<!-- page 1224 -->
Property

Description

Default

Name

Enable to track Azure
DevOps Code PullRequests. If this is
enabled then azure
pull request webhooks will be autoconfigured when
tool or project is
configured.

When this property
is enabled, the Azure
DevOps pull request
web-hooks are autoconfigured whenever
a tool or project is
configured.

Yes (enabled)

sn_devops.track.azure.pullrequests

Multiply factor for
committer score

The multiplication
factor to be used for
committer score.

1

[sn_devops.committer.score.multiply.fac

Auto archive (in
months)

The duration after
9
which the table data is
to be auto-archived.

[sn_devops.table_auto_archive_duration

Deprecated - Enable
debug flag (Use new
property DevOps log
level)

DevOps Debug
Logger.

Yes (enabled)

[sn_devops.enable_debug]

Note: This
property is
deprecated,
use the

sn_devops.devops_log_level
(DevOps log
level) property
instead.
Maximum processing Maximum processing 300
time per page while
time in seconds, that
importing (in seconds) should be allowed per
page while importing
data from tools.

[sn_devops.import.max.processing.time

Supported webhook
capabilities

Webhook capabilities code,plan,orchestration,artifact,
[sn_devops.supported_webhook_capab
supported by DevOps test
Change Velocity.

DevOps change
request closed state

DevOps change
request closed
state to be used for
change management
customizations.

3

[sn_devops.change_request.closed_sta

Bulk flow timeout (in
milliseconds)

Bulk flow timeout in
milliseconds.

60000

[sn_devops.bulk_flow_timeout]

GitHub/Bitbucket
coding tool commits
per page

Number of coding tool 100
commits per page for
GitHub and Bitbucket.

Folder depth

Retrieves only those
orchestration tasks
and pipelines which
are in folders whose

3

[sn_devops.import.coding_tool.commits

[sn_devops.discover.jenkins.folder.dept

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1224


<!-- page 1225 -->
Property

Description

Default

Name

nesting level is
less than or equal
to the number
specified here. Folder
Depth is the level
of nesting done on
folders in Jenkins,
which contains the
orchestration task
and pipelines that
you want to discover.
For example, if you
want to discover
orchestration tasks
and pipelines for a
folder structure that is
nested 2 times in your
Jenkins environment,
you must enter 2
as the value for this
property.
DevOps change
request handler
subflow

If you are using a
sn_devops.default_change_handler_subflow
[sn_devops.change_request_handler_s
custom subflow
instead of the Default
Change Handler
subflow in Flow
Designer (which is
used to populate
the change request
fields with default
values), then you must
update this property
value to the new
subflow. You can copy
the Default Change
Handler subflow in
Flow Designer and
update it according
to your organization's
needs. For information
on the Default Change
Handler subflow, see
Customizing DevOps
flows.
For information on
copying a subflow,
see Copy a subflow

Coding tool
repositories per page

The number of
repositories that must
be displayed per
page when you import
repositories after

.
100

[sn_devops.import.coding_tool.repos.pe

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1225


<!-- page 1226 -->
Property

Description

Default

Name

connecting to a tool.
The total number of
repositories imported
is not dependent
on this property,
but the number of
repositories that
must be displayed
per page from the
total number of
repositories imported
can be specified
using this property.
For example, if your
tool contains 1000
repositories and you
specify 100 as the
property value, 1000
repositories will be
imported of which 100
will be displayed per
page in the Import
Requests page.
When you discover
repositories,
the number of
repositories that must
be retrieved per API
call in the backend is
also dependent on
this property value.
For a large number
of repositories, set
a relatively smaller
value in this property
so that lesser number
of repositories are
retrieved per call and
the system does not
time out.
GitHub API URL

GitHub API URL.

https://api.github.com [sn_devops.github.api_url]

ITBM Agile planning
Strategic Portfolio
tool issues import max Management (SPM)
limit
Agile planning tool
issues import max
limit.

1000

[sn_devops.import.planning_tool.itbm.is

Assign a universal
task and notify
to update tool
credentials when
expired

Yes (enabled)

[sn_devops.credential_expiration.notify

Admins and tool
owners will be notified
(through universal
task, email, banner,
and field message)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1226


<!-- page 1227 -->
Property

Description

Default

Name

3

[sn_devops.credential_expiration.notify

2

[sn_devops.last_event_received.warnin

on expiry of tool
credentials after the
credentials have
expired. As an admin
or tool owner, you
can update your
tool credentials
and connect the
tool to prevent any
further loss of data.
For information
on updating tool
credentials, see
Update third-party tool
credentials in DevOps
Change Velocity.
Number of days
before tool credential
expiry to assign a
universal task and
notify (if applicable)

Number of days to
display warning alerts
when events were not
being received

Set the number of
days before tool
credentials expiry to
send notifications
(through universal
task, email, banner,
and field message)
to admins for GitHub
tools created with
basic authentication.
To stop sending
proactive
notifications, select
0 as the value
for this property.
For information
on updating tool
credentials, see
Update third-party tool
credentials in DevOps
Change Velocity.
Set the number
of days to display
warning alerts in the
Last event received
field in the tool record
when events were not
being received. This
only applies for tools
which sends data
to ServiceNow. The
Last event received
field in the tool record
header and inside
the tool record will be
highlighted in yellow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1227


<!-- page 1228 -->
Property

Description

Default

Name

7

[sn_devops.last_event_received.critical

No

[sn_devops.enable_ado_bulk_run_com

No

[sn_devops.enable_github_run_commit

for warning alerts
when the events were
not being received.
Number of days to
display critical alerts
when events were not
being received

Enable whether
Azure DevOps Run
Commits must be
determined from
the last successful
pipeline build

Set the number of
days to display critical
alerts in the Last
event received field
in the tool record
when events were not
being received. This
only applies for tools
which sends data
to ServiceNow. The
Last event received
field in the tool record
header and inside
the tool record will be
highlighted in red for
critical alerts when the
events were not being
received.
If enabled, DevOps
Change will pick up
the last commits,
upto a maximum of
2000, created after
the last successful
pipeline build from
Azure DevOps as part
of Run Commits.
If disabled, only the
last 200 commits will
be considered for Run
Commits.

Enable whether
GitHub Run Commits
must be determined
from the last
successful workflow
run

If enabled, DevOps
Change will pick
up the first 2000
commits after the last
successful workflow
run in GitHub as part
of Run Commits.

Note: Skipped
commits are not
considered.
If disabled, only the
last commit will be
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1228


<!-- page 1229 -->
Property

Description

Default

Name

picked up for Run
Commits.
This property
decides whether
to create a Generic
Connection on
configure operation
for Azure DevOps

The step to enter
No
the integration user
name and password is
required to configure
webhooks when this
property is enabled.

[sn_devops.enable_ado_generic_conne

Maximum limit
for the number of
pipelines that can
be discovered for an
Azure DevOps project

Set the maximum
15000
number of pipelines
that can be
discovered in an
import request for an
ADO project. If your
project has more than
15000 pipelines, then
you can try setting
this property value to
that number and see
if the pipelines get
discovered. If not, you
can reduce the value
to a lower number and
try to discover.

[sn_devops.discover.max.pipelines.ado

Update DevOps
Change Request
States Automatically
when Change Receipt
is Enabled

Updates the DevOps
Selected (enabled)
change request states
automatically when
change receipt is
enabled. If you want
to stop the automatic
transition of the
change request states
even when change
receipt is turned on,
you must disable this
property.

[sn_devops.enable_change_receipt_sta

Switch to this user
after token based
authentication is
successful

If the devops.system
devops.system
user is not available
in your ServiceNow
instance, use this
property to set any
other user that has the
sn_devops.integration
role, which is needed
to complete the token
authentication.

[sn_devops.token_auth.user]

Maximum limit for the
number of times the
discover action that
exceeds the rate limit
will be retried.

Determines the
maximum number of
times the discover
action will be
automatically retried
after it reaches the

[sn_devops.max_retry_count_discover]

10

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1229


<!-- page 1230 -->
Property

Description

Default

Name

No (disabled)

[sn_devops.enable_change_creation_w

Yes (enabled)

[sn_devops.enable_change_request_st

rate limit. For example,
if the rate interval in
Azure DevOps is 5
mins, and you enter a
value of 4 here, then
after every 5min, the
discover action will be
retried for 4 times.
Enable change
request creation even
with errors in DevOps
data retrieval

Enable state transition
from New to Assess
when DevOps
Change Request
Manual Approval Flow
is active

If enabled, when
an error occurs in
retrieving DevOps
data like work
items, commits, test
summaries, security
summaries, etc,
the corresponding
change request is
still created. The
data that can be
retrieved will still be
associated with the
change request. For
the data that cannot
be retrieved, the
reason for the error
will be notified to
the user in the thirdparty console, and the
same information will
also be added in the
Change Comments
field in the Step
Execution record
and the change
Worknotes.
If enabled, updates
the change request
state from New to
Assess directly when
the DevOps Change
Request Manual
Approval Flow is
active. If you want to
stop the automatic
transition of the
change request state
to Assess when the
DevOps Change
Request Manual
Approval Flow is
active, you must
disable this property.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1230


<!-- page 1231 -->
Property

Description

Default

Name

Change request
callback timeout (in
minutes)

Set the timeout value
in minutes until which
the system will try to
process a change
when an inbound
event goes into the
waiting state during
a pipeline run. After
that the pipeline
will be aborted. The
reason for the error
is displayed in your
third-party tool's
console logs. When a
pipeline is cancelled
because of callback
timeout, the same
information is added
in the callback record
of the corresponding
step execution.

120 minutes

[sn_devops.change_request_callback_t

Default Bitbucket
branch used for
import request

Specify the default
Bitbucket branch
name that must be
used to create an
import request.

master

[sn_devops.bitbucket_default_branch]

Close code value
for a change
request completed
successfully when
the autoCloseChange
parameter is enabled.

Enter the close code
successful
value for a change
request completed
successfully when
the autoCloseChange
parameter is enabled.

[sn_devops.change_request.auto_close

Close code value for
a change request
completed with
issues when the
autoCloseChange
parameter is enabled.

Enter the close code
value for a change
request completed
with issues when the
autoCloseChange
parameter is enabled.

[sn_devops.change_request.auto_close

Close code value
for a change
request completed
unsuccessfully when
the autoCloseChange
parameter is enabled.

Enter the close code
unsuccessful
value for a change
request completed
unsuccessfully when
the autoCloseChange
parameter is enabled.

[sn_devops.change_request.auto_close

Import based
evidence collection
for orchestration
capability

This property modifies False (disabled)
how pipeline events
are processed. When
switched on, the
setting reduces
instance overhead by
skipping step-level
processing in the

[sn_devops.import_based_evidence_co

successful_issues

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1231


<!-- page 1232 -->
Property

Description

Default

Name

pipeline. The skipped
step-level events will
be ignored with the
processing details,
"IGNORED: This event
is ignored because
the 'Import based
evidence collection
for orchestration
capability' property is
enabled". Conversely,
switching off reverts
to the standard mode,
where all inbound
events undergo
processing.

DevOps System Health dashboard
The System Health dashboard lets the DevOps administrator view the overall health of
integrations, connectivity status, as well as view trends of inbound event processing data.
Role required: sn_devops.admin

Note: The DevOps System Health dashboard is available only in DevOps data model 1.33
and later versions.
Use the System Health dashboard to track the health, event status, and connectivity status of
your DevOps environment. Interactive charts enable you to view and analyze the system health
and inbound event processing details.

Note:
• Scores aren’t real-time. For example, if the chart displays that two events are in the
waiting state, the events could have already moved to the completed state.
• Because the scores are fetched from formula indicators, you can’t drill down to the
records in the KPI page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1232


<!-- page 1233 -->
DevOps System Health Dashboard

Events
From the DevOps Change Workspace, navigate to Administration > System health > System
health dashboard.

Report

Type

Description

Event count

Count trend

Daily trending total count of DevOps
events.
The report displays the percentage and
count, which is the last 7 running sum.
Total count includes events from
[sn_devops_inbound_event],
[sn_devops_event], and the
[sn_devops_processed_event] tables.

Events by state

Pie chart

Total count DevOps events distributed
by current state.

Events by tool

Pie chart

Total count of DevOps events,
distributed by tool.

Retry count

Count trend

Daily trend of the count of total retried
DevOps.
The report displays the percentage and
count variance in the last 24 hours.

Processed count

Count trend

Daily trend of the total count of
processed DevOps events.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1233


<!-- page 1234 -->
Report

Type

Description

The report displays the percentage and
count variance in the last 24 hours.
Error count

Count trend

Daily trend of the total count of DevOps
events in error state.
The report displays the percentage and
count variance in the last 24 hours.

Waiting count

Count trend

Daily trend of the total count of DevOps
events in waiting state.
The report displays the percentage and
count variance in the last 24 hours.

Event trend

Line trend

Total trending count of DevOps events.
The report displays the percentage and
count variance in the last 24 hours.

Processing duration

Line trend

Processing duration of events (in
seconds) measured daily.

Tool connectivity
The Tool connectivity status report displays the connectivity status with details of all the
integrated tools. The tool connectivity table displays the connection status for each connected
tool. A background job tries to connect to the tools every hour and maintains the connection
history. You can view the historical details under a new related list on the tools page.
To see the report, from the DevOps Change Workspace, navigate to Administration > System
health > Tool connectivity.

System health email notifications
A base system DevOps Report group is added by default. An email notification summarizing
the weekly System Health report is sent to the users in this DevOps Report user group that is
specified in the Who will receive related list of the System Notifications > Email Notifications
form, as configured in the base system DevOps Health Report notification. For more information,
see Email notifications .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1234


<!-- page 1235 -->
Note:
• Add users with DevOps Admin (sn_devops.admin) role to the DevOps Report user group.
• You need to remove a user from the group to unsubscribe the user from receiving
notifications.
The base-system email notification contains and displays a comparative digest of key system
health performance indicators as compared to their performance in the previous weekly
report. The comparative data is sourced from relevant tables and calculated based on required
indicators using the date range specified in weekly report. The comparative data and indicators
always display with respect to the same tables and indicators vis-a-vis, the data collected
against the relevant reports and indicator data for the previous week.
To configure the frequency in which the base system email notification is sent out. Navigate to
System Scheduler > Scheduled Jobs > Trigger DevOps Health Check Email Notification and
select the Configure Job Notification related link, and make the schedule changes.
If you want to modify the users who receive the email notification, modify the user group
specified in the Groups field of the Who will receive section. Navigate to System Notification >
Email > Notification > DevOps Health Script. For more information, see Add a user to a group .
Use the Preview Notification option to check your notification.
For example, you can see which users will or will not receive the notification, along with what
instance details and period for which the notification is sent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1235


<!-- page 1236 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1236


<!-- page 1237 -->
DevOps log levels
DevOps log levels allow you to filter logs by level as well by a particular tool or application. Log
levels in the DevOps application let you decide the extent of log detail you need for debugging.
The flexibility to set log levels allows you to select the right log level information that is
appropriate for your organizational needs. You can select custom log levels based on the log
levels or categories that you need and as an application or tool currently supports. In previous
versions of DevOps, the default log level was set to debug, and the [sn_devops.enable_debug]
property that you could either enable or disable. You can select any of the following log levels for
the DevOps application using the DevOps sn_devops.devops_log_level property:
• Error
• Warning
• Information
• Debug
• Trace

Note:
• The base system log level is set to Warning. You must modify the base system value from
DevOps properties.
• By default, if you have different log levels for connected apps and for the DevOps
application, the log level with more information is printed. For example, if you set up the
log level for an app at Error, and for the DevOps application at Trace, the log levels are
printed with the most information (Trace).
Multiple flows for in the DevOps application now use the new logging framework to collect log
data during the flow execution. The following flows currently support the new log levels:
• Artifact & Package registration flows
• Self Service Onboarding
• Self-Service Catalog — App Onboarding
• Change Traceability flow
• Notification flow for plan, code, and orchestration capabilities

Common errors in DevOps Change Velocity
Identify the root cause of errors that occur in DevOps Change Velocity, and see the
corresponding steps that might resolve them.

Tool connection
This table lists the steps required to resolve the errors that might occur when you select the
Submit or Connect button after entering the tool details in the tool connection process:

Message

Action

Tool cannot be created because the tool name Re-enter the tool name.
has not been entered. Enter the tool name,
and try again.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1237


<!-- page 1238 -->
Message

Action

Tool cannot be created because the tool
integration has not been selected. Select the
correct tool integration value, and try again.

Select the correct tool integration value.

Tool cannot be created because the tool URL
is invalid or incorrect. Re-enter the tool URL,
and try again.

Re-enter the tool URL.

Tool cannot be created because the platform
version cannot be determined. Create the
glide.buildtag.last sys property, and try again.

1. Navigate to DevOps > Administration >
Properties.
2. Verify if the glide.buildtag.last
sys property exists.
3. If not, create the

glide.buildtag.last sys property.

Tool cannot be created because the
1. Navigate to All > Connections & Credentials
associated CreateDevOps tool connection is
> Connection & Credential Aliases and
invalid. Create a valid connection alias, and try
open the CreateDevOpsTool record.
again.
2. In the Connections related list, create a
record and enter a name for the connection.
3. On the Connection form, select the
Credential field lookup list, and then select
New to create an admin credential.
4. Select Basic Auth Credentials and enter a
name.
5. Enter admin username and password
(required to access the tools in your DevOps
environment).
A user with connection_admin role can
configure an HTTP connection.
6. On the Connection form, enter https://
<instance name>.service-now.com/ for the
Connection URL.
Tool cannot be created because the
1. Select the credential record link in the
CreateDevOpsTool alias credentials are
message. If you are connecting to the tool
incorrect. Update the credential record, and try
from the workspace UI, right-click on the
again.
credentials record link, and select Open in a
new tab.
2. In the credentials record page, enter the
correct credentials in the Username and
Password fields.
3. Save the changes, and retry connecting to
the tool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1238


<!-- page 1239 -->
Message

Action

Tool cannot be created because the
1. Navigate to All > Connections & Credentials
connection URL of the CreateDevOpsTool alias
> Connection & Credential Aliases and
is incorrect. Use the following URL: https://
open the CreateDevOpsTool record.
<instancename>.service-now.com,and try
2. On the Connection form, enter https://
again.
<instance name>.service-now.com/ for the
Connection URL.
To create a connection alias, you need the
connection_admin role. Contact your system
administrator.

This error occurs if the connection alias field
is empty for a tool record. To create the tool
connection, you need a connection alias.
Only a user having theconnection_admin
role can create a connection alias. You must
reach out to a user having this role, like an
administrator, and get the connection alias
created.

Tool cannot be created because the
<toolname> tool name already exists. Enter a
different name, and try again.

Use a different name for the tool.

Tool cannot be created because the
<toolname> does not have a valid MID server
configuration. Configure a valid MID server,
and try again.

1. If you are using the workspace, check if the
mid server is running and reachable.
2. If you are using the catalog and record
producer, check if the mid server is running
and reachable with application as DevOps
and Capability as REST.

Tool cannot be created because there are no
This error occurs for OAuth authentication.
connection and credentials aliases available
for DevOps Data Model scope. Create a new
connection and credential alias, and try again. 1. Navigate to All > Connections & Credentials
> Connection & Credential Aliases.
2. Create a new alias with the application as
DevOps Data Model.
Tool cannot be created due to a technical
issue while creating the credential record.

1. Navigate to All > Process Automation >
Flow Designer > Executions.
2. Check for the latest execution of the
sn_devops.devops_create_credentials
subflow to know the details of the error.

Tool cannot be created because credential
and domain combination for an active record
already exists.

This error occurs for OAuth authentication.
1. Use a different credential.
2. Check if the existing credential is used by
any active connection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1239


<!-- page 1240 -->
Message

Tool cannot be created due to a technical
issue while creating the connection record.

Action

1. Navigate to All > Process Automation >
Flow Designer > Executions.
2. Check for the latest execution of

sn_devops.create_connection_for_tool
action to know the details of the error.

Tool cannot be created because of the
following reasons:
• The validate subflow is not configured, and
• An integration capability record with the
same subflow name does not exist for the
associated tool integration.
Configure the subflow, and create the
integration capability record with the Validate
action and a subflow name for the tool
integration, and try again.

This error occurs only for custom tool
integrations.
1. Navigate to All > Process Automation >
Flow Designer.
2. In the Flow Designer page, select the
Subflows tab.
3. Open the DevOps Demo Validate Subflow
record from the list.
4. From the Actions section, open the DevOps
Demo Validate Action record by selecting
the Open action in Action Designer (
icon.

)

5. Select More Actions menu > Copy

Action.
6. Enter a new name for the action and select
the application as DevOps Integrations,
and select Copy.
7. In the copied action, select Inputs > REST
step.
8. In the Request Details section,
enter resource path of your
custom tool in the Resource Path

field.
9. Enter the API version of your custom tool in
the Query Parameters field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1240


<!-- page 1241 -->
Message

Action

10. Save the changes.
11. Publish the action by selecting Publish.
12. Navigate back to the DevOps Demo
Validate Subflow record.
13. Select More Actions menu > Copy Subflow.
14. Enter a new name for the subflow and select
the application as DevOps Integrations,
and select Copy.
15. In the copied subflow, delete the
DevOps Demo Validate Action action
and add the action you created in step

11.
a. In the Action field, select the action you
created in step 11.
b. In the aliasGR field, select the Connection
& Credential Alias record from the Data >
Lookup records section.
c. In the apiversion field, select the api
version from the Data > Subflow Inputs
section.
d. Save the changes.
16. Publish the subflow by selecting Publish.
17. Navigate to DevOps > Integrations >
Integration Capabilities and create a record
with the Validate action.
For more information, see Create a DevOps
tool integration.

18. Associate the subflow you created in step 16
with the integration capability record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1241


<!-- page 1242 -->
Message

Action

Tool cannot be created due to a connectivity
issue. Check the <validate_subflow_name>
subflow for more details, and try again.

1. Navigate to All > Process Automation >
Flow Designer > Executions.
2. Check for the latest execution of
<validate_subflow_name> subflow to know
the details of the error.

Tool authorization credentials are invalid. Enter Re-enter the correct username/password for
valid credentials, and try again.
the tool.
Tool cannot be created because there is no
response received from the server. Enter a
valid tool URL or Check if server is up and
running, and try again.
The connection URL is incorrect, check the

1. Re-enter the tool URL.
2. Check the mid server.
Re-enter the tool URL.

URL and try again.
Tool cannot be connected because the GitHub You can find the GitHub app slug name on
app slug name is incorrect. Enter the correct
the settings page of your GitHub app. The
GitHub app slug name and try again.
GitHub app slug name is the URL-friendly
name of your GitHub app. For example, if you
have created a GitHub app with the name
Test App, the corresponding URL-friendly
GitHub app slug name will be test-app. In
your GitHub url - "https://github.com/settings/
apps/test-app", "test-app" is the GitHub app
slug name. For more information, see GitHub
documentation .
Password value is too long and could be
truncated after encryption. Please either
reduce password length or increase field size.

From 18th January 2023, Jira has extended
the length of API tokens for Atlassian
accounts. You must increase the maximum
password value to more than 255 in the
discovery_credentials table to accommodate
the extended character length. For more
information, see the KB1269878
kb article
and Atlassian documentation .

Unexpected behaviour from remote host:
Circular redirect to 'https://bitbucket.org/
account/signin/?next=%2F...%2Frest%2Fapi
%2F1.0%2Fusers'.

This error might occur if you try to connect to
a BitBucket Cloud instance. BitBucket Cloud
is not supported. You must use a BitBucket
Server instance to connect to ServiceNow
DevOps. Connect to your BitBucket instance
via an MID server. A MID server is required if
your tool instance is hosted on-prem. For more
information about MID server, see MID Server
selection

Mismatch in tool URL: Tool URL entered in
ServiceNow: https://<URL of the Jenkins
instance you entered> Tool URL entered in
Jenkins: https://<Jenkins location URL entered
in Jenkins> In Jenkins, under Manage Jenkins
> System, check that your configured Jenkins
URL is the same as the Tool URL entered here.

This error occurs when the Jenkins URL
entered in DevOps is different from the
Jenkins URL entered in your Jenkins instance.
From your Jenkins instance, navigate to
Manage Jenkins > System > Jenkins

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1242


<!-- page 1243 -->
Message

Action

See the troubleshooting tool on-boarding
errors.

Location. The Jenkins URL entered here
must match the URL of the Jenkins instance
entered in DevOps.

Tool permissions
This section lists the steps required to resolve tool permission errors when you create a DevOps
tool using workspace playbooks. Tool permission check guidelines are displayed in a pop-up
when you connect to a tool from the workspace.
Action
If any permission is missing, perform the following steps:
• Update the permissions for the provided credentials in the external DevOps tool.
Select Refresh in the pop-up to perform the checks again.
• Close the pop-up, use different credentials, and select Connect again. The
permission check pop-up appears with results of the newly entered credentials.
• Review the impact column, and if the impact does not affect your use-case, select
Continue anyway.
If all permission checks are successful:
• Select Continue to progress to the next step in the playbook.
• If errors show up in the result, try again by selecting Refresh.
• If the error persists, update the Tool permission check timeout per record (in
milliseconds) property and try again.
Tool permission check timeout property
During the tool connection process, the system performs permission validations
in the foreground, and restricts the tool connection page. For every permission
validation, a REST API call is made to external tools to evaluate the availability of the
permission. The REST API response time may vary based on your network settings.
To avoid delays, you can specify how long the system should wait to get a response
from an external tool before marking the permission as an error. You can specify
this time using the Tool permission check timeout per record (in milliseconds)
property (sn_devops.permission_check_timeout). If you find that
some of the permission checks are resulting in an error, try increasing the timeout
value, and select Refresh in the Permissions pop-up.

Tool notification
This table lists the steps required to resolve errors that might occur in scenarios such as
retrieving commit details, pipeline execution details, pull request details, test summaries:

Reason

Authorization credentials are either invalid
or do not have the minimum required
permissions.

Action

• Verify if your third-party tool credentials
have the required scopes. If you are using
the workspace UI, you can navigate to the
tool record, and select More actions (

)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1243


<!-- page 1244 -->
Reason

Action

> Check credential permissions to know
about the required permissions.
• Verify if you have entered the correct
username/password for your third-party
tool. If you are using the workspace UI, and
you want to update your tool credentials,
then navigate to the tool record, and select
More actions (
) > Check credential
permissions. For more information on
updating credentials, see Update third-party
tool credentials in DevOps Change Velocity.
There is no response from the server. Check
the server connection status, and try again.

• Verify that the DevOps tool server is
reachable and responsive.
• If MID server is configured, verify if the
server is up and running.

Unable to process the request.

Verify if the maximum number of instances
associated with a webhook has exceeded. If
you encountered this error for GitHub, verify if
you have associated more than 20 instances
to a webhook.

Authorization credentials do not have the
minimum required permissions.

Verify if your third-party tool credentials have
the required scopes. If you are using the
workspace UI, you can navigate to the tool
record, and select More actions (
)>
Check credential permissions to know about
the required permissions.

MID server configuration is invalid. Configure a Check if the mid server is running and
valid MID server, and try again.
reachable.
The connection URL is invalid. Enter a valid
URL, and try again.

1. Navigate to All > Connections & Credentials
> Connection & Credential Aliases and
open the required connection & credential
record.
2. From the Connections related list, open the
related Connection form.
3. On the Connection form, verify if the
connection URL of the third-party tool is
correct.

The rate limit has been exceeded. Retry after
{0}.

Rate limit is the number of API calls an app
or user can make within a given time period.
Rate limiting is a technique to limit network
traffic to help prevent users from exhausting
system resources. If the max rate limit allowed

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1244


<!-- page 1245 -->
Reason

Action

in your third-party tool has exceeded, you
might encounter this error.
Your credentials does not have the required
scopes.

Verify if your third-party tool credentials have
the required scopes. If you are using the
workspace UI, you can navigate to the tool
record, and select More actions (
)>
Check credential permissions to know about
the required permissions.

Change request
This table lists the steps required to resolve errors that might occur during change request
creation:

Error

Change request cannot be created because
the type compatibility flag is disabled. Enable
the type compatibility flag in system properties
or configure the change model in the step
record in ServiceNow or enter the appropriate
change model sys id in the pipeline.

Change request cannot be created because
either the change type or change model is not
configured for the pipeline.

Action

• Navigate to All > System
Properties, and enable the

com.snc.change_management.change_model.typ
property, or

• Add the change model in the Step form or
change attributes of the pipeline.
Add the change model or type in the Step form
or change attributes of the pipeline.

General errors
This table lists steps required to resolve few general errors that might occur while working with
the DevOps Change Velocity application.

Issue

Import request not progressing

Action

If an import request remains in the Requested
state for too long while performing an import
for a tool (such as Jenkins, Jira, or GitHub ),
delete the import request and try again.

Note: Delete the existing request to
retry importing the same range.
Tool connection fails

Remove the trailing slash (‘/’) in the
Connection URL field on the HTTP Connection
form.

No change request is created for a Jenkins job Verify that:
under change control

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1245


<!-- page 1246 -->
Issue

Action

• The tool integration in your instance is set
up properly.
• The task has been synced in your instance.
• Tasks and app steps have been configured
in your instance.
Change request creation is not supported if
the task is under change control:
• Is not part of a pipeline (is a standalone task,
for example).
• Is the first in the pipeline.
• Is within the pipeline, but the user manually
triggers, or does SCM checkout directly
on the task under change control (thus not
triggering the pipeline from the beginning).
Jenkins does not block the job under change
control (does not wait for change request
approval)

Verify that the Jenkins location is configured:
Navigate to Jenkins > Manage Jenkins >
Configure System and provide the hostname
for the Jenkins URL field in the Jenkins
Location section.

Note: To avoid caching issues, click

Save even if the Jenkins URL field
already contains a value when you first
open the form.
Events occurring in the payload log with state
Not Connected

If any of the following changes for a
connection made manually (using manual
configuration mode), the connection is
automatically disconnected.
• Alias associated with the tool
• Type of tool
• New active HTTP connection for the same
domain added to the alias
• Existing HTTP connection for the same
domain activated
• Connection URL of the HTTP connection
• Credentials of the HTTP connection
• Use MID Server setting in the HTTP
connection
Enter manual configuration mode and
reconnect.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1246


<!-- page 1247 -->
Issue

Retry Inbound events that fail or error
out due to REST API TimeoutException/
FlowObjectAPIException

Action

Update the Retry Errored Inbound
Events scheduled job to retry processing
inbound events that are in Error state.
• Update the errors or exceptions list to
specify exceptions that you want to retry
event processing for.
• Modify the default Maximum Retry count.
For more information, see Retry errored
inbound events

Pipeline execution in ServiceNow DevOps
does not move forward and waits indefinitely
as the SonarQube scans do not take place
due to the absence of SonarQube tool.
The software quality inbound event displays
the following error message in the processing
details field. "Check if the respective
SonarQube tool is created successfully. If
not, create the SonarQube tool and retry the
inbound event."
Pipeline UI displays broken links between
stages.

For all SonarQube steps in code quality scans,
the user must create SonarQube tool in the
ServiceNow DevOps instance.
For more information, see SonarQube
integration with DevOps Change Velocity

Navigate to Task Executions and ensure that
the Upstream executions column has the
appropriate upstream link references.

Software Quality Results
Software Quality Results display scan details from SonarQube scans configured on your GitHub
Actions, Jenkins, Azure DevOps, or Harness pipelines.

Software Quality Results
You can configure SonarQube scan results from your GitHub Actions, Jenkins, Azure DevOps,
and Harness pipelines to be fetched into ServiceNow DevOps. SonarQube notifications create
inbound events which are then processed by base system subflows associated with all inbound
events with Software Quality capability.
After you have configured SonarQube scans on your pipelines and configured the
corresponding plugins, run the pipelines to fetch software quality scan results into ServiceNow
DevOps. You can view the scan results by Scan ID for each SonarQube scan that was part of
your build or release pipeline execution steps.

Note: For Harness pipelines, you can configure SonarQube scans only through the
generic Docker Container Image. For more information, Implement custom actions for
pipelines using a generic Docker container image. For GitHub Actions, Jenkins, and Azure
DevOps, you can either use the corresponding plugins from the marketplace or the Docker
container image.
Software Quality Summaries
Software Quality Summaries shows you a summary of the scans that are run on the pipelines
with SonarQube scans on the DevOps app on your ServiceNow AI Platform instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1247


<!-- page 1248 -->
Software Quality Summaries
1. Navigate to Software Quality Results > Software Quality Summaries.
2. Click a Scan ID record to view scan details.
The following Software Quality Scan Summary Details appear for the Scan ID.
Software Quality Scan Summary results
Field

Value

Number

The Scan record number in the CMDB.

Initiated By

The user who initiated the scan

Scan ID

The unique Scan ID

Project Name

The SonarQube project name or key.

Last Scanned

Date Time stamp of the last scan

Scan URL

The SonarQube project URL you configured
in the extension task.

Scanner name

The code quality scanner tool name.

Domain

The domain name in which the scans are
configured in the instance.

Tool

The name of the SonarQube tool you created.

Note: The scanID, lastScannedBy, and initiatedBy details are not retrieved when you
onboard Sonar using a non-admin user.
The Software Quality Scan Details related list (for each Scan ID) displays for the following
categories with a corresponding value signifying the count value against the scan result
category.
Software Quality categories for Overall Code metrics:
• Coverage
• Bugs
• Reliability
• Rating
• Code
• Smells
• Duplications
• Security Rating
• Lines of Code
• Vulnerabilities
• Security hotspots
• Maintainability rating
Software Quality categories for New Code metrics:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1248


<!-- page 1249 -->
• Duplications
• New Duplications
• Vulnerabilities
• New Vulnerabilities
• Technical Debt
• New Technical Debt
• Maintainability rating
• New Maintainability rating
• Bugs
• New Bugs
• Lines to Cover
• New Lines to Cover
• Lines of Code
• New Lines of Code
• Coverage
• New Coverage
• Reliability Rating
• New Reliability Rating
• Code Smells
• New Code Smells
• Security Rating
• New Security Rating
• Security Review
• New Security Review
• Security Hotspots
• New Security Hotspots
Software Quality subcategories
The Software Quality Scan Details related list (for each Scan ID) displays software quality
subcategories that you can configure for results of the Vulnerabilities and New Vulnerabilities
categories from the scan results.

Software Quality subcategories- Vulnerabilities and New Vulnerabilities
Use seeded subcategories or create new categories to prioritize and list your scan results of
category type- Vulnerabilities and New Vulnerabilities.
1. Navigate to DevOps > Integrations > Software Quality Sub Categories.
The Software Quality Sub Categories form displays with the following base-system
subcategories:
◦ Blocker
◦ Critical
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1249


<!-- page 1250 -->
◦ Major
◦ Minor
◦ Info

2. Click the New button to create custom sub categories.
3. On the form, fill in the fields.
Software Quality Sub Category
Field

Description

Label

A unique label for the sub category.

Domain

The domain in which the DevOps app is
running.

Name

A unique name for the sub category.

Category

Select a category from the seeded basesystem categories from the lookup list.

4. Click Submit.
You have successfully created a custom sub category.
To view the Software Quality Scan Detail and the Software Quality Category Details related list >
Sub category, follow these steps:
• View scan details as part of Task Executions. View details of all the Sonar scans that are part of
the task execution mapped to a build or release pipeline execution step.
1. Navigate to DevOps > Orchestrate > Task Execution click a relevant Task Execution record.
2. Click the Software Quality Summary related list.
3. Click a relevant Scan ID record.
The Software Quality Scan Summary and Scan Details are displayed.
• View scan details as part of Change Request. View all the scans that were part of this build/
release pipeline in the Software Quality Results > Software Quality Summary related list.
1. Navigate to DevOps > Orchestrate > Pipeline Change Requests
2. Click the Software Quality Summary related list.
3. Click a relevant Scan ID record.
The Software Quality Scan Summary and Scan Details are displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1250


<!-- page 1251 -->
Domain separation and DevOps Change Velocity
Domain separation is unsupported for DevOps Change Velocity. Domain separation enables you
to separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: No support
• The domain field may exist on data tables but there is no business logic to manage the data.
• This level is not considered domain-separated.
For more information on support levels, see Application support for domain separation

.

Domain separation in DevOps Change Velocity overview
®

Use the ServiceNow DevOps application with your DevOps toolchain to provide data insights,
accelerate change, and increase visibility in your DevOps environment using a single system.
In DevOps, domain separation targets tenant domain requester use cases in an application.
The application has been designed to support requester activities within tenant domains. Logic
is in place to route data to tenant domains, based on applicable use cases. The owner of the
instance must be able to set up the application to function normally across multiple tenants. The
application handles data routing to domains.
All tables in DevOps support data separation only; delegated domain separation is not
supported.
To ensure that domain-sensitive information is not available at a global domain, ensure that you
create policies at a domain level and not at a global level. While managing Service Providers,
create policies at the Service Provider level. If you create policies at a global level instead, when
you run the audit, the tag policy "run" findings are created in the Global domain, instead of
respective domains.
Related topics
Domain separation for service providers

DevOps Insights Standard dashboard - Classic
Use the DevOps Insights application with ServiceNow Performance Analytics to gain insight into
your DevOps environment.

Important: The Insights Standard dashboard is deprecated for new users. Instead, you
can use the Insights dashboard from the DevOps Workspace. For more information, see
DevOps Insights dashboard - Workspace

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1251


<!-- page 1252 -->
Note: To collect daily or historical Insights data, unless these jobs were previously
customized, you must select Active and set the Run As credentials to System
Administrator:
• [DevOps] Daily Data Collection (Daily) (active by default)

Note: This is a scheduled job (to be run regularly) to collect daily DevOps data. For
optimal performance, set this job to run during periods of low usage.
• [DevOps] Historical Data Collection (On Demand) (inactive by default)
For new DevOps Insights installations, if you have already been using the DevOps app
and you Installed DevOps Insights at a later date, run the Historical Data Collection job to
collect historical Insights data.

Note: This is a one-time job to collect historical DevOps data, and not meant to be
on a schedule. It might take awhile, so plan on running this job during a period of
low usage.
Reports in the dashboard tabs get updated when the dashboard is refreshed.

Change Acceleration

Change Acceleration
Report

Source list

Description

Total Changes Submitted Yearly

Change Request

Total DevOps changes
submitted yearly.

Avg Time to Close - Last 30
days

Change Request

Average time to close DevOps
changes in the last 30 days.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1252


<!-- page 1253 -->
Change Acceleration (continued)
Report

Source list

Description

Note: This widget uses
average aggregation and
does not support multielement selection.
Change Approval Rate - Last
30 days

Change Request

DevOps average change
success rate for change
requests in the last 30 days:
([[DevOps Change Success]] /
[[DevOps Change]]) * 100

Note: This widget uses
average aggregation and
does not support multielement selection.
Non-DevOps Change
Approval Rate - Last 30 days

Change Request

Non- DevOps change
approval rate for change
requests in the last 30 days:
([[Non-DevOps Change
Approval]] / [[Non-DevOps
Change]]) * 100

Note: Filter is not
applicable to this widget.
Change Request Volume

Change Request

Volume of change requests
created for DevOps in the last
7 days.
Compare the number of
change requests created after
your transition to DevOps so
you can see the advantage
of running DevOps in your
environment.

Pending Changes per Pipeline Step Execution

Number of change requests
that have not been closed for
each pipeline.
See the blockages in each
pipeline that are keeping
the change request from
being completed so you can
investigate the cause.

Average Time to Close
Changes

Change Request

Average time to close DevOps
changes by app.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1253


<!-- page 1254 -->
Change Acceleration (continued)
Report

Source list

Description

Compare DevOps change
request statistics with nonDevOps change requests
to see that DevOps change
requests are getting resolved
faster.
Changes Awaiting Approval

Change Request

Number of DevOps changes
awaiting approval by date
range.
Compare DevOps change
request statistics with nonDevOps change requests
to see that DevOps change
requests are getting resolved
faster.

Non-DevOps Changes
Awaiting Approval

Change Request

Number of Non-DevOps
changes awaiting approval by
date range.
Compare DevOps change
request statistics with nonDevOps change requests
to see that DevOps change
requests are getting resolved
faster.

Accelerate Metrics
The Accelerate Metrics tab shows deployment frequency, lead time, MTTR, and change failure
rate info.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1254


<!-- page 1255 -->
Accelerate Metrics
Report

Source list

Deployment Frequency Monthly

Step Execution

Description

Number of successful
production deployments in a
month.
Applies to steps of type Prod
Deploy that are in completed
state.

Average Lead Time

Pipeline Execution

Average of:
([Time the code is
successfully pushed to
production] - [Earliest commit
time])
Applies to steps of type Prod
Deploy that are in completed
state.

Note: This widget uses
average aggregation and
does not support multielement selection.
Mean Time to Resolve - Last
30 days

Database view joined by
Average resolve time for an
Incident, Change Request,
Step Execution, Step, Pipeline, incident caused by a DevOps
change in the last 30 days.
and App lists.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1255


<!-- page 1256 -->
Accelerate Metrics (continued)
Report

Source list

Description

Note: This widget uses
average aggregation and
does not support multielement selection.
Change Failure Rate - Monthly Change Request

Average change failure rate in
a month.

Note: This widget uses
formula and does not
support multi-element
selection.
Deployment Frequency

Step Execution

Number of successful
production deployments in
the last 30 days.
Applies to steps of type Prod
Deploy that are in completed
state.

Change Failure Rate

Change Request

Mean Time to Resolve Trend

Database view joined by
Daily average resolve time
Incident, Change Request,
for an incident caused by a
Step Execution, Step, Pipeline, DevOps change.
and App lists.

Lead Time

Pipeline Execution

Average change failure rate in
the last 30 days.

([Time the code is
successfully pushed to
production] - [Earliest commit
time])
Applies to steps of type Prod
Deploy that are in completed
state.

Note: This widget uses
average aggregation and
does not support multielement selection.

Operational Stability
The Operational Stability tab shows:
• Service availability
Average service availability and daily service availability.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1256


<!-- page 1257 -->
• Mean time to resolve (MTTR)
Mean time to resolve and daily mean time to resolve.

Note: You must install the Service Portfolio Management Foundation
(com.snc.service_portfolio) plugin to see service availability widgets.
Demo data is also provided for the service availability widgets.

Note: You must install the Service Portfolio Management Foundation
(com.snc.service_portfolio) plugin before installing the DevOps Insights application to see
demo data.

Operational Stability
Report

Source list

Description

Mean Time to Resolve - Last
30 days

Database view joined by
Average resolve time for an
Incident, Change Request,
Step Execution, Step, Pipeline, incident caused by a DevOps
change in the last 30 days.
and App lists.

Note: This widget uses
average aggregation and
does not support multielement selection.
Incidents - Monthly

Incident

Number of incidents in a
month (based on pipeline
steps of type Prod Deploy)
linked to business service in
CMDB.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1257


<!-- page 1258 -->
Operational Stability (continued)
Report

Source list

Description

This report provides an
indication of environment
stability.
Average Service Availability Last 30 days

Database view joined by
Service Availability, Service
Offering, Business Service,
Step, Pipeline, and App lists.

Average service availability
in the last 30 days (based on
pipeline steps of type Prod
Deploy) linked to application
service in CMDB.
This report provides an
indication of environment
stability.

Outages - Monthly

Outage

Number of outages in a month
(based on pipeline steps of
type Prod Deploy) linked
to the associated business
service in CMDB.
This report provides an
indication of environment
stability.

Mean Time to Resolve Trend

Database view joined by
Daily average resolve time
Incident, Change Request,
for an incident caused by a
Step Execution, Step, Pipeline, DevOps change.
and App lists.

Service Availability Trend

Database view joined by
Service Availability, Service
Offering, Business Service,
Step, Pipeline, and App lists.

Daily average service
availability (based on pipeline
steps of type Prod Deploy)
linked to application service in
CMDB.
This report provides an
indication of environment
stability.

Incidents Trend

Incident

Daily number of incidents
(based on pipeline steps of
type Prod Deploy) linked to
business service in CMDB.
This report provides an
indication of environment
stability.

Outage Trend

Outage

Daily number of outages
(based on pipeline steps of

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1258


<!-- page 1259 -->
Operational Stability (continued)
Report

Source list

Description

type Prod Deploy) linked to
business service in CMDB.
This report provides an
indication of environment
stability.

Development

Development
Report

Source list

Commit Frequency

Commit

Description

Number of commits measured
daily.
Smaller more frequent
commits are preferred over
larger less frequent ones.

Average Branches per
Repository

Branches, Repository

Average branches per
repository on a given day.

Note: This widget uses
formula and does not
support multi-element
selection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1259


<!-- page 1260 -->
Development (continued)
Report

Source list

Average Commits per Pipeline Commit, Pipeline Execution
Execution

Description

Average commits per pipeline
on in the last 30 days:
[[Total number of commits]] /
[[Number of pipeline
executions]]

Note: This widget uses
average aggregation and
does not support multielement selection.
A low number is preferable,
which indicates a
concentrated effort, versus
switching from task to task
without completion.
Commits without Work Item

Commit

Commits made that are not
tied to a work item, grouped by
committer, in the last 30 days.
This report is useful for
investigating and resolving
why a commit is not tied
to a work item, because all
commits should be tied to a
work item.

Work Items

Work Item

Number of work items that
are complete or working in
progress in the last 30 days.

Note: Filter is not
applicable to this widget.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1260


<!-- page 1261 -->
Commit Insights

Commit Insights
Report

Source list

Active Committers

Commit

Description

Committers that submitted
commits in the last 30 days.
Shows how many active
committers there are.

Note: This widget
uses count distinct
aggregation and does
not support multielement selection.
Average Commits per
Committer

Commit

Total number of commits
in the last 30 days / Active
committers.
Shows how often committers
are committing. A higher value
is more favorable.

Note: This widget uses
formula and does not
support multi-element
selection.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1261


<!-- page 1262 -->
Commit Insights (continued)
Report

Source list

Average Files Added per
Commit

Commit, Commit Details

Description

Total number of files added
in the last 30 days / Total
number of commits in the last
30 days.
Shows how few files are
committed at a time. A lower
value is more favorable.

Note: This widget uses
formula and does not
support multi-element
selection.
% Commits Reverted

Commit

Commits reverted in the last
30 days / Total number of
commits in the last 30 days.
Shows how many commits
have been reverted. A lower
value is more favorable.

Note: This widget uses
formula and does not
support multi-element
selection.
Top Committers

Commit

Committers with the highest
number of commits in the last
30 days.
Provides visibility into the
users that commit the most.

Top Reverters

Commit

Committers with the highest
number of reverts in the last
30 days.
Provides visibility into the
users that revert commits the
most.

Commits Added per App

Commit, Commit Details

Number of commits added per
app in the last 30 days.
Provides visibility into the
development activity for each
app.

Note: Filter is not
applicable to this widget.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1262


<!-- page 1263 -->
Deployments

Deployment frequency lets you know how often you are delivering value based on production
deployments. Typically, more frequent deployments are desired.

Note: Metrics are based off production deployments (Type field is set to Prod Deploy in
the app step).
Deployments
Report

Source list

Deployment Frequency Monthly

Step Execution

Description

Number of successful
production deployments in a
month.
Applies to steps of type Prod
Deploy that are in completed
state.

Failed Deployments

Step Execution

Number of failed production
deployments in the last 30
days.
Applies to steps of type Prod
Deploy that are in failed or
user-canceled state.

Deployment Success Rate

Step Execution

Deployments success rate
over the last 30 days.
Deployment Success Rate
= (Number of Successful

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1263


<!-- page 1264 -->
Deployments (continued)
Report

Source list

Description

Deployments in the last
30 days / Total Number of
Deployments in the last 30
days) * 100
Applies to steps of type Prod
Deploy in completed state.

Note: This widget uses
formula and does not
support multi-element
selection.
Average Lead Time

Pipeline Execution

Average of:
([Time the code is
successfully pushed to
production] - [Earliest commit
time])
Applies to steps of type Prod
Deploy that are in completed
state.

Note: This widget uses
average aggregation and
does not support multielement selection.
Successful Production
Deployments

Step Execution

Frequency of successful
production deployments over
time broken down by app.
More frequent production
deployments are preferred.

Failed Production
Deployments

Step Execution

Commit-to-Deploy Lead Time

Pipeline Execution

Frequency of failed
production deployments over
time broken down by app.
Duration from the earliest
commit time to production
deployment (for a successful
pipeline execution).
Minimizing the time it takes
from committing code to
successfully running it in
production is preferable.
When the lead time is high,
you can investigate the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1264


<!-- page 1265 -->
Deployments (continued)
Report

Source list

Description

pipeline to identify the slowest
steps. For example, a manual
change approval process
could increase lead time.

System Health

System Health
Report

Source list

Task Execution Success Rate

Task Executions

Description

Success rate for tasks run by
the execution tools over time:
[[Task Execution Success]] /
[[Task Execution]] * 100

Note: This widget
does not support multielement selection.
Number of Task Executions

Task Executions

Number of API calls

Event

Default number of tasks
executions in the last 30 days.
Default number of API calls in
the last 30 days.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1265


