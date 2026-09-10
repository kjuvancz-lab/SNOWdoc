# Zurich IT Operations Management — Service Reliability Management

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 3720–3799 of 4823

Sections: Service Reliability Management (p3720)

---

<!-- page 3720 -->
Add CI candidate to CMDB form (Linux Server)
Field

Description

Name

The name of the CI.

Asset tag

Alphanumeric information to help track the
asset associated with the CI.

Manufacturer

The device manufacturer.

Asset

(Read-only) The asset associated with the CI.

Class

The asset group. For example, Linux Server.

Comments

Information about the asset.

Company

The company associated with the CI.
This field is required.

Serial number

The serial number associated with the CI.

Model ID

The device model ID.

Assigned to

The person using or primarily responsible for
this item.

Host name

The host name of the CI.

OS Domain

The OS domain of the CI.

Operating System

The OS running on the CI.

OS Version

The version of the OS running on the CI.

OS Service Pack

The service pack installed on the OS.

DNS Domain

The DNS domain of the CI.

IP Address

The IP address of the CI.

Disk space (GB)

The amount of disk space, in GB.

Description

Textual description of the CI.

RAM (MB)

The amount of RAM on the computer, in MB.

CPU manufacturer

The CPU manufacturer.

CPU type

The CPU type.

CPU speed (MHz)

The speed of the CPU, in MHz.

CPU count

The number of CPUs.

CPU core count

The number of cores per CPU.

IsVirtual

Option for indicating whether the device is
running on a virtual machine instance.​

Service Reliability Management
Service Reliability Management (SRM) helps your organization respond, collaborate, track, and
self-remediate when working on alerts and incidents. SRM is available when you have both ITSM
Standard and ITOM Operator Professional subscriptions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3720


<!-- page 3721 -->
Overview of Service Reliability Management

Get started

Explore

Configure

Learn about SRM concepts and features.

Install and configure SRM.

Use

Reference

Work with services, teams,
and reliability tasks in SRM.

Get details about SRM components,
such as fields, tables, and properties.

Install from the Store
Install SRM from the ServiceNow Store. Visit the ServiceNow Store
website to view all the
available apps and for information about submitting requests to the store. For cumulative release
notes information for all released apps, see the ServiceNow Store version history release notes .

Note: When installing from the store, first confirm that you have all the dependencies
needed by selecting the Dependencies tab. For more information, see Install Service
Reliability Management from Admin Center or ServiceNow Store.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3721


<!-- page 3722 -->
Troubleshoot and get help
• Visit our community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Service Reliability Management
Service Reliability Management (SRM) provides a self-serve, guided experience for teams
to manage service health. The experience is built using the Service Operations Workspace
application and combines ITOM and ITSM capabilities into a single workflow.

SRM overview
Optimize service health with site reliability engineering (SRE) practices. SRM is a single
operations workspace that empowers teams to improve the reliability of digital services with SRE.
• Use on-call escalations to respond to issues in a timely manner.
• Reduce setup friction with guided self-service to onboard distributed teams with separated
data, empowered access, and minimal governance from central IT.
When SRM is installed, several plugins and applications are also activated. For more information,
see Plugins or applications installed with ITOM AIOps.

SRM users
Users
Users

admin

Description

ServiceNow administrators manage,
configure, and maintain the
ServiceNow platform. In SRM, they
can access and work in the Service
Operations Workspace Admin Center.
Only administrators can do the
following:

Contains Roles

All

• Install SRM.
• Add and manage SRM
administrators.
• Create and manage integration
users.
SRM
administrator
[srm_admin]

Note: This
role differs
from the
ServiceNow
admin role.

SRM administrators can manage
account settings, configurations, and
users.

• Manager
• Responder

Administrators can perform the
following actions:
• Access, create, edit, or delete all
SRM configurations.
• Add or manage integrations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3722


<!-- page 3723 -->
Users (continued)
Users

Description

Contains Roles

• Create integrations with Application
Performance Monitoring (APM)
tools.
• Set up and maintain reliability
metrics.
• Set up and maintain error budget
policies.
SRM manager
[srm_manager]

Managers oversee a team of SREs.
Managers assign SREs to the team
on-call schedule, monitor their
performance, and create procedures
to handle incidents and develop
solutions. Managers promote
resilience across all the systems and
the DevOps workflows.

Responder

Managers can perform the following
actions within the context of their
teams:
• Define and set up teams, on-call
schedules, and services.
• Add and delete users such as
responders and managers for the
teams they're a part of.
• Add or manage integrations.
• Create Integrations with Application
Performance Monitoring (APM)
tools.
• Set up and maintain reliability
metrics.
• Set up and maintain error budget
policies.
SRM responder
[srm_responder]

A Service Reliability Engineer (SRE)
that uses SRM to perform everyday
tasks. Responders are the individuals
who are on call and diagnose and
remediate incidents.
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

SREs can perform the following
actions, within the context of their
teams:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3723


<!-- page 3724 -->
Users (continued)
Users

Description

Contains Roles

• Set up services, teams, and
integrations.
• Confirm their on-call schedules.
• Manage incident and alert records.
• Update teams that they’ve created.
• Add other responders.
• Create integrations with Application
Performance Monitoring (APM)
tools.
• Set up and maintain reliability
metrics.
• Set up and maintain error budget
actions.
For more information, see SRM roles and responsibilities.

SRM workflow

1. Product teams in IT or Lines of Business continuously deliver new service instances and
technology management services. Example: New customer billing portal.
2. Along with SLO Management, teams can register services and define service level objectives
(SLOs), helping them reach business outcomes. Example: 95% monthly availability for the
billing portal.
3. Monitoring integrations are set up by the teams to collect the real-time health of these
services. Example: Cloud Observability.
4. Monitoring creates service level indicators (SLIs) impacting alerts when services are
underperforming. Automation groups and enriches. Example: Billing portal latency is
exceeding 7 s.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3724


<!-- page 3725 -->
5. When the alerts indicate an outage or customer-impacting degradation, incidents are created
and on-call notifications notify appropriate team resources. Example: A Billing SRE team is
notified via phone of a latency issue on the billing portal.
6. After teams collaboratively diagnose and remediate incidents, they identify action items for
improving the system's resilience. Example: The Billing team decides to add additional web
server capacity.
7. Management continually reviews SLO performance, helps to prevent changes when the error
budget is exhausted, and prioritizes improvement initiatives for underperforming services.

SRM benefits
Benefit

Feature

Users

Team-based experience

Working with SRM
teams

SRM administrators,
managers, and
responders

Service registration

Working with SRM
services

SRM administrators,
managers, and
responders

Prebuilt integrations

Working with
integrations in SRM

SRM administrators,
managers, and
responders

Measure service health

Working with reliability SRM administrators,
metrics
managers, and
responders

On-call coverage

Create an SRM on-call SRM administrators,
schedule
managers, and
responders

Remediate high severity alerts and incidents

Working with SRM
reliability tasks

SRM administrators,
managers, and
responders

What to explore next
To learn more about configuring and using SRM, see:
• Configuring Service Reliability Management
• Using Service Reliability Management
• Service Reliability Management reference
Get started with Service Reliability Management
Service Reliability Management (SRM) accelerates your path to viewing service health in the
context of service level objectives and incident resolution. Helps IT Operations and DevOps
teams deliver on the promise of agility, performance, and uptime.
Get started with SRM to understand the different sections in the SRM interface.
For more information on roles, see SRM roles and responsibilities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3725


<!-- page 3726 -->
Basic SRM tasks
Step

Description

Reference

Set up teams and services

Setup guides for the Home, Services,
and Teams pages show how to add a
team or service to SRM.

Add an SRM team

Visit and learn about your
Home page

The Home page is where you find
the things most important to you. For
example, the services with critical alerts
and incidents and work assigned to you
and your team.

SRM Home page

Learn how to navigate SRM Get familiar with the different sections
and elements of the SRM interface.
The sections and elements are used
throughout the documentation.

SRM interface

SRM helps you when you must create and administer teams, services, and integrations.
SRM tasks
Step

Manage a service instance
or technology management
service in SRM
Set up an SRM team

Set up on-call schedules and
escalation policies

Configure service relationships

Integrate services with thirdparty monitoring tools

Establish SLOs, SLIs & error
budgets for services

Set up alert automations

Description

See this

Define the basic tasks and parameters
that make up your service and how it
should behave.

Add a service to
SRM

Set up a team. Teams are responsible
for the issues that occur in their
associated services.

Add an SRM team

Create an on-call schedule for your
team to make sure they're available
to resolve issues. You can set up an
escalation policy to make sure at
least one team member is engaged in
incident response.

Create an SRM oncall schedule

Use a map canvas to add, configure,
and arrange services. You can add
child services that depend on parent
services.

View impact of child
service on parent
service

Set up a third-party integration, such
Working with
as Datadog or ServiceNow Cloud
integrations in SRM
Observability, with SRM so that alerts
are available to your teams within SRM.
Establish goals for how well your
service should operate. Also, specify
the maximum amount of time that
a technical system can fail without
contractual consequences.

Service Level
Objective
Management

Alert automations enable you to define The Alert
alert conditions. Set up alert rules for
automation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3726


<!-- page 3727 -->
SRM tasks (continued)
Step

Description

Note: This functionality
is only available if you
have installed the Alert
automations application.

See this

each APM tool to define the conditions application is
when the APM tool should send
available from the
notifications to SRM.
ServiceNow Store.

SRM Home page
The Service Reliability Management (SRM) Home page provides relevant information about
your work, services, schedules, maintenance reminders, and teams. View the Home page by
navigating to Service Reliability Management.

Service Reliability Management Home page sections
In the workspace, select Home (

) to view the Home page.

When you're on-call, your schedule is listed.
Home page sections
Get started

Contains setup tasks and their progress for
teams and services. For more information on
completing setup, see Add a service to SRM
and Edit service details in SRM.

Note: You can skip any section and
come back to it later. Progress is marked
in percentages by the actions that
you take. As long as a step remains
incomplete, the tiles are available. You
can minimize them, at any point, by
selecting the Up icon

.

Use Dismiss to remove it from your page.
The checklist states are as follows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3727


<!-- page 3728 -->
Home page sections (continued)
• None: No action has been taken.
• Done: All required fields have been added.
• Pending: Some fields or approvals still must
be added or granted.
Overview

Contains an overview of all service alerts,
incidents, and at-risk and critical services.
Services with critical alerts are the default list
view. Select a card to see the list view for that
area.

Service reliability

Displays a dashboard for monitoring
and managing service performance. The
dashboard offers multiple visualizations to help
you track error budgets, monitor service level
objectives, and identify issues across services.

Your work

Contains incidents and alerts assigned to you.
Select a card to see the list view for that area.

Your teams' work

Contains incidents and alerts assigned to your
team. Select a card to see the list view for that
area.

SRM interface
The different components on the Service Reliability Management (SRM) interface provide easy
access to different functions. The features and functions that appear depend on your role and
permissions.
The SRM interface has the following different sections:
Interface sections

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes SRM
alerts and incidents in its metrics. Depending on your role, you may see other icons in the
primary navigation.
If you see the SOW Home page, select an SRM icon to view SRM-specific information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3728


<!-- page 3729 -->
Sections

Description

1 - Header

A home for your organization logo and systemlevel utilities present everywhere in the
interface.
• All
• Favorites
• History
• Workspaces
• Current workspace
• Search
• Sidebar discussions
• Help
• Notifications
• Profile icon: Represents your profile

2 - Primary navigation

Easy access to specific pages in SRM.
The primary navigation uses icons, including
icons for Services, Reliability tasks, Teams,
and Schedules. Use tooltips to identify them.

3 - Content headers

Tabs, cards, or buttons that provide the
means to accomplish product-level tasks. The
elements in the content header differ from one
page to another.

4 - Content area

Canvas or the main area where you can gather
information, read metrics, and perform tasks.

Note:
If you want to minimize the side panel
on forms, by default, navigate to
Preferences > Workspace and disable
the Show sidebar option.
That action disables it across the Service
Operations Workspace, not just SRM.
Search, filters, lists, forms, and guides
An overview of the additional elements in the Service Reliability Management (SRM) interface
that help you find items, view available forms and lists, and follow setup processes.
Table List view
View services and incidents as a list.
• Search using the header text box.
• Order items using the list columns.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3729


<!-- page 3730 -->
• Filter list results using the list columns.

Note: View the active filters using the filter icon in the list view header.
Each view contains its own unique items. See those pages for details.
Form view
When you open any of the table records from the list view, you see the details of the
record as a form.
Each view contains its own unique items. See those pages for details.

Note: Grayed out fields can't be changed.
The Attachments panel is often visible by default, to hide it select the
Attachment icon

.

