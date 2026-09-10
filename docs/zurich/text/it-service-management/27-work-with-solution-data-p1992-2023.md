# Zurich IT Service Management — Work with solution data

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 1992–2023 of 3857

Sections: Work with solution data (p1992); Reference (p2003)

---

<!-- page 1992 -->
For overview information, see Enterprise portfolios. For more detailed information, see Navigate
portfolio types in Digital Portfolio Management.
Enterprise service portfolio templates provide a springboard to help you get started. For more
information, see Navigate service enterprise portfolio templates in DPM and Create enterprise
service portfolios using a template.

Procedure
1. Navigate to All > Digital Portfolio Management > DPM Enterprise Portfolios > Create new.
2. On the form, fill in the fields.
Create Enterprise Portfolio form
Field

Description

Name

Portfolio name in the Enterprise portfolios
tab of the DPM Workspace.

Short description

Short description of the portfolio in the
header area of the DPM Workspace.

Description

Description of the portfolio in the service
header in the DPM Workspace.

Portfolio type

The type of enterprise portfolio.
◦ Business Application Portfolio
◦ Service Instance Portfolio

Portfolio owner

Name that is responsible for the portfolio.

Portfolio manager

Name that manages the portfolio.

Portfolio Stakeholders

Individuals or groups that have an interest
in the enterprise portfolio.

Active

Status of the portfolio. DPM managers will
only be able to view active portfolios.

3. Submit the enterprise portfolio.
After you submit, access the portfolio by navigating to All > Digital Portfolio Management
> DPM Enterprise Portfolios, and then selecting the type (Business Application or Service
Instance).

Work with solution data in Digital Portfolio Management
After you create and organize personal portfolios and review the available enterprise portfolios,
you can do several actions with the DPM manager role to monitor the progress of solutions.

Work with Needs attention panels in Digital Portfolio Management
Digital Portfolio Management (DPM) enables you to view items that need attention in the context
of your solutions. Categories in each Needs attention panel differ based on the solution type. You
may not act on an item that needs attention, but you can see its status and severity to make datadriven decisions about your solutions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1992


<!-- page 1993 -->
Each DPM Workspace page has a Needs attention panel that presents items that need attention
in the context of the page. You can search items that need attention on the DPM home page but
it's more useful to search while viewing a portfolio or a solution.

Important: This topic applies to Standard Needs attention panels.
Standard Needs attention panels were introduced in the Utah release (May 2023). The Standard
version is more flexible than its legacy counterpart. The Standard system property is set to
true by default. Existing customers can set it to false to return to the former Needs attention
functionality. There isn't a limit to changing the value from true to false (and back). New
customers can't set the system property to false, so they only see the Standard version.

Standard Needs attention panels system property
Admins update the system property with the DPM admin [sn_dpm.dpm_admin] role.
• Navigate to All > Digital Portfolio Management > Administration > Settings.
• Enter *needs in the System Properties Name search field, and then press Enter.
• Select the system property [sn_dpm.standard_needs_attention].
• Release the record to edit it, and then set the property to false or true.
• Select Update.

Problems option in the Needs attention panel
To see problems in the Needs attention panel, you must be using the DPM August 2024 release
or a later release.
You can identify problems on the following solutions.
• Services and service offerings. Problems are related to the service offering via the service
offering record on the form, impacted services related list, and on the affected CIs related list.
Problems are then rolled up to the parent service and should be deduplicated at the parent
service level.
• Business applications. Problems are related to the service instance via the configuration
item field on the form. Problems are then rolled up from the service instance to the business
application and should be deduplicated at the parent service level.
• Service instances. Problems are related to the service instance via the configuration item field
on the form.

Service instance considerations
Prior to the November 2024 Store release, you could see the records of incidents, problems, and
changes in the Needs attention panel only if the service instance is added to the Configuration
item field of a related item (for example, to an incident record).
As of the November 2024 Store release, items or records are reflected in the Needs attention
panel when an incident, problem, or change includes the service instance in the Impacted
services or the Affected CIs related list, in addition to the Configuration item field.
After the service instances are added to the Configuration item field, Impacted services, or the
Affected CIs related list, you can see them under the Needs attention section in the base level
(service instance). The data also rolls up to the following levels in the DPM Workspace:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1993


<!-- page 1994 -->
• Business application
• Taxonomy node
• Portfolio
Also, after the service instances are added, the data is rolled up in the following areas when you:
• Select View details on any affected solution page.
• View the Run tab of any solution page to view the key performance indicators (KPIs).
This functionality applies to enterprise business application portfolios, enterprise service
instance portfolios, and to any business application or service instance added to your personal
portfolios.

Panel attributes and icons
Even though the Needs attention panel categories differ for each portfolio and solution, the
basic navigation is the same. All panels enable you to search, see a list of Needs attention cards,
paginate through the cards, and drill down to a record from the card list.
Needs attention panel example using an service instance

• Each Needs attention category includes a number that indicates the number of items in that
category. If there are no Needs attention items in a category, then the number is zero (0).
• Select the forward arrow (>) next to a number in the category to see a list of record cards that
need attention. From the card list, you can select a card to access its record. You can also go
back by selecting the Needs attention back arrow (<).
• The Needs attention Search field enables you to enter a number, a part of a word, or a whole
word to find Needs attention items that contain your search criteria. After you view and open a
record that needs attention, you can return to the Search field. Your search criteria remain in
the Search field until you clear the field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1994


