# Zurich IT Service Management — Service Operations Workspace for ITSM

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 3241–3390 of 3857 | Part 3 of 4

Sections: Service Operations Workspace for ITSM (p2941); Explore (p2942); Configure (p2960); Customize (p3179); Operate (p3199); Manage (p3271); Optimize (p3389); Reference (p3403)

---

<!-- page 3241 -->
DEX view in the Investigate tab

The Investigate tab displays a DEX UI experience dashboard, if the selected CI matches the
following conditions:
• DEX is installed and activated in the instance.
• CI device is cmdb_ci_computer class.
• Matches DEX related rule from the Investigate CI Experience Rules
(sn_sow_investigate_ci_ux_rule) table.
• CI is supported by DEX.
For more information on DEX, see Digital End-User Experience.

SO view in the Investigate tab

The Investigate tab displays SO UI experience dashboard, if the selected CI matches the
following conditions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3241


<!-- page 3242 -->
• CI is cmdb_ci_service class.
• CI is configured with SO data mapping. For more information, see Create and manage data
mappings .
• Matches SO related rule from the Investigate CI Experience Rules
(sn_sow_investigate_ci_ux_rule) table.
The selected CI is retrieved from the following tables:
• task_ci
• task_cmdb_ci_service
• task_service_offering
The investigate tab displays SO dashboard containing vendor generated metrics from sources
such as AWS, Datadog, New Relic, Dynatrace and so on that are relevant to the service.

Note: The dashboard that appears on the Investigate tab is the same as the Overview
dashboard in Service Observability. If the service has no data mapping, an empty state is
displayed.
For more information on SO, see Service Observability

.

Extension points for batch processing in Service Operations Workspace
Use the implementation extension point to create implementations and execute batch
processing to update multiple records, which improves the performance of the system.
The Multiple Record Associator (MRA) component enables you to create implementation
extension points for batch processing of multiple records.
To view the extension points that are available by default, navigate toAll > System Extension
Points > Scripted Extension Points. You can select the Create implementation option to create
an implementation extension point.
When you have multiple records to update, a business rule executes and updates once for each
record, which can affect the performance of the system. Instead of executing the business rule
for each record, you can use the RelatedListIncidentItemUpdateHandler script
include to execute batch processing for updating multiple records.
You can use the RelatedListIncidentItemUpdateHandler script include to update
multiple records with batch processing. For example, you could use this script include when
associating and updating multiple child incidents with a parent incident.
The RelatedListIncidentItemUpdateHandler script include contains the
global.RelatedListItemUpdateHandler implementation extension point and is used
when batch processing multiple records on a related list.
The extension point used in the related_list_edit_helper script include uses API to facilitate
invoking custom code. This extension point overrides the execution of the business rule to
ensure that the implementation extension point is executed when updating multiple records
instead of the business rule. You can also add a business rule that must be overridden. When
multiple records are updated, this script include is triggered, and batch processing occurs that
bypasses that business rule.
The RelatedListIncidentItemUpdateHandler script include contains the following
functions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3242


<!-- page 3243 -->
• Initialize – Executes before multiple records are updated.
• Post update – Executes after multiple records are updated.

Quick start tests for Incident Management in Service Operations Workspace
Validate that Incident Management in Service Operations Workspace still works after you
make any configuration change such as apply an upgrade or develop an application. Copy and
customize these quick start tests to pass when using your instance-specific data.

Incident Management in Service Operations Workspace
Incident Management in Service Operations Workspace quick start tests are available in the
base system when you install or update to Service Operations Workspace ITSM Applications (snsow-itsm-cont) 6.0 version.
Incident Management in Service Operations Workspace test suite
Test

Description

Release version

SOW Incident: Create
problem from incident

Test to verify the creation of
a problem record from an
Incident using the Create
Problem UI action on the
Incident form.

Xanadu (August store release,
6.0 version)

SOW Incident: Verify Assign to Test to verify the assignment
Xanadu (August store release,
me button functionality
of the incident record to the
6.0 version)
logged-in user using the
Assign to me UI option on the
Record information side panel
of the Incident form.
To learn more about Incident Management in Service Operations Workspace, see Incident
Management in Service Operations Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3243


<!-- page 3244 -->
Related topics
Quick start tests

Request Management in Service Operations Workspace
Service Operations Workspace for Request Management integrates the platform functionality
for tier 1 agents into a multi-tab interface that helps agents efficiently manage multiple incidents,
catalog requests, and catalog tasks.
As an agent, you can create a catalog request in Service Operations Workspace to initiate a
catalog request flow from a different IT Service Management flow. For example, from an incident
flow, you can create a request, and associate the request with the incident to help track requests
associated with an incident and vice versa. You can also work on catalog tasks and update the
state of the tasks, and manage approvals of requests and requested items.
The Service Operations Workspace ITSM Applications application (sn-sow-itsm-cont) that
automatically installs the Request Management for Service Operations Workspace (sn_sow_req)
application should be installed for the Request Management flows in Service Operations
Workspace. For more information, see Getting started with Service Operations Workspace for
ITSM.

Request Management categories in Service Operations Workspace
The following Request Management categories are available in Service Operations Workspace:
• Request: Enables you to view active requests and requested items.
• Catalog Task: Enables you to view the active tasks assigned to the current user and active
tasks assigned to the current user’s assignment groups.

Request Management forms in Service Operations Workspace
The form layouts, UI actions, UI policies, and client scripts available on the following Request
Management forms in the ServiceNow AI Platform UI are also available on the corresponding
Service Operations Workspace forms.
• Request
• Request Item
• Catalog Task
You can view Requested for and Opened by cards in the record information panel.
• Requested for: The Requested for card displays quick information about the requester, local
time, department, location, info icon, and contact details. Additionally, you can select Recent
requests to view the requests created by the requester and select the Assigned assets to view
the assets assigned to the user.
• Opened by: The Opened by card displays quick information about the requester, local time,
department, location, info icon, and contact details.
You can also view the Requested for and Opened by cards in catalog task and request item.

Note: A variable editor is displayed as a pop-up window for request items and catalog
tasks only if it is included in the platform forms.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3244


<!-- page 3245 -->
You can change the view of any Service Operations Workspace form by customizing the
Service Operations Workspace view from the corresponding Request Management form in the
ServiceNow AI Platform UI.
Create a catalog request in Service Operations Workspace
Create a catalog request in Service Operations Workspace to initiate a catalog request flow from
a different IT Service Management flow. For example, from an incident flow, you can create a
request and associate the request with the incident to help track requests associated with an
incident and vice versa.

Before you begin

Role required: itil or sn_request_write

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Initiate a catalog request from an incident or from an interaction record.
Option

Steps

a. Navigate to Lists > Incidents > All.
b. Open the incident for which you want to cre­
ate a request.

From an incident using the Create request
UI action

c. Select Create request from the drop-down
menu next to Create change request.
d. On the Service Catalog categories page,
navigate to the catalog item, order guide, or
record producer that you want to order.

Note: You can order items only from
catalogs that you have access rights
to.
a. Navigate to Lists > Incidents > All.
b. Open the incident for which you want to cre­
ate a request.
From an incident using Agent Assist

c. Select Agent Assist in the contextual side­
bar.
d. Search for the catalog item, order guide, or
record producer that you want to request.
a. Select Add > New Interaction.

From an interaction record

b. Enter the interaction details and select
Save.
c. Select Create request from the drop-down
menu next to Create incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3245


<!-- page 3246 -->
Option

Steps

d. On the Service Catalog categories page,
navigate to the catalog item or order guide
that you want to order.

Note: You can order items only from
the catalogs that you have access
rights to.
3. Select Order Now.
The value in the Request for field is set by default depending on where the request is created:
◦ If the request is created from an incident, the value is set to the person who called in the
incident.
◦ If the request was started from an interaction, the value is set to the person with whom the
interaction is happening.
4. Optional: On the Order Confirmation page, specify the shipping address in the Delivery
Information field.
5. Optional: On the Order Confirmation page, provide any additional information in the Special
Instructions field.
6. Select Checkout.
The request is created and associated with the parent incident.
7. Select Close.
8. Optional: View the created request by selecting View Details.
View and approve records in Service Operations Workspace
Access the My Approvals in SOW to manage the approval requests for change, request, catalog
task, and requested item.

Before you begin

Role required: itil, sn_change_read, sn_request_read

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Navigate to List > Approvals > My Approvals.
3. Select a record to approve or reject the request.
4. Optional: Select Approve to approve the request.
5. Optional: Select Reject to reject the request.

Change Management in Service Operations Workspace
When a change to your infrastructure or a business service is required, you can create a change
request and track it in Service Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3246


<!-- page 3247 -->
Change record in Service Operations Workspace

Details tab
This section displays the detailed information of a change request. For information about fields in
this section, see Create a change request in Service Operations Workspace.
For information about how you can configure fields in this tab, see Configure a task record form in
Service Operations Workspace.
From the Compose section, you can add work notes for the change request.

Change tasks tab
This section displays change tasks associated with the change request. For information about
creating a change task, see Create a change task in Service Operations Workspace.

Related records tab
This section provides a list view of the records associated with the change request, for example,
affected CIs and outages. You can add a record, create a record, or remove it from the change
request.

Contextual side panel
From this section, you can access the following information:
• Record information for the change request.
• Agent Assist and search for relevant records and perform the required actions.
For information about Change Management, see Change Management.
Create a change request in Service Operations Workspace
Track modifications to a supported configuration item (CI) by using a change request. You can
record information such as the reason for the change, and the change type, priority, and risk.

Before you begin

Role required: itil or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3247


<!-- page 3248 -->
Note: You must have the sn_devops.viewer role to view or add DevOps data to a change
request.

Procedure
1. Create a new change request.
Source

Description

a. Navigate to a list of changes.

Note: The following lists are avail­
able:
Change list

▪ Open
▪ Closed
▪ All
b. Select New.
a. Open an incident.

Incident

b. In the incident record form, select Create
change request.
a. Open an interaction.

Interaction

b. In the interaction record form, from the Cre­
ate incident drop-down list, select Create
change.
a. Open a problem.

Problem

b. On the problem record page, from the Cre­
ate problem task drop-down list, select Cre­
ate change request.

2. Select the change model that you want to create, and select Continue.
You can filter and search for the change type.
The following change types are available:
Change models
Change model

Description

Normal

Any service change that is not a preapproved change or an emergency change.

Standard

A pre-authorized change that is low risk,
relatively common, and follows a specified
procedure or work instruction.

Emergency

An emergency change that bypasses group
and peer review and approval, and goes
straight to the authorization state for approval
by the CAB approval group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3248


<!-- page 3249 -->
Change model

Description

DevOps or DevOps Simplified

Change model used for DevOps change
requests.
To use the DevOps models, you must activate
the DevOps Change Velocity application.

For more information, see Change models.

Note: When you create a change request from an interaction, only pre-approved
change types are available.
3. In the Overview tab, fill in the fields.
You must provide the initial details of the change in the Overview tab.

Field

Description

Short description

Brief description of the change.

Description

Detailed description of the change.

Justification

Reason for the planned change request,
which helps approvers determine their
decision.

4. Select Save.
The change request is created along with Scope and impact, Assignment, Schedule, Risk
evaluation, and Change task sections.
5. Provide the scope and impact information for the change.
a. Select Add scope in Scope and impact section.
b. On the form, fill in the fields.
Add scope form
Field

Description

Configuration item

Configuration item (CI) that the change
applies to. You can associate any type of
CI with a change request, including service
offerings. It also provides detailed access to
SLA and availability requirements.

Service offering

Consists of one or more service
commitments that uniquely define the level
of service in terms of availability, scope,
pricing, and packaging options. Service
offering enables you to receive different
features and their levels of performance for
a given service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3249


<!-- page 3250 -->
Field

Description

Service

The business service that you want to make
available for the change request.

Category

The category of the change, for
example,Hardware, Network, Software,
Other, DevOps, and so on.

Note: The section to Add DevOps

data (step 8 in this procedure) is
enabled only when the category is
selected as DevOps. For DevOps
models, the category is automatically
set to DevOps.
Affected CIs

Associate CIs with a single change request.

Propose mass CI update

Apply the same update to a set of CIs for a
specific CI class.

Propose single change

Propose a change to one CI from your list of
affected CIs.

Refresh impact services

When you refresh impacted services,
the Impacted Services/CIs, Business
Applications, and Service Offerings related
lists get updated based on the affected CIs.
The records in each of the related list are
unique even though the impact can be from
a single affected CI.

c. Select Save.
6. Assign the change request to relevant user or assignment group.
a. Select Assign in the Assignment section.
b. On the form, fill the fields.

Field

Description

Assignment group

Group assigned to the change.
You can populate the Assignment
group field automatically based on the
support group available for the respective
configuration item (CI). If the CI does not
have any change group, then the field
gets populated with the change group
available for service offerings. The business
rule Populate Assignment Group based
on CI/SO triggers the functionality when
an incident, problem, or change request
is created or updated and when the
Assignment group and the Assigned to
field is empty. The following properties

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3250


<!-- page 3251 -->
Field

Description

identify the field whose value populates the
Assignment group field:

▪ com.snc.change_request.ci_assignment_grou
This change property identifies which CI
field populates the Assignment group
field.

▪ com.snc.change_request.service_offering_a
This change property identifies which
service offering field populates the
Assignment group field.

Note: The default value for the
properties is support group for incident
or problem and change group for
change request respectively. The
business rule Populate Assignment
Group based on CI/SO is shipped as
part of the development plugin ITSM
CSDM Best Practice – Quebec plugin
(com.snc.best_practice.itsm_csdm.quebec)
and is available only for the new
customers.
Assigned to

User assigned to the change request. If
an assignment rule applies, the change is
automatically assigned to the appropriate
user or group.

Work notes

Information about how to resolve the
change or steps taken to resolve it, if
applicable. This note is for internal use. The
work notes information is not visible to your
customer.

c. Select Save.
7. Schedule the implementation for the change and view conflicts detected.
a. Select Set schedule.
b. On the Schedule page, enter the planned start and end date.
c. In the Conflict tab, the Schedule and conflicts section lists any detected conflicts.
The Conflict last run field displays the date when the conflict detection was last run. You can
view the details of the detected conflicts in the Related records tab.

Note: When a conflict detection process is in progress, the Check conflicts button
changes to View progress.

The details of detected conflicts listed in the following table are displayed in the Conflict
section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3251


<!-- page 3252 -->
Field

Description

Change

The current change request for which
conflicts have been detected.

Type

The type of conflict detected.
The following types of conflicts are
displayed:
▪ CI Already Scheduled
▪ Parent CI Already Scheduled
▪ Child CI Already Scheduled
▪ Not in Maintenance Window
▪ Parent Not In Maintenance Window
▪ Child Not In Maintenance Window
▪ Blackout

Schedule

The blackout or maintenance schedule the
detected conflict is associated with.

Conflicting Change

The change that is in conflict with the
current change request, if any.

Affected CI

The CI associated with the conflict detected.

Impacted Services

The services impacted by the detected
conflict.

Last checked

Date when the conflict detection process
was last run.

For more information, see Conflict detection.

Note: You can also run the conflict detection process manually by selecting Check
conflicts.

d. Optional: Reschedule your current change request if there is any conflict.
i. Navigate to the Schedule page.
ii. Select the edit icon

in the Current card.

iii. Select the new planned start and end dates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3252


<!-- page 3253 -->
Alternatively, you can reschedule the implementation of the change to the next time and
date there is no conflict by selecting Schedule in the Next conflict-free card.

8. Optional: Select Add data in the DevOps data section to add DevOps data to the change
request.

Note: You must have the sn_devops.viewer role to add DevOps data to a change
request or view DevOps data in an already created change record.
a. Specify the following values on the Select associations step:

Select associations
Field

Data type

Description

(Optional) The type of data to associate with
the change request.
▪ Artifact version
▪ Release version

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3253


<!-- page 3254 -->
Field

Description

▪ Build number
▪ Work item
Data associations

(Optional) The specific data to associate
with the change request. You can select
multiple artifact versions, build numbers,
and work items.
If you select Build number as the Data type,
then you must also specify the application
name and corresponding pipelines and
build numbers. If you select Work item as
the Data type, then you can filter the list
of work items available for selection by
applications and plans.
You can search for build numbers by the
branch name as well.

b. Select Next to open the Review data step.

c. Navigate the tabs to verify that the associated data is mapped accurately.
Update settings as needed.
▪ Work Items
▪ Commits
▪ Pull Requests
▪ Test Summaries
▪ Artifact Versions
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3254


<!-- page 3255 -->
▪ Software Quality Summaries
▪ Security Scan Summaries
d. Select Submit.

Note: Once the commits are added in the DevOps data section, you can select View
source corresponding to the Commits tile to view the source details of the commit like
pipeline execution, branch, repository, and so on.

e. Optional: To modify the data that is associated with the change request, select Edit DevOps
data.
i. Edit the data type and its associations from which DevOps data has been added in the
Select associations step.
ii. Review the DevOps data that’ll be associated to or removed from this change request in
Review data step.
iii. Select Submit.
9. Select Risk evaluation to evaluate the risk for the change.
The risk is calculated and is shown in Record information.
The last evaluated risk value is displayed along with the timestamp.
10. Select New in Change task section.
For more information to create a change task, refer Create a change task in Service Operations
Workspace.
11. Select Request Approval when the change request is ready to move to the next state.
The state is moved forward based on the type of change request:
◦ Assess state: Group level approval for a normal change request. Approval records are
automatically generated based on the Change approval policies. You can conduct peer and
technical reviews of the proposed change.
◦ Authorize state: Approval required by the business stakeholders, or by the Change Advisory
Board.
◦ Scheduled state: Pre-approved standard changes.

Note: To mail the change record, select the more options icon (

) in the content frame
and select Email. Both the user who requested the change and the user who is assigned
to the change are automatically populated in the list of recipients.
To view the calendar, select View Calendar in the title bar of the Change Request form.
12. Select Save.
Work on a change request in Service Operations Workspace
Modify a supported configuration item to clear a change request.

Before you begin
Role required: itil

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3255


<!-- page 3256 -->
Procedure
1. Open a change request.
2. To open a change request, select the List icon (

) and then navigate to Changes.

Note: Following lists are available:
◦ Open
◦ Closed
◦ All
3. Select a change request from the relevant list.

Note: You can also open a change request from the Incidents, Problems or
Interactions lists.

4. Perform any of the following actions on the change record page.
Option

Description

Create change tasks for delegation

In the Overview tab, select Add Task. For
more information about creating a change
task, see Create a change task in Service Op­
erations Workspace.

Compose an email from the change

Select the more actions icon (
Compose Email.

) and select

Create outage

Select the more actions icon (
Create Outage.

) and select

View the entities associated with the CI that
can be impacted as a result of the change re­
quest.
In the Impact section of the Details tab, se­
lect the Configuration item dependency view
View dependencies

icon (
) displayed in the Configuration
item, Service offering, or Service field, as ap­
plicable. The unified dependency Configura­
tion Management Database (CMDB) map is
displayed in a new tab within the workspace
view.

Refresh impacted Services on a change re­
quest form

Select the more actions icon ( ) and select
Refresh Impacted Services. For information
about refreshing impacted services, see Re­
fresh impacted services and CIs for Change.

Cancel the change

Select the more actions icon (
Cancel.

) and select

Delete the change

Select the more actions icon (
select Delete.

) and select

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3256


<!-- page 3257 -->
Option

Description

Copy the record page URL to easily access
the record

Select the more actions icon (
Copy URL.

View the record information such as SLAs

) and select

From the contextual side panel, select the
record Information icon (

).

a. From the contextual side panel, select the
Attach a record that helps in quick resolu­
tion of the change

Collaborate using Microsoft Teams

agent assist icon (

).

b. Search for a resource and perform the re­
quired action, for example, link the change
to an incident.
From the contextual side panel, select the col­
laborate icon (

).

From the contextual side panel, select the at­
tachments icon (
Add attachments

).

Note: The added attachments are dis­

played in the activity stream in the Com­
pose section.
From the contextual side panel, select the
Create templates for reuse

templates icon ( ) and create a template or
reuse an existing one.

Approve the change

Select Related records tab, select Ap­
provers.
Select Implement to put the change request
into action.

Implement the change

The change request state changes to Im­
plement. The workflow creates two change
tasks:Implement andPost-implementation
testing. Review the change tasks and assign
them to a user or group, as appropriate.
Select Review after reviewing the details on
the change request.

Review a change request

Close a change request

The change request is moved to the Review
state. All open change tasks are set to Can­
celed.
Select Close after entering theClose code
and Close notes in the Closure Information
section.
The change request is closed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3257


<!-- page 3258 -->
The following action buttons are displayed only if the On Hold field is configured for the
change request form in SOW:
◦ Schedule
◦ Request approval for access
◦ Request approval for authorize
◦ Implement
◦ Review
◦ Close
Standard change catalog
Standard changes are pre-approved, low-risk changes with a proven history of success. The
standard change catalog contains the changes that have been approved by the Change
Management application as standard changes.
The standard change catalog enables you to perform the following activities:
• Request, review, and approve standard change templates.
• Request pre-approved standard changes.
• Determine access to standard change templates at the user level.

Note:
You must have read access to the standard change template. Please ensure you have the
correct roles to access the templates.
You can propose, modify, and retire standard change templates based on the requirements of
your organization.
Propose a standard change template
Propose a new standard change template when you identify a need while creating a change
request.

Before you begin

Role required: itil, admin, change_manager, sn_change_write

About this task

As an IT technician, you can propose a standard change template for a change request that
you frequently create. This new template is sent for approval to the Change Management team,
which reviews the proposal and approves the template as part of the approval process.

Procedure
1. Create a new change request to open the standard change catalog.
2. From the More Actions icon (

), select Propose a new template.

3. Fill the fields of the Standard Change Proposal form.
4. Select Save.
The proposal is created with the status New.
5. Select Request Approval.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3258


<!-- page 3259 -->
Result

The proposal for a new standard change template is created with the status In Progress.
Modify a standard change template
You can modify standard change templates based on your organization's requirements.

Before you begin

Role required: admin, change_manager

Procedure
1. Create a new change request to open the standard change catalog.
2. Select the template you want to modify.
3. From the More Actions icon (

), select Edit template.

4. Enter your edits in the Modify a Standard Change Template form.
5. Perform one of the following actions:
◦ Save edits, but do not send for approval by selecting Save.
◦ Send edits for approval to the change management team by selecting Request Approval.
Create a change task in Service Operations Workspace
When you need to engage another team or agent for help, create and assign change task. For
example, there can be tasks to plan the change, implement the change, and test, and review the
work.

Before you begin

Role required: itil or admin

Procedure
1. Open a change request.
2. On the change record page, Click the more actions icon (

) and select Create Change Task.

3. In the Create Change task dialog box, select the task type.
By default, the following task types are available. To create additional task types, see Create a
task type for problem or change in Service Operations Workspace.
◦ Planning
◦ Implementation
◦ Testing
◦ Review
4. Click Create.
5. On the form, fill in the fields.
Create New Change Task form
Name

Definition

Short
description

A summary of the task.

Description

Detailed description of the task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3259


<!-- page 3260 -->
Name

Definition

Number

