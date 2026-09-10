# Zurich IT Service Management — DEX for service desk agents / Digital Portfolio Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1901–1977 of 3857

Sections: DEX for service desk agents (p1901); Digital Portfolio Management (p1907); Explore (p1908); Configure (p1936); Get started (p1974)

---

<!-- page 1901 -->
DEX for service desk agents
Diagnose and resolve issues on DEX monitored devices directly from the Investigation tab of
an incident record or by using the DEX diagnosis and resolution agentic workflow from the Now
Assist panel.
Service desk agents can diagnose and resolve incidents for DEX monitored devices from the
Service Operations Workspace by using automated incident diagnosis, suggested resolutions,
and AI-driven analysis and resolution plans.
• Use the DEX issue diagnosis and resolution agentic workflow to resolve detected device
issues with automated root cause diagnosis and targeted resolution plans. For more
information, see DEX issue diagnosis and resolution agentic workflow.
• Expedite incident resolution from the Investigation tab of incident records by using
DEX incident diagnostics and suggested resolutions. For more information, see Incident
investigation with DEX.

Incident investigation with DEX
Service desk agents can diagnose and resolve issues for Digital End-User Experience (DEX)
monitored devices from an incident record by using DEX diagnostics and suggested resolutions.
Incident investigation with DEX provides a comprehensive view of device and application health
metrics, issue diagnosis, and suggested resolutions. It helps identify and resolve common
device and application issues, leading to faster incident resolution and enhanced service desk
experience.

Accessing DEX incident diagnostics and suggested resolutions
You can access incident diagnostics and suggested resolutions for DEX monitored devices
from the Investigation tab of an incident record page. Navigate to the Service Operations
Workspace and open the incident record from the Incidents list. For more information, see
Incident Management in Service Operations Workspace and Features of the Investigation tab.

Important: The configuration item (CI) associated with the incident record must be a DEX
monitored device.
DEX incident diagnostics and suggested resolutions

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1901


<!-- page 1902 -->
Device health and metric checklist
Review the overall health and performance of the device associated with the incident record in
the Device health section. The Device health checklist shows details of device and application
metrics for a specified duration. For more information, see Device health overview in incident
investigation with DEX.
Selecting the Refresh icon
metrics.

displays the latest available data for device and application

Suggested resolutions and remedial actions
View issue diagnosis and suggested resolutions to improve device and application performance
in the Suggested resolutions tab. For more information, see Suggested resolutions in incident
investigation with DEX.
In addition to the suggested resolutions, you can run remedial actions from the Action library to
resolve device and application issues. For more information, see Run remedial actions from the
Action library.

Playbook Experience for remedial actions
Use the Playbook Experience in incident investigation with DEX to view details of remedial
actions in progress, cancel ongoing actions, and view playbook history. For more information,
see Manage remedial actions in DEX incident investigation Playbook.
Device health overview in incident investigation with DEX
View the overall health and related metrics for Digital End-User Experience (DEX) monitored
devices for incident investigation with DEX.
The Device health section shows device and application performance classified as Good,
Average, or Poor based on corresponding device health categories.
• Device performance: Overall health and performance of the device.
• Network stability: Performance and consistency of the network connection.
• Security status: Security or protection level of the device.
• Application performance: Performance of installed and web applications on the device.

Device health checklist
The Device health checklist shows detailed performance data for device and application metrics.
You can view data for the following durations through the Show drop-down list:
• Latest available data
• Last 24 hours
• Last 7 days
• Custom duration by selecting the start and end dates within the last seven days
By default, the latest available data is displayed.
A checklist shows basic device and application health metrics. You can display advanced
metrics by toggling the Show additional metrics option.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1902


<!-- page 1903 -->
Note: Metrics displayed in the Device health check list are included in the base system
metric list. As a DEX administrator, you can customize the base system metrics. For more
information, see Customize metric definitions.
Selecting View detailed device health displays the Device details page. For more information,
see Device details pages.

Device metrics
The Device metrics section shows information about device, network, and security metrics. This
section displays the following information:
• Overview information like last access time, memory usage details, users logged in, and last
Blue Screen of Death (BSOD) occurrence and cause, if applicable.
• Device performance metric details like CPU, disk, and memory usage percentages, device up
time, number of device crashes, and reboot duration.
• Network metric details like WiFi RSSI value and transmission rate.
• Device security metrics like firewall and antivirus status.

Application metrics
The Application metrics section shows information related to application status and metric
details. From the drop-down list, select the application you want to monitor for performance.
This section displays the following information:
• Overview information like the application type (installed or web), application status and usage
time, version number, and last access time.
• Application performance metric details like CPU and memory usage percentages, number of
crashes and freezes, and average page load and response times.
Suggested resolutions in incident investigation with DEX
Review and execute suggested resolutions from the Investigation tab of incident records to
resolve detected issues on DEX monitored devices.

Suggested resolutions
View issue diagnosis and suggested resolutions to resolve detected device health issues. Each
resolution card displays information such as the resolution name, related device health category,
issue name and description, impacted metrics, resolution source, last attempted timestamp, and
execution status.
Suggested resolutions are of the following types:
• Self-help instruction: Displays steps that you can manually execute to resolve an issue.
• Catalog request: Automatically submits a service catalog request for fulfillment.
• Help resource: Link to documentation such as Knowledge Base articles and other web
resources with steps that you can manually execute to resolve an issue.
• Remedial action: Automated action executed on the end user's device to resolve an issue.

Tracking completed actions
Track the status of completed resolutions, including actions that failed to execute, by selecting
the Completed tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1903


<!-- page 1904 -->
Note: Only actions executed from the Suggested resolutions in DEX incident investigation
are displayed in the Completed action list.
An action card displays information like the action name, completion status, related device
health category, issue name and description, action source, and completion time.
The available completion states for different resolution types are:
• Remedial actions: Completed and Action failed.
• Catalog requests: Item requested and Request completed.
• Self-help instructions and help resources: Completed

Action library for remedial actions
In addition to the suggested resolutions, you can run remedial actions from the Action library to
resolve device and application issues. For more information, see Run remedial actions from the
Action library.

Note: Remedial actions run from the Suggested resolutions and Action library are added
to a playbook in the DEX incident investigation page. You can monitor current and past
actions or cancel ongoing actions from the playbook. For more information, see Manage
remedial actions in DEX incident investigation Playbook.
Execute suggested resolutions from incident investigation with DEX
Review and execute suggested resolutions from the Investigation tab of incident records to
resolve detected issues on DEX monitored devices.

Before you begin

Role required: sn_dex.service_desk_user, sn_dex.engineer

About this task

In addition to the suggested resolutions, you can run remedial actions from the Action library in
incident investigation with DEX. For more information, see Run remedial actions from the Action
library.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List icon
section.

from the navigation pane and open the incidents list from the Incidents

3. Open the incident record for a DEX monitored device and select the Investigation tab.
4. Execute resolutions from the Suggested resolutions tab to solve device and application
issues.
◦ Self-help instruction: Select View self-help instructions to view and execute steps to
resolve an issue. After completion, select the Mark as completed check box.
◦ Catalog request: Select Create catalog request to submit a catalog request automatically.
◦ Help resources: Select View help resource to navigate to documentation with steps to
resolve the issue. After executing the steps, select the Mark as completed check box.
5. If a suggested resolution is a remedial action, execute it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1904


<!-- page 1905 -->
a. Select Run action to execute the remedial action automatically.
A progress bar shows the execution stages. If the action requires end-user approval, the
progress bar pauses with the message Awaiting user approval.
b. If end-user approval is required, contact the end user of the device to obtain approval.
c. Once the approval is received, select the Playbook icon

from the contextual side panel.

d. Expand the device name accordion.
e. Select the card for the action that requires end-user approval.
f. In the User approval check card, select the check box to confirm that you have received user
approval.
g. Select Submit.
6. Optional: Run multiple remedial actions by selecting the check boxes near the action names
and then selecting Run selected actions.
7. Optional: Monitor the status of executed resolutions, including actions that failed to execute,
by selecting the Completed tab.
8. Optional: Cancel an ongoing remedial action.
a. Select the Playbook icon

from the contextual side panel.

b. Expand the device name accordion.
c. Choose the action and select Cancel on the action card.
Run remedial actions from the Action library
Run remedial actions from the Action library in incident investigation with DEX to resolve
detected device and application issues.

Before you begin

Role required: sn_dex.service_desk_user, sn_dex.engineer

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List icon
Incidents section.

from the navigation pane and navigate to the incidents list from the

3. Open the incident record for the DEX monitored device and select the Investigation tab.
4. Select the Action library icon

in the contextual side panel.

5. Browse the list of available remedial actions and choose an action that addresses your issue.
6. Select Run action on the action card to execute the action.

What to do next

Monitor the progress of an action or cancel an ongoing action from the playbook panel. For more
information, see Manage remedial actions in DEX incident investigation Playbook.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1905


<!-- page 1906 -->
Playbook for remedial actions in incident investigation with DEX
The Playbook Experience displays current and past remedial actions executed from different
sources. You can manage actions run from the Suggested resolutions or Action library within a
DEX incident investigation page.
Remedial actions executed from the following sources are displayed in the Playbooks panel of
the incident record:
• Suggested resolutions from the Investigation tab of the incident record.
• Action library within the incident record
• Action library within a DEX device page
• DEX Self-service for employees
• Proactive Engagement
Each action card in the Playbooks panel displays information like the action name, source,
status, start time, and name of user who initiated the action.
You can monitor current and past remedial actions and cancel ongoing actions run from the
Suggested resolutions or Action library within the incident record.
• Current actions: Actions with the status of New or In Progress.
• Past actions: Actions with the status of Completed, Canceled, or Failed.
For more information, see Manage remedial actions in DEX incident investigation Playbook.
Manage remedial actions in DEX incident investigation Playbook
View current and past remedial actions executed from different sources in the Playbooks panel.
Monitor or cancel actions run from the Suggested resolutions or Action library within a DEX
incident investigation page.

Before you begin

Role required: sn_dex.service_desk_user, sn_dex.engineer

About this task

You can monitor only current and past remedial actions and cancel ongoing actions run from the
Suggested resolutions or Action library within the incident record.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List icon
Incidents section.

from the navigation pane and navigate to the incidents list from the

3. Open the incident record for a DEX monitored device and select the Investigation tab.
4. Select the Playbook icon

from the contextual side panel.

5. Expand the device name accordion to view current actions.
6. Optional: Monitor actions with the status of New or In Progress by selecting View Playbook
on the action card.
7. Optional: Cancel an ongoing action by selecting Cancel on the action card.
8. Optional: View the history of past remedial actions with the status of Completed, Canceled, or
Failed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1906


<!-- page 1907 -->
a. Select the History icon

in the Playbooks panel.

b. Expand the device name accordion.
c. Track stages of past actions by selecting View Playbook on an action card.

Digital Portfolio Management
Manage and maintain all your solutions (services, service offerings, business applications, and
®
service instances) from a single location using the ServiceNow Digital Portfolio Management
(DPM) Workspace. DPM pulls in data from across the ServiceNow platform so you see impacts in
the context of solutions that you own or care about.
https://player.vimeo.com/video/995348445?
badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
This video provides an overview to manage your service-related data in the DPM Workspace
using the plan, build, run life cycle.

Get started

Explore

Configure

Learn about the Digital Portfolio
Management (DPM) Workspace
concepts and features.

Configure the DPM Workspace
environment, tools, and user access.

Get started

Work with portfolios

Get started with the DPM Workspace
and manage your solutions.

Work with personal and enterprise
portfolios in the DPM Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1907


<!-- page 1908 -->
Work with solution data

Reference

Work with solution data in DPM.

Get information about the DPM
Workspace administration.

Troubleshoot and get help
• Explore resources in the Digital Portfolio Management Toolkit in the ServiceNow Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Digital Portfolio Management
Learn about the Digital Portfolio Management (DPM) Workspace features and benefits to manage
all of your solutions in one place. Solutions in the context of DPM are services, service offerings,
business applications, and service instances.

Digital Portfolio Management overview
The DPM Workspace is one of several configurable workspaces that ServiceNow provides. For
information about workspaces, see the following topics.
• List of workspaces
• Open a Configurable Workspace experience
The DPM Workspace enables you to:
• View and manage all your solutions in a central workspace through the full life cycle of plan,
build, run, and optimize.
• Use key performance indicator (KPI) groups to track how each solution is performing.
• Drill down to the details of each solution to see the impacts.

Digital Portfolio Management users
Users
User

Description

DPM admin

The DPM admin role sets up the DPM Workspace
environment, including the tabs that show, key performance
indicator (KPI) groups and thresholds, and integrations with
other ServiceNow and third party applications.

DPM manager

The DPM manager role works in the DPM Workspace
environment to view all solutions and their KPI metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1908


<!-- page 1909 -->
Digital Portfolio Management workflow
Both DPM admins and DPM managers benefit from working in the DPM Workspace.
DPM Workspace overview

• With a DPM admin role, you can:
◦ Configure DPM Workspace solution pages.
◦ Create and map key performance indicator (KPI) groups.
◦ Create enterprise portfolios.
◦ Use the DPM Admin Center guided walk-through to:
▪ Identify solutions to configure
▪ Identify portfolios
▪ Assess planning items
▪ Assess build metrics
▪ Map KPI groups
▪ Learn about the next steps that you can take
• With a DPM manager role, you can:
◦ Personalize your DPM Workspace homepage.
◦ Create and manage personal portfolios.
◦ Create demands and continual improvement initiatives (CIM).
◦ Manage the end-to-end life cycle of your services and applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1909


<!-- page 1910 -->
Digital Portfolio Management benefits
The Digital Portfolio Management Workspace provides several benefits to help you manage the
life cycle of services, service offerings, business applications, and service instances.
Digital Portfolio Management benefits
Benefit

Feature

Users

Manage the full life cycle of your services in
the plan-build-run framework to visualize your
services and to plan for them in the future.

Digital Portfolio
Management lifecycle management

DPM manager

Align with the Common Service Data Model
(CSDM) to get a holistic view of your IT
landscape.

Apply the CSDM
DPM admin
guidelines to Digital
Portfolio Management

View all services, service offerings, service
instances, and business applications in
personal portfolios and enterprise portfolios.

Work with portfolios
in Digital Portfolio
Management

DPM manager to view
solutions.
DPM admin to create
enterprise portfolios.

View and set up key performance indicator
(KPI) groups for services, service offerings,
service instances, and business applications.