<!-- page 1995 -->
The following table shows the Needs attention panel icons that display for each solution type.
Needs attention panel icons per solution type
Solution type

Services and service
offerings

Needs attention panel icons

◦ Needs attention icon ( ) to show or hide the Needs attention
panels. This toggle isn't on the DPM Workspace home page.
◦ Contacts icon ( ) to view team members and the all the teams
that support the service offering.
◦ Knowledge articles icon(
articles.
◦ Attachments icon (
record.

) to search for related knowledge

) to view and add attachments to the

◦ Catalog items icon (
) to search for catalog items on a service
or service offering record.
Business applications
and service instances

◦ Needs attention icon ( ) to show or hide the Needs attention
panels. This toggle isn't on the DPM Workspace home page.
◦ Contacts icon ( ) to view team members and all the teams that
support the business application or the service instance.
◦ Attachments icon (
record.

) to view and add attachments to the

Service considerations
• A record is linked to the offering and rolled up to the service. You can see incidents, outages,
and changes when the incident is linked directly to the service (not to the offering).
• An incident, outage, or change can impact multiple offerings.
• A record is first displayed on the offering, and then it's rolled up to the parent service.
• An incident displays once (not twice) if two offerings are added to an incident and they roll up
to the same service.

Service offering considerations
Critical incidents, outages, and changes are linked to the offering to display in the Needs
attention panel when the offering is:
• Listed in the service offering field on the incident record or the change record.
• Included in the affected services or the affected CI related lists, or both.
• Rolled up to the parent service level when an incident or change is related to an offering (via a
related list or directly on the form).

Note: By default, you see critical incidents. To see critical and major incidents, the Major
Incident Management plugin (com.snc.incident.mim) must be installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1995


<!-- page 1996 -->
Panel options for each DPM solution
Records included on each DPM solution page are the ones created "today."
Needs attention panels for each DPM solution page
Services and service offerings

Service instances

• Critical and major incidents

• Critical and major incidents

• Outages

• Outages

• Changes

• Changes

For new and zBoot customers, all the
above plus Audit and Risks.

Business
applications

• Critical and
major incidents
• Changes
• Risks

• Alerts

• Audits

• Risks
For new and zBoot customers, all
the above plus Audits.

Note:
To see Risk data, you must have the Technology Portfolio Management plugin installed
[sn_apm_tpm]. This plugin has two dependency plugins:
• Application Portfolio Management [com.snc.apn]
• Software Asset Management [com.snc.sams]

Related topics
Configure Needs attention panels in Digital Portfolio Management

View relationship maps in Digital Portfolio Management
View a relationship map in Digital Portfolio Management (DPM) to see all relationships that make
up a given solution. DPM uses the ServiceNow Unified Map to display a graphical hierarchical
map based on the CMDB.

Access a relationship map
While in a DPM solution (business application, service instance, service, or service offering),
select View relationships.
The Unified Map displays with the selected solution at the top, indicating it's the highest level in
the map. Branched from the highest level are other relationships that make up the highest level
solution.

Navigate a relationship map
For details on the Unified Map panels and navigation, see Unified Map

.

On the map page, use the panels for more information about the mapped solutions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1996


<!-- page 1997 -->
• Select

to view a summary of the selected solution.

• Select
to view contact information for team members and teams that are associated with
the selected solution.
to view all current issues in the context of the selected solution, for example, critical
• Select
incidents, current outages, or critical alerts.

Note: The options change for the current issues depending on the solution type.
• Select

to see the service instances associated with the selected solution.

Create demand from Digital Portfolio Management
Create demand using the Digital Portfolio Management (DPM) application. DPM enables you to
create demand for any business or technology management services that you own.

Before you begin

For the required plugins to create a demand in Digital Portfolio Management, see the Demand
Management area of Digital Portfolio Management related applications and data sources.
Role required: sn_dpm.dpm_manager

About this task

You can manage and create demands for services or service offerings that you own, right in the
workspace without having to go to the service or offering's native application.

Procedure
1. Navigate to All > Digital Portfolio Management > Digital Portfolio Management Workspace >
Personal Portfolios
2. To create demand, select a business or technology management service.
3. From the list, select the Create option and then select Demand.
4. On the form, fill in the fields.
For more details on demand entries, see Create a demand

.

Create demand form
Field Set

Description

Dates

Start and end dates for the demand.

Details

The details fields change, depending on
the type of service that you are creating
demand for. Follow the prompts to
complete each field entry.

Business case

The business case fields change,
depending on the type of service that
you are creating demand for. Follow the
prompts to complete each field entry.

Financials

Cost information, return on investment
(ROI), and planned benefit.

Assessment data

Impact and risk of the proposed demand.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1997


<!-- page 1998 -->
Field Set

Description

Demand

Owner and organization information to
assign to the demand.

5. Save the demand.
The service Plan tab shows the new demand.

Create an improvement initiative from Digital Portfolio Management
Create an improvement initiative using the Digital Portfolio Management (DPM) application. DPM
enables you to create an improvement initiative for any business or technology management
services that you own.

Before you begin

For the required plugins to create improvement initiatives in Digital Portfolio Management,
see the Continual Improvement Management area of Digital Portfolio Management related
applications and data sources.
Role required: sn_dpm.dpm_manager

About this task

You can manage and create improvement initiatives for services or service offerings that you
own, right in the workspace without having to go to the service or offering's native application.