Setup checklists
Use the setup checklists to visualize the process that you go through to reach your
goals. Each step is highlighted as you complete it.
Service setup checklist example

Export list information to a file
You can export live information to a file in Service Reliability Management (SRM).

Before you begin

Note: Bulk selection doesn't impact exports. The export includes all records that match
the current filter criteria. It doesn't consider the selections you make in the list view.

Role required: srm_admin, srm_manager, or srm_responder

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3730


<!-- page 3731 -->
Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. Select the list view in any landing page section in SRM with an Export button.
3. Determine which filters you want to use and select them from the Filters
menu in the list columns.

or More actions

Note:
The Export button only becomes available if there are records in the list view.
The export contains all list data that matches your filtered/grouped lists.
4. Select Export.
In the pop-up window select:
◦ File Type:
▪ Excel
▪ CSV
▪ JSON
▪ PDF
◦ Delivery type:
▪ Download
▪ Email: Provide an email address
For Email: Once the export is complete, a success message appears with your email address
at the top of the screen. It's useful for larger files because, depending on the size of the file,
exporting might take some time. Email runs in the background, so you’re free to do something
else while waiting.
For Download: The pop-up begins exporting and the file appears in your Download directory.
Depending on the size of the file, it might take some time. You can open it in any application
that supports the file format.
Manually create SRM tags
Add tags to classify, categorize, and add context to data. Service Reliability Management (SRM)
imports tags and attaches them to services, alerts, and incidents. You can also manually create
tags.

Before you begin

Role required: srm_admin, srm_manager, or srm_responder

About this task

There are two ways that tags can enter the system and attach to an alert or incident. The first is
automated but the last one is manual.
• Imported from a third-party integration such as Datadog.
• Using the tag icon in the header of a service, alert, or incident.
• Added using the Modify field values action in an automation rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3731


<!-- page 3732 -->
This task describes how to add tags to services and incidents in SRM. For information about
managing alerts, see Alerts in Service Operations Workspace.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. From the primary navigation, select Services or Reliability tasks.
3. Open a service or incident.
4. In the header, select the Tag icon

to add tags.

5. Enter your tag in the pop-up window.
Your tag is saved and appears below the Add Tag box alongside any existing tags.
6. Select anywhere in the form to close the pop-up.

Note:
Tags are also shown under the description in the incident list view.
SRM incidents
Track and collaborate on incidents in the Incidents tab, helping you and your teams resolve
issues efficiently.
The Incidents tab appears in the Service Reliability Management (SRM) Reliability tasks page.
Its top header shows description information, tags, priority information, state, service, and
assignment group.

Note: Tags are imported from third-party integrations and attached to incidents. However,
you can also create tags to categorize data and drive system logic using the Tag icon
For more information on creating and viewing tags, see Manually create SRM tags.

.

When selecting an incident, you're taken to an overview. This section contains three content
panels: Summary, Activity, and Recommended actions.

Note: When an editable field is updated, notifications are sent based on user notification
preferences.
In the Impact Summary, you find the following information:
Affected CIs
Field

Description

Configuration item

Name of and link to the configuration item associated with this incident.

Impacted Services
Field

Description

Configuration item

Name of and link to the configuration item associated with this incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3732


<!-- page 3733 -->
Impacted Services (continued)
Field

Description

Managed by

Team responsible for the incident.

Owned by

Incident owner.

Approval group

Team responsible for approvals.

Location

Geographical location of the incident if defined.

Operational status

Status of the incident.

Manually added.

Whether this incident was manually added or the result of an error budget
policy.

Details

Contains incident details and related alerts
Field

Description

Short description

Brief description of the incident.

Description

Detailed description of the incident.

Number

Incident identifier.

Impact

Impact is a measure of the effect of an incident on business processes.
Choices are:
• 1 - High
• 2 - Medium
• 3 - Low

Assignment group

Team assigned to the incident.

Priority

Priority is based on Impact and Urgency, and it identifies how quickly the
incident should be addressed.
Choices are:
• High Impact = Critical Priority
• Medium Impact = High Priority
• Low Impact = Moderate

Note: See Priority Data Lookup rules below.
Category

Category of the incident.
Choices are:
• Inquiry/Help
• Software
• Hardware
• Network
• Database

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3733


<!-- page 3734 -->
Details

Contains incident details and related alerts
(continued)
Field

Description

Urgency

Urgency is a measure of how long the resolution can be delayed until an
incident has a significant business impact.

Service

Affected service associated with the incident. You can edit this field from a
list menu.

Note: When you set a service, and that service has an assigned
team, the assigned team of that service is automatically assigned to
the incident.
Severity

Imported severity on the incident. Values P1–P5.

Configuration item

Asset associated with the incident.

Assigned to

Individual responsible for resolving the incident.

State

State of the incident. The state moves and tracks incidents through
several stages of resolution.
Choices are:
• New
• In Progress
• Ob Hold
• Resolved
• Canceled

Watch list

Individuals interested in the incident. Subscribes them to notifications
according to their preferences.

Resolution code

Code associated with the resolution.
Choices are:
• None (default)
• Duplicate
• Known error
• No resolution provided
• Resolved by caller
• Resolved by change
• Resolved by problem
• Resolved by request
• Solution provided

Resolution notes

Detailed information on the resolution.
Resolution notes are posted to the Activity timeline.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3734


<!-- page 3735 -->
Note: Priority is calculated according to the following sample data lookup rules:
Priority Data lookup rules
Impact

Urgency

Priority

1 - High

1 - High

1 - Critical

1 - High

2 - Medium

2 - High

1 - High

3 - Low

3 - Moderate

2 - Medium

1 - High

2 - High

2 - Medium

2 - Medium

3 - Moderate

2 - Medium

3 - Low

4 - Low

3 - Low

1 - High

3 - Moderate

3 - Low

2 - Medium

4 - Low

3 - Low

3 - Low

5 - Planning

When a service is deleted, its integrations, alerts, incidents, and automations are removed.
Deleting a service isn't a recoverable action so consider deactivating the service instead.
The Related Records tab contains any alerts associated with this incident.

Note: All field values are imported from the related records and aren't editable from SRM.
Child Incidents
Field

Description

Number

Identifier for the related incident.

Short description

Brief description of the related incident.

Priority

Priority of the related incident.

State

State of the related incident.

Assigned to

Team member assigned to the related incident.

Assignment group

Team assigned to the related incident.

Service

Service associated with the related incident.

Alerts
Field

Description

Number

Identifier for the related alert.

Severity

Severity of the related alert.

Short description

Brief description of the related alert.

Acknowledged

Whether the related alert has been acknowledged or not.

Assigned to

Team member assigned to the related alert.

Configuration item

Asset associated with the related alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3735


<!-- page 3736 -->
Alerts (continued)
Field

Description

Parent

Primary alert associated with the related alert.

Recent Impactful Changes
Field

Description

Number

Identifier for the related changes associated with this incident.

Short description

Brief description of the related changes associated with this incident.

Type

Type of the recent changes associated with this incident.

State

State of the recent changes associated with this incident.

Planned start date

Date and time to begin changes associated with this incident.

Planned end date

Date and time to begin changes associated with this incident.

Assigned to

Team member responsible for the change request associated with this
incident.

Change Requests
Field

Description

Short description

Brief description of the change request associated with this incident.

Type

Type of the change request associated with this incident.

State

State of the change request associated with this incident.

Planned start date

Date and time to begin change request work associated with this incident.

Planned end date

Date and time change request work associated with this incident ended.

Assigned to

Team member responsible for the change request associated with this
incident.

Postmortem tab
About Postmortem owner:
• If a Scribe has already been chosen in the Collaboration panel Responders list, they're
automatically made the owner.
• If there's more than one scribe, the first one assigned is chosen. Otherwise, you can select an
owner from the list menu.
• If a new scribe is added or an existing user persona is changed to Scribe, that user is made the
owner.
• If you manually remove an owner, no new owner is automatically selected.
Use the drag-and-drop feature to edit postmortem sections. You can exclude sections from PDFs,
delete sections, or reorder sections.
To add new sections, select the Add icon
Compose panel

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3736


<!-- page 3737 -->
Work notes are added to the Activity timeline automatically. Visible to responders and above.
Add comments using the Compose text box.
Comments are added to the Activity timeline automatically. Visible to everyone in SRM.
Activity section
Stream that contains all the system activity, and resolution notes. You can filter, sort, expand or
collapse all posts using the header icons.

Note: The filter option includes Post types, Field changes, and Filter sets. All choices are
selected by default. Flagged entries are either all or none.

Actions panel

Note:
The Notifications, Agent assist, Expert on-call, and Email templates panels aren't
currently supported in SRM.
Attachments section
Open the Attachments section using the Attachment icon

.

On the Attachments section, you can initially Browse your local hard drive for files.
Once you have added attachments, you can:
• Search for an attachment based on its name or extension

Note: You must have two or more attachments to search.
• Upload a new attachment using the (

) icon.

• Download, remove, or rename existing attachments using the More actions icon (

).

Template section
Open the Template panel using the Template icon

.

Note: Existing templates are displayed, but creating templates isn't available in SRM.
Collaboration panel
Displays the available Zoom meetings, Microsoft Teams, or Slack channels to start or join.
To start or join a Zoom meeting:

Note: The Zoom integration and recognized IDs must be active in your instance. If Start
Channel is unavailable, contact your administrator.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3737


<!-- page 3738 -->
1. Select Start Zoom.
◦ A meeting pop-up appears.
◦ Add participants.
◦ Select Create Meeting.
◦ The meeting is created, invitations are sent, and you join the meeting.

Note: Any issues found when starting a meeting are shown in a banner message.
2. Select Join Meeting
◦ Sign in to your Zoom account.
◦ You join the Zoom meeting.
1. Select Start Channel.
◦ Sign in to your Microsoft Teams account.
◦ Select Create. You are redirected to the Microsoft Teams application.
◦ Back in the Collaboration column, the Join Channel button is activated.

Note: Any issues found when joining a channel are shown in a banner message.
2. Select Join Channel in the Collaboration panel in SRM.
3. Sign into your Microsoft Teams account.
You are taken to the channel in Microsoft Teams.
Start or join a Slack channel:

Note: The Slack integration and recognized IDs must be active in your instance. If Start
Channel is unavailable, contact your administrator.
1. Select Start Slack.
◦ Add participants in the Create a Slack channel pop-up.
◦ Select Create. You are redirected to the Slack application.
◦ Back in the Collaboration column, the Join Slack button is activated.

Note: Any issues found when starting a channel are shown in a banner message.
2. Select Join Channel in the Slack application window.
3. Sign into you Slack account.
You are taken to the Slack channel.

Service Operations Workspace setup for SRM
Install and configure Service Reliability Management (SRM) within the Service Operations
Workspace Admin Center so that SRM admins, managers and responders can provide service
reliability efficiently.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3738


<!-- page 3739 -->
You can Install Service Reliability Management from Admin Center or ServiceNow Store from the
Service Operations Workspace Admin Center.

Note: The Data visualizations app v24.1.8 is also required. See Data visualizations

in the

ServiceNow Store to install the app.
Once installed, configuring SRM within the Service Operations Workspace Admin Center sets up
the SRM workspace with options and actions.
Using the Service Reliability Management menus in the Service Operations Workspace Admin
Center, you can:
• Assign an administrator to Service Reliability Management.
• Activate teams and services in SRM
• Customize service approval settings in SRM.
• Customize team approval settings in SRM
• Access and publish the request catalog item for users.
• Configure error budget actions for breached SRM SLOs.
Alert automations are conditional triggers that execute response actions automatically, based
on the contents of the alert. This functionality is available to SRM upon request, from the Alert
automations application in the ServiceNow Store.

Configuring Service Reliability Management
Configuring Service Reliability Management (SRM) involves installing it from the ServiceNow
Store or Service Operations Workspace Admin Center. You can also assign administrators and
import services and teams.

Using guided setup for SRM
The guided setup provides a sequence of tasks to help you configure SRM on your instance. To
open the guided setup, navigate to All > Service Operations Workspace Admin Center
> Overview. Next, find the Service Reliability Management tile and select Configure.

SRM configuration documentation
Visit the following pages to set up and configure SRM. The content is primarily for srm_admin or
admin users.
Install Service Reliability Management from Admin Center or ServiceNow Store
Install the Service Reliability Management (SRM) application from the Admin Center or
ServiceNow Store.

Before you begin

Subscriptions required: ITSM Standard and ITOM Operator Professional subscriptions.

Note: The data visualizations store app v24.1.8 is also required. See Data visualizations
in the ServiceNow Store to install the app.
To create and manage alert automations, install the Alert automation application available on
request in the ServiceNow Store.
Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3739