KPI groups in Digital
Portfolio Management DPM manager to
view KPI groups and
metrics.
DPM admin to set up
and adjust KPI groups.

®

Integrate with the ServiceNow Strategic
View service and
Planning application to see the roadmap of
service offering
services, their performance levels, and to view details
a comprehensive roadmap.
View business
See service impacts such as critical incidents, application details
outages, changes, risks, and audits. You can
also see when other teams are mitigating such
impacts.
See DevOps Change Workspace data for
business application details on accelerate
metrics and flow metrics.

DPM manager

DPM manager

DevOps value stream
DPM manager to view
metrics in Digital
Portfolio Management DevOps data.
DPM admin to turn on
the DevOps system
property.
See Configure the
Digital Portfolio
Management
experience.

Configure Digital
Integrate with Process Mining to see the status Portfolio Management DPM manager to view
of solution KPI metrics, and adjust as needed. to integrate with
Process Mining data.
Process Mining
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1910


<!-- page 1911 -->
Digital Portfolio Management benefits (continued)
Benefit

Feature

Users

Process Mining
analyst to enable the
system property.
See Process Mining
components for
Digital Portfolio
Management.

What to explore next
To learn more about configuring and using DPM, see:
• Configuring Digital Portfolio Management
• Getting started with Digital Portfolio Management
• Work with portfolios in Digital Portfolio Management
• Work with solution data in Digital Portfolio Management
• Digital Portfolio Management reference

Digital Portfolio Management Workspace homepage
The Digital Portfolio Management (DPM) Workspace homepage is the starting point where you
navigate to all aspects of your solutions and portfolios. You’re encouraged to personalize your
Digital Portfolio Management (DPM) homepage so you can view and track the solutions that
matter to you most.

DPM Workspace overview
The DPM homepage (
) is the central area where you see the status of all your solutions.
To access DPM, log in to your provided ServiceNow instance and then select Workspaces
> Digital Portfolio Management. When you first log in to the DPM Workspace, the system
uses certain fields to generate a set of default solution cards that display on your homepage.
After you personalize your homepage, the system remembers your updates in the
dpm_home_page_item table so that next time you log in to the workspace, your personalized
homepage displays. For information on the first login solution cards, see Digital Portfolio
Management homepage default solution cards.
The homepage includes the following main areas.
• A personalized message that welcomes you and a link to an overview video about DPM.
• A Current status section that contains solution cards with solutions that you’re associated with
based on system-defined fields. You're encouraged to personalize the solutions in this section.
The layout enables you to see a holistic picture of all solutions you care about.

Tip: If you don't see any solution cards (an empty state), select Add items to add
solutions to your homepage.
• Solution cards list needs attention attributes, which vary depending on the type of solution. At
a glance, you can see each attribute name and the number of times it affects the solution. Also,
the color and status icon determine if the needs attention attribute marks the solution as good,
moderate, or critical.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1911


<!-- page 1912 -->
Note: The data on each solution card reflects current data at the time that you view the
page. Refresh the page (

) to update the data.

• Fields to enable you to search, filter, and personalize what you see on your DPM Workspace
homepage. For more information, see Personalize the Digital Portfolio Management Workspace
home page.
• A Personal portfolios section that shows personal portfolios that you recently visited in DPM.
You can also select the link to go to the personal portfolios page.
• An Enterprise portfolios section that shows enterprise portfolios that you recently visited in
DPM. You can also select the link to go to the enterprise portfolios page.
• A Recently viewed section that shows items that you recently visited in DPM.

Current status solution cards
You're encouraged to personalize the Current status section to see those solutions that matter
to you most. Each solution card provides you with detailed information about your solutions. See
the image and corresponding numbers for more information.

Important: For the Zurich release and later, the labels for the items in the
[cmdb_ci_service_technical] table and [service_offering] table are Technology Management
Service and Technology Management Service Offering, respectively. Prior to the Zurich
release, the labels are technology management service and technology management
service Offering.
1. Solution name and type (service, service offering, business application, or service instance).
2. Actions menu
to view the solution's details, its relationship map, or remove the item from
your homepage. For more information, see Personalize the Digital Portfolio Management
Workspace home page.
3. Needs attention attributes that determine the status of each card. Needs attention attributes
differ based on the solution type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1912


<!-- page 1913 -->
Needs attention default thresholds
DPM comes with default thresholds for Needs attention attributes. You’re encouraged to
personalize the thresholds to define your metrics for good, moderate, and severe. See
Personalize the Digital Portfolio Management Workspace home page.
Needs attention default thresholds
Color

Symbol

Meaning

Default threshold

Green

Good

No value (empty)

Orange

Moderate

• Critical incidents: Empty
• Outages: Empty
• Changes: Empty
• Alerts: 3
• Risks: 1
• Audits: Empty

Red

Severe

• Critical incidents: 1
• Outages: 1
• Changes: Empty
• Alerts: 10
• Risks: 3
• Audits: Empty

Browser support for workspaces

Important: Due to significant performance issues, ServiceNow recommends that
customers migrate away from Internet Explorer 11. For more information, refer to
KB0683275 .
Related topics
Digital Portfolio Management homepage default solution cards
Personalize the Digital Portfolio Management Workspace home page
List of workspaces

Digital Portfolio Management life-cycle management
The Digital Portfolio Management (DPM) Workspace enables you to work in the plan-build-run
life-cycle model. You can manage solutions that you own and view solutions that may have an
impact on services or products that you care about.
®

The DPM plan-build-run life cycle surfaces data from other ServiceNow products in a central
location. To view data and take basic actions in the DPM experience, you must install the plugins
and roles. For more information, see Digital Portfolio Management related applications and data
sources.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1913


<!-- page 1914 -->
Listen to an overview of the DPM team, the application, and how it works for solution owners in
the plan-build-run life cycle.
Digital Portfolio Management overview.
The life-cycle management phases come standard with DPM but all records are fully
configurable to match how you work. For information on how Admins can control the
configuration in DPM, see Configure the Digital Portfolio Management experience. For
information about other configurations, see UI Builder .
Life-cycle management phases in DPM
Plan

Build

Run

Plan within
the context of
your solutions
(services,
applications, or
products).

Track the progress of work being
delivered for your solutions,
including epics and stories in the
current sprint.

Monitor critical key performance
indicator (KPI) results and operational
performance of your solutions.

• View the
roadmap
and roadmap
dependencies
(launches
Strategic
Planning).
• View the
backlog and
rearrange each
planning type
to prioritize
and move
some into the
pipeline.
• View the
summary of
what's been
planned for the
solution:
◦ Review ideas
and their
state, and
promote new
ideas.
◦ See
demands
within the
solution's
planning
organization
and
hierarchy.

• View the status of current
projects.
◦ View active projects with
percent complete metrics
(with a color grid and a list
view).
◦ See projects that are
overdue or have missed key
milestones.
◦ View projects with critical
issues.
◦ Assess how teams are
delivering on the volume of
work.
• View changes and improvement
initiatives:
◦ View status with a color grid
and a list view.
◦ See what's overdue by month.

• View a performance snapshot
and details of your solutions using
Performance Analytics indicators.

Note: If you have a standard
license for Performance
Analytics, then you see
historical data (the last 6
months), and you can’t edit
the Performance Analytics
indicators. See KB1637474
for
information about KPI results on
DPM pages.
◦ Gauge performance against
commitments.
◦ See the availability of the solution
as a percentage.
◦ See the number of new incidents.
◦ View the number of subscribers.
◦ See the customer satisfaction
score.

◦ View upcoming changes.

◦ View child offering breakdowns.

◦ View change backlog growth
in the last 30 days.

• Receive alerts to current and ongoing
impacts.

• View DevOps information for
business applications:

• View business application
deployments:

◦ View flow metrics from
DevOps Insights to view
details on epics, bugs,
stories, and works in progress

◦ Assess hardware and software
models and technology risk
®
using data from ServiceNow
Governance, Risk, and Compliance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1914


<!-- page 1915 -->
Life-cycle management phases in DPM (continued)
Plan

Build

Run

in the context of your
business applications.

◦ View
projects and
improvement
initiatives.

◦ View accelerate metrics
from the DevOps Change
workspace to manage scrum
and waterfall development
and to gain visibility into your
software development life
cycle.

Note: To view DevOps
accelerate metrics and
flow metrics in DPM,
admins must enable the
DevOps system property.
See Configure the Digital
Portfolio Management
experience for more
information.

◦ Confirm risk conformance and act
on risk remediation tasks.
◦ View accelerate metrics from
the DevOps Change Workspace
to manage scrum and waterfall
development and to gain visibility
into your software development life
cycle.

Note: To view DevOps
accelerate metrics in DPM,
admins must enable the
DevOps system property. See
Configure the Digital Portfolio
Management experience for
more information.

Related topics
View service and service offering details
View business application details
View service instance details
View service and service offering details
View information about services and service offerings that may impact your solutions. Each
Digital Portfolio Management (DPM) page presents the life-cycle phase information in tabs —
Plan, Build, Run, and Info.

Status of services and service offerings
When viewing the service and service offering details in DPM, the Phase and Status of each
item is listed on the workspace view and on the list view.
When viewing details of a service or service offering that's retired, an alert banner along the top
of the workspace view states that it's retired. In the list view, the Phase is listed as Retired, the
life-cycle stage is End of Life, and the life-cycle stage status is Retired.

Important: If your organization transitioned from the traditional Service Portfolio
Management fields to the CSDM life-cycle fields, then the field names differ from this
document. For more information, see Apply the CSDM guidelines to Digital Portfolio
Management.

Important: For the Zurich release and later, the labels for the items in the
[cmdb_ci_service_technical] table and [service_offering] table are Technology Management
Service and Technology Management Service Offering, respectively. Prior to the Zurich
release, the labels are technology management service and technology management
service Offering.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1915


<!-- page 1916 -->
Services and service offerings display information in DPM via the Plan, Build, Run, and Info
tabs. If your organization opts to inactivate one or more of the tabs, then the inactivated tabs
aren't visible to you. For example, if your organization doesn't work on planning activities and
they inactivate the Plan tab, then the Plan tab isn't visible for you. For more information on how
Admins can hide or show tabs, see Configure the Digital Portfolio Management experience.
Keep in mind that what you are able to see in DPM depends on what your product license
permits from the source application. See Digital Portfolio Management related applications and
data sources for the required installations and plugins to see each data element.

Note: The Strategic Planning Workspace (formerly known as Alignment Planner
Workspace) is a pro version. The Portfolio Planning Workspace is available for users with a
Strategic Portfolio Management (SPM) standard license.

Plan tab
Service and service offering Plan tab
Section

Roadmap and
backlog

Description

• When selected, see roadmap details in the Strategic Planning or Portfolio
Planning Workspace.
• When selected, see backlog information in a shared service support
planning backlog list.
Summary cards for the service or service offering. You can select each card to
go to a list of the items.

Summary

• Total ideas
• Approved demands
• Project starting in the next 30 days
• New improvement initiatives
Total number of demands on the service or service offering. The number of
demands is in a gray box.

Demands

You can select a demand record to view its details, including tasks,
stakeholders, requirements, risks, and more.
You can also create demands on your service or service offerings. See Create
demand from Digital Portfolio Management.

Build tab
Service and service offering Build tab
Section

Roadmap

Projects

Description

When selected, view roadmap details in the Strategic Planning or Portfolio
Planning Workspace.
Project information related to the service or service offering.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1916


<!-- page 1917 -->
Service and service offering Build tab (continued)
Section

Description

• A donut graph shows the active projects by current status. You can hover
over each status of the donut to see its number of projects and percentage.
You can also select each status to access a list of the projects records in that
status.
• A bar graph shows projects overdue by month. You can hover over each
status of the bar graph to see the month, year, and the number of projects.
You can also select each bar to access a list of the projects for that month.
• A set of cards enable you to select the number (count) to see a list of projects
for the service or service offering.
◦ Projects with status work in progress
◦ Projects with missed key milestones
◦ Projects with critical issues
Active projects
Total number of active projects on the service or service offering. The number of
active projects is in a gray box. Select an active project record to view its details,
including project tasks, agile phase, stories, epics, and more.
Change graphs
• A donut graph shows the changes by status:
◦ New
◦ Assess
◦ Authorize
◦ Scheduled
Changes

◦ Implement
◦ Review
◦ Closed
◦ Canceled
• A bar graph shows changes overdue by month.
• A spark line graph shows upcoming changes this week.
• A bar graph shows the change backlog growth in the last 30 days.

• A donut graph shows the changes by state:
Improvement
initiatives

◦ New
◦ In Progress
◦ Monitor/Review
◦ Closed
• A bar graph shows the improvement initiatives overdue by month.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1917


<!-- page 1918 -->
Service and service offering Build tab (continued)
Section

Description

• A card enables you to select the number (count) of overdue tasks for the
service or service offering.
• A bar graph shows the improvement initiatives that were closed in the last 30
days.
Active improvement initiatives
The total number of active improvement initiatives on the service or service
offering. The number of active improvement initiatives is in the gray box. You
can select an active improvement initiative for its details, including its Continual
Improvement Management (CIM) phase, CIM tasks, impacted key performance
indicators (KPIs), and approvers.

Run tab
Some of the fields on the Run tab are different for services and for service offerings, as noted in
the following table. See KB1637474
for more information about KPI results on DPM pages.
Service and service offering Run tab
Section

Description

Service
performance
or Offering
performance

The Performance snapshot KPI group that comes with the base system. The
indicators typically show availability, open incidents, and new requests. Each
indicator has an information icon (
description for that indicator.

) that when selected, provides a tooltip

For information on KPIs that come with the base system, see KPI groups
installed with Digital Portfolio Management.
Admins can modify KPI groups, create KPIs, and create KPI group mappings
so you may see more than the Performance snapshot on the Run tab.
For information, see Create KPI groups and mappings in Digital Portfolio
Management.
For information on configuring KPIs, see Configure KPIs in Digital Portfolio
Management with service availability example.
List of the offering breakdowns for the service, including each offering's:
Offering
breakdown
(services only)

• Availability
• Open incidents
• Incidents not updated for 5 days
• New requests

Service
instance
dependencies

List of the service instances that the service offering depends on. The
number of service instances is in a gray box. You can select an service

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1918


<!-- page 1919 -->
Service and service offering Run tab (continued)
Section

Description

(service
offerings only)

instance for its details. For more information, see View service instance
details.