Procedure
1. Navigate to All > Digital Portfolio Management > Digital Portfolio Management Workspace >
Personal Portfolios.
2. To create an improvement initiative, select a business or technical service.
3. From the list, select the Create option and then select Improvement initiative.
4. On the form, fill in the fields.
For details on the improvement initiative process, see Create an improvement request.
Improvement Initiative form
Field

Number
Business service

Service offering

Business Process

CIM Coordinator

Description

Unique number for the improvement initiative.
Business service where you created the
improvement initiative from in DPM.
Service offering where you created the
improvement initiative from in DPM.
Business offering where you created the
improvement initiative from in DPM.
The Continual Improvement Management
coordinator.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1998


<!-- page 1999 -->
Field

Approver Group

Strategies

State

Description

Continual Improvement Management
approvers for the improvement initiative.
Continual Improvement Management
assigned automation and effort reduction for
the improvement initiative.
State of the improvement initiative. This field
is read only. For descriptions, see Continual
Improvement Management reference
◦ New
◦ Accepted
◦ Assess
◦ Approved
◦ In Progress
◦ Review
◦ Closed
◦ Canceled

Priority

Priority of the improvement initiative. This
field is read only.
◦ 1 - Critical
◦ 2 - High
◦ 3 - Moderate
◦ 4 - Low
◦ 5 - Planning

Effort estimate

The level of effort for the improvement
initiative. This field is read only.
◦ Small
◦ Medium
◦ Large
◦ Extra Large

Benefits

Level of benefit expected from the
improvement initiative. This field is read only.
◦ Low
◦ Medium
◦ High

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1999


<!-- page 2000 -->
Field

Percent complete

Short description

Business justification

Description

Percentage complete for the improvement
initiative.
Short description of the improvement
initiative.
Elaboration of the short description to include
rationale and research conducted.

Goals tab
Field

Success measurement method

Improvement KPI

Base value
Percentage improvement
Target value
Target review date

Expected outcomes

Description

Performance Analytics (PA) Indicator.
Automated entry.
State the key performance indicator (KPI) for
the improvement initiative.
Percentage value, not to exceed 100%.
Percentage value, not to exceed 100%.
Percentage value, not to exceed 100%.
Expected date the improvement initiative is
reviewed.
Description of expected outcomes that
support the provided KPI.

Details tab
Field

Requested for

Type

Description

Name of the person creating the
improvement initiative.
The type of improvement initiative:
◦ People
◦ Process
◦ Technology

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2000


<!-- page 2001 -->
Field

Watch list

Parent initiative

Description

Others that are watching this improvement
initiative.
The parent initiative if there is one.

Schedule tab
Field

Planned start date

Planned end date

Actual start date

Actual end date

Description

Planned date to start the improvement
initiative.
Planned date to end the improvement
initiative.
Actual start date of the improvement
initiative.
Actual end date of the improvement initiative.

Notes tab
Field

Additional comments

Work notes

Description

Customer visible comments on the
improvement initiative.
Any notes that you want to add to the
improvement initiative (these notes are not
customer visible).

5. Save the improvement initiative.

List modules
List modules in Digital Portfolio Management (DPM) provide information that may or may not be
in personal portfolios or enterprise portfolios. You don't have to own solutions to view or create
list modules.
The list module in the DPM Workspace includes two tabs - Lists and My Lists. The following
categories are in the Lists tab, each with the options of Owned by me and All.
• Services
• Offerings
• Business applications
• Service instances
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2001


<!-- page 2002 -->
• Demands
• Projects
• Contracts
When you select All for a given category, you see all the records for that category, even if you
don't own them. Like any list of records, you can sort, filter, and change the columns in view. You
can also add them to your own personal list, called My Lists.
Create a personal list by adding any records that interest you, like service offerings, roadmaps,
projects, demands, ideas, contracts, incidents, team members, or teams. When you create a list,
you can start it from an existing list or create your own list. After you create a list, you see them in
the My Lists tab in the list module. After you create more than one list, you can select Reorder to
help you organize your lists.
Related topics
Work with lists in Digital Portfolio Management

Work with lists in Digital Portfolio Management
Work with lists in the Digital Portfolio Management Workspace. Lists enable you to view service
and application information that is not in a personal portfolio or an enterprise portfolio.

Before you begin

Role required: sn_dpm.dpm_manager

About this task

Use the List tab in Digital Portfolio Management (DPM), to view lists of services, service offerings,
business applications, service instances, demands, projects, and contracts. You can view the
solutions that you own as well as the solutions that you don't own. You can also create custom
lists to see any items that interest you like services, incidents, and users. The table column
names in lists change depending on the type of list that you create. You can also send a link to a
specific list item and add or hide columns from your list view.

Procedure
1. Navigate to All > Digital Portfolio Management > Digital Portfolio Management Workspace.
2. Select the list icon (

).

3. View a list.
The Lists tab contains lists of all available solutions in your DPM Workspace.
◦ Select the Lists tab to view existing lists.
Select Owned by me to see the lists that you own or select All to see all the solutions in your
DPM Workspace (for example, all services).
◦ Select the My Lists tab to view the lists that you created.
4. Optional: Create a list.
a. In the My Lists tab, select Add new List.
b. In the New Lists window, select an option — Start from existing or Create your own.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2002