Auto-generated identification number for the task.

Change
request

Associated change request.

State

State of the change task:
◦ Pending: Open and unassigned
◦ Open: Open and unassigned
◦ In progress: Open and actively being worked on
◦ Closed: Inactive and closed. Requires close code and close notes to be
provided.
◦ Canceled

Configuration Configuration item (CI) or service that the change task applies to.
item
Type

Type of change task, Planning, Implementation, Testing, or Review. The
default workflow generates tasks in type Review.

On hold

Option to indicate whether the change task is on hold. Provide an On hold
reason if a change task is placed on hold.

Assignment
Assignment
group

Group that the change task is assigned to.

Assigned to

User that the change task is assigned to. If an assignment rule applies, the
change task is automatically assigned to the appropriate user or group.

Schedule
Planned start Date you plan to begin working on the task.
date
Planned end
date

Date the change task is planned to be completed.
If the task type is Implementation, the Planned start date and Planned end
date values must fall within the planned start and end dates specified in the
change request.

6. Click Save.
Work on a change task in Service Operations Workspace
Complete the change task that in turn helps in resolving the associated change.

Before you begin

Role required: itil or admin

Procedure
1. Open a change.
2. From the Change tasks tab, open the required change task.
3. To find and work on records that help in quick resolution of the change task, perform the
following actions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3260


<!-- page 3261 -->
a. From the contextual side panel, click the agent assist icon (

).

b. Search for a resource and perform the required action.
4. To delete the change task, Click the more actions icon (

) and select Delete.

Create a Change Advisory Board (CAB) definition
Create a Change Advisory Board (CAB) definition in Service Operations Workspace to set up
recurring CAB meetings for reviewing and authorizing change requests.

Before you begin

Role required: sn_change_cab.cab_manager

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the list icon (

).

3. In the Change Advisory Board, select My CAB Definitions or All CAB Definitions.
4. Select New.
5. On the form, fill in the fields.
CAB Definition form: CAB Definition section
Field

Description

Name

Name of the CAB meeting.

CAB
manager

Name of the user who manages the CAB meeting.

Delegates

Delegate CAB members who can substitute as the CAB manager during the
meeting.

Board
members

Change Advisory Board members who are expected to attend the CAB
meeting.

Board
groups

Change Advisory Board user groups that are expected to attend the CAB
meeting.

Rolling
Meeting
Window

Number of days for which you want to create CAB meetings.

Note: The CAB schedule and related schedules, if any, determine the
number of CAB meetings that are created. For example, if you have a
CAB meeting schedule of once every week and you enter 28 days in the
Rolling Meeting Window field, then three CAB meetings are created.

CAB Type

Type of CAB meeting this definition is used for: Normal or Emergency.
The CAB type determines the urgency and the required level of scrutiny for the
change.

Time zone

Time zone for the CAB meeting.

Locations

One or more locations for your CAB meetings. For example, meeting rooms in
different offices.

Active

Option to specify whether the CAB definition is active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3261


<!-- page 3262 -->
Field

Description

Conference Information such as meeting links, passwords, and phone numbers.
Details
CAB Definition form: Agenda Management section
Field

Description

Notification
lead time

The advanced notification on the number of agenda items that needs to be
discussed.

Use filter
Option to choose a time range for the planned start and end date from
criteria to
drive Change Change Request Addition Conditions instead of selecting specific dates
Request date based on meeting schedule.
range
Note: The same field is selected for all CAB meetings in the CAB
definition unless individually overridden.
Automatically Option to automatically add change requests to the CAB meeting agenda
Add Change based on the conditions set in the Change Request Addition Conditions.
Requests
Time per
Agenda Item

The time, in minutes and seconds, allotted to discuss each change request
on the agenda. The allotted time can be adjusted for agenda items before or
during the meeting.

Complete
Option to mark each pre-approved change request as Complete in the
Preapproved CAB meeting agenda. Pre-approved changes are automatically marked as
Changes
complete so that approvers do not have to review them. The pre-approved
changes are visible in the CAB Workbench, and can be discussed if
necessary.
Auto Add
Agenda
Decisions

Option to capture agenda decisions automatically on the meeting widget. The
agenda decision is captured in the following format:
(CAB Automation) - <change request number> <decision> - <CAB Manager name> - <time><AM/PM>
<timezone>

6. Select Save.
The CAB definition is saved. The Related records tab appears.
7. Add one or more schedule entries to the CAB definition to schedule a series of CAB meetings.
These schedule entries let you set valid days and times for holding CAB meetings.
a. Select the Related records tab and then select Scheduled Entries.
b. Select New.
c. On the Schedule Entry fields form, fill in these fields.
Schedule Entry fields form
Field

Description

Name

Name for the schedule entry.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3262


<!-- page 3263 -->
Field

Description

Type

Type of schedule entry for the specified date and time duration,
for example, appointment or meeting.
▪ Time off: Shown as planned time-off.
▪ Appointment: Shown as appointment time.
▪ Meeting: Shown as meeting time.
▪ Phone call: Shown as time for making phone calls.
▪ Excluded: The duration is excluded.

Show as

How the schedule entry is displayed on the CAB calendar, for
example, busy or tentative.

When

Start and end date and time for the schedule entry.

All day

Option to make the schedule entry active for the entire duration
of the selected dates.

Time zone

Time zone for the schedule entry. The time zone cannot be
modified.

Repeats

Frequency with which the schedule entry repeats, for example,
daily. weekly, or monthly.
When you select Monthly, the Monthly type field appears.
Enter the number of times in a month when the schedule entry
repeats.
When you select Yearly, the Yearly type field appears. Select an
option, as follows:
▪ Day of the year: Chosen as the current day on which you
define the schedule.
▪ Floating: If you select this option, the following fields appear:
▪ Float week: The week of the month when the schedule
entry repeats.
▪ Float day: The day of that week when the schedule entry
repeats.
▪ Month: The month when the schedule entry repeats.

Repeat every

If the schedule entry is selected to repeat, specifies how often
it repeats. For example, if you select weekly repetitions, specify
the frequency such as every week or every two weeks.
This field appears when you select the Weekly, Monthly, or
Yearly options.

Repeat on

If the schedule entry is selected to repeat, then specify when it
repeats. For example, if you select weekly repetitions, specify
the days of the week when it repeats.
This field appears when you select the Weekly option.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3263


<!-- page 3264 -->
Field

Description

Repeat until

If the schedule entry is scheduled to repeat, specifies an end
date until which the schedule entry is repeated.

d. Select Submit.
The scheduled entry is added to the CAB definition and displays in the Scheduled Entries list.
8. Add one or more related schedules to a CAB definition.
Related schedules enable you to set valid schedules for holding CAB meetings. For example,
if you set the public holiday schedule as a related schedule, it ensures that no CAB meeting is
scheduled on a public holiday.
a. Select the Related records tab and then select Related Schedules.
b. Select Add.
c. Select one or more related schedules and select Add.
The related schedule is added to the CAB definition and displays in the Related Schedules list.
9. Select Refresh CAB Meetings.
CAB meetings are generated based on the rolling meeting window and schedules defined in
the CAB definition and listed in the CAB Meetings list under the Related records tab.
This CAB meeting series created from CAB definitions inherit the criteria of the CAB definition.

What to do next

You can modify CAB meeting details and send meeting requests to attendees. You can also
manage agendas by reviewing or adding agenda items to each of the CAB meetings.
Create a CAB meeting
Create a Change Advisory Board (CAB) meeting in Service Operations Workspace to review and
authorize change requests.

Before you begin

Role required: sn_change_cab.cab_manager

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the list icon (

).

3. In the Change Advisory Board, select All CAB meetings.
4. Select New.
5. On the form, fill in the fields.
CAB Meeting form: CAB Meeting section
Field

Description

Name

Name of the CAB meeting.

CAB
manager

Name of the user who manages the CAB meeting.

Delegates Delegate CAB members who can substitute as the CAB manager during the
meeting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3264


<!-- page 3265 -->
Field

Description

Board
groups

Change Advisory Board user groups that are expected to attend the CAB
meeting.

Board
Change Advisory Board members who are expected to attend the CAB meeting.
members
State

◦ Pending: Indicates that the meeting is yet to begin. It’s the default state of the
meeting.
◦ In progress: Indicates that the meeting has begun and is in progress.
◦ Complete: Indicates that the meeting has occurred and is finished.
◦ Canceled: Indicates that the meeting has been canceled.

Note: The system automatically updates the State field when the meeting
starts and ends from within the CAB workbench. However, the CAB
manager can manually update this field when a future meeting has to be
canceled or if the CAB workbench closes unexpectedly during the meeting.
Meeting
start time

Start date and time for the meeting.

Note: When you add an agenda item to a CAB meeting, the CAB date field
in the change request is automatically updated with this date.

Meeting
end time

End date and time for the meeting.

Locations One or more locations for your CAB meetings. For example, meeting rooms in
different offices.
CAB Meeting form: Meeting Notes section
Field

Description

Meeting Notes

Enter notes for the meeting, if any.

CAB Meeting form: Agenda Management section
Field

Use filter
criteria
to drive
Change
Request
date range

Change
Requests
starting
after

Description

Option to choose a time range for the planned start and end date from Change
Request additional condition instead of selecting specific dates based on
meeting schedule.

Note: If you select the Use filter criteria to drive Change Request

date range field in a cab meeting, the Change Requests starting after
and the Change Requests starting on or before fields are turned off
for the meeting, and therefore ignored. The change request additional
conditions drive the date range.
Change requests that start after this date and time should be added to the
CAB meeting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3265


<!-- page 3266 -->
Field

Description

Change
Requests
starting on
or before

Change requests that start on or before this date and time should be added to
the CAB meeting.

Complete
Preapproved
Changes

Check box to mark each pre-approved change request as Complete in the
CAB meeting agenda.

Note: Pre-approved changes are automatically marked as complete so
that approvers do not have to review them. The pre-approved changes
are visible in the CAB Workbench, and can be discussed if necessary.

Time per
Agenda
Item

The time, in minutes and seconds, allotted to discuss each change request
on the agenda. The allotted time can be adjusted for agenda items before or
during the meeting.

Notification
lead time

The advanced notification on the number of agenda items that needs to be
discussed.

Auto Add
Agenda
Decisions

Check box to capture agenda decisions automatically on the meeting widget.
The agenda decision is captured in the following format:
(CAB Automation) - <change request number> <decision> - <CAB Manager name> - <time><AM/PM>
<timezone>

CAB Meeting form: Conference Information section
Field

Description

Conference details

Information such as meeting links, passwords, and phone numbers.

6. Select Save.
Add an agenda item to a CAB meeting
Add change requests to your CAB meeting agenda for review.

Before you begin

Role required: sn_change_cab.cab_manager

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the list icon (

).

3. In the Change Advisory Board, select My upcoming CAB meetings.
4. Open a CAB meeting.
5. Select Related records and then select the Agenda Items.
6. In the Agenda Items list, select New.
7. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3266


<!-- page 3267 -->
CAB Agenda Item form
Field

Description

Meeting

Name of the meeting to which the agenda item is added.

Task

Change request or standard change proposal to
associate with the agenda item.

Order

Order in which agenda items will be reviewed during the
CAB meeting.

Notification recipients

Users who get the notification about the new agenda item.

Short description

Short description of the selected change request in the
Task field.

Work notes

Additional information for the task.

State

Current state of the agenda item.

Decision

Status of the agenda item.
When you create an agenda item, its status is set to None.
The state is updated according to the decision taken for
the agenda item during the meeting.

Allotted time

Time set for discussing the agenda item in the meeting.

Elapsed time

Time already spent on the agenda item during the
meeting.

8. Optional: Add relevant attachments to the agenda item by selecting the attachments icon
(

) and uploading files.

9. Select Save.
The agenda item is created and added to the CAB meeting and shows in the Agenda Items list.
10. If the newly added agenda item doesn't display in the list, select Refresh agenda items.
11. You can choose to send the meeting invite with updated agenda items to attendees by
selecting Yes in the confirmation message box.
Alternatively, you can send the meeting requests to attendees by selecting the more actions
icon (

) and then selecting Send meeting request to attendees.

Manage attendees in a CAB meeting
Manage attendees of your CAB meeting who will review the change requests during the meeting.

Before you begin

Role required: sn_change_cab.cab_manager

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the list icon (

).

3. In the Change Advisory Board, select My upcoming CAB meetings.
4. Open a CAB meeting.
5. Add or remove attendees that include delegates, board groups, and board members.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3267


<!-- page 3268 -->
a. Select the Details tab.
▪ In the Delegates list, select someone who can substitute as the CAB manager during the
meeting.
▪ In the Board groups list, select a group of users who are expected to join the meeting.
▪ In the Board members list, select users from the selected board groups.
b. Select Save.
c. Select the Related records tab and then select the Attendees.
d. Select New.
e. On the form, select attendee name and tasks (change request) for which they will attend the
meeting.
f. Select Save.
The new attendees are added to the CAB meeting and are listed in the Attendees list.
6. Select the more actions icon ( ) and then select Send meeting request to attendees to send
the meeting invite to the new and existing attendees.
Conduct a CAB meeting in the CAB workbench
Start and conduct a Change Advisory Board meeting in the CAB Workbench in Service
Operations Workspace to review the agenda and approve or schedule changes.

Before you begin

Role required: sn_change_cab.cab_manager

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List icon (

).

3. In the Change Advisory Board tab, select My upcoming CAB meetings.
4. Open a CAB meeting.
5. Select Open in CAB Workbench.
The CAB meeting opens in the CAB Workbench.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3268


<!-- page 3269 -->
6. Select Start meeting to start the meeting.
Each attendee who connects to the meeting has independent access to the widgets on the
meeting page on the CAB workbench while the meeting is in progress.
7. Review the agenda items, and approve or reject them.
a. Select the agenda item to see its details.

Note: The timer displays the time remaining for discussing the current meeting
agenda item. The color code in the timer changes based on the overall percentage of
time elapsed from the total duration of the meeting.
▪ Green: 0% - 50%
▪ Yellow: 50% - 70%
▪ Orange: 75% - 100%:
▪ Red: < 100%:
b. Select the change request number either from the agenda item card or form header of its
details to open the change request record.
c. Review the details of the change for any scheduling conflicts such as another change or a
blackout or holiday schedule.
d. After reviewing and discussing, any assigned approver for the related change request can
approve or reject.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3269


<!-- page 3270 -->
i. Select Make approval decision.

Note: The button is available only to change approvers.
ii. In the Approval decision dialog box, select Approve to approve or Reject to reject the
agenda item.
iii. Add comments about the decision in Approval notes.
iv. Select Submit.
CAB manager or approvers' decisions on agenda items—whether approved, rejected,
or skipped without any decision—are automatically noted in the meeting notes. These
decisions are also saved in the Meeting notes field of the related CAB meeting record. The
timer for the agenda item stops and the agenda item is moved to the All tab.
e. Select Pause to pause the timer of the current agenda item.
f. Select Resume to resume the timer of the current agenda item.
g. Select Next item if you want to skip an agenda item.

Note: The current agenda item is moved as the last card in the Up next tab. The next
agenda item in the list displays.
h. In the Up next tab, select the second or any subsequent agenda item to move it to the top of
the list by selecting Make next agenda item.
i. In the Deferred tab, view the deferred agenda items and select an agenda item and select
Restore to restore them for discussion.
The agenda item moves to the Up next tab.
j. In the All tab, view agenda items by using the filters: All agenda Items, My agenda items, and
Completed.
8. In the contextual menu, view the meeting details, attendees list, and take meeting notes.
◦ Select the meeting information icon (
◦ Select the attendees icon (
meeting invitation.

) to view the meeting details.

) to view the list of attendees along with their response to the

The green circle mark next to the name of attendees indicates they are currently connected
to the meeting.
◦ Select the notes icon ( ) to enter meeting notes and save into the CAB meeting record or
email it to the attendees.

Note: Only the CAB manager or delegates can enter the notes for the overall meeting.
Other attendees in the meeting can review the notes in the read-only mode.
9. After all agenda items have been reviewed, select End Meeting to end the CAB meeting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3270


<!-- page 3271 -->
Result
• The CAB meeting ends and its state is updated to Complete.
• In the CAB meeting record, the following fields are updated:
◦ Meeting end time: Shows when the meeting ended.
◦ Meeting notes: Shows notes taken during the meeting and decision comments on agenda
items.

Managing IT services in your organization
You can leverage a few Service Operations Workspace integrations to promptly investigate the
root cause and resolve the incidents that lead to unplanned interruptions and reduce the quality
of IT services.

An agent's journey when managing IT services
• An agent can start the day by looking at an overview of assignments, outages, service
announcements, and assignments in Service Operations Workspace to prioritize work based
on service level agreements (SLAs), priority level, and urgency.
• The agent can create an incident based on the issue reported. Since the agent has access to
related incidents and recent interactions, better and faster support can be provided. Agent
also has access to all related information from the incident record page.
• The agent can resolve the incident faster by using tailored recommendations.
• The agent can reach out to experts on-call for high-priority tasks.​
• The agent can collaborate easily with the requester and peers right from the task.
• The agent can create a change request to fix the issue.
Related topics
Operating IT services in your organization
Optimizing IT services in your organization

Knowledge Management in Service Operations Workspace
Knowledge articles provide agents with information such as self-help, troubleshooting, and task
resolution.
An agent can work on the agent's published and unpublished articles, feedback tasks, flagged
tasks, and translation tasks. For information about knowledge articles, see Using Knowledge
Management .

Note: The list of agent's translation tasks is available only when the I18N: Knowledge
Management Internationalization Plugin v2 plugin (com.glideapp.knowledge.i18n2) is
activated.
Agents can also use knowledge blocks to reuse content within knowledge articles. For
information about knowledge blocks, see Knowledge blocks .

Note: The list of knowledge blocks is available only when the Knowledge Blocks plugin
(com.snc.knowledge_blocks) is activated.
Work on a knowledge article in Service Operations Workspace
Share information across your organization using a knowledge article.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3271


<!-- page 3272 -->
Before you begin
Role required: itil

Procedure
1. Open a knowledge article in Service Operations Workspace.
2. Perform any of the following actions on the record page.
Option

Description

Create a new version of the knowledge arti­
cle that we can publish

Select Checkout.
a. Select Translate.

Translate an article after its comparison in
its original language and the language it will
be translated into

b. Review the translation and click Create
draft article.

Note: If Dynamic Translation is en­
abled, click Machine Translate to
view machine translations.

View a knowledge article including the arti­
cle number, short description, and article
content

Select View Article.

Initiate the retirement workflow associated
with the article

From the more options drop-down ( ), se­
lect Retire. For information about retiring a
knowledge article, see Retire a knowledge arti­
.
a. From the more options drop-down (
lect Request translations.

Translate an article into multiple languages

), se­

b. Select the languages you want to translate
the article into.
c. Select Submit.

Copy the record page URL to easily access
the record

Select the more actions icon (
Copy URL.

) and select

a. From the contextual side panel, select the
Reuse a knowledge block when creating or
editing the article

add blocks icon (

).

b. Select the required knowledge block to add
it to the article.
a. From the contextual side panel, select the

Attach a record that helps in quick resolu­
tion of the interaction

agent assist icon (

).

b. Search for a resource and perform the re­
quired action, for example, find a relevant
knowledge base article and attach a link to
it to work notes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3272


<!-- page 3273 -->
Option

Description

Note: The agent assist icon is avail­
able only for users with the following
roles: itil or interaction_agent.
For information on configuring additional
search resources, see Configure search re­
sources for an interaction in Service Opera­
tions Workspace for ITSM.
From the contextual side panel, select the at­

Add attachments

tachments icon (
). Alternatively, you can
drag and drop the attachment into the Active
Chat window of the interaction.

Note: The added attachments are dis­

played in the activity stream in the Com­
pose section.
From the contextual side panel, select the
Create templates for reuse

Most recent task

templates icon ( ) and create a template or
reuse an existing one.
Related list of task records to which the knowl­
edge article is recently attached. You can se­
lect the task record link to open the record an­
other tab within the workspace view. These
records are retrieved from the Knowledge Ap­
plied Tasks [m2m_kb_task] table.

Note: The related list section is

displayed only if the Display re­
cent task for knowledge article
(glide.knowman.recent_task.display)
system property is enabled.

Major Incident Management in Service Operations Workspace
Create and manage major incidents in Service Operations Workspace.

Major Incident Management overview
https://player.vimeo.com/video/990305784?
h=fa145c9c15&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3273


<!-- page 3274 -->
Major incident record

A major incident (MI) is created when an issue occurs that results in significant disruption to the
business and demands a response beyond the normal incident management process.
Major incidents have a separate procedure with shorter timescales and higher priorities to
encourage a faster resolution process for the incidents with a high business impact.
The definition of what constitutes a major incident must be determined based on your
requirements. For example, a major incident can be created if a critical business service is
impacted or if there’s a service outage that affects many users.

Major incident user roles
The major incident manager (major_incident_manager) user role is available in the base system
and enables you to manage and resolve major incidents. As a major incident manager, you can
do the following:
• Promote a major incident candidate to a major incident.
• Create a major incident.
• Directly promote an incident to a major incident without going through the proposal process.

Major incident creation
A major incident is created or promoted from a major incident candidate. A major incident
candidate can be created from the incident record page in Service Operations Workspace in the
following ways:
• Propose an incident as a major incident candidate.
• Create a major incident candidate.
• Use major incident trigger rules to propose an incident as a major incident candidate or
promote directly to a major incident automatically.

Major incident response and handling
When responding to a major incident, some crucial actions include the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3274


<!-- page 3275 -->
• Finding the correct resources
• Communicating updates to users and stakeholders
• Setting up conference calls to investigate and resolve the incident
• Escalating the incident when required
You must define the communication plans that are associated with a major incident based on
pre-defined conditions. Incident communication plans and related communication tasks are
created for a major incident based on the communication plan definitions. Afterwards, tasks get
executed as defined in the associated incident communication.
Major Incident Management process in Service Operations Workspace
A major incident has a high impact and urgency that affects a large number of users and
deprives the business of one or more crucial services. Given the urgency of the situation, a
well-coordinated response process is required to accelerate the resolution and minimize the
business impact.
When responding to major incidents, an effective and efficient system is needed to minimize the
high impact of service interruption. An efficient system involves the following actions:
• Minimize the impact of service interruptions.
• Ensure that an appropriate incident manager, major incident team, or management group is in
place to manage a major incident.
• Communicate to the stakeholders about the service interruptions, degradations, resolutions,
and other major incident updates.
• Collaborate with stakeholders to resolve the major incident and restore service.
• Create a problem record to analyze the root cause.
• Generate a post incident report (PIR) to review each major incident once the service is
restored.
The Major Incident Management process can be classified in the following phases.
Major Incident identification and detection
The first phase in the process is to identify a potential major incident candidate. You
can detect and identify major incidents in the following ways:
• An incident is detected based on the configured major incident trigger rules and
is either proposed as a major incident candidate or promoted directly to a major
incident automatically.
• An agent reviews the incident information to identify if the incident should be
proposed to a major incident candidate. If proposed, a major incident manager
reviews the information of the major incident candidate and promotes it to a major
incident.
• A major incident manager creates a major incident directly without the proposal
process.
Communication and collaboration
The second phase is communication. Proper communication during a major
incident is crucial to ensure that the IT teams, business stakeholders, and end users
are informed about the impact and progress of the major incident.
Communicating throughout a major incident requires a comprehensive
communication plan, including whom to contact, the methods and frequency of
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3275