Commitments
(service
offerings only)

Information about the service offering availability commitments such as the
commitment name, type, and target.

SLA
commitments
(service
offerings only)

Information about the service level agreement (SLA) commitments for the
service offering.

Info tab
The Info tab provides general information about the service or service offering. Some of the fields
are different for services and for service offerings, as noted in the following table. You can't edit
the fields in the Info tab.
Service and service offering Info tab
Section

Description

Service description
or Service offering
description

Description of the service or the service offering.

General Info

General information about the service or the service offering.
• Service portfolio
• Taxonomy node
• Service classification (business or technical)
• Phase and Status (if using the Service Portfolio Management
fields) or
• Stage and Status (if using the CSDM life-cycle fields)
• Consumer type
• Last review date
• Start and end dates

Personal portfolios

Subscribers

The personal portfolios for the service or offering. The number of
personal portfolios is in a gray box. Select a personal portfolio for
its details.
General information about the subscribers on the service or
service offering. You can select each card for detailed subscriber
information on the following:
• Locations
• Departments

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1919


<!-- page 1920 -->
Service and service offering Info tab (continued)
Section

Description

• Groups
• Companies
• Individual users
Price (service offerings
only)

General price information about the service offering, like price
model, unit, cost, and description.

Offering commitments
(service offerings only)

The service commitment for the offering, for example, 95%
24x7. The number of the commitments is in a gray box. Select a
commitment for its details.

Offerings (services only)

Service scope (services
only)

The offerings for the service. The number of service offerings is in
a gray box. Select an offering for details.

• The business case criticality for the service. Criticality levels
are:
1. Most critical
2. Somewhat critical
3. Less critical
4. Not critical
• The business capabilities for the service. The number of
business capabilities is in a gray box. Select a business
capability for details.

Service Contracts (for
services) or Contracts (for
service offerings)

The list of contracts for the service or the service offering. If
available, you can select a contract for its details.

Needs attention panel icons
The Needs attention panel includes the following icons for services and service offerings:
• Needs attention icon ( ) to show or hide the Needs attention panel. For information on needs
attention values, see Work with Needs attention panels in Digital Portfolio Management.
• Contacts icon (

) to view team members and teams for the record.

• Catalog items icon (

) to search for catalog items on a service or a service offering record.

• Knowledge articles icon (
• Attachments icon (

) to search for related knowledge articles.

) to view and add attachments to the record.

Related topics
Work with Needs attention panels in Digital Portfolio Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1920


<!-- page 1921 -->
View business application details
View information about business applications that may impact your solutions. Each Digital
Portfolio Management (DPM) page presents the business application life-cycle phase
information in tabs — Plan, Build, Run, Risk, and Info.

Status of business applications
When viewing the business application details in DPM, the Status of each item is listed on the
workspace view and on the list view.
When viewing details of a business application that's retired, an alert banner along the top of
the workspace informs you. In the list view, the Life Cycle Stage is End of Life and the Life Cycle
Stage Status is Retired.

Important: If your organization transitioned from the traditional Service Portfolio
Management fields to the CSDM life-cycle fields, then the field names differ from this
document. For more information, see Apply the CSDM guidelines to Digital Portfolio
Management.
Business application information is displayed in DPM via the Plan, Build, Run, Risk, and Info
tabs. If your organization opts to inactivate one or more of the tabs, then the inactivated tabs
aren't visible to you. For example, if your organization doesn't work on planning activities and
they inactivate the Plan tab, then the Plan tab isn't visible for you. For more information on how
Admins can hide or show tabs, see Configure the Digital Portfolio Management experience.
Keep in mind that what you are able to see in DPM depends on what your product license
permits from the source application. See Digital Portfolio Management related applications and
data sources for the required installations and plugins to see each data element.

Note: The Strategic Planning Workspace (formerly known as Alignment Planner
Workspace) is a pro version. The Portfolio Planning Workspace is available for users with a
Strategic Portfolio Management (SPM) standard license.

Plan tab
Business application Plan tab
Section

Roadmap and
backlog

Description

• When selected, see roadmap details in the Strategic Planning or the Portfolio
Planning Workspace.
• When selected, see backlog information in a shared service support
planning backlog list.
Summary cards for the business application. You can select each card to go to
a list of the items.

Summary

• Total ideas
• Approved demands
• Project starting in 30 days
• Planned epics

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1921


<!-- page 1922 -->
Business application Plan tab (continued)
Section

Description

Total number of demands on the business application. The number of
demands is in a gray box.
Demands

You can select a demand record to view its details, including tasks,
stakeholders, requirements, risks, and more.
You can also create demands on your service or service offerings. See Create
demand from Digital Portfolio Management.

Build tab
Business application Build tab without the DevOps system property enabled
Section

Roadmap

Projects

Description

When selected, see roadmap details in the Strategic Planning or the Portfolio
Planning Workspace.
Project information related to the service or service offering.
• A donut graph shows the active projects by current status. You can hover over
each status of the donut to see its number of projects and percentage. You can
also select each status to access a list of the projects records in that status.
• A bar graph shows projects overdue by month. You can hover over each status
of the bar graph to see the month, year, and the number of projects. You can also
select each bar to access a list of the projects for that month.
• A set of cards enable you to select the number (count) to see a list of projects for
the service or service offering.
◦ Projects with status work in progress
◦ Projects with missed key milestones
◦ Projects with critical issues

Note: Both the Active projects by current status and the Projects overdue by
month graphs include the following:
• Project updates that are directly related to the business application.
• Project updates of the related service instances that roll up to the business
application.
Active projects
Total number of active projects on the service or service offering. The number of
active projects is in a gray box. Select an active project record to view its details.
Epics

Epic cards provide the count of each of the following for the business application.
You can select a card to go to a list of the items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1922


<!-- page 1923 -->
Business application Build tab without the DevOps system property enabled (continued)
Section

Description

• Epics in backlog that are ready
• Epics in progress
Stories

Story cards provide the count of each of the following for your business application.
You can select a card to go to a list of the items.
• Stories in backlog that are ready
• Stories in progress
• Blocked stories

Sprints

Releases

Changes

Current sprints related to the business application. The number of sprints is in a
gray box. You can select a sprint to see its details.
Current releases related to the business application. The number of current
releases is in a gray box. You can select a current release to see its scrum release
details.
Change graphs
• A donut graph shows the changes by status:
◦ New
◦ Assess
◦ Authorize
◦ Scheduled
◦ Implement
◦ Review
◦ Closed
◦ Canceled
• A bar graph shows the changes overdue by month.

Build tab with DevOps enabled
After a DPM Admin enables the DevOps system property, you can see the flow metrics and
accelerate metrics on the Build tab. The epics, stories, sprints, and releases don't show when
DevOps is enabled. For Admin instructions to turn on or off the DevOps system property, see
Configure the Digital Portfolio Management experience.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1923


<!-- page 1924 -->
Business application Build tab with the DevOps system property enabled
Section

Roadmap

Projects

Description

When selected, see roadmap details in the Strategic Planning or the Portfolio
Planning Workspace.
Project information related to the service or service offering.
• A donut graph shows the active projects by current status. You can hover over
each status of the donut to see its number of projects and percentage. You can
also select each status to access a list of the projects records in that status.
• A bar graph shows projects overdue by month. You can hover over each status
of the bar graph to see the month, year, and the number of projects. You can
also select each bar to access a list of the projects for that month.
• A set of cards enable you to select the number (count) to see a list of projects for
the service or service offering.
◦ Projects with status work in progress
◦ Projects with missed key milestones
◦ Projects with critical issues

Note: Both the Active projects by current status and the Projects overdue
by month graphs include the following:
• Project updates that are directly related to the business application.
• Project updates of the related service instances that roll up to the business
application.
Active projects
Total number of active projects on the service or service offering. The number of
active projects is in a gray box. Select an active project record to view its details.
Changes

Change graphs
• A donut graph shows the changes by status:
◦ New
◦ Assess
◦ Authorize
◦ Scheduled
◦ Implement
◦ Review
◦ Closed
◦ Canceled
• A bar graph shows the changes overdue by month.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1924


<!-- page 1925 -->
Business application Build tab with the DevOps system property enabled (continued)
Section

Flow
metrics

Description

Overview of the DevOps Change Workspace flow metric information related to the
business application. You can also select View Flow metrics in DevOps to go to
the DevOps Change Workspace, Flow metrics tab.
The following flow metrics are in number of days, donut reports, and graphs:
• Average flow time for epics (last 30 days)
• Average flow time for epic and feature
• Average number of bugs and stories (last 30 days)
• Distribution of bugs and stories
• Work in progress cycle time for epics (last 30 days)
• Work in progress cycle time for stories (last 30 days)
• Work in progress cycle time for bugs (last 30 days)
• Work in progress items (count plotted weekly)
Overview of the DevOps Change Workspace accelerate metric information related
to the business application. You can also select View Accelerate metrics in
DevOps to go to the DevOps Change Workspace, Accelerate metrics tab.

Accelerate The following accelerate metrics are shown in number of days and graphs:
metrics
• Average lead time for deployment (last 30 days)
• Commit to deploy lead time (plotted daily for last 6 months)
• Average deployment frequency (last 30 days)
• Production deployment frequency (plotted daily for last 6 months)

Run tab
See KB1637474

for more information about KPI results on DPM pages.

Business application Run tab without the DevOps system property enabled
Section

Description

Business
application Performance details about the business application. You can select a card
performance indicator in each section to view its details. Each indicator has an information
icon (

) that when selected, provides a tooltip description for that indicator.

Portfolio success metrics
• Availability
• Incidents with a breached SLA
• Incidents caused by changes
• Successful changes
Business application performance
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1925


<!-- page 1926 -->
Business application Run tab without the DevOps system property enabled (continued)
Section

Description

• Number of incidents
• Number of problems
• Number of changes
Each of these indicators also includes records when:
• The record references an service instance that is related to the business
application, and
• The record directly references the business application.
Service
instance
breakdown

Key performance indicator (KPI) group breakdown grid that shows the lowest
ordered KPI group mapped (or inherited) by the business application.

Run tab with DevOps enabled
After a DPM Admin enables the DevOps system property, you can see the accelerate metrics on
the Run tab. For Admin instructions to turn on or off the DevOps system property, see Configure
the Digital Portfolio Management experience.
See KB1637474

for more information about KPI results on DPM pages.

Business application Run tab with the DevOps system property enabled
Section

Description

Business
application Performance details about the business application. You can select a card
performance indicator in each section to view its details. Each indicator has an information
icon (

) that when selected, provides a tooltip description for that indicator.

Portfolio success metrics
• Availability
• Incidents with a breached SLA
• Incidents caused by changes
• Successful changes
Business application performance
• Number of incidents
• Number of problems
• Number of changes
Each of these indicators also includes records when:
• The record references an service instance that is related to the business
application, and
• The record directly references the business application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1926


<!-- page 1927 -->
Business application Run tab with the DevOps system property enabled (continued)
Section

Description

Service
instance
breakdown

Key performance indicator (KPI) group breakdown grid that shows the lowest
ordered KPI group mapped (or inherited) by the business application.

Accelerate
metrics

The following accelerate metrics are shown in number of days and graphs. The
DevOps system property must be enabled for this data to show.
• Average mean time to restore (last 30 days)
• Mean time to restore from incidents caused by change
• Average change failure rate (last 30 days)
• Change failure rate over time

Risk tab
Business application Risk tab
Section

Governance, Risk,
and Compliance

Description

Information about risks related to the business application. You can
select a card to see its details.
Risk summary
• Risk rating (low, medium, or high)
• Risk count (number)
Compliance summary
• Controls out of compliance (count)
• Attestations count (number)
• Total controls count (number)
Engagements
• Total engagements (count)
• In progress engagements (count)
Issues & tasks
• Total issues (count)
• Risk response task (count)
• Remediation task (count)

Technology
lifecycle risk

The technology lifecycle risk for the business application with software
and hardware models presented in donut reports and lists.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1927


<!-- page 1928 -->
Business application Risk tab (continued)
Section

Description

Note: To see the technology lifecycle risk information, you must have the Technology
Portfolio Management plugin [sn_apm_tpm] installed. The [sn_apm_tpm] plugin has two
dependency plugins:
• Application Portfolio Management [com.snc.apn]
• Software Asset Management [com.snc.sams]

Info tab
The Info tab provides general information about the business application. You can't edit fields in
the Info tab.
Business application Info tab
Section

Description

Application
description

Description of the business application.

General Info

General information about the business application.
• Enterprise portfolio
• Taxonomy node
• Department
• Business unit
• Application family
• Application category
• Architecture type
• Status
• Lifecycle stage
• Lifecycle stage status
• Install type
• User base count
• Active user count

Personal
portfolios

Business
capabilities
and Service
instances
Contract

The personal portfolios that contain the business application. The number
of the personal portfolios is in a gray box. You can select a personal
portfolio to view its details.
Cards that show the number of business capabilities and service instances
that are related to the business application. You can select each card to go
to a list of each item respectively.
General information about the contract related to the business application:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1928


<!-- page 1929 -->
Business application Info tab (continued)
Section

Description

• Vendor
• Support vendor
• Contract end date
Additional
information

Cards that show the number of the following additional information related
to the business application. You can select each card to go to a list of the
items.
• Business Unit Strategy
• Goals
• Information objects

Needs attention panel icons
The Needs attention panel includes the following icons for business applications:
• Needs attention icon (
• Contacts icon (

) to show or hide the Needs attention panel.

) to view team members and teams for the record.

• Attachments icon (

) to view and add attachments to the record.

Related topics
Enterprise portfolios
Create enterprise portfolios in Digital Portfolio Management
View service instance details
View information about service instances that may impact your solutions. Each Digital Portfolio
Management (DPM) page presents the service instance life-cycle phase information in
tabs, primarily Run and Info. The Risk tab displays when you have the Technology Portfolio
Management plugin [sn_apm_tpm] installed.
As you view the following tables, keep in mind that what you are able to see in DPM depends on
what your product license permits from the source application. See Digital Portfolio Management
related applications and data sources for the required installs and plugins to see each data
element.

KPI groups for service instances
If your organization uses the enterprise portfolio module with the latest enterprise portfolio
tables, then an service instance rolls up to its related business application. This enables you to
create a portfolio with business applications that will have the service instances. You could also
create a separate portfolio for service instances which contains the application service. In both
cases, the service instances inherit KPI groups from both portfolios.
• An service instance can be in a business application portfolio because:
◦ Service instances roll up to business applications.
◦ Run data from the service instance shows at the business application level.
• An service instance can be added to an application-type portfolio.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1929