<!-- page 2003 -->
▪ If you select Start from existing, then select an existing list from the List Name field.
Depending on the list name that you select, you can opt to keep or remove the list columns
and adjust the filters. When finished, select Create.
▪ If you select Create your own, then complete the List Name field. In the Select Source
field, select the source for your list. Depending on the type that you select, you can opt to
keep or remove the list columns and adjust the filters. When finished, select Create.
5. Optional: Update a list.
◦ Select Refresh List (

) to refresh the list results.

◦ Select List Actions (

) to edit the list columns and to save the list.

◦ Select Show filter panel (

) to add or remove filters for the list.

◦ Select Export to export the displayed list.
◦ Select New to create a list.
6. Optional: Share a list.
◦ Navigate to the list that you want to share.
◦ Copy the browser address (URL) of the list that you want to share.
◦ Paste that copied address in your sharing application (email or internal messaging system)
to share it with others.
(Optional) The copied link contains a unique list ID so when selected, it goes directly to the
list that you want to share.

Digital Portfolio Management reference
Reference topics provide additional information about administering Digital Portfolio
Management (DPM).

Roles for Digital Portfolio Management
Several types of components are installed with Digital Portfolio Management (DPM) when you
®
activate the application from the ServiceNow ServiceNow Store. DPM has two roles - admin and
user.

Roles installed with DPM
There are two roles for DPM.
• The DPM admin [sn_dpm.dpm_admin] role configures the DPM Workspace for users. The DPM
admin role can create, retrieve, update, and delete (CRUD) all personal portfolios created by
anyone. The DPM admin role can also assign the DPM manager role to groups so a personal
portfolio owner can select groups to view or edit personal portfolios.
• The DPM manager [sn_dpm.dpm_manager] role is the end user of the DPM Workspace. The
DPM manager role can only CRUD personal portfolios that they create.
See the following table for information about each role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2003


<!-- page 2004 -->
DPM roles
Role title [name]

DPM admin
[sn_dpm.dpm_admin]

Description

Contains roles

• View all DPM system
properties and admin
pages.

• sn_dpm.dpm_manager

• Update all DPM system
properties.

• sn_ep.enterprise_portfolio_admin
(can CRUD enterprise portfolios that
are created using the enterprise
portfolio tables).

Note: The DPM

Important: The DPM admin

Admin role can't
CRUD service
portfolios unless
they have the
appropriate
service portfolio
admin or manager
roles from
Service Portfolio
Management.

only gets this role if you install
the enterprise portfolio plugin.
After you install the plugin:
◦ The DPM admin role inherits
the enterprise portfolio admin
role.
◦ The DPM manager role
inherits the enterprise
portfolio viewer role.

• Use Key performance
indicator (KPI)
functions:
◦ View KPI group tables
for KPI groups and
KPI group mappings.
◦ Create KPI groups.
◦ Update and delete all
KPI groups.
◦ Map KPI groups.
DPM Manager
[sn_dpm.dpm_manager]

• Retrieve and update
personal portfolios that
they’re editors of.
• Retrieve personal
portfolios that they’re
viewers of.

• sn_devops.viewer
• cmdb_read
• sn_team_perf.team_performance_user
• service_viewer
• sn_ep.enterprise_portfolio_viewer

• Read all available data
in the DPM Workspace.
• Create demands.
• Create Continual
Improvement
Management (CIM)
items.
• Update roadmaps.
• View KPIs in the DPM
Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2004


<!-- page 2005 -->
DPM roles (continued)
Role title [name]

Description

Contains roles

Note: The DPM
manager can't
view or map KPI
groups in the
ServiceNow AI
Platform but
users with the
service_editor,
service_admin,
or service_author
roles can map KPI
groups to their
services.
• Functions that the DPM
manager can't do:
◦ Edit services,
offerings, business
applications, or
service instances.
◦ Edit and update
relationships
to services,
offerings, business
applications, or
service instances.
◦ Create or edit a
service in Service
Builder.

Note: Service
Builder buttons
are hidden
for the DPM
manager role
unless the
user has the
correct role
that provides
edit access
to a particular
solution.

Assign the DPM manager role to groups
To edit a personal portfolio, a group must have the DPM manager role.
To assign the DPM manager role to a group, the admin does the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2005


<!-- page 2006 -->
1. Enter dpm_personal_portfolio.list in the Filter navigator.
2. Open the personal portfolio record that you want to assign the DPM manager role.
3. Select Edit user groups, and then search for the user groups to add to the DPM manager role.
4. Repeat the previous step for View user groups if you want to add the DPM manager role to the
groups that view personal portfolios.
5. Select Update.

Tables installed with DPM
Tables installed with Digital Portfolio Management
Table

Description

dpm_available_item_type

Stores records for each type in a personal
portfolio.

dpm_navigation_history

Stores records for navigating each type in a
personal portfolio.

dpm_personal_portfolio

Stores records for each created personal
portfolio.

dpm_personal_portfolio_item

Stores records for all types that are in a
personal portfolio.

dpm_unified_backlog

Stores records for backlog information in a
personal portfolio.

sn_dpm_kpi_group_m2m_spm_nodes

Stores records for key performance indicator
(KPI) group nodes from Service Portfolio
Management.

sn_dpm_kpi_group_m2m_viz_config

Stores records for KPIs grouped by data
visualization.

sn_team_perf_kpi_group

Stores records for KPIs grouped by team
performance.

Related topics
Activate Digital Portfolio Management

Digital Portfolio Management homepage default solution cards
Digital Portfolio Management uses certain fields to auto-generate a set of default solution cards
to display on your DPM homepage. After you add or remove solutions from your homepage, DPM
remembers your updates by displaying your personalized solutions cards instead of the autogenerated set.