<!-- page 3276 -->
communication, and messaging channels used to support, such as email and SMS.
A communication plan enables the incident response team to focus their efforts on
the resolution process and to set expectations for any future communications.
You can define one or more communication plans based on the communication
type, the priority of the incident, and the target audience of the major incident.
Throughout the life cycle of the major incident, notifications and status updates are
sent to the stakeholders to keep them informed and involved.
Along with communications, effective collaboration with IT teams and other
business stakeholders is also important when resolving a major incident. You
can use communication channels, such as Microsoft Teams conference calls, to
collaborate and work toward issue resolution. The Incident record page in Service
Operations Workspace provides various controls for collaboration. For more
information, see Collaborate with stakeholders during a major incident.
Resolution
The next phase in the major incident life cycle is resolving the major incident.
Resolving a major incident also involves resolving all associated child incidents,
and the individual callers receive a notification about incident resolution.
Problem record creation
A problem record must be created to analyze the root cause of the major incident.
You can configure the Create problem from major incident flow to create a problem
record automatically after a major incident is resolved or manually create a problem
record, as required. You can also configure if the major incident information is
automatically copied to a problem record when a problem record is created.
Post incident report review
The final phase of a major incident life cycle is generating a post incident report
(PIR). After the major incident is resolved, a PIR is generated. You can use a PIR to
analyze the incident and understand how to help prevent a similar incident in the
future. This review also provides an opportunity to evaluate the incident response
process and identify areas for improvement. The report contains the timeline of
events that occurred after an incident is created. You can review and update the PIR
during the review process before it’s shared with stakeholders.
Managing a major incident record
Manage a major incident record with a playbook or the various tabs on the major incident record
page.
Based on the information displayed on different tabs, an agent can propose a major incident
using the Propose Major Incident option. A major incident manager reviews the information
on the Overview tab, such as the location information, and then accepts or rejects the major
incident proposal. After a proposal is accepted, the major incident manager uses the Promote
Major Incident option to promote the candidate to a major incident.
After an incident is promoted to a major incident, each tab on a Major Incident record page
contains information about the major incident. You can use the various options and the action
menu to manage the major incident process and view incident information on the following:
• Overview tab
• Details tab
• Communicate tab
• Related records tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3276


<!-- page 3277 -->
• Playbook tab
• Contextual side panel
Overview tab
The Overview tab displays the incident information in the following sections:
• Summary – Basic incident information, such as short description, description,
impact, urgency, and state.
• Impact:
◦ Impact summary - Impact summary information, such as business impact,
configuration item, service, and service offering.
◦ Location – The location of the caller on the world map, the number of locations,
and the number of users. This information is only displayed for a major incident
and if you have the major_incident_manager role.
◦ Affected CIs – The number of CIs affected by the incident.
◦ Impacted Services/CIs – The number of CIs and services impacted by the
incident.
◦ Assets – The number of assets associated with the incident.
• Cause – The probable cause of the incident.
• Resolution – Incident resolution-related information, such as resolution code and
resolution notes, once the incident is resolved.
On the Activity section, you can view all comments, work notes, actions taken, and
composed emails. This section also includes user activities, such as a change in the
state and the assignment group. In the Compose section, you can add comments,
work notes, and actions taken, as well as compose emails.
For more information on the Overview tab, see View and update incident
information on the Overview tab in SOW.
Details tab
The Details tab displays detailed information about the incident, such as category,
subcategory, impact, related record, assignment group, watch list, cause, and
resolution. For more information on the Details tab, see Incident Management in
Service Operations Workspace.
Communicate tab
The Communicate tab displays the list of communication tasks with various options
that are used to maintain communications with the stakeholders for major incidents.
For more information on the options available on the Communicate tab, see
Communicating with stakeholders about incidents and major incidents in SOW.
Related records tab
The Related records tab provides the related lists containing records associated
with the major incident record. For example, task SLAs, child incidents and affected
CIs.
In the Child incidents related list, you can use the Find similar option to find
multiple similar incidents and add them as child incidents to a major incident or
major incident candidate record.
Similar incidents are retrieved based on the similarity solution definition that can
be configured to train on various fields such as Short description and Description.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3277


<!-- page 3278 -->
Adding the similar incidents as child incidents to the major incident record ensures
avoiding creation of multiple major incident records for the same issue.
Playbook tab
The Playbook tab displays the information of the playbooks available for Major
Incident Management. For each playbook, you can select to work with the playbook
to manage major incidents. For more information, see Managing major incidents
using playbooks.
Contextual side panel options
On the Contextual side panel, you can use the following options:
• Major Incident Playbook – Select the Major Incident Playbook ( ) icon to
launch the playbook side panel. The playbook provides a guided approach to
the entire major incident process. It provides a way to visualize business process
workflows for major incidents in a simple, task-oriented view. The playbook
contains the following two tabs:
◦ Current – List of major incident playbooks running currently.
◦ History – Historical list of major incident playbooks.
• Recommended actions – Select the Recommended Actions ( ) icon to launch
the View recommendation side panel. The side panel lists all the recommended
actions for major incidents. When an incident is promoted to a major incident and
doesn’t have a problem record associated with it, this tab displays a card with the
Create a problem option to create a problem record.
You can also configure whether the incident field information is copied
automatically when a problem record is created by using the List of attributes
(comma-separated) that will be copied from the incident to create a new
problem (com.snc.problem.create_from_incident.attributes)
system property. For more information, see Create a problem.
• Record Information – Select the Record information ( ) icon to view the
incident record information on the side panel. The record information side panel
includes the following information:
◦ Active calls – Details of the active conference calls for major incidents. You can
select the call record to start a conference call.
◦ Caller details – Name, local time, address, email id, and other caller information.
Select the Contact option to view the caller details and caller assets. You can
also see recent interactions and incidents with the caller.
◦ SLAs and timing – Duration of time since a major incident has occurred, as well
as the state of the response and the resolution SLAs for the major incident. You
can select View all SLA to see all the task SLAs associated with the incident.
◦ Assign to – The assignment status of the incident. You can select the Assign
to option to assign the incident to yourself. You can select the View additional
collaborators option to view the list of collaborators associated with the
incident.
For more information on the record information in the Contextual side panel, see
Viewing incident record information using the Contextual side panel.
• Collaborate – Select the Collaborate ( ) icon to open the Collaborate side
panel tab. This tab displays the following tabs:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3278


<!-- page 3279 -->
◦ Call – Call-related information for the upcoming, pending, overdue, or active
calls with the collaborators such as status and due date with time duration.
You can select Start to initiate that call. You can also select the Initiate
collaboration ( ) icon to create a call using various communication channels
such as Zoom and Webex.
◦ Chat - Chat-related information, such as name, number of participants, and
due date, for upcoming, pending, overdue, or active chats with collaborators.
You can select Open discussion to start that chat. You can select the Initiate
collaboration ( ) icon to create a chat using various communication channels,
such as Microsoft Teams and Slack.
• On call – Select the Experts on-call (
) icon to identify and contact available
on-call members of a support group to resolve an issue.
Propose a major incident
Propose an incident to a major incident candidate based on the incident information.

Before you begin
Role required: itil

Procedure
1. Open an incident record.
For information about creating an incident in Service Operations Workspace, see Create an
incident in Service Operations Workspace.
2. On the incident record, use the following information to decide if you want to propose this
incident:
◦ Incident information on the Overview tab
◦ Incident information on the Details tab
◦ Incident information on the Related records tab
◦ Record information on the Contextual side panel
For more information on the tabs, see Managing a major incident record.
3. On the incident record for the incident that you want to propose, select Propose Major
incident.
4. On the Propose Major incident window, fill in the details.
Propose Major incident
Field

Description

Work notes

Reason for proposing the incident as major
incident candidate.

Business Impact

Details of the impact created by the incident
on the business.

5. Select Propose Major incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3279


<!-- page 3280 -->
Managing major incidents using playbooks
Manage the major incident life cycle and process using Major Incident Playbooks from the
contextual side panel of an incident record page.
A Major Incident Playbook in Service Operations Workspace provides a guided approach to
the entire major incident process. It provides a way to visualize business process workflows for
major incidents in a simple, concise, and task-oriented view. You can access the Major Incident
Playbook using the Major Incident Playbooks (
incident record page.

) icon on the contextual side panel of an

The following playbooks are available in the base system for Major Incident Management:
• MI playbook - Provides a simple and concise interface in separate sections for planned and
unplanned communication or collaboration features in a task-oriented view. This playbook is
suggested for upgrade customers.
• Advanced MI playbook - Provides a similar interface to the MI playbook but has more
advanced, configurable capabilities for planned and unplanned communication or
collaboration, as well as collaboration placed under a single section. You can configure
the unplanned communication or collaboration section to create, add, and configure the
communication plans and tasks, and the collaboration channels or channel types using
Playbooks. For more information, see Designing a major incident playbook. This playbook is
suggested for new or zBoot customers.
You can select and assign one or more of the playbooks to Major Incident Management as
needed. The Playbook tab displays all the playbooks that are assigned to Major Incident
Management. For more information on assigning playbooks to major incidents, see Assign a
playbook to Major Incident Management.
Manage major incidents using the MI playbook
Manage major incidents using the MI playbook from the contextual side panel or the Playbook
tab of an incident record page. This playbook provides a simple, concise, and task-oriented
interface for managing the major incident process.

Before you begin

The incident must be proposed as a major incident candidate. For more information, see
Propose a major incident.
The MI playbook must be assigned to Major Incident Management. For more information, see
Assign a playbook to Major Incident Management.
Role required: major_incident_manager or admin

About this task

The MI playbook in Service Operations Workspace provides a guided approach to the entire
major incident process. It provides a way to visualize business process workflows for major
incidents in a simple, concise, and task-oriented view.

Procedure
1. Open an incident record that has been proposed as a major incident candidate.
2. Select the Major Incident Playbooks (
incident playbook.

) icon on a contextual side panel to launch the major

The Major Incident Playbook panel opens on the side panel. The panel includes the following
tabs:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3280


<!-- page 3281 -->
◦ Current
◦ History
3. On the Current tab, select MI playbook.
You can view the major incident process steps and your progress along the following steps:
◦ Review Situation
◦ Communicate
◦ Collaborate
◦ Adhoc Communications & Collaborations
◦ Resolve
◦ Create problem
◦ Post Incident Review

4. Review the incident information and then promote the major incident.
a. Select Review Situation.
b. Review the incident information.
c. Select Promote to promote the incident to a major incident based on the incident
information.
For more information, see Promote a major incident.
5. Communicate with stakeholders by composing a communication message, such as email or
SMS.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3281


<!-- page 3282 -->
a. Select Communicate.
b. On a communication task that you want to complete, select Compose to compose a
communication message, such as email or SMS.
For more information, see Compose communications for incidents and major incidents.
c. Optional: Select the More actions ( ) icon for a communication task and then select
Manage Recipients to add or manage the recipients for communications.
For more information, see Manage recipients in a communication task.
For more information, see Compose communications for incidents and major incidents. You
can also add or manage recipients for the communications. For more information, see Manage
recipients in a communication task.
6. Collaborate with stakeholders.
a. Select Collaborate.
b. Select a collaboration record, and then select one of the following options based on the
selected type of collaboration channel:
▪ Start - To start a call.
▪ Open discussion - To start a chat.
For more information on how to use these collaboration channels, see Collaborate with
stakeholders during a major incident.
7. Perform unplanned communications and collaborations.
a. Select Adhoc collaboration and communication.
This section contains the following collaboration and communication records that are
created separately than pre-defined and configured communications and collaboration
plans:
▪ Communications – All the communications that you create using the New communication
option from the Communicate tab or using the Incident communication plan related list
on the Related records tab are displayed in this section. For more information on creating
unplanned communications, see Create an adhoc communication task and Create adhoc
communication and collaboration using the Related record tab.
▪ Collaboration – All the collaboration records that you create using the Incident
Communications plan related list on the Related records tab are displayed in this section.
For more information on creating unplanned communications and collaboration, see
Create adhoc communication and collaboration using the Related record tab.
b. Select the one of the following options for unplanned communications and collaboration.
▪ For unplanned communications, you can do one of the following actions:
▪ Select Compose to compose a communication message such as email or SMS. For
more information, see Compose communications for incidents and major incidents.
▪ Select the More actions ( ) icon for a communication task and then select Manage
Recipients to add or manage the recipients list for the communication task. For more
information, see Manage recipients in a communication task.
▪ For unplanned collaboration, you can do one of the following actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3282


<!-- page 3283 -->
▪ Start a call - Select Start on a collaboration record to start a call with the stakeholders.
For more information, see Collaborate with stakeholders during a major incident.
▪ Start a chat – Select Open discussion to start a chat with the stakeholders. For more
information, see Collaborate with stakeholders during a major incident.
8. Select Resolve.
For information on how to resolve a major incident, see, Resolve and close a major incident.
9. Select Create Problem.

Note: This section is visible in the playbook only if:
◦ The incident doesn’t have a problem record associated with it.
◦ The Problem Management Best Practice - Madrid - State Model
(com.snc.best_practice.problem.madrid.state_model) plugin is activated on the
instance.
◦ The Create problem from major incident flow is inactive on the instance. This flow is
shipped as part of the base system in the Inactive status. Once activated, it creates a
problem record automatically when an incident is promoted to a major incident.
You can also configure if the incident field information is copied automatically to
the respective fields in a problem record using the List of attributes (commaseparated) that will be copied from the incident to create a new problem
(com.snc.problem.create_from_incident.attributes) system property
when a problem record is created. For more information, see Create a problem.
A problem record is created automatically. You can select View Problem to view the problem
record on a separate tab.
10. Mark the post incident review as complete.
a. Select Post Incident Review.
b. Select Mark Complete to end the major incident process in the Playbook side panel.
You can continue to work on the post incident report review from the Post Incident Report
tab on the Incident record page. For more information, see Review and update a post
incident report.
Manage major incidents using the Advanced MI playbook
Manage a major incident using the Advanced MI playbook that's available on the contextual
side panel or the Playbook tab of an incident record page. This playbook provides a similar
interface to the MI playbook but has advanced, configurable capabilities for communication and
collaboration steps.

Before you begin

The incident must be proposed as a major incident candidate. For more information, see
Propose a major incident.
The Advanced MI playbook must be assigned to Major Incident Management. For more
information, see Assign a playbook to Major Incident Management.
Role required: major_incident_manager or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3283


<!-- page 3284 -->
About this task

The Advanced MI playbook in Service Operations Workspace provides a guided approach to the
entire major incident process. It provides a way to visualize business process workflows for major
incidents in a simple, concise, and task-oriented view interface.

Procedure
1. Open an incident record that has been proposed as a major incident candidate.
2. Select the Major Incident Playbooks (
incident playbook.

) icon on a contextual side panel to launch the major

The Major Incident Playbook panel opens on the side panel. The panel includes the following
tabs:
◦ Current
◦ History
3. On the Current tab, select Advanced MI playbook.
You can view the major incident process steps and your progress along the following steps:
◦ Review Situation
◦ Adhoc Communications & Collaborations
◦ Resolve
◦ Create problem
◦ Post Incident Review

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3284


<!-- page 3285 -->
4. Review the incident information and then promote the major incident.
a. Select Review Situation.
b. Review the incident information.
c. Select Promote to promote the incident to a major incident based on the incident
information.
For more information, see Promote a major incident.
5. Perform unplanned communication and collaboration.
a. Select Adhoc collaboration and communication.
This section contains the following communication and collaboration plans and records:
▪ The pre-defined and configured communication and collaboration include all the
communications and collaborations plans configured as part of Major Incident
Management communications in the Admin Center. For more information, see Setting up
communication templates and plans in Major Incident Management.
▪ The separately created communication and collaborations include the following:
▪ Communications – All the communications tasks that you create using the New
communication option from the Communicate tab are displayed in this section. All
the communication plans and tasks that you create using the Incident communication
plan related list from the Related record tab are displayed also. For more information,
see Create an adhoc communication task and Create adhoc communication and
collaboration using the Related record tab.
▪ Collaboration – All the collaboration records that you create using the Incident
Communications plan related list from the Related records tab are displayed in this
section. For more information, see Create adhoc communication and collaboration
using the Related record tab.
b. Select the one of the following options for unplanned communications and collaboration.
▪ For adhoc communications, you can do the following actions:
▪ Select Compose to compose a communication message, such as email or SMS. For
more information, see Compose communications for incidents and major incidents.
▪ Select the More actions ( ) icon for a communication task and then select Manage
Recipients to add or manage the recipient lists for the communication task. For more
information, see Manage recipients in a communication task.
▪ For adhoc collaboration, you can do the following actions:
▪ Start a call - Select Start on a collaboration record to start a call with the stakeholders.
For more information, see Collaborate with stakeholders during a major incident.
▪ Start a chat – Select Open discussion to start a chat. For more information, see
Collaborate with stakeholders during a major incident.
6. Select Resolve.
For information on how to resolve a major incident, see, Resolve and close a major incident.
7. Select Create Problem.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3285


<!-- page 3286 -->
Note: This section is visible in the playbook only if:
◦ The incident doesn’t have a problem record associated with it.
◦ The Problem Management Best Practice - Madrid - State Model
(com.snc.best_practice.problem.madrid.state_model) plugin is activated on the
instance.
◦ The Create problem from major incident flow is inactive on the instance. This flow is
shipped as part of the base system in the Inactive status. Once activated, it creates a
problem record automatically when an incident is promoted to a major incident.
You can also configure if the incident field information is copied automatically to
the respective fields in a problem record using the List of attributes (commaseparated) that will be copied from the incident to create a new problem
(com.snc.problem.create_from_incident.attributes) system property
when a problem record is created. For more information, see Create a problem.
A problem record is created automatically. You can select View Problem to view the problem
record on a separate tab.
8. Mark the post incident review as complete.
a. Select Post Incident Review.
b. Select Mark Complete to end the major incident process in the Playbook side panel.
You can then continue work on the post incident report review from the Post Incident
Report tab on the Incident record page. For more information, see Review and update a post
incident report.
Promote a major incident
Review the information of the proposed major incident candidate and promote it to major
incident using the Major Incident Playbook.

Before you begin

You must propose the incident as a major incident candidate. For more information, see Propose
a major incident.
Role required: major_incident_manager or admin

Procedure
1. Open an incident record.
2. Select the Major Incident Playbooks (
incident playbook.

) icon on a contextual side panel to launch the major

The Major Incident Playbook panel appears on the side panel. It includes the following tabs:
◦ Current
◦ History
3. On the Current tab, select the current Major Incident Process playbook.
4. Select Review situation.
5. On the Overview tab, review the business impact, work notes, and other incident information.
6. Select Promote to promote the major incident candidate to a major incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3286


<!-- page 3287 -->
If you want to reject the major incident proposal, you can select Reject. This action would
convert the major incident candidate back into an incident.
7. On the Promote to Major Incident pop-up window, fill in the details.
Promote to Major Incident
Field

Description

Reason

Reason for promoting the incident as major
incident candidate.

Business Impact

Impact the incident creates on the business.
By default, the business impact stated by the
agent to propose major incident is displayed.
You can modify the value.

8. Select Promote to Major Incident.

Note: You can also promote a major incident by selecting the More actions (

) icon

and then selecting Promote to Major Incident.

Communicating with stakeholders about incidents and major incidents in SOW
Use the Communicate tab to create and manage all communications with stakeholders during
the various phases of an incident or a major incident.
The Communicate tab contains the following options to create and manage communications:
Group By
Group communication tasks the following ways:
• Communication plan – The communication tasks that are associated with a
particular communication plan are grouped.
• Completion status - The communication tasks are grouped based on the
completion status and due dates. You can choose to list the tasks from the
following group sections:
◦ Overdue – Communication tasks with past due dates.
◦ Upcoming – Communications tasks with an upcoming due date.
◦ Completed – Communication tasks that are completed.
◦ Skipped – Communication tasks that are skipped.
Filter by communication plan
Filter the communication task by a communication plan.
Compose
Compose a communication message, such as an email, DEX Desktop Assistant,
SMS, Microsoft Teams, or Slack message. For more information on DEX Desktop
Assistant, see Use DEX Desktop Assistant.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3287


<!-- page 3288 -->
Note:
DEX Desktop Assistant is supported as a channel in Major Incident
Management in SOW only if the following conditions are met:
• SOW must be version 7.0 or later.
• The instance must be on Yokohama release or later.
• DEX must be version 2.5.0 or later.
Manage recipients
Add and manage recipients for a communications task. You can add a user role
and a user in the recipient list. You can also access this option by selecting the
More actions (
recipients.

) icon on the communication task and then selecting Manage

New Communication
Create a communication task. This option is available only to the following users:
• User with the major_incident_manager role
• User with both the ia_admin and itil roles
Manage announcements
Create and manage an announcement to broadcast messages for Service Portal
users to keep them informed about the ongoing major incident.
View Record
View detailed information about the incident communication task (ICT) record.
Select the More actions (
record.

) icon on the communication task and then select View

From the ICT record, you can do the following actions:
• Initiate a call or chat from the collaborate tab on the side panel using the
Collaborate ( ) icon on the contextual side panel. For more information, see
Collaborate with stakeholders during a major incident.
• Add collaboration channels from the Communication Channel related list of the
Related records tab.
• Add communication channels such as DEX Desktop Assistant from the
Communication Channel related list of the Related records tab.
Close
Close the communication task. Select the More actions ( ) icon on the
communication task and then select Close. The communication task is then moved
to either the Completed or Skipped section of the Communicate tab based on the
following scenarios:
• If a communication task has the Frequency field set to Recurring and at least
one communication has been composed and sent, selecting Close moves the
communication task to the Completed section.
• If a communication task has the Frequency field set to One time or Recurring
and no communication has been composed and sent, selecting Close moves the
communication task to the Skipped section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3288


<!-- page 3289 -->
Start
Start the communication task with the Pending status. Select the More actions (
icon on the communication task and then select Start.

)

Snooze
Increase the Due in time for a communication task. Select the More actions (
icon on the communication task and then select Snooze.

)

Compose communications for incidents and major incidents
Compose communication messages for incidents and major incidents using communication
channels such as email and SMS.

About this task

The Communicate tab displays the list of communication tasks with various options that are
used to maintain communications with the stakeholders for an incident. For each communication
task, you can view the following information:
• Communication plan - Name of the communication plan.
• Communication task – Name of the communication task.
• Status – Status of the communication task.
• Channels – Communication channel of the task, such as DEX Desktop Assistant, email or SMS.
• Past due – Time duration since the due date has passed. This information is applicable for
communication tasks that have a past due date in the overdue section.
• Due in – Duration of time left until the due date.

Before you begin

You must configure the communication plans and tasks in one of the following ways:
• For major incidents, you must configure communication plans and tasks for Major Incident
Management in Admin Center. For more information, see Configure a communication plan in
Major Incident Management.
• For incidents, you must activate and then configure communication plans and tasks in
Task Communications Management. For more information, see Task Communications
Management .
Role required: major_incident_manager, ia_admin, itil, or admin