<!-- page 3740 -->
About this task

Roles and demo data are installed with SRM. The demo data includes templates that help
accelerate implementation and SRM use.

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. Locate the Service Reliability Management card and select Install.
3. In the pop-up window, select Start Install.
You're taken to the ServiceNow Store portal.
4. Complete the necessary steps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3740


<!-- page 3741 -->
Note: If any dependencies are red on the app store listing, select the row to open the
dependent app and install it. If the dependent app is already installed but still appears in
red, you can get or reopt it as needed.

The example shows two unresolved dependencies. Before
installing the app, resolve the issues by selecting the two

dependencies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3741


<!-- page 3742 -->
Demo data comprises the sample records that describe application features for the common
use cases. Demo data is loaded when you first install the application on a development or test
instance.
Following installation, the Service Reliability Management card can be used to
configure SRM.
Assign an administrator to Service Reliability Management
Add people from your ServiceNow instance to administer Service Reliability Management (SRM)
and your service operations.

Before you begin

Role required: admin

About this task

The SRM admin can add and create teams. They can also manage data across all SRM teams.

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. In the Service Reliability Management tile, select Configure.
3. Navigate to Assign admins > Service reliability management admins.
4. Enter user names in the field.
5. Select Save.
Activate teams and services in SRM
Activate teams and services to be managed in the Service Reliability Management (SRM)
application.

Before you begin

Role required: srm_admin or admin

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Configurations.
2. Select Service Reliability Management > Activate > Teams and services.
3. Select Activate teams and services to begin importing or adding teams.
4. Use the condition builder to filter the teams shown in the Assignment groups list.

Note:
Filters on the same field use AND logic, and filters on different fields use OR logic. For
example, filtering for multiple Business Criticality levels and State = Open,
evaluates as (Criticality = 1 OR 2 OR 3 OR 4) AND (State = Open).
List view filters are saved automatically and persist when you navigate away and return.
5. In the Assignment groups list, select the teams you want to add and then select Activate.
You reach the Activate services option to add services.
6. From the Select a service class list, select a service.
The following service types are available:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3742


<!-- page 3743 -->
◦ Application Services
◦ Mapped Application Services
◦ Calculated Application Services
◦ Dynamic CI Group
◦ Technical Services
◦ Tag-based Services
7. Use the condition builder to add new services to the list view.
8. Select the services that you want to add and then select Activate.
The Activate Services pop-up opens.
9. From the Support Group drop-down, select the relevant support group and select Confirm.

Result

On the Activate teams and services page, the following options appear:
• Existing teams
• Existing services
You can select the options to view the teams or services.
Customize service approval settings in SRM
Add an approval process to your services for governance.

Before you begin

Role required: srm_admin or admin

About this task

Require approval when Service Reliability Management (SRM) admins, managers, or responders
request to create or add a service in SRM.

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Configurations.
2. Select Service Reliability Management > Governance and autonomy > Service
governance.
3. Choose one or both processes by selecting the relevant check box.
Approval requirement types:
◦ Approval required when creating a new service:
Requires approval when creating a service in SRM, and assigns it to the team responsible for
new services.
◦ Approval required when associating an existing Configuration Management Database
(CMDB) service:
Requires approval to add an existing service to SRM, and assigns it to the team responsible
for existing services.
4. Enter or select the team responsible for approvals.
5. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3743


<!-- page 3744 -->
This action initiates the approval process and assigns approval to the team responsible for
approving the new service.

Note: Approvals take two steps. First, the request is approved, which appears in the

Stage field of the request record. Next, the request remains Pending until the request
item is approved in the Request record.
Customize team approval settings in SRM
Customize how team approvals work when non-admin users create or add a team in Service
Reliability Management (SRM). This feature, also known as team governance, helps you control
access and align with internal policies.

Before you begin

Role required: srm_admin or admin

About this task

By default, team governance is active in SRM. When non-admin users request a team, SRM
creates two records: a parent request and a requested item. The approval team is notified, and
any member can approve the request from My approvals. Once approved, the team is created
or added, the parent request is set to Approved, and the requested item is set to Closed
Complete.
You can customize team governance by turning off approvals or changing the approval team.

Note: Non-admin users are SRM managers and SRM responders. When team governance
is active, admins and SRM admins can still create and add teams without approval.

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Configurations.
2. Under Service Reliability Management, select Governance and autonomy and then select
Team governance.
3. Review or update the approval options.
Option

Description

Approval required when creating a new
team

Clear this option to let non-admin users cre­
ate teams in SRM without approval.

Approval required when associating an ex­
isting team

Clear this option to let non-admin users add
existing teams to SRM without approval.

4. Review or update the approval team for one or both options.
By default, the approval team is set to SRM Team approvers. You can view its members in
sys_user_group.list.

Note: Any member of the approval team can approve requests, but they need the
sn_request_read role to view request details. Without that role, they only see the
approval task.
5. Select Save to update your team governance settings.
Configure error budget actions for breached SRM SLOs
Configure the actions that the team can select when the error budget of a service level objective
(SLO) is breached.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3744


<!-- page 3745 -->
Before you begin

Role required: srm_admin or admin

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Configurations.
2. Select Service Reliability Management > Governance and autonomy > Error
budgets.
3. Select Configure error budget actions to edit the Process Error Budget Policy Threshold
subflow in Workflow Studio.

Note: Working in Workflow Studio requires advanced ServiceNow expertise. For
more detailed information on editing workflows or creating custom workflows, see Flow
Designer .
Approve a change request for SRM
Approve a service change request in Service Reliability Management (SRM) to allow the
requested action to proceed.

Before you begin

Only open change requests are available on the Reliability tasks page.
Role required: SRM approval team or admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. From the primary navigation, select Reliability tasks (

).

3. Select the Changes tab.
4. Select a change request and then select the Details tab.
5. On the State field, select the list and select Approved.
6. Select Save.
The change request state updates from Assess to Approved.
On approval, the new service is created and added to the SRM team. The owner is set to the
person shown in the Assigned to field. And the Managed by group is set to the SRM team
associated with the assignee.
Configure fields for escalation triggers
Configure additional fields for on-call escalation triggers in Service Reliability Management
(SRM).

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3745


<!-- page 3746 -->
About this task

Configure additional fields that teams can use when setting up escalation triggers. By default,
escalation triggers run only when the Assignment group field changes. Completing the following
procedure makes other fields available, giving teams more flexibility and helping them respond
to issues quickly.

Procedure
1. Navigate to All > On-Call Scheduling > Administration > Trigger Rule Table Config.
2. Select em_alert or incident to configure additional trigger fields for alerts or incidents.
3. In Trigger condition fields, add fields from the following table.

Note: Selecting fields not listed in the table might cause performance issues.
Table

Supported fields

◦ Assigned to
◦ Flap count
◦ Flap last state
em_alert

◦ Initial event generation time
◦ Last event generation time
◦ Number of Work Notes
◦ Overall Event Count
◦ Assigned to
◦ Category
◦ Escalation

incident

◦ Impact
◦ Reopen count
◦ State
◦ Urgency

4. Select Update to save your changes.
The selected fields now appear as options for teams configuring escalation triggers.

What to do next

To set up an escalation trigger, see Create an escalation trigger for an SRM team.
Configure Twilio to send notifications in SRM
Connect your Service Reliability Management (SRM) instance and Twilio account to send
notifications to teams.

Before you begin

Before you begin, you must have a String Identifier (SID) and an authentication token for an
active Twilio account.

Note: Performing this action requires ServiceNow expertise.
Role required: srm_admin or admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3746


<!-- page 3747 -->
About this task

You can adjust what gets sent from Twilio by editing the on-call workflow in the system.

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Configurations.
2. Select Service Reliability Management > Integrations > Twilio API Key.
3. Select Twilio Config.
4. In the new window, select here to edit the record.

5. Enter the Account SID value.
6. Optional: Enter a Validity Period value.
7. Select Connect to activate the key or Save to save your changes without activating.
Install the Alert Automation application
Install the Alert Automation application and any supporting applications.

Before you begin

Role required: admin
Subscriptions required: ITSM Professional or ITOM Operator Professional subscriptions.

About this task

Before creating management rules, you must install and configure the Service Reliability
Management (SRM) application, available in the ServiceNow Store.

Procedure
1. To access the ServiceNow Store and download the application onto your SRM instance, select
the link in the email you received.
2. In your ServiceNow AI Platform instance, navigate to All > System Applications > All Available
Applications > All.
3. Locate the Service Operations Workspace Alert Automation application and select
Install.
Alert automation rules are ready to use in SRM.

Using Service Reliability Management
Service Reliability Management (SRM) enables you to register services, monitor service health,
respond to service degradations with on-call shifts and escalation policies and triggers, and
onboard distributed teams with minimal governance from central IT.

Basic Tasks in SRM
Working with SRM services
A service represents a functional outcome like networking, payments, or HR services, that
is owned by a team. To deliver that outcome, a service can contain one or more technical
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3747


<!-- page 3748 -->
components like a user authentication service, or a piece of shared infrastructure like a
database.
Service Reliability Management (SRM) works with integrations to prioritize and route alerts
to the relevant responders. It follows up with escalations until the alert is acknowledged and
someone responds. When you create or add a service in SRM, it must reflect a service in your
SRM infrastructure.

Note: You might want multiple tool integrations to monitor each technology management
service and receive events from those tools. See Working with integrations in SRM for more
information.
In addition, you can create reliability metrics for the service. See Working with reliability metrics.
Tying a team and policies to that service makes it easier to divide responsibilities and track
technical outcomes. It also makes it easier to automate response routines and focus on who you
notify and when.
The state of an exiting service is inherited. The state of a created service in SRM is None.

Services Overview
Information on the Overview tab

The cards on the Overview tab display the following metrics. By default, the list view shows
information related to the Your services card. Select a different card to view different information
in the list view.
• Your services: Count of all the services you or your team manages and monitors for reliability.
• Services with active incidents: Services with open incidents sorted in the following order:
◦ Business criticality - most critical first.
◦ Number of active incidents - highest first.
◦ Percentage of error budget remaining - lowest first.
• Services with critical alerts: Services with open alerts sorted in the following order:
◦ Business criticality - most critical first.
◦ Number of alerts - highest first.
◦ Percentage of error budget remaining - lowest first.
• Services with open changes: All the services your team manages and monitors.
• Services with low error budget: Services with less than 25% error budget remaining.
The error budget metric is represented as the amount of service level objective (SLO) that you
can spend over a specified time. It can be used to manage release velocity.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3748


<!-- page 3749 -->
Note: To refresh the card and list values, select Refresh

.

You can interact with the list in the following ways:
• Group or filter columns to customize the view.
• Edit, sort, or export the list as needed. See Export list information to a file.
For more information about individual service details, see Edit service details form.

Services list view definitions
The columns include the following details:
• Service: Name of the service.
• Class: Service instance or technology management service.
• Business criticality: Importance of the service to the business.
• Open alerts: Number of open alerts assigned to the service.
• Open incidents: Number of open incidents assigned to the service.
• Error budget remaining: Percentage of error budget remaining for the service.

Service reliability
The Service reliability tab is a customizable dashboard showing high-level service performance.
For more information about the dashboard, see Visualizations in the Service reliability
dashboard.
Add a service to SRM
Add services to Service Reliability Management (SRM) to help your teams manage service
health.

Before you begin

If you’re adding a technology management service to SRM, make sure it doesn’t have a support
group. You assign the support group when you add the service to SRM.
Role required: srm_manager, srm_responder, or srm_admin

About this task

Add a service to SRM to assign it to your teams and let them access its incidents and alerts. You
can either create a service or import an existing one. SRM supports both service instances and
technology management services:
• Service instances - Business-facing services, such as an HR portal. Service instances often
have multiple infrastructure components.
• Technology management services - IT-focused services that support a business service or
service instance. For example, an authentication service or database service.
When you add a technology management service to SRM, you also add its offerings. Offerings
are specific components within a parent technology management service. For example, Spam
filtering is an offering within the Email technology management service. In SRM, you can assign a
parent technology management service and its offerings to different teams.

Note: When you import an existing technology management service, its offerings don’t
inherit its support group. Offerings either keep their existing support group or, if they don’t
have one, you must assign it before setting up Service Level Objectives (SLOs).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3749


<!-- page 3750 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. Select the Services icon

and then select Add.

3. In the Add services for your teams modal, you can either create a service or add existing
services.
Option

Steps

a. Select Create a new service.
Create a new service

b. Fill in the fields. For field descriptions, see
Add service form.
c. Select Next.
a. Select Select existing services.
b. Search for and select your service. You can
add more than one.
c. Select Next.

Select existing services