<!-- page 1930 -->
Incidents, problems, and changes can be added to an service instance's Impacted services or
the Affected CIs related list. After this addition, you see the rolled up data in the following areas
when you:
• Select View details on any affected solution page.
• View the Run tab of any solution page to view the KPI indicators.
• View the KPIs and Needs attention panels of the affected business applications.
You can also see the rolled up data in the following areas:
• Enterprise application portfolios
• Enterprise service instance portfolios
• Any business application or service instance that is added to your personal portfolios
Since service instances can be in two different types of portfolios, the service instance inherits
KPI groups from two different places. See the table for how KPI groups work in the following use
cases.
KPI groups for portfolios
View

KPIs shown

Conditions

Enterprise
portfolio
service
instance
preview

The inherited
KPI groups from
the enterprise
portfolio.

The service instance enterprise portfolio type contains
service instances and isn't linked to a business application
type.

If there isn't
an enterprise
portfolio KPI
group, then an
empty state is
shown.
Service
instances
detail page
(Run tab) from
an enterprise
portfolio

• All inherited
KPI groups
display,
regardless
from
where you
navigated.

You can link an service instance to a business application
enterprise portfolio type using cmdb_rel_ci. The parent
should be a business application and the supporting item
should be an service instance. The required relationship is
Consumes: Consumed by.

Service instance is added and its parent enterprise portfolio
is mapped with its KPI group type.

• Also, the KPI
groups added
directly to
that service
instance
display.
Service
instance from
a personal
portfolio or
from a list

All KPI groups

No conditions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1930


<!-- page 1931 -->
Run tab
See KB1637474

for more information about KPI results on DPM pages.

Service instance Run tab
Section

Description

Service
instance
performance

Performance details about the service instance. You can select the graphs
and cards for each section to view more details. Each indicator has an
information icon ( ) that when selected, provides a tooltip description for
that indicator.The following KPI groups and indicators are in this section.
• Portfolio success metrics
◦ Availability
◦ Incidents with a breached service level agreement (SLA)
◦ Incidents caused by changes
◦ Successful changes
• Business application performance
◦ Number of incidents
◦ Number of problems
◦ Number of changes
• Service health
◦ Critical incidents
◦ Critical alerts
◦ Closed changes
• Service impact
◦ Impacted rate
◦ Critical severity over time
• Alert trends
◦ Incidents caused by alerts
◦ Alerts by severity
• Availability insights
◦ Availability
◦ Unplanned outages
◦ Average outage duration

Commitments

Commitment data for the service instance. You can select a commitment to
view its details.

Service
reliability
management
(with

Service reliability management information data for the service instance. To
see reliability indicators, the sn_sow_srm plugin must be installed. You can
select a reliability indicator to view its details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1931


<!-- page 1932 -->
Service instance Run tab (continued)
Section

Description

sn_sow_srm
plugin installed)
Offerings that
depend on
this service
instance

A list of the offerings that depend on this service instance. The number of
offerings is in a gray box. Select an offering for its details.
For information on offering details, see View service and service offering
details.

Risk tab
To see the Risk tab, you must have the Technology Portfolio Management plugin [sn_apm_tpm]
installed. The Risk tab displays the Technology Lifecycle Risk using donut reports and lists for
service instances software and hardware models.

Note: The Technology Portfolio Management plugin [sn_apm_tpm] has two dependency
plugins:
• Application Portfolio Management [com.snc.apn]
• Software Asset Management [com.snc.sams]

Info tab
The Info tab provides general information about the service instance. You can't edit the fields in
the Info tab.
Service instance Info tab
Section

Description

Service
instance
description

Description about the service instance.

General Info

General information about the service instance.
• Business criticality
• Version
• Environment
• Operational status
• Managed by group
• Support group
• Approval group
• Change group

Personal
portfolios

The personal portfolios for the service instance. The number of personal
portfolios is in a gray box. Select a personal portfolio for its details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1932


<!-- page 1933 -->
Service instance Info tab (continued)
Section

Description

Service
instance
commitments

The service commitments for the service instance. The number of
commitments is in a gray box. Select a commitment for its details.

Software and
hardware
models

The software and hardware models for the service instance. The number of
each is in a gray box. Select a software or hardware model for its details.

Relationships

The configuration items (CIs) for the service instance. The number of CIs is in
a gray box. Select a CI for its details.

Needs attention panel icons
The Needs attention panel includes the following icons for service instances:
• Needs attention icon (
• Contacts icon (

) to show or hide the Needs attention panel.

) to view team members and teams for the record.

• Attachments icon (

) to view and add attachments to the record.

Related topics
Enterprise portfolios
Create enterprise portfolios in Digital Portfolio Management
Work with Needs attention panels in Digital Portfolio Management

KPI groups in Digital Portfolio Management
Define and configure the key performance indicator (KPI) groups in DPM that matter most to
you. When you associate KPI groups with your services and applications, you can analyze their
performance in a centralized area.
https://player.vimeo.com/video/1022208039?
h=78848fb963&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
With KPI groups, you can analyze the performance of each solution in several ways:
• See a detailed description of a KPI indicator by selecting

on the KPI indicator card.

• Drill down to view trends and historical performance on vendors, a KPI group, or an individual
KPI.
• Select a supporting KPI to see its related record details.
• View and drill down into the KPI spark lines to see more details. When you select a chart value,
the result is filtered to display the details of the value that you selected. If you select the whole
chart (not a value), then the KPI details page displays.
• See the latest (or last) KPI score when the Latest score system property
(sn_dpm.kpi_groups.show_latest_score) is enabled.
View KPI group data in the way that most interests you. Admins can update the system
property anytime so you can view KPI group data by the latest score or by the aggregate score.
When an admin enables the Latest score system property, the following shows in the DPM:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1933


<!-- page 1934 -->
◦ Last collected score for a KPI indicator in all KPI groups in DPM, without an aggregation layer
(by sum or by average).
◦ Last collected scores for all values in each KPI breakdown grid.
◦ Last 30 days of scores for trends and time series visualizations. You can set different time
rangers per KPI.
◦ The date the score was collected (shows on each KPI indicator card).

Note: Starting with the June 2024 release of DPM, the latest score system property
is set to true for new and zBoot customers. If not applicable, then the DPM admin
can enable the latest score system property by navigating to All > Digital Portfolio
Management > Administration > KPI groups properties. For more admin information,
see Configure the Digital Portfolio Management experience.
When you access KPI drill down information in DPM, the system adds a timestamp at the end
of the URL in the browser address field. The timestamp is in milliseconds and is based off
epoch time.
The DPM base system comes with KPI groups that provide valuable indicators to evaluate overall
performance and individual metrics for services and other solutions. You can also create your
own KPI groups but you're encouraged to explore the base system options.

KPI groups for enterprise portfolios
Two KPI groups enable flexible reporting on solutions in enterprise portfolios.
• Enterprise portfolio
The enterprise portfolio KPI group [Portfolio success metrics] enables you to map
to any enterprise portfolio type to view its portfolio performance. You can track availability,
mean time to resolve (MMTR), incidents caused by changes, and successful changes. You can
see these performance metrics when you view the details of any enterprise portfolio.
• Business applications
The business application KPI group type [Business application performance]
enables you to track the number of incidents, problems, and changes for a business
application. You can see these performance metrics in the Run tab of a business application
on the DPM Workspace.

Important: You must map the business application performance KPI group to your

business applications to show the data on the Run tab. For more information, see Create
KPI groups and mappings in Digital Portfolio Management.

Note: The business application performance KPI group replaces the metrics used prior
to the Utah release. Since you can create and edit KPI groups and map them to business
applications, it provides more flexibility to configure your reporting. You don't need to edit
the page in UIB to change the metrics.

KPI groups for service instances
KPI groups aren’t inherited for service instances, but you can do the following with the
Availability insights KPI group for service instances:
• View and assess the availability for service instances that you own or are responsible for.
• Map the Availability insights KPI group to one-to-many applications services.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1934


<!-- page 1935 -->
• View availability commitments and commitment performance on the Run tab of your service
instance.
• View all commitments listed on the Info tab of the service instance.
Related topics
Update KPIs in Digital Portfolio Management
Navigate portfolio types in Digital Portfolio Management
KPI groups installed with Digital Portfolio Management
Create KPI groups and mappings in Digital Portfolio Management
Configure KPIs in Digital Portfolio Management with service availability example

DevOps value stream metrics in Digital Portfolio Management
View key metrics related to the performance of your solutions in Digital Portfolio Management
(DPM). If you manage your solutions in a DevOps model, then you can view DevOps data for your
business applications as well as link to the DevOps Change Workspace directly from DPM.
Key metrics help you evaluate the impact on the performance of work being done on your
solutions. View DevOps value stream metrics in the context of your business applications in
DPM, for example, mean time to restore from changes, change failure rates, and lead time. You
can also access the DevOps Change Workspace directly from your business applications in
DPM to make data-driven decisions. Accelerate metrics are displayed on both the Build tab and
the Run tab so that you can view the data in the context of your business applications for each
phase. You can see flow metrics data on the Build tab of your business applications.

Note: To view DevOps accelerate metrics and flow metrics in DPM, admins must enable
the DevOps system property. See Configure the Digital Portfolio Management experience
for more information.
On the Build tab of your business applications, view the following data in numeric forms and in
charts:
• Accelerate metrics
◦ Average lead time to deploy over the last 30 days
◦ Commit to deploy lead time
◦ Average deployment frequency over the last 30 days
◦ Production deployments frequency
• Flow metrics
◦ Average flow time for epics
◦ Average flow time for epics and features
◦ Average number of bugs and stories
◦ Distribution of bugs and stories
◦ Work in progress cycle time for epics, stories, and bugs (each has their own widget)
◦ Work in progress items
On the Run tab of your business applications, view the following accelerate metrics data in
numeric form and in charts:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1935


<!-- page 1936 -->
• Average mean time to restore from incident caused by changes (over the last 30 days)
• Mean time to restore from incidents caused by changes, broken out by DevOps changes and
non- DevOps changes

Note: Non- DevOps changes are other changes listed on the Change table.
• Average change failure rates over the last 30 days
• Change failure rate over time, broken out by DevOps changes and non- DevOps changes
• Mean time to restore
Related topics
DevOps Insights Change acceleration dashboard
DevOps Insights Flow metrics dashboard

Configuring Digital Portfolio Management
Enable the Digital Portfolio Management (DPM) Workspace and configure the settings for your
organization. Set it up to show data so you can monitor services, service offerings, business
applications, and service instances. All configuration tasks require the DPM admin role
[sn_dpm.dpm_admin].

Using guided setup to implement Digital Portfolio Management (DPM)
Guided setup provides a sequence of tasks that help you configure the DPM Workspace on
your ServiceNow instance. To open the guided setup for DPM, navigate to All > Digital Portfolio
Management > DPM Admin Center.
For more information, see Use the Admin Center in Digital Portfolio Management.

Note: The DPM Workspace uses the taxonomy structures from the Service Portfolio
Management application. For more information, see Service Portfolio Management
taxonomy.

Configuration overview
Configuring the DPM Workspace involves setting up environments, tools, and user access. To
configure, you must have the DPM admin role [sn_dpm.dpm_admin]. You perform most of these
configuration tasks in each instance that you're using.
1. Activate Digital Portfolio Management.
®

You can activate DPM by searching for it on the ServiceNow Store.
2. Use the Admin Center in Digital Portfolio Management.
Use the DPM Admin Center for a guided walk-through to do the following configuration tasks.
a. Identify the solutions that are ready to configure for the organization. Solutions could be
services, service offerings, business applications, and service instances.
b. Identify the service portfolios or the enterprise portfolios that are ready to configure for the
organization.
c. Assess planning items for the plan portion of the solution life cycle. If your organization
doesn’t use the planning portion of the life cycle, then follow the prompts to remove the plan
view for the organization.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1936


<!-- page 1937 -->
d. Assess build metrics to show a solution's performance in the build portion of the solution life
cycle.
e. Map key performance indicator (KPI) groups to track the performance of the solutions.
f. Assess other tasks to complete verifying that the DPM Workspace is ready for the
organization.
3. Apply the CSDM guidelines to Digital Portfolio Management.
Service data relates to each other using different applications and in different ways. DPM
references the Common Service Data Model (CSDM) to bring service-related data together in
a single view.
Even though you can return to the DPM Admin Center at any time to update configuration
settings, you can also complete most of the following configuration tasks independently.
Related topics
Use the Admin Center in Digital Portfolio Management

Activate Digital Portfolio Management
®

The Digital Portfolio Management plugin is available from the ServiceNow ServiceNow Store.

Before you begin

Role required: sn_dpm.dpm_admin

About this task

When you install the Digital Portfolio Management (DPM) application from the ServiceNow Store,
it automatically installs the necessary plugins. For a list of other application plugins that you
must install to surface other application data in DPM, see Digital Portfolio Management related
applications and data sources.

Procedure
1. Navigate to System Application > All Available Applications > All.
2. Find the plugin.
Use the filter criteria and search bar to search by name or by ID. If you can't find the plugin you
want, see Request a plugin .
3. Select Install, and then in the Activate Plugin dialog box, select Activate.

Use the Admin Center in Digital Portfolio Management
The Admin Center in Digital Portfolio Management (DPM) provides administrators a guided
walk-through to set up and configure the DPM Workspace for the organization. The provided
information and configuration prompts enable visibility into the end-to-end service and
application life-cycle.
With a DPM admin role [sn_dpm.dpm_admin], access the DPM Admin Center to set up and
configure the DPM experience for the organization. The Admin Center provides easy to follow
setup steps and includes tooltips and links to resources, plugins, and configuration tables.

Note: An administrator [admin] must install plugins.
https://player.vimeo.com/video/1131295804?
h=55639e429d&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1937


<!-- page 1938 -->
Access the DPM Admin Center
To access the DPM Admin Center, you must have the DPM Admin role [sn_dpm.dpm_admin].

Note: Demo data users that come with the base system have been assigned the Admin
role [sn_dpm.dpm_admin]. You can impersonate one of the demo data users to test the
Admin Center.
Navigate to All > Digital Portfolio Management > DPM Admin Center.
The Admin Center has two tabs: Overview and Settings.

Overview tab