DPM homepage overview
Each time that you log in to the DPM Workspace, the system uses certain fields to display a set
of default solution cards. You can use the personalize option to add or remove solutions to your
homepage. For more information, see Personalize the Digital Portfolio Management Workspace
home page.
After you add or remove solutions, the DPM system remembers your updates in the
dpm_home_page_item table so that next time you log in to the DPM Workspace, your
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2006


<!-- page 2007 -->
personalized homepage displays. The system no longer generates a set of default solution cards
for you.

Note: Each time you access the DPM homepage, the solution card data refreshes,
whether you have the auto-generated default solution set or a personalized solution card
set.

System properties for number of solution cards
Two system properties determine the number of solutions cards on your DPM homepage.
System properties for solution limits on the DPM homepage
System property

dpm.homepage.cmdb_ci_service_limit

dpm.homepage.cmdb_ci_business_app_limit

Description

The query limit
when autogenerating
services,
service
offerings,
and service
instances for
your DPM
homepage.
The query limit
when autogenerating
business
applications
for your DPM
homepage.

Solution type

cmdb_ci_service

cmdb_ci_business_app

Default
limit

750

250

These two system properties derive the overall limit on the DPM homepage of 1000. Even after
you personalize your DPM homepage, the total number of solutions on your homepage can't
exceed 1000.
You can personalize your DPM homepage to adjust the solution card count. For example, you can
have 1000 services and zero business applications but the total number of solutions on the DPM
homepage can't exceed 1000.

Important: An administrator with the sn_dpm.dpm_admin role can change the system
property limits to more than 1000 solutions on the DPM homepage. However, raising the
limit may negatively impact system performance.

Default solution card fields
The DPM application uses certain fields to auto-generate a set of default solution cards to
display when you first login to DPM (before you personalize).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2007


<!-- page 2008 -->
Note: Starting with the Zurich release, the [cmdb_ci_service_technical] table is labeled
Technology Management Service in the user interface (formerly labeled Technology
management service). Additionally, the [service_offering] table is labeled Technology
Management Offering in the user interface (formerly labeled Technology management
service offering).

Solution

Solution record name

Fields used for default
solution cards

• cmdb_ci_service

• Owned by

• cmdb_ci_service_business

• Delivery manager

• cmdb_ci_service_technical

• Delegate

Service

• Business relationship
manager
• Business contact
• Managed by
Service
offering

service_offering
• Owned by
• Delivery manager
• Delegate
• Business contact
• Managed by

Business
application

cmdb_ci_business_app
• IT application owner
• Business owner
• Portfolio manager

Service
instance

cmdb_ci_service_auto including dynamic
configuration item (CI) groups

• Owned by
• Managed by

Personal and enterprise portfolio reference
Use suggestions and tips for creating and organizing portfolios in DPM.
This DPM Academy series video provides tips for creating and organizing personal and
enterprise portfolios. Tips and suggestions for personal and enterprise portfolios in DPM.
Approximately 16 minutes long.

KPI groups installed with Digital Portfolio Management
Digital Portfolio Management (DPM) enables you to view standard key performance indicator
(KPI) groups that are included with the base system. You can also configure KPIs with the
sn_dpm.dpm_admin role.
Admins view the back-end details of KPI groups by navigating to Digital Portfolio Management >
All > KPI Groups.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2008


<!-- page 2009 -->
In addition to viewing the KPIs that come with the base DPM system, you can also configure
them. For more information, see Configure KPIs in Digital Portfolio Management.
To see the latest score of KPIs, enable the latest score system property. For more information on
this system property, see KPI groups in Digital Portfolio Management.
DPM base system KPI groups
KPI Group

Type

Contains KPIs

Business
application
performance

Business
applications

• Number of incidents

Supporting KPIs

No supporting KPIs

• Number of problems
• Number of changes
• Outages
Availability

• Average outage duration

• P1 Incidents (sum)
• MTTR (average time to
resolve)
• Incident Customer
satisfaction score (CSAT)
(average)
Performance
snapshot

Service
Portfolios

• Incidents with breached
service level agreements
(SLA) (sum)

and

and

• Incidents not updated for 5
days (sum)

Service metrics

Services

Open incidents

Outage and
Availability

Offerings

• Incidents not updated for 30
days (sum)

Incidents not updated for
5 days (for Performance
Snapshot).

No supporting KPIs

Mean time to resolve (MTTR)
(for Service metrics)

Average time to resolve all
incidents that are P1 to P5.

New requests

No supporting KPIs

Total outage minutes

• Unplanned outage minutes
(sum)
• Degraded outage minutes
(sum)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2009


<!-- page 2010 -->
DPM base system KPI groups (continued)
KPI Group

Type

Contains KPIs

Supporting KPIs

• Planned outage minutes
(sum)
• New emergency changes
(sum)
Availability

• Unplanned outages (sum)
• Average outage duration
(average)
• Degraded outages (sum)
• Planned outages (sum)

New incidents

Incidents

Offerings

Incidents not updated for 5
days

• P1 to P4 incidents (average)
• Incidents caused by change
(average)
No supporting KPIs

Incidents with a breached
No supporting KPIs
service level agreement (SLA)
Incidents by priority

No supporting KPIs
• High risk changes

Changes

Offerings

Open changes

• High priority changes
• Overdue changes

New changes

No supporting KPIs
• P1 (critical)

• New problems
Problems

Offerings