Tip: Select the search box to view up
to 25 services not yet in SRM, ordered
by creation time. After you enter three
characters, it shows up to 25 matching
results. Both lists can include services
with or without a support group. If a ser­
vice has one, the support group can be
an SRM team or a group outside SRM.

4. In the Assign a team step, assign your service to an existing or new support group.
In SRM, support groups are also known as teams.
Option

Steps

Select an existing team

Enter your team's name in the search box.

Create a team

Select Create a team. For more information
about creating teams, see Add an SRM team.

5. Select Add service.
If approvals aren't enabled, your service appears in the service list. If approvals are enabled,
your request is sent for approval. After it's approved, the service appears in the services list.

Note: If you added a technology management service, its offerings appear in the
Offerings tab on the parent technology management service's page. Offerings also
appear in the services list. To view an offering without an assigned support group, remove
all filters from the services list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3750


<!-- page 3751 -->
What to do next

If an offering doesn't have a support group, assign it to a support group before setting up SLOs.
For how to assign support groups, see Edit service details in SRM.
You can also add integrations to your service to start monitoring its health.
Edit service details in SRM
Edit an existing service owned by your team. For each service that you support in SRM provide
general information about the service and the SRM team that supports it.

Before you begin

Role required: srm_admin, srm_manager, or srm_responder

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. From the primary navigation, select the Services icon (

).

3. From your services list, select the service that you want to edit or update.
To view and select a technology management service offering without an assigned support
group, remove all filters from the services list.
4. On the Overview page, select the Details tab.
5. Fill in or edit the fields.
For more information on the field descriptions, see Edit service details form.
6. To save the updated service details after editing, select Save.
Remove a service from SRM
Remove a service from Service Reliability Management (SRM) when you no longer need to track
or monitor its reliability.

Before you begin

SRM administrators can remove any service from SRM. SRM managers can remove only the
services assigned to their teams.

Note: Administrators and SRM administrators have a delete option on service pages. That
option deletes the service from both SRM and the Configuration Management Database
(CMDB). The remove option, described below, only removes the service from SRM.
Role required: srm_manager or srm_admin

About this task

Remove one or more services from SRM when you no longer need to track their reliability.
Removing a service from SRM does the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3751


<!-- page 3752 -->
• Removes the service from SRM views, including the Service page and Service reliability
dashboard.
• Deletes all draft service level objectives (SLOs) associated with the service. Those SLOs aren't
recoverable.
• Retires all active SLOs associated with the service. Those SLOs are no longer active but remain
visible in SRM.
Removing a service from SRM doesn't affect the service reliability tasks, such as alerts, change
tasks, or incidents. The service also remains in the CMDB, and you can add it back to SRM at any
time.

Note: The following procedure shows how to remove services from SRM using the
Services page. You can also remove services using the Teams page by selecting a team
and then the Services managed tab.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the primary navigation, select Services.
3. Point to a service you want to remove, and then select its check box.
You can select one or more services.
4. Select Remove.
5. In the dialog, review the details about the affected SLOs and then select Remove service.
The page displays <service-name> removed from SRM. The service no longer
appears in the SRM application, but it remains in the CMDB. You can add it back to SRM at any
time.

Note: If you receive an error when removing a service, see Troubleshoot SRM.
What to do next

To learn how to monitor and manage services that remain in SRM, see Working with SRM
services. To add a service that you want to monitor or that was removed by mistake, see Add a
service to SRM.
Working with integrations in SRM
Connect your services to monitoring tools using the Integrations Launchpad . Integrations send
information to Service Reliability Management (SRM), helping you track alerts, manage incidents,
and maintain service health.

Access the Integrations Launchpad
As an SRM admin, manager, or responder, you can access the Integrations Launchpad in the
following ways:
• From the primary navigation, select the ITOM Admin Experience icon, and then select either
Add integration or Manage installed integrations.
• From the Services page (
Add an integration.

), select a service, select the Integrations tab, and then select

• From the Services page (
integrations.

), select a service, expand Complete setup, and then select Add

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3752


<!-- page 3753 -->
Integration details specific to SRM
Be aware of the following when using the Integrations Launchpad for SRM:
Connector type support
SRM supports custom, pull, and push connectors. Pull connectors retrieve data
from external sources, and push connectors send data from external sources to
your instance.

Note: For information about setting up connectors, see Integrations
Launchpad in Service Operations Workspace for ITOM.
Configuration item field
When you set up an integration for SRM, the Provide details step has an additional
field called Default configuration item.
Set this field to the service your integration monitors. If an incoming alert doesn't
include service details, SRM uses this field to connect the alert to the relevant
service. This field helps make sure that your teams receive alerts for the services
they support.

Learn more
Visit the following links to set up and manage integrations with the Integrations Launchpad.
The pages are in a different section because the Integrations Launchpad is part of the broader
Service Operations Workspace.
• Activate integration
• Configure an event custom connector
• Configure an event pull connector
• Configure an event push connector
• Deactivate integration
• Delete integration
Working with SRM teams
Manage schedules and define escalation policies for your team. That way, your team sees who
is on call and accountable and can have the confidence that critical alerts or incidents are
acknowledged in a timely manner.
On the Teams landing page, view and manage your teams and team requests.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3753


<!-- page 3754 -->
Teams landing page

Search by team name among teams you belong to, all SRM teams, or all teams in your
organization.
Your selection determines the cards that you’re shown on the Teams landing page.
Choices are:
• Your teams (default)
• All SRM teams: All the SRM teams.

Note: Your ability to take actions in each team depends on permissions for that team.
• All teams: All teams you have access to in your organization.

Note: Your ability to take actions in each team depends on permissions for that team.
The Your team requests section contains team cards for any pending requests, if there are any.
The Your teams section contains cards that provide information about a specific team, such as
the status of the team, name of the team, manager, team email, current shift name and duration,
and primary responder. See Manage your SRM team details for more information.
Add an SRM team
Request to create a team to start monitoring your services. Teams are responsible for the issues
that occur in the associated services.

Before you begin

Role required: srm_manager, srm_responder, or srm_admin

About this task

If you have the srm_admin or admin role, you can set up teams using a different process. See
Activate teams and services in SRM for more information.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3754


<!-- page 3755 -->
2. Select Teams (

), select Add a team.

3. Create a new team or add an existing one.
Option

Steps

a. In the New or existing field, select I am cre­
ating a new team.
Add a new team

b. On the form, fill in the fields.
For more information on the field descrip­
tions, see Create team form.
c. Select Add team.
a. In the New or existing field, select I want to
give a group access to SRM app.

Register an existing team

b. Select an existing team from the Select
team list.
c. Select Add team.

Result

When the request is approved, the team is created. Your team appears in the Teams landing
page under Your teams.

What to do next
• Manage your SRM team details
• Set up escalation policies for your team in SRM
• Create an SRM on-call schedule
• Add team members to SRM
• Manage or add a service to your SRM team
Manage your SRM team details
Add or edit team members, description, contact information of you team.

Before you begin

Role required: srm_manager, srm_responder, or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.

2. From the primary navigation, select Teams (

).

3. Select the team card whose details you want to update.
4. On the form in the Details tab, update the details as required.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3755


<!-- page 3756 -->
Field

Description

Name

Unique name of the team.

Manager

Person who manages the team.

Group email

Email contact for the team that includes all
team members.

Description

Description of the team that helps others to
understand its responsibilities, purpose, or
location.

5. Select Save.
Add team members to SRM
Add new team members to your team as required to plan, manage, resolve issues, and increase
the efficiency of your business operations.

Before you begin

Role required: srm_manager or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.

2. From the primary navigation, select Teams (

).

3. Select the team card to open.
4. Select Teams members tab.
5. Select Add.
6. In the pop-up window select members to add from the list menu.

Note: Member details are imported from user records and not editable.
7. Select Add.
Manage or add a service to your SRM team
Add a service to an incident to increase the amount of data for the incident.

Before you begin

Role required: srm_manager, srm_responder, or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3756


<!-- page 3757 -->
Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.

2. From the primary navigation, select Teams (

).

3. Select a team card to open any team you want to view or add a service to.
4. From the team page, select the Services managed tab.
You can export the list of services. See Export list information to a file for more information.
5. Optional: Add a service to your team by selecting Add.
6. Add a new service or register an existing one.
Option

Steps

a. In the New or existing field, select Create a
new service in Service Reliability Manage­
ment.
Add a new service

b. On the form, fill in the fields.
For more information on the field descrip­
tions, see Add service form.
c. Select Next.

Register an existing service

a. In the New or existing field, select Asso­
ciate existing CMDB services to Service
Reliability Management.
b. Select one or more services.
c. Select Next.

7. In the Assign a team step, fill in the fields.
◦ In the Service owner field, select the user who will own the services.
◦ In the Support Group field, select a team that will monitor services.
The service record has been added.
8. Finish setting up your service or do it later.
Option

Steps

a. Select Continue to setup.
Finish setting up your service

b. Select Add integrations and connect your
service to a data source to monitor events.
c. Select Add SLO & SLI and create a service
level objective and measure your service
health with a service level indicator.

Do it later

Select Do it later.

See Edit service details in SRM and Edit service details formfor information on the service and
completion steps for setup.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3757


<!-- page 3758 -->
Create an SRM on-call schedule
Set up an on-call schedule to make sure that someone is available to respond to incidents and
critical alerts.

Before you begin

Before creating an on-call schedule, a team must exist in Service Reliability Management (SRM).
The Alert table [em_alert] must also be added to the Trigger Rule Table Config list. See Add an
SRM team and Add alert table to enable on-call scheduling for Service Operations Workspace
for ITOM for more information.
Role required: srm_manager, srm_responder, or srm_admin

About this task

Shifts in SRM let you define variable time periods for your shift-based workforce. Create shifts for
particular dates and times when you need coverage, and assign them to team members.

Procedure
1. Navigate to Workspaces > Service Operations Workspace > Teams (

).

2. On the Teams page, select your team.
3. Select the Schedule tab and then select Create shift.
4. In the Create new dialog, select either Create new or Use template.
Your system admin can create predefined templates for you to use to create shifts.
5. Fill in the fields.
For more information on the field descriptions, see Create a shift form in Service Reliability
Management.
6. Select Create shift.
Set on-call team preferences in SRM
Set on-call preferences for team members to increase the efficiency of your business operations.

Before you begin

Role required: srm_manager or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.

2. From the primary navigation, select Teams (

).

3. Select the team card to open.
4. Select the On-call team preferences button.
5. On the form, fill in the fields.
Field

Description

On-call shift managers

Team managers for the on-call shift.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3758


<!-- page 3759 -->
Field

Description

Requests for Paid Time Off (PTO) made by
team members. Choices are:
PTO requests

◦ System default (Not allowed)
◦ With approval
◦ Without approval
◦ Not allowed
First day of your work week.

First day of the week

Note: This option is available for Wash­
ington DC and later releases only.

Allow shift schedule overlap

Option to allow schedules to overlap
Choices are:
◦ System default (Escalate to all shifts)

Escalation rule on shift overlap

◦ Escalate to outgoing shift
◦ Escalate to incoming shift
◦ Escalate to all shifts

6. Select Save.
Set up escalation policies for your team in SRM
Set up an escalation policy for your team to ensure that alerts or incidents are resolved in a
timely manner by the appropriate team member.

Before you begin

Before creating an escalation policy, you must create an on-call shift for your team.

Note: Only the responder who created the team or the manager of the team can set up an
escalation policy for that team.
Role required: srm_manager, srm_responder, or srm_admin

About this task

An escalation policy is a set of guidelines that outlines how and when incidents should be
elevated to higher levels of authority. It delineates clear procedures and responsibilities
for escalation to help responders promptly address problems. It defines the order in which
notifications should be escalated if an alert or incident isn’t acknowledged or resolved within a
defined amount of time. If no one responds, the escalation is based on your defined policies until
someone responds. After a team member responds, the escalation policy stops escalating and
no further notifications are sent.

Note: Escalation workflow is triggered only if there’s an active shift.
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3759


<!-- page 3760 -->
Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.

2. From the primary navigation, select Teams (

).

3. Select the Escalation triggers and policies tab.
4. Under Escalation policies in the left panel, select Create policy.
5. On the Escalation policy form, fill in the fields.
For more information, see Set up escalation policies form in SRM
6. Optional: Select Add escalation step to define the additional steps for escalation and
escalation path.
For more information on the Add escalation step form, see Set up escalation policies form in
SRM.
7. Select Save changes.
8. Optional: Add another escalation policy to the team for another category of alert or incident
by selecting Add a policy.
Create an escalation trigger for an SRM team
To address issues promptly, define the conditions that trigger a team's escalation policy in
Service Reliability Management (SRM).

Before you begin

