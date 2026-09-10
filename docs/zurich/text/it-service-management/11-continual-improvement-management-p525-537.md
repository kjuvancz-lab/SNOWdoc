# Zurich IT Service Management — Continual Improvement Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 525–537 of 3857

Sections: Continual Improvement Management (p525); Overview (p526); Monitor and plan improvements (p535)

---

<!-- page 525 -->
Continual Improvement Management
®

Use the ServiceNow Continual Improvement Management (CIM) application to request
improvement opportunities, and implement phases and tasks to meet performance goals, track
progress, and measure success.
An improvement initiative consists of:
• Goals to measure success
• Phases to organize work effort
• Tasks with specific actions to complete
To learn more about how your ServiceNow instance supports Continual Improvement
Management, see Continual Improvement Management overview for a general understanding of
the application and how it is used.

Start an improvement
For continual improvement in your environment, select an activity.
Improvement Process

Understand Continual Improvement Management concepts
• Continual Improvement Management overview
• Install Continual Improvement Management
• Requesting improvements
• Managing improvements
• Domain separation and Continual Improvement Management

Get help from ServiceNow resources
• Ask or answer questions in the Continual Improvement Management forum
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

525


<!-- page 526 -->
Continual Improvement Management overview
Continual Improvement Management enables you to initiate improvement opportunities
within your organization by providing a centralized framework for planning, implementing, and
monitoring improvement initiatives.
The following video gives you an overview of Continual Improvement Management application.
Continual Improvement Management Overview
Use Continual Improvement Management to implement service, process, and function
improvements. An improvement initiative contains goals to measure success, and phases that
contain tasks with specific actions to complete the improvement.

Initial CIM setup
Install the CIM plugin. For more information, see Install Continual Improvement Management.
To use guided setup to configure CIM, navigate to Continual Improvement > Administration >
Guided Setup and select Configure in the Request CIM section.
Once CIM is activated, assign user roles and groups.
• Improvement Manager
• Improvement Coordinator
• Approver group membership (CIM Approvers, default is empty)
For more information, see Assign a role to a user

.

Use the Continual Improvement Workbench to plan and manage improvements. Both tile and list
views are supported.

Workflow of CIM roles
The workflow of improvements from an improvement request to final approval Continual
Improvement Management involves various responsibilities.
1. An Improvement Requester, such as a help desk manager, process owner, or ITIL user,
recognizes the need for an improvement with the organization and submits an improvement
request.
2. The Improvement Manager reviews the improvement, accepts it, and assigns it to an
Improvement Coordinator for implementation. The Improvement Manager also runs
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

526


<!-- page 527 -->
prioritization meetings with Improvement Coordinators and uses the Continual Improvement
workbench to monitor, manage, and plan overall progress of improvements. When all tasks are
complete, the Improvement Manager reviews improvements for closure.
3. After the improvement request is assigned, the Improvement Coordinator along with
the Improvement manager creates phases and tasks to complete the improvement.
The Improvement Coordinator also meets with task owners to track progress and timely
completion.
For more information about CIM roles, see CIM roles.

Integration with other applications
®

CIM is integrated with other ServiceNow applications to enable you to create improvements
across various processes and services within the company. These integrations provide
you a centralized framework to implement, manage, and monitor the progress and impact
of improvements. You can create improvement initiatives from integrated applications and
conversely, create records for integrated applications from improvement initiatives.
For more information about the applications integrated with CIM, see Applications integrated
with Continual Improvement Management.

Domain separation
Domain separation capability is supported in Continual Improvement Management with no setup
or configuration required.
You can create improvements separately in a specific domain, or in the global domain.

Install Continual Improvement Management
Install the Continual Improvement Management plugin from ServiceNow Application Manager
after purchasing a subscription.

Before you begin

Role required: admin

About this task

The Continual Improvement Management (com.sn_cim) plugin is available with ITSM
Professional, CSM Professional, and HR Service Delivery Professional subscriptions only.
Contact your ServiceNow account manager to purchase a subscription and activate the plugin
on your organization's instances.
If you don't have an account manager, decide to delay activation after purchasing a subscription,
or want to evaluate the product on a sub-production instance without charge:
• Request CIM activation on your instance by using the Now Support portal. For more
information, see the Requesting a Plugin from the Service Catalog [KB0751715]
Knowledge
Base article.
• Install CIM from ServiceNow Application Manager.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. On the Application Manager page, search for Continual Improvement Management.
3. In the Family Plugins section, select Continual Improvement Management (CIM).
4. On the Continual Improvement Management (CIM) page, select Install.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

