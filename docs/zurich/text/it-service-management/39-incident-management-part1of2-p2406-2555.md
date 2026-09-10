# Zurich IT Service Management — Incident Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2406–2555 of 3857 | Part 1 of 2

Sections: Incident Management (p2406); Explore (p2408); Configure (p2410); Manage (p2444); Manage major incidents (p2483); Analytics and reporting (p2514); Use agentic AI (p2547); Reference (p2547)

---

<!-- page 2406 -->
Incident Communications Management overview
• The Incident Communications Management application enables organizations to create
and manage communications related to major business issues or incidents. Incident
communication plan administrators can bring together all involved users during these events
and establish quick and easy communication within this group.
• Typically, Incident Communication Plan Admin or Major Incident Manager creates incident
communication plans for an existing incident. Multiple incident communication plans can be
created against the same incident.
• The incident communication plan and incident communication task tables support domain
separation. Therefore, an Itil/Fulfiller sees only incident communication plans or incident
communication tasks that have been created within the (tenant) domain that they belong to.

How domain separation works in Incident Communications Management
Fulfillers see only incident communication plan and incident communication plan tasks that have
been created within the (tenant) domain that they belong to.

Domain separated tables
• Incident Communication Plan [incident_alert]
• Incident Communication Task [incident_alert_task]

Use cases
An Incident Communication Plan Admin or Major Incident Manager is able to view incidents
only of those domains that they have access to. They can create incident communication plans
against only those incidents.
Related topics
Domain separation for service providers

Incident Communications Management integrations
Incident Communications Management is integrated with other applications such as Notify to
improve the overall communication process.
Notify with Incident Communications Management
Notify allows you to integrate with the Twilio telephony service to send and receive phone calls
and SMS from within your instance. In Incident Communications Management, Notify provides
you with SMS and conference as channels.
For more information on how notify works with Incident Communications Management, refer
Using Notify with Incident Communications Management .

Incident Management
Incident Management restores normal service operation while minimizing impact to business
operations and maintaining quality.

Incident Management overview
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2406


<!-- page 2407 -->
https://player.vimeo.com/video/1107393958?
h=1a16a78807&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Get started

Explore

Configure

Manage incidents

Learn about Incident
Management
concepts and features.

Configure environment,
tools, and user access.

Learn about managing
incidents that involves
diagnosing, investigating
and escalating or
promoting the incident.

Manage major incidents

Report

Reference

Learn about managing
major incidents that
involves creating major
incidents and working with
major incident overview
dashboard and workbench.

Learn to use dashboards
and reports to monitor
and track incident status
and service levels.

Get details about Incident
Management components
such as roles and
dependent applications.

Use agentic AI

Use the ITSM Incident
Management agentic
workflow to manage,
resolve and close
incidents and incident
tasks autonomously.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2407


<!-- page 2408 -->
Troubleshoot and get help
• Ask or answer questions in the Incident Management community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Incident Management
ServiceNow Incident Management supports the incident management process with the ability to
identify and log incidents, classify and prioritize incidents, assign incidents to appropriate users
or groups, escalate, resolve, and report incidents.

Incident Management overview
Any user can record an incident and track it until service is restored and the issue is resolved.
Each incident is generated as a task record that contains pertinent information. Incidents can
be assigned to appropriate service desk members, who resolve the task and document the
investigation. After the incident is resolved, you can manually close the incident. You can also
close incidents automatically based on the last updated date or the resolution date of the
incident. For more information about auto-closing incidents, see Configure incidents to close
automatically.
Any user can log an incident within the system using the following methods.

Incident Management workflow
ServiceNow Incident Management process follows these steps:
1. Incident identification - The first step in the life of an incident is incident identification. You can
report incidents through emails, sms, phone call, support chats, walk-ups, and applications.
The service desk decides if the issue is truly an incident or if it is a request.
2. Incident logging - Once identified as an incident, the service desk logs the incident. The
incident should include information, such as the caller, business service, configuration item,
and contact type. The logging process includes:
◦ Incident categorization - Incident categorization is a vital step in the incident management
process. Categorization involves assigning a category and at least one subcategory to the
incident.
◦ Incident prioritization - Incident prioritization is important for SLA response adherence. The
priority of an incident is determined by its impact on users or business and its urgency.
3. Incident response - Once identified, categorized, prioritized, and logged, the service desk can
handle and resolve the incident. Incident resolution involves the following steps:
◦ Initial diagnosis - Occurs when the user describes the problem and answers troubleshooting
questions.
◦ Incident escalation - Happens when an incident requires advanced support, such as
sending an on-site technician or assistance from certified support staff.
◦ Investigation and diagnosis - Takes place during troubleshooting when the initial incident
hypothesis is confirmed as being correct. Once the incident is diagnosed, service desk can
apply a solution, such as changing software settings, applying a software patch, or ordering
new hardware.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2408


<!-- page 2409 -->
◦ Resolution and recovery - Happens the service desk confirms that the service of the user is
restored within the stipulated SLA time.
◦ Incident closure - At this point, the incident is considered closed and the incident process
ends.

Incident Management benefits
ServiceNow Incident Management supports the incident management process in the following
ways:
• Log incidents in the instance or by sending email.
• Classify incidents by impact and urgency to prioritize work.
• Assign to appropriate groups for quick resolution.
• Escalate as necessary for further investigation.
• Resolve the incident and notify the user who logged it.
• Use reports to monitor, track, and analyze service levels and improvement.
Any user can record an incident and track it through the entire incident life cycle until service is
restored and the issue is resolved.

Life cycle of an Incident
Incident Management is responsible for managing the life cycle of incidents, from creation to
closure.
The Incident Management process has many states, and each is vitally important to the success
of the process and the quality of service delivered. The different states can be represented in a
diagram as follows:
Incident management state model flow

Incident states
State

Description

New

Incident is logged but not yet investigated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2409


<!-- page 2410 -->
Incident states (continued)
State

Description

In Progress

Incident is assigned and is being investigated.

On Hold

The responsibility for the incident shifts temporarily
to another entity to provide further information,
evidence, or a resolution. When you select the
On Hold option, the following On hold reason list
appears.
• Awaiting Caller
• Awaiting Change
• Awaiting Problem
• Awaiting vendor
If the On hold reason is Awaiting Caller, the
Additional comments becomes mandatory.

Note: If the caller updates the incident, the

On hold reason field is cleared and the state of
the incident is changed to In Progress. An email
notification is sent to the user whose name is
mentioned in the Assigned to field as well as to
the users in the Watch list. An incident can be
placed in the On hold state one or more times
prior to being closed.
Resolved

A satisfactory fix is provided for the incident to
ensure that it does not occur again.

Closed

Incident is marked Closed after it is in the Resolved
state for a specific duration and it is confirmed that
the incident is satisfactorily resolved.

Canceled

Incident was triaged but found to be a duplicate
incident, an unnecessary incident, or not an incident
at all.

Configuring Incident Management
You can configure the incident form and other incident features, such as incident categories
and UI behavior. The ITSM guided setup helps you configure incident management on your
ServiceNow instance.

Configuration overview
Configure the Incident form in the base system to follow ITIL best practices. The administrator
can configure the incident form and use the form designer to customize it. You can copy or create
child incident to reduce the effort of configuring the functionality of an open incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2410


<!-- page 2411 -->
Incident form configuration

Form configuration and design
Menu
option

Description

Form
design

Administrators or users with the personalize_form role can use the form design
feature to quickly create new or change existing form views. Form design is an
alternative to configuring forms that combines several configuration options into one
tool.

Form
layout

Administrators or users with the personalize_form role can configure a form to show
or hide fields from a view. You can create new fields on the table associated with the
form.

Related Related lists display records in another table that have a relationship with the current
record. Administrators or users with the personalize_form role can configure related
lists
lists to appear on the form.

Using guided setup to implement Incident Management
IT Service Management guided setup provides a sequence of tasks that help you configure
Incident Management on your ServiceNow instance. To open ITSM guided setup, navigate
to Guided Setup > ITSM Guided Setup. For more information about using the guided setup
interface, see Using guided setup .

Quick start tests for Incident Management
Validate that Incident Management still works after you make any configuration change such as
apply an upgrade or develop an application. Copy and customize these quick start tests to pass
when using your instance-specific data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2411


<!-- page 2412 -->
Incident Management quick start tests require activating the Incident Management - ATF Tests
plugin (com.snc.incident.atf).
Incident Management test suite
Test

Description

Release version

INCIDENT MGMT: Incident
Resolution SLA

Test to verify the Incident
Resolution SLA baseline
functionality.

Madrid

INCIDENT MGMT: Incident
Response SLA

Test to verify the Incident
Response SLA baseline
functionality.

Madrid

INCIDENT MGMT: Copy
Incident

Test to verify whether the
fields from the original
Incident are copied correctly
to the new Incident.

Madrid

INCIDENT MGMT: Copy
Incident from a Closed
Incident

Test to verify that the Copy
Madrid
Incident UI action is visible for
closed Incidents.

INCIDENT MGMT: Create
Standard Change from
Incident

Test to verify the creation of
a Standard Change from an
Incident.

INCIDENT MGMT: Create of
Emergency Change from an
Incident

Test to verify the creation of an Madrid
Emergency Change from an
Incident.

INCIDENT MGMT: Create
Normal Change from an
Incident

Test to verify the creation of
a Normal Change from an
Incident.

Madrid

INCIDENT MGMT: Create
Problem from an Incident

Test to verify the creation of a
Problem from an Incident.

Madrid

INCIDENT MGMT: Create
Knowledge from an Incident

Test to verify the creation of a
Knowledge from an Incident.

Madrid

INCIDENT MGMT: Incident
State flow

Test to verify the state flow of
an incident.

Madrid

INCIDENT MGMT: Reopening
an Incident

Test to verify the reopen
incident functionality.

Madrid

INCIDENT MGMT: Incident
Assignment

Test to verify the incident
assignment functionality.

Madrid

Madrid

INCIDENT MGMT: Create child Test to verify the creation of a Madrid
Incident using UI action and
child Incident from an Incident
verify its fields
through the Create Child
Incident UI action. The test
also verifies that the fields of
the child Incident get copied
correctly from the parent
incident to the child incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2412


<!-- page 2413 -->
Incident Management test suite (continued)
Test

Description

Release version

INCIDENT MGMT: Incident
creation — Self Service

Test to verify the creation of
an Incident using the Create
Incident catalog item.

Madrid

INCIDENT MGMT: Parent and
Child Incident state sync up

Test to verify that the state of
a child Incident synchronizes
with the parent Incident when
the child Incident is created.

Madrid

INCIDENT MGMT: Parent and
child Incident state sync up
after reopening an Incident

Test to verify that the state of
a child Incident synchronizes
with the parent Incident
when the parent Incident is
reopened.

Madrid

INCIDENT MGMT: Verify
creation of knowledge article
from an Incident

Test to verify the creation of
Orlando
a knowledge article from an
Incident using the Create
Knowledge UI action on the
Incident form. The UI action
is visible when you activate
the KCS Integration for
Incident Management plugin
(com.snc.incident.knowledge).

Related topics
Quick start tests

Incident Management properties
Incident Management properties are used to control features such as copying and creating child
incidents. The major incident properties control the promotion of major incident candidates to
major incidents.
These properties are available at Incident > Administration > Incident Properties.
Properties for Incident Management
Property

Description

Incident closure properties
Enable auto closure of incidents based on Resolution date. Setting
this to 'No' will make auto closure to run based on the Updated date.
(com.snc.incident.autoclose.basedon.resolved_at)

Select the check box
to auto-close incidents
based on the resolution
date of the incident
instead of the last
updated date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2413


<!-- page 2414 -->
Properties for Incident Management (continued)
Property

Description

Note: Starting
with the Madrid
release, this
property is
automatically set
to true for new
customers. Existing
customers have to
set the property to
true manually.
Number of days (integer) after which Resolved incidents are
automatically closed. Zero (0) disables this feature
(glide.ui.autoclose.time)
Close open Incident Tasks when Incident is closed or canceled
(com.snc.incident.incident_task.closure)

Set the duration of the
incident auto-close
function.
Select the check box to
close an open incident
task when an incident is
closed or canceled.

Note: Starting
with the Madrid
release, this
property is
automatically set
to true by default
only for the new
customers.
Close open Incident Communication Plans when Incident is closed
or canceled
(com.snc.incident.incident_alert.closure)

Select the check box to
close an open incident
communication plan
when an incident is
closed or canceled.

Note: This
property is visible
when the Incident
Communications
Management
plugin
(com.snc.iam)
is enabled. This
property is set
to false for both
new and existing
customers.
Close open Incident Communication Tasks when an Incident
Communication Plan is closed or canceled

Select the check box to
close an open incident

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2414


<!-- page 2415 -->
Properties for Incident Management (continued)
Property

(com.snc.iam.incident_alert_task.closure)

Description

communication task
when an incident
communication plan is
closed or canceled.

Note: This
property is visible
when the Incident
Communications
Management
plugin
(com.snc.iam)
is enabled. This
property is set
to false for both
new and existing
customers.
Incident reopen properties
List of fields (comma-separated) to copy from the original incident
when an incident is reopened by email
(com.snc.incident.clone_fields_on_reopen)

Enter the name of the
fields that you want
to be copied from the
original incident to the
new incident when you
reopen an incident
through email.

Note: When
an incident is
reopened, a new
incident is created.
Copy incident and create child incident properties
Enable copy incident feature
(com.snc.incident.copy.enable)
Enable create child incident feature
(com.snc.incident.create.child.enable)
Copy attachments from originating incident
(com.snc.incident.copy.attach)

List of attributes (comma-separated) that will be copied from the
originating incident

Select the check box
to enable the Copy
Incident option in the
context menu.
Select the check box
to enable the Create
Incident option in the
context menu.
Select the check box
to be able to copy
attachments from
original incidents when
an incident is copied for
created.
Enter the name of the
attributes that you want

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2415


<!-- page 2416 -->
Properties for Incident Management (continued)
Property

(com.snc.incident.copy.attributes)

Description

to be copied from the
original incident to the
new incident when
you copy or create an
incident.

Note: The
knowledge article
or the resolution
section information
such as resolution
code, notes, and
resolved by, isn’t
copied.
Related lists (comma-separated) that will be copied from the
originating incident
(com.snc.incident.copy.related_lists)

List of attributes (comma-separated) from Affected CIs (task_ci)
related list that will be copied from the originating incident
(com.snc.incident.copy.rl.task_ci.attributes)

List of attributes (comma-separated) from Impacted Services
(task_cmdb_ci_service) related list that will be copied from the
originating incident
(com.snc.incident.copy.rl.task_cmdb_ci_services.attributes)

Enter the name of the
related lists that you
want to be copied from
the original incident to
the new incident when
you copy or create an
incident.
Enter the name of the
attributes from the
Affected CIs related
list that you want to be
copied from the original
incident to the new
incident when you copy
or create an incident.
Enter the name of the
attributes from the
Impacted Services
related list that you
want to be copied from
the original incident to
the new incident when
you copy or create an
incident.

Incident form fields configuration properties
List of fields (comma-separated) that appear in the activity formatter
for Incident
(glide.ui.incident_activity.fields)

Additional comments icon used in Task Activity formatter

Enter the names of
the fields that become
visible in the activity
formatter. If the activities
are personalized, this
property updates
automatically.
Enter the path of the
icon that is used for
additional comments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2416


<!-- page 2417 -->
Properties for Incident Management (continued)
Property

Description

(glide.ui.incident_activity.image.comments)
Work notes icon used in Task Activity formatter
(glide.ui.incident_activity.image.work_notes)
Incident additional comments style
(glide.ui.incident_activity.style.comments)
Incident work notes style
(glide.ui.incident_activity.style.work_notes)

Enter the path of the
icon that is used for work
notes.
Enter the HTML syntax
of comment style for
incident additional
comments.
Enter the HTML syntax
of work notes style for
incident additional
comments.

Communicate problem workaround to incident worknotes
Select the check box to
(com.snc.incident.communicate_prb_workaround_to_inc_worknotes) add the event as Work
notes (Private) field
instead of the Additional
comments (Customer
visible) field for the
incident associated
with the problem record
when a problem is fixed
and the Share fix option
is triggered.
Incident created from interaction properties
Create Incident in saved state from Interaction
(com.snc.incident.create_from_interaction.save)

Select the check box to
create an incident with
a saved state from an
interaction record.
Type: Boolean

Note: Starting
with the Zurich
release, this
property is
automatically set
to true for new
customers. Existing
customers have to
set the property to
true manually.
Copy attachments from Interaction to Incident, when created from
Interaction
(com.snc.incident.create_from_interaction.copy_attachments)

Select the check box to
copy the attachments
from the interaction
record to a new incident
record when it's created

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2417


<!-- page 2418 -->
Properties for Incident Management (continued)
Property

Description

from the interaction
record.
Type: Boolean

Note: Starting
with the Zurich
release, this
property is
automatically set
to true for new
customers. Existing
customers have to
set the property to
true manually.

Major Incident Management
If you have the admin or incident_manager role, you can edit the major incident properties. You
can define whether a new major incident must be created or whether a major incident candidate
must be promoted to a major incident. The properties are available only when you activate the
Incident Management - Major Incident Management plugin (com.snc.incident.mim).
These properties are available at Incident > Administration > Major Incident Properties.
Properties for Major Incident Management
Property

Description

Create major incident from candidate

Create a new major
incident or promote
a major incident
candidate to a major
incident.

(sn_major_inc_mgmt.com.snc.incident .mim.major_incident_creation)

Note: When
a new major
incident is
created from
an incident, the
current incident
is marked as a
child of the new
major incident.
Compose Email on Major Incident Overview

Provide a commaseparated list
(sn_major_inc_mgmt.com.snc.incident.mim.compose_email_on_iatasks) of incident
communication task
types that can have
the Compose Email
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2418


<!-- page 2419 -->
Properties for Major Incident Management (continued)
Property

Description

option on the Major
Incident Workbench.
PIR export ui page url
(sn_major_inc_mgmt.pir_export_pdf_ui_page)
Major Incident Management Group (sys_id) to whom the Major Incident
should be re-assigned on promotion to 'Major Incident'
(sn_major_inc_mgmt.major_incident_management_group)

Default recipient location of emails for Communication Tasks
(sn_comm_management.default_email_recipient_field)

Property to toggle support for Recipient List on Email Client, on
Communication Tasks
(sn_comm_management.email_client_recipient_items_enabled)
List of attributes (comma-separated) that will be copied from the child
Incident when creating a Major Incident
(sn_major_inc_mgmt.com.snc.major_incident.create.copy.attributes)

Associate a custom
UI page to an
exported post
incident report.
Auto-assign a
major incident to
different assignment
groups based on the
actions taken on the
incidents and the
conditions related
to the assignment
group.
Select the default
recipient location
of emails for
communication
tasks. The default
value is BCC.
Use the recipient
list to send emails
as part of the
communication
tasks.
Select the fields that
must be copied from
the incident when
creating a major
incident.

Incident categories and subcategories
Categorization of incidents helps in routing to the right team and saves a lot of time in
troubleshooting and bringing the service to normalcy.
One of the KPIs (Key Performance Indicators) of the Incident Management process is to identify
how many times the Incident is sent to different teams. It also helps in analyzing incidents
based on the classification to do proactive Problem Management which, in turn, helps to reduce
Incidents. Proper incident classification is very important to identify and prioritize on which
Incidents to work on first.
Using categories and subcategories also improves the clarity and granularity of report data. The
following categories and associated subcategories are in the base system. An administrator
can add additional categories and subcategories, and use them in assignment rules and
notifications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2419


<!-- page 2420 -->
Incident categories
Category

Inquiry / Help

Subcategory

• Antivirus
• Email
• Internal Application

Software

• Email
• Operating System

Hardware

• CPU
• Disk
• Keyboard
• Memory
• Monitor
• Mouse

Network

• DHCP
• DNS
• IP Address
• VPN
• Wireless

Database

• DB2
• MS SQL Server
• Oracle

Configure incident category or subcategory
Configure incident category and subcategory for easy classification of incidents which helps
in routing incidents to the right team. You can also generate reports based on category and
subcategory of incidents.

Before you begin

Role required: admin

Procedure
1. Navigate to Incident > All.
2. Open an incident record.
3. Do any of the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2420


<!-- page 2421 -->
◦ Right-click on the Category field name and select Configure Choices.
◦ Right-click on the Subcategory field name and select Configure Choices.
4. Move the required category or subcategory from the Available list to the Selected list.
5. Click Save.
Add a category or a subcategory
Add category or subcategory to assign incidents to the correct team and save time in
troubleshooting and bringing the service to normalcy.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Incident > All.
2. Open an incident record.
3. Do any of the following:
◦ Right-click Category > Configure Choices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2421


<!-- page 2422 -->
◦ Right-click Subcategory > Configure Choices.

4. In the Enter new item field, enter the new category or the subcategory name.
5. Click Add.
The new category or subcategory is added under the Selected list.
Delete a category or a subcategory
Delete a category or subcategory if your organization no longer uses the category or
subcategory.

Before you begin

Role required: admin

Procedure
1. Navigate to Incident > All.
2. Open an incident record.
3. Do any of the following activities:
◦ Right-click on the Category field name and select Configure Dictionary.
◦ Right-click on the Subcategory field name and select Configure Dictionary.
4. Click the Choices related list.
5. Select the category or the subcategory record that you want to delete.
6. Click Actions on selected rows menu and select Delete.

Define priority lookup rules
Define impact and urgency of an incident to calculate the priority. The priority calculation can
then be used to prioritize work and drive service level agreements.

Before you begin

Role required: data_lookup_admin, or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2422


<!-- page 2423 -->
Procedure
1. Navigate to All > System Policy > Rules > Priority Lookup Rules.
2. Click New.
3. On the form, fill in the fields.

Field

Description

Impact

Impact is a measure of the effect of an
incident, problem, or change on business
processes.

Urgency

Urgency is a measure of how long the
resolution can be delayed until an incident,
problem, or change has a significant
business impact.

Priority

Priority is based on impact and urgency, and
it identifies how quickly the service desk
should address the task.

Application

Application scope of the rules. The scope
defines whether the rules are available for all
applications or for scoped applications.

Active

Option to define whether the rule is active or
not.

Order

Sequence in which the rules appear in the
priority lookup list. This field indicates the
sequence of the rule that is executed first.

Note:
Priority is calculated according to the following sample data lookup rules:
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

By default, the Priority field is read-only and must be set by selecting the Impact and Urgency
values. To change how the priority is calculated, you can either alter the priority lookup rules or

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2423


<!-- page 2424 -->
disable the Priority is managed by Data Lookup - set as read-only UI policy and create their
own business logic.
4. Click Submit.

Define assignment rules for incidents
Define assignment rules to identify the right group or the user which is skilled to work on an
incident.

Before you begin

Role required: assignment_rule_admin or admin

Procedure
1. Navigate to All > System Policy > Rules > Assignment.
2. Create assignment rules by following the steps provided in Create an assignment rule

.

3. Click Submit.

Incident templates and record producers
Templates simplify the process of submitting new records by populating fields automatically. A
template ensures consistency in the way information about the incident is captured. A record
producer is a specific type of catalog item that allows end users to create task-based records,
such as incident records, from the service catalog.
You can use incident templates to quickly create incidents for similar issues.
• An administrator or user with the template_editor_global role can create templates that are
available to everyone.
• An administrator can enable the global option for any personal template that a user creates so
that all other users can access the template.
• A user with the itil role can create their own templates for incidents they log frequently.
ESS users typically log incidents using a record producer in the service catalog. A template can
be used to create an incident record producer. The template automatically populates fields in the
incident form.
For example, an incident record producer can be created to request account access to a network
server. The user who submits the incident enters variable values, such as the server name,
level of access needed, and due date. The incident template assigned to the record producer
populates the incident Category, Subcategory, and Assignment Group. These fields and values
applied from the template do not appear in the record producer form.
Create incident template
Create an incident template to ensure consistency in the way information about the incident
request is captured. A template also helps you to create incident easily and accurately.