• Problems by priority

• P2 (high)
• P3 (moderate)
• P4 (low)
• P5 (planning)

Catalog Activity

Service requests
Offerings

• RITMs closed incomplete
(average)
• Average time to close
(average)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2010


<!-- page 2011 -->
DPM base system KPI groups (continued)
KPI Group

Type

Contains KPIs

Supporting KPIs

• RITMs closed complete
(average)
• RITMs closed skipped
(average)
Requests by catalog item

• Catalog activity by item
(sum)
• Average time to close by item
(average)

Service health

Service
instances

Critical incidents

• P1 incidents (sum)
• P2 incidents (sum)
• MTTR (average)

Closed changes

• Emergency changes (sum)
• High risk changes (sum)

Availability
insights

Service
instances

Availability

• Unplanned outages (sum)
• Degraded outages (sum)
• Planned outages (sum)

Portfolio
Enterprise
success metrics portfolios

Unplanned outages

New emergency changes

Average outage duration

No supporting KPIs
No supporting KPIs

• Availability
• Incidents with a breached
SLA
• Incidents caused by
changes
• Successful changes

Service CSAT

Services

• Average CSAT
• CSAT ratings

Average CSAT is 5 rating
(highest) to 1 rating (lowest)

Note: To view more details, select the KPI number. KPI charts aren’t selectable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2011


<!-- page 2012 -->
Digital Portfolio Management related applications and data sources
Digital Portfolio Management (DPM) enables you to use related applications to view and edit
service details in the plan-build-run life cycle. All related applications are optional, so they aren't
required to use the DPM experience.

Data Sources
By design, DPM offers a broad reach of data sources to give you a high-level view of information
that impacts your solutions. Its data sources reach across hundreds of data elements across
more than 70 tables, as well as many indicators. This expansive reach gives you a broad
perspective of items that may influence your solutions.
DPM has three main data sources:
• Record and field lookups, either in direct configuration in UIB or in data brokers. The lookups
are listed in the data sources Excel file that you can download from KB1123710 .
• Needs attention attributes are from data brokers. For more information, see KB1519343

.

• Performance Analytics indicators, data collection jobs, and key performance indicator (KPI)
groups.
For an overview on how DPM aligns with the Common Service Data Model (CSDM), see Apply
the CSDM guidelines to Digital Portfolio Management.
To view details on the Digital Portfolio Management data sources including data elements,
source tables, fields, and required plugins, see KB1123710 , and select the option to Download
the Data Sources Excel File.

Enterprise portfolios
Since the Utah release, you can install the enterprise portfolio plugin [enterprise portfolio] that’s
available as part of the core ServiceNow AI Platform. Installing the plugin installs two new roles:
• The enterprise portfolio admin [sn_ep.enterprise_portfolio_admin] can create, read, update,
and delete (CRUD) enterprise portfolios.
• The enterprise portfolio viewer [sn_ep.enterprise_portfolio_viewer] can read enterprise
portfolios.
Installing the enterprise portfolio plugin results in the following:
◦ The DPM admin role inherits the enterprise portfolio admin role.
◦ The DPM manager role inherits the enterprise portfolio viewer role.

Services and service offerings

Note: Your data view in DPM is the same as what your product license permits from the
application that you pull data from (standard or pro).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2012


<!-- page 2013 -->
DPM related applications for services and service offerings
To see in DPM Required installs

There are no special installs
• Contextual
required to use the contextual
side panel
side panel or to see items that
• Needs
need attention.
attention

Required roles

DPM Manager
[sn_dpm.dpm_manager]

Install the plugin for Strategic
Planning: com.sn_align_ws

For Strategic Planning:

To see improvement initiatives:

• sn_align_core. apw_user

Install the plugin for
®
ServiceNow Continual
Improvement Management
com.sn_cim

• sn_align_core.apw_admin

To see demand data:
Install plugins for Demand
Management: idea_core,
dmn_demand, and pm_project
Build tab

• sn.align_ws

• sn_roadmap_plng.roadmap_editor
For Continual Improvement
Management and demands:
DPM Manager
[sn_dpm.dpm_manager]

To see roadmap data:
Install the plugin for Strategic
Planning: com.sn_align_ws
To see project data:
Install the plugin for Project
Portfolio Management
com.snc.financial_planning_pmo

• Use the contextual sid
to navigate to portfolio
modules in DPM.

• See items that need at
based on criticality.

To see roadmap data:

Plan tab

Use cases

For Strategic Planning:
• sn.align_ws
• sn_align_core. apw_user
• sn_align_core.apw_admin

• Select View roadmap
Strategic Planning to v
roadmap details in the
the selected service o
offering.

• You can edit roadmap
sn_roadmap_plng.roa
role.

• Use Continual Improve
Management to see id
improve processes ac
services and service o

• Create demands on yo
and service offerings i

• Select View roadmap
have Strategic Plannin
you. You can view road
in the context of the se
service or service offe

• Edit roadmaps with the
sn_roadmap_plng.roa
role.

To see changes:

• sn_roadmap_plng.roadmap_editor

• See project data that m
your services or servic

No required install. Change
data is standard with IT Service
Management (ITSM).

For PPM, Changes, and Continual
Improvement Management:

• Select any of the chan
to view details about c
records that may impa
services or service off

To see improvement initiatives:
Install the plugin for Continual
Improvement Management
com.sn_cim

DPM Manager
[sn_dpm.dpm_manager]