527


<!-- page 528 -->
5. Review the installation details and select Install now.
6. Optional: Install demo data by selecting the Load demo data check box.
7. Select Install.
The Installation progress window displays the installation status of each component and the
time taken to complete the installation.
After installation is complete, a message appears that Continual Improvement Management
has been successfully installed.
The plugin is installed and activated on your instance.
8. Optional: View more information about the installed plugin by selecting View Details.
The following details are provided:
◦ Plugin version
◦ Activation and update details
◦ Key application features
◦ List of plugins installed or activated with CIM.
Related topics
Components installed with Continual Improvement Management
Applications integrated with Continual Improvement Management
List of plugins (Zurich)

Applications integrated with Continual Improvement Management
®

CIM provides integrations with other ServiceNow applications to enable you to create
improvement initiatives from these applications. You can also create records for integrated
applications from improvement initiatives.
You can link multiple tasks from integrated applications to a single CIM task and link multiple CIM
tasks to a single integrated application task.

Applications from which you can create Improvement Initiatives
• Benchmarks
• Coaching
• Configuration Management
• Customer Service Management
• Demand Management
• Governance, Risk, and Compliance (GRC)
• Idea Portal
• Incident Management
• Problem Management
• Process Mining
• Survey Management
• Vendor Management Workspace
For more information, see Create improvement initiatives from integrated applications.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

528


<!-- page 529 -->
Application records you can create from improvement initiatives
• Change record (Change Management)
• Coaching opportunity (Coaching opportunity)
• Knowledge base article (Create a knowledge article
• Demand record (Demand Management
• Project (Project Management

)

)

)

• Story record (Agile Development 2.0

)

For more information, see Create application records from improvement initiatives.

Summary of CIM Integration with other applications

Application

Application record

Create improvement
initiative

Create application
record from
improvement initiative

GRC
Audit Management

Issue record

X

--

--

X

Demand Management Demand record

X

X

Project Management

--

X

Remediate Duplicate
Task record

X

--

Benchmarks

Benchmarks
recommendation

X

--

Change Management

Change record

--

X

Major Incident
Management

Post incident review
workbench

X

--

X

--

Strategic Portfolio Management
Agile Development

Story record

Project record

IT Operations Management
CMDB
IT Service Management

Problem Management Problem record
Platform Capabilities
Knowledge
Management

Knowledge base
article

--

X

Survey Management

Survey

X

--

Coaching opportunity

X

X

Service Management
Coaching
Related topics
Using extension points to extend application functionality
Using scripted extension points in server-side scripts
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

529


<!-- page 530 -->
Using UI extension points in server-side UI macros
Using client extension points in client-side UI scripting
Create improvement initiatives from integrated applications
Create improvement initiatives from applications integrated with Continual Improvement
Management to enable planning, implementation, monitoring, and impact assessment of
improvements in a centralized framework.

Before you begin

Role required: sn_cim.improvement_requester

About this task

Records of applications integrated with CIM display the Create Improvement Initiative link in the
Related Links section.

Procedure
1. Navigate to the application's records list.
For example, navigate to All > Benchmarks > Recommendation Setup > All to open the
Benchmarks records list.
2. Find and open the record from which you want to create an improvement.
3. Select Create Improvement Initiative in the Related Links section.
4. Enter the field values in the Improvement Initiative form.
For more information, see Improvement field descriptions.
5. Select Submit.

Result

The improvement initiative is created and UI changes display on the source application record
and on the initiative record. For more information, see Updates after improvement initiative
creation from integrated applications.
Create application records from improvement initiatives
Create records for integrated applications from improvement initiatives or CIM tasks to transform
improvement initiatives into broader, actionable efforts to enable improvements across teams
and processes.

Before you begin

Role required: sn_cim.improvement_coordinator or sn_cim.improvement_manager

Procedure
1. Navigate to your improvement initiative or CIM task record.
◦ Improvement initiative: All > Continual Improvement > My CIM Initiatives
◦ CIM task: All > Continual Improvement > CIM Tasks
2. Find and open the Improvement Initiative or CIM task record from which you want to create an
application record.
3. Create an application record by selecting the corresponding application record link in the
Related Links section.

Note: Related links are visible only when a CIM task is in the Open, Work in Progress, or
On Hold state.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

530


<!-- page 531 -->
Record type

Link to select

Demand

Create Demand

Project

Create Project

Coaching opportunity

Create Coaching Opportunity

Knowledge base articles

Create Knowledge

Agile Development story

Create Story