Before you begin

Role required: admin

About this task

Let us consider an example where you want to create a template to log an incident when you are
denied access to the Bond Trading application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2424


<!-- page 2425 -->
Procedure
1. Navigate to All > System Definition > Templates.
You can also Create a template from the incident form.
2. Complete the steps in Create a template using the Template form
information:

using the following

◦ Name: Bond Trading Access Denied
◦ Table: Incident [incident]
◦ Global: Select the check box. The Global option allows any user to use the template, not just
the template creator.
◦ Short Description: Bond Trading Access Denied
◦ Template: Add the following values to define the fields that are filled in when the template is
used:
▪ [Category]: [Inquiry / Help]
▪ [Configuration Item]: [Bond Trading]
▪ [Description]: [The user was denied access to the Bond Trading application]
▪ [Impact]: [2 - Medium]
▪ [Urgency]: [3 - Low]

3. Click Submit.
Create a module that uses incident template
Create a module to log an incident with pre-filled field values from an existing template.

Before you begin

Role required: admin

About this task

In the Create incident template topic, you have created the Bond Trade Access Denied template.
In this topic, you can use the template with a module in the Self-Service application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2425


<!-- page 2426 -->
Procedure
1. Point to Self-Service and click the edit icon

.

2. In the Modules related list, click New.
3. On the form, fill in the fields.
◦ Title: Bond Trading Access Denied.
◦ Order: In the Module records list, view the order numbers and enter a number that is
appropriate. For example, if the order number of Homepage is 50 and the order number of
Business Applications is 52, and you want to place the new module between Homepage
and Business Applications, enter the order number as 51.
◦ Hint: Log an incident about the Bond Trade application.
Link Type section:
◦ Link Type: URL (from Arguments:)
◦ Arguments: incident.do?sys_id=-1&sysparm_template=Bond Trading
Access Denied

Note: This path deploys the template in the new incident record.

4. Click Submit.
The new module appears in the Self-Service application.

What to do next

Click the module to open a new incident record with the applied Bond Trading Access Denied
template.
Create a record producer to log incidents
Create record producers to log incidents directly from Service Catalog.

Before you begin

Role required: catalog_admin or admin

About this task

Incident record producers provide users with an interface from which user can log an incident.
For example, the default Can We Help You? category features record producers such as Create
Incident to enable users to log incidents from the catalog.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2426


<!-- page 2427 -->
The following example demonstrates how to create a record producer to request a wireless
router reset.

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Record Producers.
2. Click New and complete the steps in Create a record producer
information:

Field

Entry

Name

Request to Reset Router

Table name

Incident [incident]

using the following

What it will contain
Short description

Reset wireless router request

Description

Please reset the building's router

Accessibility
Catalogs

Service Catalog

Category

Can We Help You?

3. Right-click on the form header and from the context menu select Save.
Several related lists appear at the end of the form, including Variables and Variable Sets.
4. In the Variables related list, click New.
5. On the form, fill in the fields.

Field

Entry

Type

Reference

Question
Question

Which router needs to be reset?

Name

Router

Type Specifications
Reference

IP Router [cmdb_ci_ip_router]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2427


<!-- page 2428 -->
6. Click Submit.
7. Optional: To view the new record producer, click Try It in the form header.
(Optional) In Service Catalog, the new catalog item appears and any user can select it.
Create a record producer using a template
If a predefined incident template exists, it can be used with the record producer to fill in standard
information for the incident.

Before you begin

Role required: catalog_admin or admin

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Record Producers.
2. Click New and complete the steps in Create a record producer

.

3. Click Generated Record Data and select the incident template to populate fields when the
record producer is submitted.
4. Right-click on the form header and click Save.

View incident notifications
View incident notifications that are sent during specific events in an incident life cycle. These
notifications are sent to various recipients including the ESS and the ITIL users.

Before you begin

Role required: admin

About this task

Incident notifications use the email notification layout and template that are shipped with
the Employee Experience Foundation plugin (com.snc.sn_ex_emp_fd). The plugin delivers
notifications that are consistent and built with the industry best practices for layouts.
Note: If you are an upgrade customer, to use the latest email layout, install the Employee
®
Experience Foundation app (com.snc.sn_ex_emp_fd) from the ServiceNow Store. Activate
the default incident notifications that use the latest template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2428


<!-- page 2429 -->
Procedure
1. Navigate to All > System Notification > Email > notifications.
2. Filter the list of notifications by [Table] [is] [incident].
3. View the list of default notifications for incidents.
4. Click the notification name to view the details.

What to do next

You can redirect the users to the incident or major incident record in Service Operations
Workspace instead of opening in the UI16 interface of Incident Management or Major Incident
Management. For more information, see Email notification redirection for incident and major
incident.
To receive these notifications, the end user must enable notifications. For more information, see
Subscription-based notifications .
Related topics
Create an email notification
Email notification redirection for incident and major incident
You can redirect the users to the incident or major incident record in Service Operations
Workspace (SOW) instead of opening in the UI16 interface of Incident Management or Major
Incident Management.

Email notification redirection for Incident Management
In incident email notifications, you can now decide where the links to an incident record are
redirected. Instead of an incident record automatically opening in the UI16 interface in Incident
Management, the record can be opened in SOW.
The ITSM Notifications Redirection (com.snc.itsm.notifications_redirection) plugin is installed
and activated automatically to support this behavior. The incident record link in an email
notification opens in SOW only if you have the sn_sow.sow_user role and any of the following
conditions are met:
• The Redirect SOW Email notification (sow_email_notification_redirect) property
is set to true. Setting this property to true enables the email redirection behavior for all tables
including incident.
• You can create Redirect SOW Email notification for Incident Management
(sow_email_notification_redirect.incident) property and set the
value as true to enable the email redirection behavior specifically for the incident
table. This property, if created and set, overrides the Redirect SOW Email notification
(sow_email_notification_redirect) base system property.

Email notification redirection for Major Incident Management
In major incident email notifications, you can now decide where the links to a major incident
record are redirected. Instead of a major incident record automatically opening in the UI16
interface in Major Incident Management, the record can be opened in SOW.
The ITSM Notifications Redirection (com.snc.itsm.notifications_redirection) plugin is installed
and activated automatically to support this behavior. The major incident record link in an email
notification opens in SOW only if the following conditions are met:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2429


<!-- page 2430 -->
• The Redirect SOW Email notification (sow_email_notification_redirect) property
is set to true. Setting this property to true enables the email redirection behavior for all tables
including major incident.
• The Redirect SOW Email notification for Major Incident Management
(sn_major_inc_mgmt.sow_email_notification_redirect.mim) property is set
to true.
• You have the sn_sow.sow_user role.

Configure default user for auto-closing incidents
Change the default user who last updated an incident to the user you mention for auto-closing
incidents.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Scheduler > Scheduled Jobs > Scheduled Jobs.
2. Open the Autoclose Incidents schedule job.
3. In the Job context, add the following:
fcRunAs=<user_name>
fcScriptName=incident autoclose
For example, if you add fcRunAs=admin, the code places System Administrator in the
Updated by field.

Applying CSDM guidelines to Incident Management
Incident Management supports the incident management process with the ability to identify and
log incidents, classify and prioritize incidents, assign incidents to appropriate users or groups,
escalate, resolve, and report incidents. The goal of this product view is to help you to understand
how Incident Management key entities work with the core CSDM framework.
Features of Incident Management that get the most benefit from the CSDM include:
• Agent Workspace gives agents the information they need to quickly prioritize and resolve
incidents.
• The major incident workbench includes a single-pane view you can use to identify, track, and
resolve high-impact incidents.
• The native mobile app allows agents to quickly view and respond to tasks on-the-go, and can
approve the requests with a single swipe.
• Incident deflection encourage self-help by suggesting related knowledge base articles.
• Improves collaboration on incident tasks by using drag-and-drop functionality on visual task
boards.
• Performance analytics provide detailed insights into performance trends.
Incident Management includes a form you can use to report incidents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2430


<!-- page 2431 -->
Incident form

The incident form references the following attributes and related lists.
1. Service — References the [cmdb_ci_service] table.
2. Service Offering (attribute) — References the [service_offering] table. Displays the service
offerings affected by the incident in the Service Offerings related list.
3. Configuration Items — References the [cmdb_ci] table
4. Affected/Causal CIs — Related list [task_ci] table. (The Incident form allows Application
Services to be chosen as CIs)
5. Impacted Services — Related list [task_cmdb_ci_service] table
6. Service Offering — Related list [task_service_offering] table

For more information
For more details about Incident Management, see Incident Management.
Incident Management and CSDM tables
Incident Management manages and uses CSDM tables. Several ServiceNow products benefit
from and add value to Incident Management.

CSDM tables used by Incident Management
The Incident form references the following CSDM tables:
1. Service instance (formerly application service) [cmdb_ci_service_discovered] table or any
infrastructure CI.
2. Configuration Item tables [cmdb_ci*]
3. Business Service [cmdb_ci_service_business] table and Technology Management Service
(formerly Technical service) [cmdb_ci_service_technical] table: Use the service classification
attribute to identify business services, technical services, and application services as types of
services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2431


<!-- page 2432 -->
4. Service Offering [service_offering] table: Uses the service classification attribute to identify
business services, technology management services, and service instances as types of
service offerings.
See the Incident Management documentation for information about service commitments on a
service offering (for example, resolution time for incident).
Tables used by Incident Management

Products that add value to Incident Management
When you use Incident Management with other ServiceNow products, you increase the value
you get from Incident Management. These other ServiceNow products include:
Discovery
Discovery provides details about the hardware and software CIs you are using.
Service Portfolio Management (Service Portfolio Management)
Provides life-cycle information for a service.
Asset Management
Provides the related product model. Software Asset Management (SAM
Foundation ) and Hardware Asset Management (HAM) provide lifecycle data for
Incident Management.
Security Management
Provide initial information that helps in containing, eradicating, and recovery of
security related incidents.
Risk Management
Provides IT risk and financial risk information.

Products that benefit from Incident Management
IT Service Management (ITSM)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2432


<!-- page 2433 -->
Services have the context of the business and applications, along with the
information and technologies layered beneath them.
Information Technology Operations Management (ITOM)
Understands the business context for the application services along with the
hardware and software being managed.
Governance, Risk, and Compliance (GRC)
Auditors can leverage the business applications and related Information Objects.
This helps auditors understand the design-time data sensitivity for scoping audits,
measuring risks, and managing audit activities.
Asset Management
Manages the software and hardware life cycles for business applications and
business services.
Customer Service Management (CSM)
Incident Management use case
Incident Management restores normal service operation, while also minimizing impact to your
business and maintaining the quality of your data.

Incident Management Use Case
Use Incident Management to create an incident that captures information about the assetrelated CIs. An incident keeps a record of the updated, repaired, swapped, or retired CIs.
By keeping track of the assets, you can tell where the assets are located, how they are used,
and when changes were made to them. This information helps you systematically monitor and
manage the assets in your company.
A CI generates an incident. Use a dependency view to identify other CIs that are affected by the
incident. Associate the affected CIs with an incident record to find out how the incident affects
other dependent CIs.
Following the CSDM framework provides value to Incident Management in the following ways:
• Incident Management understands the impact of the Incident on services and service
offerings.
• Incident Management dynamically routes incidents.
• Incident Management identifies all affected services.

Results of the use case
The CSDM framework provides context for incidents—both the CIs involved in the incident and
the services that it affects.
Use the Incident form to see the impact of an incident and restore affected services. Complete
the following steps:
1. Populate the Impacted Services related list with the services and service offerings that are
related to the populated CI.
2. (Optional) Use the Service and Service Offering attributes to help narrow the list of available
CIs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2433


<!-- page 2434 -->
Note: Narrowing the list of available CIs is not a feature of the base system. To narrow
the list, you need to configure the Incident form.
3. Populate the Configuration Item attribute [configuration_item] with the CI or the affected
service. You can then use the CI to identify details for incident routing. For example, you can
use the CI data like Support Group and provide information about the service impact by using
dependency relationships.
4. (Optional) Add the Affected CI related list [task_ci] to identify the CIs that might have caused
the incident.
5. (Optional) Add the Impacted Services related list [task_cmdb_ci_service] to see the services
and CIs that are impacted by the incident.
Incident form for use case

Set up the Incident Management form
Configure the Incident form to see the impact of an incident and then restore affected services.
The CSDM framework enables you to view rich context for incidents: the CIs involved in the
incident and the service offerings, business applications, and business services that the
incident affects.

Before you begin

Role required: admin

About this task

Incident Management leverages the CSDM data structure to display information that assists in
solving the incident.
Go to the 1:00:00 mark on this video
to learn about setting up the Incident form to include the
related lists that leverage the CSDM framework.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2434


<!-- page 2435 -->
Procedure
1. Navigate to All > Incident > Administration > Incident Properties.
2. In the Incident Related List Properties section, enable the following properties and then select
Save.
◦ Populate Impacted Services based on Affected CIs. This property enables display and
update of the Impacted Services/CIs related list when you perform the Refresh Impacted
Services action.
◦ Populate the Business Application related list for incidents
◦ Populate the Service Offering related list for incidents
The properties are fully described in Incident Management properties.
3. Ensure that the Principle Class option is selected for the CI or CI class as described in Create
a CI class
and Update class list in the Principal Class filter .
4. Navigate to All > Incident > Open and fill in the following fields:
Incident form
Service

The business service or technical service
associated with the incident. The value that
you specify narrows the list of available CIs
that appear for selection in the Configuration
Item field.

Note: Narrowing the list of available
CIs isn't a feature of the base system. To
narrow the list, you must specify values
for Service and Service Offering.
Service Offering

The business service offering (product) or
technology management offering associated
with the incident. The value that you specify
narrows the list of available CIs that appear
for selection in the Configuration Item field.

Note: Narrowing the list of available
CIs isn't a feature of the base system. To
narrow the list, you must specify values
for Service and Service Offering.
Configuration Item

The CI or the affected service. (Hardware,
application, and cloud [physical CIs] or
application service [logical CIs])
You can then use the CI to identify details for
incident routing. For example, you can use
the CI data like Support Group and provide
information about the service impact by using
dependency relationships.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2435


<!-- page 2436 -->
5. Review the information.
◦ The CIs that may have caused the incident appear in the Affected CIs related list [task_ci].
◦ The services and service offerings that are related to the populated CI appear in the
Impacted Services/CIs related list [task_cmdb_ci_service].
◦ The services and CIs impacted by the incident appear in the Impacted Services/CIs related
list [task_cmdb_ci_service].
Incident Management considerations
Consider these points while implementing the CSDM framework.

Incident Management considerations
Business applications are not referenced in Incident Management
Business applications are portfolio objects used for designing and planning your
enterprise architecture. Business applications don't contain attribute-level details
such as version, environment, and localization (for any deployments using one or
more applications).
Application service
An application service is an operational CI and a unique instance of an application.
An application service is the logical representation of the underlying hardware and
software CIs that work together to implement a business application or system. The
application service represents an instance of the business application or system.
Using application service on an Incident form
You can use the application service CI on the Incident form in scenarios like the
following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2436


<!-- page 2437 -->
• The incident is for an application-related issue. On the Incident form, you can
enter Application Service in the Configuration Item field to represent the
application. For example, you can report the application service called MyApp 3.0
Production as unavailable.
• The incident is for an infrastructure CI that is affecting one or more services.
On the Incident form, the Impacted Services/CIs related list identifies the
application service affecting services. For example, the Server Acme42 CI might
be identified as affecting the MyApp 3.0 Production and other related services.

Incident ticketing integrations
An incident ticketing integration exchanges ticket data between your ServiceNow instance and a
third-party system.
The advantages of an incident ticketing integration include the following items.
• Establishing a ticket number that provides a unique key between systems.
• Synchronizing the systems so that notifications can be triggered.
• Transforming data for more uniform processing.
• Tracking ticket activity for accurate reporting.
The level of data and the direction of the data that is exchanged categorizes the integration as
uni-directional or bi-directional. In a uni-directional integration, a third-party system creates an
incident ticket, passes data to your instance, and receives a ticket ID back as confirmation. In a
bi-directional integration, incident data is exchanged, synchronized, and updated while data is
sent between the systems.
For both integration types, a good practice is to implement a record-based log of the individual
transactions for a given time period. If an outage occurs, a record-based log can tell you what
data was exchanged, how it was transformed, when processing occurred, and if there were any
errors. Record-based logs also allow you to run all the validation and transformation logic away
from the main form, helping performance.
Before implementing your project, develop an integration plan in which all the implementation
aspects and requirements are defined. Developing the integration plan helps you to review the
current data, plan for future requirements, and identify and sequence project tasks.
Uni-directional incident ticketing integrations
Consider the requirements for an external, third-party system to create tickets. Define the data
that must be sent to create a ticket, and what validation is required.
In this way, a standard web service interface can be created and published. This integration
responds with a ticket number on success, or with a structured error message for validation
failures and processing issues. An advantage of this implementation is that you can publish once
and reuse for multiple applications, provided the additional integrations follow the integration
specifications. A good practice is to create a dedicated account for each interface. Accounts
provide accountability and report user statistics, and use a simple connectivity Point of Contact
(POC).

Integration plan contents
• Firewall requirements
• Protocols to be used
• Required middleware (for example, MS Biztalk)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2437


<!-- page 2438 -->
• Error messages
• Validation rules

Example using basic authentication
This implementation responds to the third-party system with the ticket ID. The Import Set tables
function as a staging area for your data.
Uni-directional ticketing integration using basic authentication

Example using import sets
An implementation variation for the inbound path would be to use the Import Set Tables as
interface tables. In this example, the Incident_Interface Table stores a history of data as it was
received and before the data was transformed. The destination Incident Table could store a
history of how the incident has changed over time and who changed it. The transform scripts
would process the import set and the business rules would run on the target table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2438


<!-- page 2439 -->
Uni-directional ticketing integration using import sets

Bi-directional incident ticketing integrations
A bi-directional integration exchanges data between your ServiceNow instance and a third-party
system so that incident information is synchronized between the systems.
This integration is more complex than a uni-directional integration because it has the following
requirements.
• Comprehensive definitions of field mappings.
• Standardization of where transformations take place: inbound, outbound, or both.
• Consideration of the ownership of reference data.
• How updates are performed on an ongoing basis.
Implement error handling. Include all these implementations in the integration plan.
While bi-directional implementations are developed on their own merits, you can develop a
framework in the ServiceNow AI Platform that can be reused, for example, data driven validation
rules.

Integration plan contents
• Plan contents for all the aspects needed for a bi-directional integration.
• State models for each organization.
• Business rule definitions for keeping the tickets synchronized.
• Requirements to store history of individual transactions. If this form of audit is a requirement,
consider creating an interface table which is populated prior to creating and updating the
destination table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2439


<!-- page 2440 -->
• Transformation rules for all data elements.
• Time lines for when reference data is transported to the information system. Include
requirements to perform transformations before sending the data to and from each system.
• Statement of reference data ownership at all stages.
• Update schema definitions.

Example using import sets and web services
In this implementation, data authentication is done before insertion into the import set. Transform
maps and scripts execute before the data reaches the Incident table. The Incident table is used
to store the history of the incident records. For the outbound data path, the target table could
trigger business rules before the data is queued in the outbound web service.
Bi-directional ticketing integration using import sets and web services

Example using import sets and the ECC queue
An implementation variation for the inbound path would be to use an import set table (in our
example, the Incident Interface table) to store historical data. Data validation is also done now,
and you can clear exceptions with processing or manual intervention. The Incident table uses a
Third-Party Information table as a reference, and messages are generated based on business
rules.
Implementing this type of integration involves a web-service component for third-party
applications for inbound data. The ECC queue is recommended for outbound data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2440


<!-- page 2441 -->
Bi-directional ticketing integration using import sets and the ECC queue

Configuring Microsoft Outlook to create incidents and VTB tasks
To create incidents and VTB tasks, or to chat with a virtual agent from within your Outlook email,
activate and deploy the ServiceNow Add-in for Microsoft Outlook.
The ServiceNow Add-in for Microsoft Outlook lets you engage with IT directly from an email or, for
IT users, quickly create an incident from an email and immediately assign it to the correct team. It
also lets you create a VTB task.
Activate the ServiceNow Add-in for Microsoft Office
You can activate the ServiceNow Add-in for Microsoft Office plugin (com.sn_outlook_addin) if you
have the admin role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the ServiceNow Add-in for Microsoft 365
application listing in the ServiceNow
Store for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following items are installed with ServiceNow Add-in for Microsoft 365:
• Plugins
• Store applications
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2441


<!-- page 2442 -->
• Roles
• Scheduled jobs
• Tables
For more information, see Install the ServiceNow Add-in for Microsoft 365
installed with ServiceNow Add-in for Microsoft 365 .

and Components

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the ServiceNow Add-in for Microsoft 365 application (sn_outlook_addin) using the filter
criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Related topics
List of Zurich plugins
Deploy the ServiceNow Add-in for Microsoft Outlook
Deploy the ServiceNow add-in for Microsoft Outlook to chat with a virtual agent, create incidents
and VTB tasks from within the Microsoft Outlook.

Before you begin

In addition to having one of the following roles on the ServiceNow instance, you must be an
Office365 administrator to deploy the ServiceNow add-in.
Role required: admin, sn_outlook_addin.outlook_addin_setup

About this task

Deploy the ServiceNow add-in to Microsoft Outlook using the instructions in this Microsoft
article: Publish Office Add-ins using Centralized Deployment via the Office 365 admin center

.

Note: You must be an Office365 administrator to deploy the ServiceNow add-in.
The ServiceNow add-in is only supported for use with Outlook for Mac and Outlook for Windows
(Requirement set 1.4).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2442


<!-- page 2443 -->
You can add or remove fields directly on the Incident form for users with the itil role by
customizing the Outlook view form layout. For users that do not have the itil role, you can
configure a Service Catalog record producer to use for creating new incidents.

Procedure
1. Navigate to All > ServiceNow Add-Ins for Office > Office Add-In Manifests.
2. Click New on the Office Manifests page.
3. On the form, fill in the fields.
Deploy MS Outlook add-in form
Field

Description

Add-in Name

A user-friendly name for the add-in. For
example, if the add-in needs to be deployed
only for administrators, you can choose to
name it accordingly.

Description

A short description of the add-in. For
example, if the add-in is for a help desk, you
can write a short description accordingly.

Plugin ID

A unique identification string for the addin you are deploying. You can change the
plugin ID value to a new UUID to allow usage
of multiple instances of the add-in.

Version

Version of the plugin execution.

Icon URL

HTTPS URL or relative URL for ServiceNow
icon to be displayed in Microsoft Outlook.

Active

Indicates that the add-in is active.

4. Click Submit.

Note: The Office Controls related list shows the menu and menu items associated with
the add-in.
5. Click Download Manifest to download the add-in manifest file and follow the instructions in
the Microsoft article for deployment. Microsoft article: Publish Office Add-ins using Centralized
Deployment via the Office 365 admin center page.
6. Optional: You can also customize the add-in by clicking Clone Manifest from the context
menu.
This option clones the current manifest into a new record that allows customizing the labels,
icons, menus, and menu items.
7. To customize the Incident form for users with the itil role, configure the Incident form layout
directly.
a. Click the context menu icon (

) on the form and select View > Outlook.