• Use Continual Improve
Management to see id
improve processes ac
services and service o

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2013


<!-- page 2014 -->
DPM related applications for services and service offerings (continued)
To see in DPM Required installs

Required roles

Use cases

View the Performance sn
group that includes the f
supporting KPIs:
The key performance
indicator (KPI) group
[sn_team_perf_kpi_group] is
automatically installed for you to
see performance data:

Run tab

The Performance snapshot
indicator sources come from
Performance Analytics:
• serviceoffering.availability.daily
• incidents.open

• Service availability

• New incidents on the s

• Subscribers of the ser

• Service customer satis
score
• DPM Manager
[sn_dpm.dpm_manager] to view
KPIs
• DPM Admin [sn_dpm.dpm_admin]
to create KPIs

• incidents.resolved

View additional KPI grou
service offerings:

• Outages and availabili
• Incidents
• Changes

• [DPM]requests.new

• Problems
• Catalog activity

See KB1160281
for important
criteria to see performance data.

View availability and ser
agreements (SLA) comm
reporting.
Info tab

No special installs required.

DPM Manager
[sn_dpm.dpm_manager]

View general information
service and service offer

Business applications

Note: Your data view in DPM is the same as what your product license permits from the
application that you pull data from (standard or pro).
DPM related applications for business applications
To see in DPM Required installs

Required roles

• Contextual To see audits, install the plugin
DPM Manager
side panel for Audit Management (sn_audit) [sn_dpm.dpm_manager]
• Needs
To see technical risks, install the
attention
plugin for Technology Portfolio
Management: sn_apm_tpm.
This plugin has two dependency
plugins:

Use cases

• Use the contextual sid
to navigate to portfolio
modules in DPM.

• See items that need at
based on criticality.

• Application Portfolio
Management (com.snc.apm)
• Software Asset Management
(com.snc.sams)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2014


<!-- page 2015 -->
DPM related applications for business applications (continued)
To see in DPM Required installs

To see roadmap data:

Plan tab

Required roles

Use cases

For Strategic Planning:

• Select View roadmap
Strategic Planning to v
roadmap details in the
the selected business

Install the plugin for Strategic
Planning: com.sn_align_ws

• sn.align_ws

To see improvement initiatives:

• sn_align_core. apw_user

Install the plugin for Continual
Improvement Management
com.sn_cim

• sn_align_core.apw_admin
• sn_roadmap_plng.roadmap_editor

To see demand data:

For Continual Improvement
Management and demands:

Install plugins for Demand
Management: idea_core,
dmn_demand, and pm_project

DPM Manager
[sn_dpm.dpm_manager]

• You can edit roadmaps
sn_roadmap_plng.roa
role.

• Use Continual Improve
Management to see id
improve processes ac
business applications

• Create demands on yo
applications in DPM.

To see roadmap data:
Install the plugin for Strategic
Planning: com.sn_align_ws
To see project data:

• Select View roadmap
to launch Strategic Pla
launches for you. You
roadmap details in the
the selected business

Install the plugin for Project
Portfolio Management (PPM):
com.snc.financial_planning_pmo

Build tab

To see agile data:

For Strategic Planning:

Install the plugin for
Agile Development:
com.snc.sdlc.agile.2.

• sn.align_ws

To see changes:

• sn_align_core. apw_user
• sn_align_core.apw_admin
• sn_roadmap_plng.roadmap_editor

No required install. Change
data is standard with IT Service
Management (ITSM).

For PPM, Changes, and Agile
Development:

To see flow metrics and
accelerate metrics:

DPM Manager
[sn_dpm.dpm_manager]

Enable DevOps for DPM (see
Configure the Digital Portfolio
Management experience)
• To see details in the DevOps
Change Workspace, select
View DevOps Insights from
the Flow metrics section.

• Edit roadmaps with the
sn_roadmap_plng.roa
role.

• See project data that m
your business applica

• View data from Agile D
to view details on epic
sprints, and releases i
context of the selected
application.

• Manage scrum and wa
development in DPM t
visibility into your softw
development life cycle

• Select any of the chan
to view details about c
records that may impa
business applications

• To see details in the DevOps
Change Workspace, select
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2015


<!-- page 2016 -->
DPM related applications for business applications (continued)
To see in DPM Required installs

Required roles

Use cases

View Accelerate metrics in
DevOps from the Accelerate
metrics section.
Run tab

View the Performance sn
which includes the follow
metrics:

Install the plugin for Application
Portfolio Management (APM):

• Number of incidents
• Number of problems

com.snc.apm
To see accelerate metrics:
Enable DevOps for DPM

Note: To see details
in the DevOps Change
Workspace, select View
Accelerate metrics
in DevOps from the
Accelerate metrics section.

• Number of changes
• DPM Manager
[sn_dpm.dpm_manager] to view
KPIs
• DPM Admin [sn_dpm.dpm_admin]
to create KPIs

• Total change hours

View deployments data:

• Deployments breakdo

• Deployment hardware
software models (tech
data)

Note: Technology

Management data c
APM.
Risk tab

Install plugins for Governance,
Risk, and Compliance and
®
ServiceNow Risk Management:
• com.sn_risk
• com.snc.governance
• sn.grc.common
• com.snc.risk_asmt

DPM Manager
[sn_dpm.dpm_manager]

View risks related to you
applications.

DPM Manager
[sn_dpm.dpm_manager]

View general information
business applicaton.