Performance Analytics automated indicator

Create PA Indicator

Change

Create Change

Note: You must have the following
roles to view and create change
requests:
◦ change_read, change_write, or ITIL
roles to view the Create Change link.
◦ change_write or ITIL roles to create
change records.
If you have not been assigned the
required roles, contact your system
administrator.

Note:
Default field values set in the sn_cim.initiative_copy_attributes property
are populated in the application record form. Contact your administrator to edit this
property by adding or deleting fields. For more information, see Configure CIM integration
property.
4. Select Submit.

Result

The application record is created and UI changes display on the source improvement initiative or
CIM task record and corresponding application records. For more information, see Updates after
application record creation from improvement initiatives.
Configure CIM integration property
Configure the CIM sn_cim.initiative_copy_attributes integration property to define field values
to be copied from an improvement initiative to application records that you create from the
initiative.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Continual Improvement > Administration > Properties.
2. In the List of attributes (comma-separated) that will be copied from the originating
improvement initiative text field, add or delete field values by using commas to separate the
values.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

531


<!-- page 532 -->
The default field values included in the sn_cim.initiative_copy_attributes property are:
◦ Short description (short_description)
◦ Description (description)
◦ Priority (priority)
◦ CIM estimate (cim_estimate)
◦ Benefit (benefit)
◦ Assigned to (assigned_to)
◦ Strategic objective (strategic_objective)
◦ Business process (business_process)
◦ Business service (business_service)
◦ Approver group (approver_group)
◦ Type (type)
◦ Service offering (service_offering)

Integrate CIM using extension point
Integrate CIM with other applications by using the CIMIntegrationAPI extension point. It
defines the inbound and outbound extension points for integrating CIM with other applications.

Before you begin

Role required: admin or sn_cim.improvement_manager

About this task
The CIMIntegrationAPI defines the inbound and outbound extension points for integrating
CIM with other applications. Inbound integrations enable you to create improvement initiatives
from integrated applications. Outbound integrations enable you to create application records
from improvement initiatives or CIM tasks.

Procedure
1. Navigate to All and enter sys_extension_point.list in the search field.
2. In the Extension Points context menu, type CIMIntegrationAPI in the search field.
3. Select sn_cim.CIMIntegrationAPI.
4. Select Create Implementation under Related Links.
A new instance of the CIMIntegrationAPI is created.
5. Enter a name for the new API instance.
6. Save the record.
7. In the Script field, edit the inbound or outbound integrations.
◦ For inbound integrations, add application names in the var tables parameter of the
getInboundIntegrationTables function.
◦ For outbound integrations, add application names in the var tables parameter of the
getOutboundIntegrationTables function.
Enclose the values in single quotation marks and use commas to separate multiple values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

532


<!-- page 533 -->
The following example shows integrating improvement initiatives from
change requests with CIM by editing the inbound extension point of

CIMIntegrationAPI.
8. Save and update the record.
For inbound integrations, the Create Improvement Initiative related link is added to records of
applications integrated with CIM.
9. For outbound integrations, configure related links on CIM task records to integrated
applications.
For more information, see Create a UI action .

Domain separation and Continual Improvement Management
Domain separation in Continual Improvement Management is configured to apply to all features
of the application. Separation of data is configured along with separation of logic and process.
Domain separation enables you to separate data, processes, and administrative tasks into
logical groupings called domains. You can control several aspects of this separation, including
which users can see and access data.

Support level: Basic

• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
For more information on support levels, see Application support for domain separation

.

Domain separation and Continual Improvement Management overview
When an improvement opportunity is discovered within your organization, you can implement
the improvement in a structured manner using Continual Improvement Management with
domain separation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

533


<!-- page 534 -->
Once an improvement initiative is created, the Improvement Manager uses the Improvement
Register to review and prioritize the improvement, and assigns improvement tasks. CIM task
owners are responsible to fulfill assigned tasks to the desired outcome of that improvement.
Both Improvement Register and CIM Task tables support domain separation so the Improvement
Requester, task owners, Improvement Coordinator, and Improvement Manager can view only the
improvement initiatives and related tasks within the (tenant) domain to which they belong.

How domain separation works in Continual Improvement Management
Domain separation is supported in Continual Improvement Management with no CIM setup or
configuration required. Improvements can be created in separate domains, including the global
domain.
Continual Improvement Management extends the platform Task [task] table.
When domain separation is implemented, CIM users can view and request improvements
initiatives only in the domain assigned. Domain and Domain Path columns are available for two
main CIM tables (Improvement Register and CIM Tasks) provided with the base system. The
Domain column contains the name of the domain to which the event or alert belongs, and the
Domain Path column contains the unique domain identifier.