Procedure
1. On the incident record, select the Communicate tab.
The Communicate tab displays the list of communication tasks based on the communications
configured for major incidents or incidents.
2. Select the communication task where you want to compose the communication message.

Note: Select the communication task based on the due dates to avoid breaching of
any due date for communications. For example, communication tasks from the Overdue
section.
3. On the communication task, select Compose.
The communication task record opens on a new tab within the incident view with the
configured communication channels, such as DEX Desktop Assistant, email and SMS.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3289


<!-- page 3290 -->
Note:
◦ Based on the channel selected on the communication task, any or all of the following
sections are displayed:
▪ DEX Desktop Assistant
▪ Email
▪ SMS
▪ SMS notification
▪ Sidebar discussion
▪ Microsoft Teams notification
▪ Slack
▪ Slack notifications
◦ For major incident SMS communications, you can select or change the SMS templates
with any of the following user roles:
▪ major_incident_manager
▪ sn_incident_write user who has the required communication related roles
▪ ITIL user to whom the major incident is assigned
4. On the form, fill in the fields.
Email form
Field

Description

Email template

Email template used for composing the email.

Note:
Selecting this field displays two
sections of email templates. The first
section contains the GenAI templates
with corresponding Now Assist for
ITSM icon ( ) and the second section
contains the non GenAI templates. The
GenAI email templates are displayed
only if the following conditions exist:
◦ Any GenAI variable is available in the
email templates.
◦ Now Assist for ITSM is installed and
activated.
◦ GenAI skills are enabled.
◦ User has the required roles to execute
the GenAI skills.
To

List of users to whom the email is sent.

Cc

List of users to whom the email is sent as Cc.

Bcc

List of users to whom the email is sent as Bcc.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3290


<!-- page 3291 -->
Field

Description

Subject

Subject of the email.

Body

Content of the email.

Attach file

Attachments for the email.

DEX Desktop Assistant form
Field

Description

To

List of recipients to whom the notification is
sent.

Note: The recipients can receive the
notification message in DEX Desktop
Assistant only if the DEX Desktop
Assistant installed on their device.
Template

Template used for composing the notification
message.

Note: If any template is available,

the Title and Message field is autopopulated. However, you can edit the
content and post them.
Title

Title of the notification message.

Message

Content of the notification message.

For more information on DEX Desktop Assistant, see Use DEX Desktop Assistant.
SMS notifications/SMS/Microsoft Teams notification/Slack/Slack notifications form
Field

Description

From

Number from which the message is sent.

To

User to whom the message is sent.

Message

Content of the message.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3291


<!-- page 3292 -->
Note:
◦ Depending on the channel selected on the communication task, options such as email
or SMS are displayed.
◦ SMS communication is sent to the recipient only if the recipient has a phone number
linked to the recipient record.
◦ For all supported channels such as email, SMS, or DEX Desktop Assistant, Major
Incident Management allows notification to be sent to all users (employees) in the
affected locations. You can use the demo recipient list available in the base system as
part of the installed demo data installed. The affected locations list can be accessed
from the Affected locations related list in the Related records tab of a major incident
record. For more information, see View and update incident information on the
Overview tab in SOW.
5. Select Send.
Manage recipients in a communication task
Manage the recipients list for a communication task to create flexible and effective
communication with the required stakeholders.

Before you begin

Role required: major_incident_manager, ia_admin, itil, or admin

Procedure
1. On an incident record, select the Communicate tab.
2. Select Manage recipients.
You can also select the More actions (
Manage recipients.

) icon for a communication task and then select

3. On the Manage recipients pop-up window, fill in the details.
Manage recipients
Field

Description

Communication

Communication plan that is associated with
the communication task for which you want to
manage recipients.

Note: When you select the More
actions icon ( ) for a communication
task and then select Manage
recipients, the communication plan
associated the selected communication
task is selected by default. When you
select the Manage recipients option
directly from the Communicate tab, you
must select the communication plan.
Add recipients

User, user group, or list of recipients to whom
the communication is sent.

Designate role

User role of the recipients.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3292


<!-- page 3293 -->
Field

Description

Add

Button to add the recipients and the user role
to the Recipients field.

Recipients

User, user group, or list of recipients with the
user role. You must use the Add button to add
the recipients and the user role to this field.

4. Select Save.
Create an adhoc communication task
Create an adhoc communication task as required during the various phases of an incident in
Major Incident Management.

Before you begin

Role required: major_incident_manager, itil, ia_admin, or admin

Procedure
1. On the incident record page, select the Communicate tab.
2. Select New communication.
3. On the New communication pop-up window, fill in the details.
New communication
Field

Description

Compose and sent communication

Indicates when the communication message
must be composed and sent. Possible values
are:
◦ Now – The communication message is
composed and sent immediately.
◦ Later – The communication message is
composed and sent later after a definite
time interval.

Frequency

Frequency at which the communication must
be composed and sent. Possible values are:
◦ One time – The communication message is
composed and sent only once.
◦ Recurring - The communication message is
composed and sent after a repeated time
interval.

Due in (minutes)

Duration of time in minutes after which the
communication message must be composed
and sent.

Note: This field is displayed only if the
Frequency field is set to Recurring.
Short description

Brief description of the communication task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3293


<!-- page 3294 -->
Field

Description

Channels

Channel that must be used to compose and
sent communication messages. Possible
options are:
◦ DEX Desktop Assistant: Compose and
send the notification message through DEX
Desktop Assistant. For more information
on DEX Desktop Assistant, see Use DEX
Desktop Assistant.
◦ Email – Compose and send the
communication message as an email.
◦ SMS – Compose and send the
communication message as SMS.
◦ Microsoft Teams notification - Compose
and send communication messages as
Microsoft Teams notifications.
◦ Slack - Compose and send communication
message to a Slack channel.
◦ SMS notifications- Compose and send
communication message as SMS
notifications.
◦ Slack notifications – Option to compose
and send communication messages as
Slack notifications.

Recipients

User, user groups, or list of recipients to
whom the communication message must be
sent.

4. Either save your communication or compose your communication, depending on whether the
Compose and sent communication field has been set to Later or Now.
◦ If the Compose and sent communication field is set to Later, select Save. The
communication task is saved and displayed in the list of communication tasks on the
Communicate tab.
◦ If the Compose and sent communication field is set to Now, select Compose
communication to compose your messages within your selected communication channels.
The communication task record opens on a new tab within the incident view. For more
information, see Compose communications for incidents and major incidents.
Manage an announcement for communicating about major incidents
Create and manage an announcement to broadcast messages for Service Portal users to keep
them informed about the ongoing major incident. Major incident managers can create and
deploy announcements from Service Operations Workspace (SOW).

Before you begin

Role required: announcement_admin, sp_admin or admin
As a major_incident_manager, you must inherit any of the required roles to create and manage
announcements in Major Incident Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3294


<!-- page 3295 -->
About this task

Announcements can be displayed in an announcement banner or an announcement widget
instance. For more information, see Posting announcements to portal users .

Procedure
1. On the incident record page, select the Communicate tab.
2. Select Manage announcements.
A list of all major incident announcement records, is displayed. You can select any
announcement record and modify the record. Else, create a new announcement record.
3. Select New.
4. On the Details tab of the form, fill in the fields.

Field

Description

Announcement
Name

Internal title that isn't displayed in an announcement.

Active

Option to activate the announcement. To hide an announcement, clear
the Active check box.

Title

Title that appears in the announcement.

From

Date and time at which the announcement begins to appear.

To

Date and time at which the announcement ends. If no date and time is
entered, the announcement continues to appear until it's deactivated.

Summary

Text to appear in the announcement.

Display style

Defines the background color, text color, and text alignment of banner
announcements. Base system styles include:
◦ Normal: Blue background and left-aligned, white text.
◦ Urgent: Red background and left-aligned, white text.
Announcements that appear in a banner use the display style defined
in the Announcement record, by default. To use the display style in an
instance of the Announcements widget, you can select the Use Display
Style instance option.

Type

Defines where an announcement displays. By default, announcements
appear in the following locations:
◦ Banner: Announcement banner above the banner frame in the Service
Portal.
◦ Widget: Instance of the announcement widget.
You can create an announcement type to define other widget instances
to display an announcement.

Glyph

Glyph to display to the left of the title in banner announcements.

Glyph alt text

Alternative text for the glyph icon used with screen readers.

Public

Option to display the announcement to users before and after they've
logged in.

Display first

Option to display the announcement before all other announcements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3295


<!-- page 3296 -->
Field

Description

Note: If two records set to Display

first exist, the sort order defined in the

glide.service_portal.announcement.default_sort_order
system property is implemented. For more information, see Service
Portal properties .
Roles

User roles to whom the announcement is visible. If left empty, the
announcement is visible to all roles.

Note:
◦ If the Public check box is cleared, you can define the user roles to
whom the announcement is visible.
◦ Alternatively, you can define user criteria for the announcement
instead. To do so, set up User criteria for Service Portal
and
clear the Public check box. Announcements are displayed to only
the users who pass the access criteria.
Unauthenticated
only

Option to display the announcement only to users who haven't logged in.

Note: This option appears only if the Public check box is selected.

Behaviour
Click target

Creates a link below the announcement body that opens to a target page
or URL. Possible values:
◦ None: Announcement doesn't include a link.
◦ Page: Opens a Service Portal page in the current browser tab.
◦ URL in current browser tab: Opens a URL in the current browser tab.
◦ URL in new browser tab: Opens a URL in a new browser tab.

Details page

Page that opens in the current browser tab.

Note: This option is applicable only if the Click target field is set
to Page.
Available if
Details URL

URL that opens in the current or new browser tab.

Note: This option is applicable only if the Click target is set to
URL in current browser tab or URL in new browser tab.
Details link text

Link text for the page or URL click target. If you leave this field empty and
define a click target, the title of the announcement is "Learn More".

Dismiss options

Determines whether the user can dismiss the announcement. Possible
values:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3296


<!-- page 3297 -->
Field

Description

◦ User can dismiss - no redisplay
◦ User can dismiss for current session only
◦ User cannot dismiss
Portals

Portals that display the announcement. If this field is empty, the
announcement displays in all portals.

5. Select Save.
A Related records tab appears.
6. On the Related records tab, you use the following related links.
◦ Can View: Contains a list of user criteria to enable the users to view the announcements
based on role, department, group, location, or company.
◦ Cannot View: Contains a list of user criteria to block users from viewing the announcements
based on role, department, group, location, or company.
You can select an existing user criteria or select New to create a user criteria. For more
information, see User criteria for Service Portal .

What to do next

If the Type is Banner, test your announcement by navigating to the portal defined in the Portals
field. If the Type is Widget or a custom type, test your announcement by navigating to the page
with the associated widget instance.
Collaborate with stakeholders during a major incident
Collaborate with the required stakeholders during the various phases of a major incident to
discuss and resolve the incident quickly. You can initiate a chat or make conference calls using a
service provider to communicate with stakeholders.

About this task

Collaboration services provide a way to communicate and collaborate in real time to resolve
incidents. For more information on the integration and features of Collaboration services
available in Service Operations Workspace, see Collaboration in Service Operations Workspace.

Before you begin

Role required: major_incident_manager, itil, ia_admin, or admin

Procedure
1. On the incident record, select the Collaborate (
the collaborate tab on the side panel.
The collaborate tab displays the following tabs:

) icon on the contextual side panel to open

◦ Call – Includes a list of call records and call-related information, such as status and due
date with time duration, for the upcoming, pending, overdue, and active calls with the
collaborators.
◦ Chat - Includes a list of chat records and chat-related information, such as name and
number of participants and due date with time duration, for upcoming, pending, overdue,
and active chats with collaborators.
2. Select the Initiate collaboration (

) icon.

3. Collaborate using chat.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3297


<!-- page 3298 -->
a. Select any one of the following chat options:
▪ Select Start Sidebar discussion to open the conversation on a sidebar chat.
▪ Select MS Teams chat to open the conversation on Microsoft Teams.

Note:
▪ The chat application must be configured with Service Operations Workspace.
▪ Slack channels aren't supported.
b. On the pop-up window, fill in the details.
Collaborate using chat
Field

Description

Record number

Incident record number associated with the
collaboration chat. The incident record is
selected by default.

Subject

Subject or title for the collaboration chat.

Add participants

User, user group, or list of recipients who
must attend the collaboration chat.

Include a brief message for participants

Brief description about the issue to be
discussed in the chat.

c. Select Start Discussion.
The chat application opens with the selected participants.
4. Collaborate using call.
a. Select one of the following call options.
▪ Start Webex meeting
▪ Start MS teams meeting
▪ Start Twilio meeting
▪ Start Zoom meeting

Note: The selected call channel applications must be configured for Service
Operations Workspace.
.
b. On the pop-up window, fill in the details.
Collaborate using call
Field

Description

Conference bridge

Call channel used for collaboration.

Title

Subject or title for the collaboration call.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3298


<!-- page 3299 -->
Field

Description

Add participants

User, user group, or list of recipients who
must attend the collaboration call.

Provide a brief description, this note will be
stored in the conference record

Brief description about the issue to be
discussed in the call.

c. Select Start.
The call starts with the selected participants.
Create adhoc communication and collaboration using the Related record tab
Create adhoc communication and collaboration using the incident communication plan related
list on the Related records tab of an incident record page.

Before you begin

Role required: major_incident_manager, itil, ia_admin, or admin

Procedure
1. On an incident record, select the Related records tab.
2. In the related list, select the Incident communications Plans button to open a list of the
existing communication plans associated with the incident record.
3. Select New to create an incident communication plan.
For more information on the form fields of an incident communication plan, see Create adhoc
incident communication plan from incident.
The Incident communication plan record opens on a separate tab.
4. On the Incident communication plan record, select the Related records tab.
5. In the related links section, select Incident Communication task.
6. Select New to create an incident communication task.
For more information on the form fields of an incident communication task, see Create adhoc
incident communication task from Incident Communications Management.
7. On the Incident communication task record, add a communication channel.
a. Select the More actions (

) icon and then select Add communication channel.

b. On the pop-up window, select Channel type.
The possible values are:
▪ Communication
▪ Collaboration
c. Select Channel.
The possible values change depending on the selected Channel type:
▪ If Channel type is set to Communication, you can set one of the following values:
▪ DEX Desktop Assistant
▪ Email
▪ SMS
▪ Microsoft Teams
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3299


<!-- page 3300 -->
▪ Slack
▪ Slack notification
▪ If Channel type is set to Collaboration, you can set one of the following values:
▪ Sidebar discussion
▪ Conference
d. Select Save.
The communication channel record opens on a separate tab.
e. On the communication channel record, fill in the required details based on the selected
Channel.
For more information on the form fields, see Define a communication channel .
f. Select Save.
Resolve and close a major incident
Resolve a major incident to reinstate service after the interruption.

Before you begin

Role required: major_incident_manager or admin

Procedure
1. Open a major incident record.
2. Review the major incident record to ensure that the issue associated with the major incident is
resolved.
3. Select Resolve.
4. On the Resolve major incident pop-up window, fill in the details.
Resolve major incident
Field

Description

Resolution code

Category of how the major incident was
resolved. Possible values are:
◦ Duplicate
◦ Known error
◦ No resolution provided
◦ Resolved by caller
◦ Resolved by change
◦ Resolved by problem
◦ Resolved by request
◦ Solution provided
◦ Workaround provided

Resolution note

Brief description on how the major incident
was resolved.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3300


<!-- page 3301 -->
5. Select Resolve.
The state of the major incident is set to Resolved.
6. Select Close.

Result

The state of the major incident is set to Closed.
Review and update a post incident report
Review a post incident report (PIR) using the Post Incident Report tab. A PIR helps you review
and understand the cause of the major incident and the actions taken by the teams to resolve
the incident. This helps prevent the issue in the future.

Before you begin

The major incident must be in the Resolved state. For more information, see Resolve and close a
major incident.
Role required:
• For PIR review: sn_incident_read or sn_incident_write
• For PIR update, generate and download: major_incident_manager or admin

About this task

Reviewing the post incident report (PIR) also provides an opportunity to evaluate the incident
response process and identify areas for improvement. The PIR can be reviewed and updated
during the review process before it's shared with stakeholders.
After you resolve a major incident, you must publish the PIR for the major incident and
share it with the stakeholders within a specified time duration as defined in the SLA.
You can configure the SLA by specifying the value in hours in the PIR publish hours
(sn_sow_inc.pir.publish.hours) system property.
The following events are captured in the timeline of the PIR:
• Incident created
• Incident proposed as major incident
• Incident accepted as major incident
• Incident resolved
• Incident closed
• Custom events
• Incident task created
• Incident task closed

Procedure
1. Open a major incident record that is in the Resolved state.
2. Select the Post incident report tab.
3. On the Incident Response Timing section, review the time duration for the following fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3301


<!-- page 3302 -->
Incident Response Timing
Field

Description

Time to identify

Duration of time taken to identify an incident
as major incident.
The Time to identify field is displayed based
on this calculation:
Time to identify = (incident
created time) - (incident
proposed time)
or
Time to identify = (incident
created time) - (incident
promoted time)

Time to response

Duration of time taken to respond to the
proposed major incident.
The Time to response field is displayed
based on this calculation:
Time to response = (incident
proposed time) - (incident
promoted time)

Time to resolve

Duration of time taken to resolve the major
incident.
The Time to resolve field is displayed based
on this calculation:
Time to resolve = (incident
promoted time) - (incident
resolved time)

4. On the Contributors section, add users to help with creating and publishing the PIR.
a. Select the Edit Co-contributors (

) icon to add users as contributors.

b. In the Co-contributors field, enter users or user groups.
c. Select the Save Co-contributors (

) icon to save the changes.

5. On the Incident summary section, review the incident summary information and edit as
needed.

Note:
By default, this section retrieves the incident summary information from the Overview
tab. You can modify the values.
a. Select the Edit report (

) icon to edit the incident summary field of this section.

b. Edit the following information.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3302


<!-- page 3303 -->
▪ Summary
▪ Impact
▪ Resolution
c. Select the Save report (

) icon to save the changes.

6. On the Timeline section, review the incident events timeline and edit as needed.
a. Select the Edit Timeline (

) icon to edit the event timeline.

b. Select the Add event option, enter the following information, and then select Add to add a
new event to the timeline.
Add event
Field

Description

Select date and time of the event

Date and time of the event.

Enter short description of the event

Brief description of the event.

c. Edit the event timeline with the following setting options.
Event timeline setting options
Options

Description

Hide

Select the Hide (
from the timeline.

Show

Select the Show (
) icon to show a hidden
event on the timeline.

Edit

Delete

Order of events

) icon to hide an event

Select the Edit ( ) icon to edit the
description or the date and time of an event.
This option is available only for the events
added using the Add event option.
Select the Delete ( ) icon to delete an
event from the event timeline. This option
is available only for the events added using
the Add event option.
Option to set the chronological order of
events. Possible options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3303


<!-- page 3304 -->
Options

Description

▪ Ascending – The event that occurred first
is placed at the top, and the event that
occurred last is placed at the bottom.
▪ Descending – The event that occurred
last is placed at the top, and the event that
occurred first is placed at the bottom.
Event Grouping

Option to enable the grouping of the events
that occur within a specified time duration.

Group events with--of each other

Time duration that groups events if the
events occur within this value.

Visibility settings
Show hidden events in edit view

Option to show the events that are hidden
when the Edit Timeline (
selected.

Show manually events in edit view

) icon is

Option to show the events that are added
manually when the Edit Timeline (
is selected.

Show time line events in edit view

Option to show the timeline events when the
Edit Timeline (

Reset settings

d. Select the Save settings (

) icon

) icon is selected.

Select the Reset settings (
) icon to reset
the settings back to the default settings.

) icon to save the changes.

7. On the Related records section, review the information of the records associated with the
incident and update as needed.
a. Select Edit.
You’re redirected to the Related records section of the Details tab in the major incident
record.
b. On the Related records section, edit the following fields.
Related records
Fields

Description

Parent incident

Incident record that is associated as the
parent to the incident record.

Problem

Problem record associated with the incident
record.

Change request

Change request associated with the
incident record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3304


<!-- page 3305 -->
Fields

Description

Caused by change

Change request for which the incident is
created.

c. Select Save.
The information is updated in the fields of the Related records section of the Post incident
report tab.
8. Select Preview.

Note: This option is available only if the PIR SOW preview page

(sn_sow_inc.pir_pdf_preview_sow_page) system property is set to true.
9. Select Download.
A pop window displays the post incident report export in progress. Once the export process is
completed, a Download option appears on the pop-up window.
10. Select Download.

Result

The post incident report is downloaded to your system in PDF format. You can send the PDF file
to the required stakeholders.

On-Call Scheduling in Service Operations Workspace
Use On-Call Scheduling in Service Operations Workspace to view and manage your shifts and
schedules.

On-Call Scheduling overview
https://player.vimeo.com/video/1132334563?
h=a0e7c66b5c&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
As an agent, view your schedule and your peer's schedules, request an absence, propose
coverage, and set your notification preferences.
As a Shift Manager, view, and manage shifts, approve or reject absence requests, and resolve
gaps and conflicts. You can also manage notification preferences, delivery channels, escalation
trigger rules, and policies for your group.
As an On-call Admin, view, and manage shifts, approve or reject absence requests, and resolve
gaps and conflicts. You can also manage notification preferences, delivery channels, escalation
trigger rules, and policies for any group.

Schedules in Service Operations Workspace
Use the Schedules menu on the home page to access On-Call Scheduling in Service Operations
Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3305


<!-- page 3306 -->
On-call Schedules tab
This tab displays all the user's schedules and shifts in a calendar or time-line view. You can
customize the view as a day, week, or month view, and filter the calendar based on your groups
or time zones.
You can manage your work, shifts, and time-off requests on this tab.

On-call notification preferences
On this tab, you can define your preferred notification methods to receive alerts when a ticket is
escalated to you.
You can define the escalation notification rules and the delivery channels that are used to
receive these notifications.

Teams in Service Operations Workspace
Use the Teams menu (
) in Service Operations Workspace to view all teams. Select a team card
to view and manage a team's schedule, define escalation policies, and team preferences for the
selected shift. This feature verifies that your team knows who is on call, is accountable, and is
confident that critical alerts or incidents are acknowledged.
Use the Schedule tab to create and manage shifts for your team. This feature verifies that the
right person is available to respond to incidents and critical alerts. You can also add or edit team
members, description, and the contact information of your team.
Use the Escalation triggers and policies tab to set an escalation policy and the trigger rules
to be followed if there's an incident. You assign these policies and trigger rules, along with
notification preferences, to a team.
Use the On-call Team preferences tab to edit shift preferences for a group. You can add a Shift
Manager and the start day of the week, set preferences for absence requests and shift overlap,
and escalation rules for shift overlap.

Contextual side panel
Use On-Call Scheduling from the Contextual side panel, when you open an incident. You can
also configure experts on call and escalation tracking for any other record, if necessary.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3306