b. Click the context menu again and select Configure > Form Layout.
c. Add or remove fields, as needed.
8. To customize the Incident form for users that do not have the itil role, use a Service Catalog
record producer to configure the Incident form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2443


<!-- page 2444 -->
a. Navigate to Service Catalog > Record Producers.
b. Right-click the record producer to use for creating new incidents and select Copy sys_id.
c. Paste the copied sys_id into the Value field of the Provide sys_id of
the record producer for create incident action from Outlook Add-In
(sn_outlook_addin.create_incident_cat_item) system property.

Managing incidents
Working on incidents involves diagnosing and investigating the incident, recording results, and
sometimes escalating or promoting the incident.
Initial diagnosis of incidents is largely a human process. The service desk agent looks at the
details of the incident and communicates with the user to diagnose the issue.
To aid in the diagnosis, the service desk agent can query the configuration management
database, or CMDB. The CMDB contains information about hardware and software within a
network and the relationships between them. The CMDB can be populated by: Discovery
.
Discovery is available as a separate product.

Incident investigation
Incident investigation is also a human process. The service desk continues to use the
information in the Incident form as well as the CMDB to solve the issue. Work notes are added
to the incident as the service desk evaluates the incident, facilitating communication between
the concerned parties. Work notes and other updates can be communicated to the concerned
parties through email notifications .
One way to investigate incidents is to determine whether related records exist, using one of the
following features.
Related incidents icon
The show related incidents icon ( ) appears beside the Caller field when it is
populated. Click the icon to view the list of incidents for the same caller.

Note: Administrators can add this icon to any reference
field by modifying the dictionary entry and adding the

ref_contributions=user_show_incidents dictionary attribute.
The icon appears only for users who have read or write access to the field. A UI
macro named user_show_incidents defines the behavior. The UI macro
must be active to view the related incidents icon.
Incidents by Same Caller related list
Another way to research related incidents is to use the Incidents by Same Caller
related list. The administrator may need to configure the form to display this related
list.
Dependency views
Dependency views can help find related incidents based on configuration items
(CI). If a configuration item is attached to an incident, click the map icon ( ) to
display the dependency views map. In the dependency map, if you want to view the
tasks that are attached to the CI, click the down arrow next to the CI and from the
menu, select View Related Tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2444


<!-- page 2445 -->
CI options

Incident promotion
When the incident management team has determined that the cause of an incident is an error
or widespread problem, the team initiates the problem management process. When the issue
requires a change to the infrastructure or a business service, the team initiates the change
management process.
A menu item on the Incident form lets you create a problem or change record easily and
associate the incident with the problem or change record. For more information, refer Create a
record from incident

Note: If the incident already has an associated problem or change record, you cannot
create another record of the same task type.
Sometimes, the resolution for the user is to request hardware or software for them. For example,
a user may report a problem that requires a new mouse device or keyboard. The service desk
agent can create a request from the incident. The incident is associated with the requested item.

Note: This feature is available only in new instances starting with Jakarta
or a later release. The Problem Management Best Practice – Jakarta plugin
(com.snc.best_practice.problem.jakarta) plugin must be activate.

Incident escalation
There are two escalation methods the platform uses to track and report on incidents that are not
being resolved according to your organization standards.
Service level agreements (SLAs)
SLAs monitor the progress of an incident according to a set of agreements between
a service provider and customer that define the scope, quality, and speed of
the services being provided. As time passes, the SLA escalates the priority of
the incident and leaves a marker as to its progress. SLAs are also used as a
performance indicator for the service desk.
Inactivity monitor
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2445


<!-- page 2446 -->
The inactivity monitor generates an event to prevent incidents from going
unnoticed. When a certain amount of time has passed without an update to the
incident, the event creates an email notification or triggers a script.

Logging an incident
Log incident records from sources such as email, service desk, service catalog, or external
applications as per your convenience. You can also generate incident using business rules or
SOAP messaging.

Where

How

Service desk

User can call a service desk agent and the agent can log an
incident based on the information provided by the user. Service
desk (ITIL) agents can log an incident from the Self-Service >
Incidents > Create New module.

Service catalog

User can log an incident in service catalog from the SelfService > Service Catalog > Can We Help You? > Create
Incident record producer.

Email

User can send an email to the instance mailbox. An incident is
created according to the inbound email actions.

SMS

User can send an SMS to ServiceNow Customer Service
number and an incident is automatically created for the user.

Note: The user must install the Notify plugin
(com.snc.notify) and set up a Twilio account in order to
avail the messaging service.
Chat window

User can request to create an incident using the Connect
chat icon ( ) that appears on the upper-right corner of the
instance. On the chat window, the user can add an ITIL user
and also provide a short description of the issue. Based on the
description, the ITIL user creates an appropriate incident.

Note: If you want to create a security incident, first activate the Security Incident

Response Dependencies plugin (com.snc.si_dep). You can then click Create Security
Incident on a new incident form to create a security incident from the currently displayed
incident.
ESS users can:
• View the incidents they have opened. By default, the Watch list, State, and Urgency fields are
available on the ESS view of the Incident form.
• Update the Watch list and Short Description fields, and enter Additional comments. The
administrator can configure other fields to be editable.
User who do not have the itil role can view an incident only if the user is the caller for that
incident, has opened the incident, or is included in the watchlist. The incident query
business rule controls this function.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2446


<!-- page 2447 -->
Automatically generated incidents
• Incidents can be automatically generated using business rules. Business rules use JavaScript
to generate an incident if pre-defined conditions are met.
• Incidents can be generated from outside the platform with SOAP messaging. For more
information, refer to SOAP messaging
.

Create an incident
Create an incident record to document a deviation from an expected standard of operation.

Before you begin

Role required: itil, sn_incident_write, or admin

About this task

This procedure describes how an ITIL agent completes the Incident form. Incidents are also
logged when a user fills out a record producer in the service catalog, or sends an email to the
instance.

Procedure
1. Navigate to All > Incident > Create New.
You can also click New from the Incident list view.
2. Optional: Use a template, if one exists for the type of incident that you are logging.
If the organization uses form templates, then you can apply a template to pre-populate some of
the fields for specific types of incidents.
3. On the form, fill in the fields.
Your organization has configured the Incident form to adhere to its incident management
process. Enter information in the form field is based on the process. The following table
describes typical Incident form fields.
Incident form
Field

Description

Number

Unique system-generated incident number.

Caller

User who contacted you with an issue.

Category and Subcategory

Type of issue. After selecting the category, select the
subcategory, if applicable.

Service

Affected business service, if applicable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2447


<!-- page 2448 -->
Field

Description

Note:
If you select a business service as the
configuration item and if that business service is
also listed as the configuration item in any other

active task, then the active tasks icon (
)
appears. Click the icon to view the list of all the
other active tasks that are affecting the business
service.
You can view the BSM map (dependency view)
of the selected business service by clicking the
dependency icon (

).

Service Offering

Service offering consists of one or more service
commitments that uniquely define the level of service
in terms of availability, scope, pricing, and packaging
options. This field enables you to receive different
features and their levels of performance for a given
service.

Configuration item

Affected CI, if applicable.
After a CI is selected, you can click the open
Dependency views icon (
) next to the field to
see how the CI maps into the infrastructure. The
dependency view shows you what is impacted and
whether other CIs or services are experiencing
issues. To capture information on the affected CIs,
refer to Capture information on affected configuration
items in an incident.
When adding configuration items to the
Configuration item field of an incident form, the
search result containing a list of configuration items
(CI) is displayed and sorted based on the CI names in
alphabetical order.

Channel

Communication method that is used by the user
to create the incident. Following are the available
options:
◦ Chat
◦ Email
◦ Phone
◦ Monitoring
◦ Self-service
◦ Virtual agent
◦ Walk-in

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2448


<!-- page 2449 -->
Field

Description

Origin

Source of the incident. For example, if an incident is
created from alert, this field contains the value Alert.
This is a auto-populated field and you cannot fill the
value manually.

State

State of the incident. The state moves and tracks
incidents through several stages of resolution.

Tip: Use the State field, rather than the

Incident State or Problem State fields, as
your primary means of tracking the state of an
incident because this state progresses through
the entire processing cycle. To learn more, see
Life cycle of an Incident.
Impact

Impact is a measure of the effect of an incident,
problem, or change on business processes.

Urgency

Urgency is a measure of how long the resolution can
be delayed until an incident, problem, or change has
a significant business impact.

Priority

Priority is based on impact and urgency, and it
identifies how quickly the service desk should
address the task.

Assignment group

Group who will work on the incident.
The business rule Populate Assignment
Group based on CI/SO populates the
Assignment group field based on the support group
available for the configuration item (CI) or the Service
offering consecutively.

Note: The business rule is triggered when an
incident is created or updated, and when the
Assignment group and the Assigned to fields
are empty.
If you want to override the default value, then you
need to create new properties and provide the field in
the property value that must be used to populate the
Assignment group field. Create the properties in the
following order of preference:

◦ com.snc.incident.ci_assignment_group.field_name
Identifies which CI field populates the Assignment
group field.

◦ com.snc.incident.service_offering_assignment_gr
Identifies which service offering field populates the
Assignment group field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2449


<!-- page 2450 -->
Field

Description

Note:
◦ The sys_user_group read ACL calls the
SNCRoleUtil function. The function verifies
whether the group that is reviewed contains
either the admin role or security_admin role.
The function enables the user to view the
group only if the user has the same role. As a
result, a user with the itil role cannot assign an
incident to a group that has the admin role or
security_admin role, nor to any group whose
parent has those roles.
◦ Other than using the read ACLs, you can also
restrict incidents with specific assignment
group(s) for visibility only to the group
members using before-query business rule.
For details, see How to restrict a specific
group incidents to only its group members
[KB0790987]
article in the Now Support
Knowledge Base. You must log in to view the
article.
Assigned to

User who works on this incident. If the Assignment
group changes, the Assigned to field is cleared.

Short description

Brief description of the incident.

Description

Detailed explanation on the incident.

Attachments

Attachments related to the incident that helps in
incident resolution such as screenshots or pdfs.
Select the Attachment (
attachments.

) to add and manage the

Notes
Watch list

Users who receive notifications about this incident
when comments are added. Click the add me icon
(

Work notes list

) to add yourself to the watch list.

Users who receive notifications about this incident
when work notes are added. Click the add me icon
(

) to add yourself to the work notes list.

Note: The administrator must create an email
notification for the work notes list.
Additional comments

More information about the issue as needed. All users
who can view incidents see additional comments.

Work notes

Information about how to resolve the incident, or
steps taken to resolve it, if applicable.

Actions taken

A journal field where you can enter details of the
actions taken for a major incident. This field is for only
internal users.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2450


<!-- page 2451 -->
Field

Description

Note: This field is only visible when you
activate the Major Incident Management plugin
(com.snc.incident.mim).
Related Records
Parent Incident

Unique number of the parent incident for this incident
record.

Problem

Unique number of any related problem record that is
related to the incident.

Change Request

Unique number of any related change request that is
related to the incident.

Caused by Change

Unique number of the change request that resulted in
the creation of the incident.

Note: The Caller and Company fields are optional for the following situations:
◦ An incident is created from an alert.
◦ An incident is created from a change request. In such case, the change request
number is populated in the Caused by Change field.
4. Click Submit.

Result

The incident record is created.

What to do next

You can perform various actions and use the features in the incident record form to track and
resolve the incident. For more information, see Working with incident record form.
Related topics
Create a record from incident
Managing major incidents

Working with incident record form
Once an incident is created, you can use the incident record form to perform various actions to
track, process and resolve the incident.
You can do the following features in the incident record form:
• If you want to mail the incident record, click the more options icon (
select Email.

) in the title bar and

The user who requested the incident and the user who is assigned to the incident are
automatically populated in the list of recipients.
• When an incident is created from a case, the Customer Service with Service
Management plugin (com.sn_cs_sm) is installed and you have a customer service agent
(sn_customerservice_agent) role, you can view the Customer Cases tab in the Related Links
section of the Incident form. This tab contains the list of the customer cases associated with
the incident record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2451


<!-- page 2452 -->
• When there are one or more interaction records associated with the incident record, you can
view the Interaction tab in the Related Links section of the Incident form that contains the list
of the interaction records.
• When a problem record is linked to an incident or multiple incidents, the incident and problem
workflow has the following features:
◦ When a fix or workaround is shared from the problem record, an event is added to the
activity stream of the incident record as work notes. The event includes a brief description of
the provided fix or workaround and a link to the problem record.
◦ When a Known Error (KE) article is linked to the problem record, an event is added to the
activity stream of the incident record as work notes. The event includes the links to the
problem record and the KE article.
• A Primary device health link appears on the Related Links section of the Incident form. Select
to launch the Digital End-User Experience application and device health page for the selected
CI in Service Operations Workspace on a separate browser tab. This tab enables agents to
view all the available metrics and the device health for the selected CI, which were collected
by DEX. You can also access this feature using the View device health option on the classic
U16 CI record.

Note:
◦ DEX requires a separate entitlement.
◦ This link is available to the agent only if the following conditions are met:
▪ The selected CI is of type Device, which is also known as Endpoint.
▪ The DEX plugin is installed on the instance. For more information on DEX, see Digital
End-User Experience.
▪ The DEX agent is installed on the selected CI.

Capture information on affected configuration items in an incident
Capture information on affected configuration items (CIs), with type as asset, in an incident to
keep a record of the updated, repaired, swapped, or retired configuration items.

Before you begin

Role required: itil or admin
Activate the Hardware Asset Management Professional plugin (com.sn_hamp).

About this task

You can tell where the assets are located, by keeping track of the assets, how they are used, and
when changes were made to them. This information helps you to monitor and manage the assets
in your company using a systematic approach.
If you are not the caller of the incident and have a CI value in the affected CIs list, it is mandatory
to provide information on the CI before changing the state of the incident to Resolved.
You can enter CI information either from the Affected CIs related list or from the form layout of
the Affected CIs. You need to manually add the Asset Action and the Swapped CI fields in the
related list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2452


<!-- page 2453 -->
Add fields in the related list
Where

Related list

How

• In the Affected CIs related list, click the
settings icon

.

• Move the Asset Action and the Swapped
CI fields from the Available column to the
Selected column.
• Click OK.

Note: The CI value is updated only if the incident state is updated to Resolved by any
user excluding the caller. The CI value is not updated if:
• The incident state is updated as Resolved by the caller even if the Asset Action is
populated.
• The incident is directly moved to Closed state.

Procedure
1. Navigate to All > Incident > Open.
2. Open an incident.
3. Navigate to the Affected CIs related list before resolving the incident.
4. Optional: If you want to enter information in the form layout, click the CI.
5. On the related list or the form, fill in the fields.
Information on Affected CIs
Field

Description

Asset Action

Information on whether a CI is updated or
repaired, swapped with another CI, or retired
from the system. The options available are:
No action, Update/Repair, Swap, and Retire.

Note: If you swap or retire a
CI, the sn_hamp_asset.swap or
sn_hamp_asset.retire events are
generated respectively.
Swapped CI

Information on the new CI that is swapped
with the existing CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2453


<!-- page 2454 -->
Field

Description

Note:
◦ This field appears only when you
select the value of the Asset Action
field as Swap.
◦ The CI values available for swapped
CI are the ones with asset CI class as
hardware.
◦ The Swapped CI is assigned to
the Caller. If the Caller is an Asset
Manager, they have the option to
reassign it to the appropriate user.

6. Click Update.
The record is saved and the information about CI is stored in the [task_ci] table.

Note: You can filter the Affected CIs related list to have the list of affected CIs with class
as Asset.

Create a template from the incident form
Create a template that define default values for forms so that users can easily create incident.
You need to have appropriate permissions before creating templates.

Before you begin

Role required: itil, sn_incident_write, or admin

Procedure
1. Navigate to All > Incident > Create.
2. Click the more options icon

and then click Toggle Template Bar to see the template bar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2454


<!-- page 2455 -->
3. On the template bar, click the add icon (

).

4. On the form, fill in the fields.
Create New Template form
Fields

Description

Name

Name of the template.

Table

Table that this template applies to. Select
Global to make the template available for use
with all tables.

Note: The table list shows only the
tables and database views that are in
the same scope as the template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2455


<!-- page 2456 -->
Fields

Description

Active

Option for making the template available for
use. A template must be active to be used.

Application

Application scope of the rules. The scope
defines whether the rules are available for all
applications or for scoped applications.

User

User who can configure and apply the
template. If you define a user, no other users
can see the template unless you select the
Global option.

Groups

Group whose members can configure and
apply the template. If you define a group, no
other groups can see the template unless
you select the Global option.

Global

Option for allowing any user who can
access the templates to view and apply this
template.

Short description

Description of the template.

Note: Adding content to this field

does not add that content to the Short
description field of the forms that use
this template.
Template

Content that automatically populates records
that are based on this template. Select a field
from the specified table in the left column
and then enter the data to automatically
populate in the right column.

Note: Even though you can select dotwalked fields in the template, they do
not apply to fields that are on the form.

5. Click Submit.
The template is created and you can find it on the template bar.

Apply a template in the Incident form
Apply a template to a new incident record if the pre-populated information in the template is
applicable to the incident record. It saves your time and effort to enter values in the incident
record fields individually.

Before you begin

You must create a template before applying the template in the incident form. For more
information, see Create a template from the incident form.
Role required: itil, sn_incident_write, or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2456


<!-- page 2457 -->
Procedure
1. Navigate to All > Incident > Create New.
2. Click the more options icon
template bar.

and then click Toggle Template Bar to see all templates in the

3. Click a template to apply the template on the incident record.
Related topics
Create incident template

View VIP status for a caller in incident
View the callers with VIP status on the incident records list view as well as incident form.
Organizations commonly designate VIP status in the user record for some of their VIP users.

Before you begin

Role required: personalize_list or admin

About this task

When a caller is assigned to an incident, the user record is automatically checked for VIP status.
If the caller is a VIP caller, an icon appears beside the caller name in the list view or the caller
field in the form view.
To set the status of the VIP caller manually, navigate to All > System Security > Users or select
on the required caller name from the list of incident record. On the User form, select the VIP
check box to set the VIP status of the caller.

Procedure
1. Navigate to All > Incident > Open.
2. View the record for the VIP caller in the list of incident records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2457


<!-- page 2458 -->
3. Click the record to view the VIP status in the Caller field.

Use Microsoft Outlook to create incidents and VTB tasks
Create an incident or VTB task or chat with a virtual agent directly from within Microsoft Outlook
using ServiceNow icons.

Before you begin

You must activate and deploy the ServiceNow Add-in for Microsoft outlook. For more information,
see Configuring Microsoft Outlook to create incidents and VTB tasks
Role required: none

Procedure

1. On the Microsoft Outlook Home tab, click the ServiceNow icon (
Create Incident or Create VTB Task.

) and select

2. In the ServiceNow IT Service Management pane, click Login and enter your ServiceNow
credentials.
You may need to reauthenticate if your session has expired.
3. For an incident record, fill in the following fields and click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2458


<!-- page 2459 -->
Incident form
Field

Description

Number

Auto-generated incident number.

Caller

Current logged in user (default).

Short description

Subject of the current email (default).

Additional comments

Email body in text format (default).

Category

Category of incident.
◦ Inquiry / Help
◦ Software
◦ Hardware
◦ Network
◦ Database

You can add or remove fields directly on the Incident form for users with the itil role by
customizing the Outlook view form layout.

Note: For users that do not have the itil role, the configured Service Catalog form for
creating new incidents is shown.
4. For a task record, see fill in the following fields and click Create.
VTB Task form
Field

Description

Select Board

VTB board to which task belongs.

Select Lane

Lane of the VTB board.

Short Description

Short description of the task.

5. To chat with a virtual agent, select the Chat with Virtual Agent UI action to open the chat
window.

Create an incident task
Create an incident task to communicate and request work from assignment groups other than
the one initially assigned to the incident.

Before you begin

Role required: itil, sn_incident_write, or admin

Procedure
1. Navigate to All > Incident > Open.
2. Open the incident record.
3. In the Incident Tasks related list, click New.
If you don't see the Incident Tasks related list, you need to add it. For information on how to
add a related list, see Add a related list to a form .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2459


<!-- page 2460 -->
Alternatively, you can also right-click on the header form and on the context menu, and then
select Create Incident Task.
4. On the form, fill in the fields.

Field

Description

Number

Unique system-generated incident task
number.

Incident

Incident with which the task is associated.

Configuration item

The affected CI.

State

The state is updated and tracks the incident
task through several stages of resolution.

Note: When an incident task is closed,
you can no longer edit the field values in
the incident task form.
Priority

Priority level of the incident task.

Assignment group

Group who works on the incident task. If you
leave it blank, the incident is automatically
assigned.

Assigned to

User to whom the incident task is assigned.

Note: If the Assignment group

changes, the Assigned to field is
cleared.
Short description

A brief description of the incident task.

Description

Detailed explanation on the incident task.

Notes
Work notes list

Users who receive notifications about this
incident task when work notes are added.

Note: You can the add me icon

to

add yourself to the work notes list.
Work notes

Information about how to resolve the incident
task, or steps taken to resolve it, if applicable.

5. Click Submit.

What to do next

When an incident task is closed, you can no longer edit the field values in the incident task form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2460


<!-- page 2461 -->
Synchronization between an incident and its incident tasks
Use incident tasks to collaborate with and request work from other stakeholders. An incident and
its tasks are synchronized such that the state of incident tasks changes depending on the state
of the incident.

Note: The Close open Incident Tasks when Incident is closed or canceled property
(com.snc.incident.incident_task.closure) is responsible for different
actions that take place on incident tasks based on the state of the incident.
The synchronization between an incident and its open incident task is as follows:
• When an incident is closed, the state of any open incident task is set to Closed Incomplete.
• When an incident is canceled, the state of any open incident task is set to Closed Skipped.

Create a record from incident
Create a problem, change, or request record from an incident.

Before you begin

Role required: itil, itil_admin, or admin

About this task

When the cause of an incident is an error or widespread issue, a problem is generated from the
incident. When the issue requires a change to the infrastructure or a business service, a change
record is created from the incident. When the resolution for the user is to request hardware or
software, a request is created from an incident.

Procedure
1. Navigate to All > Incident > Open.
2. Open the incident record.
3. Right-click on the header form and on the context menu, select the appropriate option.
Task record

Option

Create Problem. For more information, refer to
Create a problem.

Note: Use the property List of

Problem