If your team needs trigger fields other than Assignment group, confirm that an admin has already
configured them. For more information, see Configure fields for escalation triggers.
Role required: srm_manager or srm_admin

About this task

This procedure shows how to create escalation triggers in SRM. If your organization manages oncall scheduling using IT Service Management (ITSM), you can also use ITSM On-Call Scheduling
to define escalation triggers. See Create an escalation trigger rule
for more information. While
that procedure lists ITSM roles, SRM users only need the srm_manager or srm_admin role.
For a broader overview of escalation processes in ITSM, see Designing an escalation process

.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the primary navigation, select Teams (

).

3. Select your team, and then select the Escalation triggers and policies tab.
4. In the Escalation triggers panel, select Create trigger, and fill in the Escalation trigger form.

Field

Description

Escalation trigger name

Name of the trigger. Example: P1
incidents.

Order

Order of execution for the trigger.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3760


<!-- page 3761 -->
Field

Description

When a team has multiple escalation triggers,
the triggers with lower values are evaluated
first.
Active

Option to activate or deactivate the trigger.

Conditions

Choose the table (Alert or Incident) and
set the conditions for the trigger. When
conditions are met, the system triggers an
escalation for the relevant team.
Example: Priority is 1 - Critical.

Advanced options

Define what happens when the trigger
conditions are met and when the trigger runs.
For Trigger action, select Workflow, Subflow
or Script, then choose the specific item.
Example: Select Workflow, and On-Call:
Assign by Acknowledgment to auto-assign
the incident to the person who acknowledges
it.
Select Run trigger rule every time the
selected field changes to run the trigger
when one of the chosen fields updates. If
not selected, the trigger runs only when the
Assignment group changes.

5. Select Save.
The UI displays The Escalation trigger has been added successfully. The
trigger is now active and runs when the defined conditions are met.
Working with SRM reliability tasks
Alerts, incidents, and change requests are reliability tasks. From creation to resolution, SRM
helps you manage your alerts throughout the response life cycle.
The Reliability Tasks pane (

) has several tabs:

• Incidents are created manually or based on Service Level Objectives (SLOs) and Service
Level Indicators (SLIs). For more information on incidents, see Working with incidents in SRM.
For more information on SLO, SLI, and error budget actions, see Create SLOs, SLIs, and error
budget policies.
• Changes can be created within SRM. See Manually create an SRM change task.
The Express List pane ( ) provides a focused view of alerts to help you monitor, evaluate,
and resolve health issues efficiently. You can create alerts from SRM service pages or by
using integrations. For more information on alerts, see Express List in the Service Operations
Workspace for ITOM and Manually create an SRM alert.
Responders and above are notified for updates to reliability tasks based on their notification
preferences.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3761


<!-- page 3762 -->
Working with alerts in SRM
Monitor, evaluate, and resolve health issues in the Express List.
The Event Management Express List feature provides a customizable, sortable view for
accessing and managing alerts. Use the Express List feature to prioritize alerts, understand their
impact, and resolve issues faster.

As a Service Reliability Management (SRM) user, you automatically have the evt_team_operator
role, which lets you access the Express List feature ( ). To learn more about that role, see Roles
used by Express List.
Visit the following to work with alerts in the Express List feature:
• Acknowledge viewed alerts in Express List
• Assign alerts in Express List
• Close an alert in Express List
• Create an incident from an alert in Express List
• Monitor incoming alerts
• Place an alert in the Acknowledged state
• Place an alert in the Maintenance state
In SRM, integrations create alerts or you create alerts manually. Visit the following link to learn
how to create an alert from the Services page:
Manually create an SRM alert
Create an alert for testing purposes or if you think an issue poses a risk.

Before you begin

Role required: srm_admin, srm_manager, or srm_responder

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. In the navigation pane, select Services.
3. Select the service that you want to trigger an alert for.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3762


<!-- page 3763 -->
4. Select the Related alerts tab.
5. Select Trigger alert and fill out the Trigger an alert form.
To trigger an alert, you must first create an event to get processed. Only Service is required.
Trigger an alert
Field

Description

Service

Select a service for the event.

Source

Manual.

Node

Enter the name of the node (for example, FQDN, IP address, or MAC
address) associated with the event.

Type

Enter a type of event.

Resource

Enter a node resource (process or service) associated with the event.

Metric Name

Enter the name of the metric associated with the event.

Source instance

Enter a data source for the event.

Message key

Enter an identifier for multiple events related to the same event.

Severity

Select the expected impact of this event.
Choices are:
◦ Critical: Immediate action is required. The resource is either not
functional or critical problems are imminent.
◦ Major: Major functionality is severely impaired or performance has
degraded.
◦ Minor (default): Partial, non-critical loss of functionality or
performance degradation occurred.
◦ Warning: Attention is required, even though the resource is still
functional.
◦ OK: The resource is still functional.

Time of the event

Select the date and time that the event occurred in the source system.

Description

Enter information describing the event.

Additional
information

Add more information relevant to the event.

Processing notes

Enter relevant processing information.

6. Select Trigger.
Service Reliability Management (SRM) creates an event to generate the alert. Refresh the
screen to see the event processing results.
Express List automatically displays your alert. If enabled, SRM triggers the applicable
automations and on-call escalation workflows.

What to do next

Consider making the following optional adjustments to your alert for testing purposes or team
collaboration:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3763


<!-- page 3764 -->
• Acknowledge the alert or assign it to someone on your team.
• Add comments or work notes in the Compose panel.
• Add an attachment related to the alert using the attachment icon

.

Working with incidents in SRM
Plan ahead of service disruptions and have SRM send notifications and create status when
incidents occur. Distractions are minimized and teams stay focused on remediation.
You can manually create incidents within SRM or create an error budget action to do so. See
Manually create an SRM incident or Create SLOs, SLIs, and error budget policies for more
information.
• Manual creation from an alert.
• Manual creation from the incident view.
• Automatically from Alert automations, if Alert automations are installed.
The Assigned to field on an incident specify who should be notified. When a team is selected
as a responder, team automations are checked to determine which schedule to use for the
notifications.

Note:
The Assigned to field is cleared when the Assigned-team or Service field is updated on an
incident. Escalation policies for the newly assigned teams run. The field remains cleared
until a user on the new team acknowledges an escalation notification.
If the Service is changed and the new Service does not have an assigned team, no
changes occur.
When a service is deleted, its integrations, alerts, incidents, and automations are removed.
Deleting a service isn't a recoverable action so consider deactivating the service instead.
Responders and above are notified for updates to incidents based on their notification
preferences. If you made the update, you won't be notified.
You can resolve incidents by selecting specific incidents or in bulk. See Resolve an SRM
incident, or Close an SRM incident or Cancel an SRM incident.

Note:
Incidents in the Resolved state are automatically closed after 3 days.
For more information on the areas and fields available in an incident, see SRM incidents.
Export list information to a file from the list view.
Respond to an incident in the following ways:
• Tag an incident.
• Update the priority of an SRM incident.
• Set the state of the incident.
• Copy an SRM incident.
• Add a service to an SRM incident.
• SRM incidents.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3764


<!-- page 3765 -->
• Resolve an SRM incident.
• Cancel an SRM incident.
• Close an SRM incident.
• Reopen an SRM incident.
Manually create an SRM incident
Create an incident if you think an issue poses a serious risk and should be taken care of as soon
as possible.

Before you begin

Role required: srm_manager, srm_responder, or srm_admin

About this task
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. From the primary navigation, select Reliability tasks (

).

3. Select the Incidents tab.
4. Select New.
5. Fill in the fields on the Create New Incident form, as appropriate.
Only the Short Description field is required.
Incident Field mapping
Field

Description

Short
Description

Add brief description of the incident.

Description

Add detailed description of the incident.

Number

Identifier assigned to the incident.

Impact

Select is a measure of the effect of the incident. Impact affects Priority.
Choices are:
◦ 1 - High
◦ 2 - Medium
◦ 3 - Low

Assignment
group

Select a team to work on the incident by typing or searching.

Priority

Automatically set based on Impact and Urgency. It identifies how quickly the
incident should be addressed.
See Priority Data lookup rules table below.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3765


<!-- page 3766 -->
Field

Description

Values are:
◦ 3 - Moderate
◦ 4 - Low
◦ 5 - Planning
Category

Select a category for the incident. Choices are:
◦ --None-◦ Inquiry/Help (default)
◦ Software
◦ Hardware
◦ Network
◦ Database

Urgency

Select a measure of how long the resolution can be delayed until an incident
has a significant business impact. Urgency affects Priority.

Service

Select a service associated with the incident.

Severity

Select a severity to associate with the incident by typing or searching.
Choices are:
◦ 1 - High
◦ 2 - Medium
◦ 3 - Low

Configuration Select a asset to associate with the incident by typing or searching.
item
Assigned to

Assign team member to work on the incident by typing or searching.

State

Choose a state for the incident. Choices are:
◦ New (default)
◦ In Progress
◦ On Hold
◦ Resolved
◦ Canceled
See SRM incident states for more information.

Watchlist

Select individuals to watch the incident by typing or searching.

Resolution
code

Select a resolution code when you have one. Choices are:
◦ None (default)
◦ Duplicate
◦ Known error
◦ No resolution provided
◦ Resolved by caller
◦ Resolved by change

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3766


<!-- page 3767 -->
Field

Description

◦ Resolved by problem
◦ Resolved by request
◦ Solution provided
Resolution
notes

Enter any relevant resolution information.

Note: Priority is calculated according to the following sample data lookup rules:
Priority Data lookup rules
Impact

Urgency

Priority

1 - High

1 - High

1 - Critical

1 - High

2 - Medium

2 - High

1 - High

3 - Low

3 - Moderate

2 - Medium

1 - High

2 - High

2 - Medium

2 - Medium

3 - Moderate

2 - Medium

3 - Low

4 - Low

3 - Low

1 - High

3 - Moderate

3 - Low

2 - Medium

4 - Low

3 - Low

3 - Low

5 - Planning

6. Select Save.
The incident is created and the new incident form displayed.
7. Add an attachment related to the incident in the Actions panel using the Attachments icon
.
8. Create an incident template using the Template icon

.

9. Start or join a Zoom meeting, Microsoft Teams, or Slack channel in the Collaboration panel..
10. Select Save.
The incident appears with comments, work notes, and incident activity captured in the Activity
stream. For more information on incident fields, see SRM incidents.
Reassign an SRM incident
Reassign an incident to a responder when the incident tasks should be addressed by a
particular team member.

Before you begin

This action is available when the Assigned to field in the incident is populated.
Role required: srm_manager, srm_responder, or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3767


<!-- page 3768 -->
Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. From the primary navigation, select Reliability tasks (

).

3. Select the Incidents tab.
4. You have two options.
Option

Description

Option

Description

In the incident list view

Double-click the Assigned to field for the inci­
dent and replace the team member from the
list menu.

In the Details tab of incident form

Delete the name in the Assigned to field and
reassign.
Select Save.

The incident is now assigned to the new responder and an email notification sent. The
assignee is displayed in the list view and on the form.
Update the priority of an SRM incident
If the priority of an incident should be changed, you can manually update it to reflect its new
criticality.

Before you begin

Role required: srm_manager, srm_responder, or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. From the primary navigation, select Reliability tasks (

).

3. Select the Incidents tab.
4. In the Incident list view, select a Priority value from the list menu.
◦ 1 - Critical
◦ 2 - High
◦ 3 - Moderate
◦ 4 - Low
◦ 5 - Planning (default)
5. Select OK.
The new priority is reflected in the incident list view and incident header and form field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3768


<!-- page 3769 -->
Add a service to an SRM incident
Add a service to an incident to increase the amount of data for the incident.

Before you begin

Role required: srm_manager, srm_responder, or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. From the primary navigation, select Reliability tasks (

).

3. You have two options.
Option

In the incident list view

Description

Double-click the Service field for the incident
and replace the team member using search.
Select OK.

In the incident form

Select a new Service value from the list
menu.
Select Save.

For value choices see SRM incidents.
The new service is displayed in the incident list view and incident form.
Add resolution code and notes to an SRM incident
Add a resolution code and notes to an incident when you have resolved the incident.

Before you begin

Role required: srm_manager, srm_responder, or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. From the primary navigation, select Reliability tasks (

).

3. Open the incident.
4. In the Incident Details panel, select a Resolution code from the list menu.
5. Enter text in the Resolution notes text box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3769


<!-- page 3770 -->
The resolution notes are displayed in the Activity timeline panel.
6. Select Save.
Copy an SRM incident
Copy an incident, if you have a similar issue.

Before you begin

Role required: srm_manager, srm_responder, or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. From the primary navigation, select Reliability tasks (

).

