# Zurich Customer Service Management — Extend capabilities

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1281–1306 of 2452

Sections: Extend capabilities (p1281); Administer (p1306)

---

<!-- page 1281 -->
Configure a Portal Browse Taxonomy widget to work with the Portal Taxonomy Topic widget
Enable users to access knowledge articles and catalog items in the Portal Taxonomy widget by
selecting a topic on the card in the Portal Taxonomy Topic widget.

Before you begin

You must add and configure the Portal Browse Taxonomy widget before accessing taxonomic
topic on the Portal Taxonomy Topic widget. Otherwise, a blank page displays on the Portal
Taxonomy Topic widget. For more information, see Add and configure the Portal Browse
Taxonomy widget.
You must add and configure the Portal Taxonomy Topic widget in your portal. For more
information, see Add and configure the Portal Taxonomy Topic widget.
Role required: admin or sp_admin

Procedure
1. On your portal home page, in the website URL, copy the page ID.
https://<instance-url>/<portal-id>?id=<page-id>&sys_id=<reco
rd-id>
2. On you portal home page, press Control+right-click on the Portal Taxonomy Topic widget.
3. Select Instance Options.
4. On the Instance options window, in the Behavior section, paste the page ID into the Browse
taxonomy page field.
5. Select Save.

Result

Selecting topics redirects the user to a Portal Browse Taxonomy widget that displays related
knowledge articles and catalog items.

Extend capabilities
To extend your Customer Service Management environment, integrate additional applications
and features. This enhances functionalities and improves support for more efficient interactions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1281


<!-- page 1282 -->
Extend capabilities overview

Setting up advanced features
Application or feature

Description

Outsourced Customer Service

Configure Outsourced Customer Service to
enable the outsourced company or individuals
to perform tasks, handle operations, or provide
services.

Proactive Customer Service Operations

Configure Proactive Customer Service
Operations to trigger case workflows and
notify customers of any issues to resolve
issues faster and lower inbound call volume.

Configure Customer Service Platform
Analytics Solutions

Configure Customer Service Platform
Analytics Solutions to view preconfigured
dashboards with actionable data
visualizations to improve your business
processes.

Configure the Platform Analytics Solution for
Self-Service Analytics for Customer Service

Configure Platform Analytics Solution for
Self-Service Analytics to run diagnostics,
review and customize components, and start
collecting data.

Continual Improvement Management

Request improvement opportunities, and
implement phases and tasks to meet
performance goals, track progress, and
measure success.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1282


<!-- page 1283 -->
Setting up advanced features (continued)
Application or feature

Description

Process Mining

Create automated business process flows
from your data to help analysts and process
owners to analyze and optimize their business
processes.

Workforce Optimization for Customer Service

Manage and maintain the productivity of
your workforce and efficiently route work to
your team, manage your team's skills and
schedules, and monitor their performance.

Outsourced Customer Service
Outsourcing is a business practice where an enterprise hires another company or individuals to
perform tasks, manage operations, or provide services. These functions were previously handled
by the enterprise's own employees.
Outsourced Service Providers (OSPs) are organizations engaged by enterprises to deliver
customer service to external customers. These services can address various needs, including
regional support, multilingual capabilities, and seasonal demand. Benefits of outsourcing
services are as follows:
• Cost savings
• Increase support coverage
• Access to skilled expertise

Plugin
If you have the administrator role, you can activate the Outsourced Customer Service plugin
(com.snc.outsourced_service_provider).