• com.snc.grc_risk_dep
• com.snc.grc.common
• com.snc.grc_policy_dep
Install the plugin for
®
ServiceNow Audit Management
(sn_audit)
Info tab

No special installs required.

Service instances

Note: Your data view in DPM is the same as what your product license permits from the
application that you pull data from (standard or pro).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2016


<!-- page 2017 -->
DPM related applications for service instances
To see in
DPM

Required installs

Needs
attention To see alerts and alert data, install
the plugin for Event Management
(com.glide.platform_ml)

Required roles

DPM Manager
[sn_dpm.dpm_manager]

To see technical risks, install the
plugin for Technology Portfolio
Management: sn_apm_tpm.
This plugin has two dependency
plugins:

Use cases

See items that
need attention,
including alerts
and technical risk
information.

• Application Portfolio
Management (com.snc.apm)
• Software Asset Management
(com.snc.sams)
Run tab

View the following
information:
View service
instance
performance
• Service health
• Service impact
• Alert trends

To see reliability indicators, install
the plugin for Site Reliability
Metrics:
sn_srm
To see alerts and alert data, install
the plugin for Event Management
(com.glide.platform_ml)

View site reliability
management
• DPM Manager
[sn_dpm.dpm_manager]
to view KPIs
• DPM Admin
[sn_dpm.dpm_admin] to
create KPIs

• Number of
reliability
indicators
• Description
of reliability
indicators
View offerings that
depend on this
service instance
• Number of
reliability
offerings
• Drill down to
offering to see
the related
records
View technology
risk

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2017


<!-- page 2018 -->
DPM related applications for service instances (continued)
To see in
DPM

Required installs

Required roles

Use cases

• Software models
by:
• Hardware models
• Drilling down in
each model to
see the related
records
Info tab
No special installs required.

DPM Manager
[sn_dpm.dpm_manager]

View general
information
about the service
instance.

Examples
Example: Plan data sources for services and service offerings

Note: Your data view in DPM is the same as what your product license permits from the
application that you pull data from (standard or pro).
Strategic Planning (formerly known as Alignment Planner Workspace) is a pro version.
Portfolio Planning is available for users with a Strategic Portfolio Management (SPM)
standard license.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2018


<!-- page 2019 -->
Example: Build data sources for services and service offerings

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2019


<!-- page 2020 -->
Example: Run data sources for services and service offerings

Process Mining components for Digital Portfolio Management
®

Admins must install the ITSM Process Mining Content Pack from the ServiceNow Store to get
the insights and system property for Process Mining in Digital Portfolio Management (DPM). Use
Process Mining to analyze and improve key performance indicator (KPI) outputs in DPM.

Properties
Property

Description

sn_dpm.enable.po.dpm

Enables you to use Process Mining with DPM.
• Type: true | false
• Default value: false

sn_itsm_dpm.po_mining.run_frequency
Time interval to remine Process Mining projects. You
must run the Process Mining scheduled job in DPM
to mine the data. You can run it again only at the set
interval. If you run the job earlier, it won’t remine the
data.
• Type: integer
• Default value: 7 days

Roles
Role title [name]

Description

Process Mining Analyst
Create and share
[sn_process_optimization_analyst]
Process Mining
projects.

Contains roles

sn_process_optimization_viewer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2020


<!-- page 2021 -->
Scheduled jobs
Navigate to All > System Definition > Scheduled jobs.

Name

Description

Process Mining - DPM Remine Projects

Automatically runs once daily. You can run
this job on demand when additional data is
added to a project so that you get the up-todate process insights for your projects. The job
remines data based on the frequency set in the
dpm.po_mining.run_frequency property.

Related topics
Configure Digital Portfolio Management to integrate with Process Mining
Create Process Mining projects for KPI groups in Digital Portfolio Management

Digital Portfolio Management persona
The Digital Portfolio Management (DPM) persona is a solution owner — That is one that owns
services, service offerings, business applications, or service instances.

Target persona
The Digital Portfolio Management (DPM) target persona owns solutions like services, service
offerings, business applications, or service instances. The DPM workspace enables a single view
of the full life cycle to determine the overall health and performance of solutions.
DPM solution owner

Digital Portfolio Management views
The Digital Portfolio Management (DPM) workspace pulls in data from various ServiceNow
applications. The views show where the data is coming from.

Views
DPM homepage
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2021


<!-- page 2022 -->
On the DPM homepage, see the status of all your solutions. For information, see Digital Portfolio
Management Workspace homepage.
Personal portfolios
Create your own collections of services and applications with data surfaced from other
ServiceNow products. DPM supports dedicated service tables so you can fill your personal
portfolios with business services, service instances, and any other services in the base CMDB
service table. For more information, see Work with portfolios in Digital Portfolio Management.
DPM personal portfolio

Real time data
Drill down into each portfolio to analyze the details in the context of the plan-build-run life cycle.
The key performance indicators (KPIs) are fully configurable. For life-cycle information, see Digital
Portfolio Management life-cycle management. For information about KPIs, see KPI groups in
Digital Portfolio Management.
DPM personal portfolio — Plan tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2022


<!-- page 2023 -->
DPM personal portfolio — Build tab

DPM personal portfolio — Run tab

Enterprise portfolios
Create enterprise portfolios for business applications and service instances. You can also
view service portfolios that are shared with you. You can't alter service portfolios because
they’re created in Service Portfolio Management tables. However, you can still see the overall
IT structure in the context of the services that you own. For more information, see Enterprise
portfolios.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2023