3. Open the incident you want to copy.
4. Using the list menu under the More option button, select Copy incident.
5. Select a team member from the list menu for the Caller field.
After the incident is copied, the Activity timeline of the new incident is updated with the
original incident as a work note.
Resolve an SRM incident
Resolve an incident, if you need it reviewed, or you think it has already been handled, but aren't
ready to close it.

Before you begin

Role required: srm_manager, srm_responder, or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. From the primary navigation, select Reliability tasks (

).

3. Select the Incidents tab.
4. You have two options.
Option

Steps

In the incident list view

a. Double-click the State field (or use the key­
board shortcut) for the incident and select
from the list menu.
b. Select OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3770


<!-- page 3771 -->
Option

Steps

Tip: If you have the srm_admin role,
you can update multiple incidents at
once. First, select the relevant incidents
and select Edit. Then use the State
drop-down to choose the appropriate
value and select Update.

In the incident form

a. Select a new State field value from the list
menu.
b. Select Save.

For value choices, see SRM incidents.
The new state is displayed in the incident list view, incident form, and form header.

Result

Resolved incidents remain in the Incidents list view. Check your filters if you don't see them.

Note:
When you resolve an incident, the related alerts remain open until you close the incident.
Cancel an SRM incident
Close an incident, if you think it is not an issue, or if it has already been handled.

Before you begin

Role required: srm_manager, srm_responder, or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. From the primary navigation, select Reliability tasks (

).

3. Open the incident you want to cancel.
4. You have two options.
Option

Steps

In the incident list view

a. Double-click the State field (or use the key­
board shortcut) for the incident and select
from the list menu.
b. Select OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3771


<!-- page 3772 -->
Option

Steps

Tip: If you have the srm_admin role,
you can update multiple incidents at
once. First, select the relevant incidents
and select Edit. Then use the State
drop-down to choose the appropriate
value and select Update.

In the incident form

a. Select a new State field value from the list
menu.
b. Select Save.

For value choices, see SRM incidents.
The new state is displayed in the incident list view, incident form, and form header.

Result

Canceled incidents remain in the Incidents list view. Check your filters if you don't see them.

Note:
When you cancel an incident, the related alerts are closed.
Close an SRM incident
Close an incident when it’s not an issue or has already been handled.

Before you begin

Role required: srm_responder, srm_manager, or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. From the primary navigation, select Reliability tasks (

).

3. You have two options.
Option

Steps

In the incident list view

a. Double-click the State field (or use the key­
board shortcut) for the incident and select
from the list menu.
b. Select OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3772


<!-- page 3773 -->
Option

Steps

Tip: If you have the srm_admin role,
you can update multiple incidents at
once. First, select the relevant incidents
and select Edit. Then use the State
drop-down to choose the appropriate
value and select Update.

In the incident form

a. Select a new State field value from the list
menu.
b. Select Save.

For value choices, see SRM incidents.
The new state is displayed in the incident list view, incident form, and form header.

Result

Closed incidents remain in the incidents list view. If they don't appear, try adjusting your filters.

Note:
When you close an incident, any related alerts are closed.
Reopen an SRM incident
Reopen a closed incident if you think the issue is not yet resolved.

Before you begin

Role required: srm_manager, srm_responder, or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. From the primary navigation, select Reliability tasks (

).

3. Find and open the incident you want to reopen.
Check your filters if you don't see them.
4. You have two options.
Option

Steps

In the incident list view

a. Double-click the State field (or use the key­
board shortcut) for the incident and select
from the list menu.
b. Select OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3773


<!-- page 3774 -->
Option

Steps

Tip: If you have the srm_admin role,
you can update multiple incidents at
once. First, select the relevant incidents
and select Edit. Then use the State
drop-down to choose the appropriate
value and select Update.
a. Select a new State field value from the list
menu.

In the incident form

b. Select Save.
For value choices, see SRM incidents.
The new state is displayed in the incident list view, incident form, and form header.
Manually create an SRM change task
Create a change task to implement a controlled process for modifying approved and supported
actions for SRM.

Before you begin
For general information on Change requests, see Using Change Management

.

Role required: srm_manager, srm_responder, or srm_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
You're taken to your SRM Home page.

Note: If you use other Service Operations Workspace (SOW) applications, you may see
the SOW Home page instead of the SRM Home page. The SOW Home page includes
SRM alerts and incidents in its metrics.
2. Select Reliability tasks (

).

3. Select the Changes tab.
4. Select New from the Changes list header.
5. In the Select a change window, search for a change record or select an SOW change creation
page card to select the type of change request.
6. Select Next.
7. In the form Details tab, fill in the fields on the Change request, Impact, Assignment, Planning,
Schedule, Notes, and Closure information forms.
For more information, see Create change request forms.
8. Optional: Select Assign to me.
9. Select Save.
The change request is created and a Related Records tab appears for the request.
10. Optional: You can take the following steps in State workflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3774


<!-- page 3775 -->
(Optional) If the change request requires approval, you’ll see the Request approval button.
Select Request approval and State moves to Assess. See Approve a change request for SRM
for instructions on approving a change request.
If the change request is pre-approved or doesn’t require approval, you can move the State to
Scheduled.
Once approved and scheduled, you can select Implement to put the change request into
action.
Once implemented, you only after reviewing the details on the change request, select Review.
The change request is moved to the Review state.

Note: All open change tasks are set to Canceled.
For more information on State in Change requests, see, SRM change request states

Service Reliability Management reference
Reference topics provide additional information about administering Service Reliability
Management.
SRM roles and responsibilities
Roles grant users access to different parts of the SRM console. Roles determine the actions that
users can or can't perform in Service Reliability Management.
SRM has the following predefined roles:

Note: The SRM experience was optimized for you to having just the SRM roles. Additional
roles could change the UI and have unintended consequences.
Roles List
Role

SRM Administrator [srm_admin]

Tasks

• Update a service managed by any SRM
team
• Assign new incidents
• Create and edit incidents
• Create and edit changes
• Create teams
• Update any SRM team
• Create and edit on-call shifts
• Delete on-call shifts
• Create and edit escalation policies and
triggers
• Delete escalation policies and triggers
• Schedule coverage request
• Submit time off
• Create event

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3775


<!-- page 3776 -->
Roles List (continued)
Role

SRM Manager [srm_manager]

Tasks

• Update a service managed by your SRM
team
• Assign new incidents
• Create and edit incidents
• Create and edit changes
• Create teams
• Update SRM teams that you manage
• Create and edit on-call shifts
• Delete on-call shifts
• Create and edit escalation policy and trigger
• Delete escalation policies and triggers
• Schedule coverage request
• Submit time off
• Create event

SRM Responder [srm_responder]

• Update a service if you are in the support
group tied to the service
• Assign new incidents
• Create and edit incidents
• Create and edit changes
• Create teams
• View on-call shifts
• View escalation policies and triggers
• Edit contact preferences
• Schedule coverage request
• Submit time off
• Create event

Administrator [admin]

• Update a service managed by your SRM
team
• Delete services
• Assign new incidents
• Create and edit incidents
• Create and edit changes
• Delete incidents
• Create teams

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3776


<!-- page 3777 -->
Roles List (continued)
Role

Tasks

• Update SRM teams that you manage
• Delete on-call shifts
• Override contact preferences
• Manually create an alert
• Delete alerts
• Submit time off

Create team form
Request to create a team to start monitoring your services.

Create a team form
For more information, see Add an SRM team.

Field

Description

Team name

Name the team.

Team manager

Manager for the team.

Team email

Email contact for the team.

Team members

Members for your team.

Tags

Words that describe or relate to your team.

Briefly describe the team responsibilities

Description of your team. For example, team
responsibilities or geographic location.

Create a shift form in Service Reliability Management
Set up an on-call schedule for your team to ensure that the right person is always available to
quickly respond to incidents and critical alerts.

Create a shift form
For more information, see Create an SRM on-call schedule.
Create new shift
Field

Description

Shift name

Name for the shift.

All day shift

If selected, the shift is an all-day commitment.

Shift starts

Date and time the shift begins.

Shift ends

Date and time the shift ends.

Repeats

Shift repetition.
Choices are:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3777


<!-- page 3778 -->
Create new shift (continued)
Field

Description

• Never
• Daily
• Weekly
Every
More options

How often to repeat. Display depends on the
time frame chosen.
More options to customize your schedule.

Timezone

User time zone.

Holiday schedule

Schedule to use for the holiday.

Repeats until

Date and time to end repetition.

Create shift using shift template
Field

Description

Shift name

Name for the shift.

Template/Schedule

Existing templates for shifts.
Choices are:
• 24 x 7
• Off hours (workday 8:00 - 5:00)
• Off hours (workday 9:00 - 5:00)
• Workday 8:00 - 5:00
• Workday 9:00 - 5:00

Add service form
Create or add an existing service to your instance so that alerts and incidents on that service are
available to your teams within SRM.

Add a service form
For more information, see Add a service to SRM.
Add services for your teams
Field

Description

Service name

Enter a name for your service. For example,
Cloud storage service. Your teams see this
name in SRM.

Service class

Select either service instance or technology
management service .

Business criticality

Specify how important the service is to the
business:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3778


<!-- page 3779 -->
Add services for your teams (continued)
Field

Description

• 1 - most critical
• 2 - somewhat critical
• 3 - less critical
• 4 - not critical
Operational status

Select the status of your service:
• Operational
• Non-operational
• Repair in Progress
• DR Standby
• Ready
• Retired
• Pipeline
• Catalog

Short description

Describe your service to help your teams
understand its purpose and other relevant
information.

Edit service details form
Edit an existing service owned by your team.

Service Details form
For more information, see Edit service details in SRM.

Field

Description

Name

Name of the service.

Support group

SRM team managing the service.

Business criticality

How important this service is the business.

Owned by

Service owner. May not be part of an SRM
team.

Operational Status

Status for the service's ability to perform
operational functions.

Stakeholders

Product owners or service consumers who
determine the target availability of a service.

Environment

Choices are:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3779


<!-- page 3780 -->
Field

Description

• None
• Development
• Production
• Test
Managed by group

Team manager responsible for the service.
Add by search or edit using the text editor.

Change group

Team responsible for changes. Add by search
or edit using the text editor.

Status

Status of the service.

Life Cycle Stage

Choices are:
• Deploy
• Design
• End of Life
• Ideation
• Operational

Phase

Phase of the service. Choices are:
• None
• Pipeline
• Catalog
• Retired

Location

Used for

Address where the service resides. Add by
search or edit using the text editor.
Purpose for the service.
Choices are:
• Production (default)
• Staging
• QA
• Test
• Development
• Demonstration
• Training
• Disaster recovery

Short description

Additional information about the service.

Support by

SRM team managing the service. Add by
search or edit using the text editor.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3780


<!-- page 3781 -->
Set up escalation policies form in SRM
Escalation policies define the order and conditions in which members or devices receive
notifications.

Escalation policy form
Field

Description

Name

Name of the escalation policy.

Active on shift

Team that receives the notifications on their
shift..

Create from scratch

Option to create your own policy.

Create from template

Option to create a policy by using a template
created by your admin.

Description

Text describing the policy.

Active

Option to activate or deactivate the policy.

Use as default

Option to use this team as the default

Order

Order of execution. This is the hierarchy or
chain of command. When there are multiple
escalation policies with the same conditions
for a team, the escalation policy with the
smaller order number is executed first.

Conditions

Conditions for the policy. The table and
conditions that define the escalation policy
These conditions are checked after the
escalation is started by an escalation trigger. If
the conditions are met, the policy is run.

Escalation steps

Escalation steps to add. See the Escalation
steps form for more information about the
fields.

Escalation notifications

Notification conditions for the policy.

Note: When user preference override
is on, your escalation policy overrides
any policy that the on-call agents set for
their own notification preferences. When
user preference override is off, the oncall agents' notification preferences take
priority over this escalation policy.
Add notification step

Additional notification steps to add. You can
select email, call, or SMS. You can add as
many attempts as you like.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3781


<!-- page 3782 -->
Escalation steps form
Add escalation step
Field

Description

Escalation step name

Name of the escalation step.

Order

Order of execution. This is the hierarchy or
chain of command.

Responder level

Level of authority or expertise needed to
respond to the incident.

Rotate through members

Option to notify all members, one by one, until
one of them acknowledges the incident or
until all of them are notified.

Additional audience

Specific users, teams, groups, or devices that
you want to notify.

Time to next step after last notification

The maximum amount of time that will pass
before the issue is escalated to the next step.
For example, if a responder can't resolve the
issue within 30 minutes of the notification, the
issue is escalated to the manager.

Domain separation and SRM
Domain separation is supported for Service Reliability Management (SRM).