Note: The Outsourced Customer Service plugin (com.snc.outsourced_service_provider)
requires the Customer Service (com.sn_customerservice) plugin to get activated.
The Outsourced Customer Service plugin adds the Customer Service > Outsourced Customer
Service module to the application navigator. If you have the administrator role, you can access
this module. The administrator can assign the following roles to users:
• sn_csm_ocs.ext_manager (external OSP manager)
• sn_csm_ocs.ext_agent (external OSP agent)
• sn_csm_ocs.manager (internal OSP manager

Outsourced Customer Service Guided Setup
Activating the Outsourced Service Provider plugin adds the Outsourced Customer Service
Guided Setup section. Navigate to Outsourced Customer Service > Guided Setup and use the
tasks in this section to configure Outsourced Service Providers.
Related topics
Set up Outsourced Customer Service
Outsourced Service Provider agent tasks

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1283


<!-- page 1284 -->
Outsourced Service Provider manager tasks
Roles for Outsourced Customer Service
Configure Outsourced Customer Service
Configure various components of Outsourced Customer Service based on the specific
requirements of your organization.
Set up Outsourced Customer Service
Configure various aspects of Outsourced Customer Service based on the specific requirements
of your organization.

Before you begin

Role required: admin

About this task

There’s a sequence of tasks that enable you to configure Outsourced Customer Service. You
can perform these tasks based on the plugin you activated. Certain setup tasks apply only if you
activated the Outsourced Customer Service plugin and this point is noted at the top of each task.
To configure Outsourced Customer Service, use the Customer Service guided setup. The guided
setup takes you through the entire setup and configuration process.

Procedure
1. Navigate to All > Customer Service > Outsourced Customer Service > Guided Setup.
The Outsourced Customer Service Guided Setup page is displayed.
2. On the Onboarding Outsourced Service Provider (OSP) window, select Get Started.
3. View the list of tasks to configure the feature.
Onboarding Outsourced Service Provider configuration tasks
Task

Description

Setup Outsourced Service Provider

Creates an OSP by specifying the internal
manager and setting up transfer group.

Note: Whenever an OSP is set up
and mapped, it automatically creates a
company record.
Setup Outsourcing Criteria

Defines outsourcing criteria based on
account, consumer, asset, and sold product.
OSP agents can view all the cases matching
the outsourcing criteria. For example,
consumer-based criteria can be defined
for all Spanish speaking consumers and all
consumers based out of Australia.

Onboard Manager

Onboard OSP manager for managing cases
and agents. Once onboarding is complete, a
password reset email is sent to the manager's
email id.

Setup Assignment Groups

Creates a group and associates it to an OSP
manager. OSP manager assigns cases to the
agents assigned to the group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1284


<!-- page 1285 -->
Task

Description

Onboard Agent

Onboard agents for an OSP for fulfilling
cases. Once onboarding is complete, a
password reset email is sent to the agents
email id.

4. Go back to the Outsourced Customer Service Guided Setup page.
5. On the Case Routing and Assignment window, click Get Started.
6. View the list of tasks to configure the feature.
Case Routing and Assignment configuration tasks
Task

Description

Create Matching Rules

Rules to identify customer service cases that
meet certain conditions.

Create Assignment Rules

Cases that meet certain conditions based
on the rules created are routed to customer
service agents.

7. To perform a task, select Configure.
This button opens the page in your instance where the configuration is completed.
Define outsourcing criteria
OSP managers and agents view cases based on the defined outsourced criteria. Defining
outsourcing criteria can be based on account, asset, consumer, or sold product. For example,
consumer-based criteria could be defined for all Spanish speaking consumers and all
consumers based out of Australia.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Outsourced Service Providers.
2. Select the OSP name.
3. Select Outsourcing Criteria related list.
4. Select New.
5. Fill in the fields on the new record form, as appropriate.
Option

Description

Description

Description for the outsourcing criteria.

Table

The table that stores the task for which the
outsourcing criteria is created. Select either
Account, Asset, Consumer, or Sold Product
tables.

Condition

The conditions in which the outsourcing crite­
ria apply.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1285


<!-- page 1286 -->
Option

Description

Use the buttons in this field to build one or
more conditions on the selected table. A con­
dition is made up of a selected field, an oper­
ator, and a value. Add conditions using the
AND and OR buttons. Delete conditions by se­
lecting the X to the right of a condition.
6. Select Submit.
OSP managers and agents can now view assigned cases which meet the condition under All
Cases, Unassigned Cases, My Cases, and Open Cases. For example, if an OSP organization
has been created with outsourcing criteria with the consumer table selected, an agent
belonging to this OSP can view cases created by a consumer.

What to do next

Create groups and set assignment rules for the OSPs.
Create groups and assignment rules
An administrator creates groups and associates it to an OSP. This group is the default group
to which the case is assigned to when an OSP agent transfers the unresolved case back to an
enterprise.

Before you begin

Role required: admin

Procedure
1. Select an OSP you have created.
2. Go to Groups related list.
3. Click New.
4. Fill in the fields on the Outsourced Service Provider form, as appropriate.
Option

Description

Name

The OSP group name.

Group email

Group email distribution list or the email address of the group's point
of contact, such as the group manager.

Manager

The OSP manager's name.

Type

Category for this group. For example, a group designated as type cat­
alog is a service catalog group and can also be accessed under the
Service Catalog > Catalog Policy > Fulfillment Groups module.

Description

Helpful information about the group.

5. Click Submit.
6. Click Group Staff related list to view the list of members for the selected group.
7. Click Assignment Rules related list to define assignment rules.
8. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1286


<!-- page 1287 -->
Onboard Outsourced Service Provider staff
An administrator creates Outsourced Service Providers (OSPs) after which OSP managers and
agents must be onboarded to manage and fulfill cases. As an administrator you can onboard
both the OSP managers and agents.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Outsourced Service Providers.
2. Select an existing OSP.
3. Select the Onboard Staff related link.
4. Fill in the fields on the Outsourced Service Provider form, as appropriate.
Option

Description

First Name

The first name of the OSP manager or agent.

Last Name

The family name of the OSP manager or
agent.

User ID

A unique ID for the OSP manager or agent.

Role

The role to onboard, such as an agent or a
manager.

Email

The OSP manager or agent's email address.

Outsourced Service Provider

The OSP that you have selected.

Mobile Phone

The OSP manager or agent's mobile phone
number.

Business Phone

The OSP manager or agent's business phone
number.

Assignment Group

Select the group that was created while creat­
ing an OSP.

Note: A new OSP staff member record is created and the OSP is created

in the Service Organization field of the service organization external staff
[sn_csm_service_organization_external_staff] table. Additionally, the same change
applies to other related lists, including Onboard Agent, Onboard Manager, Create Group,
Transfer Case, Register Staff, and Register Member.
5. Select Submit.
The onboarded staff records are visible under the Service Organization Staff related list.

Note: Once onboarding is complete, a password reset email is sent to the manager's or
agent's email address.
Create an Outsourced Service Provider
An enterprise creates Outsourced Service Providers (OSPs) to provide customer service to
external customers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1287


<!-- page 1288 -->
Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Administration > Outsourced Service Providers.
2. Select New.
3. Fill in the fields on the Outsourced Service Provider form, as appropriate.
Option

Description

Name

The OSP's name.

Service Provider Type

Customer or Field service provider.

Manager

The OSP's manager name.

Website

The web address for the internal business lo­
cation.

Notes

Any note regarding the OSP.
The company or organization to which the
OSP belongs.

Note: The Company field is a read-on­
Company

ly field. Additionally, there’s a 1:1 relation­
ship between an OSP and a company.
It means that only one company record
can be mapped to an OSP record at any
given time.

Active

Enables the OSP. The default value is set to
True.

Contact

Enter Phone or Fax phone number.
The OSP's postal address.
The following address fields are available by
default:

Address

◦ Street
◦ City
◦ State/Province
◦ ZIP/Postal Code
◦ Country

Case Transfer

Search and select the Case transfer group,
which is the default group to which the case
is assigned when an OSP agent transfers the
case.

The following fields on the company record are automatically updated whenever you update
them on the OSP record:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1288


<!-- page 1289 -->
◦ Name
◦ Street
◦ City
◦ State
◦ Zip/Postal Code
◦ Country
◦ Latitude
◦ Longitude
◦ Fax phone
◦ Phone
◦ Website
◦ Active
4. Select Submit.

What to do next

Define outsourcing criteria so that cases matching the criteria are visible to the OSP managers
and agents.
Related topics
Outsourced Service Provider agent tasks
Outsourced Service Provider manager tasks
Configure the Performance Analytics for the Outsourced Customer Service
Run diagnostics, review and customize components, and start collecting data.

Before you begin

A ServiceNow AI Platform administrator must have installed the content pack plugins or
ServiceNow Store application for this Platform Analytics Solution.
Role required: pa_admin

Procedure
1. Run all diagnostics on all records, as described in Performance Analytics diagnostics .
These diagnostics can catch many mismatches between the configuration of your Platform
Analytics Solutions and your tables.
2. Navigate to Performance Analytics > Administration Console.
3. Click the Dashboards link in the Explore and Manage tile.
4. Verify the names of the dashboards that have been installed with this Platform Analytics
Solution
5. Open the Indicator Sources tab.
6. For each dashboard included in this Platform Analytics Solution:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1289


<!-- page 1290 -->
a. Filter the indicator sources on the dashboard name.
Example
This screenshot shows the indicator sources filtered on the Outsourced Service
Provider dashboard from the Self-Service Analytics for CSM Platform Analytics

Solution.
b. Review the facts table, conditions, and frequency of the indicator sources compared to the
data structure on your own instance.
c. If necessary, open an indicator source and make corrections.
d. If you are editing an indicator source record, go to the Indicators related list and review the
Conditions field for each indicator.
Changing the indicator source can also affect the additional conditions on the individual
indicators.
7. If you changed the time field stamps in any indicator sources, also change any related
Performance Analytics scripts.
8. Open the Breakdown Sources tab.
9. For each dashboard included in this Platform Analytics Solution:
a. Filter the breakdown sources on the dashboard name.
10. Navigate to Performance Analytics > Jobs.
11. Set up and run the historical job for this Platform Analytics Solution, <name of historical job>.
12. Edit and activate the scheduled data collection job for this Platform Analytics Solution, <name
of scheduled job>
Outsourced Service Provider dashboard
The Outsourced Service Provider dashboard enables monitoring of breached service-level
agreements (SLAs), average resolution time, and case transfer percentages, among other
metrics. You can utilize the insights to identify the areas of concern and to plan your case
management strategy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1290


<!-- page 1291 -->
Important: Starting with the Xanadu release, the Outsourced Service Provider
dashboard has a new, modernized look and feel.
To access the new Outsourced Service Provider dashboard, navigate to All > Outsourced
Customer Service > Analytics, and select the outsourced service provider (OSP) name.
Existing customers upgrading from earlier releases to the Xanadu release can also access
the new Outsourced Service Provider dashboard.
However, existing customers on release versions prior to the Xanadu release can still
view the old Outsourced Service Provider dashboard by navigating to All > Outsourced
Customer Service > Overview.
Outsourced Service Provider dashboard

End user and roles
End user and goal

Required role

Internal OSP Manager

sn_csm_ocs.manager

Indicators
Outsource cases: Unassigned open cases
The number of open cases that are unassigned to the OSP agents.
Outsourced cases: open cases with breached SLAs
The number of cases that have remained open past the time required by the Service Level
Agreement (SLA).
Outsource cases: open cases
The number of cases that are in the open state.
Outsourced cases: Average overall CSAT
Average customer satisfaction (CSAT) based on survey results. For more information about CSAT,
see Customer service satisfaction surveys .
Outsourced cases: Number of resolved cases
The number of cases that the OSP agent has worked on and moved to resolved state.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1291


<!-- page 1292 -->
Outsourced cases: Summed duration of resolved cases
The total time taken by the OSP agents to resolve the cases.
Outsourced cases: Number of transferred cases
Number of cases that are transferred to an internal ServiceNow agent when an OSP agent
couldn’t resolve the case.

Global filter
The Outsourced Service Provider dashboard utilizes the outsourced service providers as global
filters. You can select one or more outsourced service providers to view different metrics and
reports. By default, the dashboard displays data from all outsourced service providers.

Reports
Title

Type

Description

Unassigned Open Cases

The number of cases that are
in the open state and isn’t yet
assigned to an OSP agent. In
this report, for example, there
are 42 cases that are yet to be
assigned. The OSP manager
views the number of such
cases at a glance and assigns
them.

Active SLAs Breached

This report shows all
breached SLAs that are
still active In this report,
for example, there are 42
such active SLAs. The OSP
manager views the number
of breached SLAs at a
glance, which helps in taking
immediate action.

Configure Proactive Customer Service Operations
Configure various aspects of Proactive Customer Service Operations based on the specific
requirements of your organization.

Before you begin

Role required: admin

About this task

There are a sequence of tasks that enable you to configure Proactive Customer Service
Operations. You can perform these tasks based on which plugin or application you have
installed. This is noted at the top of each task.
Note: To use integration with Event Management, install the Proactive Customer Service
Operations with Event Management plugin and the Event Management application from the
ServiceNow store.
Event Management integration is only available if you are using the CSM Agent Workspace
or the ServiceNow AI Platform interface.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1292


<!-- page 1293 -->
To configure Proactive Customer Service Operations, use the Customer Service guided setup.
The guided setup takes you through the entire setup and configuration process.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, click Get Started
3. In the Proactive Customer Service Operations category, view the list of tasks to configure the
feature.
Proactive Customer Service Operations configuration tasks
Task

Description

Activate Proactive Customer
Service Operations plugin
(com.snc.proactive_cs_ops).

Activate the Proactive Customer Service
plugin to use Proactive Customer Service
Operations.

Note: This is a ServiceNow Store
plugin. You must install this plugin
separately from the ServiceNow Store

.

Activate Proactive Customer Service
Operations with Event Management plugin
(com.snc.proactive_cs_itom).

Activate the Proactive Customer Service
Operations with Event Management plugin to
enable integration with Event Management.
This plugin automatically installs the
Proactive Customer Service Operations
plugin.

Note: This is a ServiceNow Store
plugin. You must install this plugin
separately from the ServiceNow Store

.

Install the Event Management application.

Install the Event Management application
from the ServiceNow store.

Configure form views

Configure the form layout and related lists for
the different views of the Case, Install Base
Item, and Account forms to display the fields
you require.

Activate an alert rule to automatically create a Configure an alert rule to automatically create
proactive case from an alert
a proactive case when an incident is created
from an alert that has one or more affected
install base items.

Note: This task is only applicable if
you are using the integration with Event
Management.
Configure proactive case flows

Automate workflows for proactive case
creation to improve your operational
efficiency and respond to customer issues
faster.

Note: This task is only applicable if
you are using the integration with Event
Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1293


<!-- page 1294 -->
4. To perform a task, click Configure.
This button opens the page in your instance where the configuration is completed.
Related topics
Using Proactive Customer Service Operations
View install base information from the Customer Service Portal
Create a case for install base from the Customer Service homepage
View the install base in CSM Configurable Workspace
View sold product information in CSM Configurable Workspace
Proactive Customer Service Operations
Proactively trigger case workflows and notify customers of any issues to resolve issues faster
and lower inbound call volume.
Proactive Customer Service Operations enables you to track the digital services sold to and in
use by your customers. This is referred to as install base.
If you identify any service disruptions to a customer's install base, you can proactively create a
case to notify them.
These cases are resolved and closed in the same way as customer-reported cases. When
multiple customers are affected, you can use the major issue management process.
You can also associate outage information to a case to keep your customers informed about
the impact of the outage and the status of the resolution. It also gives customers visibility into
planned service disruptions, enhancing transparency and reducing the number of customerreported cases.
Your customers can use the Customer Service Portal to view proactive cases that you opened
on their behalf, any outages associated with their install base, and interact with you using the
proactive case.
The Proactive Customer Service Operations plugin (com.snc.proactive_cs_itom) provides an
integration between Customer Service Management and the Event Management console in IT
Operations Management. For more information, see Integration with Event Management.

Before you begin
Meet with your stakeholders to define your requirements. Depending on your requirements, you
can activate either the Proactive Customer Service Operations plugin or the Proactive Customer
Services with Event Management plugin.

Note: The Proactive Customer Service Operations with Event Management plugin
provides all the features included in the Proactive Customer Service Operations plugin
as well as additional features from the Event Management console in IT Operations
Management.

Activation information
To enable Proactive Customer Service Operations, activate the Proactive Customer Service
Operations plugin (com.snc.proactive_cs_ops).
To enable Proactive Customer Service Operations with Event Management, activate the
Proactive Customer Services with Event Management plugin (com.snc.proactive_cs_itom)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1294


<!-- page 1295 -->
For detailed steps on getting started with Proactive Customer Service Operations, see Configure
Proactive Customer Service Operations.
Related topics
Major issue management overview
Configure Install base
Outage tracking for install base
Provide visibility into any current or upcoming outages affecting a customer's install base,
enhancing transparency and reducing the number of customer-reported cases.

Outage definition
An outage refers to a time period that a service delivering value to a customer is unavailable or
experiencing performance issues.
A customer can experience the following types of outages:
• Unplanned outage: Outages such as those caused by hardware or network issues.
• Planned outage: Outages caused by planned maintenance or upgrades.
• Degradation: Problems affecting a service that does not result in a disruption of that service.

Outage tracking overview
Proactively inform customers about planned or unplanned service disruptions by associating
outages with a case. In doing so, your customers are aware of the impact of the outage and have
visibility into the resolution status. They can then use this information to assess the business
impact of different outage types over a period and calculate any charge backs, if necessary.
Outages are typically created automatically when an alert is created for a service or by service
fulfillers when working on an incident.
An outage specifies the outage type, impacted service as well as the begin and end time.
Multiple services used by a customer can be associated with an outage.

Roles
As a major issue manager or customer service manager, you can create, associate, and track all
outages related to a case. Customer service managers can also view reports of business impact
by outage type.
As a customer service agent, you can view any outages associated with the case.
Your customers can view outage information on the Customer Service Portal.

Activation information
This feature requires the Proactive Customer Service Operations Management plugin
(com.snc.proactive_cs_ops).
Related topics
Associate an outage to a major case
Create an outage from a major case
Track outages for install base items
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1295


<!-- page 1296 -->
Proactive Customer Service - Advanced dashboard
View install base information from the Customer Service Portal
Integration with Event Management
Create cases proactively from alerts either manually or through automation. Track the accounts
and health status of the corresponding install base items affected by the alert to better correlate
customer issues and provide faster responses.
Customer Service Management provides an integration with the Event Management console in
IT Operations Management, which enables you to improve the customer experience by breaking
down the silos that exist between the processes and systems used by front line customer
service and back-office operations teams. By monitoring issues and creating cases proactively,
you can be one step ahead of your customers and solve issues faster.
Network Operations Center (NOC) operators monitor alerts from the Service Operations
Workspace. For more information, see Monitor service health .
When alerted to a service disruption, they can identify the accounts and corresponding install
base items affected and create a case for customer service to review. Customer service can view
the customers affected and notify them.
Customer service agents and managers can also track the service health status of install base
items for an account to provide faster and more accurate support to customers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1296


<!-- page 1297 -->
Overview of Proactive Customer Service Operations with Event Management

Learn about Proactive Customer Service Operations with Event Management from the following
video tutorial.

Note: This video was recorded in the New York release.
Proactive Customer Service Operations with Event Management
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1297


<!-- page 1298 -->
Activation information
To enable Proactive Customer Service Operations with Event Management, activate the
Proactive Customer Service with Event Management plugin (com.snc.proactive_cs_itom).
Service health status for install base
View the real-time health status of a customer's install base. Correlate customer issues with the
operational health of their install base to provide more informed responses to your customers.

Service health tracking overview
The integration between Customer Service Management and the Event Management console in
IT Operations Management enables you to track the service health status of a customer's install
base.
When an issue affects one or more install base items and an alert is created, the severity of the
alert is calculated in Event Management. It is calculated according to alert impact calculation
rules. Based on the severity of the alert, the service health status of each install base item is
calculated. Customer service agents can view the service health status of install base items in an
account or a case in Customer Service Management.
For more information about how the severity of an alert is calculated, see Alert impact
calculation .
To provide the service health status for an install base item in Customer Service Management,
the following fields are mapped.
Event management fields for calculating alerts
Event Management (em_impact_status table)

Customer Service Management
(sn_install_base_item table)

Business Service

Service Context

Element Identifier

Configuration Item

Severity

Health Status

Note: The service health status is displayed only if the install base item has both a
Configuration Item (CI) and a service context associated with it. Service context is the
application service associated with the underlying CI for impact calculation in Event
Management. For more information about application services, see Lesson 2 of the Event
Management operator guide .
The service health status is displayed in Customer Service Management as follows.
Health status alerts
Severity of alert (Event Management)

Service health status on Account and Case forms
(Customer Service Management)

Critical

Critical: Resource is either not functional or
critical problems are imminent.

Major

Major: Major functionality is severely impaired
or performance has degraded.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1298


<!-- page 1299 -->
Health status alerts (continued)
Severity of alert (Event Management)

Service health status on Account and Case forms
(Customer Service Management)

Minor

Minor: Partial, non-critical loss of functionality
or performance degradation occurred.

Warning

Warning: Attention is required, even though
the resource is still functional.

Info

Normal: No severity. An alert is created. The
resource is still functional.

Clear

Normal

Empty/Null

Not Available

For more information about alert severity, see Lesson 1 of the Event Management operator
guide .

Roles
As a system administrator, configure form views to add the Service Context, Health Status, and
Health Status Last Updated fields to the relevant forms.
As a customer service agent, view the service health status of install base items on the Account
or Case form.

Activation information
This feature requires the Proactive Customer Service Operations with Event Management plugin
(com.snc.proactive_cs_itom).
Related topics
Integration with Event Management
Configure form views for Proactive Customer Service Operations
Track the service health of install base items in Agent Workspace
Activate Proactive Customer Service Operations
Activate the Proactive Customer Service plugin to use Proactive Customer Service Operations.

Before you begin

Role required: admin

About this task

Proactive Customer Service Operations is only available for customers who are licensed for the
Customer Service Management application.
To activate Proactive Customer Service Operations, activate the Proactive Customer Service
Operations Management plugin (com.snc.proactive_cs_ops). This plugin is not active by default.

Note: This is a ServiceNow Store plugin. You must install this plugin separately from the
ServiceNow Store

.

Activating this plugin also installs the Major Issue Management, Customer Service Install Base
Management, Customer Service with Service Management, Customer Service Case Action
Status, and Task-Outage Relationship plugins.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1299


<!-- page 1300 -->
Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for the plugin com.snc.proactive_cs_ops.
3. Click Activate.
Activate Proactive Customer Service Operations with Event Management
Activate the Proactive Customer Service Operations with Event Management plugin to use
Proactive Customer Service Operations with Event Management.

Before you begin

Role required: admin

About this task

Proactive Customer Service Operations with Event Management is only available for customers
who are licensed for the Customer Service Management application.
To activate Proactive Customer Service Operations with Event Management, activate the
Proactive Customer Service with Event Management plugin (com.snc.proactive_cs_itom). This
plugin is not active by default.

Note: This is a ServiceNow Store plugin. You must install this plugin separately from the
ServiceNow Store

.

Activating this plugin also activates the Proactive Customer Service Operations
(com.snc.proactive_cs_ops) and Event Management (com.glideapp.itom.snac) plugins.

Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for the plugin com.snc.proactive_cs_itom.
3. Click Activate.
Configure form views for Proactive Customer Service Operations
Configure the form layout and related lists for the different views of the Case, Install Base Item,
and Account forms to display the fields you require.

Before you begin

Role required: admin
Certain fields on the forms can only be added if you have activated the Proactive Customer
Service Operations with Event Management plugin. This is noted in the following table.

Procedure
1. Navigate to Customer Service.
2. Add the following fields to forms and related lists, as required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1300


<!-- page 1301 -->
Configure form views
Form

Case

Procedure

a. Click Cases > Proactive.
b. Add the Proactive field to the Proactive Case and
Workspace view, and other views as required:
▪ Proactive
▪ Alert

Note: The Alert field is only available if you
have activated the Proactive Customer Service
Operations with Event Management plugin.

Note: This only applies if you have activated the

c.

Proactive Customer Service Operations with Event
Management plugin.
Add the following fields to the Affected Install Base Items
related list, Proactive Case and Workspace view, and
other views as required.
▪ Health Status
▪ Health Status Last Updated
Account

Note: This only applies if you have activated the
Proactive Customer Service Operations with Event
Management plugin.
a. Click Customer > Accounts.
b. Add the following fields to the Install Base Itemsrelated
list for the Case and Workspace views, and other views as
required.
◦ Health Status
◦ Health Last Updated

Install Base Item

Note: This only applies if you have activated the
Proactive Customer Service Operations with Event
Management plugin.
a. Click Products > Install Base Items.
b. Add the Service Context field to the Default and
Workspace views.

Activate an alert rule to automatically create a proactive case from an alert
Configure an alert rule to automatically create a proactive case when an incident is created from
an alert that has one or more affected install base items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1301


<!-- page 1302 -->
Before you begin

Role required: evt_mgmt_admin

About this task

Note: This task is only applicable if you are using the integration with Event Management.
Procedure
1. Navigate to All > Event Management > Rules > Alert Management.
2. Click Create Proactive Case.
3. Select the Active check box.
4. Click Update.
When an incident is created from an alert that contains affected install base items, a case is
automatically created. The case number is added to the Case field on the Alert form.
Configure proactive case flows
Automate workflows for proactive case creation to improve your operational efficiency and
respond to customer issues faster.

Before you begin

Role required: admin

About this task

Note: This task is only applicable if you are using the integration with Event Management.
Configure the flow designer to automate the next steps in processing a proactive case. You can
automate that a proactive case is proposed to a major case or is directly promoted to a major
case. If promoted directly to a major case, child cases are automatically created when multiple
customers are impacted.
If a single account is affected, you can also automate that an account and primary contact are
associated to a case.

Procedure
1. Navigate to All > Customer Service > Administration > Proactive Case Flows.
2. Click the Process Proactive Cases Created from Alerts flow.
3. Click the Process Proactive Cases for Single and Multiple Accounts subflow.
4. In the Major Case Status field, set the initial status of the major case for multiple accounts.
By default, this field is set to None. Based on your selection, the proactive case is either
Proposed, Accepted, or None. If you set the status to Accepted, child cases are created
automatically.
5. In the Affected Account Threshold field, enter the number of affected accounts required for a
proactive case to be eligible for major case processing.
The default is two.
6. Select the Process Case for Single Account check box to associate an account and primary
contact to the case if a single account is affected.
This also applies if multiple install base items from the same account are affected.
7. Click Done.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1302


<!-- page 1303 -->
Configure Customer Service Platform Analytics Solutions
Enable Customer Service Platform Analytics Solutions to view preconfigured dashboards with
actionable data visualizations to improve your business processes.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Performance Analytics > Guided Setup.
2. On the Getting Started page of the guided setup, click Get Started.
3. In the Customer Service category, view the list of tasks to configure the feature.
Performance Analytics for configuration tasks
Task

Description

Activate Performance Analytics for Customer
Service Management

Activate the Performance Analytics
- Content Pack - Customer Service
(com.snc.pa.customer_service) plugin to add
Performance Analytics configuration records
to your instance.

Review Indicator Sources

Review the provided indicator sources to
ensure they match your Customer Service
application table structure.

Review Indicators

Review the provided indicators to ensure that
the metrics you want to measure are tracked.

Review Breakdown Sources

Review the provided breakdown sources to
ensure they match your table structure and
include the elements you want.

Review Breakdowns

Review breakdowns to ensure that you can
filter scores by the appropriate elements.

Collect Data

Run historical data collection once to
collect scores on existing data, and enable
scheduled data collection to begin collecting
scores on new data automatically.

View Analytics Hub

View the Analytics Hub for indicators that
you collected data for to begin exploring your
scores.

View Dashboards

View the provided dashboards to get an
overview of your scores and view multiple
metrics in a single location.

4. To perform a task, click Configure.
This button opens the page in your instance where the configuration is completed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1303


<!-- page 1304 -->
Configure the Platform Analytics Solution for Self-Service Analytics for
Customer Service
Run diagnostics, review and customize components, and start collecting data.

Before you begin

Role required: pa_admin
A ServiceNow AI Platform administrator must have installed the content pack plugins or
ServiceNow Store application for this Platform Analytics Solution.

Procedure
1. Run all diagnostics on all records, as described in Performance Analytics diagnostics .
These diagnostics can catch mismatches between the configuration of your Platform Analytics
Solutions and your tables.
2. Navigate to Performance Analytics > Admin Console.
3. Click the Dashboards link in the Explore and Manage tile.
4. Verify the names of the dashboards that have been installed with the Self-Service Analytics
Platform Analytics Solution.
5. Open the Indicator Sources tab.
6. For each dashboard included in this Platform Analytics Solution:
a. Filter the indicator sources on the dashboard name.
Example
This screenshot shows the indicator sources filtered on the Self-Service Analytics
dashboard from the Self Service Analytics for Customer Service Platform Analytics Solution.

b. Review the facts table, conditions, and frequency of the indicator sources compared to the
data structure on your own instance.

Important: Pay particular attention to time stamp fields such as Resolved or Created
that are referenced in the Conditions field. You may need to use different time stamp
fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1304


<!-- page 1305 -->
c. If necessary, open an indicator source and make corrections.
d. If you are editing an indicator source record, go to the Indicators related list and review the
Conditions field for each indicator.
Changing the indicator source can also affect the additional conditions on the individual
indicators.
7. If you changed the time field stamps in any indicator sources, also change any related
Performance Analytics scripts.
8. Open the Breakdown Sources tab.
9. For each dashboard included in this Platform Analytics Solution:
a. Filter the breakdown sources on the dashboard name.
b. Review the conditions on the breakdown source.
10. Navigate to Performance Analytics > Jobs.
11. Set up and run the historical job for this Platform Analytics Solution, [SSA] Self-Service
Analytics Data Collection.
12. Edit and activate the scheduled data collection job for this Platform Analytics Solution, [SSA]
Self-Service Analytics Data Collection.
Related topics
Platform Analytics Solutions for Self-Service Analytics for Customer Service
Self-Service Analytics
Activate the Self-Service Platform Analytics Solution
Activate the content pack plugins or ServiceNow Store application for the Platform Analytics
Solution.

Before you begin

Activate the full, subscription version of Performance Analytics on the instance where you are
activating this Platform Analytics Solution. You can activate Performance Analytics on a subproduction instance without purchasing a subscription. For more information, see Activate your
Performance Analytics subscription .

Note: The data for the Communities and Virtual Agent tabs on the Self-Service Analytics
dashboard are generated when the Communities plugin (com.sn_communities) and Glide
Virtual Agent plugin (com.glide.cs.chatbot) are activated respectively.
Role required: admin

Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for Self-Service Analytics for Customer Service plugin
(com.snc.pa.self_service_analytics_csm).
3. Install the application.
When you install this application, you also activate the following plugins:
◦ Customer Service (com.sn_customerservice)
◦ Self-Service Analytics PA (com.snc.pa.self_service_analytics)
◦ Self-Service Analytics Core (com.snc.self-service_analytics_core)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1305


<!-- page 1306 -->
Related topics
List of plugins (Paris)

Administer Customer Service Management
Use a number of features and tools to administer the Customer Service Management application.
Features and applications for administering Customer Service Management
Feature or application

Description

Anonymous chat

With anonymous chat, consumers can chat
with a consumer service agent without logging
in to the Consumer Service Portal.

Customer Service Management Workflow
Studio actions

Use Flow Designer actions as building blocks
to create Customer Service Management
business processes.

Domain separation and Customer Service
Management

Domain separation enables you to separate
data, processes, and administrative tasks into
logical groupings called domains. You can
control several aspects of this separation,
including which users can see and access
data.

Extension points in Customer Service
Management

Use extension points to call custom scripts
in the Customer Service Management
application.

Knowledge product entitlements

The Knowledge Product Entitlements
application enables administrators to
designate the knowledge bases and
knowledge articles that customers can view
from the Customer Service Portal.

Limit knowledge base access to internal users

Limit access to the information in a knowledge
base to internal users.

Quick start tests for Customer Service
Management

Use quick start tests to validate CSM
functionality after making any configuration
changes, such as applying an upgrade or
developing an application.

Routing and assigning customer service cases The case routing feature uses matching rules
and assignment rules to identify customer
service cases that meet certain conditions and
then route those cases to customer service
agents.
Assignment workbench

Customer service managers can use the
assignment workbench to view a list of
agents,evaluate skills and availability, and
assign tasks efficiently and intelligently.

Special handling notes

Use the Special Handling Notes application to
create notes that bring important information
about individual records to the user's
attention.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1306