<!-- page 3307 -->
Select the Experts On-call icon ( ) from the Contextual side panel to view and contact the
recommended subject matter experts for help.
To view the escalation details and dynamic tracking of an on-call escalation, select the on-call
escalations icon (

) from the Contextual side panel.

Configuring On-Call Scheduling in Service Operations Workspace
Configure On-Call Scheduling in Service Operations Workspace (SOW) for their organizational
needs, utilizing a suite of features to fulfill the various requirements.
You must configure the following On-Call Scheduling features in SOW to schedule and manage
your work shifts:
• Create a on-call shift form.
• Create or edit on-call shift.
• Add on-call members to the shift.
• Configure On-call notification preference rules.
• Configure On-call team notification preferences.
• Configure communication, notification and delivery channels.
• Creating absences with proposed coverage and managing the requests.
• Create escalation trigger rules, levels and policies.
Create new form
Use the Create new form to create an on-call shift in Service Operations Workspace. If you select
the Create new option on the Schedules page, provide the following field details.
Create new form
Field

Description

Shift name

Name for the shift.

All day shift

Toggle for all-day commitment.

Shift starts

Date and time the shift begins.

Shift ends

Date and time the shift ends.

Repeats

Shift repetition.
Available options:
• Never
• Daily
• Weekly

Every

Repetition of the shift. The display depends on
the time frame selected in the Repeats field.

More options
Timezone

User timezone.

Holiday schedule

Schedule to use for the holiday.

Repeats until

Date and time to end repetition.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3307


<!-- page 3308 -->
Create and edit shift in Service Operations Workspace
Shift manager can create a new shift using the Schedule menu or Teams menu in Service
Operations Workspace

About this task

There are two ways to create and edit a shift:
• Navigate to Workspaces > Service Operation Workspace and select
view details and click schedules tab.
• Navigate to Workspaces > Service Operation Workspace and select

. Select a team to

.

Get an overview of how to create and edit a shift in this video. Create and edit a shift

Before you begin

Role required: rota_manager, rota_admin

Procedure
1. On Schedules page, select Create shift and provide values for the following fields on the
Create new shift form:
If you select Create New, provide the following details and select Create shift:

Create Shift
Field

Description

Shift name

Name for the shift.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3308


<!-- page 3309 -->
Field

Description

All day shift

Toggle for all day commitment.

Shift starts

Date and time the shift begins.

Shift ends

Date and time the shift ends.

Repeats

Shift repetition.
Choices are:
◦ Never
◦ Daily
◦ Weekly

Every

How often to repeat. Display depends on the
time frame chosen.

More options
Timezone

User timezone.

Holiday schedule

Schedule to use for the holiday.

Repeats until

Date and time to end repetition.

For Use shift template, fill in the fields, as appropriate.
Create shift using shift template
Field

Description

Shift name

Name for the shift.

Template/Schedule

Existing templates for shifts.
Choices are:
◦ 24 x 7
◦ Off hours (workday 8:00 - 5:00)
◦ Off hours (workday 9:00 - 5:00)
◦ Workday 8:00 - 5:00
◦ Workday 9:00 - 5:00

You have successfully created a new shift.
2. To edit a shift, right-click the shift card and select the icon
Shift details open up in the side panel.
3. From the shift details in the side panel, you can update the following shift details:
Edit shift
Field

Description

Details tab

Update the shift details:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3309


<!-- page 3310 -->
Field

Description

◦ All day shift
◦ Shift starts
◦ Shift ends
◦ Repeats
◦ Timezone
◦ Holiday schedule
◦ Repeats until
Members tab

Update the shift details:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3310


<!-- page 3311 -->
Field

Description

◦ Type of rotation interval. Possible options
are:
▪ Daily
▪ Weekly
▪ Monthly

Note: This option is available only
for the 2024 schedule engine. For
information about this schedule
engine, see On-Call Scheduling
new schedule engine.
◦ Rotation frequency for weekly interval
◦ Rotation frequency for monthly interval.
Also, specify if the roster rotation should
start on the last day of the month or any
specific day of the month.
◦ Day of the week or month for rotation
◦ Add rotation
◦ Add/delete/rename responder level
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3311


<!-- page 3312 -->
Field

Description

Escalation policies tab

View escalation policy and click Open
Team Record go to the team record.

4. After updating the shift details, click Save & publish to save the changes.
5. Select the
shift.

icon to change shift to draft mode, delete, or deactivate/activate the selected

6. Select Back to all shifts to view all the shifts for a selected team.
You can also select

to change shift color.

Create notification preference rule
Define your preferred notification methods and delivery channels for receiving alerts whenever
an escalation ticket is raised.

Before you begin

Get an overview of how to add delivery channels and notification preferences in this video.
Create notification preference rule and delivery channels
Role required: itil, rota_manager, rota_admin

Procedure
1. Navigate to Workspaces > Service Operation Workspace.
2. Select the Schedule icon.
3. On Schedules page, select On-call notification preferences tab.
4. To define your preferred notification, select Create new and provide the following details:
◦ Rule name
◦ Select Define active days and hours to customise the rule with the following details:
▪ All-day selection box
▪ From and Until
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3312


<!-- page 3313 -->
▪ Active days detail
▪ Active days
▪ Notification attempt

◦ Select Use preferred schedule to reuse an existing schedule and provide required details.
◦ In Notification Attempts, select Add new and select your preferred methods from the
following:
▪ Slack
▪ MS Teams
▪ Email IDs
5. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3313


<!-- page 3314 -->
Edit On-call team preference using Teams menu
Use the Teams menu to edit the on-call preferences for a selected team.

Before you begin

Role required: rota_manager, rota_admin

Procedure
1. Navigate to Workspaces > Service Operation Workspace.
2. From the primary navigation, select Teams (

).

3. Select a team card to open.
4. Select On-call team preferences from the header.

5. Select an On-call shift managers from the list menu.
6. Select an option for PTO requests from the list menu.
7. Select an option for Preferred start day of the week from the list menu.

Note: This option is available for Washington DC and later release only.
8. Select an option for Allow shift schedule overlap from the list menu.
9. Select an option for Escalation rule on shift overlap for the list menu.
10. Select Save.
Edit delivery channel
Edit rules and delivery channels.

Before you begin

Role required: rota_manager, rota_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3314


<!-- page 3315 -->
Procedure
1. Navigate to Workspaces > Service Operation Workspace.
2. Select the Schedule icon.
3. On Schedules page, select Notification preferences and select Edit to add or edit Delivery
channels.
4. Select Add New to add a new channel and provide name and email ID.
5. Select Phone numbers tab to add and edit phone numbers.
6. Select Save to apply your changes.
Escalation triggers and policies
Configure the user, notification and on-call escalation preferences by creating escalation trigger
rules and policies.

About this task
Before you begin

Role required: rota_manager, rota_admin

Procedure
1. Navigate to Workspaces > Service Operation Workspace and use any of the following
options.
◦ Schedules menu:
▪ Select the Schedule menu, select a shift card and click

icon.

▪ Select Escalation policies tab and click Open Team Record.
◦ Teams menu:
▪ Select the Teams menu, select All Shifts from the drop-down and select a shift card.
▪ Select Escalation triggers and policies tab.
2. Under Escalation policies in the left panel, select Create policy.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3315


<!-- page 3316 -->
Field

Description

Active

Option to activate or deactivate the policy.

Create from scratch or Create from template

Option to create your own policy or use a
template created by your admin.

Description

Text that describes the policy.

Active on shift

Shift on which the escalation policy is
applicable. Select from the list menu. Set this
as the default using the check box.

Use as default

Option to set the shift as default for the
escalation policy.

Order

Order in which the escalation policy is
executed. When there are multiple escalation
triggers in a team, The one with smaller order
number is checked first.

Conditions

Conditions for the policy. You select a table
and condition set. These conditions are
checked after the escalation is started by an
escalation trigger. If the conditions are met,
the policy is run.

Escalation steps

Escalation steps that you can add using the
modal. Select Done when you are finished.

Escalation notifications

Set the notification conditions for the policy.
Toggle user preference override, manual set
or use a template.

Add notification step

Notification step such as email, call, or SMS
that you can add. You can add as many

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3316


<!-- page 3317 -->
Field

Description

attempts as you like. Select Done when you
are finished.
4. To add more escalation levels to the policy, select Add an escalation level.
5. Select Save changes.
6. Optional: To add another escalation policy to the team for another category of alert or
incident, select Add a policy.
7. To create trigger rules, select Escalation triggers in the left panel, select Create trigger.
8. On the form, fill in the fields.

Escalation trigger form
Field

Description

Escalation trigger name

Name of the trigger.

Active

Option to activate or deactivate the trigger.

Order

Order in which the trigger rule is executed.
When there are multiple escalation triggers in
a team, The one with smaller order number is
checked first.

Conditions

Set the conditions for the trigger by selecting
a table and condition set. When conditions
are met, escalation triggers are triggered for
shifts in SRM team.

Advanced options
Trigger action

Action that is triggered when the Match
conditions and Conditions are met. Possible
values:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3317


<!-- page 3318 -->
Field

Description

◦ Subflow
◦ Workflow
◦ Script (server-side JavaScript)
Trigger workflow

Workflow to run. Available only if Trigger
action is set to Workflow.

Trigger subflow

Subflow to run. Available only if Trigger
action is set to Subflow.

Note: The following subflows under
the On-Call Escalation Triggers category
can be configured using the trigger
rules:
◦ On-Call: Assign
◦ On-Call: Assign and Notify
◦ On-Call: Assign By Acknowledgement
◦ On-Call: Escalations by Email
Trigger script

Script (server-side JavaScript) to run.
Available only if the Trigger action field is set
to Script.

Note: This action is available only for
users with the rota_admin and admin
roles.
Run trigger rule every time the selected field
changes

Option to re-run the trigger rule when the
field value of the specified Trigger fields is
changed.

Trigger fields

List of fields for a specific table which when
changed causes the trigger rule to re-run.
For example, with table as incident, you can
select fields such as assignment group,
priority and state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3318


<!-- page 3319 -->
Field

Description

Note:
◦ This field is visible only if the Run
Trigger field is set to Every time
trigger field changes.
◦ You can use the Trigger Rule Table
Configs table to configure which
fields to be displayed for a specific
table. You can access the table
from the SOW Admin Center. For
more information, see Manage
configurations in Service Operations
Workspace for ITSM and Configure a
table for escalation trigger rules.

9. Select Save changes.
Create escalation trigger rules and policy from team record
Navigate to team record to create new policy and trigger rules

Before you begin

Get an overview of how to create escalation trigger rules and policy from a team record in this
video. Create escalation trigger rules and policies
Role required: rota_manager, rota_admin

Procedure
1. Navigate to Workspaces > Service Operation Workspace.
2. Click the Schedule icon.
3. On the Schedules page, right-click the shift span and click

icon.

Scheduling in service operation workspace
View and manage schedules, shifts and time-off request.
Schedules menu helps Agents view and manage day-to-day work, request for time-offs and
propose coverage for absence.
Shift manager can create and manage schedules, shifts, team members, escalation trigger
rules and policies for their group. They can also approve or reject time-off requests, and resolve

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3319


<!-- page 3320 -->
conflicts and gaps for their group. While, On-call admin can perform these tasks for any group.

Field

Description

Teams field

Displays a list of all the groups that you
manage or you are a member of. You can
select a group to view all the shifts of that
group. You can also type the group name to
execute the search.

Create shift

Create a new shift. You can customise the
name, star date, end date, occurrences and
repetition or use a predefined template.

Today

View all the activities if the current day.

Month

Select and jump to a particular month.

Timezone

Select a timezone for the shift.

View

Drop-down to select either time-line view or
calendar view. You must also decide whether
you prefer day, week or month view.

General settings

Filters to view:
• Gaps
• Conflicts
• Shift members
• Pending absences
• Approved absences
• Draft shifts

Share calendar

To share iCal URL or .ics file with other
members and subscribe to a calendar. You can
select the preferred shift from the drop-down
to go to the subscription page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3320


<!-- page 3321 -->
Field

Description

Note: This option available for
Washington DC and later releases only.
For Vancouver and previous releases,
you have the option to send an email
with subscription link.
Shift card

Select a shift or right-click to view shift detail
and access:
• Edit shift (

)

• More options (

Edit shift (

)

• To view and edit shift details like start time,
date, timezone, etc.

)

• To add, delete and edit the members in a
shift. You can also add/ delete responder
levels and rotation details.
• To open and edit the escalation policies in
team record.

More options (

)

• To provide coverage
• To schedule extra time
• To schedule absence

Required actions

Displays list of upcoming tasks assigned to
you.
• For agent it might be upcoming shift or
absence that they have scheduled.
• For Manager, this might be a list of gaps and
conflicts, time-off request for upcoming shift.

Manage your work and schedule absence
Request absence and provide coverage for a shift. You can also request over-time for a shift.

About this task

You can schedule your own time off and suggest a suitable cover from among the fellow roster
members. This helps the shift manager and on-call admin in planning shifts and making sure that
members are available to respond to incidents and escalations at all times.
Get an overview of how to schedule an absence with this video. Schedule absence

Before you begin
Role required: itil

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3321


<!-- page 3322 -->
Procedure
1. Navigate to Workspaces > Service Operation Workspace.
2. Select the Schedule menu to view your calendar.
You can also do the following to view your calendar:
◦ Navigate to Workspaces > Service Operation Workspace.
◦ Select Teams menu from home page and select a team.
◦ Select Schedule tab to view all the schedules for the team.
3. Select a shift card and select

icon or right-click a shift card.

4. Select Schedule absence to request absence for the shift and provide the following details:
◦ Member
◦ All day toggle button
◦ Start time and End time
◦ Proposed cover
◦ Notes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3322


<!-- page 3323 -->
5. Select Schedule absence.
Manage shifts in service operation workspace
Accept or reject absences requests, resolve gaps and conflicts by providing coverage and
scheduling extra time for a shift.

Before you begin

Get an overview of how to manage shifts in this video.
https://player.vimeo.com/video/989602605?
badge=0&autopause=0&player_id=0&app_id=58479
Role required: rota_manager, rota_admin

Procedure
1. Navigate to Workspaces > Service Operation Workspace.
2. Click the Schedule icon to view all the absence requests, gaps and conflicts in a shift.
All the absence requests are displayed in the Required actions section.
3. Click Approve or Reject and confirm the same when prompted.
4. For gaps or conflicts, select the shift card and click

icon or right-click a shift card.

5. Click Provide coverage to replace a member of the shift.
Provide the following details and click Provide coverage:
◦ Member: name of the member
◦ Start
◦ End

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3323


<!-- page 3324 -->
6. Click Schedule extra time to work for extended hours and provide the following details:
◦ Start
◦ End
Click Schedule extra time.

7. Right-click a shift card and click Delete absence to remove the approved absence request
from the calendar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3324


<!-- page 3325 -->
On-call support for an incident in Service Operations Workspace
You can identify available on-call members of a support group and contact them to resolve an
issue.

On-call support for an incident
Based on support groups associated with all services and CIs of the incident, the Experts oncall panel displays three on-call recommendations in the following order:
• Support group associated with the primary service, that is, the Service field.
• Top support group of impacted services from the Impacted Services/CIs related list.
• Support group associated with the primary configuration item, that is, the Configuration item
field.
• Top support group of affected CIs from the Affected CIs related list.
• Assignment group of an agent, that is, the Assignment group field.
For each of these fields, on-call information such as shift names and on-call members is
displayed. For each on-call member, you can view the contact information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3325


<!-- page 3326 -->
Experts on-call panel

For information about On-Call Scheduling, see On-Call Scheduling.
Experts on-call in Service Operations Workspace
View the relevant shift details and contact on-call members for issue resolution and dynamically
track the on-call escalation.

Before you begin

Role required: itil, admin, sn_incident_read, sn_change_read
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3326


<!-- page 3327 -->
Ensure that the escalation logging, that is, the

com.snc.on_call_rotation.log_escalations property is enabled to view the oncall escalation tracking page. For information about this property, see System properties for OnCall Scheduling.

Procedure
1. Open an incident.
2. To view the relevant shift details, contact on-call members, and do other relevant tasks,
perform the following steps.
a. From the contextual side panel, click the experts on-call icon ( ).
For information about how on-call recommendations can be configured, see Customize the
on-call support group recommendations.
Three on-call recommendations are displayed based on support groups associated with all
services and CIs of the incident in the following order:
▪ Support group associated with the primary service, that is, the Service field.
▪ Top support group of impacted services from the Impacted Services/CIs related list.
▪ Support group associated with the primary configuration item, that is, the Configuration
item field.
▪ Top support group of affected CIs from the Affected CIs related list.
▪ Assignment group of the agent, that is, the Assignment group field.
b. To view detailed shift information such as all on-call members and start time and end time
and, click Shift details.
When no on-call member is available for a support group in that shift, you can view the next
shift with on-call members.
c. To start a Microsoft Teams chat conversation with an on-call member, click Contact next to
the member details and click Start Teams chat.

Note: You can view the user presence before contacting the on-call member.
For information about Microsoft Teams chat, see Collaborate on a task record using
Microsoft Teams in Service Operations Workspace.
d. To configure display preferences in the Experts on-call panel, click the preferences icon
(

) and perform any of the following actions.

▪ To hide shifts with no on-call members, use the Hide shifts with no on-call toggle switch.
If no on-call members are available for all support groups, you can search for other groups
and view its on-call members.
▪ To use the default date and time format configured for the current user, use the Use
default date and time formats toggle switch.
3. To view dynamic tracking of an on-call escalation, click the on-call escalations icon (

)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3327


<!-- page 3328 -->
4. To view detailed escalation tracking information, click View escalation details.

Problem Management in Service Operations Workspace
When you have recurring incidents or a major incident, you can create a problem to identify
the root cause of the incidents and help prevent them from happening again. Use Service
Operations Workspace to manage problems through their life cycle, share workarounds or fixes
with related incidents, and create known error articles to help deflect incidents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3328


<!-- page 3329 -->
Problem record in Service Operations Workspace

Overview tab
This tab displays the following information about a problem:
• Summary
• Analysis information
• Resolution information
• Problem tasks and fix tasks
• Impact
• Work notes
You can configure the problem record overview tab and its UI elements in the Service Operations
Workspace Admin Center. For more information, see Manage configurations in Service
Operations Workspace for ITSM.
You can optionally enable the following shortcuts, accessible from both the header and Tasks
(problem and fix) drop-down menus:
• Create defect (for more information and requirements, see Agile Development 2.0

)

• Create enhancement (for more information and requirements, see Agile Development 2.0

)

• Create improvement initiative (for more information and requirements, see Continual
Improvement Management)
For all other configuration options, see Configuring Problem Management in Service Operations
Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3329


<!-- page 3330 -->
Details tab
This section displays the detailed information of a problem. For information about fields in this
section, see Create a problem in Service Operations Workspace.
From the Compose section, you can add work notes for the problem.
All fields that are available on the Problem form in ServiceNow AI Platform are available in
Service Operations Workspace. However, on the problem form in Service Operations Workspace,
the State field is read-only. For information about state transitions of a problem, see Life cycle of
a problem.
For information on how you can configure fields in this tab, see Configuring Problem
Management in Service Operations Workspace.

Problem Tasks tab
This section displays problems tasks associated with this problem. Problem tasks are created
when you need help from other teams to identify a fix for the problem. For information about
creating a problem task, see Create a problem task in Service Operations Workspace.

Fix Tasks tab
This section displays fix tasks associated with the problem. In Service Operations Workspace,
only change requests are configured as fix tasks. For information about the List of related
task records (comma-separated) to track as fixes for this Problem property where the fix
tasks are configured, see Configure properties for Problem Management in Service Operations
Workspace.

Related records tab
This section displays the following records related to the problem. You can add a record, create a
record, or remove it from the problem.
• Incidents
• Affected CIs
• Outages
• Knowledge attached from Agent Assist

Contextual side panel
From this section, you can access Agent assist and search for relevant records and perform the
required actions.
For more information about Problem Management, see Problem Management.
Create a problem in Service Operations Workspace
Investigate the root cause of recurring incidents or a major incident. Provide a permanent fix to
help prevent them from happening again.

Before you begin

Role required: itil or problem_coordinator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3330


<!-- page 3331 -->
Procedure
1. Create a problem from any of the following sources.
Option

Description

a. Navigate to any list of problems.

Note: The following lists are avail­
able for problems:
▪ Assigned to you
▪ Unassigned
▪ Open

From any Problem list

▪ Resolved
▪ Risk Accepted
▪ Known Errors
▪ All
b. Select New.
a. Open an incident.
From an incident

b. From the incident record page, select the
list beside Create change request.
c. Select Create problem.
a. Open an interaction.
b. From the record page, select Create prob­
lem.

Note: Enable the Allow Prob­
From a customer interaction regarding an is­
sue with a cause that must be investigated

lem creation from Interaction
(glide.problem.interaction.allow_create)
problem property from Problem > Prob­
lem Properties.
For more information, see Configure
properties for Problem Management in
Service Operations Workspace.

2. On the problem form, fill the fields in the Details tab.
For a description of the field values, see Problem form.
3. Select Save.
Work on a problem in Service Operations Workspace
Manage problems and problem tasks through their life cycle, share workarounds or fixes with
related incidents, and create known error articles to help deflect incidents.

Before you begin

If you aren't using the base problem life cycle, you will continue to use the classic experience to
manage problems or problem tasks through their life cycle. From the problem record page, select
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3331


<!-- page 3332 -->
Continue problem to be redirected to the ServiceNow AI Platform user interface where you can
make state transitions. For information about state transitions of a problem, see Life cycle of a
problem.
The base problem life cycle is included with the Problem Management Best Practice - Madrid
- State Model (com.snc.best_practice.problem.madrid.state_model) plugin. Use the Problem
Management Migration Utility store application
to enable this plugin and migrate your records
to the base problem life cycle.
Role required: itil, problem_coordinator or higher (for managing the life cycle of the problem),
problem_admin (for deleting the problem)

Procedure
1. Open a problem.
For information about creating a problem in Service Operations Workspace, see Create a
problem in Service Operations Workspace.
2. Perform any of the following actions on the problem record page.
Option

Description

For the reference fields such as Configura­
View the unified dependency CMDB map in tion item, Service offering and Service, se­
a new tab within the workspace view
lect the Dependency view icon ( ).
Select Create problem task, or select New
from the Problem Tasks tab.
Create a problem task associated with the
problem

For more information about creating a prob­
lem task, see Create a problem task in Ser­
vice Operations Workspace.

Assess a problem

Select Assess and fill the mandatory fields.

Confirm a problem

Select Confirm to move the problem from
the Assess state to the Root Cause Analysis
state.
◦ If you are the subject matter expert for this
problem area, carry out the investigation
and select Fix to provide the cause notes
and fix notes.

Investigate the root cause of a problem

◦ If you are not the subject matter expert and
you want help from another team to investi­
gate, create a problem task.
For more information about creating a prob­
lem task, see Create a problem task in Ser­
vice Operations Workspace.
From the drop-down list next to Create prob­
lem task, select Create change request, or
select New from the Fix Tasks tab.

Create a change request from the problem

For information about creating a change re­
quest, see Create a change request in Ser­
vice Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3332


<!-- page 3333 -->
Option

Description

Create an outage associated with the prob­
lem