Support level: Basic*
The support level is Basic but has some exceptions or special conditions.
• Business logic: Ensure that data goes into the proper domain for the application’s service
provider (SP) use cases.
• The user interface, cache keys, reporting, rollups, and aggregations all use the domain at
production run time.
• The owner of the instance must be able to set up the application to function across multiple
tenants.
For more information on support levels, see Application support for domain separation

.

Overview of domain separation
• Domain separation is present in all metadata tables in the application. Instance level tables
also have domain separation explicitly. Other internal tables, such as the internal Team
Request table, are domain-separated implicitly by referencing domain-separated records.
• System properties are not domain-separated, which has implications for Team Management
features. The properties are shared by multiple domains and are set at the instance level.
Domain-specific setup for these is not supported.
• Where another application is being leveraged (for example the Event Management
Connectors) domain separation is determined by the domain-separation capabilities of that
application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3782


<!-- page 3783 -->
How domain separation works in the Service Reliability Management
application
The specific conditions indicated by the Basic* support level rating above relate to team
management:
• New teams created through a catalog item backed by an Integration Hub flow are setup by the
Service Operations Workspace administrator. They can initiate it from the Service Portal. An
SRM admin, manager or responder can do it through the SRM workspace. Instructions appear
in the SRM documentation.
• Integration Hub subflows and actions control management of SRM teams.
• Only one catalog item and flow can be set up for each instance. The customer is responsible
for setting up team properties to support domain separation as a customization of the existing
flows.
• The requestor of a team catalog item is associated with the domain and is available as part
of the request item. As a result, if needed, the requester can create the team in a specific
domain or the catalog Item and extend it to capture the domain another way. In either case, the
Service Operations Workspace must make changes to the Integration Hub flows and actions to
support this.
For more information, see Domain separation and On-Call Scheduling

.

Related topics
Domain separation for service providers
Create change request forms
Fill out the fields in the forms to create a change task to implement a controlled process for
modifying approved and supported actions for SRM.

Change request form
Create a new change request. For more information, see Manually create an SRM change task.

Field

Description

Short description

Brief description of the change request.

Description

Description based on Short description.

Number

Identifier for the change request.

Category

Category for the change request.
Choices are:
• Hardware
• Software
• Service
• System Software
• Application Software
• Network
• Telecom

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3783


<!-- page 3784 -->
Field

Description

• Documentation
• Other (default)
Model

Model to use for the change request.
Standard (default)

Risk

Risk the issue poses.
Choice are:
• High
• Moderate (default)
• Low

Type

Type of change request.
Standard (default).
Read-only.

Impact

Impact the issue poses.
Choices are:
• 1 - High
• 2 - Medium
• 3 - Low (default)

State

State of the change request.
Choices are:
• New (default)
• Assess
If approval is required further states are
unavailable.
• Scheduled
• Implement
• Canceled

Work notes list

Team members to receive notifications when
work notes are added.

Note: An administrator must have
already created an email notification for
the work notes list for this to be available.
Work notes

Any additional information related to the
request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3784


<!-- page 3785 -->
Impact, Assignment, Planning, Schedule, Notes, and Closure information
Field

Description

Configuration item

Asset affected by the issue.

Service

Service affected by the issue.

Service offering

Service offering affected by the issue.

Assignment group

Team assigned to the change request

Assigned to

User assigned to the change request.

Justification

Reasoning for the change request.

Implementation plan

Imported text.

Risk and impact analysis

Analysis of risk and impact of the issue.

Backout plan

Imported text.

Test plan

Imported text.

Planned start date

Expected date to begin change.

Planned end date

Expected date to finish change.

Actual start date

Date change implementation began.

Actual end date

Date change implementation ended.

Conflict status

Not run. Read-only.

Conflict last run

Based on Conflict status. Read-only

Watch list

Interested users.

Work notes list

Team members to receive notifications when
work notes are added.

Note: An administrator must have
already created an email notification for
the work notes list for this to be available.
Additional comments

Additional notes for the request.

Work notes

Additional notes on the work done for the
request

Close code

Code for the change request.
Choices are:
• None (default)
• Successful
• Successful with issues
• Unsuccessful

Close notes

Notes on the change request closure.

SRM incident states
Incidents can be in a few different states depending on how they are acted on.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3785


<!-- page 3786 -->
An incident is created in SRM when a third-party monitoring tool has an event. Incidents can be
manually created or assigned. Edit actions from the incident form using the state button in the
form. Use the Save button in the form to keep any changes you've made. Changes to incidents in
the list view are automatically saved.
Incident states
State

Description

New

State on incident creation. The incident is logged but not yet worked on.

In Progress

The incident is assigned being worked on.

On Hold

The responsibility for the incident shifts temporarily to another entity to
provide further information, evidence, or a resolution.

Resolved

A satisfactory fix is provided for the incident to ensure that it does not
occur again.

Closed

The incident is closed when it is confirmed that the incident is
satisfactorily resolved.

Canceled

Incident was triaged but found to be a duplicate incident, an unnecessary
incident, or not an incident at all.
To reopen an incident. Select New.

SRM alert states
Alert can be in a few different states depending on how they are acted on.
An alert is created in SRM when a third-party monitoring tool has an event. Alerts are manually
assigned. An alert is one of four states. You can edit actions from either the Alerts list or the Alert
form. Use the Save button in the form to keep any changes you've made. Changes to Alerts in the
list view are automatically saved.

Note: You can acknowledge and assign an alert in any state.
Alert actions
State

Description

Open

State on alert creation. From this state you can acknowledge and set to:
Flapping
Flapping occurs when the event source continues to
generate events even after its associated alert has been
closed. See Configure alert flapping for more information on
event flapping.
Closed
Closes the alert.

Reopen

From this state you can acknowledge and set to:
Open
Sets the alert to the Open state.
Flapping

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3786


<!-- page 3787 -->
Alert actions (continued)
State

Description

Flapping occurs when the event source continues to
generate events even after its associated alert has been
closed.
Closed
Closes the alert.
Flapping

Flapping occurs when the event source continues to generate events
even after its associated alert has been closed. From this state you can
set to:
Open
Sets the alert to the Open state.
Reopen
Reopens the alert.
Closed
Closes the alert.

Closed

From this state you can set to:
Open
Sets the alert to the Open state.
Reopen
Reopens the alert.
Flapping
Flapping occurs when the event source continues to
generate events even after its associated alert has been
closed.

SRM change request states
Incidents can be in a few different states depending on how they are acted on.
Change requests can be manually created in SRM. Edit actions from the change request form
using the state field in the form or using buttons in the change request record. Use the Save
button in the form to keep any changes you've made. Changes to change requests in the list view
are automatically saved.
Change request states
State

Description

New

State on change request creation. The request is logged but not yet
worked on.

Assess

The change request approval is being worked on.

Scheduled

The change request is scheduled for work.

Implement

The change request is taking action.

Review

The change request is moved to the Review state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3787


<!-- page 3788 -->
Change request states (continued)
State

Description

Note: All open change tasks are set to Canceled.
Closed
Canceled

The change request is closed.
Change request was triaged but found to be a duplicate, or unnecessary.

Note: You cannot reopen a canceled changed request.
CMDB service classes
Service Reliability Management (SRM) typically supports several Configuration Management
Database (CMDB) service classes.
Types of CMDB service classes that SRM supports:
• Service instances (cmdb_ci_service_auto)
• Technology management services (cmdb_ci_service_technical)
• Query-based services (cmdb_ci_query_based_service)
• Mapped application services (cmdb_ci_service_discovered)
• Calculated application services (cmdb_ci_calculated)
• Tag-based application services (cmdb_ci_service_by_tags)
Troubleshoot SRM
Find answers to issues that you may encounter when using Service Reliability Management
(SRM).

Condition
When trying to remove a service from SRM, you see one of the following messages:
• <service-name> couldn't be removed from SRM. Check your
permissions. Only SRM team managers can remove their team's
services.
• <x> services couldn't be removed from SRM. Check your
permissions. Only SRM team managers can remove their team's
services.

Cause
You're not assigned the required role to remove the selected services. As an SRM manager, you
can only remove services that belong to your teams. You can still view and filter services across
teams, but you can't remove services owned by another team.

Remedy
To remove the service from SRM, follow these steps to identify the manager to contact:
1. Navigate to Workspaces > Service Operations Workspace > Services.
2. Select the filter icon (
to your teams.

) and remove the existing filters, letting you view services not assigned

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3788


<!-- page 3789 -->
3. Find and select the service you want to remove.
4. Select the Details tab and then select the information icon (

) in the Support group field.

The manager's name appears below the team name. Contact the manager to request the
removal of the service from SRM.

ITOM Mobile Agent
Stay connected and keep services reliable with ITOM Mobile Agent, which lets you access
Service Reliability Management (SRM) features on iOS and Android devices. Use it to track
alerts, manage incidents, work on change and catalog tasks, and manage on-call shifts on the
go.

Get started

Explore

Configure

Learn about ITOM Mobile Agent, including
its benefits and common workflows.

Install ITOM Mobile Agent
and configure notifications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3789


<!-- page 3790 -->
Use

Reference

Log in and work with alerts, incidents,
tasks, and on-call schedules.

Get details about ITOM
Mobile Agent settings.

Helpful resources
Some ServiceNow resources that can provide you with helpful information are:


<!-- page 3791 -->
User

Description

Admin

Admins install ITOM Mobile Agent so teams can access
service reliability features on the go.

SRM admin

SRM admins customize alert and incident notifications for
ITOM Mobile Agent. They make sure that the relevant people
are aware of critical issues.

SRM manager

SRM managers track team progress, monitor unassigned
issues, and review performance metrics. They also handle oncall schedules, including shift rescheduling, time-off requests,
and scheduling gaps.

SRM responder

SRM responders manage alerts, incidents, and tasks on
the go. They accept, assign, and close alerts; create and
collaborate on incidents; and process critical issues. They can
also view upcoming shifts and request time off.

ITOM Mobile Agent workflow
This sample workflow shows how ITOM Mobile Agent helps you manage services and the teams
assigned to them:
1. Monitoring tools generate critical alerts when they detect issues, and the ITOM Mobile Agent
system sends mobile alert notifications to on-call responders.
2. As an on-call SRM responder, you acknowledge, reassign, or close the alerts. If needed, you
create incidents from the alerts, and then the ITOM Mobile Agent system assigns them to the
appropriate team.
3. You troubleshoot and collaborate on incidents, escalating them to major incidents when
necessary, and then resolve and close the incidents, providing relevant details as needed.
4. As an SRM manager, you adjust shifts, approve time-off requests, and resolve scheduling gaps
for the on-call responders. Use dashboards to view alert trends, incident resolution times, and
team performance.

ITOM Mobile Agent benefits
Working with ITOM Mobile Agent has the following benefits:
Improve service reliability
Minimize downtime by managing alerts and incidents on the go.
Respond to issues faster
Keep on-call engineers connected, letting them accept, assign, and close alerts
from anywhere.
Notify the right people
Customize push notifications to make sure that the relevant people are aware of
critical issues.
Boost collaboration
Help teams work efficiently by managing on-call schedules and filling coverage
gaps on mobile.

What to explore next
To learn more about configuring and using ITOM Mobile Agent, see:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3791


<!-- page 3792 -->
• Configuring ITOM Mobile Agent
• Using ITOM Mobile Agent
• ITOM Mobile Agent reference
Configuring ITOM Mobile Agent
Set up and configure ITOM Mobile Agent.

Configuration overview
Use the pages in this section to set up and configure ITOM Mobile Agent. The information covers
required and optional setup steps, including installing the app, managing alerts, and customizing
alert recipients.
ITOM Mobile Agent auto-integrates with ITSM Mobile Agent, so you can manage alerts,
incidents, and on-call schedules from the same mobile app. Where relevant, this section
links to ITSM Mobile Agent content, providing additional configuration options for your mobile
experience.

Required configuration steps
If you're an admin, start by installing ITOM Mobile Agent. If you're a Service Reliability
Management admin, manager, or responder, you can start by downloading the ServiceNow
Agent app and then logging in.
• Install ITOM Mobile Agent
• Download the ServiceNow Agent app
• Log in to ITOM Mobile Agent

Optional configuration steps
After you log in to ITOM Mobile Agent, you can work with the core features. Visit the following
links to configure and customize ITOM Mobile Agent further to meet your team's needs:
• Configure when to send alert notifications for ITOM Mobile
• Customize ITOM Mobile Agent email recipients
• Customizing other mobile settings for ITOM Mobile Agent
Install ITOM Mobile Agent
Install and give your teams access to ITOM Mobile Agent.

Before you begin

Service Reliability Management (SRM) services, service integrations, teams, and on-call
schedules must be set up. ITOM Mobile Agent connects to your existing SRM setup, helping your
teams manage alerts, incidents, tasks, and on-call schedules.
Role required: admin