The Overview tab enables you to do the following:
• Follow the guided setup to configure services with offerings, business applications, and
service instances.
• Configure key performance indicator (KPI) groups.
• Explore the settings.
• Create and review service portfolios.
• Create and review business application portfolios.
• Access helpful resources for more information.

Navigate the configuration steps
• Select Configure on a solution card from the Overview tab.
• Follow the guided walk-though. Each step has its own prompts, instructions, and conditions to
set up your data in the DPM Workspace.

Note: When you see the information icon (

) next to a step heading, select it to view

more information about that step.
• Navigate through the setup steps in one of two ways.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1938


<!-- page 1939 -->
1. Select the step number and title to perform the configuration for that step.
A completed step shows a check mark instead of a number.
2. Select Next to move to the next step and Back to return to the previous step.
You can navigate to any step at any time to update the configuration settings.

Important: If you see an empty screen while configuring, you most likely don't have
access for that action. To resolve access issues, contact your administrator.

Settings tab
The Settings tab enables you to do the following for solutions (services, service offerings,
business applications, and service instances):
• Configure the following for each solution page.
◦ Personal portfolio solution cards
◦ Header fields
◦ Plan fields
◦ Build fields
◦ Run fields
◦ Risk fields
◦ Portfolio properties
◦ General information fields on the Info tab
◦ KPI group properties
◦ DevOps properties
• Show or hide the Plan, Build, and Run tabs.
• Show or hide content sections from each of the main tabs.
• Access resources for additional help.

Troubleshoot tab
The Troubleshoot tab enables you to recalculate availability results and indicators for service
offerings.
1. Select the services and offerings that you'd like to recalculate availability.
2. Set the start and end dates for the recalculation period.
3. Select Recalculate availability to generate the results.
There’s no limit to how many times you can run the recalculation. You can also check the
recalculation progress by selecting Check status in the event log.

More options in the DPM Admin Center
Configure page headers in the DPM Admin Center
Configure the page header fields for your solutions in the DPM Admin Center. Your configuration
determines how the header fields are displayed in the DPM Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1939


<!-- page 1940 -->
Before you begin

Role required: sn_dpm.dpm_admin

About this task

Each solution displays header information for that solution. For example, for a service, the header
information may display the owner name, the consumer type, the phase, the status, and the
business criticality. You can configure the header information to best suit the needs of your
organization. The DPM Admin Center enables you to configure the header information for the
following solutions:
• Services and service offerings (both business and technical)
• Business applications
• Service instances
• Service portfolios and taxonomies
• Enterprise portfolios and taxonomies

Procedure
1. Navigate to All > Digital Portfolio Management > DPM Admin Center > Settings.
2. Select Header for the solution that you want to configure the header information.
3. Select Configure.
You must be in the correct application scope to edit the record. If you're in a different scope,
then a text banner displays for you to select a link to edit the record.
4. Review the field names in the Secondary Values tab.
The field names represent the information displayed on the solution header in the DPM
Workspace.
5. Configure the fields from the list view.
You can do some minor configuring in the list view.
◦ You can set the Active value to true or false. After a field is set to false, it doesn't display on
the solution header in the DPM Workspace.
◦ You can change the order that the active fields display on the solution header in the DPM
Workspace.
6. Configure the fields individually.
◦ Select a field to configure. You must be in the correct application scope to edit the record.
If you're in a different scope, then a text banner displays for you to select a link to edit the
record.
◦ Review or change the information.
Secondary Values
Field

Description

Editable

Table

The table name for the item.

No

Field

The field name for the item that displays in the DPM Workspace.

Yes

Order

The order that the item displays on the solution header in the DPM
Workspace.

Yes

Application The application for the item.

No

Workspace The workspace for the item.

No

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1940


<!-- page 1941 -->
Field

Description

Editable

Active

The flag that determines if the item displays (or not) on the solution
header of the DPM Workspace.

Yes

Conditions Configuration options where you can set conditions for the item.

Yes

7. Select Update.
Configure the Info tab in the DPM Admin Center
Show or hide various sections of the Info tab for your solutions in DPM. You can also configure
the general information fields. Your configuration determines how the fields are displayed in the
General info section of the Info tab in the DPM Workspace.

Before you begin

Role required: sn_dpm.dpm_admin

About this task

Each solution has a Info tab that displays information about the solution. For example, for
a service, the Info tab includes the General info, Offerings, Personal portfolios, Service
description sections, and more. You can choose to show or hide each of these sections.
Additionally, the General info section displays the associated service portfolio, service
classification (technical or business), phase, status, and more. You can configure the General
info section to best suit the needs of your organization.

Procedure
1. Navigate to All > Digital Portfolio Management > DPM Admin Center > Settings.
2. Select the Info tab for the solution.

Note: For the Portfolio properties option, select General info.
3. Show or hide sections in the Info tab for the Service and offering, Business application,
Service instance, or Portfolio solution.
◦ Turn on the toggle key to show each section of the Info tab.
◦ Turn off the toggle key to hide each section of the Info tab.
For example, for Service and offerings, you can show or hide the Service description, General
info, Offerings, Personal portfolios, Service scope, Business case, Service contracts,
Subscribers, or Commitments sections. For Business applications, you can show or hide the
Application description, General info, Enterprise or Personal portfolios list, Relationships,
Contract, or Additional information.
4. Select Configure to configure the information displayed in the General info section of the Info
tab.
You must be in the correct application scope to edit the record. If you're in a different scope,
then a text banner displays for you to select a link to edit the record.
5. In the form, fill in the fields: Table, Primary field, Subheading, Header image, Hide tags, and
Ignore highlight.
6. Review the field names in the Secondary Values tab.
7. Configure the fields from the list view.
You can do some minor configuring in the list view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1941


<!-- page 1942 -->
◦ You can set the Active value to true or false. After a field is set to false, it doesn't display in
the General info section.
◦ You can change the order in which the active fields are displayed.
8. Configure the fields individually.
◦ Select a field to configure. You must be in the correct application scope to edit the record.
If you're in a different scope, then a text banner displays for you to select a link to edit the
record.
◦ Review or change the information.
Secondary Values
Field

Description

Field

The field name for the item that displays on the General info section of the
DPM Workspace.

Order

The order that the item displays on the General info section of the DPM
Workspace.

Active

The flag that determines if the item displays (or not) on the General info
section of the Info tab in the DPM Workspace.

Conditions Configuration options where you can set conditions for the item.
9. Select Update.
Configure scheduled email reports in DPM Admin Center
Send periodic emails of KPI metrics to the DPM solution owners.

Before you begin

Role required: sn_dpm.dpm_admin
https://player.vimeo.com/video/1131295804?
h=55639e429d&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Procedure
1. Navigate to All > Digital Portfolio Management > DPM Admin Center > Settings.
2. Select Email properties.
3. Show or hide the email button on the Enterprise portfolio page.
◦ Turn on the toggle key to show the email button.
◦ Turn off the toggle key to hide the email button.
If the toggle key is on, this Send email button displays on the Enterprise portfolio page in the
DPM Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1942


<!-- page 1943 -->
4. Configure the scheduled metrics email.
◦ Turn on the toggle key to enable emails. This will periodically send emails of KPI metrics to
DPM managers that own solutions. The default period is set to two weeks.
◦ Turn off the toggle key to disable emails.
5. Define the maximum number of recipients per scheduled period.
Your first email is automatically sent two weeks from the day you tun on the toggle key. If you'd
like to change the frequency of emails, follow these steps:
6. Select Generate visualization attachments.
7. In the new window, fill in the fields.

Field

Description

Run

How often the scheduled job runs:
◦ Daily: Runs daily, at a designated time.
◦ Weekly: Runs on a weekly basis, at a designated time and day of the week.
◦ Monthly: Runs on a monthly basis, at a designated time and day of the month.
◦ Periodically: Runs on a designated repeating interval.
◦ Once: Runs for a single occurrence only.
◦ On Demand: Runs immediately, on demand.
◦ Business Calendar: Entry Start: Runs on the starting entry dates for the business
calendar that you select in the Business Calendar field. A scheduled job runs for
the starting date of each of the business entries that you defined for the business
calendar.
For example, if the business calendar represents a fiscal year, and the starting
date of each entry is a fiscal month, the scheduled job runs on the first day of
each month.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1943


<!-- page 1944 -->
Field

Description

◦ Business Calendar: Entry End: Runs for the ending date for the business
calendar that you select in the Business Calendar field. This selection runs in
the same manner as Business Calendar: Entry Start, but for the end dates of the
associated business calendar entries.
Time
zone

The time zone of the time you specify:
◦ None: Use your time zone.
◦ Use System Time Zone: Use the default system time zone that is specified for
your instance.
◦ Choose an actual time zone. For example, US/Pacific.

Time

Time of day when the scheduled job runs, expressed in hours, minutes, and
seconds on a 24-hour clock. The selection that you make in the Time zone field
determines the time zone for this entry.

Day

Day that the scheduled job runs. This field appears only if you select Monthly or
Weekly in the Run field.
◦ If Run is set to Weekly, select the day of the week. For example, select
Wednesday.
◦ If Run is set to Monthly, select the day of the month. For example, select 25 for
the 25th day of the month.

Repeat Duration of the repeat interval for each scheduled job execution. This field appears
interval only if you select Periodically in the Run field. Enter the duration in the number of
days, hours, or minutes. For example:
◦ To run the scheduled job every four days, enter 4 in the Days field.
◦ To run it every 26 hours, enter 26 in the Hours field.
◦ If it should repeat at an interval of 13:30:25, enter 13 in the Hours field, and then
enter 30 and 25 in the two unlabeled fields after it.
Starting Date and time of the first scheduled job. This field appears only if you select
Periodically in the Run field.
8. Select Execute Now.
9. Select Email performance metrics for DPM managers.

Note: You must schedule the visualization attachments to run at least two hours prior to
Email performance metrics to DPM managers.
10. In the new window, fill in the fields.
11. Select Execute Now.
Configure personal portfolio solution cards in the DPM Admin Center
Configure the fields that display on the personal portfolio solution cards in the DPM Admin
Center. Your configuration determines the fields that display on each solution card in the DPM
Workspace.

Before you begin

Role required: sn_dpm.dpm_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1944


<!-- page 1945 -->
About this task

You can configure the personal portfolio solution card fields to display information on the DPM
Workspace homepage:

Procedure
1. Navigate to All > Digital Portfolio Management > DPM Admin Center > Settings.
2. Open Portfolio properties and then select Solution Cards.
You have the option to configure the following types of solution cards:
◦ Service
◦ Business service
◦ Technology management service
◦ Service offering
◦ Business application
◦ Service instance
3. Select Configure for the card that you want to configure.
You must be in the correct application scope to edit the record. If you're in a different scope,
then a text banner displays for you to select a link to edit the record.
4. Review the field names in the Secondary Values tab.
The field names represent the information displayed on the personal portfolio card in the DPM
Workspace.
5. Configure the fields from the list view.
You can do some minor configuring in the list view.
◦ You can set the Active value to true or false. After a field is set to false, it doesn't display on
the solution header in the DPM Workspace.
◦ You can change the order that the active fields display on the solution header in the DPM
Workspace.
6. Configure the fields individually.
◦ Select a field to configure. You must be in the correct application scope to edit the record.
If you're in a different scope, then a text banner displays for you to select a link to edit the
record.
◦ Review or change the information.
Secondary Values
Field

Description

Editable

Table

The table name for the item.

No

Field

The field name for the item that displays in the DPM Workspace.

Yes

Order

The order that the item displays on the solution header in the DPM
Workspace.

Yes

Application The application for the item.

No

Workspace The workspace for the item.

No

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1945


<!-- page 1946 -->
Field

Description

Editable

Active

The flag that determines if the item displays (or not) on the solution
header of the DPM Workspace.

Yes

Conditions Configuration options where you can set conditions for the item.

Yes

7. Select Update.
View relationships of business applications and service instances in the DPM Admin Center
In the DPM Admin Center, you can see a comprehensive view of your business applications
and service instances. You can see incidents, problems, and changes that are related to your
business applications and incidents and changes that are related to your service instances.
The relationships of business applications and service instances enable you to see a full picture
of your solutions. For example, business applications consume multiple service instances. So
if you set a configuration item (CI) for an incident, you must select the service instance that the
incident belongs to. After that CI is set up, the incident rolls up to the business application that
consumes that service instance. You can see all the relationships from the DPM Admin Center.

Important: To access the DPM Admin Center, you must have the DPM admin
[sn_dpm.dpm_admin] role.

View business applications related to changes for build metrics
• Access the Overview tab in the DPM Admin Center, and then select Configure in the
Business applications card.
• Select 4 Assess build metrics in the navigation bar.
• View the Business applications related to changes card.
• Select a numbered item on the card to see the business applications related to changes
through the following criteria.
◦ The business application field
◦ The configuration item field
◦ The affected CIs
◦ The impacted services

Note: A card is set to Ready for DPM when any one of the listed criteria is greater
than zero. If you select zero (0) on a card, then an empty state displays.
After you select a numbered item on the card, another tab opens with a grouped list of each
business application that's related to changes according to the criterion that you selected. You
can open a business application on the list and drill down to each record number to see the
related items details (consumes, depends on, and so on).

View business applications related to incidents, problems, and changes for
operational metrics
• Access the Overview tab in the DPM Admin Center, and then select Configure in the
Business applications card.
• Select 5 Map KPI groups in the navigation bar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1946


<!-- page 1947 -->
• View the cards under the Map KPI groups heading. Each card shows the following with
numbered items.
◦ Business applications related to incidents
◦ Business applications related to problems
◦ Business applications related to changes
• Select a numbered item in any of the cards to see the business applications related to
incidents, problems, or changes through the following criteria.
◦ The configuration item field
◦ The affected CIs
◦ The impacted services

Note: A card is set to Ready for DPM when any one of the listed criteria is greater
than zero. If you select zero (0) on a card, then an empty state displays.
After you select a numbered item on the card, another tab opens and displays a grouped list of
each business application that's related to that criterion. You can open a business application
on the list and drill down to each record number to see the related items details (consumes,
depends on, and so on).

View applications services related to incidents and changes for operational
metrics
• Access the Overview tab in the DPM Admin Center, and then select Configure in the Service
instances card.
• Select 3 Map KPI groups in the navigation bar.
• View the cards under the Map KPI groups heading. Each card shows the following with
numbered items.
◦ Service instances related to incidents
◦ Service instances related to changes
• Select a numbered item in either of the cards to see the business applications related to
incidents or changes through the following criteria.
◦ The configuration item field
◦ The affected CIs
◦ The impacted services