attributes (comma-separated)
that will be copied from the in­
cident to create a new problem
(com.snc.problem.create_from_incident.at
to specify fields on the Incident form.
The values of these fields are copied
to the respective fields on the Problem
form. The property is available for cus­
tomers starting the Madrid release.

Request

Create Request. For more information, refer to
Create a request from an incident.

Change

Create Normal, Standard, or Emergency
Change. For more information, refer to Create
a change request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2461


<!-- page 2462 -->
Task record

Option

Note:
The Create Normal Change, Create
Standard Change, and Create Emer­
gency Change scripts copy these fields
from the Incident form:
◦ short_description
◦ description
◦ cmdb_ci
◦ priority
◦ company
The syntax for copying a field from the In­
cident form to the Change form is:
changeRequest.setValue("field_name",
current.field_name);. The ad­
min adds this information in the script
block of the incident record.
The form for the new record appears and is already saved. Some specific fields are copied to
the newly generated record from the incident. You can find reference of the newly created task
record in the Related Records section of the Incident form.
4. Optional: Complete the Problem, Change, or Request form with additional information and
click Update.

Create a request from an incident
When you work on an incident and determine that the user needs one or more catalog items,
such as an application or a new laptop, you can create a request from the incident. It helps you in
tracking the requests associated with an incident and vice versa.

Before you begin

Role required: itil or sn_incident_write
The Best Practice - Incident Resolution Workflow plugin (com.snc.bestpractice.incident) should
be active for creating a request from an incident. To associate a parent incident with the request
created for a record producer, the catalog_admin should add the following script in the script
block of the record incident.
To associate a parent incident with the request created for a record producer, the administrator
should add the following script in the script block of the record producer:
var incRPUtil = new LinkRecordProducerToIncident();
incRPUtil.linkRecordProducerToParentIncident(RP.getParameterValu
e('sysparm_req_parent'), current);

Note: If you set the Use the sc_layout driven cart macros (default true)

(glide.sc.use_cart_layouts) property to false and create a request from an
incident, the request is not associated with the incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2462


<!-- page 2463 -->
Procedure
1. Navigate to Incident > All.
2. Select the required open incident.
3. Click the additional actions menu icon
and select Create Request.
The Catalogs home page is displayed with all active catalogs that you can access.

Note: If there is only one active catalog, then that catalog page is displayed with
available categories.
4. Select the required catalog and navigate through its categories and items.
5. Check out the required catalog item, order guide, or record producer.
For information on checkout models, see Service Catalog checkout models .
For a catalog item or order guide, a request is created and displayed under the Requests tab
of the incident. For a record producer, the corresponding task is created and displayed under
the Problems tab of the incident.

Note:
◦ The associated incident is specified in the annotation message throughout the request
process.
◦ Both for the one-step and two-step checkout, the caller of the incident is automatically
set as the Requested For user for the request. If the two-step checkout is enabled, the
fulfiller can change the Requested For.
◦ You cannot add items to the wish list, or save a record producer in this flow.

Copy an incident or create a child incident
Copy an incident or create a child incident without manually entering the value of all the fields in
the new incident.

Before you begin
• Role required: itil, sn_incident_write, or admin
• Select the Enable copy incident feature (com.snc.incident.copy.enable) and the
Enable create child incident feature (com.snc.incident.create.child.enable)
incident properties at Incident > Incident Properties.

Note: An itil user can copy or create a child of any incident whereas a user without any
role can copy only the incident which the user has created.

About this task

The Copy Incident functionality copies the details of an existing incident record to a new incident
record. The Create Child Incident functionality copies the details of the parent incident and links
the new incident to the parent incident. You can enable the options as well as add or remove
fields or related list using the copy incident and create child incident properties.

Procedure
1. Navigate to Incident > Open.
2. Open an existing incident that you want to copy or from which you want to create a child
incident.
3. Perform one of the following actions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2463


<!-- page 2464 -->
Option

Action

Click the Additional actions icon
click Copy Incident.
Copy an incident

and then

Note: After the incident is copied, the

Work notes field of the new incident is
updated with the following message:
Created from a similar inci­
dent: INCXXXXXX.
Click the Additional actions icon
click Create Child Incident.

and then

Note: Ensure you have added the Par­
Create a child incident

ent Incident field and the Incident ->
Parent Incident related list to the inci­
dent form. The incident, from which you
have created the child incident, is con­
sidered as the parent incident.

4. Fill out the other fields, as required.
5. Click Submit.
The default fields and related lists that are copied from the parent incident are:

From where

What are copied

Fields

◦ Category
◦ Subcategory
◦ Business Service
◦ Configuration item
◦ Impact
◦ Urgency
◦ Assignment group
◦ Short Description
◦ Description
◦ Related lists
◦ Caused by Change
◦ Location
◦ Company
◦ Problem
◦ Change Request
◦ Parent incident

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2464


<!-- page 2465 -->
From where

What are copied

Note: If the problem, change, or the
parent incident is not active, then
details of those fields are not copied.
Related lists

◦ Affected CIs
◦ Impacted Services
◦ Service Offerings

Note: The supported related tables
are:
◦ Affected CIs (task_ci)
◦ Impacted Services
(task_cmdb_ci_service)
◦ Service Offerings
(task_service_offering)
◦ Business Applications
(task_cmdb_ci_business_app)
You cannot add any other table in this
field but you can remove any of the
default values.

Synchronization between a parent and a child incident
The parent and the child incidents are synchronized such that the state of a child incident
changes depending on the state of the parent incident.
Parent-Child state synchronization
Parent State

On Hold Reason
(Parent)

Child State

On Hold Reason (Child)

In Progress

NA

In Progress

NA

On Hold

Awaiting Change/
Awaiting Problem/
Awaiting Vendor

Same as parent

Same as parent

On Hold

Awaiting caller

Not updated

Not updated

Resolved

NA

Resolved.

NA

The Activity log in
the child incident
form is updated with
the resolution notes
copied from the
parent Incident.
Closed

NA

Not closed.

NA

Child incidents must
always be closed by
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2465


<!-- page 2466 -->
Parent-Child state synchronization (continued)
Parent State

On Hold Reason
(Parent)

Child State

On Hold Reason (Child)

the caller or by the
system based on the
auto-closure property.
Canceled

NA

NA

NA

Note:
When an incident has a child incident, the following actions take place:
• If an ITIL user reopens the parent incident, then the parent incident as well as the child
incident reopens. Both the parent and the child incident state is set to In Progress.
• If an ESS user reopens the parent incident, the parent incident state is set to In Progress
but the child incident is not reopened.

Enable the display of incident special handling notes
Enable the display of informative notes for a specific record or for a set of records that meet one
or more conditions. Use these notes to help users understand the action that was taken for the
incident or the next course of action to be taken.

Before you begin

Role required: admin
Activate the Special Handling Notes plugin (com.sn_shn) to add the Create Special Handling
Notes related link from which you can create the notes.

Procedure
1. Navigate to Incident > All.
2. Open any incident record.
3. Click the Additional actions icon

and select Configure > Form Layout.

4. From the Available list, select Special Handling Notes Pop Up and move it to the Selected list.
5. Click Save.
The Incident form can now display special handling notes.
Related topics
Create a special handling note

Create a knowledge article from an incident using an article template
Provide a resolution for an issue by creating a knowledge article from an incident with fields
defined in an article template.

Before you begin

Role required: itil, sn_incident_write, or admin
Activate the KCS Integration for Incident Management plugin (com.snc.incident.knowledge).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2466


<!-- page 2467 -->
About this task

You can create a knowledge article only when the incident is resolved and you have not already
created a knowledge article from that incident.

Note: Incident managers with the sn_km_ml.knowledge_curation_user role can use
the Demand Insights for Incidents dashboard to identify which incidents have no or
insufficient knowledge coverage. For more information, refer Demand Insights for Incidents
dashboard .

Procedure
1. Navigate to All > Incidents > Resolved.
2. Open a resolved incident record.
3. Access the Incident-KCS article - HTML form using one of the following methods:
◦ Under Related Links, click Create Knowledge.
◦ Right-click the form header and click Create Knowledge.
The Incident-KCS article - HTML template provided with the base system appears. If you want
to create your own article template, refer to Create an article template .
4. On the form, fill in the fields.
Incident KCS Article form fields
Field

Description

Number

[Auto-generated] Unique number to identify
the knowledge article.

Knowledge base

Knowledge base in which the article is stored.
The Incident KCS Article is stored in the
[kb_template_incident_kcs_article] table.

Category

[Auto-generated] The value of this field is
automatically provided from the Category
field of the knowledge.

Valid to

Date after which the knowledge article is
deleted from the database. After this date,
the article does not appear in the search
result.

Confidence

Maturity of an article based on its
completeness and reusability.

Version

[Auto-generated] Displays the article version
number, which is incremented when changes
are made to a published article.

Workflow

[Auto-generated] Workflow that is followed
for creating the knowledge article. For more
information, refer Knowledge workflows
.

Source Task

[Auto-generated] Incident record from which
you have created the article.

Attachment link

Check box to automatically download an
attached article instead of opening the
article, when you access an article.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2467


<!-- page 2468 -->
Field

Description

Display attachments

Check box to display attachments in the
knowledge article. The attachments appear
below the article text.

Governance

An attribute of an article that enables you
to control sensitive, critical, or regulated
information. Not all articles have the same
requirement for compliance reviews.
Some articles are based on the collective
experience of the people who use the articles
(experience-based). Other articles have
policy or legal information that require tight
control (compliance-based).

Short description

Brief description of the knowledge article.

Issue

Information on the cause of the incident.

Resolution

Method used to resolve the incident.

Note: The Confidence and Governance fields appear when the Knowledge
Management KCS Capabilities plugin (com.snc.knowledge_kcs_capabilities) is activated.
For more information, see Managing the KCS article state .
5. Click Submit.
A knowledge article is created. The article record is listed in the Knowledge related list.
Create a knowledge article from an incident
When you are ready to close an incident, you can create a knowledge article so the next time the
issue comes up the resolution is easy to find.

Before you begin

KCS Integration for Incident Management plugin (com.snc.incident.knowledge) must be
activated. When activated, Incident Create Knowledge business rule does not run. For more
information, see Activate KCS Integration for Incident Management.
Role required: itil, sn_incident_write, or admin

About this task

When an incident is closed automatically or by the caller, a draft knowledge article is created.

Procedure
1. Open a resolved incident that you want to close.
2. Perform one of the following methods to create a knowledge article from an incident:
◦ Under Related Links, click Create Knowledge.
◦ Right-click the form header and click Create Knowledge.

Note: The Create Knowledge related link is visible only if:
◦ Incident must be in Resolved state.
◦ A knowledge article does not exist for the same incident.
3. Click Close incident.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2468


<!-- page 2469 -->
A new draft knowledge article is created. The content in the fields listed in the following table is
copied from the Incident form to the Knowledge form.

Field on Incident form

Field on Knowledge form

Short description

Short description

Additional comments

Text

Number

Source

The Knowledge related list on the Incident form is populated with the new draft knowledge
article. The draft article does not appear in the knowledge base (KB) for users until it is
reviewed and published.
If the Knowledge submission workflow (glide.knowman.submission.workflow) is enabled
from the System Properties [sys_properties] table, the content in the Short description and
Additional comments fields of the incident form become a knowledge submission instead
of an article. The KB Submissions related list on the Incident form is populated with the new
knowledge submission. For more information on creating a knowledge article and workflows,
see Create knowledge from incident
and Knowledge workflows .
When the KCS Integration for Incident Management plugin (com.snc.incident.knowledge)
is not activated, Knowledge check box is visible instead of Create Knowledge related link.
You can select the check box and enter a resolution in theAdditional comments (Customer
visible) field and then close the incident. In such case, a knowledge article is created
automatically using the Incident Create Knowledge business rule.

What to do next

To see the draft articles, navigate to Knowledge > My Knowledge Articles and then open the
draft article by its KB number in the Knowledge form.

View affected CIs in the dependency views map
A configuration item (CI) can result in an incident. Use dependency view to identify other
configuration items (CIs) that are affected by the CI that resulted in the incident.

Before you begin

Role required: Itil, itil_admin sn_incident_write, or admin

About this task

Often, an incident is related to one or more specific configuration items (CIs). If the configuration
management database (CMDB) is populated, the CI records hold valuable information to help
resolve incidents. You can associate configuration items to an incident to see how the incident
affects dependent CIs.
Use the Configuration Item field when a single CI is the cause of the incident and use the
Affected CIs related list when multiple CIs are affected by the incident. For example, suppose
a load-balancer in a data center is no longer operational. The Configuration Item field lists the
specific server which is out of memory. The Affected CI related list contains the load-balancer,
the data center, the servers that depend on the load-balancer, and business services that are
impacted by the missing server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2469


<!-- page 2470 -->
Procedure
1. On the Incident form, associate the CIs.
From where

Action

Configuration item field

Click the lookup icon (
and select the CI.

) beside the field

a. Click Add at the top of the list.
b. Select the CI to associate.
Affected CIs related list

c. Click Add Selected.
d. Right-click on the form header and click
Save.

2. Click the dependency views icon (
) beside the Configuration item field.
The Dependency Views map opens in a new tab or window.
3. To see items that this CI affects, click the down arrow and select View Affected CIs.

To add another affected CI to the incident, click the down arrow beside the CI and click Add
Affected CI(s).
Related topics
Dependency Views map

Refresh impacted services and CIs for incident
The impacted services and CIs related list refreshes its records and also the records listed in
the Service Offerings and Business Applications related lists based on the affected CIs. You can
identify the impacted services and CIs and take necessary action.

Before you begin

Role required: itil, incident_manager, sn_incident_write, or admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2470


<!-- page 2471 -->
Ensure that you have configured the Business Applications related list.

About this task

When you refresh impacted services, the Impacted Services/CIs, Business Applications, and
the Service Offerings related lists get updated based on the affected CIs. The records in each of
the related list are unique even though the impact can be from a single affected CI. The following
properties are responsible for this functionality:
• Populate Impacted Services based on Affected CIs. Note: This requires any Business
Service identified to have previously been converted to an Application Service.
(com.snc.incident.refresh_impacted.include_affected_cis)
• Impacted CIs/Services related list is generated via events. When enabled the refresh
will be executed in the background and the user will be notified on completion.
(com.snc.incident.refresh_impacted.event)
• Populate the Business Application related list for incidents
(com.snc.incident.populate_business_application)
• Populate the Service Offering related list for incidents
(com.snc.incident.populate_service_offering)
• Populate the Refresh impacted services has been initiated message that is
displayed on the UI when the Refresh impacted services UI action is clicked.
(com.snc.incident.refresh_impacted_services.message.show)

Note: By default, the property is set to true.
• Control and refresh the creation of live feed messages
(com.snc.incident.refresh_impacted_notify_user)

Note: By default, the property is marked true.
Procedure
1. Navigate to All > Incident > Open.
2. Open the incident record for which you want to refresh the related lists those values are based
on affected CIs.
3. Click the Additional actions icon
and then select Refresh Impacted Services.
The records in the Impacted Services/CIs, Business Applications, and Service Offerings
related lists are updated.

Associate CIs with incident
Associate affected or impacted configuration items (CIs) with an incident record to find out how
the incident affects other CIs with dependent relationships.

Before you begin

Role required: admin

About this task

Use the Configuration Item field when there is a single, primary CI that is the cause of the
incident and the Affected CIs or the Impacted Services/CIs related list when multiple CIs are
affected by the incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2471


<!-- page 2472 -->
Procedure
1. Navigate to All > Incident > Open.
2. Open the incident record to which you want to associate CI items.
3. Perform the following actions:
Associate CI items
Options

Configuration item

Procedures

a. Click the lookup icon (

).

b. Select configuration item.

Note: By default, Service Offering
is filtered out and CIs with Principal
Class are selected. The Principal
Class filter functionality is applicable
to the new customers starting the
Paris release.
Affected CIs

a. Click Add.
b. Select configuration items.

Note: By default, Service Offering
is filtered out and CIs with Principal
Class are selected. The Principal
Class filter functionality is applicable
to the new customers starting the
Paris release.

c. Click Add Selected.
Impacted Services/CIs

a. Click Add.
b. Select configuration items.

Note: By default, Service Offering is
filtered out.
c. Click Add Selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2472


<!-- page 2473 -->
Update the resolved incident notification template
Modify the content of the email template that is sent to the user when you resolve an incident.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Notification > Templates.
2. Open the incident.ess.resolve template.
3. Manually update the template content.
4. Click Update.

Incident resolution and closure
An incident is considered resolved when you provide the user with a temporary workaround or a
permanent solution for the issue.
When an incident is resolved, the escalators stop, and the caller can review the resolution. If
the caller is satisfied with the resolution, the caller can close the incident or the incident is autoclosed after a certain time based on the incident auto-close properties.
If the cause of an incident is understood but cannot be fixed, the service desk can create a
problem from the incident to find the root cause of the issue. The problem is then evaluated
through the problem management process.
If the incident creates the need for a change in IT services, the service desk can generate a
change from the incident, which is evaluated through the change management process.

Incident closure
You can configure incident properties to auto-close an incident.
Your organization can also generate customer satisfaction surveys when incidents are closed.
Surveys allow the service desk to gather information about the quality of their service directly
from the user.
Resolve and close an incident
When the service is restored by rectifying the issue that resulted for an incident, you can set
the incident state as resolved. If the user is satisfied with the resolution, the user can close the
incident or the incident is auto-closed after a certain time based on the incident auto-close
properties.

Before you begin
Role required:

• For resolution: itil, list_updater, sn_incident_write, or admin
• For closure: itil_admin or admin

Procedure
1. Navigate to All > Incident > Open.
2. Open the incident that you want to resolve and close.
3. In the Resolution Information section, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2473


<!-- page 2474 -->
Resolution Information fields
Field

Description

Resolved by

The user who resolved the issue and the date
and time the incident was closed.

Resolved

The date and time when the incident was
resolved.

Resolution code

Information to categorize resolved cases.

Resolution notes

Document how an incident is resolved.

4. Click Resolve.
The incident is in the resolved state.
5. Click Close Incident.
The incident is closed.

Note: Even when an incident is closed or canceled, you can edit the following fields on
the Incident form, if you have an admin role: Subcategory, Service, Service Offerings,
Description, Contact type, Watch list, Work notes list, Parent Incident, Problem,
Change Request, Caused by Change, Resolved by, Resolved, Reassignment count.
Configure incidents to close automatically
Close incidents automatically based on the last updated date or the resolution date of the
incident by configuring incident properties. You can also mention the number of days system
must wait before initiating the auto-closing functionality.

Before you begin

Role required: admin

About this task

You can auto-close incident based on the last updated date or the resolution date of
the incident using the property Enable auto closure of incidents based on Resolution
date. Setting this to 'No' will make auto closure to run based on the Updated date
(com.snc.incident.autoclose.basedon.resolved_at). This property is set to true
only for the new customers starting the London release. Existing customers before the London
release have to manually set the property to true.

Note: You cannot auto-close a major incident based on the incident auto-closure
property. For more information, refer Close a major incident.
A scheduled job called Autoclose Incidents (System Scheduler > Scheduled Jobs
> Scheduled Jobs) runs the Incident Autoclose business rule to close incidents as
described. By default, it assigns the name of the administrator, who is logged in when the
Autoclose Incidents job runs, to the Updated by field.

Procedure
1. Navigate to Incident > Administration > Incident Properties.
2. Select the Enable auto closure of incidents based on Resolution date. Setting this to 'No' will
make auto closure to run based on the Updated date check box if you want the incident to be
auto-closed based on the resolution date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2474


<!-- page 2475 -->
3. In the Number of days (integer) after which Resolved incidents are automatically closed.
Zero (0) disables this feature (glide.ui.autoclose.time) property, enter the number
of days.

Note: If you have an inactivity monitor triggering on your incident, it resets this autoclose clock each time it triggers, preventing your incident to be closed. To prevent
this reset, set a Reset Condition on your inactivity monitor to [Incident state] [is not]
[Resolved].
4. Click Save.
Related topics
Configure default user for auto-closing incidents
Close multiple incidents from list
Close multiple incidents from the incident list simultaneously that can have the same resolution
code.

Before you begin

Role required: itil, list_updater, sn_incident_write, or admin

Procedure
1. Select the check box beside each incident that you want to close.
2. Right-click on any list column header and click Update Selected.

3. Set the value of State to Closed.
4. In the Resolution Information section, select a Resolution code and enter your notes in
Resolution notes.
5. Click Update.
The changes apply to all the selected records.
Create a UI action to close multiple incidents
Create a UI action to close multiple incidents at once from the Actions list in the list view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2475


<!-- page 2476 -->
Before you begin

Role required: business_rule_admin (for business rule), ui_action_admin (for UI action), or admin

About this task

Closing an incident from Actions list adds the same close note to all the incidents that are
closed and does not require the list_updater role. Implementing this process requires a script
include that is referred from a UI action and a custom UI page.

Procedure
1. Navigate to All > System Definition > Script Includes and click New.
2. Create the script includes with the following information.
◦ Name: IncidentClosure
◦ Client callable: Select the check box
◦ Active: Select the check box
◦ Script: Paste the following information:
var IncidentClosure = Class.create();
IncidentClosure.prototype =
Object.extendsObject(AbstractAjaxProcessor, {
closeIncidents: function() {
var selectedIncidents =
this.getParameter("sysparm_incidents");
var notes = this.getParameter("sysparm_closeNote");
var code = this.getParameter("sysparm_closeCode");
var incidentGr = new GlideRecord('incident');
incidentGr.addQuery('sys_id', 'IN',
selectedIncidents);
incidentGr.query();
while (incidentGr.next()) {
incidentGr.setValue('state', 7);
incidentGr.setValue('close_notes', notes);
incidentGr.setValue('close_code', code);
incidentGr.update();
}
return true;
},
type: 'IncidentClosure'
});
3. Save the record.
4. Create the following steps to create a UI page.
◦ Name: mandatory_fields_to_close_incident_ui
◦ HTML: Paste the following information:
<?xml version="1.0" encoding="utf-8" ?>
<j:jelly trim="false" xmlns:j="jelly:core" xmlns:g="glide"
xmlns:j2="null" xmlns:g2="null">
<style>
✅content_row .reference-label {
padding-right: 15px;
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2476


<!-- page 2477 -->
✅page_timing_div {
display: none;
}
</style>
<form class="form-horizontal">
<div class="form-group">
<label class="col-xs-4 control-label">
<span style="padding-right: 5px;"></span>
<span
class="label-text">${gs.getMessage('Resolution
code')}</span>
</label>
<div class="col-xs-5 form-field input_controls"
style="line-height: 32px;">
<select name="closeCode" id="closeCode">
<option value="" selected="SELECTED"
role="option">-- None --</option>
<option value="Solved (Work Around)"
role="option">Solved (Work Around)</option>
<option value="Solved (Permanently)"
role="option">Solved (Permanently)</option>
<option value="Solved Remotely
(Work Around)" role="option">Solved Remotely (Work
Around)</option>
<option value="Solved Remotely
(Permanently)" role="option">Solved Remotely
(Permanently)</option>
<option value="Not Solved
(Not Reproducible)" role="option">Not Solved (Not
Reproducible)</option>
<option value="Not Solved (Too Costly)"
role="option">Not Solved (Too Costly)</option>
<option value="Closed/Resolved by Caller"
role="option">Closed/Resolved by Caller</option>
</select>
</div>
</div>
<div class="form-group">
<label class="col-xs-4 control-label">
<span class="label-text"
style="">${gs.getMessage('Resolution Notes')}</span>
</label>
<div class="col-xs-7 form-field input_controls">
<textarea required="true"
class="form-control" value="closeNotes" id="closeNotes"
type="text"></textarea>
</div>
</div>
<div class="form-group"
style="padding-right:20px;margin-bottom:0;padding-left: 75%;
line-height: 45px;">
<g:dialog_button id="cancel_button"
type="button" style_class="$btn btn-default"
onclick="actionCancel()" style="min-width:
5em;">${gs.getMessage('Cancel')}</g:dialog_button>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2477


<!-- page 2478 -->
<g:dialog_button id="ok_button"
type="button" onclick="actionOK()"
style_class="btn btn-primary" style="min-width:
5em;">${gs.getMessage('OK')}</g:dialog_button>
<div class="clearfix"></div>
</div>
</form>
</j:jelly>
◦ Client script: Paste the following information:
function actionOK() {
var modal =
GlideModal.prototype.get("mandatory_fields_to_close_incident
_ui");
var incidents =
modal.getPreference("selected_incidents");
if (incidents) {
//close the incidents
var glideAjax = new GlideAjax("IncidentClosure");
glideAjax.addParam("sysparm_name", "closeIncidents");
glideAjax.addParam("sysparm_incidents", incidents);
glideAjax.addParam("sysparm_closeCode",
$("closeCode").value);
glideAjax.addParam("sysparm_closeNote",
$("closeNotes").value);
glideAjax.getXMLAnswer(function(answer) {
GlideModal.prototype.get("mandatory_fields_to_close_incident
_ui").destroy();
GlideList2.get('incident').refresh();
});
}
}
function actionCancel() {
GlideModal.prototype.get("mandatory_fields_to_close_incident
_ui").destroy();
}
(function() {
var okButton = gel('ok_button');
var closeCodeEl = gel('closeCode');
var closeNotesEl = gel('closeNotes');
okButton.disabled = true;
closeNotesEl.value = "";
closeCodeEl.on('change', function() {
if (closeCodeEl.value !=="" &&
closeNotesEl.value !=="")
okButton.disabled = false;
else
okButton.disabled = true;
});
closeNotesEl.on('input', function() {
if (closeCodeEl.value !=="" &&
closeNotesEl.value !=="")
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2478


<!-- page 2479 -->
okButton.disabled = false;
else
okButton.disabled = true;
});
})();
5. Save the record.
6. Complete the following steps to create the UI action for closing multiple incidents.
a. Navigate to System Definition > UI Actions and click New.
b. Create the UI actions with the following information:
▪ Name: Close incidents
▪ Table: Incident [incident]
▪ Show update: Select the check box
▪ List choice: Select the check box
▪ List v2 Compatible: Select the check box
▪ Client: Select the check box
▪ Onclick: closeIncidents()
▪ Condition: current.getValue('state') !== '7'
▪ Script: paste the following information
function closeIncidents() {
var list = GlideList2.get('incident');
var title = list.getTitle();
var incidents = list.getChecked();
if (incidents) {
var o = new
GlideModal('mandatory_fields_to_close_incident_ui');
getMessage("Close Incidents", function(msg) {
o.setTitle(msg);
o.setPreference('selected_incidents',
incidents);
o.render();
});
}
}

7. Save the record.

Result

Service desk agents can close multiple incidents using Close incidents in the Actions list below
the Incident list.

Reopening an incident
Reopen a resolved incident from the incident’s resolution notification email or from the incident
form in Incident Management to further investigate an issue that is still impacting you.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2479


<!-- page 2480 -->
When an incident is resolved, an incident resolution email notification is sent to you. If you are
not satisfied with the resolution of your incident, you can request to reopen the incident using
any of the following methods:
• Select the Reopen incident link from the incident resolution email notification.
• Select the Reopen option on the incident form in Incident Management or the Portal UI’s such
as Service Portal and Employee Service Center (ESC) portal.
Once an incident is reopened, the state of the incident is then changed from Resolved to In
Progress.
The following conditions are applicable when reopening an incident:
• You can reopen a resolved incident if you are an agent with incident write access
(sn_incident_write), or caller, or Opened by (requester) user for the incident.
• Both the caller and the requester can view and use the Reopen incident option on the Portal
UIs, such as Service Portal and ESC portal.
• If you are an agent, you can view and use the Reopen option on the incident form to reopen
any incident that is assigned to you or to other agents. However, on the Portal UI, you can only
view and use the Reopen incident option to reopen an incident if it’s assigned to you or you
are the caller or requester for the incident.
• If an incident is reopened by a user after it was resolved, the Last reopened by and the Last
reopened at fields are automatically populated with the name of the person who reopened it
and the date and time when the incident is reopened. During audit, this information helps you
to generate various reports for reopened incidents.
• On the Incident form, there is an existing field named Reopen count. Incidents that were
reopened prior to the Kingston release, may already have some non-zero values in the Reopen
count field while the values in the new fields, Last reopened by and the Last reopened at are
null. For incidents that are reopened after the Kingston release, the Last reopened by and the
Last reopened at fields are populated.
• If you do not have any roles in the system (ESS) and you change the incident state to
Resolved, you receive a notification with a Reopen incident link.
• If you do not have any roles in the system (ESS) and you are the caller, you can click Reopen
on the incident form to reopen the incident.

Note: An ESS user is not able to resolve, reopen, or close a major incident even if the
user is the caller.
If the incident is already closed, you cannot reopen that incident. However, if you
request to reopen the incident by replying to the resolution notification email, a new
incident is opened with selected field values that are copied from the closed incident.
To enable this feature, you must add fields as values in the List of fields (commaseparated) to copy from the original incident when an incident is reopened by email
(com.snc.incident.clone_fields_on_reopen) incident property. These fields are
copied from the closed incident to the new incident. Add the text Please reopen to the
subject line of the email.

Incident standard ticket page
The Incident standard ticket page is where you and your employees can view the details of an
incident and can be used with service portal.
You can access the Incident ticket page in Service Portal using the Requests option from the
main menu header of Service Portal. The Incident ticket page is available by default for new as
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2480


<!-- page 2481 -->
well as upgrade users. The Incident standard ticket page shows the details of an Incident, such
as the short description, caller, and urgency. It also shows the Actions list from where you can
resolve, close, or reopen incident.
Incident standard ticket page

Incident standard ticket page configuration
You can configure the appearance of the Incident standard ticket page header and tabs from
Standard Ticket > Standard Ticket Configuration > Incident. For more information, refer
Configure incident ticket page.
Configure incident ticket page
Configure the Incident ticket page from where users can view the details of an Incident in Service
Portal.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Standard Ticket > Standard Ticket Configuration > Incident.
2. Click the Incident record.
3. On the form, configure the fields.
Ticket Configuration form
Field

Description

Table

Task-extended table for which you want to configure the standard ticket page.

Active

Option to specify if the ticket configuration is active.

Application

Application associated with the ticket configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2481


<!-- page 2482 -->
Field

Description

State field

Any field of the task-extended table. By default, this field is mapped to the
State field of the task-extended table. You have to configure the form to add
this field.

Note: You cannot add fields for any of the following information:
◦ Number
◦ Short description
◦ Created date
◦ Updated date
◦ Watch list
◦ Any user input such as comments and work notes
Info Region
Show
Scenario where the request description should be displayed. Possible options
'Description' are:
◦ None
◦ Always
◦ When no variables

Note: When displayed, you can expand and collapse the description.
Advanced

Option to specify that a widget should be displayed in the info region.

Info widget

Widget that should be displayed in the info region. This field appears only
when the Advanced check box is selected.

Info widget
parameters

Comma-separated list of info widget parameters. This field appears only when
the Advanced check box is selected.

Info fields

Fields that should be displayed in the info region. This field disappears when
you select the Advanced check box.

Note: You cannot add fields for any of the following information:
◦ Number
◦ Short description
◦ Created date
◦ Updated date
◦ Watch list
◦ State
◦ Any user input such as comments and work notes
Action Region
Action
widget

Widget to specify the actions available in the info region.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2482


<!-- page 2483 -->
Field

Description

Action
widget
parameters

Comma-separated list of action widget parameters.

Note:
◦ By default, the Activity and Attachments type tab configurations are available for all
standard configurations.
◦ You cannot duplicate any tab type other than Custom.
◦ You can configure a maximum of five tabs.
◦ You can add only one of these tab types:
▪ Variable Editor (Read-Only)
▪ Variable Summarizer
4. Right-click the header menu and click Save.
5. On the Tab Configurations related list, configure the fields.
Tab Configuration form
Field

Description

Type

Tab type based on which a widget is displayed. Possible options are:
◦ None
◦ Activity
◦ Attachments
◦ Custom
◦ Variable Editor (Read-Only)
◦ Variable Summarizer

Tab name

Name of the tab.

Application

Application associated with the ticket configuration.

Order

Order in which the tab should be displayed in the tabs section.

Visible

Conditions for the tab visibility.

Widget

Widget that should be displayed in the tabs section. This field appears only
when Custom is selected from Type.

Widget
parameters

Comma-separated list of tab widget parameters. This field appears only when
Custom is selected from Type.

6. On the Ticket Configuration form, click Update.

Managing major incidents
A major incident (MI) is an incident that results in significant disruption to the business. A
major incident demands a response beyond the routine incident management process. Major
incidents have a separate procedure with shorter timescales and higher priority, so that there is a
faster resolution process for incidents with high business impact.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2483


<!-- page 2484 -->
https://player.vimeo.com/video/990305784?
h=fa145c9c15&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
The definition of what constitutes a major incident must be determined and agreed on. For
example, a major incident can be created if a critical business service is impacted or if there is a
service outage that affects many users.
There are multiple ways to create a major incident candidate, such as the following:
• Propose an incident as a major incident candidate by clicking Propose Major Incident from
the context menu of the Incident form.
• Create a new major incident candidate by clicking Create Major Incident Candidate from the
left navigation pane.
• Mark an incident as a major incident candidate based on the major incident trigger rules.

Note: When a major incident is created from a major incident candidate, the new major
incident is considered as a parent record for the current major incident candidate. In such
case, the Caller and Company fields are optional.
As a major incident manager, you can do the following:
• Promote a candidate to a major incident by clicking Promote to Major Incident from the
context menu.
• Create a new major incident by clicking Create Major Incident from the left navigation pane.
• Promote an incident to a major incident without going through the proposal process.
When responding to a major incident, some crucial actions involve finding the right resources,
communicating updates to users and stakeholders, setting up conference calls to investigate
and resolve the incident, and escalating the incident when required. Using Task Communications
Management , you can define communication plans that are associated with a major incident
based on pre-defined conditions. Incident communication plans and related communication
tasks are created for a major incident based on the communication plan definitions. Thereafter,
tasks get executed as defined in the attached incident communication.

Major Incident Management process
A major incident is a highest-impact, highest-urgency incident that affects a large number of
users, depriving the business of one or more crucial services. Given the urgency of the situation,
a well-coordinated response process is required to accelerate the resolution and minimize the
business impact.
The goal of an organization is to have an effective and efficient system for responding to major
incidents. The requirements are to:
• Minimize the impact of service interruptions.
• Ensure that an appropriate Incident Manager/Major Incident Team/Management Group are in
place to manage a major incident.
• Ensure that stakeholders are well-informed of service interruptions, degradations, and
resolutions.
• Conduct a review of each major incident once service is restored. Its purpose is to analyze
the incident, and understand what can be done to prevent a similar incident in the future. This
review also provides an opportunity to evaluate the incident response process and identify
areas for improvement.
• Create a problem for root cause analysis.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2484


<!-- page 2485 -->
Keeping the goals in mind, a major incident management process can be broadly classified into
the following phases:
Identification
The first step in the process is to identify a potential major incident. A potential
major incident can be identified automatically based on trigger rules or an existing
incident can be proposed as a major incident candidate. These incidents are
classified as major incident candidates and are reviewed by major incident
managers who initiate the major incident response process.
Communication and Collaboration
Timely communication during a major incident is crucial to ensure that the IT
teams, business stakeholders, end users, and customers are informed about the
impact and progress of the incident. An occurrence of a major incident requires a
comprehensive communication plan that includes who is contacted, the methods
and frequency of communication, messaging, and so on. The communication plan
enables the incident response team to focus their efforts on the resolution process
and sets expectations for any future communications.
You can define one or more communication plans based on the type, priority of the
incident, or the target audience. For example, communication plans for a P1 major
incident could have more frequent communication than a communication plan for a
P2 major incident.
Throughout the life cycle of the major incident, notifications and status updates are
sent to the stakeholders to keep them informed and involved.
Resolution
In this phase, the agreed upon path to resolution is followed to resolve the
issue. Resolving a major incident resolves all associated child incidents, and the
individual callers receive a notification about incident resolution.
Post incident review
This is the final phase of a major incident life cycle. After the major incident is
resolved, a post-incident review is conducted. Its purpose is to analyze the incident
and understand what can be done to prevent a similar incident in the future. This
review also provides an opportunity to evaluate the incident response process and
identify areas for improvement.
To streamline the process, a post-incident report is created when an incident is
resolved. The post-incident report can be reviewed and updated during the review
process before it is shared with stakeholders.
A major incident progresses through different states during its life cycle. The following diagram
illustrates the different states involved in a major incident management:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2485


<!-- page 2486 -->
Major Incident Management state flow

Major Incident Management plugins
You can activate the Major Incident Management plugins if you have the admin role.
Activate Incident Management - Major Incident Management
You can activate the Incident Management - Major Incident Management plugin
(com.snc.incident.mim) if you have the admin role. This plugin includes demo data and activates
related plugins if they are not already active.

Before you begin

Role required: admin

About this task

Incident Management - Major Incident Management plugin (com.snc.incident.mim) must be
manually activated for new and existing customers.
Incident Management - Major Incident Management plugin activates these related plugins if they
are not already active:
• Incident Communications Management (com.snc.iam)
• Incident Updates (com.snc.incident.updates)
• Task-Outage Relationship (com.snc.task_outage)
Additional plugins for Incident Management - Major Incident Management
Plugin

Description

Notify

Provides platform features for workflow-driven voice calls,
conference calls, and SMS messages. Requires the Twilio Direct
Driver and a separate contract with Twilio for SMS and Voice
capabilities.

[com.snc.notify]

Note: Existing users already using Twilio Driver need to
migrate

to Twilio Direct Driver.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2486


<!-- page 2487 -->
Additional plugins for Incident Management - Major Incident Management (continued)
Plugin

Description

On-Call Scheduling

Provides the ability to create on-call schedules and escalation
trees. When an incident is created, dynamically route the
[com.snc.on_call_rotation] escalation to an on-call resource. On-Call Scheduling enables you
to configure and build different on-call schedules per process and
assignment group.

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
Managing major incidents
Legacy: Major incident overview dashboard
Major incident workbench
List of Zurich plugins
Components installed with Incident Management - Major Incident Management
Several types of components are installed with activation of the Incident Management - Major
Incident Management plugin, including tables and user roles.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Demo data is available for this feature.

Roles installed
Role title [name]

Description

Major incident manager

A major incident manager can:

[major_incident_manager]

• Initiate the major incident process by assessing
and approving major incident candidates or
creating a major incident.

Contains roles

This role
inherits the
ia_admin role.

• Reject a major incident candidate.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2487


<!-- page 2488 -->
Role title [name]

Description

Contains roles

• Demote a major incident after it is accepted so
that the incident can be handled as a regular
incident.
• Maintain the ownership and accountability for
the life cycle of the incident.
• Identifies the users and groups to be involved in
the resolution activities.
• Creates adhoc communication plans and tasks.
• Edits a communication plan that is attached to a
major incident.
• Close a major incident.
Communications manager
[communication_manager]

• Manages communications for major incidents
and is responsible for communicating with all
stakeholders.

This role
inherits the
ia_admin role.

• Creates adhoc communication plans and tasks.
• Edits a communication plan that is attached to a
major incident.
Incident Manager
[incident_manager]

• Manages incident properties and major incident
trigger rules.

(Existing role with added
responsibilities)

• Can create and edit Communication Plan
Definitions.

None

Tables installed
Table

Description

Major Incident Trigger Rules

This table extends the Application File [sys_metadata] table and
stores the major incident trigger rules.

[major_incident_trigger_rule]

Slack notification installed with Major Incident Management
Slack notifications are added with activation of Incident Management – Major Incident
Management.

Slack notification

Description

Major Incident
Candidate assigned

Notifies Major Incident Management Group when Major Incident
State changes to Proposed.

IAT conference
notification

When conference call is initiated, a slack notification is sent to all the
participants of the conference call.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2488


<!-- page 2489 -->
Quick start tests for Major Incident Management
Validate that Major Incident Management still works after you make any configuration change
such as apply an upgrade or develop an application. Copy and customize these quick start tests
to pass when using your instance-specific data.

Major Incident Major Incident Management
Major Incident Management quick start tests require activating the Incident Management - Major
Incident Management plugin (com.snc.incident.mim).
MIM: Major Incident Management test suite
Test

Description

Release version

MIM: Create a Major Incident

Test to verify the creation
of major incident from the
application navigation
module.

Orlando

MIM: Create a Major Incident
Candidate

Test to verify the Create a
Orlando
Major Incident Candidate
module from navigation menu.

MIM: Create a Major Incident
from a Major Incident
Candidate

Test to verify the creation of
a major incident from a major
incident candidate.

Orlando

MIM: Major Incident
Candidate creation when
it matches Major Incident
Management trigger rule

Test to verify the creation of
a major incident candidate
when conditions to create
a major incident match the
major incident management
trigger rule.

Orlando

MIM: Propose a major
Incident (Assignment group
empty)

Test to verify auto assignment
of major incident candidate
when an incident is proposed
as a major incident and the
Assignment group and the
Assigned to fields are empty.

Orlando

MIM: Propose a major
Incident (Assignment group is
not empty)

Test to verify the auto
Orlando
assignment of a major
incident when an incident is
proposed as major incident
and the Assignment Group
and the Assigned to fields are
not empty.

MIM: Promote a candidate to
major Incident (Assignment
group is empty)

Test to verify auto assignment
of major incident when a
candidate is promoted to
a major incident and the
Assignment Group is empty.

Orlando

MIM: Promote a candidate to
major Incident (Assignment
group is not empty)

Test to verify auto assignment
of major incident when a
candidate is promoted to
a major incident and the

Orlando

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2489


<!-- page 2490 -->
MIM: Major Incident Management test suite (continued)
Test

Description

Release version

Assignment group is not
empty.
MIM: Reject a Major Incident
Candidate

Test to verify the rejection of a
major incident candidate.

Orlando

MIM: Demote a Major Incident Test to verify whether a major
incident gets demoted to an
incident.

Orlando

MIM: Major Incident closure

Test to validate the major
incident closure functionality.

Orlando

MIM: State sync up with ICP
and ICT

Test is to verify the state
Orlando
sync up with Incident
Communication Plan and
Incident Communication Task.

MIM: ICP attached to an
Incident based on conditions
and its state sync up with ICT

Test is to verify Incident
Orlando
Communication Plan attached
to an Incident based on
defined conditions.

MIM: Resolving MI and PIR

Test is to verify resolving
a Major Incident and Post
Incident Report.

Orlando

MIM: Major Incident
workbench layout verification

Test is to verify Major Incident
workbench layout verification.

Orlando

MIM: Verify communication
task from MI workbench

Test is to verify
communication task from MI
workbench.

Orlando

To learn more about Major Incident Management, see Major Incident Management.
Related topics
Quick start tests

Create trigger rules for major incidents
Create trigger rules to define the conditions under which a trigger action is executed. You
can create major incident trigger rules to define the conditions under which an incident is
automatically considered as a major incident candidate.

Before you begin

Role required: incident_manager or admin

About this task

Major incident trigger rules are evaluated asynchronously each time an incident is created or
updated provided the following conditions are met:
• The incident record doesn't have the Parent Incident populated, which means that the current
incident isn't a child incident.
• The major incident isn't proposed or accepted.
• The incident is active.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2490


<!-- page 2491 -->
Note: The base system major incident trigger rules are inactive by default.
Procedure
1. Navigate to All > Major Incidents > Administration > Major Incident Trigger Rules.
2. Select New.
3. On the form, fill in the fields.

Field

Description

Name

Unique name of the trigger rule.

Table

Table on which the trigger rule executes.

Application

Application scope of the trigger rule. The trigger
rule is available for all applications or for scoped
applications.

Execution Order

The rule with lowest execution order is triggered first.
In the following example, the rule with order = 100 is
executed first.
Example:
◦ If business criticality of business service is 1-most
critical or 2-somewhat critical, Order = 100.
◦ If the number of child incidents is greater than 20,
then Order = 200.
◦ For a P1 incident, Order = 300.

Note: If any of the existing trigger rule
conditions are met, the incident is considered to
be a major incident candidate. Verification of the
remaining rules isn’t required. Otherwise, all the
rules are verified based on the execution order.
Action to take

Action taken on the incident when the trigger rule is
executed. The possible values are the following:
◦ Propose Major Incident: Incident is proposed as
a major incident candidate when the trigger rule
is executed. After it’s approved, the incident is
promoted to a major incident.
◦ Promote Major Incident: Incident is promoted
directly to a major incident when the trigger rule is
executed.
◦

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2491


<!-- page 2492 -->
Field

Description

Note: The Create major

incident from candidate
(sn_major_inc_mgmt.com.snc.incident .min.major
system property creates different behaviors
depending on which options are selected.
When the system property is set to Create new,
the following behaviors occur in relation to the
Action to take values:
◦ Propose Major Incident: The incident is
proposed as a major incident candidate. After
it’s approved, a new major incident is created
and the incident is marked as its child.
◦ Promote Major Incident: A new incident is
created and promoted to a major incident. The
existing incident is marked as its child.
When the system property is set to Promote,
the following behaviors occur in relation to the
Action to take values:
◦ Propose Major Incident: The incident is
proposed as a major incident candidate. After
it’s approved, a new major incident is created
and the incident is marked as its child.
◦ Promote Major Incident: The existing incident
is promoted to a major incident.
Active

Option to activate the trigger rule.

Conditions

Conditions that must be met to execute the trigger
rule.

4. Select Submit.

Working on major incident management
The section covers topics that help you with a variety of technical concepts related to major
incident management such as the different ways to create a major incident, ways to reject a
major incident candidate, demote a major incident, or close a major incident.
Create a major incident candidate
You can create a major incident candidate in multiple ways. After a major incident candidate
is created, the major incident manager evaluates the candidate and decides whether the
candidate should be promoted to a major incident.

Before you begin

Role required: itil, sn_incident_write, or admin

About this task

A major incident manager can accept or reject a major incident candidate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2492


<!-- page 2493 -->
Procedure
Perform any of the following actions.
Option

Description

An incident can be marked as a major incident can­
didate based on the major incident trigger rules.
A major incident manager or an incident manager
can Create trigger rules for major incidents to iden­
tify major incident candidates automatically.
Create major incident trigger rules

Note: The base system major incident trig­
ger rules are disabled by default. A major inci­
dent manager or an incident manager needs
to activate the trigger rules that define condi­
tions under which an incident is automatically
considered as a major incident candidate.

Propose an incident as a major incident
candidate manually

Manually propose an existing incident to be a ma­
jor incident candidate by clicking Propose Major
Incident from the context menu. You are prompted
to enter the reason for proposing the incident as a
candidate, and specifying the business impact of
the incident.

Note: If an incident is in the resolved,

closed, or canceled state, the Propose Major
Incident option does not appear on the con­
text menu.
a. Create a new major incident candidate by click­
ing Incident > Major Incidents > Create Major In­
Create a candidate from application navi­
cident Candidate.
gation
b. Fill in the fields and click Submit.

Note:
• When an incident is proposed as a major incident candidate, the Major incident State
field in the incident form under the Major incident section is set to Proposed.
• When you create a new major incident from a candidate, a new incident is
created and becomes the major incident. The candidate is added as the child
of the major incident. To get this behavior, the incident manager needs to set
the major incident management property Create major incident from candidate
(sn_major_inc_mgmt.com.snc.incident.mim.major_incident_creation).
A new incident is created from a candidate as a major incident. The candidate is
associated with the new incident as a child.
• System automatically assigns the newly created parent major incident to a user when the
On-Call Scheduling plugin (com.snc.on_call_rotation) is activated, a shift is defined for
the major incident management group, and a user is available for the on-call shift. If no
on-call shift exists, the major incident manager decides the user for the Assigned to field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2493


<!-- page 2494 -->
Create a major incident
Create a major incident directly or review the candidates and promote the candidates to major
incidents.

Before you begin

Role required: major_incident_manager

Procedure
Perform any of the following actions.
Option

Description

On the context menu, click Promote to Major Incident.
The incident directly becomes a major incident.

Note:
• Only a major incident manager can promote an in­
cident to a major incident. If an incident is in the re­
solved, closed, or canceled state, the Promote to
Major Incident option does not appear on the con­
text menu.
Promote an incident to a major in­
cident manually

• When an incident is promoted to a major incident,
the incident itself is considered as a major inci­
dent and no new incident is created.

To get this behavior, you need to set the major inci­
dent management property Create major incident
from candidate – A new incident is created from
a candidate as a major incident. The candidate
is associated with the new incident as a child.
(sn_major_inc_mgmt.com.snc.incident.mim.major_i
to Promote candidate to a major incident.

a. Click Incident > Major Incidents > Create Major Inci­
dent.
Create a major incident from appli­
cation navigation
b. Fill in the fields and click Submit.

Major incident assignment
A major incident is assigned to a group automatically at the time of proposal and
promotion based on the value of the property Major Incident Management Group
(sys_id) to whom the Major Incident should be re-assigned on promotion to 'Major
Incident' (sn_major_inc_mgmt.major_incident_management_group). The
assigned group works on the major incident and resolves it.
The incident is assigned to an individual if the On-Call Scheduling plugin
(com.snc.on_call_rotation) is activated and a shift is defined for the group. The following table
illustrates the different conditions under which a major incident is assigned to a group and a
user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2494


<!-- page 2495 -->
Assignment of major incident
Action

Condition

Incident is proposed Assignment Group is
as a candidate
empty
manually or based
on major incident
trigger rules

Assignment group

Group based on the
property value

Assigned to

• If on-call is
activated, shift is
defined and a user
is available on-call
then the incident is
assigned to the oncall user
• If on-call is not
activated, the
Assigned to field
remains empty

Incident is manually
promoted to a major
incident

Assignment Group is
not empty

No change incident retains the
current value of the
assignment group

No change - incident
remains with the
current value in the
Assigned to field

Assignment Group is
empty

Group based on the
property value

The value for the
Assigned to field
is the user who
promoted the incident
to a major incident

• Incident reassigned
to group based on
the property value

• Assigned to value
is overwritten by the
user who promoted
the major incident
candidate

Assignment Group is
not empty

• Send a notification
to the original
Assignment Group
members about
the latest incident
reassignment.

Major incident is
created

• Send a notification
to the user to whom
the major incident
was previously
assigned

Assignment Group is
empty

Group based on the
property value

The value of the
Assigned to field is
the user who has
created the major
incident

Assignment Group is
not empty

No change incident retains the
current value of the
assignment group

No change - incident
remains with the
current value in the
Assigned to field

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2495


<!-- page 2496 -->
Assignment of incident communication plan and communication task
Action

Condition

Assignment group

Assigned to

Incident
communication
plan is created with
source as major
incident

Assignment Group is
empty

The value for the
Assignment group
field is copied from
the source incident

The value of the
Assigned to field
is copied from the
source incident

Assignment Group is
not empty

No change - incident
communication
plan retains the
current value of the
assignment group

No change - incident
communication plan
retains the current
value of the Assigned
to field

Incident
communication
task is created
from incident
communication plan
whose source is
major incident

Assignment Group is
empty

The value for the
Assignment group
field is copied
from the incident
communication plan

The value of the
Assigned to
field is copied
from the incident
communication plan

Assignment Group is
not empty

No change - incident
communication
plan retains the
current value of the
assignment group

No change - incident
communication task
retains the current
value of the Assigned
to field

Accept or reject a major incident candidate
When an incident is proposed as a major incident candidate, a major incident manager can
accept or reject the candidate. The manager accepts a candidate as a major incident if the
incident requires accelerated resolution.

Before you begin

Role required: major_incident_manager

Procedure
Perform any of the following actions.
Option

Accept a major incident
candidate

Description

a. Navigate to Incident > Major Incidents > Candidates and
open the candidate to be approved.
b. Click the additional actions icon
jor Incident.

and select Promote to Ma­

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2496


<!-- page 2497 -->
Option

Description

Note:
• While promoting the candidate, the major incident manag­
er is prompted to enter work notes and business impact.
• The incident is promoted to a major incident, and the Ma­
jor incident state field under the Major incident section is
changed from Proposed to Accepted.
• The incident is assigned to the user who approves the
major incident.

a. Navigate to Incident > Major Incidents > Candidates and
open the candidate to be rejected.
b. Click the additional actions menu icon
Major Incident Candidate.
Reject a major incident can­
didate

and select Reject

Note:
• While rejecting the candidate, the major incident manag­
er is prompted to enter the reason for rejecting the candi­
date. A notification is sent to the user in the Assigned to
field.
• The state of the incident remains the same while the Ma­
jor incident state field is changed to Rejected.

Associate multiple incidents with a major incident
You can associate one or more incidents with a major incident using the Actions menu.

Before you begin

Role required: itil, sn_incident_write, or admin

About this task

When a major incident occurs, there are usually multiple incidents created for the same issue
and there might be multiple major incident candidates created for a single issue. All the incidents
for a single issue can be associated with the appropriate major incident.

Procedure
1. Navigate to All > Incident > Open.
2. Select the incidents that need to be associated with a major incident.
3. On the Actions menu, click Link to Major Incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2497


<!-- page 2498 -->
4. In the Choose a Major Incident dialog box, select the major incident with which you want to
associate the incidents.
5. Click OK.
The incidents are added as a child to the major incident.
Reject multiple major incident candidates using the Actions menu
You can reject one or more major incident candidates using the Actions menu. If you decide that
the candidates do not qualify to be major incidents, then you can reject multiple candidates at
once and provide the rejection reason.

Before you begin

Role required: major_incident_manager

Procedure
1. Navigate to All > Incident > Major Incidents > Candidates.
2. Select the candidates that you need to reject.
3. On the Actions menu, click Reject Major Incident Candidate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2498


<!-- page 2499 -->
4. On the Rejection Reason dialog box, enter the reason why you decided not to accept the
candidates as major incident.
5. Click Reject.
The major incident candidates are rejected.
Demote a major incident
When an incident is incorrectly evaluated to be a major incident, you can demote the major
incident even after it is accepted so that the incident can be handled as a regular incident.

Before you begin

Role required: major_incident_manager

Procedure
1. Navigate to All > Major Incidents > Open.
2. Open the major incident that you want to demote.
3. Click the additional actions icon

and select Demote Major Incident.

4. Enter the reason for the demotion.
The major incident state is set to Canceled but the incident state remains the same.
Close a major incident
You can close a major incident manually after validating the resolution and when the major
incident is in the Resolved state.

Before you begin
• Role required: major_incident_manager or admin
• Major incident is in resolved state

Procedure
1. Navigate to All > Major Incidents > Open.
2. Open the major incident that you want to close.
3. Click Close Incident.

Note:
◦ If you cancel an incident and the major incident state is in Proposed or Accepted state,
the major incident state changes to Canceled.
◦ The incident auto-closure property Enable auto closure of incidents based on
Resolution date. Setting this to 'No' will make auto closure to run based on the
Updated date does not close any incident record that is accepted as a major incident.
Users with the major_incident_manager or admin role must close a major incident
manually, after validating the resolution and when the major incident is in the Resolved
state.
◦ If an incident was promoted as a major incident, then an ESS user cannot resolve,
close, or reopen the incident.
View major incident information on the Incident form
When an incident enters the major incident life cycle, the Major Incident and the Post Incident
Report tab appears on the incident form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2499


<!-- page 2500 -->
Before you begin

Role required: itil, sn_incident_read, or admin
Incident is in the major incident life cycle.

Procedure
1. Navigate to All > Incident > Open.
2. Select the incident which is in the major incident life cycle.
3. Click the Major Incident tab.

Field

Description

Major incident state

A major incident state can be one of the following:
◦ Proposed: The initial state when a major incident
candidate is created or proposed.
◦ Accepted: The state when a major incident is
directly created by a major incident manager or
when a candidate is promoted to a major incident
by a major incident manager.
◦ Rejected: The major incident candidate is rejected
by a major incident manager.
◦ Canceled: The major incident is demote by a major
incident manager.

Proposed by

The user who proposed the incident as a major
incident candidate.

Proposed

Date and time when the incident was proposed as a
major incident candidate.

Promoted by

The user who promoted the incident to a major
incident.

Promoted

Date and time when the incident was promoted to a
major incident.

Business impact

The business impact of the issue identified in the
major incident.

Probable cause

The probable cause of the issue identified in the
major incident.

4. Click the Post Incident Report tab.
If you have already filled the post incident report information in the major incident workbench,
the same information appears in the following fields:

Field

Description

Overview

Summary of the incident.

Findings

Information on what caused the major incident and
any lessons learnt in the process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2500


<!-- page 2501 -->
Field

Description

Timeline

Information of all the activity feeds not only of the
incident but also of the incident communication plan
and incident communication tasks related to the
incident.

Major incident workbench
The major incident workbench is a single pane view designed for major incident managers,
communication managers, and resolver groups. The workbench helps to manage major
incidents by aggregating and providing actionable information.
To navigate to the major incident workbench, open a major incident or a major incident
candidate, and click View Workbench on the form header.
Major incident workbench

Note: Groups and number of members involved in the groups widget are populated from
the Assignment group and the Assigned to fields of incident, incident communication
plan, incident task, as well as the members involved in an active conference call.

Header components
• From the workbench, to navigate back to the incident form, click View Form that appears on
the header of the workbench.
• If an incident is not yet in the Resolved state, then the header displays the Resolve button. To
resolve an incident, click Resolve.
• When an incident is not yet accepted as a major incident, then the workbench displays a
choice list on the header. The list displays options to promote the incident to a major incident
or to reject the incident.
• Use the chat icon ( ) on the header to initiate a chat on the incident level. The chat is a
record feed — whatever you write in the chat appears in the activity stream.
• You can click

to change the state of the incident.

• Duration is an active timer that tracks the time since the creation of the incident. The timer
stops when the incident is resolved.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2501


<!-- page 2502 -->
Major incident workbench UI elements
The major incident workbench provides UI elements which display the summary of tasks,
progress of communication plan, conferencing information, and a report on the cause and
resolution of the major incident.
The major incident workbench has the following UI elements: Summary, Communicate,
Collaborate, and Post Incident Report.

Note: You need to activate the Notify plugin (com.snc.notify) for the Collaborate tab

to appear. The Post Incident Report tab is visible only when the incident state is either
Resolved or Closed.
Major Incident workbench — Summary tab
The Summary tab provides a unified view of information in the form of a card layout. The
information on impacted services, affected CIs, active outages, locations that are impacted, and
child incidents helps to keep you informed about related records associated with an incident.

Summary tab
View of the summary tab

You can add, create, or edit each of the components. You can also view, post, or filter the latest
activity on the major incident.
The tab also provides a quantitative summary of the active and completed tasks, as well as users
or groups who are involved in resolving the major incident. The communication tasks are sorted
in ascending order based on the order value.
The Time remaining column provides information regarding the time when the communication
task is due.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2502


<!-- page 2503 -->
• If you do not perform the communication task within the set time, the value changes to
Overdue.
• If you activate the On-call Scheduling plugin (com.snc.on_call_rotation): The user who is oncall for the respective group and the group name appear in the summary.
The Groups section displays On-Call information, including the On-Call Escalation Tracking icon
(
) that indicates the active status of the escalation. Green indicates an active escalation, and
black indicates a finished escalation. Click the icon to view the On-Call Escalation Tracking popup.
Activate the Event Management plugin (com.glideapp.itom.snac) to add an Alert card under the
Summary tab that keeps you up-to-date on the number of alerts for each incident. The count is
the total of all primary and secondary alerts for the incident.
Major Incident workbench — the Post Incident Report tab
The Post Incident Report tab helps you to understand the cause of the major incident, and the
actions taken by the teams to resolve the incident.
The teams can assess the incident response and resolution process and determine follow-up
action items. The post incident report is required to record the actions performed, the reasons for
doing them, and findings.

Note: The major incident manager can edit a report when the incident is in the Resolved
state.
View of the Post Incident Report tab

The post incident report includes the following sections where a major incident manager can
provide required information:
• Overview: Summary of the incident.
• Findings: Information on what caused the major incident and any lessons learned in the
process.
• Resolution: Information on the resolution steps taken to resolve the issue. The major incident
manager can also add or edit any related Problem or Change information by clicking Add or
Manage respectively.
• Timeline: Information of all the activity feeds, not only of the incident but also of the incident
communication plan and incident communication tasks related to the incident. You can update
the timeline with the latest activity by clicking Regenerate Timeline.

Note: The information that you provide for Overview, Findings, and Timeline gets
updated in the Post Incident Report section on the Incident form.
If you activate the Continual Improvement Management (CIM) plugin (com.sn_cim), the Related
Improvement Records section is displayed in the report. This section displays the Inbound CIM
Integrations records.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2503


<!-- page 2504 -->
When you click View Complete Report, all the information entered by the major incident
manager is compiled together and you can download the report in the .PDF format by clicking
Download Report PDF.
The following links appear in the Incident form under the Related Links section:
• Regenerate PIR Timeline: This link appears when incident is in the Resolved state and the
user has the major_incident_manager role.
• Preview PIR: This link appears when incident is in the Resolved or Closed state and the user
has the itil role.

Note: On the downloaded report, under Incident Response Timeline, the time displayed
in the timing type Time to Identify is calculated in the following ways:

• If you propose the incident as a major incident: The time indicates the time from creation
of the first related alert for this incident or creation of the incident (in case there is no alert
or the Event Management plugin is inactive), whichever occurs first, until the time the
incident is first proposed as a major incident.
• If you create a major incident directly: The time indicates the time from creation of the first
related alert for this incident or creation of the incident (in case there is no alert or the
Event Management plugin is inactive), whichever occurs first, until the time the incident is
promoted as a major incident.
Related topics
Associate a new post incident report
The Communicate tab in the Major Incident workbench
The Communicate tab helps you understand the progress of a communication plan and its
related tasks.
If there are multiple communication tasks associated with a communication plan, all the tasks
appear under the respective communication plan.
Communication task filter

You can filter the communication task to view all tasks, active tasks, or completed tasks. You can
also add a new communication plan by clicking Add. You can create a communication task for an
existing plan by clicking Add Task. For more information, see Add communication plan from the
major incident workbench. If you want to add or remove recipients from a particular plan after the
plan is saved, click Manage Recipients.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2504


<!-- page 2505 -->
Note: When you create a communication task for sending an email on the
Major Incident Management Workbench and select a recipient list, the recipient
list is added instead of individual users. The list of users in the recipient list is
calculated by the system while processing the email request, thus improving the
system performance. Also, you can add users, groups, and email addresses as
required in the Recipients section. Activate this feature by selecting the Property
to toggle support for Recipient List on Email Client, on Communication Tasks
(sn_comm_management.email_client_recipient_items_enabled) option
in the Major Incident Management Properties. You can create a recipient list using a script
to retrieve a custom list of users or include a pre-defined list of users.
Manage recipients

The following actions can be performed on a given communication task:
• Close Task: If the task is performed at least once, closes the communication task and changes
the state to Complete. Otherwise, the state changes the state to Skipped.
• Snooze: Available only for recurring communication task. Enables the user to skip the
communication task once and the due-in timer is refreshed.
• View Form: For each task in the plan, you can navigate back to the form.
• View Activity: Enables you to view activity history and post your work notes or additional
comments for a communication task.
Communication task actions

You can also view the due time of upcoming tasks and the overdue time in case the task isn’t
completed within the expected time.
To send a notification, click Compose. If the notification has to be send only once, then after
sending the notification, the status of the task changes to Complete. If the task is recurring,
the status of the task changes to Open. After a recurring communication task is performed,
the status of the communication task changes to Sent followed by the number of times the
recurring communication task is performed until that time. For example, Sent(2x) means that the
communication task is performed twice.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2505


<!-- page 2506 -->
Communication task state

Icons to the left of the Communication Task name represent the state of the communication task
such as completed, skipped, or active.
Under the Work Notes & Activity section, you can initiate a chat at the incident or incident
communication plan level. You can also view the activity stream for that record.

Messaging users through Slack
For Slack functionality, install Collaboration services from the ServiceNow Store

.

When you add Slack as a communication channel, it appears as follows:
View of the slack communication channel

Click Compose to convey the Slack message to the contacts that you’ve already mentioned in
the communication contact while defining the communication plan. The selected contacts will

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2506


<!-- page 2507 -->
receive a direct message from the Slack bot. You can perform the communication task actions
such as Closed Task, Snooze, View Form, and View Activity.
Major Incident workbench — the Collaborate tab
The Collaborate tab helps you to view information about communication tasks that have
conference as their communication channel. It also allows you to manage the participants in a
conference call.
View of the Collaborate tab

Like the Summary tab, you can add a new communication plan by clicking Add. You can create
communication task for an existing plan by clicking Add Call. For more information, see Addcommunication-plan-from-mim-workbench. If you want to add or remove recipients from a
particular plan after the plan is saved, click Manage Participants.
To initiate a conference call, click Initiate. If the communication task is a one-time task, then after
the call is ended, the status of the task changes to Complete. If task is recurring, the status of the
task changes to Open and it displays the number of times the conference call is initiated.

Note: When you add a user group to the conference call, the group itself is added to
the call, and the escalation hierarchy is automatically followed once you start the call.
Set the com.snc.iam.conference_call_follow_on_call_escalation
property to true. For more information about the property, see System properties for On-Call
Scheduling.
Under each task, the Active participant section displays the active participants and the Inactive
participant section displays the inactive participants.
If the call is in progress, the itil user, who has access to the workbench, can join the conference
call by clicking Join Call. The participants can also add another user to an ongoing conference
call by clicking + Participants. The conference leader can end the conference call by clicking
End Call. The conference leader can mute, unmute, or kick an active participant by hovering over
the active participant and clicking
.
Under the Work Notes & Activity section, you can send connect message at incident or incident
communication plan level. You can also view the activity stream.
To initiate a call directly to the group members, click Start a call.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2507


<!-- page 2508 -->
To start a call, populate the sn_major_inc_mgmt.notify_webrtc_number property
with a valid notify number that has voice capability. For user who is already in an active
conference call, Start a call is disabled. You can mute or unmute all the participants using
the Mute All and Unmute All options. If you activate the Notify - Twilio Direct Driver plugin
(com.snc.notify.twilio_direct), the active participants are highlighted in green.
For information on how to send a Microsoft Teams notification from major incident workbench,
see Send a notification from Major incident management workbench .
For information on process flow for slack communication, see Process flow for Slack
communication.
For information on how to add a collaborative communication task, see Add a collaborative
communication task.
Associate a new post incident report
Create your own post incident report and associate the UI page with the View Complete Report
button under the Post Incident Report tab. Using the customized report, you can add information
that is specific to your organization.

Before you begin

Role required: itil, major_incident_manager, or admin

About this task

For associating the View Complete Report button with your customized post incident report
page, set the value of the PIR export ui page url major incident property to the new UI page.

Procedure
1. Navigate to All > System UI > UI Pages and click New.
2. Create a UI page.
For information on how to create a UI page, refer UI pages

.

3. Navigate to Incident > Major Incident Properties.
4. In the PIR export ui page url (sn_major_inc_mgmt.pir_export_pdf_ui_page)
property, enter the link of the new UI page.
5. Click Save.
When you click the View Complete Report button, the new UI page opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2508


<!-- page 2509 -->
Add communication plan from the major incident workbench
You can create a new communication plan or add a new communication task to an existing
communication plan from the workbench. This UI action is helpful when you do not have an
existing well-defined communication plan in the system.

Before you begin

Role required: major_incident_manager

Procedure
1. Navigate to Major incident workbench.
2. Click the Communications tab and then click Add that appears in Communication Tasks
section to display the Adhoc Communication pop-up window.
3. On the form, fill in the fields.

Field

Description

Communication Plan

List to select a new communication plan or to
select an existing plan and add communication
tasks to the plan.

Plan Short description

Brief description of what the communication plan
is all about.

Task Short description

Brief description of what the communication task
is all about.

Channels

Check box to select email, SMS, slack, or
conference as mode of communication for the
plan.

Frequency

Frequency at which a specific task needs to be
executed. A task can be executed only once or on
specific durations.

Due in (Minutes)

Time span when the task must be executed
after the task initiates. For recurring tasks, it also
indicates the time span after which the task must
repeat.

Add similar incidents from major incident workbench
Add similar incidents to a major incident so that the support teams can work on the parent record
for a coordinated response process.

Before you begin

Role required: itil, major_incident_manager, communication_manager, incident_manager, or
admin
• Activate the Predictive Intelligence plugin (com.glide.platform_ml).
◦ Configure Predictive Intelligence and train the solution definition with the name
ml_sn_global_similar_incidents_mim. For more information on how to train a
solution definition, refer to Create and train a similarity solution .
• Ensure that there is an active ML solution at Predictive Intelligence > Similarity > Solutions
with the solution name ml_sn_global_similar_incidents_mim.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2509


<!-- page 2510 -->
Procedure
1. Navigate to Major incident workbench.
2. Click the Summary tab.
3. In the Child Incidents section, click

and then click Find Similar.

4. From the Add Similar Incidents dialog box, select the similar incidents that you want to relate to
the major incident and then click Add Selected.
The similar child incidents appear under the Child Incidents section.
Access on-call escalation path from major incident workbench
Access on-call roster and escalation details from major incident workbench to reach out to a
support group.

Before you begin

Role required: itil, sn_incident_read, sn_incident_write, major_incident_manager,
communication_manager, incident_manager, or admin
Activate the On-Call Scheduling plugin (com.snc.on_call_rotation).

Procedure
1. Navigate to Major incident workbench.
2. Click the Communications tab.
3. Under the Groups section, click On Call Groups.
4. From the list, select a group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2510


<!-- page 2511 -->
On-call groups

5. Select Track On-Call Escalation.
6. In the escalation path section, select Escalation.

Result

You can access the on-call escalation information.

Legacy: Major incident overview dashboard
Major Incident Overview module provides two versions of the Performance Analytics (PA)
Dashboard to review major incident information at a glance.

Important:
Starting in Xanadu release, the Major incident overview dashboard is deprecated. Users
can use Major incident dashboard to view the process and communication related metrics
for Open and Closed major incidents.
Users with itil, sn_incident_write, major_incident_manager or communication_manager role can
access the dashboard.
The two versions of the Performance Analytics (PA) Dashboard are normal and premium.
You must activate the Incident Management - Major Incident Management plugin
(com.snc.incident.mim) to view the normal dashboard. To access the premium version of Major
Incident Overview dashboard, activate Performance Analytics – Content Pack for Major Incident
Management (com.snc.pa.incident.mim).
You can navigate to the dashboard in the following ways:
• Incident > Major Incidents > Overview
• Self – Service > Dashboard > Major Incident Overview

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2511


<!-- page 2512 -->
Major incident overview
Major Incident Overview dashboard

Major Incident Overview module provides information on the following content:

UI component

Description

1

Dashboard
controls

Provides options to create, duplicate, or delete a
dashboard. You can copy the dashboard URL or
duplicate the dashboard. In addition, you can add
the dashboard in your favorite list, create a tab, or
reset filters in the dashboard.

2

Dashboard
overview

Takes you to the UI page where you view the recently
accessed dashboard, dashboards owned or shared
by you, or all the dashboards in the system. To create
a new dashboard, click New.

3

Dashboard choice
list

Provides options to select between different
dashboards in the system.

4

Add widgets

Provides option to add widgets. You can drag to
move or resize the widget on the dashboard.

5

Sharing

Provides option to specify groups, users, and roles
for the dashboard.

6

Configuration

Provides the configuration pane to select a layout
to snap the widgets against or to modify a layout as
required.

7

Tabs

• Major Incidents Nearing Breach: Number of active
major incidents where the Major incident state is
Accepted and the response or resolution SLA has
reached 75% of the allotted time.
• Major Incidents Overdue: Number of active
major incidents where the Major incident state is
Accepted and the response or resolution SLA has
breached.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2512


<!-- page 2513 -->
UI component

Description

• Unassigned Major Incidents: Number of active
major incidents where Assigned to is empty.
• Open Major Incidents: Major incidents which are
open and has major incident state as Accepted.
• Major Incidents Opened Today: Major incident
state is Accepted and the major incident is created
on the current day.

Note: Major incidents opened for that day
includes both active and inactive incidents.
• Major Incidents Resolved Today: Major incidents
that are resolved on the current day and have the
state as Resolved.
• Open Major Incidents – Grouped: You can filter
these incidents based on Group by and Stacked
by.
• Open Major Incidents Older Than 7 Days –
Grouped: You can filter these incidents based on
Group by and Stacked by.
• Major Incidents by Priority and State
• Major Incidents by Priority and State Older than 7
Days
• Major Incidents Opened per Week
• Major Incidents Closed per Week

Major Incident Overview – Premium
Major Incident Overview – Premium provides the following additional functions:
• Process KPIs: Provides information on Active Major Incidents, Number of resolved major
incidents, Average resolution time of Major Incidents, and New Major Incidents Vs
Resolved.
• Interactive filters: Helps to filter incidents based on category, priority, assignment group, and
state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2513


<!-- page 2514 -->
Major Incident Overview – Premium dashboard

Related topics
Create and use dashboards
Major incident workbench

Reporting incidents
Service desk and other IT managers can use dashboards and reports to monitor and track
incident status and service levels.

Incident Overview
The Incident > Overview dashboard provides a quick glance at the current state of open
incidents. At the top, single score widgets enumerate the open incident statuses, such as
critical incidents, unassigned incidents, and overdue incidents. Charts in the dashboard group
incidents by factors such as priority and state. The incident overview is fully interactive and
configurable.

Incident reports
Various incident reports are available in the base system, and you can modify the existing
reports or create new ones. Navigate to Reports > View / Run and enter incident in the
search box to view all incident reports. Base system reports include the following:
• Basic bar or pie chart reports, such as incidents by assignment group, location, priority, or
state. These reports help you analyze a specific data point, for example, whether enough staff
is allocated to an assignment group.
• Time series reports, such as Incident Trend by Configuration Item. This report lets you
analyze closed incidents by configuration item (CI) to identify potential problems.
• Multidimensional reports, such as Incidents by Priority and State older than 30 Days. This
report can help you identify gaps in service levels. For example, if a high number of low-priority
incidents are still in New state after being open more than 30 days.

Incident metric definition
A metric measures and evaluates the effectiveness of IT service management processes.
The service desk can improve the incident management process using information gathered
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2514


<!-- page 2515 -->
within the platform. You can activate the Metric Definition plugin (com.glide.metrics) and define
the metrics to monitor within the system. With these metrics, and the information within the
database, it is possible to generate reports
that can be added to dashboards
or automatically
generated and distributed .
Using this information, it is possible to refine automatic rules such as the assignment rules,
service level agreements, or inactivity monitors to better suit the unique environment of the
service desk. Unnecessary incidents can be avoided by encouraging users to consult the
knowledge base before creating an incident. The related search results function in the Incident
form assists with this strategy.

Complimentary Performance Analytics for Incident Management
Complimentary Performance Analytics for Incident Management and aggregates data over time,
and is enabled by default for Incident Management. Complimentary Performance Analytics for
Incident Management provides an Incident Management dashboard with 15 indicators to help
you assess organizational performance. For more information, see Performance Analytics for
Incident Management .
A subscription to Performance Analytics also gives you access to In-form analytics. In-form
analytics integrate performance insights into Incident records so that users can access
important metrics in context and make better decisions.
Related topics
Creating reports

Legacy: Incident Management Platform Analytics Solutions
Platform Analytics Solutions and in-form analytics contain preconfigured dashboards. These
dashboards contain actionable data visualizations that help you improve your business
processes and practices.

Important:
Starting in Xanadu release, the Incident Management Platform Analytics Solutions
dashboards are deprecated. Users can use Incident management dashboard to view the
actionable data visualizations that help in improving the business processes and practices.
Platform Analytics data visualizations use Performance Analytics indicator data to show you data
over time, helping you analyze your business processes and identify areas of improvement. With
Platform Analytics Solutions, you can get value from Performance Analytics for your application
with minimal setup. You can always create your own objects as well.
The Platform Analytics Solution for Incident Management is available by default as part of
Complimentary Performance Analytics for Incident Management.
Related topics
Activate your Performance Analytics subscription
Legacy: ITIL dashboard
Use this dashboard to view, maintain, and track the tasks and incidents for operating the IT
service desk.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2515


<!-- page 2516 -->
Important:
Starting in Xanadu release, the ITIL dashboard is deprecated. Users can use IT Agent
dashboard for Service Operations Workspace to view, maintain, and track the tasks and
incidents for operating the IT service desk.
ITIL Dashboard

Access the ITIL dashboard
To access the ITIL dashboard, navigate to All > Self-Service > Dashboard. On the Dashboards
Overview, search for ITIL dashboard.

End user and roles
Required
role

End User

Description

IT Agent

Views, opens, updates, tracks, and closes incidents and tasks for
managing customer issues.

itil

IT Agent
Admin

Can perform all the activities of an IT agent. In addition, the admin can
also modify the data and layout.

itil_admin

Data visualizations
The dashboard includes the following visualizations:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2516


<!-- page 2517 -->
Title

Critical Tasks

Unassigned Tasks
Tasks assigned to me

Active Incidents older than 7
days
Incident SLA Breached
Incident SLAs at Risk

Type

Description

Single score (

)

Single score (

)

Single score (

)

Single score (

)

Single score (

)

Single score (

)

Total number of open critical
task records for which Priority
is set to 1.
Total number of open tasks
that are still not assigned.
Total number of tasks
assigned to the logged-user of
the dashboard.
Total number of active
incidents logged before seven
days.
Total number of incidents that
exceed its SLA.
Total number of active
incidents that have not yet
exceeded an SLA but have
elapsed 75% of the duration of
the SLA.

My Groups Work

List (

)

Outstanding work load (tasks)
of the logged-in user's group.

My Work

List (

)

The logged-in user's
outstanding work load (tasks).

Legacy: Incident Overview dashboard
Use this dashboard to view the status of the incidents for planning, prioritizing, and managing
customer issues.

Important:
Starting in Xanadu release, the Incident Overview dashboard is deprecated. Users can
use Incident management dashboard to view the status of the incidents for planning,
prioritizing, and managing customer issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2517


<!-- page 2518 -->
Incident Overview Dashboard

Access the Incident Overview dashboard
To access the Incident Overview dashboard, navigate to All > Incident > Overview.
Alternatively, navigate to All > Self-Service > Dashboard. On the Dashboards Overview, search
for Incident Overview dashboard.

End user and roles
End user

Description

IT Agent

Opens, views, updates, tracks,
and closes the incidents for
managing customer issues.

Required role

• itil
• sn_incident_read

Data visualizations
The dashboard includes the following visualizations:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2518


<!-- page 2519 -->
Title

Incidents Opened Today

Type

Description

Single score (

)

Total number of incidents
created on the current date.

Single score (

)

Total number of incidents that
are still not assigned.

Single score (

)

Total number of incidents that
exceed its SLA.

Single score (

)

Total number of incidents that
do not have a resolution date.

Incidents not updated for 7
days

Single score (

)

Open Incidents older than 30
Days

Single score (

)

Open Incidents-Grouped

Vertical bar (

Open Incidents older than 30
Days-Grouped

Horizontal bar (

)

Heatmap icon (

)

Incidents by Priority and State
Heatmap icon (
older than 30 Days

)

Unassigned Incidents
Overdue Incidents
Open Incidents

Incidents by Priority and State

Incidents per week

Area icon (

Total number of incidents that
were updated more than 7
days ago.
Total number of open
incidents that were created 30
days ago.
Total number of open
incidents grouped by priority.

)

)

Total number of open
incidents that were created
more than 30 days ago.
Total number of incidents
grouped by priority and state.
Total number of incidents
grouped by priority and state
that were created more than
30 days ago.
Total number of incidents
opened or closed in each
week.

Filters
The dashboard includes the following filters:

Name

Type

Description

Incident Priority

Choice list

Filter the report visualizations
based on the Priority of the
incident record.

Incident State

Choice list

Filter the report visualizations
based on the State of the
incident record.

Incident Assignment Group

Reference

Filter the report visualizations
based on the Assignment
group associated with the
incident record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2519


<!-- page 2520 -->
Name

Type

Description

Incident Category

Choice list

Filter the report visualizations
based on the Category of the
incident record.

Incident Opened

Date

Filter the report visualizations
based on the date when the
incident is created.

Note: This dashboard displays the incident-related information from the Overview tab of
the Incident Premium dashboard.
Legacy: Incident Management dashboard
The Incident Management dashboard lets you see recent trends in incident creation, duration,
and resolution. Use the information on this dashboard to spot problem areas and plan your
incident management strategy going forward.

Important:
Starting in Xanadu release, the Incident Management dashboard is deprecated. Users
can use Incident management dashboard to view the recent trends in incident creation,
duration, and resolution and plan the incident management strategy accordingly.
Tabs of the Incident Management dashboard

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2520


<!-- page 2521 -->
End user and roles
End user and goal

Required role

Incident Manager: Needs to know how the
incident management process is doing so
they can plan for the future.

itil

Indicators
Number of open incidents
Daily count of the number of incidents that do not have a resolution date. This
indicator is used as the basis of several other indicators on this dashboard.
Number of open incidents not updated in last 5 days
Daily count of the number of incidents last updated more than five days ago.
Number of open incidents not updated in last 30 days
Daily count of the number of incidents last updated more than 30 days ago.
Number of new incidents
Daily count of the number of incidents opened 'today.'
Number of resolved incidents
Daily count of indicators with State = Resolved.
Incident Backlog Growth
Tracks the increase or decrease in open incidents. The score is calculated
according to the formula [[Number of new incidents]] - [[Number of resolved
incidents]].
Average age of open incidents
The average age in days in which an incident has been open. The score is
calculated according to the formula [[Summed age of open incidents]]/([[Number of
open incidents]]*24).
% of new critical incidents
The percentage of new incidents filtered on the Priority breakdown with the
breakdown element 1 - Critical. The score is calculated according to the formula
( [[Number of new incidents > Priority = 1 - Critical]] / [[Number of new incidents]] ) *
100.
Average resolution time of resolved incidents
The average number of days it takes to resolve an incident, provided it is resolved.
The score is calculated according to the formula [[Summed duration of resolved
incidents]] / ([[Number of resolved incidents]] * 24).
The following indicators are not shown directly on the dashboard but are used in calculating
formulas:
• Summed age of open incidents
• Summed duration of resolved incidents

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2521


<!-- page 2522 -->
Breakdowns
• Category
• Priority
• Age
Legacy: Incident Premium dashboard
This dashboard uses Workbench widgets and other advanced Platform Analytics features to give
you all the information about the Incident process in one place.

Important:
Starting in Xanadu release, the Incident Premium dashboard is deprecated. Users can use
Incident management dashboard for Workbench widgets and other advanced Platform
Analytics features to know about the Incident process in one place.
Tabs of the Incident Premium dashboard

Access the Incident Premium dashboard
To access the Incident Premium dashboard, navigate to All > Self-Service > Dashboard. On the
Dashboards Overview, search for Incident Premium dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2522


<!-- page 2523 -->
End user and roles
End user

Description

IT Agent

Views the assigned work
and group work, reports, and
prioritize workload

Required role

• itil
• sn_incident_read
• pa_contributor
• pa_viewer

IT Manager

Views the group work and
reports and also can edit the
required data and dashboard
layout

• itil
• sn_incident_read
• pa_contributor
• pa_viewer
• pa_admin
• pa_power_user

Indicators
Number of open incidents
Daily count of the number of incidents that do not have a resolution date. This
indicator is used as the basis of several other indicators on this dashboard.
Number of new incidents
Daily count of the number of incidents opened 'today.'
Number of closed incidents
Daily count of indicators with State = Closed.
Number of resolved incidents
Daily count of indicators with State = Resolved.
Average age of open incidents
The average age in days in which an incident has been open. The score is
calculated according to the formula [[Summed age of open incidents]]/([[Number of
open incidents]]*24).
Average reassignment of open incidents
The average number of times currently open incidents have been reassigned. This
indicator is shown as 'Average re-assignment times' in the Process by State tab.
The score is calculated according to the formula [[Summed re-assignment of open
incidents]] / [[Number of open incidents]].
Average age of last update of open incidents
How long on average it has been since the last update to one of the currently open
incidents, in days. The score is calculated according to the formula [[Summed age
of last update of open incidents]] / ([[Number of open incidents]] * 24)
% of incidents not updated in last 5 days

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2523


<!-- page 2524 -->
The percentage of currently open incidents that have not been updated for the
last five days. The score is calculated according to the formula ( [[Number of open
incidents not updated in last 5 days]] / [[Number of open incidents]] ) * 100
% of incidents not updated in last 30 days
The percentage of currently open incidents that have not been updated for the
last 30 days. The score is calculated according to the formula ( [[Number of open
incidents not updated in last 30 days]] / [[Number of open incidents]] ) * 100
% of new critical incidents
The percentage of new incidents filtered on the Priority breakdown with the
breakdown element 1 - Critical. The score is calculated according to the formula
( [[Number of new incidents > Priority = 1 - Critical]] / [[Number of new incidents]] ) *
100.
Average close time of incidents
The average amount of time in days it takes to close an incident. The score is
calculated according to the formula [[Summed duration of closed incidents]] /
([[Number of closed incidents]] / 24)
% of incidents resolved without reassigning
The percentage of incidents with a State of Resolved that were never reassigned
from the first assignment group. The score is calculated according to the formula
[[Number of resolved incidents by first assigned group]] / [[Number of resolved
incidents]] * 100.
% of incidents closed by self-service
The percentage of incidents with State = Closed and Close code = Closed/
Resolved by Caller. The score is calculated according to the formula [[Number of
incidents closed by self-service]] / [[Number of closed incidents]] * 100.
% of open incidents reassigned at least once
The percentage of incidents that are open and that have been transferred at least
once. The score is calculated according to the formula [[Number of reassigned open
incidents]] / [[Number of open incidents]] * 100
% of incidents resolved same day opened
The percentage of incidents with State = Resolved where the day in the Resolved
field is the same as the day in the Opened field. The score is calculated according
to the formula [[Number of incidents resolved on the same day opened]] / [[Number
of resolved incidents]] * 100.
% of incidents not solved
The percentage of closed incidents where Close code = Not Solved (Not
Reproducible) or Not Solved (Too Costly). The score is calculated according to the
formula [[Number of incidents not solved]] / [[Number of closed incidents]] * 100.
The following indicators are not shown directly on the dashboard but are used in calculating
formulas:
• Summed age of open incidents
• Summed re-assignment of open incidents
• Summed age of last update of open incidents
• Number of open incidents not updated in last 5 days
• Number of open incidents not updated in last 30 days
• Summed duration of closed incidents
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2524


<!-- page 2525 -->
• Number of resolved incidents by first assigned group
• Number of incidents closed by self-service
• Number of reassigned open incidents
• Number of incidents resolved on the same day opened
• Number of incidents not solved

Breakdowns
• Priority
• Category
• Assignment Group
• State

Data visualizations
Title

Incidents Opened Today

Type

Description

Single score (

)

Total number of incidents
created on the current date.

Single score (

)

Total number of incidents that
are still not assigned.

Single score (

)

Total number of incidents that
exceed its SLA.

Single score (

)

Total number of incidents that
do not have a resolution date.

Incidents not updated for 7
days

Single score (

)

Open incidents older than 30
days

Single score (

)

Open Incidents - Grouped

Vertical bar (

Open incidents older than 30
days - Grouped

Horizontal bar (

)

Heatmap icon (

)

Incidents by Priority and State
Heatmap icon (
older than 30 days

)

Unassigned Incidents
Overdue Incidents
Open Incidents

Incidents by Priority and State

Incidents per week

Area icon (

Total number of incidents that
were updated more than 7
days ago.
Total number of open
incidents that were created 30
days ago.
Total number of open
incidents grouped by priority.

)

)

Total number of open
incidents that were created
more than 30 days ago.
Total number of incidents
grouped by priority and state.
Total number of incidents
grouped by priority and state
that were created more than
30 days ago.
Total number of incidents
opened or closed in each
week.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2525


<!-- page 2526 -->
Title

Open Incidents older than 30
days by Assignment Group
and State

Type

Description

Heatmap icon (

)

Heatmap icon (

)

Open Incidents where
assignee is not active

Heatmap icon (

)

Open Incidents with closed
Problem

Heatmap icon (

)

Open Incidents Not
Updated In Last 30 Days by
Assignment Group and State

Total number of incidents
opened more than 30 days
ago and that are grouped by
assignment group and state of
the incident.
Total number of open
incidents updated more than
30 days ago and that are
grouped by assignment group
and state of the incident.
Total number of incidents
where the user in the
Assigned to field have an
inactive status.
Total number of open
incidents that have an
associated problem with
closed status.

Filters
The dashboard includes the following filters:

Name

Type

Description

Incident Priority

Choice list

Filter the report visualizations
based on the Priority of the
incident record.

Incident State

Choice list

Filter the report visualizations
based on the State of the
incident record.

Incident Assignment Group

Reference

Filter the report visualizations
based on the Assignment
group associated with the
incident record.

Incident Category

Choice list

Filter the report visualizations
based on the Category of the
incident record.

Incident Opened

Date

Filter the report visualizations
based on the date when the
incident is created.

Legacy: Incident Daily 7d - 28d dashboard
View the last 28 days of incidents as raw trends, as a 7-day running average, or as a 28-day
running average. Filter the scores by assignment groups or by the category of incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2526


<!-- page 2527 -->
Important:
Starting in Xanadu release, the Incident Daily 7d - 28d dashboard is deprecated. Users can
use Incident management dashboard to view the last 28 days of incidents as raw trends, as
a 7-day running average, or as a 28-day running average and filter the scores by assignment
groups or incident.
Incident Daily tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2527


<!-- page 2528 -->
Incident 7d tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2528


<!-- page 2529 -->
Incident 28d (lower part)

End user and goal

Required role

Incident Manager: Needs to know how the
incident management process is doing so
they can plan for the future.

itil

Indicators
Number of open incidents
Daily count of the number of incidents that do not have a resolution date. This
indicator is used as the basis of several other indicators on this dashboard.
Number of resolved incidents
Daily count of indicators with State = Resolved.
Average resolution time of resolved incidents
The average number of days it takes to resolve an incident, provided it is resolved.
The score is calculated according to the formula [[Summed duration of resolved
incidents]] / ([[Number of resolved incidents]] * 24).
Number of open incidents not updated in last 5 days
Daily count of the number of incidents last updated more than five days ago.
Number of open incidents not updated in last 30 days
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2529


<!-- page 2530 -->
Daily count of the number of incidents last updated more than 30 days ago.

Breakdowns
You can apply breakdown elements on this dashboard to all widgets
simultaneously. Above the chart in the upper left, select either Groups or
Incident.Category. You can then select one or more elements and they will apply to all

widgets.
Legacy: Open Incidents Age Monitor dashboard
View average age and assignment times and breakdown incidents in different age buckets.

Important:
Starting in Xanadu release, the Open Incidents Age Monitor dashboard is deprecated.
Users can use Incident management dashboard to view the average age and assignment
times and breakdown incidents in different age buckets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2530


<!-- page 2531 -->
Open Incident Age Monitor

End user and roles
End user and goal

Required role

Incident Manager: Needs to know how the
incident management process is doing so
they can plan for the future.

itil

Indicators
Number of open incidents
Daily count of the number of incidents that do not have a resolution date. This
indicator is used as the basis of several other indicators on this dashboard.
Average age of open incidents
The average age in days in which an incident has been open. The score is
calculated according to the formula [[Summed age of open incidents]]/([[Number of
open incidents]]*24).
Average reassignment of open incidents
The average number of times currently open incidents have been reassigned. This
indicator is shown as 'Average re-assignment times' in the Process by State tab.
The score is calculated according to the formula [[Summed re-assignment of open
incidents]] / [[Number of open incidents]].
Average age of last update of open incidents
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2531


<!-- page 2532 -->
How long on average it has been since the last update to one of the currently open
incidents, in days. The score is calculated according to the formula [[Summed age
of last update of open incidents]] / ([[Number of open incidents]] * 24)
The following indicators are not shown directly on the dashboard but are used in calculating
formulas:
• Summed age of open incidents
• Summed re-assignment of open incidents
• Summed age of last update of open incidents

Breakdowns
• Priority
• Category
• Assignment Group
• State
Legacy: Open Incident State Monitor dashboard
View average age and number of reassignments and breakdown incidents in the New, In
Progress, and On Hold states.

Important:
Starting in Xanadu release, the Open Incident State Monitor dashboard is deprecated.
Users can use Incident management dashboard to view the average age and number of
reassignments and breakdown incidents in the New, In Progress, and On Hold states.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2532


<!-- page 2533 -->
Open Incident State Monitor

End user and roles
End user and goal

Required role

Incident Manager: Needs to know how the
incident management process is doing so
they can plan for the future.

itil

Indicators
Number of open incidents
Daily count of the number of incidents that do not have a resolution date. This
indicator is used as the basis of several other indicators on this dashboard.
Average age of open incidents
The average age in days in which an incident has been open. The score is
calculated according to the formula [[Summed age of open incidents]]/([[Number of
open incidents]]*24).
Average reassignment of open incidents
The average number of times currently open incidents have been reassigned. This
indicator is shown as 'Average re-assignment times' in the Process by State tab.
The score is calculated according to the formula [[Summed re-assignment of open
incidents]] / [[Number of open incidents]].
Average age of last update of open incidents
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2533


<!-- page 2534 -->
How long on average it has been since the last update to one of the currently open
incidents, in days. The score is calculated according to the formula [[Summed age
of last update of open incidents]] / ([[Number of open incidents]] * 24)
% of incidents not updated in last 5 days
The percentage of currently open incidents that have not been updated for the
last five days. The score is calculated according to the formula ( [[Number of open
incidents not updated in last 5 days]] / [[Number of open incidents]] ) * 100
The following indicators are not shown directly on the dashboard but are used in calculating
formulas:
• Summed age of open incidents
• Summed re-assignment of open incidents
• Summed age of last update of open incidents
• Number of open incidents not updated in last 5 days

Breakdowns
• Priority
• Category
• Assignment Group
• State
Legacy: Open Incidents Reports dashboard
View the current information about open incidents as a list, or as a heatmap or pivot table
organized by breakdown.

Important:
Starting in Xanadu release, the Open Incidents Reports dashboard is deprecated. Users
can use Incident management dashboard to view the current information about open
incidents as a list, or as a heatmap or pivot table organized by breakdown.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2534


<!-- page 2535 -->
Tabs of the Open Incidents Reports dashboard

End user and roles
End user and goal

Required role

Benefits

Title

Type

Description

Open Incidents List

List

List of all incident records for
open incidents

Interactive filters
• Priority
• Category
• Assignment Group
• State
• Age

Data visualizations

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2535


<!-- page 2536 -->
Title

Type

Description

Open Incidents Pivot

Pivot

Table that lets you
explore open incidents
by combinations of state,
assignment group, category,
priority, and age.

Open Incidents Heatmap

Heatmap

Heatmap that lets you explore
the number of open incidents
by combinations of state,
assignment group, category,
priority, and age.

Legacy: Incident SLA Management Platform Analytics Solutions
Platform Analytics Solutions contain preconfigured dashboards. These dashboards contain
actionable data visualizations that help you improve your business processes and practices.

Important:
Starting in Xanadu release, the Incident SLA Management Platform Analytics Solutions
dashboards are deprecated. Users can use Incident management dashboard to view the
actionable data visualizations that help in improving the business processes and practices.
Platform Analytics data visualizations use Performance Analytics indicator data to show you data
over time, helping you analyze your business processes and identify areas of improvement. With
Platform Analytics Solutions, you can get value from Performance Analytics for your application
with minimal setup. You can always create your own objects as well.
To enable the solution for Incident SLA Management, an admin can navigate to Performance
Analytics > Guided Setup. Click Get Started then scroll to the section for Incident SLA
Management. The guided setup takes you through the entire setup and configuration process.
The dashboards in this content pack are inactive when installed. Complete configuration and
run data collection jobs before you activate these dashboards. You can activate dashboards in
Dashboard Properties, accessible from the context menu. You have to assign an owner to the
dashboard to activate it.

Inactive dashboards
Some dashboards in this content pack are inactive when installed. Complete configuration and
run data collection jobs before you activate these dashboards. You can activate dashboards in
Dashboard Properties, accessible from the context menu. You have to assign an owner to the
dashboard to activate it.
Related topics
Activate your Performance Analytics subscription
Legacy: Incident SLA Management dashboard
See how well the incidents that are subject to a Service Level Agreement meet the deadlines of
those SLAs.

Important:
Starting in Xanadu release, the Incident SLA Management dashboard is deprecated. Users
can use Incident management dashboard to view whether the incidents that are subject to
a Service Level Agreement, meet the deadlines of those SLAs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2536


<!-- page 2537 -->
The dashboard title indicates that it is inactive because you activate the solution after
configuration and data collection.
Tabs of the Incident SLA Management dashboard

End user and roles
End user and goal

Required role

Service Level Manager who is responsible
for seeing that incident resolution meets the
service level agreements.

sla_manager, and pa_viewer for the Incident
SLA Assignment tab

Indicators
Number of open and overdue incidents
The number of open incidents with the following characteristics:
• Related to an SLA task of type 'SLA' (contract_sla.type)
• Not in stage 'Cancelled' (task_sla.stage)
• The amount of time taken to work on the task is over the SLA limit, determined by
having an elapsed percentage (task_sla.percentage) value more than 100%.
Number of open incidents that should be resolved in time
The number of open incidents with the following characteristics:
• Related to an SLA task of type 'SLA' (contract_sla.type)
• Not in stage 'Cancelled' (task_sla.stage)
% open and overdue incidents
The percentage of open incidents that are overdue. The score is calculated
according to the formula ( [[Number of open and overdue incidents]] / [[Number of
open incidents that should be resolved in time]] ) * 100.
Number of incidents resolved in time
The number of SLA tasks related to an incident with the following characteristics:
• The resolution date (incident.resolved_at) is the date that the score is collected.
• The type is 'SLA' (contract_sla.type).
• The stage is not 'cancelled' (task_sla.stage).
• The amount of time taken to close the task is under the SLA limit, determined by
having an elapsed percentage (task_sla.percentage) value less than or equal to
100%.
Number of incidents resolved that should have been resolved in time
Number of incidents resolved that should have been resolved in time is measured
daily as unit .
The goal for this indicator is to maximize.
The score is the COUNT DISTINCT on the data source Incidents.SLA.Resolved,
which is using the table Incident SLA [incident_sla] with the following conditions:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2537


<!-- page 2538 -->
• The resolution date (incident.resolved_at) is the date that the score is collected.
• The type is 'SLA' (contract_sla.type).
• The stage is not 'cancelled' (task_sla.stage).
% incidents resolved in time
The percentage of resolved incidents that were resolved in time. The score is
calculated according to the formula ( [[Number of incidents resolved in time]] /
[[Number of resolved incidents that should be resolved in time]] ) * 100.
Average Resolution Time In Hours For Resolved Incident SLA Tasks
The score is calculated according to the following formula: [[Summed duration time
of resolved incident SLA tasks in hours]]/[[Total resolved Incident SLA tasks]].
Total resolved Incident SLA tasks
The score is the COUNT on the data source Incidents.SLA.Resolved, which is using
the table Incident SLA [incident_sla] with the following conditions:
• The resolution date (incident.resolved_at) is the date that the score is collected.
• The type is 'SLA' (contract_sla.type).
• The stage is not 'cancelled' (task_sla.stage).
Number of incident assignments responded to in time
The number of SLA tasks related to an incident with the following characteristics:
• The close date (task_sla.end_time) is the date that the score is collected.
• The type is 'OLA' (contract_sla.type), meaning that it is a response task.
• The stage is not 'cancelled' (task_sla.stage).
• The amount of time taken to close the task is under the SLA limit, determined by
having an elapsed percentage (task_sla.percentage) value less than or equal to
100%.
Number of incident assignments that should have been responded to in time
The number of SLA tasks related to an incident with the following characteristics:
• The close date (task_sla.end_time) is the date that the score is collected.
• The type is 'OLA' (contract_sla.type), meaning that it is a response task.
• The stage is not 'cancelled' (task_sla.stage).
Number of open and overdue incident assignments
The number of SLA tasks related to an incident with the following characteristics:
• The type is 'OLA' (contract_sla.type), meaning that it is a response task.
• The stage is not 'cancelled' (task_sla.stage).
• The amount of time taken to work on the task is over the SLA limit, determined by
having an elapsed percentage (task_sla.percentage) value more than 100%.
Number of open incident assignments that should be responded to in time
The number of open incidents related to an SLA task with the following
characteristics:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2538


<!-- page 2539 -->
• The type is 'OLA' (contract_sla.type), meaning that it is a response task.
• The stage is not 'cancelled' (task_sla.stage).
• The response task is still open.
% incident assignments responded to in time
The percentage of response tasks that were responded to within the SLA limit.
The score is calculated according to the following formula: ( [[Number of incident
assignments responded to in time]] / [[Number of incident assignments that should
have been responded to in time]] ) * 100.
% open and overdue incident assignments
The percentage of open incident assignments that are overdue according to the
SLA limit. The score is calculated according to the following formula: ( [[Number of
open and overdue incident assignments]] / [[Number of open incident assignments
that should be responded to in time]] ) * 100.
Summed duration time of resolved incident SLA tasks in hours
This indicator sums the results of a script run on the Incident SLA [incident_sla]
table that calculates the time it took for an incident SLA task to be resolved.
This indicator is used to calculate formulas but is not displayed directly on the
dashboard:

Breakdowns
• State
• Priority
• Category
• Assignment Group
• Task SLA Breached Status
Legacy: Overdue by State dashboard
This dashboard lets you see incidents that are overdue according to an SLA, divided by the New,
In Progress, and On Hold states.

Important:
Starting in Xanadu release, the Overdue by State dashboard is deprecated. Users can use
Incident management dashboard to view the incidents that are overdue according to an
SLA, divided by the New, In Progress, and On Hold states.
You use this dashboard to view the average age of the incidents, the average number of times
they have been reassigned, and how long on average since the last update. You can also group
them by standard breakdowns like Priority and Assignment Group. This dashboard is inactive by
default. Before using this dashboard, a Performance Analytics administrator or power user must
open the Dashboard Properties, assign an owner, and select Active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2539


<!-- page 2540 -->
End user and roles
End user and goal

Required role

Service Level Manager who is responsible
for seeing that incident resolution meets the
service level agreements.

sla_manager

Indicators
Number of open and overdue incidents
The number of incidents on the Incident.SLA.Open indicator source with the
following characteristics:
• Related to an SLA task of type 'SLA' (contract_sla.type)
• Not in stage 'Cancelled' (task_sla.stage)
• The amount of time taken to work on the task is over the SLA limit, determined by
having an elapsed percentage (task_sla.percentage) value more than 100%.
Average age open and overdue incidents
The score is calculated according to the following formula: [[Summed age of open
and overdue incidents]] / [[Number of open incidents that should be resolved in
time]]
Average reassignments of open and overdue incidents
The score is calculated according to the following formula: [[Summed
reassignments of open and overdue incidents]] / [[Number of open and overdue
incidents]]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2540


<!-- page 2541 -->
Average age of updated since of open and overdue incidents
The average length of time in days since the last update of open, overdue incidents.
The score is calculated according to the following formula: [[Summed age of
updated since of open and overdue incidents]] / [[Number of open and overdue
incidents]] / 24
The following indicators are used to calculate formulas but are not displayed directly on the
dashboard:
Number of open incidents that should be resolved in time
The number of open incidents with the following characteristics:
• Related to an SLA task of type 'SLA' (contract_sla.type)
• Not in stage 'Cancelled' (task_sla.stage)
Summed age of open and overdue incidents
Summed age of open incidents related to an SLA task with the following
characteristics:
• Related to an SLA task of type 'SLA' (contract_sla.type)
• Not in stage 'Cancelled' (task_sla.stage)
• The amount of time taken to work on the task is over the SLA limit, determined by
having an elapsed percentage (task_sla.percentage) value more than 100%.
Summed age of updated since of open and overdue incidents
Sum of hours since the last update of all open and overdue incidents.
Summed reassignments of open and overdue incidents
The sum of the Reassignment Count field of all open and overdue incidents.

Breakdowns
• State
• Priority
• Age
• Assignment Group
• SLA
Legacy: Overdue by Age dashboard
This dashboard lets you see incidents that are overdue according to an SLA, divided by age
buckets. You can see the average age of the incidents, the average number of times they have
been reassigned, and how long on average since the last update. You can also group them by
standard breakdowns like Priority and Assignment Group.

Important:
Starting in Xanadu release, the Overdue by Age dashboard is deprecated. Users can use
Incident management dashboard to view the incidents that are overdue according to SLA,
divided by age buckets.
This dashboard is inactive by default. Before using this dashboard, a Performance Analytics
administrator or power user must open the Dashboard Properties, assign an owner, and select
Active.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2541


<!-- page 2542 -->
End user and roles
End user and goal

Required role

Service Level Manager who is responsible
for seeing that incident resolution meets the
service level agreements.

sla_manager

Indicators
Number of open and overdue incidents
The number of incidents on the Incident.SLA.Open indicator source with the
following characteristics:
• Related to an SLA task of type 'SLA' (contract_sla.type)
• Not in stage 'Cancelled' (task_sla.stage)
• The amount of time taken to work on the task is over the SLA limit, determined by
having an elapsed percentage (task_sla.percentage) value more than 100%.
Average age open and overdue incidents
The score is calculated according to the following formula: [[Summed age of open
and overdue incidents]] / [[Number of open incidents that should be resolved in
time]]
Average reassignments of open and overdue incidents
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2542


<!-- page 2543 -->
The score is calculated according to the following formula: [[Summed
reassignments of open and overdue incidents]] / [[Number of open and overdue
incidents]]
Average age of updated since of open and overdue incidents
The average length of time in days since the last update of open, overdue incidents.
The score is calculated according to the following formula: [[Summed age of
updated since of open and overdue incidents]] / [[Number of open and overdue
incidents]] / 24

Breakdowns
• State
• Priority
• Age
• Assignment Group
• SLA
Legacy: Overdue Reports dashboard
See the currently open incidents that are subject to an SLA. You can view a list of the incidents or
see how they break down in a heatmap or a pivot table.

Important:
Starting in Xanadu release, the Overdue Reports dashboard is deprecated. Users can use
Incident management dashboard to view the currently open incidents that are subject to an
SLA and list of the incidents or see how they break down in a heatmap or a pivot table.
This dashboard is inactive by default. Before using this dashboard, a Performance Analytics
administrator or power user must open the Dashboard Properties, assign an owner, and select
Active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2543


<!-- page 2544 -->
Overdue List tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2544


<!-- page 2545 -->
Overdue Pivot tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2545


<!-- page 2546 -->
Overdue Heatmap tab

End user and roles
End user and goal

Required role

Service Level Manager who is responsible
for seeing that incident resolution meets the
service level agreements.

sla_manager

Data visualizations
Title

Type

Overdue list

List (

Overdue pivot

Pivot (

Overdue heatmap

Description

List of all incident records for
overdue open incidents

)

Table letting you explore the
number of open and overdue
incidents by any combination
of state, assignment group,
category, and priority, for any
age bucket or for all ages.

)

Heatmap (

)

Heatmap letting you explore
the number of open and
overdue incidents by
any combination of state,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2546


<!-- page 2547 -->
Title

Type

Description

assignment group, category,
and priority, for any age
bucket or for all ages.

Agentic AI in Incident Management
Use the ITSM Incident Management agentic workflows to manage, resolve and close incidents
and incident tasks autonomously.

Important:
To access the agentic workflow for Incident Management, make sure that you install the
following applications:
1. Now Assist for IT Service Management (ITSM) (sn_itsm_gen_ai) plugin.
2. Incident Management application. For more information, see Configuring Incident
Management.

Note:
• Before you begin, review these Important considerations for using Now Assist for IT
Service Management (ITSM) agentic AI.
• For all available ITSM Agentic AI applications, see Use agentic AI in Now Assist for
IT Service Management (ITSM).
The Wrap-up and resolve incident agentic workflow enables users to generate resolution notes
and select resolution code to resolve an incident. Attach the Knowledge Base (KB) article or
create a draft Knowledge article. Attach a Known Error (KE) article to the incident record when
the resolution code is selected as Known Error. Update duplicate incident information when the
resolution code is Duplicate.
The agentic workflow uses the following AI agents:
• Incident resolution details AI agent
• Incident knowledge article AI agent
• Incident known error article AI agent
For more information, see IT Service Management AI agent collection Wrap-up and resolve
incident agentic workflow.

Reference section for Incident Management
Reference sections provide additional information about components installed with Incident
Management.

Domain separation and Incident Management
Domain separation is supported in Incident Management. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2547


<!-- page 2548 -->
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

Incident Management overview
• The goal of Incident Management is to restore normal service operation as quickly as possible,
while minimizing impact to business operations and ensuring quality is maintained.
• Typically, end users log incidents when a service they are using is impacted or not available.
ITIL / Fulfiller users in your organization classify these incidents, route them as appropriate and
work on resolving the incident.
• The incident and incident task tables support domain separation. Therefore, a Fulfiller sees
only incidents or incident tasks that have been created within the (tenant) domain that they
belong to.

How domain separation works in Incident Management
Fulfillers see only incidents and incident tasks that have been created within the (tenant) domain
that they belong to.

Incident Management domain separated tables
• Incident [incident]
• Incident Task [incident_task]

Incident Management use cases
• An ESS user belonging to “Initech” domain, creates an incident. Only those ITIL users
belonging to “Initech” domain or global domain can see this incident.
• An ITIL user belonging to a parent domain can see incidents of all its child domains as well.
• An ITIL user belonging to a specific domain can create incidents only on behalf of the domains
that they have access to.
• An ITIL user can associate child incidents only of those domains that they have access to.
• If a user has access to multiple domains, the domain specified on the current record drives the
functionality of that record and reference fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2548


<!-- page 2549 -->
Related topics
Domain separation for service providers

Incident Management data model
Learn about the Incident Management application by viewing the data model diagram. This
diagram shows the relationships between the tables within the application and provides an
overall picture of how the Incident Management application operates.

Data model
The following diagram shows the tables and their relationships within the Incident Management
application.
The flexibility of the Incident Management platform provides you with a data model that you can
extend and leverage to fit your needs.

Incident Management plugins
Many of the Incident Management plugins are activated in the base system. Others, you can
activate when you are ready to use them. Some plugins include demo data.
Incident Management Best Practice – San Diego
The Incident management best practice -San Diego plugin
(com.snc.best_practice.incident.sandiego) enhances the integration and workflows for incidents
and problems. This plugin enables you to update the progress of the reported incident and
problem to the agent and caller.

Requirements and dependencies
Install these additional plugins to use the Incident management best practice — San Diego
plugin:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2549


<!-- page 2550 -->
• Problem Management Best Practice — Madrid plugin (com.snc.best_practice.problem.madrid).
For more information on this plugin and the activation process, see Activate Problem
Management Best Practice — Madrid.
• Problem Management Best Practice — Madrid – Knowledge Integration plugin
(com.snc.best_practice.problem.madrid.knowledge).
For more information on this plugin and the activation process, see Activate Problem
Management Best Practice — Madrid — Knowledge Integration.
• Problem Management Best Practice – Jakarta plugin (com.snc.best_practice.problem.jakarta).
This plugin is not installed by default for zBoot customers. Install the plugin manually. This
plugin is responsible for known error article behavior in the incident or problem workflow. For
more information on this plugin and the activation process, see Activate Problem Management
Best Practice — Jakarta.
All the plugins except for com.snc.best_practice.problem.jakarta are activated by default for the
new customers. Existing or upgrading customers must request the plugin or install the plugin
manually. For more information, see Request a plugin .

Impacts on upgrading customers
For the existing or upgrade customers, if they install the Incident management best practice
-San Diego (com.snc.best_practice.incident.sandiego) plugin, the existing configured workflows
might get changed. If the customer wants to install the plugin, they must install the plugin in the
sub-production or testing environment and test the workflows before using the plugin in the
production environment to ensure the desired workflow is maintained.
When the plugin is installed:
• New options are populated along with the old (existing or already configured) options.
• These files are affected:
◦ Business rule: Close Code
◦ ML Solution Definition: Similar Resolved Incidents -> The Filter must be updated
◦ Script Action: Update Incident when Problem closes -> Update the resolution code to proper
choice

Note: Files are overridden if no customizations or configurations are done. In such case,
new options are populated.
• Customer must manually remove the old (existing) options. If customer has configured a
combination of the old (existing) and new options, then the necessary workflows must be
updated.

Enhancements
This plugin enhances the incident and problem workflow to support the following activities:
Create a problem
When you create a problem from an existing incident, the incident State is set to
On Hold and the Reason is set to Awaiting Problem until the linked problem is
resolved.
Attach a Known Error (KE) article
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2550


<!-- page 2551 -->
• When you associate a Known Error (KE) article to the incident, and if the KE article
has a problem associated to it, then the problem also gets associated with the
incident.
• When you select Known error as Resolution code to resolve an incident but
the incident contains no associated KE articles, then the system prompts you to
select a KE article.
Communicate Workaround
If a workaround is added to the problem, and if you click the Communicate
Workaround related link, then the following occurs:
• The workaround is copied to the Work notes field. A notification is sent to the
users listed in the Assigned to and Work notes list fields. The notification is sent
only when the incident state is New, On Hold, or In Progress.
• The workaround is copied to the Additional Comments field. If Known error is
selected from the Resolution code field of the incident, then a notification is sent
to the caller and to the users listed in the Assigned to and Watch list fields.
Communicate Fix
If a fix is added to a problem and if you click the Communicate Fix related link, then
the following occurs:
• The fix is copied to the Work Notes field.
• A notification is sent to the users listed in the Assigned to and Work notes list
fields of the problem record. The notification is sent only when the incident state
is New, On Hold, or In Progress.
Activate Incident Management Best Practice – San Diego
Activate the Incident Management Best Practice — San Diego plugin
(com.snc.best_practice.incident.sandiego) if you have the admin role. This plugin includes demo
data and activates related plugins if they are not already active.

Before you begin

Role required: admin

About this task

The Incident Management Best Practice – San Diego plugin modifies the problem and incident
management workflows to enhance the customer experience.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2551


<!-- page 2552 -->
Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Activate Incident
You can activate the Incident plugin (com.snc.incident) if you have the admin role. This plugin
includes demo data and activates related plugins if they are not already active.

Before you begin

Role required: admin

About this task

Incident plugin activates these related plugins if they are not already active.
Plugins for Incident
Plugin

Description

Service Management Basics

Provides the baseline for Service Management
functionality.

[com.snc.service]
Incident Management Notification
[com.snc.incident_notification]
Incident Overview Homepage

Provides notification functionality for Incident
Management.
Incident Overview Homepage

[com.glideapp.report.itsm.incident.overview]

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
List of Zurich plugins

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2552


<!-- page 2553 -->
Components installed with the Incident plugin
Several types of components are installed with activation of the Incident plugin in Incident
Management.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Demo data is available for this feature.

Roles installed
Role title [role name]

Description

Incident task assigned user

Provides read and write operation privileges to an incident task
record for an agent when the record is assigned to the agent.
[sn_incident_task_assigned_user]

Note:
• You must install and activate the ITSM Roles plugin
(com.snc.itsm.roles) to use the base system ACLs
related to this role.
• When the ITSM Roles plugin (com.snc.itsm.roles)
isn't installed and activated on the instance,
you can still use the Assigned incident user role
[sn_incident_task_assigned_user] but with the following
limitations:
◦ The agent has the read access to the assigned
incident task record except for the Work notes and
Work notes list fields.
◦ The agent has the write access to the assigned task
record except for the following fields:
▪ Assigned to
▪ Short description
▪ Description
▪ Priority
▪ State
▪ Work notes
▪ Work notes list

Tables installed
Table

Description

Incident

The Incident table is extended from the Task [task] table. It inherits all the fields,
rules, and policies from the Task table.

[incident]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2553


<!-- page 2554 -->
Request Incident Management — Core
Incident Management - Core plugin (com.snc.incident_management) is a new incident state
model that includes demo data and activates related plugins if they are not already active.

Before you begin

Role required: admin

About this task

Incident Management - Core (com.snc.incident_management) is available by default in new
instances. Customers upgrading from Geneva or earlier versions must request the plugin. For
more information, see KB0564465 .

Note: If the new state model is installed on upgraded instances, then ensure that the old
states are mapped to the new ones. The mapping is especially important if you have made
customizations, implemented workflows, added script includes, and added business rules.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
3. On the Activate Plugin form, provide the following information.
Activate Plugin form
Field

Description

What is your target instance

Select the instance that you want to activate
the plugin on.

Which plugin would you like to activate

Select the name of the plugin to activate.

Note: If the system doesn't list the
plugin you want or if you're activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

Select Maintenance Date and Time

Select the date and time to activate the
plugin.

Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.
Related topics
List of Zurich plugins
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2554


<!-- page 2555 -->
Request ITSM Roles — Incident Management
Request the ITSM Roles plugin (com.snc.itsm.roles) to activate the ITSM Roles — Incident
Management plugin (com.snc.itsm.roles.incident_management) to gain more control over the
access that different service desk agents, technicians, and managers have within your Incident
Management process.

Before you begin

Role required: admin

About this task

The ITSM Roles plugin (com.snc.itsm.roles) includes an additional security model. The security
model provides more granular roles across ITSM applications as well as within them, allowing
you flexibility in setting up access controls. The ITSM Roles plugin is available by default in new
instances. Users upgrading from Madrid or earlier versions must request the plugin.
Plugins for ITSM Roles
Plugin

Adds roles

Business Stakeholder

business_stakeholder

[com.snc.business_stakeholder]

Note: The business_stakeholder
role contains the
sn_incident_read,
sn_problem_read,
sn_change_read,
sn_request_read, and
approver_user roles.

ITSM Roles — Incident Management
[com.snc.itsm.roles.incident_management]

• sn_incident_read

ITSM Roles — Problem Management
[com.snc.itsm.roles.problem_management]

• sn_problem_read

ITSM Roles — Change Management
[com.snc.itsm.roles.change_management]

• sn_change_read

• sn_incident_write

• sn_problem_write

• sn_change_write

ITSM Roles — Request Management
• sn_request_read
[com.snc.service_management.roles.request_management]

Note: As there are future
updates expected for the
sn_request_read role, do not
assign it to users without the
business_stakeholder role.
• sn_request_write

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2555