From the drop-down list next to Create prob­
lem task, select Create outage.
From the drop-down list next to Create prob­
lem task, select Create known error article.

Create a known error article

Known error articles document the root cause
and the workaround of the problem. For a de­
scription of the field values, see Known error
article form.

Assign the problem to yourself

Select Assign to me.

From the drop-down list next to Cancel, se­
Mark a problem as a duplicate of an existing
lect Mark duplicate and fill the mandatory
problem
fields.
Cancel a problem

Select Cancel problem and fill the mandatory
fields.

Delete a problem

Select the more actions icon (
Delete.

) and select

Note: This option is available when
you have the problem-coordinator role
and the following conditions are applica­
ble for a problem:
◦ Impact is high.
Create a known error article for a high-im­
pact problem

◦ A known error article is not already at­
tached.
◦ Work notes are not empty.
a. From the contextual side panel, select the
recommendations icon (

).

b. From the Recommended actions tab, se­
lect Create article. For a description of the
field values, see Known error article form.
a. From the contextual side panel, select the
Attach knowledge articles or records that
help a quick resolution of a problem

Add an attachment to a problem
Copy the record page URL to easily access
the record

agent assist icon (

).

b. Search for a resource and perform the re­
quired action.
The knowledge articles attached here are dis­
played in the Related records tab.
From the contextual side panel, select the at­
tachments icon (

).

Select the more actions icon (
Copy URL.

) and select

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3333


<!-- page 3334 -->
Option

Description

Share a workaround

Select the more actions icon (
Share workaround.

) and select

Share a fix

Select the more actions icon (
Share fix.

) and select

Create templates for reuse

Acknowledge the problem while recogniz­
ing there is currently no permanent resolu­
tion

Re-analyze a problem

From the contextual side panel, select the
templates icon (

).

From the drop-down list next to Cancel, se­
lect Accept risk and fill the mandatory fields.

Note: You can apply workaround notes
to a risk-accepted problem.
From a problem in the closed or resolved
state, select Re-analyze. The state is
changed to Root Cause Analysis.

Problem Management models in Service Operations Workspace
You can use Problem Management models to tailor processes for specific use cases.
You can create custom models for problems and problem tasks to extend their default
models without compromising on existing capabilities. To use these capabilities, enable the
com.snc.problem_management.models.enabled system property introduced in the
Xanadu release. Enabling Problem Management models is optional.
Problem Management models enable you to define:
• States for specific use cases
• State transitions
• State transition conditions
The following default models are provided to replicate the non-model versions
included as part of the base problem life cycle. The base problem life cycle is
included with the Problem Management Best Practice - Madrid - State Model
(com.snc.best_practice.problem.madrid.state_model) plugin. Use the Problem Management
Migration Utility store application
to enable this plugin and migrate your records to the base
problem life cycle.
Problem model
Model

Description

General

Problem process equivalent to the non-model
base problem life cycle.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3334


<!-- page 3335 -->
Problem task models
Model

Description

Root cause analysis

Problem task process equivalent to the nonmodel base problem life cycle.

General

Problem task process equivalent to the nonmodel base problem life cycle.

Enabling Problem Management models
Test Problem Management models in a non-production instance first. If you have changed the
base problem life cycle or life cycle actions, you must make the equivalent changes to your
custom models.
To begin working with custom models, see the following topics:
• Enable Problem Management models in Service Operations Workspace
• Create a problem model in Service Operations Workspace
• Create a problem task model in Service Operations Workspace

Note: Any problems or problem tasks that were created before you enable Problem
Management models will continue to use the non-model life cycle.

Disabling Problem Management models
Before disabling Problem Management models, you must apply any additional features you have
added through custom Problem Management models to your non-model life cycle.

Considerations for Problem Management models and Service Operations
Workspace
Service Operations Workspace 6.x is based on the Xanadu release and it supports Problem
Management models.
Service Operations Workspace 5.x is based on the Washington DC release and it doesn't
support Problem Management models.
If you are using Service Operations Workspace 5.x and you enable Problem Management
models, you will manage problems and problem tasks in the classic UI16 experience, rather than
in Service Operations Workspace.
Create a problem task in Service Operations Workspace
When you need to engage another team or agent for help, create and assign a problem task.

Before you begin

Role required: itil or problem_coordinator

Procedure
1. Open a problem.
2. From the problem record page, create a problem task in the one of the following ways.
◦ Select Create problem task.
◦ From the Problem Tasks tab, select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3335


<!-- page 3336 -->
3. In the Create problem task dialog box, select the problem task type.
◦ Root cause analysis: Tasks to investigate the root cause of a problem and to find a
resolution for the problem.
◦ General: Tasks other than root cause analysis tasks.
For information about creating additional task types, see Create a task type for problem or
change in Service Operations Workspace.
4. Select Create.
5. On the problem task form, fill in the fields.
For a description of the field values, see Problem task form.
6. Select Save.
Work on a problem task in Service Operations Workspace
Manage problems and problem tasks through their life cycle, share workarounds or fixes with
related incidents, and create known error articles to help deflect incidents.

Before you begin

If you aren't using the base problem life cycle, you will continue to use the classic experience to
manage problems or problem tasks through their life cycle. From the problem task record page,
select Continue problem task to be redirected to the ServiceNow AI Platform user interface
where you can make state transitions. For information about state transitions of a problem, see
Life cycle of a problem.
The base problem life cycle is included with the Problem Management Best Practice - Madrid
- State Model (com.snc.best_practice.problem.madrid.state_model) plugin. Use the Problem
Management Migration Utility store application
to enable this plugin and migrate your records
to the base problem life cycle.
Role required: itil or problem_task_analyst (for changing the state of the problem task or deleting
it)

Procedure
1. Open a problem.
For information about creating a problem in Service Operations Workspace, see Create a
problem in Service Operations Workspace.
2. From the Problem Tasks tab, open the required problem task.
3. Perform any of the following actions on the problem task record page.
Option

Description

Assign a problem task to yourself

Select Assign to me.

Assess a problem task

Select Assess and fill the mandatory fields.

Start work on a problem task

Select Start work.

Cancel a problem task

Select Cancel task and fill the mandatory
fields.

Delete a problem task

Select the more actions icon (
Delete.

) and select

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3336


<!-- page 3337 -->
Option

Description

a. From the contextual side panel, select the
Attach knowledge articles or records that
help a quick resolution of a problem task

Add an attachment to a problem task

agent assist icon (

).

b. Search for a resource and perform the re­
quired action.
The knowledge articles attached here are dis­
played in the Related records tab.
From the contextual side panel, select the at­
tachments icon (

).

Copy the record page URL to easily access
the record

Select the more actions icon (
Copy URL.

Complete a problem task

Select Complete and fill the mandatory fields.

Create templates for reuse

Re-assess a problem task

) and select

From the contextual side panel, select the
templates icon (

).

From a problem task in the Work in Progress
or Closed state, select Re-assess. The state
is changed to Assess.

Problem Management in Service Operations Workspace reference
Reference topics provide additional information about Problem Management in Service
Operations Workspace.
Problem form
Description of the field values for the problem form in Service Operations Workspace.
Create New Problem form
Field

Description

Problem
Problem statement

Brief description of the problem.

Description

Detailed description of the problem.

Number

Unique number that identifies the problem
record.

Origin task

Task that first identified this problem.

Category and Subcategory

Group to which the problem belongs, such
as software or hardware. After selecting the
category, select the subcategory, if applicable.

State

Value that changes as the problem proceeds
from one state to another state.
For information about state transitions of a
problem, see Life cycle of a problem.

Impact

Effect that the problem has on business
operations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3337


<!-- page 3338 -->
Create New Problem form (continued)
Field

Description

Urgency

Extent to which the problem resolution can
bear delay.

Priority

How quickly the service desk should address
the problem. The Priority field is automatically
set to the Impact and Urgency values.

Impact
Service

Business service, such as email or IT Services,
that the problem applies to.

Service Offering

Consists of one or more service commitments
that uniquely define the level of service in
terms of availability, scope, pricing, and
packaging options. Service offering enables
you to receive different features and their
levels of performance for a given service.

Configuration item

Configuration item (CI) that the problem
applies to. The CI class of the selected
configuration item identifies the type of
problem, for example, hardware, network, or
database.

Assignment
Assignment group

Group to which the problem is assigned.
You can populate the Assignment group field
automatically based on the support group
available for the respective configuration item
(CI). If the CI does not have any support group,
then the field gets populated with the support
group available for service offerings. The
business rule Populate Assignment Group
based on CI/SO triggers the functionality
when an incident, problem, or change
request is created or updated and when the
Assignment group and the Assigned to field
is empty. The following properties identify the
field whose value populates the Assignment
group field:

• com.snc.problem.ci_assignment_group.field_
This problem property identifies which CI
field populates the Assignment group field.

• com.snc.problem.service_offering_assignmen
This problem property identifies which
service offering field populates the
Assignment group field.
Assigned to

Problem coordinator to whom the problem
is assigned. If an assignment rule applies,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3338


<!-- page 3339 -->
Create New Problem form (continued)
Field

Description

the problem is automatically assigned to the
appropriate user or group.
Notes
Work notes

Informative notes about the work performed
on the problem.

Problem task form
Description of the field values for the problem task form in Service Operations Workspace.
Create New Problem Task form
Field

Description

Problem Task
Short description

Brief description of the problem task.

Description

Detailed description of the problem task.

Number

Number that identifies the problem task
record.

Type

The problem task type.

Problem

ID number of the problem for which the
problem task is created.

Order

Order in which the problem tasks must be
associated with the problem.

State

Value that changes as the problem proceeds
from one state to another state.
For information about state transitions of a
problem task, see Life cycle of a problem task.

Priority

How quickly the service desk should address
the problem.

Due date

Date by which the problem task must be
completed.

Configuration Item
Configuration item

Configuration item (CI) that the problem
task applies to. The CI class of the selected
configuration item identifies the type of
problem, for example, hardware, network, or
database.

Assignment
Assignment group

Group to which the problem task is assigned.

Assigned to

Problem analyst to whom the task is assigned.

Notes
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3339


<!-- page 3340 -->
Create New Problem Task form (continued)
Field

Description

Work notes (Private)

Information about the work performed on the
problem task.

Recommendation Framework in Service Operations Workspace
An agent can view dynamic and contextual recommendations and perform a relevant action.
Recommendation Framework is now deprecated and no longer supported or available for
new activation. Recommended Actions for ITSM feature provides the latest experience for this
functionality. To get the advanced version, you must install the Advanced Recommended actions
for ITSM (com.snc.uib.sow_itsm_ra_advanced) plugin and you must procure ITSM Pro package
subscription.

Note: The best practice to get the advanced version is to install the Task Intelligence for
ITSM (com.snc.itsm_ml_task) plugin and procure the ITSM Pro package subscription. For
more information, see Exploring Recommended Actions for ITSM in Service Operations
Workspace.
Recommendations are available in multiple areas for an incident in Service Operations
Workspace.

Recommendations from the sidebar for an incident
From the sidebar of an incident, you can access the Recommendations panel where you can
configure and group recommendations in any of the following formats.
• Record card: Relevant record details of a table and corresponding actions are available.
• Message card: A message derived from the recommendation and corresponding actions is
available. For example, Propose major incident card.

Note: All cards of the same recommendation rule are grouped. For example, for the
Similar open incidents rule for an incident in Service Operations Workspace, all relevant
incidents are grouped as cards under Similar open incidents.
Recommendations from the sidebar
For information on available card groups for an incident and their dependencies on
recommendation rules, see Recommendation rules for an incident in Service Operations
Workspace.
When you click a card or its record number, detailed information about that card and its actions is
displayed in a new tab.
Every card has a primary action and multiple other actions. For every action you perform on the
card, the recommendations are recomputed. You can discard a recommendation if not relevant.
Also, when you perform a primary action on a card, it moves from the Current tab to the History
tab.

Note: Based on the priority, the first card of the top card group is displayed as the top
recommendation at the top of the Recommendations panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3340


<!-- page 3341 -->
Recommendations at the field level for an incident
A predicted value is displayed for these fields in the Details tab of an incident.
• Assignment group
• Configuration item
• Service
These values are predicted based on a recommendation rule for each field. For information
about these rules, see Recommendation rules for an incident in Service Operations
Workspace. When a threshold value is configured, the recommended value can be stamped
or auto-populated as the field value. For information about this configuration, see Configure
Recommendation Framework for an incident in Service Operations Workspace.
Recommendations at field level
Recommendation rules for an incident in Service Operations Workspace
Recommendations for an incident are based on rules defined in Recommendation Framework.
Recommendation Framework is now deprecated and no longer supported or available for
new activation. Recommended Actions for ITSM feature provides the latest experience for this
functionality. To get the advanced version, you must install the Advanced Recommended actions
for ITSM (com.snc.uib.sow_itsm_ra_advanced) plugin and you must procure ITSM Pro package
subscription.

Note: The best practice to get the advanced version is to install the Task Intelligence for
ITSM (com.snc.itsm_ml_task) plugin and procure the ITSM Pro package subscription. For
more information, see Exploring Recommended Actions for ITSM in Service Operations
Workspace.
For each recommendation rule to work, install the relevant plugin that installs the corresponding
solution definition. Based on this solution definition, the recommendation rule predicts values or
records for an incident.
For information about the plugins and the corresponding solution definitions, see Setting up
Recommendation Framework in Service Operations Workspace.
Recommendation rules for field-level recommendations on an incident form
Recommendation
rule

Solution definition

Assignment
Incident Assignment
group
recommendation Predicts values for the Assignment group field
based on the short description of the incident.
Configuration
item

Incident Configuration Item

Incident field where
the recommendation is
available

Assignment group

Configuration item

Predicts values for the Configuration Item field
based on the short description of the incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3341


<!-- page 3342 -->
Recommendation rules for field-level recommendations on an incident form (continued)
Recommendation
rule

Incident field where
the recommendation is
available

Solution definition

Service
Incident Service
recommendation
Predicts values for the Incident Configuration
rule
Item field based on the short description of the
incident.

Service

Recommendation rules for card groups in the Recommendations panel
Recommendation
Solution definition
rule

Knowledge
articles

Similar
Knowledge
Articles

Associated card
group in the
Primary action for
Recommendations the card group
panel

Knowledge
articles

Predicts
knowledge
articles that the
current incident
can be linked to.

Propose major
incident

Propose major
Major Incident
incident
Recommendation
Recommends
the current
incident to be
proposed as a
major incident.

Relevant
problems

Similar Open
Problems
Predicts relevant
problems that the
incident can be
linked to.

Relevant
problems

Other actions for the
card group

Attach:
Attaches the
recommended
knowledge article
to the current
incident. On the
incident record
page, this article
is displayed in
the Attached
Knowledge list
of the Related
records tab.

Discard:
Discards the
recommendation
and moves it to the
History tab in the
Recommendations
panel.

Propose major
incident:
Proposes the
current incident
as a major
incident. The
Major incident
state field is set
to Proposed for
the incident.

View similar
incidents: Displays
a list of similar
incidents related
to the current
incident. After
viewing similar
incidents, you
can decide if the
current incident
can be proposed
as a major incident.

Link problem:
Links the
recommended
problem to the
current incident.
On the incident
record page,
this problem is
displayed in the
Related Records

Discard:
Discards the
recommendation
and moves it to the
History tab in the
Recommendations
panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3342


<!-- page 3343 -->
Recommendation rules for card groups in the Recommendations panel (continued)
Recommendation
Solution definition
rule

Associated card
group in the
Primary action for
Recommendations the card group
panel

Other actions for the
card group

section of the
Details tab.
Similar major
incidents

Similar major
Major Incident
incidents
Recommendation

Add as a child
incident:
Adds the
recommended
incident as a
parent to the
current incident.
On the current
incident record
page,the parent
incident is then
displayed in the
Related Records
section of the
Details tab.

Discard:
Discards the
recommendation
and moves it to the
History tab in the
Recommendations
panel.

Similar open
incidents

Link as a parent
incident:
Adds the
recommended
incident as a
parent to the
current incident.
On the current
incident record
page, the parent
incident is then
displayed in the
Related Records
section of the
Details tab.

Discard:
Discards the
recommendation
and moves it to the
History tab in the
Recommendations
panel.

Similar resolved
incidents

Link incident:
Links the
recommended
incident to the
current incident.
On the current
incident record
page, the linked
incident is then
displayed as the
parent incident
in the Related
Records section
of the Details tab.

Discard:
Discards the
recommendation
and moves it to the
History tab in the
Recommendations
panel.

Predicts similar
active major
incidents that the
current incident
can be linked to.

Similar open
incidents

Similar Open
Incidents
Predicts similar
open incidents
that the current
incident can be
linked to.

Similar resolved Similar Resolved
incidents
Incidents
Predicts similar
resolved
incidents to help
with incident
investigation
and resolution
processes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3343


<!-- page 3344 -->
Recommended Actions for ITSM in Service Operations Workspace
Get guidance-based or field-level recommendations for records in Service Operations
Workspace.
Get Guidance based recommendations
Get actionable real-time recommendations in the side panel to help address customer issues
and resolve issues quickly.

Before you begin

Important: Users who have itil or sn_incident_write in the ITSM base system, can see
and use the recommendations. These roles (itil and sn_incident_write) also include the
following two roles:
•◦ sn_nb_action.next_best_action_user: To view the recommendation.
◦ sn_gd_guidance.guidance_user: To use the recommendation

Role required: itil, admin, sn_incident_write

About this task

The guidance based recommendations appear for various records in the Service Operations
Workspace, including Incident, Incident task, Problem, Problem task, Change request, Change
task, Interaction, and Request.
For incident records, clicking the Recommendations icon( ) displays the Recommended
actions and Search sub-tabs. The Search sub-tab allows you to manually search for AI-powered
recommendations.
For records other than incidents (such as Incident Tasks, Problems, Problem tasks, Change
requests, Change tasks, Interactions, and Requests), recommendations do not appear directly.
Instead, you can use AI-powered search to find the recommendations.

Procedure
1. Navigate to All > Workspace Experience > Workspaces > Service Operations Workspace..
2. Open a record that you want to work on.
3. Select the Recommendations icon(

) in the contextual side panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3344


<!-- page 3345 -->
4. Select the Recommended actions to review the actionable recommendation

cards.
5. Review the Recommended Actions cards and do one of the following:
◦ To accept a recommendation, select the action button on the card.
◦ To remove a recommendation from the contextual side panel, select Dismiss on the card.
6. Select the Search tab to manually search for AI-powered recommendations.
The AI-powered search results in the following eight record types: Incident, Incident Tasks,
Problem, Problem tasks, Change request, Change task, Interaction, and Request.
Get field recommendations
Get incident field recommendations in Service Operations Workspace while creating or updating
incidents.

Before you begin

Role required: admin

About this task
• Field recommendations are only available in the Advanced Recommended actions for ITSM
application, which requires the ITSM Pro package subscription.
• The recommendations associated with field recommendations must be active.
• The field recommendations must be configured in the Recommended Actions. For more
information, see Create a field recommendation in Recommended Actions .

Procedure
1. Navigate to All > Workspace Experience > Workspaces > Service Operations Workspace.
2. Perform one of the following actions to start creating an incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3345


<!-- page 3346 -->
Option

Description

a. From the primary navigation, select the list
icon ( ).
From the List menu

b. Select the add icon (
tab.

) next to the List

c. Select New Incident.
a. Navigate to a list of incidents.

Note: The following lists are avail­
able for incidents:
▪ Assigned to me
From an incident list

▪ Unassigned
▪ Open
▪ Resolved
▪ All
b. Select New.
a. Open an interaction.

From an interaction

b. From the record page, select Create inci­
dent.

3. In the Description field and the Short description field, enter a description and a short
description for the incident.
4. Perform one of the following actions to get the field recommendations:
◦ If you're on a version prior to 4.2, then press the tab key to get the field recommendations.
The fields are auto-filled or recommended based on the output defined in the
recommendation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3346


<!-- page 3347 -->
◦ If you're using a version after 4.2, select the required fields to see the field recommendations
in the drop-down list.

Recommended Actions for ITSM reference
Reference topics provide additional information about various form fields and components
installed with Recommended Actions for ITSM.
Contexts in Recommended Actions for ITSM
The ITSM base system includes the following context.
Contexts description
Context

Incident
context

Description

This will show all valid recommendations on incidents based on the active
recommendations in the Service Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3347


<!-- page 3348 -->
Contexts description (continued)
Context

Description

Incident
task

This will allow you to search for AI powered recommendations for incident tasks in
Service Operations Workspace.

Problem

This will allow you to search for AI powered recommendations for problems in
Service Operations Workspace.

Problem
task

This will allow you to search for AI powered recommendations for problem tasks in
Service Operations Workspace.

Change
request

This will allow you to search for AI powered recommendations for change requests
in Service Operations Workspace.

Change
task

This will allow you to search for AI powered recommendations for change tasks in
Service Operations Workspace.

Interaction This will allow you to search for AI powered recommendations for interactions in
Service Operations Workspace.

Request

This will allow you to search for AI powered recommendations for requests in
Service Operations Workspace.

Rules in Recommended Actions for ITSM
ITSM base system includes the following rules.
Rules description
Rule

Description

Active incident This will show all valid recommendations if the incident is active.
Active nonchild nonMI Incident

AI Search

This will show all valid recommendations if the incident is active, with no child
incident, and which is not a major incident.

This will allow you to search for AI powered recommendations across various
records in the Service Operations Workspace, including Incident, Incident
task, Problem, Problem task, Change Request, Change task, Interaction, and
Request.

This will show all valid recommendations for the major incidents with no
Major Incident problem record.
with no
Problem
record
High impact
Problem with

Displays the Create known error article recommendation for a high-impact
problem with no attached known error article.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3348


<!-- page 3349 -->
Rules description (continued)
Rule

Description

no known
error article
Guidance based recommendations in Recommended Actions for ITSM
ITSM base system includes the following guidance based recommendations.
Guidance based recommendations description
Recommendation

Description

Returns AI-powered recommendations across various records in the
AI Search
Service Operations Workspace, including Incident, Incident task, Problem,
Recommendation
Problem task, Change request, Change task, Interaction, and Request.
Create Problem
Record for a
major incident

Open incidents
(CI & Service)

Returns guidance-based recommendation.
Select Create Problem action to create a problem record for major
incident.
Returns guidance-based recommendations. The open incidents which
have matching Configuration item or Service with the current incident
record and which were created within the last six months appear. Atmost
five recommendations for such type for an incident appear.
Select Make parent action to make the incident as the parent to the
recommended incident.

Open PRBs
(CI & Service)

Returns guidance-based recommendations. The problems which have
matching Configuration item or Service with the current incident record
and which were created within last seven days appear. Atmost five
recommendations for such type for an incident appear.
Select Link to Problem action- to associate the incident with the
recommended problem.

Similar
Incidents (TI)

Returns guidance-based recommendations. The records with similar fields
appear.

Similar KB
Articles
(Similarity)

Returns guidance-based recommendations. Based on the similarity, this
returns KB articles as recommendations.

Propose Major
Incident (Trend)

Similar Major
Incident (Trend)