Note: A card is set to Ready for DPM when any one of the listed criteria is greater
than zero. If you select zero (0) on a card, then an empty state displays.
After you select a numbered item on the card, another tab opens and displays all the service
instances related to your selected criterion. For example, you could see all service instances
related to incidents through affected CIs. In this example, you can drill down to see the source
incident record.
Related topics
Use the Admin Center in Digital Portfolio Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1947


<!-- page 1948 -->
Apply the CSDM guidelines to Digital Portfolio Management
Service data relates to each other using different applications and in different ways. Digital
Portfolio Management (DPM) references the Common Service Data Model (CSDM) framework to
bring service-related data together in a single view.
DPM enables you to organize service data in logical sequences that make sense for your
business. You can see details about your own services as well as services that you don't own but
may impact your business.

Tip: For CSDM set-up information, see Implementing the CSDM framework in stages

.

Personal portfolios and CSDM
See how DPM aligns with the CSDM framework to provide a holistic view of your IT landscape.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1948


<!-- page 1949 -->
DPM and CSDM

CSDM life-cycle fields for business and technology management services
Service portfolios viewed in DPM display the phase (or stage) field and the status field in the
header of each business and technology management service and service offering. The field
values come from the service table [cmdb_ci_service].

Important: For the Zurich release and later, the labels for the items in the
[cmdb_ci_service_technical] table and [service_offering] table are Technology Management
Service and Technology Management Service Offering, respectively. The label changes
align with the CSDM, version 5. Prior to the Zurich release, the labels are Technology
Service and Technology Service Offering.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1949


<!-- page 1950 -->
The following comparison shows the differences from the traditional Service Portfolio
Management phase and status fields to the CSDM life-cycle stage and status fields.
These fields also display when you use the Performance Analytics (PA) indicators.
Service table [cmdb_ci_service] mapping of Service Portfolio Management and CSDM
Service Portfolio Management Phase and Status
field names

CSDM life-cycle Stage and life-cycle Status field
names

Pipeline | Requirements

Ideation | Under evaluation

Pipeline | Definition

Ideation | Under evaluation

Pipeline | Analysis

Ideation | Under evaluation

Pipeline | Approved

Ideation | Under evaluation

Pipeline| Chartered

Design | Chartered

Catalog| Design

Design | Design

Catalog | Development

Design | Design

Catalog | Build/Test/Release

Deploy | Test

Catalog | Operational

Operational | In-use

Catalog | Retiring

Operational | Pending Retirement

Retired | Retired

End of life | Retired

Retired | Obsolete

End of life | Obsolete

CSDM relationships in DPM
To confirm that you see the data that you want in DPM, you must establish the correct CSDM
relationships.
How you establish relationships between your solutions and configuration items (CIs) varies
depending on your situation. For more information, see CI relationships in the CSDM .
Related topics
CSDM terms for Digital Portfolio Management
Implementing the CSDM framework in stages
CSDM terms for Digital Portfolio Management
®

Because both ServiceNow products of Digital Portfolio Management (DPM) and Service
Portfolio Management closely align with the Common Service Data Model (CSDM), it's helpful to
know the common terms when working in these applications.
Common CSDM terms used in DPM and Service Portfolio Management
Term

Definition

Notes

Portfolio

Collection of services,
products, projects, or
applications.

Used to manage like items together for a
business. Portfolios may be grouped by objective,
capabilities, organization, like projects or services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1950


<!-- page 1951 -->
Common CSDM terms used in DPM and Service Portfolio Management (continued)
Term

Definition

Notes

Business
capability

High-level capability that
an organization requires
to execute its business
model or fulfill its mission.

Typically described in the context of performing
one or more specific tasks to achieve business
outcomes. For example, demand management or
financial planning.

Service

Means of delivering value Typically has three aspects:
to customers by facilitating
• Interaction
outcomes customers
• Offering
want to achieve without
the ownership of specific
• Service system
costs and risks.
ServiceNow provides three base service types:
• Business
• Technical
• Application
Customers can extend the base types to align with
the service types in their organization.

Business
service

A service type that is
published to business
users and it typically
underpins one or more
business capabilities.

Typically orderable by business users. Business
users are able to select the desired offering and
®
service commitment levels via the ServiceNow
Service Catalog. For example, procurement,
shipping, and finance.

Technology
A service type that is
management published to service
service
owners and typically
underpins a business or
service instance.

Typically orderable by service owners. Service
owners are able to select the desired offering and
service commitment levels via the Service Catalog.
For example, computers, storage, and networks).

Service
instance

Examples of service instances are hosting, data
backup, and recovery.

A service type that is a
logical representation of
a deployed application
stack.

Note: There is not a 1-to-1 relationship
between application and application
services.

Application

Any deployed program,
module, or group
of programs that is
designed to provide
specific functionality on a
computer infrastructure.

Defines behavior and has specific functionality
associated with it. Applications are typically
discoverable functionality, like Apache Web Server.

Business
Application

Represents all software
and infrastructure
environments (dev, test,
prod) configured to
provide functionality.

Used to increase productivity and perform other
business functions accurately. For example, Dell
Online.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1951


<!-- page 1952 -->
Common CSDM terms used in DPM and Service Portfolio Management (continued)
Term

Definition

Notes

Service
catalog

Provides consumable
view of available products,
services, service
commitment options, and
offerings.

Helps manage what services a user may have
access to. Also, catalogs are the initiation point
for access to available services. For example, IT
services catalog.

Service
offering

A stratification of a service
into capability, availability,
pricing, and packaging
options.

Different levels of performance and features for a
given service can be made available. For example,
ITSM Standard and ITSM Pro.

Service
commitment

Defines service delivery
obligations agreed to
between the consumer
and the provider.

Often manifested in the form of contracts such
as service level agreements, operational level
agreements, and underpinning contracts. Service
commitments include specific performance
characteristics that differentiate one offering from
another.

Configuration Physical and logical
item (CI)
components of an
infrastructure that are
currently or soon will
be under configuration
management.

May be a single module such as a server,
database, or router or a more complex item, such
as a complete system. For example, a web server,
database, or infrastructure.

Asset

An item whose financial
value is tracked.

Many assets are CIs and vice versa, but that is
not always the case. Assets have a life cycle with
financial considerations, for example, Microsoft
Office 365.

Operating
model

An abstract and ideally
visual representation
(model) of how an
organization delivers
value to its customers or
beneficiaries.

Typically represents the various elements of how
an organization operates. It usually incorporates
strategy positions such as the innovation model,
degree of intelligent automation, industry
alignment, provider delivery models, and the
business expectations of IT.

Integrate Digital Portfolio Management with other ServiceNow applications
Bring in data from other ServiceNow applications to see a comprehensive view of your solutions
in the Digital Portfolio Management (DPM) Workspace. You can see data for services and service
offerings, for business applications, and for service instances.
View service and service offering data in Digital Portfolio Management
See service and service offering data in the context of your solutions in the Digital Portfolio
Management (DPM) Workspace.
The following image shows the service and service offering data views when you integrate the
stated applications with your DPM Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1952


<!-- page 1953 -->
The following table explains the data views in the image. For more information, see View service
and service offering details.
DPM Workspace integrations for services and service offerings
Life cycle tab in DPM

Application

Data view in DPM

Plan

Strategic Planning or Portfolio
Planning

Planning roadmap
Backlog

Project Portfolio Management

Ideas
Approved demands
Projects starting in the next 30
days

Build

Strategic Planning or Portfolio
Planning

Tracking roadmap

Continual Improvement
Management

Improvement initiative data
• Initiatives by status
• Overdue initiatives by
month
• Overdue tasks
• Improvement initiatives
closed in the last 30 days

Project Portfolio Management

Project data

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1953


<!-- page 1954 -->
DPM Workspace integrations for services and service offerings (continued)
Life cycle tab in DPM

Application

Data view in DPM

• Active project list
• Projects overdue by month
• Projects by status
• Projects with missed
milestones
• Projects with critical issues
Change Management

Change record details
• Current status
• Changes overdue by month
• Upcoming changes in the
week
• Change backlog growth
over 30 days

Run

ITSM Performance Analytics
(PA)

Key performance indicator
(KPI) data that comes with the
base system. The following
lists a few but for more
information, see KPI groups
installed with Digital Portfolio
Management.
• Availability
• New incidents
• Mean time to resolve
• New requests
• Changes

Info

General info

General information about the
service or the service offering
including, status, subscribers,
service scope, contracts,
commitments, and more. The
following lists a few, but for
more detailed information
on each section of the Info
tab, see Table 4. Service
and service offering Info tab
in View service and service
offering details.
• Service portfolio
• Taxonomy node
• Service classification
(business or technical)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1954


<!-- page 1955 -->
DPM Workspace integrations for services and service offerings (continued)
Life cycle tab in DPM

Application

Data view in DPM

• Phase and Status (if using
the Service Portfolio
Management fields) or
• Stage and Status (if using
the CSDM life-cycle fields)
• Consumer type
• Last review date
• Start and end dates

Related topics
Digital Portfolio Management life-cycle management
View service and service offering details
View business application data in Digital Portfolio Management
See business application data in the context of your solutions in the Digital Portfolio
Management (DPM) Workspace.
The following image shows the business application data views when you integrate the stated
applications with your DPM Workspace.

The following table explains the data views in the image. For more information, see View
business application details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1955


<!-- page 1956 -->
DPM Workspace integrations for business applications
Life cycle tab in DPM

Application

Data view in DPM

Plan

Strategic Planning or Portfolio
Planning

Roadmap and backlog

Agile Development 2.0

Agile data like epics and
stories

Demand Management
Project Portfolio Management

Demand data

Ideas
Approved demands
Projects starting in the next 30
days

Build

Strategic Planning or Portfolio
Planning
Project Portfolio Management
Agile Development 2.0
Change Management

Roadmap

Project data
Agile data like epics and
stories
Change record details
• Current status
• Changes overdue by month
• Upcoming changes in the
week
• Change backlog growth
over 30 days

Run

Enable DevOps in DPM

DevOps data

Application Portfolio
Management (APM)

Deployment data

ITSM Performance Analytics
(PA)

Key performance indicator
(KPI) data that comes with the
base system. The following
lists a few but for more
information, see KPI groups
installed with Digital Portfolio
Management.
• Availability
• New incidents
• Mean time to resolve
• New requests
• Changes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1956


<!-- page 1957 -->
DPM Workspace integrations for business applications (continued)
Life cycle tab in DPM

Application

Data view in DPM

Risk

Governance, Risk, and
Compliance (GRC)

Risk data related to your
business applications

Technology Portfolio
Management (TPM)

Software and hardware risk
data

General info

General information about
the business application like
relationship data, department,
business unit, and life-cycle
stage. The following lists a
few, but for more detailed
information on each section
of the Info tab, see Table 7.
Business application Info tab
in View business application
details.

Info

• Application description
• Enterprise portfolio
• Personal portfolio
• Taxonomy node
• Lifecycle stage status
• Contract
• Vendor

Related topics
Digital Portfolio Management life-cycle management
View business application details
View service instance data in Digital Portfolio Management
See service instance data in the context of your solutions in the Digital Portfolio Management
(DPM) Workspace.
The following image shows the service instance data views when you integrate the stated
applications with your DPM Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1957


<!-- page 1958 -->
The following table explains the data views in the image. For more information, see View service
instance details.
DPM Workspace integrations for service instances
Life cycle tab in DPM

Run

Application

Data view in DPM

ITSM Performance Analytics
(PA)

Key performance indicator
(KPI) data from PA that comes
with the base system. The
following list a few but for
more information, see KPI
groups installed with Digital
Portfolio Management.

IT Operations Management
(ITOM)
Site Reliability Metrics (SRM)

• Availability
• New incidents
• Mean time to resolve
• New requests
• Changes
For additional KPI data, see
KPI Details .
Risk

Technology Portfolio
Management (TPM)

Software and hardware risk
data

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1958


<!-- page 1959 -->
Related topics
Digital Portfolio Management life-cycle management
View service instance details

Configure KPI groups in Digital Portfolio Management
Configure key performance indicator (KPI) groups in Digital Portfolio Management (DPM) to
surface performance information in the context of your organization's solutions.
https://player.vimeo.com/video/1022212851?
h=c6e80e1d83&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
With a DPM admin role [sn_dpm.dpm_admin], you can define and configure the key performance
indicator (KPI) groups in DPM. With KPI groups, your organization can analyze the performance of
services, offerings, business services, and service instances in a centralized area.

Important: KPI data in DPM comes from portfolios in the Service Portfolio Management
application. The Service Offering Metric Data [service_offering_metric_data] table along
with the following four indicators have been deprecated in the Utah release:
• Average SLA Achievement [ServiceOffering.MetricData.SLA.Daily]
• Average Customer Satisfaction [ServiceOffering.MetricData.CSAT.Daily]
• Average Availability [ServiceOffering.MetricData.Availability.Daily]
• Average Request Activity [ServiceOffering.MetricData.Activity.Daily]
Therefore, if you have the Service Portfolio Management standard portfolio (the most recent
version), then the metric data from the legacy indicators are no longer available. For more
information, see Service Portfolio Management portfolios.
Create KPI groups and mappings in Digital Portfolio Management
Create key performance indicator (KPI) groups and mappings in Digital Portfolio Management
(DPM) to monitor the overall health and progress of all your services and offerings.

Before you begin
• Plugins required: sn_dpm, com.sn_team_perf, and com.snc.service_portfolio
• Role required: sn_dpm.dpm_admin

About this task

Create KPI groups and associate each group's type with its corresponding record. Here are the
record types:
• Service portfolios
• Taxonomy nodes
• Services
• Offerings
• Service instances
• Business applications
• Enterprise portfolios
• Enterprise taxonomy nodes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1959


<!-- page 1960 -->
In addition to creating your own KPI groups, you can use and configure the KPI groups that come
with the base DPM application. For details, see KPI groups in Digital Portfolio Management.
This procedure includes the following tasks:
1. Create a KPI group.
2. Add indicators to a KPI group.
3. Create a KPI group mapping.

Procedure
1. Create a KPI group.
a. Navigate to All > Digital Portfolio Management > KPI Groups.
b. Select New.
c. On the form, fill in the fields.
KPI Group form
Field

Description

Name

The name of the KPI group.