Table

Contents

[sn_cim_register]

Improvement Initiatives

[sn_cim_task]

CIM Tasks

Note: If the domain column is not shown, click the Update Personalized List icon and add
the required column. You can also add the domain path column, if desired.
Use cases:
• An Improvement Requester that belongs to the Acme domain creates an improvement
initiative and wants to view it.
A user must belong to the Acme domain, its parent domain, or the global domain to view the
improvement initiative.
• An Improvement Manager that belongs to a parent domain tries to view an improvement
initiative in a child domain.
The user of a parent domain can view improvement initiatives of the parent as well as all child
domains of that parent.
• An Improvement Requester that belongs to Acme domain wants to create an improvement
initiative on behalf of another user in the Acme domain.
A user must belong to the same domain as the user for which the improvement initiative is
created.
• An Improvement Requester wants to associate a record for an integrated application in the
Acme domain.
A user must belong to the domain of the integrated application from which a record is
associated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

534


<!-- page 535 -->
• An Improvement Manager has access to multiple domains, but wants to update a record with
content within a specific domain.
The domain specified for the current record drives the functionality of that record and
reference fields.
Related topics
Domain separation for service providers

Monitor and plan improvements
Use the Continual Improvement Workbench to monitor and plan improvements in a single view.
The workbench shows tile and list views of improvements in progress, as well as listings under
review, and in the backlog to help you plan your sprint.

Before you begin

Role required: sn_cim.improvement_manager, sn_cim.improvement_coordinator

About this task

The workbench is flexible graphical view that you can tailor to your needs, which is helpful for the
Improvement Manager when running planning meetings and when doing a quick status update
to other stakeholders.
The tile-based drag-and-drop user interface makes it easy to monitor, plan, and approve
improvements.

Section

Overview tab

Description

Shows two groups of improvements.
• Tiles in Implement and On Hold states.
• Listings in Review state.
This list can be customized in the
Workbench Review list layout.
Use this section for daily monitoring and
assessment of improvements being
implemented, as well as those recently
implemented that are in review.

Planning tab

Lists two groups of improvements.
• Listings in Implement and On Hold states.
• Listing for backlog (New, Accepted, Assess,
and Approved states).
Use this section for ranking and prioritization
of improvements in the Implement state, or
in the backlog (improvement initiatives in
Approved, Assess, Accepted, and New states,
listed in that order).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

535


<!-- page 536 -->
Section

Description

Note: Configuration changes made to
the Planning workbench are reset when
the Planning workbench is reloaded.
Continual Improvement Management Improvement Workbench

Features:
• Tile layout (12 improvement tiles shown by default).
• Search by keyword.
• Sort by rank, priority, due date, or effort estimate.
• Status on tile (percentage complete, assignment, priority, and time left)
Percentage complete is based on the total planned duration of all CIM tasks in each phase of
the improvement. For example, if a task in a phase that has a planned duration of 10 days is
100% complete in 10 days, and if another task in the same phase has a planned duration of 5
days and is 0% complete in 10 days, the phase to which these tasks belong will show as 50%
complete.

Note: Percent complete values are shown per phase, and per improvement.
• Color-coded status badge on tile.

Status badge

Description

All tasks have been completed (percent
complete is 100%).
Due date has passed.
Less than 15% of duration left until the due
date.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

536


<!-- page 537 -->
Status badge

Description

Improvement has been placed on hold.
• Customize fields shown in workbench lists using the Workbench Review view.
Access the Workbench Review view from the List Controls menu (
Register (List Controls > View > Workbench Review).

) of the Improvement

Note: Only the fields visible in the Improvement Register [Workbench Review] view are
shown in the workbench overview section.
On the planning page, you can prioritize your backlog using an easy-to-use drag-and-drop
interface, similar to sprint planning, where you have an active sprint and a list of backlog items.
Move backlog items to the Work in Progress list, which is your active sprint.
Continual Improvement Management Workbench Plan

Features:
• Color coding on Planned end date field (red, green)
• Search by keyword.
• Move items up or down a list.
• Group multiple items together.
• Drag and drop within and between lists.

Note: Moving an item, or group of items, from one list to another changes the state of
the improvement.
For example, moving an item from Backlog to Work in Progress changes the state from
Approved to Implement. Conversely, moving an item from Work in Progress back to the
Backlog changes the state to Approved.
Only approved items can be moved from the Backlog list to the Implement list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

537