About this task

ITOM Mobile Agent runs in the ServiceNow Agent app. When you install ITOM Mobile Agent,
your teams can access it in the ServiceNow Agent app on their devices.
This procedure is for admins managing mobile access for their teams. If you aren't an admin and
want to use ITOM Mobile Agent on your mobile device, see Download the ServiceNow Agent
app.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3792


<!-- page 3793 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Search for and select ITOM Mobile Agent.
If you can't find ITOM Mobile Agent, request it from the ServiceNow Store.
3. Review the listed dependencies and, if needed, install the required plugins and applications.
4. Select Install.
After the application is installed, your teams can access ITOM Mobile Agent by downloading
the ServiceNow Agent app and logging in to the relevant instance.

What to do next

To start using ITOM Mobile Agent, see Download the ServiceNow Agent app and Log in to ITOM
Mobile Agent.
You can also customize ITOM Mobile Agent to meet your team's needs:
• Configure when to send alert notifications for ITOM Mobile
• Customize ITOM Mobile Agent email recipients
• Customizing other mobile settings for ITOM Mobile Agent
Download the ServiceNow Agent app
Download the ServiceNow Agent app to use ITOM Mobile Agent on your device.

Before you begin

ITOM Mobile Agent must be installed. See Install ITOM Mobile Agent for more information.
Role required: srm_manager, srm_responder, or srm_admin

About this task

The ITOM Mobile Agent application runs in the ServiceNow Agent app. To access ITOM Mobile
Agent, download the ServiceNow Agent app on your device.

Procedure
1. Download the ServiceNow Agent app for your device:
◦ For iOS, use the App Store.
◦ For Android, use Google Play.
2. Confirm that the app is on your device.
Look for the ServiceNow Agent app icon (
Agent.

). The app appears on your device with the name

What to do next

To start using ITOM Mobile Agent, see Log in to ITOM Mobile Agent. You must log in to receive
push notifications about alerts and incidents.
Log in to ITOM Mobile Agent
Log in to your ITOM Mobile Agent instance on the ServiceNow Agent app to manage alerts,
incidents, and on-call schedules on the go.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3793


<!-- page 3794 -->
Before you begin

ITOM Mobile Agent must be installed, and the ServiceNow Agent app must be downloaded on
your device. See Install ITOM Mobile Agent and Download the ServiceNow Agent app for more
information.
You must also have your instance address, for example nebula-dev.service-now.com, or
a QR code for the instance. If you don't have one, contact your admin.
Role required: srm_manager, srm_responder, or srm_admin

Procedure
1. Tap the ServiceNow Agent icon (

) on your device.

2. Enter the address of your instance manually or with a QR code.
Option

Description

Replace example.service-now.com
with the address of your instance.
Manual entry

You don't need to include ser­
vice-now.com. For example, enter
nebula-dev for nebula-dev.ser­
vice-now.com.

QR code

Tap the QR code icon and scan the QR code.

3. Optional: In the Nickname field, enter an alternative name for your instance.
Alternative names can help you quickly navigate between different instances on your device.
4. Tap Save and log in, enter your credentials, and then tap Log in.
The app displays Logged into <instance-name> as <username> and the ITOM
Mobile Agent My work tab.

Note: You must be logged in to get push notifications about alerts and incidents. If you
aren't, you only get email notifications.

What to do next

Visit these links to start using ITOM Mobile Agent:
• Work with alerts in ITOM mobile
• Managing incidents and major incidents on mobile
• Working with On-Call Scheduling on mobile
• Working with tasks on mobile
Configure when to send alert notifications for ITOM Mobile
Keep your teams informed by configuring when ITOM Mobile Agent sends a notification about an
alert.

Before you begin

Role required: admin

About this task

By default, ITOM Mobile Agent sends a push notification and email when an alert meets these
conditions:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3794


<!-- page 3795 -->
• Assigned to is empty - The alert isn't assigned to anyone.
• State is not Closed - The alert state isn't closed. It's either empty, flapping, open, or reopen.
• Severity is Critical - The alert severity is critical. It isn't clear, empty, OK, major, minor, or
warning.
You can update those conditions as needed. For example, the ITOM Mobile Agent app can send
notifications for both critical and major alerts. However, if you customize the conditions, the
conditions don't receive future release updates. That behavior is intentional to avoid overwriting
your work.

Note: To get push notifications, you must log in to ITOM Mobile Agent. If you log out, you
only get email notifications.
This procedure is for admins configuring alert push notifications and emails. To manage other
notification features, see Customizing other mobile settings for ITOM Mobile Agent.

Procedure
1. Navigate to All > Mobile App Builder.
2. Search for and select ITOM Mobile Agent.
3. Select Mobile notifications.
4. In the When to send section, update or add to the assigned to, state, and severity conditions.
For example, adding the condition OR [Severity][is][Major] under the condition [Severity][is]
[Critical] sends a push notification and email when the Severity field of an alert is Critical or
Major.

5. Implement your changes by selecting Save.
The page displays Your changes have been saved.

What to do next

To customize who receives emails about alerts, see Customize ITOM Mobile Agent email
recipients. You can also customize other notification features, such as setting custom notification
tones and overriding the Do Not Disturb setting for critical issues. See Customizing other mobile
settings for ITOM Mobile Agent for more information.
Customize ITOM Mobile Agent email recipients
Customize who receives emails about alerts to help reduce notification overload and efficiently
delegate responsibilities.

Before you begin

Role required: srm_admin or admin

About this task

By default, ITOM Mobile Agent sends emails about alerts to everyone in a team's group email.
You can customize the email recipients as follows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3795


<!-- page 3796 -->
• Exclude managers from alert emails, reducing notification overload.
• Include individual team members on alert emails, making sure that the right people stay
informed.

Procedure
1. Navigate to All > Service Reliability Management > Teams.
2. In the list, find the team that you want to customize.
3. Choose one or more options to include or exclude certain recipients from email alerts.
Option

Instruction

Exclude managers from alert emails

In the Exclude manager column, set false to
true.

Include individual team members on alert
emails

In the Include members column, set false to
true.

4. Save your changes by selecting the check mark.
Your updates appear in the Teams list, and ITOM Mobile Agent sends emails accordingly.
Customizing other mobile settings for ITOM Mobile Agent
Learn how to customize your mobile experience further. Configure actionable notifications, set
custom notification tones, and override the Do Not Disturb setting for critical issues to help your
teams stay informed.

Explore other settings
ITOM Mobile Agent auto-integrates with ITSM Mobile Agent, letting you manage alerts, incidents,
and on-call schedules from the same mobile app. Visit the following ITSM Mobile Agent
documentation to learn about customizing mobile notifications.
• Configurable actionable notifications for ITSM Mobile Agent
• Enable Push notification categories for ITSM Mobile Agent
• ITSM Mobile email notification redirection via web
• Set custom alert tones in ITSM Mobile Agent for different incident priority
• Enable Override do not disturb to receive critical alerts
Using ITOM Mobile Agent
Work with alerts, incidents, on-call schedules, and tasks on the go.

ITOM Mobile Agent tasks
Work with alerts in ITOM mobile
Manage alerts on the go. Learn how to assign, reassign, and close alerts in ITOM Mobile Agent.
You can also add work notes to alerts and create incidents from alerts.

Add work notes to an alert
Add work notes to an alert to update your team, share important information, and document your
actions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3796


<!-- page 3797 -->
Role required: srm_manager, srm_responder, or srm_admin
1. On your device, tap the ServiceNow Agent icon (

).

2. Tap the Notifications tab and select the relevant alert.
3. Tap the More options icon (

).

4. Select Add work notes and enter your notes.
5. Save and add your notes to the alert by tapping Submit.
ITOM Mobile Agent displays Success! Comments added. The assigned team member also
receives a push notification that the alert has had comments added.
To view an alert's work notes on mobile, navigate to the alert and select the Activity tab.

Assign an alert
Assign an alert to make sure the correct team member acts on it. You can assign an alert to
yourself.
Role required: srm_manager, srm_responder, or srm_admin
1. On your device, tap the ServiceNow Agent icon (

).

2. Tap the Notifications tab and select the relevant alert.
3. Tap the More options icon (

) and select Assign alert.

4. Tap Assigned to and select a team member to assign the alert to.
5. Implement your changes by tapping Submit.
The assigned team member receives a push notification that the alert has been assigned to
them. The alert also appears in their My work tab.

Close an alert
Close an alert to show that the issue is resolved or that no further action is needed.
Role required: srm_manager, srm_responder, or srm_admin
1. On your device, tap the ServiceNow Agent icon (

).

2. Tap the Notifications tab and select the relevant alert.
3. Tap the More options icon (

) and select Close alert.

ITOM Mobile Agent displays Alert closed successfully. The alert no longer appears in the
assigned team member's My work tab.
To view closed alerts that were assigned to you, tap My work and then tap See all in the My
Alerts section. The Closed tab shows your closed alerts.

Create an incident from an alert
Create an incident when an alert signifies a critical issue that disrupts or could disrupt your
system.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3797


<!-- page 3798 -->
When you create an incident from an alert, ITOM Mobile Agent assigns the incident to the same
team but not the same responder. For example, if the alert is assigned to the Network Ops team
and responder Alex, the incident is assigned to the Network Ops team.
Role required: srm_manager, srm_responder, or srm_admin
1. On your device, tap the ServiceNow Agent icon (

).

2. Tap the Notifications tab and select the relevant alert.
3. Tap the More options icon (

) and select Create incident.

ITOM Mobile Agent displays a notification similar to INC0013579 was created from
Alert0002468. You can view the incident in the My team tab. For more information about
managing incidents in ITOM Mobile Agent, see Managing incidents and major incidents on
mobile.

Note: If you don't see the option to create an incident from an alert, make sure that the
alert is assigned to a team. To assign the alert to a team, see Assign alerts in Express List. In
the Express List, teams are also known as assignment groups.

Reassign an alert
Reassign an alert to make sure the correct team member or an available team member acts on it.
You can reassign an alert to yourself.
Role required: srm_manager, srm_responder, or srm_admin
1. On your device, tap the ServiceNow Agent icon (

).

2. Tap the Notifications tab and select the relevant alert.
3. Tap the More options icon (

) and select Reassign alert.

4. Tap Assigned to and select a team member to reassign the alert to.
5. Implement your changes by tapping Submit.
ITOM Mobile Agent displays Alert reassigned successfully. The assigned team member receives
a push notification and the alert appears in their My work tab.
Managing incidents and major incidents on mobile
Manage and resolve incidents on the go using ITOM Mobile Agent. Learn how to create, process,
and collaborate on incidents on your mobile device. You can also track and collaborate on major
incidents.
ITOM Mobile Agent auto-integrates with ITSM Mobile Agent, letting you manage alerts, incidents,
and on-call schedules from the same mobile app. Refer to the following ITSM Mobile Agent
documentation to learn about managing incidents on your mobile device.

Manage an incident
• Collaboration with incidents
• Collaboration with incident tasks
• Create an incident from app landing page
• Generating task summarization for incident records
• My team dashboard
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3798


<!-- page 3799 -->
• Performance metrics
• Process a breached incident
• Process an incident at risk
• Unassigned incidents

Manage a major incident
• Active major incidents
• Collaboration with major incidents
• Major incident dashboard
• Review and work on a major incident candidate
Working with On-Call Scheduling on mobile
Manage on-call schedules on the go using ITOM Mobile Agent. As a manager, learn how to
manage shifts, time-off requests, and scheduling gaps. As a responder, learn how to request time
off, view who is on call, and see upcoming shifts.
ITOM Mobile Agent auto-integrates with ITSM Mobile Agent, letting you manage alerts, incidents,
and on-call schedules from the same mobile app. Refer to the following ITSM Mobile Agent
documentation to learn about managing on-call schedules on your mobile device.

On-Call Scheduling for managers
• Manage gaps and conflicts with On-Call Scheduling
• Manage time-off requests with On-Call Scheduling
• Manage upcoming shifts with On-Call Scheduling

On-Call Scheduling for responders
• Request time off with On-Call Scheduling
• View on-call group members
• View upcoming shifts with On-Call Scheduling
Working with tasks on mobile
Manage change and catalog tasks on your mobile device using ITOM Mobile Agent. Learn how to
respond to issues quickly by viewing, closing, and adding comments to tasks on the go.
ITOM Mobile Agent auto-integrates with ITSM Mobile Agent, letting you manage alerts, incidents,
and on-call schedules from the same mobile app. Refer to the following ITSM Mobile Agent
documentation to learn about managing tasks on your mobile device.

Manage change tasks
• Change tasks
• Overdue changes

Manage catalog tasks
View catalog tasks

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3799