Description The description of the KPI group.
Type

The type that you want to create:
▪ Service portfolios
▪ Taxonomy nodes
▪ Services
▪ Offerings
▪ Service instances

Note: The type must correlate to the record. For example, you can
only associate a service portfolio type to a portfolio record. You can only
associate an offering type to an offering record.
Order

Show on
preview

Determines the page layout of the KPI groups in the Digital Portfolio
Management workspace.
If selected, the KPI group displays in the Details section of the Enterprise
Portfolio homepage in the DPM workspace. All selected KPI groups will
display on the page, not just one.

d. Select Submit

Tip: You can also create a KPI group by copying an existing KPI group. For more
information, see Copy a KPI group to create a new KPI group in Digital Portfolio
Management.
2. Add indicators to a KPI group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1960


<!-- page 1961 -->
a. Navigate to All > Digital Portfolio Management > KPI Groups.
b. Select the KPI group that you want to add indicators to.
c. On the KPIs tab, select New.
d. On the form, fill in the fields.
KPIs form
Field

Description

KPI Group

KPI group to add indicators.

KPI

KPI indicator that you want to measure.

Label

Name of the KPI indicator. You can edit the label.

Parent KPI

Parent KPI, if this KPI is a supporting KPI.

Display
Aggregate

KPI display aggregate: Average or Sum.

Note: This field applies when the latest score property
[sn_dpm.kpi_groups.show_latest_score] is false. For information, see
Configure the Digital Portfolio Management experience.
Order
Description

Chart type

Page layout of the KPI groups in the Digital Portfolio Management workspace.
The description of the indicator. For more information on KPI results, see
KB1123710 .
The chart type for the KPI group. The options are:
▪ Single score
▪ Time series: Line
▪ Time series: Column
▪ Time series: Area
▪ Time series: Spline
▪ Time series: Step line
▪ Group By

Note: The Group By option enables you to select the results
breakdown. For example, incidents by priority.
e. Select Submit.
3. Create a KPI group mapping.
a. Navigate to All > Digital Portfolio Management > KPI Group Mappings.

Note: You can also map a KPI group by navigating to All > Digital Portfolio

Management > KPI Groups. Select a KPI group to view, and then select the KPI Group
Mappings tab.
b. Select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1961


<!-- page 1962 -->
c. On the form, fill in the fields.
KPI Group Mapping form
Field

Description

KPI
Group

KPI group name to add the mapping.

Mapping Mapping type associated with the KPI group. Depending on which KPI Group
you select, one of the following displays as the Mapping field.
▪ Service portfolio
▪ Taxonomy node
▪ Service
▪ Offering
▪ Service instance
▪ Business application
▪ Enterprise portfolio
▪ Enterprise taxonomy node
d. Select Submit.
Related topics
Configure KPI groups in Digital Portfolio Management
Configure KPIs in Digital Portfolio Management with service availability example
Configure KPIs in Digital Portfolio Management with service availability example
Configure key performance indicators (KPIs) in Digital Portfolio Management (DPM) to surface
performance information in the context of your solutions. This procedure uses the example of
configuring service availability to display the availability score in the Run life-cycle phase.

Before you begin
• Plugins required: sn_team_perf_kpi_group and com.snc.service_portfolio
• Role required: sn_dpm.dpm_admin

About this task

As a user with the sn_dpm.dpm_admin role, you can configure KPIs to display in DPM. This task
uses the Outage and Availability KPI group to show how to configure the service availability KPI.

Note: You must have Service Portfolio Management premium subscription to perform this
task. This premium subscription automatically installs if you have DPM installed.
For general information about KPI groups, see KPI groups in Digital Portfolio Management.
To create KPI groups, see Create KPI groups, mappings, and visualizations.
This procedure includes the following tasks:
1. Create the KPI group mapping.
2. Create the service commitment.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1962


<!-- page 1963 -->
3. Associate the service commitment to the service offering.
4. Create an outage for the service offering.
5. Run the data collection job and verify.
6. Ensure that the KPI displays in DPM.

Procedure
1. Create the KPI group mapping.
The mapping you create sets up the service offering that you want to view availability.
a. Navigate to Digital Portfolio Management Workspace > KPI Group Mappings.
b. Select New.
c. On the form, fill in the fields.
KPI Group Mapping form
Field

KPI Group

▪ Service
portfolio
▪ Taxonomy
node

Description

KPI group name to add the mapping. For this example, map to the Outage
and Availability KPI group. This mapping may already be done as part of the
base DPM system.
Mapping that you want to associate with this KPI group. The fields that
are displayed depend on the type of KPI group that you selected. For this
example, the mapping is Offering.

▪ Service
▪ Offering
▪ Service
instance
d. Select Submit.
2. Create the service commitment.
For this example, select a service portfolio that you want to configure the service availability
KPI. You can select a personal portfolio or an enterprise portfolio.
a. Navigate to All > Service Portfolio Management > Commitments.
b. Select New to set up availability data.
c. On the form, fill in the fields.
Commitment form
Field

Description

Name

Commitment name.

Type

Type of commitment. The Availability type sets up availability data.

Percentage
available

Percentage that the commitment is available. For example, 90%.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1963


<!-- page 1964 -->
Field

Description

Schedule

Duration that the commitment is available. For example, 24 x 7 sets the
commitment for every day.

Time zone

Time zone for the commitment.

Description

Description of the commitment.

d. Select Submit.
3. Associate the service commitment to the service offering.
a. Navigate to All > Service Portfolio Management > Service commitment.

Note: If the plugin is not installed, then enter the table name in the filter navigator:
service_offering_commitment.list, and then press Enter.
b. Select New.
c. On the form, fill in the fields.
Service commitments form
Field

Description

Service offering

The service offering associated with the service commitment.

Service commitment

The service commitment associated to the service offering.

d. Select Submit.
4. Create an outage for the service offering.
Set the service availability for the past seven days prior to creating the outage record.
a. Navigate to All > Service Portfolio Management > Outages.
b. Select New.
c. On the form, fill in the fields.
Outage form
Field

Description

Number

System-generated number for the outage record.

Configuration Item

The service offering associated with the outage.

Begin

The start date of the outage.

End

The end date of the outage.

d. Select Submit.

Note: The outage that you create for the service offering also generates a service
availability record for the service offering.
5. Run the data collection job and verify.
The job collects data from all Performance Analytics indicators on the scheduled jobs list. This
step also provides you with verification steps to ensure that the job ran successfully.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1964


<!-- page 1965 -->
a. Navigate to All > System Definition > Scheduled Jobs.
b. In the Name column, search for SPM Data Collection job for PA.
c. Select edit.
d. Ensure that the Relative start is set to the number of days to collect data (default is 1).
e. Select Execute now.
f. Refresh the screen to see your job log on the Job Logs tab. Review the created date and
ensure that the State is Collected.
g. Open the Indicators tab and under the Name column, search for the SPM Availability
indicator.
h. Select SPM Availability, and then select edit.
i. On the form, open the SPM Availability indicator record to verify that you created the job
successfully.
j. Select the Show Analytics Hub related link to verify that the availability score is displayed
for the offering. If several values are displayed, then search for the offering name to verify
that you set the availability score properly for that offering.
6. Ensure that the KPI is displayed in DPM.
a. Navigate to Workspace > Digital Portfolio Management.
b. Find the service portfolio that has the availability KPI that you created.
▪ If you created the availability KPI for a personal portfolio, then open the personal portfolio
card that has the availability KPI.
▪ If you created the availability KPI for an enterprise portfolio, then use the enterprise
portfolio tree structure to find the service offering record.
c. On the Run tab, ensure that the Performance snapshot Availability card displays the correct
percentage value.
Related topics
Create KPI groups and mappings in Digital Portfolio Management
Copy a KPI group to create a new KPI group in Digital Portfolio Management
Create a new key performance indicator (KPI) group by copying an existing KPI group in Digital
Portfolio Management (DPM). All the KPI records, supporting KPIs, and mappings of the KPI
group are copied as well. After you copy the KPI group, you can modify all aspects of it so the
new group best fits your needs.

Before you begin

Role required: sn_dpm.dpm_admin

About this task

This procedure uses the KPI groups Copy button. To see the Copy button on the KPI groups
page, you must have the Team Performance [sn_team_perf] plugin activated.

Procedure
1. Navigate to All > Digital Portfolio Management > KPI groups.
2. Open the KPI group in the list that you want to copy.
3. Select Copy.
You can update the KPI group after you copy it, as specified in Step 5.
4. Return to the KPI group list to find the copied KPI group.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1965