Select Attach KB to attach the KB article to the current incident.
Returns guidance-based recommendations. Based on the similarity with
Trend, this returns incidents as recommendations.
Select Propose as Major Incident to propose the incident as major
incident.
Returns guidance-based recommendations. Based on the similarity with
Trend, this returns major incidents as recommendations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3349


<!-- page 3350 -->
Guidance based recommendations description (continued)
Recommendation

Description

Select Link Major incident as Parent to link the recommended major
incident to the current incident.
The current incident becomes child of the recommended major incident.

Similar Open
Incidents
(Similarity

Returns guidance-based recommendations. Based on the similarity, this
returns open incidents.
Select Link as parent to link the recommended incident to current incident.
The current incident becomes child of the recommended open incident.
Returns guidance-based recommendations. Based on the similarity model,
this returns open problems.

Similar Open
Select Link Problem as Parent to link the current incident to the
PRBs (Similarity) recommended open problem.
The current incident has a problem field, which gets linked to the
recommended problem.
Returns guidance-based recommendations. Based on the similarity, this
Similar Resolved returns resolved incidents.
Incidents
Select Copy resolution to copy the resolution of the resolved
(Similarity)
recommended incidents to the current incident.
Returns guidance-based recommendations. The resolved incidents which
have matching Configuration item or Service with the current incident
Similar Resolved and which were created within the last six months appear. Atmost five
incidents (CI
recommendations for such type for an incident appear.
& Service)
Select Copy resolution action to copy the resolution and associate the
incident with the recommended resolved incident.
Create known
error article
for high impact
Problem

Returns guidance based recommendation for a high-impact problem.
Select Create article to create a known error article for a high-impact
problem.

Field level recommendations in Recommended Actions for ITSM
ITSM base system includes the following field level recommendations for incidents.
Field level recommendation description
Recommendation

Service
(Classification)

Description

Returns Predictive Intelligence based field recommendations. This will
give field predictions in the Service field of the current incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3350


<!-- page 3351 -->
Field level recommendation description (continued)
Recommendation

Description

Assignment group Returns Predictive Intelligence based field predictions in the Assignment
(Classification) Group field of the current incident.
Configuration
item
(Classification)

Returns Predictive Intelligence based field predictions in the Configuration
item field of the current incident.

Incident
Fields value
prediction (TI)

Returns Task Intelligence for ITSM based field predictions in the Service
Assignment Group, Configuration item fields of the current incident.

Guidances in Recommended Actions for ITSM
ITSM base system includes the following guidances.
Guidances description
Guidance

Description

Enables agents to link the current incident to an existing major incident by
Link to major
clicking on Link to this major incident link on a recommended record, which
incident
sets the major incident as the parent of the current incident.
Propose
Major
Incident

Enables agents to propose a recommended incidents as major incidents.

Review and Enables agents to review and attach an article for an Incident.
attach article
for incident
Show change Enables agents to view change request details.
request
[No Action]
Show genius Enables agents to view details of a genius result with no action.
result [No
Action]
Show
Problem
[No Action]

Enables agents to view details of a problem with no action.

[Incident]
Attach KB

Enables agents to view relevant information and attach the KB article to the
current incident.

[Incident]
Copy
resolution

Enables agent to copy the resolution of the resolved resolution to the current
incident.

[Incident]
Link open
incident

Enables agents to link the current incident to an existing open incident by
clicking on Link to this incident link on recommended record, which sets the
open incident as the parent of the current incident.

[Incident]
Link open
problem

Enables agents to link the current incident to an existing open problem by
clicking on Link to this problem link on recommended record, which sets the
open problem as the parent of the current incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3351


<!-- page 3352 -->
Guidances description (continued)
Guidance

Description

[Interaction] Enables the agent to view relevant information and action for attaching KB to
Review and interaction.
attach article
[ NonML] Copy
resolution

This guidance is used only for Non-ML recommendations. Enables agents to
copy resolutions of the resolved incidents to the current incident.

[ Non-ML]
Create
Problem

This Guidance action creates a problem record for the Major Incident.

[ Non-ML]
Link open
incident

This guidance is specially used only for Non-ML recommendations. Enables
agents to link the open incidents to the current incident.

[ Non-ML]
Link open
problem

This guidance is specially used only for Non-ML recommendations. Enables
agents to link the open problems to the current incident.

[Task] Link
change
request

Enables agents to link change request to task.

[Task] Link
incident

Enables agents to view the relevant information and action for incidents.

[Task] Link
outage

Enables agents to view the relevant information and action for linking an outage
to task.

[Task] Link
problem

Enables agents to view the relevant information and action for problems.

[Task]
Order item

This guidance action shows relevant information and action of catalog item.
This guidance can be shown on any task type.

[Non-ML]
Create
known
error article

Applicable only for Non-ML recommendations. Creates a known error article for
a high-impact problem.

Resource generators in Recommended Actions for ITSM
ITSM base system includes the following resource generators.
Resource generator description
Resource
Generator

Description

Assignment
group using
Classification

The recommendation- Assignment group (Classification),uses this
resource generator to return field predictions in the Assignment group field
of the current incident.

Configuration
item using
Classification

The recommendation- Configuration item (Classification), uses this
resource generator to return field predictions in the configuration item field
of the current incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3352


<!-- page 3353 -->
Resource generator description (continued)
Resource
Generator

Description

Incident Fields
predictions TI

The recommendation- Incident Fields value prediction (TI), uses this
resource generator to return field predictions in the Assignment group,
configuration item, and service fields of the current incident.

Open PRBs
using CI
& Service

The recommendation- Open PRBs (CI & service), uses this resource
generator to return problems with same CI & Service, which can be linked to
current incident.

Propose
major incident
using trend

The recommendation- Propose Major Incident (Trend),uses this resource
generator to return incidents which can be proposed as a major incident.

Resolved
Incidents
with same
CI & Service

The recommendation- Similar Resolved incidents (CI & Service), uses this
resource generator to return resolved incidents with same CI & Service,
whose resolution can be linked to current incident.

Service using
Classification

The recommendation- Service (Classification), uses this resource
generator to return field predictions in the Service field of the current
incident.

Similar KBs
using similarity

The recommendation- Similar KB Articles (Similarity), uses this resource
generator to return KB articles as recommendations which can be attached
to the current incident.

Similar major
incident
using trends

The recommendation- Similar Major Incident (Trend), uses this resource
generator to return major incidents which can be linked to the current
incident.

Similar open
incidents using
similarity

The recommendation- Similar Open Incidents (Similarity), uses this
resource generator to return open incidents which can be linked to the
current incident.

Similar Open
Incidents
with same
CI & Service

The recommendation- Similar Resolved incidents (CI & Service), uses this
resource generator to return open incidents with same CI & Service.

Similar PRBs
using similarity

The recommendation- Similar Open PRBs (Similarity), uses this resource
generator to return problems which can be linked to the current incident.

AI Search
Resource
Generator

The recommendation- AI Search, uses this resource generator to return AIpowered search results as recommendations.

Similar incidents The recommendation- Similar Incidents (TI), uses this resource generator
using TI
to return similar records for incidents.
similarity
Similar resolved The recommendation- Similar Resolved Incidents (Similarity), uses this
incidents using resource generator to return resolved incidents whose resolution can be
similarity
copied to the current incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3353


<!-- page 3354 -->
ServiceNow integrations with Microsoft Teams in Service Operations
Workspace
You can create a connected experience for users in Service Operations Workspace through
ServiceNow integrations with Microsoft Teams.
Collaboration using Microsoft Teams is available for the following task records in Service
Operations Workspace.
• Incident
• Problem
• Change
• Request
• Interaction
From the Collaborate panel of the task record, you can perform any of the following actions:
• View the history of chat conversations related to the record.
• Initiate a chat conversation from the record.
• Import messages from an existing chat conversation to the record.
An agent can view the user presence before contacting the user. For information about the
refresh duration for user presence in Service Operations Workspace, see Specify the refresh
duration for user presence in Service Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3354


<!-- page 3355 -->
Collaborate panel from the sidebar

Note: You can select from the list of participant recommendations. The participants
(users) recommendations are retrieved from the fields of the specific tables such as
incident using ITSMParticipantSuggestionsExtPoint script includes.
For more information about Service Operations Workspace through ServiceNow integrations with
Microsoft Teams, see ServiceNow for Microsoft Teams .
Collaborate on a task record using Microsoft Teams in Service Operations Workspace
Provide a connected experience for users by starting a Microsoft Teams chat conversation from a
task record or importing the chat to the task record.

Before you begin

Role required: itil or admin

About this task

When you view or import a Microsoft Teams chat conversation for a task record, the record
details are displayed in the Details section of the MS Teams Import tab. For information about
configuring these details, see Configure the task record information in the MS Teams Import tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3355


<!-- page 3356 -->
Procedure
1. Open a task record, for example, incident.
2. From the Sidebar, click the collaborate icon (

).

3. To view a chat conversation, click the more options icon (

) on the chat and select View chat.

4. To start a chat conversation, perform the following actions.
a. In the Collaborate panel, click the plus sign (+), and select Start Microsoft Teams chat.
b. In the Start Microsoft Teams chat dialog box, specify the participants.
c. Optional: To specify more chat options, click Show more chat options and specify a client.
(Optional) You can choose Microsoft Teams application or the Microsoft Teams web
application.
d. Click Start Chat.
▪ A chat conversation is initiated in Microsoft Teams.
▪ All automatic chats are automatically imported to the Collaborate panel.
5. To view a chat conversation, click the more options icon (

) on the chat and select View chat.

6. To import a chat conversation, perform one of the following actions.
Option

Description

a. Click the plus sign (+) and select Import Mi­
crosoft Teams chat.
Import a chat from any conversation

b. Under the Choose a conversation to view
details section, select a conversation that
you want to import.
c. Select the chat and click Import.
a. From the conversation that you are a mem­
ber of, click the more options icon (
select View chat.

Import a chat from a conversation in which
you are a member

) and

b. Click the filter chat messages icon ( )
and select the type of messages you want
to view.
c. Select the required messages and click Im­
port.

Imported chats are reflected in the activity stream of the task record.

Service Level Management in Service Operations Workspace
You can access the service level agreement (SLA) information for an incident on the Service
Operations Workspace landing page and incident record page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3356


<!-- page 3357 -->
SLA information on the Service Operations Workspace landing page
On the Service Operations Workspace landing page, you can click the Incident SLAs card to
view incidents grouped by their SLAs. This card displays SLA details only for incidents assigned
to the agent. For information on possible customizations for this card, see Configure the donut
color in the Overview section.
Overview section

For information about monitoring SLAs, see Monitoring Service Level Agreement (SLA).
View service level agreement information for an incident
Monitor task service level agreements (SLAs) displayed on an incident record page.

Before you begin

Role required: itil or admin
The following SLA timer configurations display the response and resolution SLA for an incident.
• Incident Response
• Incident Resolution
You should configure SLA timer configuration mappings for these timer configurations. For
information on how you can configure these mappings, see Configure the SLA timer.

Procedure
1. Open an incident record page.
2. From the contextual side panel, select the record Information icon (

).

◦ The response and resolution SLAs are displayed.
◦ In case of multiple SLA timer configuration mappings for Incident Response and Incident
Resolution timer configurations, only one response and resolution SLA record associated
with the mapping with the least order is displayed.
◦ After the SLA is complete, the time taken to respond and resolve the incident are displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3357


<!-- page 3358 -->
For information about configuring the display of SLA information, see Customize the display of
service level agreements for an incident.
SLA information for an incident

3. Optional: To view all SLAs related to the incident, click View more SLAs.
A list of all task SLAs is displayed.

Walk-up Experience management in Service Operations Workspace
Manage your Walk-up interactions and queues in Service Operations Workspace.
As a Walk-up agent, you can use Service Operations Workspace to manage your assigned walkup interactions. You can open incidents when an issue is not resolved at the walk-up location.
You can also directly create a request for hardware or software through the Service Catalog when
an asset is not available at the walk-up location stockroom.
As a Walk-up agent, you can do the following activities.
• Access personal inbox to view Walk-up channel assignments.
• Work on concurrent or multiple interactions at the same time.
• Promote interactions to incidents or requests.
• Randomly pull and work on a Walk-up interaction from the queue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3358


<!-- page 3359 -->
• Use Agent Assist to expedite fulfillment.
• View your assigned walk-up interactions, scheduled and upcoming appointments, walk-up
locations and kiosks assigned to you.
• View available assets and fulfill requests from a local stockroom.
• Create incidents and requests when necessary.
• Reassign, transfer, and modify walk-up interactions when necessary.
Walk-up Experience lists
List item

Description

My
Stockrooms

Stockrooms and assets associated with the walk-up locations assigned to you.

Walk-up
Locations

Walk-up locations assigned to you.

Location
Kiosks

Available kiosks at a Walk-up location. Select a kiosk to check in.

My Assigned
Walk-ups

Walk-up interactions you are assigned to resolve or fulfill requests. These
interactions are in a Work in Progress state.

Open Unassigned

List of all open and unassigned walk-up interactions for all locations. These
interactions are in New, Queued, or Work in Progress state.

Closed Walkups

All closed walk-up interactions. Closed interactions have either Closed
Complete or Closed Abandoned state.

Appointments All upcoming Walk-up appointments.

Exploring Walk-up interaction in Service Operations Workspace
Explore the various sections of a walk-up assignment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3359


<!-- page 3360 -->
Walk-up interaction record

Details tab
View details of a Walk-up interaction.
• Walk-up Interaction: View details of the Walk-up interaction such as the number, state, Walk-up
location, and the reason for the Walk-up visit.
• Compose: Write work notes for yourself.
• Activity: View the activities performed on that record.
• Record Information: View the information about the appointment.
• Opened for: View the requester's information.
• Source: View the source of the Walk-up interaction record.

Note: The Source section appears only if a Walk-up appointment is created through an
incident. For more details, view Create an appointment through incident

Related records tab
View details of the related records.
• Related Tasks
• User's Tasks
Work on Walk-up interaction in Service Operations Workspace
Manage your Walk-up appointments in Service Operations Workspace.

Before you begin

Role required: itil or admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select Inbox from the side bar.
3. Set your status as Available.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3360


<!-- page 3361 -->
A Walk-up interaction task is automatically pushed in your inbox, if you do not already have any
walk-up interactions assigned to you.
4. Select Accept.
5. On the details page, select one of the following options.
Option

Description

Abandon

Reject the Walk-up interaction

Accept

Accept the Walk-up interaction

6. If you already have interactions assigned to you, navigate to Lists > Walk-up > My Assigned
Walk-ups.
7. From the Walk-up list, select Location Kiosk.
8. Select a kiosk assigned to the location from the list.
9. On the Walk-up Location Kiosk page, select Check-in.

Note: Walk-up location kiosks are displayed only when the Show kiosk option is
enabled.
10. On the My Assigned Walk-ups page, select the Walk-up interaction assigned to you.
11. After you have fulfilled or resolved the request, set the state of the Walk-up interaction to
Closed Complete.
Create an appointment through incident
Schedule an appointment on behalf of a requester through an incident record.

Before you begin

Role required: itil or admin

Procedure
1. From the navigation list, select List.
2. Under Incidents, select Open or Assigned to me.
3. Select the incident for which you want to schedule an appointment.
4. Select the More actions icon.
5. From the drop-down list, select the option Book Walk-up Appointment.
6. In the Walk-up Appointment Booking window, enter the required details to book an
appointment on behalf of the requester.
7. Select Submit.

Result
• A walk-up appointment record is created.
• The Walk-up Appointment option appears under the Related records tab for that incident.
You can see all the Walk-up appointments related to the incident.
• The requester is notified of the appointment. The requester can also see the appointment
created on the home page under the My active items widget.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3361


<!-- page 3362 -->
Collaboration in Service Operations Workspace
Collaboration services provide a way to communicate and collaborate in real time to resolve
the incidents. You can initiate a chat or make conference calls using a service provider to
communicate with stakeholders.
To start a Microsoft Teams chat, refer Collaborate on a task record using Microsoft Teams in
Service Operations Workspace.
Notify in Service Operations Workspace
Notify in Service Operations Workspace provides support for SMS, telephone, and the service
providers on the ServiceNow AI Platform for communicating internally with team members and
externally with customers and contractors.
For more information about configuring Notify, see Notify

.

Use Twilio to make conference calls in Service Operations Workspace
Use Twilio to schedule conference calls with stakeholders to resolve incidents in Service
Operations Workspace.
Ensure that Twilio is configured to make conference calls from Service Operations Workspace. To
configure Twilio, refer Configure Notify with Twilio .
Start and end a conference call from Twilio in Service Operations Workspace
Start a conference call using Twilio to collaborate with others to work toward the resolution of an
incident. End the call when the discussion is over.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab, and then select the plus (+) icon.
7. Select Start Telephony meeting.
8. On the form, fill in the fields.
Start Conference Call form
Field

Description

Title

Title for the conference call

Add participants
Include a brief message for
participants

Provide the list of participants for the conference call.
Provide a brief summary about the issue to be discussed in
the conference call.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3362


<!-- page 3363 -->
9. Select Start.
If there are more than 50 participants, the conference call will be initiated in asynchronous
mode and a few additional participants will be added to the conference call soon in
background, this enables you to continue work without any interruption.
10. At the conclusion of the discussion, end the call.
a. Select the active call card.
b. From the Leave call drop-down menu, select End call.
Join or leave a conference call from Twilio in Service Operations Workspace
Join an existing Twilio conference call to participate in a discussion to resolve an incident. You
can leave the call without affecting other participants.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. Select the active call card.
8. Join or leave the call.
◦ To join the call, select Join call.
◦ To leave the call, select Leave call.
Administer an existing Twilio call in Service Operations Workspace
Add or mute participants in a Twilio conference call.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. Optional: Add participants to the call.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3363


<!-- page 3364 -->
a. Select Meeting options.
b. Select Add participants.
c. Enter the participants in the Add participants field.
d. Provide a brief summary about the issue to be discussed in the conference call in the
Include a brief message for participants field.
e. Select Add participants.
8. Select the active call card.
9. Optional: Mute participants to avoid background noise by selecting the Mute icon (

).

Reinitiate a conference call from Twilio in Service Operations Workspace
Reinitiate a Twilio conference call that was ended to discuss about the resolution of an incident.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. In the Completed calls section, select the Reinitiate button.
View a conference call recording from Twilio in Service Operations Workspace
View details for a recorded conference call in Service Operations Workspace by accessing the
associated conference record as a reference.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record.
5. Select the Collaborate icon (

) from the contextual side panel.

6. On the Calls tab in the Completed calls section, select the View Recording button.

Result

You can view the list of all the conference call recordings related to the incident record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3364


<!-- page 3365 -->
Use Webex for conference calls in Service Operations Workspace
Use Webex to schedule the conference calls with the stake holders to resolve the incidents in
Service Operations Workspace.
Start a conference call using Webex in Service Operations Workspace
Start a conference call using Webex from to work towards the resolution of an incident.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select Calls tab, and then select plus (+) icon.
7. Select Start Webex meeting.
8. On the form, fill the fields.
Start Conference Call
Field

Description

Conference bridge

Option to choose the conference bridge.

Title

Option to provide a title for the conference call

Add participants

Options to add participants for the conference call.

Include a brief message for
participants

Provide a brief summary about the issue to be discussed in
the conference call.

9. Select Start.
Add participants to an existing Webex call in Service Operations Workspace
Add a participant to a conference call to participate in the discussion to resolve the incident.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3365


<!-- page 3366 -->
6. Select the Calls tab.
7. Select the active call card.
8. Select Meeting options.
9. Select Add participants.
10. On the form, fill the fields.
Add participants
Field

Description

Add participants

Options to add participants for the conference call.

Include a brief message for
participants

Provide a brief summary about the issue to be discussed in
the conference call.

11. Select Add participants.
Reinitiate a conference call from Webex in Service Operations Workspace
Reinitiate a conference call to discuss about the resolution of an incident.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. In the Completed calls, select Reinitiate call.
Use Zoom to make conference calls in Service Operations Workspace
Use Zoom to schedule the conference calls with the stake holders to resolve the incidents in
Service Operations Workspace.
Start a conference call using Zoom in Service Operations Workspace
Start a conference call using Zoom to work towards the resolution of an incident.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3366


<!-- page 3367 -->
4. Select the incident record.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab, and then select the plus (+) icon.
7. Select Start Zoom meeting.
8. On the form, fill the fields.
Start Conference Call
Field

Description

Conference bridge

Option to choose the conference bridge.

Title

Option to provide a title for the conference call

Add participants

Options to add participants for the conference call.

Include a brief message for
participants

Provide a brief summary about the issue to be discussed in
the conference call.

9. Select Start.
Manage Zoom conference calls in Service Operations Workspace
Add or mute participants in a Zoom conference call in Service Operations Workspace.
Add participants to an existing Zoom call in Service Operations Workspace
Add a participant to a conference call to participate in the discussion to resolve the incident.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. Select the active call card.
8. Select Meeting options.
9. Select Add participants.
10. On the form, fill the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3367


<!-- page 3368 -->
Add participants
Field

Description

Add participants

Options to add participants for the conference call.

Include a brief message for
participants

Provide a brief summary about the issue to be discussed in
the conference call.

11. Select Add participants.
Join a conference call from Zoom in Service Operations Workspace
Join an existing conference call to participate in the discussion to resolve an incident.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. On the Active card, select Join call.

Note: You can search the chat history by participant name, and the subject of the chat.
Mute participants from a Zoom conference call in Service Operations Workspace
Join an existing conference call to participate in the discussion to resolve an incident.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. Select the active call card.
8. Mute participants to avoid background noise by selecting the Mute icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3368


<!-- page 3369 -->
Leave a Zoom conference call in Service Operations Workspace
Leave an active conference call. The call will still be active with other participants.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. Select the active call card.
8. Select Leave call.
End a Zoom conference call in Service Operations Workspace
As a host or a user with the incident manager role, you can end the conference call.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. Select the active call card.
8. Select Leave call drop-down menu.
9. Select End call.
Reinitiate a conference call from Webex in Service Operations Workspace
Reinitiate a conference call to discuss about the resolution of an incident.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3369


<!-- page 3370 -->
4. Select the incident record that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. In the Completed calls, select Reinitiate call.
Use Microsoft Teams to make conference calls in Service Operations Workspace
Use Microsoft Teams to schedule the conference calls with the stake holders to resolve the
incidents in Service Operations Workspace.
Start a conference call using Microsoft Teams in Service Operations Workspace
Start a conference call from Microsoft Teams to work towards the resolution of an incident.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab, and then select the plus (+) icon.
7. Select Start MS Teams meeting.
8. On the form, fill in the fields.
Start Conference Call
Field

Description

Conference bridge

Option to choose the conference bridge.

Title

Option to provide a title for the conference call

Add participants
Include a brief message for
participants

Options to add participants for the conference call.
Provide a brief summary about the issue to be discussed in
the conference call.

9. Select Start.
Manage Microsoft Teams conference calls in Service Operations Workspace
Add or mute participants in a Microsoft Teams conference call in Service Operations Workspace.
Add participants to an existing Microsoft Teams call in Service Operations Workspace
Add a participant to a conference call to participate in the discussion to resolve the incident.

Before you begin
Role required: itil

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3370


<!-- page 3371 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select an incident that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. Select the active call card.
8. Select Meeting options.
9. Select Add participants.
10. On the form, fill in the fields.
Add participants
Field

Description

Add participants

Options to add participants for the conference call.

Include a brief message for
participants

Provide a brief summary about the issue to be discussed in
the conference call.

11. Select Add participants.
Join a conference call from Microsoft Teams in Service Operations Workspace
Join an existing conference call to participate in the discussion to resolve an incident.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select an incident that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. On the Active card, select Join call.
Mute participants from a Microsoft Teams conference call in Service Operations Workspace
Mute a participant from the conference call to avoid unnecessary background disruption.

Before you begin
Role required: itil

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3371


<!-- page 3372 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select an incident that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. Select the active call card.
8. Mute participants to avoid background noise by selecting the Mute icon (

).

Leave a Microsoft Teams conference call in Service Operations Workspace
Leave an active conference call. The call will still be active with other participants.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select an incident that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. Select the active call card.
8. Select Leave call.
End a Microsoft Teams conference call in Service Operations Workspace
As a host or a user with the incident manager role, you can end the conference call.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select an incident that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. Select the active call card.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3372


<!-- page 3373 -->
8. Select Leave call drop-down menu.
9. Select End call.
Reinitiate a conference call from Microsoft Teams in Service Operations Workspace
Reinitiate a conference call to discuss about the resolution of an incident.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select an incident that has an active conference call.
5. Select the Collaborate icon (

) from the contextual side panel.

6. Select the Calls tab.
7. In the Completed calls, select Reinitiate call.
View a conference call recording from Microsoft Teams in Service Operations Workspace
View details for a recorded conference call in Service Operations Workspace by accessing the
associated conference record as a reference.

Before you begin
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List (

) icon.

3. Select Incidents > Open.
4. Select the incident record.
5. Select the Collaborate icon (

) from the contextual side panel.

6. On the Calls tab in the Completed calls section, select the View Recording button.
Initiate a chat from Sidebar in Service Operations Workspace
Initiate a Sidebar chat to work towards the resolution of an incident.

About this task

You can integrate Slack and Microsoft Teams with Sidebar To know more about configuring
Sidebar, refer Sidebar .

Before you begin
Role required: itil

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3373


<!-- page 3374 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation list, select List.
3. Navigate to Incidents > Open.
4. Select an incident.
5. Select Collaborate from the contextual side panel.
6. Select Chat tab, and then select plus(+) icon.
7. Select Start Sidebar discussion.
8. On the form, fill in the fields.
Start Sidebar discussion
Field

Subject

Description

Option to provide a title for the sidebar discussion.

Note: The chat count will be displayed at the
beginning of the subject.
Add participants

Options to add participants for the sidebar discussion.

Note:
If On-Call Scheduling is defined for a group, only
members who are on-call will be added as participants.
If it is not set up, then all members of the group will be
included as participants.
Additionally, if On-Call Scheduling is active, and no
members are available in a shift, no one will be added to
the chat.
The Sidebar discussion is applicable only for incident,
change, and problem.
Include a brief message for
participants

Provide a brief summary about the issue to be discussed in
the sidebar discussion.

9. Select Start discussion.

Note: If the caller doesn't read the messages within 24 hours, an email is sent as a
reminder to view the messages and resume the discussion.

Computer Telephony Integration in Service Operations Workspace
Service Operations Workspace provides an agent (with the sn_openframe_user role) to receive
inbound calls and place outbound calls using the Computer Telephony Integration (CTI)
interface.
The OpenFrame window is available to agents with the following roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3374


<!-- page 3375 -->
• sn_openframe_user
• sn_customerservice_agent
• sn_customerservice.consumer_agent
• admin
After getting the required role, CTI must be enabled in the Service Operations Workspace by
the admin. For more information about enabling CTI in the Service Operations Workspace,
see Enable Computer Telephony Integration providers to interact with the Service Operations
Workspace.
After the CTI integration, the agent can call a user using the phone number in the user profile and
contact cards through any of these options:

Note:
The application’s default CTI windows in the following images are provided for demo
purposes only.
Ensure that your instance contains the required connectors for communication.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3375


<!-- page 3376 -->
• Record information from the contextual side panel of a record.
CTI call from record information

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3376


<!-- page 3377 -->
• On-call escalation.
CTI call from an on-call escalation

Universal Request in Service Operations Workspace
The Universal Request is a task that a requester creates from any of the sources that include:
Agent Workspace, Service Operations Workspace, or using a Virtual Agent chat.
Use the Universal Request in Service Operations Workspace to view, create, edit, and resolve
universal requests.
Create a Universal Request in Service Operations Workspace
As an agent, you can create universal requests from the Universal Request application on behalf
of the requester to track and resolve issues.

Before you begin

Role required: itil, sn_uni_req.routing_agent, or admin

Procedure
1. Navigate to All > Workspaces > Service Operations Workspace.
2. From the navigation list, select List.
3. Navigate to Universal Request > Open.
4. Select New.
5. On the form, fill in the fields.
Universal Request form
Field

Description

Number

The unique number generated for the
universal request.

Opened

The date and time when the universal
request was created.

Opened by

The agent who created the universal request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3377


<!-- page 3378 -->
Field

Description

Opened for

The user who requested for this universal
request.

Primary task

The task number, for example, an incident or
HR case number that is associated with the
universal request.

Contact type

The contact medium from which the universal
request was created.

Priority

It identifies how quickly the service desk
should address the request.

State

State of the universal request.

Impact

Impact value indicates a measure of the
effect of an incident, problem, or change on
business processes.

Assignment group

Group assigned to the universal request.

Assigned to

User assigned to the universal request.

Needs resolution review

When checked, and when the department
agent closes the primary ticket, the Universal
Request doesn’t get closed. Universal
Request state remains in In Progress and the
state reason changes to Confirm Response.
This notifies the tier 1 agent (Routing agent)
to either Accept or Reject the resolution
provided in the primary ticket before closing
the Universal Request for the requester.

Short description

A brief description of the request.

Description

Detailed description of the request.

Notes section
Watch list

Users to receive notifications when work
notes are added.

Work notes list

Users to receive notifications when work
notes are added.

Note: The administrator must create
an email notification for the work notes
list.
Additional comments (Customer visible)

More information about the change.

Work notes

Information about how to resolve the
universal request or steps taken to resolve it,
if applicable. This note is for internal use. The
work notes information isn’t visible to your
customer.

Closure Information section
Closed

The date and time when the universal
request was closed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3378


<!-- page 3379 -->
Field

Description

Closed by

The agent that closed the request.

Close notes

How or why the universal request was closed.

6. Select Submit.
Cancel a Universal Request in Service Operations Workspace
Cancel the Universal Request if the issue is resolved already or you no longer require the
request.

Before you begin

Role required: admin

About this task

You can cancel a universal request only if there are no active or closed primary tickets attached
to it. You can cancel a universal request in New or In Progress state's only. When the universal
request is canceled, email notifications are sent to the stakeholders associated with the request.

Procedure
1. Navigate to All > Workspaces > Service Operations Workspace.
2. From the navigation list, select List.
3. From the navigation list, select Universal Request > Open.
4. From the list of open universal requests, select the request you want to cancel.
5. Select Canceled from the State field.

Note: If the person in Opened for tries to cancel the request, then they must enter the
reason for canceling.
6. Select Update.
Use Agent assist in Service Operations Workspace
Use the Agent assist in Service Operations Workspace to find similar Universal Requests that are
open and closed, Knowledge articles, Catalog items, and Pinned articles.

Before you begin

Role required: itil, sn_uni_req.routing_agent, or admin

Procedure
1. Navigate to All > Workspaces > Service Operations Workspace.
2. From the navigation list, select List.
3. From the navigation list, select Universal Request > Open.
4. Select the universal request from the list.
5. In Agent Assist, select the settings icon (

) and select your resource from the list.

◦ Similar Closed Universal Request: To display all similar Universal Requests that are closed.
◦ Universal Request: To display all similar Universal Requests that are available.
◦ Knowledge and Catalog: To display all related knowledge articles and catalog items.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3379


<!-- page 3380 -->
◦ Knowledge Articles: To display all related knowledge articles.
◦ Catalog Items: To display all related catalog items.
◦ Pinned articles: To display all related pinned articles.
Transfer a primary ticket in Service Operations Workspace
You can transfer a primary ticket to Universal Request, service set (department), or service either
with resolution or without resolution.

Before you begin

Role required: itil, the agents part of the assignment group or the agents on the primary ticket
can perform this task.

Procedure
1. Navigate to All > Workspaces > Service Operations Workspace.
2. From the navigation list, select List.
3. From the navigation list, select Universal Request > Open.
4. Open the primary task that you want to route to a Universal Request.
5. Select Transfer.
6. In the Transfer Ticket dialog, provide the following details.
◦ Department: Select the department from the list.
◦ Service: Select the specific service of the chosen department.
◦ Transfer reason: Select the reason from the list.
◦ Transfer notes: A brief description for routing the primary ticket that you want to pass to the
agent.
◦ Copy additional comments and attachments: Deselect if you do not want to transfer the
ticket with additional comments and attachments. By default, all attachments and comments
are transferred.

Note: Work notes aren't copied while transferring.
7. Select Transfer.
Restrict or unrestrict universal request access in Service Operations Workspace
Mark a universal request as restricted or unrestricted when you identify that the request contains
sensitive information.

Before you begin

Role required: routing agents, sn_uni_req.sensitiveinfo_agent or service-specific assignment
group members

Procedure
1. Navigate to All > Workspaces > Service Operations Workspace.
2. From the navigation list, select List.
3. From the navigation list, select Universal Request > Open.
4. Navigate to the universal request that you want to mark as restricted.
5. On the form, select the Restrict button.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3380


<!-- page 3381 -->
Mark the universal request as unrestricted in Service Operations Workspace
You can mark a restricted universal request as unrestricted if you identify that the request doesn't
have any sensitive information.

Before you begin

Role required: sn_uni_req.sensitiveinfo_agent or service specific assignment group members

Procedure
1. Navigate to All > Workspaces > Service Operations Workspace.
2. From the navigation list, select List.
3. From the navigation list, select Universal Request > Open.
4. Navigate to the universal request that you want to mark as unrestricted.
5. On the form, select the Unrestrict button.
Universal Request in Service Operations Workspace reference
Universal Request is activated in Service Operations Workspace when you enable the Universal
Request plugin (com.snc.universal_request). This topic provides information about components
installed with Universal Request in Service Operations Workspace.

Roles installed
Role title [name]

Description

UR administrator

Set up and configure
Universal Request
roles for Universal
Request for
Service Operations
Workspace.

[sn_uni_req.ur_admin]

Routing agent
[sn_uni_req.routing_agent, sn_uni_req.universal_request_write,
sn_uni_req.universal_request_read, itil]

Create, edit, view
and resolve the
universal requests.

Routing agent [sn_uni_req.routing_agent,
sn_uni_req.universal_request_write,sn_uni_req.universal_request_read, Handle interactions
and create universal
interaction_agent]
request from
interaction.

Universal Task in Service Operations Workspace
Agents can use the Universal Task application to create tasks for employees and to manage the
request resolution.
Create a universal task for a universal request in Service Operations Workspace
Create a universal task for a request and assign it to the employee or create multiple tasks for a
request by using Universal Task.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3381


<!-- page 3382 -->
Procedure
1. Open the ticket that you want to create a universal task for.
2. Click the UI action for creating a universal task.
3. On the form, fill in the fields.
Universal Task form fields
Field

Description

Number

Unique number that is generated for the Universal Task.

Parent

Number of the parent case or request.

Parent Assignment
Group

Group assigned to the parent case or request.

Parent Assigned to

Agent primarily responsible for working on the parent case or
request.

Type

Type of task being assigned.

Employee form

Mandatory employee form.

Note: This field appears only if the Collect Employee Input
task is selected in the Type field.
Survey instance

Link to the completed employee form.

Note: This field appears only if the Collect Employee Input

task is selected in Type field, and the value of the State field is
complete.
Template

Task template to auto-fill the task form.

State

State of the Universal Task.

Priority

Value that identifies how quickly the service desk should address the
request.

Assignment group

Group assigned to the Universal Task. This field is available for
the Mark When Complete and Checklist task types. Other tasks
types require a mandatory update of the Assigned to field with the
Assignment group.

Note: Email notifications are sent only for the two task types.
Assigned to

Employee assigned to the Universal Task.

Due date

Expected date for the employee to complete the task.

Watch list

Users to receive notifications when there is any change in the task
status.

Short description

Brief description of the request

Description

Detailed description of the request

Additional comments
(Customer visible)

More information about the change. The information in this field is
visible to the customer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3382


<!-- page 3383 -->
Field

Description

Work notes

Information about how to resolve the Universal Task or steps taken to
resolve it, if applicable. This note is for internal use. The work notes
information is not visible to customers.

4. Select one of the following.
Option

Description

Ready for work

Task is created. The state of the task changes
to Work in Progress, and the employee is noti­
fied about the task.

Submit

Task is created. The state of the task remains
New, and no notification is sent to the employ­
ee.

Universal Task in Service Operations Workspace reference
Several types of components are installed with activation of the Universal Task application,
including tables and user roles.

Roles installed
Role title [name]

Description

Contains roles

Admin [sn_uni_task.admin]

View and configure the Universal
Task application

None

Report view [sn_uni_task.report_view]

Access and view Universal Task
reports

None

Employee form admin
[sn_uni_task.emp_form_admin]

Create and manage Employee forms survey_admin

Employee form creator
[sn_uni_task.emp_form_creator]

Create and modify employee forms

survey_creator

sn_uni_task.template_admin

Create and manage Universal Task
templates

None

Tables installed
Table

Universal Task
[sn_uni_task_universal_task]
Universal Task Configuration
[sn_uni_task_config]
Catalog Task Configuration
[sn_uni_task_catalog_task_config]

Description

Store the Universal Task record details for a
department-specific table.
Store the list of task types for each departmentspecific table.
Stores the catalog items details of the departmentspecific table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3383


<!-- page 3384 -->
Table

Description

Base Task Configuration
[sn_uni_task_base_task_config]

Serves as the base table for the configuration
tables for all task types.

Employee Form
[sn_uni_task_employee_form]

Stores the employee form records that were
created for the Collect employee input task type.

Employee Input Task Configuration
[sn_uni_task_emp_input_task_config]

Stores the roles that can view the responses of
completed employee forms for each departmentspecific table.

Universal Task Template
[sn_uni_task_template]

Stores the universal task templates with
predefined field values that can be applied on
Universal Task forms.

Universal Task Dynamic
Stores the dynamic template mappings between
Template Mapping
Universal Task fields and parent table fields.
[sn_uni_task_dynamic_template_mapping]

Resetting password using Service-desk assisted Password Reset in Service
Operations Workspace
The Password Reset for Service Operations Workspace application enforces strong and secure
passwords by enabling end users to reset or change their passwords by requesting the service
desk agent.
Reset password using service-desk assistance
Resetting the password enables the user to log in to their system and resume their work.

About this task

Resetting the password will both unlock the account and set a new password if the user account
is locked.
https://player.vimeo.com/video/1032446102?
h=4e8d792d7f&badge=0&autopause=0&player_id=0&app_id=58479

Before you begin

Role required: password_reset_service_desk or password_reset_admin

Procedure
1. Navigate to All > Workspaces > Service Operations Workspace.
2. From the navigation list, select List.
3. Do one of the following:
◦ Navigate to list of incidents, and select an incident record.
◦ Navigate to list of interactions, and select an interaction record.
4. Select the More actions icon, and then select Reset password.

Note: This option is displayed only to the agent having password reset service desk role
who are assigned to the incident or an interaction.
5. Identify the user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3384


<!-- page 3385 -->
a. In the Identify section, select the user from the drop-down menu.
b. Select the password reset process for the user.

Note: You can only reset the password using a specified process for three times in a
24-hour time interval.
c. Select Continue to verify.
6. Verify the user.
Verification of user
Verification method

Email verification

Description

A verification code is sent to the registered
email address displayed. Select Send
verification code and enter the code in the
code in Enter verification code field.

Note: You have only three attempts to
perform an email verification.
SMS verification

A verification code is sent to the registered
mobile numbers. The same verification code
is sent to all the registered mobile numbers
of the user. Select Send verification code
and enter the code in the code in Enter
verification code field.

Note:
You have only three attempts to perform
an SMS verification.
If the Notify plugin isn’t active in your
instance, you must select the service
provider for the registered mobile number.
Security question verification

You must ask the security questions to the
user and enter the answer of the security
question in the respective fields.

Personal data verification

Enter the email address of the user in the
Enter user’s email address field.

Personal data confirmation

The email address of the user is displayed.
You must ask the email address of the user
and confirm if the email address is correct.

7. Select continue to reset.
8. Reset the password.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3385


<!-- page 3386 -->
Reset password
Password reset method

Description

Send email with instructions

An email is sent to the user with the
password reset details.

Auto-generate new password

The system automatically generates a new
password for the user. You must read the
password to the user.

Reset password manually

You must enter a new password in Enter new
password and Re-enter new password fields.
Select Reset password. You must read the
password to the user.

9. Select Close.
10. Select Exit in the confirmation modal displays to indicate that the password has been shared
with the user.
To know about errors that you encounter while you reset the password, refer Password Reset in
Service Operations Workspace reference.
Unlock the user account
You can unlock a blocked user to enable them to log in to their system.

About this task

This option is available only if the account is locked.

Before you begin

Role required: password_reset_admin or password_reset_service_desk

Procedure
1. Navigate to All > Workspaces > Service Operations Workspace.
2. From the navigation list, select List.
3. Do one of the following:
◦ Navigate to list of incidents, and select an incident record.
◦ Navigate to list of interactions, and select an interaction record.
4. Select the More actions icon, and then select Reset password.

Note:
◦ Incident: The option is displayed only if the category of the incident is Password Reset,
and is assigned to an agent having password reset service desk role.
◦ Interaction: The option is displayed only if an interaction is assigned to the agent
having password reset service desk role.
5. Identify the user.
a. In the Identify section, select the user from the drop-down menu.
b. Select the password reset process for the user.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3386


<!-- page 3387 -->
Note: You can only reset the password using a specified process for three times in a
24-hour time interval.
c. Select Continue to verify.
6. Verify the user.
Verification of user
Verification method

Email verification

Description

A verification code is sent to the registered
email address displayed. Select Send
verification code and enter the code in the
code in Enter verification code field.

Note: You have only three attempts to
perform an email verification.
SMS verification

A verification code is sent to the registered
mobile numbers. The same verification code
is sent to all the registered mobile numbers
of the user. Select Send verification code
and enter the code in the code in Enter
verification code field.

Note:
You have only three attempts to perform
an SMS verification.
If the Notify plugin isn’t active in your
instance, you must select the service
provider for the registered mobile number.
Security question verification

You must ask the security questions to the
user and enter the answer of the security
question in the respective fields.

Personal data verification

Enter the email address of the user in the
Enter user’s email address field.

Personal data confirmation

The email address of the user is displayed.
You must ask the email address of the user
and confirm if the email address is correct.

7. Select continue to reset.
8. Select Unlock account option.

Result

The user account is unlocked and they can access the system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3387


<!-- page 3388 -->
Password Reset in Service Operations Workspace reference
This reference topic provides additional information about the lists and forms that you use to
configure and administer Password Reset.

Identification methods
Identification errors
Error message

Description

User not enrolled

The user is not currently enrolled in the
password reset process. The user must enroll
to the password reset process to reset the
password.

User not eligible for the process

The selected password reset process doesn’t
apply to the user. You must select another
password reset process to reset the password.
Contact the system administrator for more
assistance.

No password reset process found for the user

The user has not been assigned to any
password reset processes. Contact the system
administrator for more assistance.

Maximum verify attempts reached

The user has exhausted all the available
password reset attempts. You can reset the
password again after 8 hours.

Verification methods
Verification errors
Error message

Description

Email verification
Incorrect verification code entered

The verification code you have entered does
not match the expected code.

Max resend attempts over

The error message indicates that you have
exceeded the allowed number of attempts to
resend a verification code.

SMS verification
Incorrect verification code entered

The verification code you have entered
doesn’t match the expected code.

Max resend attempts over

You have exceeded the maximum number of
attempts to resend a verification code.

Notify not enabled

Users are enrolled in the system to deliver
notifications, however, the Notify feature
responsible for sending the SMS messages
isn’t enabled.

Security question
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3388


<!-- page 3389 -->
Verification errors (continued)
Error message

Description

One or more answers incorrect

The user hasn’t provided the correct answers
to the security questions or the agent might
have entered the answers incorrectly.

Personal data verification
Incorrect answer entered

The user hasn’t provided the correct answers
to the security questions or the agent might
have entered the answers incorrectly.

Personal data confirmation
Incorrect answer

The user has not provided the email address
as indicated.

Other errors
Multiple session error

Only one active session is allowed at a time to
reset the password. Close the new session.

Technical error

You must logout and login to work on the
password reset ticket.

Maximum verification attempts reached

You have exceeded the maximum number of
attempts to verify the identity of the user.

To reset a password for a user, refer Reset password using service-desk assistance.

Optimizing IT services in your organization
You can leverage a few Service Operations Workspace integrations to enhance and optimize IT
services in your organization.

An agent's journey when optimizing IT services
• An agent can start the day by looking at an overview of assignments, outages, service
announcements, and assignments in Service Operations Workspace to prioritize work based
on service level agreements (SLAs), priority level, and urgency.
• The agent can create an incident based on the issue reported. Since the agent has access to
related incidents and recent interactions, better and faster support can be provided. Agent
also has access to all related information from the incident record page.
• The agent can resolve the incident faster by using tailored recommendations.
• The agent can reach out to experts on-call for high-priority tasks.​
• The agent can collaborate easily with the requester and peers right from the task.
• The agent can create a change request to fix the issue.
• The agent can manage schedules and assigned trainings. The agent can also request for timeoffs, shift swaps, and track performance against goals.
Related topics
Operating IT services in your organization
Managing IT services in your organization
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3389


<!-- page 3390 -->
Workforce Optimization for ITSM in the Service Operations Workspace
Manage your schedule using Workforce Optimization for ITSM Scheduling in Service Operations
Workspace. Use Coaching to review and complete assigned training.

Important: You must activate the Workforce Optimization for ITSM Configurable
Workspace (sn_wfo_cfg_itsm) plugin to use Workforce Optimization for ITSM for Service
Operations Workspace. For more information, see Activate Workforce Optimization for
ITSM.
The image below displays the agent work flow between
the different modules in Workforce Optimization for ITSM.

Monitor targets set by your manager, view learning tasks that you need to complete, and
keep track of upcoming items in the Service Operations Workspace landing page. For more
information, see Service Operations Workspace landing page.
Access your profile in Service Operations Workspace
Track and monitor the real-time status of your work by accessing your profile in Service
Operations Workspace. You can track how many incidents and interactions you have closed
and how many you are actively working on. You can also view the roles and groups to which you
belong and see information about your manager and teammates.

Before you begin

Role required: sn_wfo_cfg_itsm.employee

About this task

Access your profile to analyze information such as:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3390