<!-- page 1966 -->
The copied KPI group name is the same as the one that you copied with Copy of in the front
of the name.
5. Open the copied KPI group.
You can change the name, description, and order. You can also change the supporting KPIs
and the KPI group mappings.
6. Optional: Delete a KPI group.
When you delete a KPI group, you delete the KPIs, supporting KPIs, and mappings of the KPI
group. There are a few ways that you can delete your copied KPI group (or any KPI group):
◦ Select Delete while viewing the KPI group (it's next to Copy).
◦ Select the box next to the KPI group name in the KPI group list, and then navigate to Actions
on selected rows > Delete.
Update KPIs in Digital Portfolio Management
You can update the key performance indicator (KPI) fields in Digital Portfolio Management (DPM).
The KPI displays in KPI groups in the DPM Workspace.

Before you begin

Role required: sn_dpm.dpm_admin

About this task

This procedure accesses KPIs via the KPI group in DPM. To see a list
of all KPI indicators without the context of its parent KPI group, enter
sn_team_perf_kpi_group_m2m_pa_indicators.list in the Filter navigator, and
then press Enter.

Procedure
1. Navigate to All > Digital Portfolio Management > KPI Groups.
2. Open a KPI group to view its details.
3. On the KPIs related list (tab), select the item in the Label column to open it.

Note: Be sure to select the item in the Label column and not in the KPI column.
4. On the form, update the fields.
KPI fields
Field

Description

KPI Group

Name of the KPI group.

KPI

Name of the Performance Analytics (PA) indicator.

Note: The KPI field pulls information from the Indicator
table [pa_indicators].
Label

The KPI label shown in the DPM Workspace.

Parent KPI

The Parent KPI for the KPI.

Display aggregate

The method for how KPIs are displayed in the DPM
Workspace. The entry can be Average or Sum.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1966


<!-- page 1967 -->
Field

Description

Note: This field applies when the latest score property
[sn_dpm.kpi_groups.show_latest_score] is set to false.
For information, see Configure the Digital Portfolio
Management experience.
Order
Description

The order the KPI is displayed within the KPI group.
The description of the KPI.
In the DPM Workspace, selecting the tooltip on the KPI card
reveals the description. You access the KPI cards in the
following areas:
◦ On the Run tab for services, service offerings, business
applications, and service instances.
◦ On the Overview tab for portfolios and taxonomy nodes.
For more information on the data shown in KPI charts and
graphs, see KB1123710 .

Chart type

The chart type for the KPI group. The options are:
◦ Single score
◦ Time series: Line
◦ Time series: Column
◦ Time series: Area
◦ Time series: Spline
◦ Time series: Step line
◦ Group By

Note: The Group By option enables you to select the
results breakdown. For example, incidents by priority.
Time range

The time range for the KPI to display.
◦ Last 7 days
◦ Last 30 days
◦ Last 90 days
◦ Last 180 days

Active flag

The flag that determines if the KPI displays in the KPI
group. KPI groups can display in several places in the DPM
Workspace — the enterprise portfolio page, the Overview
tab of portfolios and nodes, and the Run tab of services and
offerings, business applications, and service instances. The
flag for all KPIs that come with the base system is set to active.
As an admin, you can clear the flag so it's inactive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1967


<!-- page 1968 -->
Field

Description

◦ When checked, the flag is active and the KPI displays in the
KPI group.
◦ When cleared, the flag is inactive and the KPI doesn't
display in the KPI group.

Important: Two KPIs can use the same indicator.
If both indicators are in a KPI group that is displayed,
then both show the same indicator in the KPI groups. If
one KPI is set to inactive, then that one is hidden from
display, but the other one still displays.
5. Select Update.
Related topics
KPI groups in Digital Portfolio Management

Configure Needs attention panels in Digital Portfolio Management
Each solution page in Digital Portfolio Management (DPM) has a Needs attention panel with
items that need attention in the context of the page. You can configure the Needs attention
attributes to meet your organization's needs.

Before you begin

Role required: sn_dpm.dpm_admin

About this task

Configurable Needs attention panels and its attributes table were introduced in the Utah Store
release, November 2023. The following are general guidelines but for more Admin configuration
steps, see KB1519343 .
Default thresholds apply to the DPM Workspace homepage. Solutions use the default attributes
and thresholds from the attributes table until users decide to personalize their DPM Workspace
homepage experience. See Personalize the Digital Portfolio Management Workspace home
page.

Procedure
1. Navigate to All > Digital Portfolio Management > Needs attention > Needs attention
attributes.
The Needs attention attributes display in a table — Critical incidents, Outages, Changes,
Alerts, Risks, Audits, and Critical problems.

Note: To see Critical problems in the Needs attention panel, you must be using the DPM
August 2024 release or a later release.
2. Optional: Use the Personalize List icon (

) to add the following column fields to the table.

◦ Name
◦ Description
◦ Solution type
◦ Order

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1968


<!-- page 1969 -->
◦ Active
◦ Show on homepage
◦ Show on needs attention
◦ Threshold for moderate
◦ Threshold for severe
3. Update the field settings.

Column field

Setting

Order
◦ The order of the attributes on the user's homepage solution cards.
◦ The order of the attributes when the user personalizes the Edit status
conditions on the homepage.

Note: When editing the status conditions, the first four attributes of
each type display. You can select the drop-down list to select different
status conditions.
◦ Active
◦ Show on
homepage

Set to true or false. If set to true, then the logged-in user can choose to show
the attribute on their homepage solution cards and then personalize the
thresholds for that attribute.

◦ Show on
needs
attention
◦ Threshold
for
moderate

Change the number from the default threshold to the threshold that you want
to set for each attribute.

◦ Threshold
for severe

Note: If a threshold is set to zero (0), then that attribute field is empty.

Related topics
Work with Needs attention panels in Digital Portfolio Management

Configure the Digital Portfolio Management experience
If your organization doesn't use certain modules or life-cycle phases in Digital Portfolio
Management (DPM), then configure the experience by hiding those elements from user views.

Before you begin

Role required: sn_dpm.dpm_admin

About this task

Configure the user experience in the DPM Workspace. You can also configure it using the UI
Builder application but there's so much you can do in DPM. As a DPM admin, you can:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1969


<!-- page 1970 -->
• Hide entire tabs, certain sections of a tab, and solutions types (for example, business
applications) from user views. After a tab or solution type is hidden, that item is also hidden in
searches and filters.
• Hide available item types — services, technology management services, business services,
service instances, service offerings, and business applications.
• Enable system properties to show:
◦ Standard Needs attention panels.

Note: Standard Needs attention panels are set to true for new customers. Existing
customers must enable the system property. For more information, see Work with
Needs attention panels in Digital Portfolio Management.
◦ Latest (or last) key performance indicator (KPI) scores. When enabled, KPIs no longer display
as a sum or average across a date range. This feature is only available with the Utah release
and later.
◦ DevOps data. For more information, see DevOps value stream metrics in Digital Portfolio
Management.

Note: You can enable and disable these configurations at any time.
See configuring DPM user views in action.
https://player.vimeo.com/video/1022258649?
h=1f96ee0b3c&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Procedure
1. Navigate to All > Digital Portfolio Management > Administration.
2. Select the menu item that you want to configure for users.
◦ Service instance properties
◦ Business application properties
◦ Service and offering properties
◦ DevOps properties
◦ KPI groups properties (option to set the Latest score system property)
◦ Available item types (go to Step 6)
3. If applicable, follow the provided instructions to edit the selected record.
For some properties, there’s a link for you to select.
4. Follow the provided instructions to edit each configuration.
5. Select Save.
6. Optional: Hide or show available item types.
◦ Navigate to All > Digital Portfolio Management > Administration > Available item types.
◦ Set the item type to false (to hide) or to true (to show) in the Active column. When a
solution type is hidden, that solution is omitted from the following areas:
▪ The auto-generated solution card results.
▪ The personalization options of add and remove items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1970


<!-- page 1971 -->
▪ The set status conditions when updating thresholds.
▪ The page filters.
Related topics
Open a Configurable Workspace experience
UI Builder

Relate business capabilities to view in Digital Portfolio Management
You can relate business capabilities for a service or for a business application to see them in the
Digital Portfolio Management (DPM) Workspace.

Before you begin

Role required: sn_dpm.dpm_admin

About this task

There are two conditions to create a CI relationship in DPM.
1. The business capability must be created.
2. The business capability must be related to a service.
You can create a business capability by navigating to All > CSDM > Design > Business
Capability. For information about configuration item (CI) relationships, see Create or edit a CI
relationship .

Procedure
1. Confirm the business capability name and the solution name that you want to relate.
2. Create the CI relationship.
a. Enter cmdb_rel_ci.list in the filter navigator, and then press Enter.
b. Select New.
c. On the form, fill in the fields.

Field

Description

Parent The business capability that is to be related to the service or business application.
Use the search icon (
Type

Child

) to select the business capability.

The type of CI relationship. Use the search icon (
Provides.

) to select Provided By::

The service or business application to be related to the business capability. Use
the search icon (

).

d. Submit.
3. Confirm the CI relationship.
You can confirm the CI relationship in one of two ways:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1971


<!-- page 1972 -->
◦ On the business capability record, in the Related Items section.
◦ In the DPM Workspace, on the Info tab of a service or business application.
Related topics
View service and service offering details
View business application details

Configure Digital Portfolio Management to integrate with Process Mining
Use Process Mining in Digital Portfolio Management (DPM) to see the status of a key
performance indicators (KPI) on your solutions, and adjust as needed.
Process Mining enables you to analyze and address KPI outputs for your solutions in DPM.
Administrators must complete a few steps to set up Process Mining.

Set up Process Mining in DPM
In general, to use Process Mining in DPM, you access the KPI group and select Initiate Process
Mining. To see that option, administrators with the dpm_admin role must do the following.
1. Install the ITSM Process Mining Content Pack from the ServiceNow Store. The content pack
provides the following project insights and system property for Process Mining in DPM:
◦ Team performance
◦ Process Mining
◦ System property sn_dpm.enable.po.dpm
2. Set the system property sn_dpm.enable.po.dpm to true. By default, the system property
is set to false. Admins [sn_dpm.dpm_admin] must set the system property to true.
a. Navigate to All > Digital Portfolio Management > Administration > Settings.
b. Enter *enable in the System Properties Name search field, and then press Enter.
c. Verify that the system property sn_dpm.enable.po.dpm is set to true. If not, then select
it, and set the Value field to true (you may get a text banner that provides a link to edit the
record).
d. Select Update.
The primary role to use Process Mining is Process Mining Analyst
[process_optimization_analyst]. For details about properties, roles, and scheduled jobs, see
Process Mining components for Digital Portfolio Management.

Create Process Mining projects for KPI groups in Digital Portfolio
Management
Create Process Mining projects for each key performance indicator (KPI) group in Digital Portfolio
Management (DPM) to see KPI performance and analyze anomalies.

Before you begin
• Role required: sn_process_optimization_analyst
• Enable Process Mining

About this task

Use Process Mining to analyze and improve KPI performance in DPM.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1972


<!-- page 1973 -->
The KPI assignment group manager must have the required role to create Process Mining
projects for their KPI groups: Process Mining analyst [sn_process_optimization_analyst].
For information about properties, roles, and scheduled jobs, see Process Mining components for
Digital Portfolio Management.
Several project templates come with the base DPM system:
• Incident
• Problems
• Changes
• Requests
If you want different templates, then your administrator must create them on the tables that
correspond to what you want to see insights for.
A scheduled job runs to remine the projects when additional data is added so that you get the
most updated insights for your projects.

Procedure
1. Mine the project to create Process Mining projects for each KPI group.
a. Navigate to All > Digital Portfolio Management > KPI Groups.
b. Open a KPI group that you want to mine for.
c. Select Initiate Process Mining.
After you select Initiate Process Mining, a project is created in the background for each KPI
table in the KPI group. If you’re using a formula indicator for Process Mining, you can select
any indicator source that is used in the formula.

Note: The system property sn_dpm.enable.po.dpm must be enabled. For more
information, see Configure Digital Portfolio Management to integrate with Process
Mining.
2. Optional: Open the project and check the mining.
If you don't want users to filter on retired projects, then make sure the project definition status
is set to Retired.
a. To find the project, navigate to All > Digital Portfolio Management > DPM Projects.
b. Check the mining state by opening the project and selecting Generate model (Full).
3. Optional: Remine the KPI group again if you added additional assignment groups to the KPI
group after you did the process mining.
a. In the Assignment Group related list for the selected KPI group, select Edit.
b. Add the desired assignment group to the KPI group.
A process is automatically created for the assignment group. If you add an assignment group
to the KPI group, then the assignment group is updated in the filter condition. If you remove
any assignment group, then it's removed from the project filter condition. An informational
message is displayed when an assignment group is added to the KPI group only if the KPI
group is already mined.
4. See the Process Mining insights and variations for selected KPI records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1973


<!-- page 1974 -->
a. Open the DPM Workspace.
b. Select the enterprise portfolios icon (

), and then open an enterprise portfolio.

c. Select View Details.
d. Select an incident KPI single score.
On the KPI drill down page, select the Process analysis tab to see the insights and
variations for the selected KPI records. By default, the data shown is from the last 30 days.
Related topics
Configure Digital Portfolio Management to integrate with Process Mining
Process Mining components for Digital Portfolio Management

Getting started with Digital Portfolio Management
The Digital Portfolio Management (DPM) Workspace is a unified environment to view all your
services, service offerings, business applications, and service instances. With the proper
access, you can also view details and edit the solutions without having to leave the DPM
experience.

Getting started with the DPM Workspace
https://player.vimeo.com/video/974352474?
badge=0&autopause=0&player_id=0&app_id=58479
This video provides getting started steps to use the DPM Workspace.

Perform tasks and customize views
The DPM Workspace provides basic roles to create personal portfolios. To see portfolio details,
you must install the proper plugins and roles from the products that you want to view.
For example, viewing and editing roadmaps comes from the Strategic Planning application. If
you want to see roadmaps in the context of your service or service offering while in the DPM
experience, then you must install the plugins and roles for Strategic Planning.
Also, DPM enables administrators to customize user views by hiding certain tabs and tab
sections (even roadmaps as mentioned in the previous example). For more information, see
Configure the Digital Portfolio Management experience.
To learn about the plugins and roles required to view data from other ServiceNow applications in
the DPM experience, see Digital Portfolio Management related applications and data sources.

Note: In the DPM experience, the data you pull in from other applications is limited to
the license that you have from the other applications. For example, if you have a standard
license for Strategic Planning, then you see standard Strategic Planning data in DPM.
Likewise, if you have a pro license for Strategic Planning, then you see pro Strategic
Planning data in the DPM experience.
The DPM base roles and plugins enable some actions like create demand and improvement
initiatives. To make more substantial actions or edits, you must have the proper access control
list (ACL) permissions from the applications that you want to work with in DPM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1974


<!-- page 1975 -->
Personalize the Digital Portfolio Management Workspace home page
Personalize your Digital Portfolio Management (DPM) Workspace home page to meet your
needs. You can edit the status conditions of each solution, add solutions, search for solutions,
and filter solutions by status and by type.

Before you begin

Role required: sn_dpm.dpm_manager

About this task
You can personalize your home page (
) to set the attributes and thresholds that you want to
track on your solutions. After you personalize your status conditions, the system will no longer
use the default attributes and thresholds that come with the base DPM system. Instead, your
personalizations are saved in your user preference record (dpm_home_page_item_list) to
provide you with the home page view that you want to see.
You can also customize your personal view by using the search and filter options on the home
page.

Procedure
1. Navigate to the Digital Portfolio Management Workspace.
2. Personalize the home page.
◦ Select Personalize.
◦ Select the option to personalize your solution cards. The system filters out retired items so
they're not an option for you to select.
▪ Select Edit status conditions to set your own thresholds for Needs attention attributes on
business applications, services/offerings, and service instances on your home page. For
default values, see Digital Portfolio Management Workspace homepage.
▪ Select Add items to add business applications, services/offerings, and service instances
to your home page.
▪ Select Remove items to remove business applications, services/offerings, and service
instances from your home page.

Tip: If there aren't any items in your home page when you log in, then select Add

items to add solutions to your home page. For the limit on the number of solution
cards you can have on your home page, see Digital Portfolio Management homepage
default solution cards.
3. Search for a solution on the home page.
In the Search field, enter any part of the solution name that you want to find. For example,
to find all solutions pertaining to knowledge bases, enter knowledge in the Search field.
Your search term must contain part of a solution name. You can't search for a solution owner's
name.
4. Filter the solution list on the home page.
Select Filter to filter all the solutions by status or by type. The status options are severe,
moderate, and good. For information on the status meanings, see Digital Portfolio Management
Workspace homepage (Needs attention default thresholds section).
The type options to filter are:
◦ Services
◦ Technology management services
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1975


<!-- page 1976 -->
◦ Technology management service offerings
◦ Business services
◦ Business service offerings
◦ Business applications
◦ Service instances
Related topics
Digital Portfolio Management Workspace homepage
Digital Portfolio Management homepage default solution cards

Create custom record views
Create a UX custom form view to show any record for a given table in Digital Portfolio
Management (DPM).

Before you begin

Role required: sn_dpm.dpm_admin

About this task

Create a UX custom form view to determine the view to show for a given table in DPM.

Note: Clear the cache to see the change results of this procedure.
Procedure
1. Navigate to All > Now Experience Framework > Configuration Settings > UX Form View
Rules.
2. Select New.
3. On the form, fill in the fields.
View rule form
Field Set

Description

Name

Unique name of the custom form view.

Table

Table name associated with the custom
form view.

Tip: Enter a key word like service or
offering.
View

Application

Execution Order

The custom UI view. You can select default
or workspace, or new.
The application for the view rule. This field
should default to the application that you're
in.
The order in which your view displays.

4. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1976


<!-- page 1977 -->
Navigate enterprise portfolios in Digital Portfolio Management
You can work with three types of enterprise portfolios in the Digital Portfolio Management (DPM)
Workspace — service, business application, and service instance. Even though you can view
service enterprise portfolios in DPM, they're created with Service Portfolio Management tables.
Enterprise portfolios for business applications and service instances are created with the
enterprise portfolio tables.

Before you begin

Role required: sn_dpm.dpm_manager

About this task

Using enterprise portfolios, you can view traditional service portfolios created from the Service
Portfolio Management tables. You can also view portfolios for business applications and service
instances that are created with enterprise portfolio tables. The search function in the Digital
Portfolio Management experience enables you to search across all enterprise portfolios to find
the one you seek. You can view a performance snapshot of key performance indicators (KPIs)
like availability, new incidents, subscribers, and customer satisfaction scores.
You can also see items that need attention and select parts of the portfolio to see more details.

Procedure
1. Navigate to Workspaces > Digital Portfolio Management.
2. Select the enterprise portfolios icon (

).

3. Select the Portfolio search field.
Different types of portfolios are displayed in groupings — Service portfolios, Business
application portfolios, and Service instance portfolios.
4. Select a portfolio from one of the groupings.
After you select a portfolio, a list of Enterprise taxonomy nodes are nested in a tree structure, at
the top level.
5. Select an Enterprise taxonomy node that interests you, and then select View Details.
The details of the Enterprise taxonomy node include several tabs — Generally an overview,
a tab (or two) for the type of portfolio you selected, and a general information tab. To learn
more about enterprise portfolio screens, see Navigate portfolio types in Digital Portfolio
Management.
6. Follow the breadcrumb path to return to the tree structure of the enterprise portfolio.
7. Expand the Enterprise taxonomy node to see its child nodes, and then its solutions (services,
business applications, or service instances).
Selecting each item in the tree structure displays high-level information of that item. All child
nodes and solutions have their own View details option. To learn more about enterprise
portfolio screens, see Navigate portfolio types in Digital Portfolio Management.
8. View information about a different type of enterprise portfolio.

Important: To select a different type of enterprise portfolio from the one you're in,

you must delete the value in the Portfolio field. When the Portfolio field is empty, then
select it (again) to see the other portfolio types. For example, if you're navigating a service
portfolio and want to see to a business portfolio, you must delete the name of the service
portfolio in the Portfolio field. After you delete it, select the Portfolio field (again) to see
the other enterprise portfolio options (service, business, or service instance).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1977


