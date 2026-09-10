# Zurich IT Operations Management — Service Observability

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 3820–3884 of 4823

Sections: Service Observability (p3820)

---

<!-- page 3820 -->
• Name - Name of the SLO. You can select the arrow to sort the table by SLO name, and you can
select the name to view the SLO record.
• Reliability - Current state of the SLO. For example, stable, at risk, or critical.
• Measured reliability - Percentage showing the actual performance of the service. For example,
if your SLO is 99.9% success, and the actual performance for the month is 99.7%, the measured
reliability is 99.7%.
• Objective (percentage) - Target SLO value.
• Burn rate - Numeric value showing how quickly the service is consuming its error budget.
• % Error budget remaining - Percentage of the error budget still available in the current
compliance period.
• Service - Name of the service associated with the SLO. You can select the service name to
view the service record.
• Assigned - Team responsible for the service.

Dashboard filters and actions
The Service reliability dashboard is built with Platform Analytics and includes standard
dashboard features. For details on customizing, duplicating, or sharing dashboards, see the
Dashboards in Platform Analytics
documentation.

Note: Changes to the Service reliability dashboard affect all SRM users on your instance.
To create a personalized version, either build a new dashboard or duplicate the existing
dashboard and edit it. Learn more in Create a dashboard with the in-line editor
and
Duplicate a Platform Analytics dashboard .

Service Observability
®

The ServiceNow Service Observability application enables operators to triage and manage
incidents in a complex and distributed system. Application and platform telemetry insights from
multiple observability tools are combined into a centralized workflow.
Overview of Service Observability

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3820


<!-- page 3821 -->
Get started

Explore

Configure

Learn how Service Observability
brings disparate data together to help
operators find issues in your system

Learn how to install and
configure Service Observability

Monitor and investigate

Reference

Learn how to find the source of issues
and view the health of services and
their related infrastructure entities

Find reference information
about Service Observability

Helpful resources
Some ServiceNow resources that can provide you with helpful information are:


<!-- page 3822 -->
http://www.servicenow.com


<!-- page 3823 -->
to the service, then displays them together. Operators can pinpoint issues on entities related to
the service and narrow down the mitigation process without having to leave the SOW.

Service Observability users
Users
User

Description

System admin

Version 1.5 only.
System admins configure users and teams, register services to be monitored,
connect Service Observability to APMs, and then map those services to that
data. They can also view the data in the SOW

Service
Observability
admin

Version 1.6.x and later.

Operator/
operations
manager

Operators use Service Observability when triaging incidents in the SOW.
They can view basic health metrics for a service, along with related incidents,
alerts, and changes. They can get more detailed information by navigating to
the Observability tab to view additional service metrics, along with metrics
from related entities, such as a host or database.

Note:

Service Observability admins can configure users and teams, connect
Service Observability to APMs, and then map services to that data. They
can also view the data in the SOW. Admins can also customize dashboard
templates used to display metrics and related information.

These
users
must
belong to
an srm
group
type to
see all
data.

Service Observability workflow
Admins configure Service Observability by registering services, connecting APM metrics, and
then mapping the services to that data. Operators use Service Observability to determine if
another related entity is causing issues surfaced by the service's performance.
As an admin, you:
1. Determine the services to be monitored by Service Observability based on business criticality.
2. Connect existing APM instances to Service Observability.
3. Map services with APM metric data based on APM-based tags used on that data.
4. Customize the templates used to display metric charts.
As an operator or manager, you:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3823


<!-- page 3824 -->
1. Spot an issue with a service while working in the SOW, for example, from an alert, the Service
dashboard, or Express List, then navigate to the Service Details page.
2. View overall health metrics for the service, along with related incidents, alerts, and changes. If
one of the metrics seems unhealthy, navigate to the Observability tab.
3. View more detailed service metrics, as well as information from related entities, to start root
cause investigation. When finding that the issue is further down the system's stack, identify the
ownership for that entity to start remediation.

Service Observability benefits
Benefit

Feature

Centralize critical signals and bridge workflows
to increase agility and reliability:

• Connect a Service
Observability data
source

• Connect data from external APMs
• Map that data to CMDB services

Users

Admins

• Create and manage
data mappings

• View combined data in the SOW
.

Increase efficiency and reduce mean time to
View service health
resolution (MTTR). View combined metrics
metrics
from entities associated with a service to
begin to determine blast radius and ownership
of an incident.

Operators

See related changes to the system and alerts
associated with a service in one place.

View overall service
health.

Operators

Customize dashboard templates.

Customize Service
Observability
dashboard templates

Admins

What to explore next
To learn more about configuring and using Service Observability, see:
• Configuring Service Observability
• View overall service health
• View service health metrics
• Service Observability reference

Configuring Service Observability
After you install Service Observability, you must register services, connect external application
performance management (APM) instances, and map that APM data to those services.

Configuration overview
Install Service Observability
If you have the system admin role, you can install the Service Observability application
®
(sn_sow_svcobs). The application installs related ServiceNow Store applications and plugins if they aren't already installed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3824


<!-- page 3825 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Service Observability
application listing in the ServiceNow Store for information
on dependencies, licensing or subscription requirements, and release compatibility.
Role required: system admin [admin]

About this task

The following items are installed with Service Observability:
• Plugins
• Store applications
• Roles
• Tables
For more information, see Components installed with Service Observability.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Service Observability application (sn_sow_svcobs) using the filter criteria and
search bar.
You can search for the application by its name or ID. If you can't find the application, you might
have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.
Activate teams and services
Follow this step only if you are on version 1.5.0 of Service Observability. Assign existing teams
to Service Observability so they can view the data returned by the Configuration Management
Database (CMDB) on those pages. Activate the services in the CMDB for use in Service
Observability.

Before you begin
• Users assigned to a group that manage the activated services.
• Services that you want to monitor in Service Observability should be configured in the CMDB.
Role required: system admin

About this task

Note: Follow this step only if you are on version 1.5.0 of Service Observability.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3825


<!-- page 3826 -->
Teams are used in both Service Reliability Management and Service Observability to give
existing roles and groups the ability to view CMDB data on the Overview and Observability
tabs.
The services that you want to monitor in Service Observability must be activated. Activation
enables you to map data from an application performance management (APM) instance to that
service and then view that service's related data on the Overview and Observability tabs.

Note: Teams and services activated for Service Observability are also activated for
Service Reliability Management (SRM). Service Observability admins can create a single
service. For more information, see Add a service to SRM. When Service Observability
admins create a single service, it's automatically activated for Service Observability and
SRM. For more information, see Service Reliability Management.

Procedure
1. Navigate to All > Service Operations Workspace > Configurations and choose the Service
Operations Management card.
2. Navigate to Service Operations Management > Assign and activate > Activate teams and
services.
3. Choose Activate teams and services.
4. Select the assignment groups that you want as teams in Service Observability and then select
Activate.
Only teams that haven't already been assigned are displayed.
5. In the modal, select Confirm.
6. In the Service class drop-down menu, select a CMDB service type.
7. From the list of services, select which services to activate for Service Observability and select
Activate.
8. In the modal, select a support team for the services and choose Confirm.
You now have services that can be monitored in Service Observability

What to do next
1. Connect a Service Observability data source
2. Create and manage data mappings
Connect a Service Observability data source
Connect Service Observability to an external application performance management (APM)
instance. Service Observability displays metrics in the Service Operations Workspace (SOW)
from that APM instance.

Before you begin

You must enter a connection URL and credentials for your APM vendor. You can either use an
existing connection or create one. Note the following for specific vendors:
Vendor-specific connection information
APM Vendor

AWS

Connection information

The connection URL must be specific
to the region to be monitored, for

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3826


<!-- page 3827 -->
Vendor-specific connection information (continued)
APM Vendor

Connection information

example, https://monitoring.useast-2.amazonaws.com.
Azure

The connection URL should be https://
management.azure.com.

Splunk Observability

The connection URL must include the
Realm, for example, https://stream.
[REALM].signalfx.com

If you're using existing credentials, you need the credential name. If you're creating credentials,
collect the following information.
Vendor-specific credential requirements
APM vendor

Credential type

AppDynamics

OAuth 2.0

Information needed

• OAuth Client ID
• OAuth Client secret
• OAuth token URL
• AppDynamics account
name

Azure

OAuth 2.0

• OAuth Client ID
• OAuth Client secret
• OAuth token URL
• Subscription ID

AWS

AWS credentials

• Access key
• Secret key
If the user associated with this
key is restricted to specific
permissions, they must
include the following, scoped
to all resources:
• cloudwatch:Describe
scoped to all resources
• cloudwatch:Get
scoped to all resources
• cloudwatch:List
scoped to all resources

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3827


<!-- page 3828 -->
Vendor-specific credential requirements (continued)
APM vendor

Credential type

Information needed

• cloudtrail:LookupEvents
• tag:GetResources
• tag:GetTagKeys
• tag:GetTagValues
• apigateway:Get
Datadog

API

• API key
• Application key
If an application key is
restricted to a specific scope,
those scopes are required for
the following endpoints:
• https://api.datadoghq.com/
api/v2/catalog/entity
• https://api.datadoghq.com/
api/v1/hosts
• https://api.datadoghq.com/
api/v1/query
• https://api.datadoghq.com/
api/v2/query/timeseries

Dynatrace

API

API key
The API key must have
Read entities and Read
metrics scope permissions.

New Relic

API

• Account ID
• API key

Prometheus (on-premise)

Basic Auth

• Basic Auth credential user
name
• Basic Auth credential
password
• The name of the MID Server
your Prometheus instance is
hosted on

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3828


<!-- page 3829 -->
Vendor-specific credential requirements (continued)
APM vendor

Credential type

SolarWinds

Basic Auth

Information needed

• Basic Auth credential user
name
• Basic Auth credential
password
• The name of the MID Server
your SolarWinds instance is
hosted on

Splunk Observability

API

Access token

Role required: sn_sow_svcobs.admin

About this task

The first step to ingesting APM data is to create a connection to the APM instance.
Service Observability supports the following APM vendors:
• Amazon CloudWatch
• AppDynamics
• Datadog
• Dynatrace
• Microsoft Azure Monitor
• New Relic
• Prometheus (on-premise)
• SolarWinds on-premise
• Splunk Observability

Procedure
1. Navigate based on your version of Service Observability.
◦ Version 1.5.0: Navigate to All > Service Operations Workspace > Configurations, then
navigate to Service Observability Management > Manage Observability > Data sources
◦ Version 1.6 or later: Navigate to All > Service Operations Workspace > Configurations, then
navigate to Service Observability > Data sources.
2. Select your APM vendor.
3. On the Add connection form, fill in the fields.
You can use an existing HTTP or HTTPs connection and an existing API key credential or create
one.
4. Select Save.

Result

A new connection appears in the list of observability data sources. You use this connection when
you create a data mapping.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3829


<!-- page 3830 -->
What to do next

Map your connection to the services that you want to monitor in Service Observability. See
Create and manage data mappings.
Create and manage data mappings
Map your services to the data from a connected external application performance management
(APM) instance, and view it in charts for the service.

Before you begin
• If you are on version 1.5.0, activate the services that have data from an external APM instance.
For instructions on how to activate the services, see Activate teams and services. For later
versions, you don't need to activate services. You can map any of the following service types:
◦ Application
◦ Mapped application
◦ Calculated application
◦ Dynamic CI group
◦ Technical
◦ Tag-based
◦ Service offerings
◦ Business services
• Connect a Service Observability data source
Role required: sn_sow_svcobs.admin

About this task

When a service CI is mapped to specific APM metric tag key/value pairs, Service Observability
displays metrics containing those tags for that service. These metrics are grouped by the
following entity types:
• Application metrics: Metrics associated with the selected service
• Compute metrics: Metrics associated with the hosts the service is run on
• Databases: Metrics associated with databases used by the service
For example, say you have metrics from New Relic that are used to monitor services, databases,
and hosts. On those metrics, you have used the tag service_name. Say you have also
mapped the checkout service CI to the APM metadata key/value pair service_name =
checkout. Service Observability shows you all the database and host metrics tagged with
service_name = checkout in the context of the checkout service CI.
If some of your metrics on different entities use a different key name or a different key value,
you can create exceptions. For example, if your host metrics use service instead of
service_name, you can create an exception to include those metrics.
Each entity type has its own dashboard and each metric or related CI has its own default chart.
You can customize the templates used for the dashboards and charts. See Customize Service
Observability dashboard templates for more information.

Note: To understand how Service Observability creates these mappings, see APM vendor
entity mappings for Service Observability.
For a description of the field values, see Service Observability data mapping form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3830


<!-- page 3831 -->
Procedure
1. Navigate to the Data mappings page, following the procedures for your version of Service
Observability.
◦ Version 1.5.0: Navigate to All > Service Operations Workspace > Configurations, then
navigate to Service Observability Management > Manage Observability > Data mappings
◦ Version 1.6.x or later: Navigate to All > Service Operations Workspace > Configurations,
then navigate to Service Observability > Data mappings.
2. Select Create your first mapping or Create mapping.
3. On the Observability data mapping page, enter a name for the mapping.
4. Choose the services that should use this mapping.
◦ For version 1.5.0: Enter the names of the activated services that you want to map. For
information about activating services, see Activate teams and services
◦ For version 1.6.x and later:
a. Choose Select services.
b. Use the navigation to narrow down the list to the type of service you're searching for.
c. Select the services to add to the mapping. You can add services from any combination of
service type.

Note: Use the filter to narrow down the service list.
d. Select Add services to add them to the mapping.
The Mapping preview pane updates to show the selected service, or the first service in a list of
services.
5. Create a rule to determine how Service Observability should map internal services to the APM
entities using tag keys and values.
a. Select the data source for this map.
b. Enter the tag key that you want to use to map the APM data to the service.
The key can be any tag you use on your APM metadata, for example service. The entered
key must match the tag you use in the APM metadata and is case-sensitive.

Note: If you use more than one tag to represent a service, you can create an
exception. For example, if most tags use service except for database metrics, which
use service_name, you can create an exception for the database metrics.
c. Manually enter a tag value or choose one from the drop-down menu.

Note: Values are case-sensitive.
Values can be strings that are from your APM metadata, like a service name, or they can be
a variable used to represent multiple instances, for example $(service). When your key
represents a service, a drop-down menu shows fields from the corresponding CI that can be
used as a variable. If you choose to use a variable, be sure that the values resolve to values
sent in the APM data.

Note: If you selected more than one service to map, the drop-down displays only the
fields that are common to all selected services.
You can now test your mapping or add exceptions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3831


<!-- page 3832 -->
6. Optional: If some of your entities use different key names or values, create exceptions to the
default policy by configuring them in the Exceptions card.
7. Test the mapping.
The Mapping preview panel shows the test results for the first service mapped. Service
Observability sends a request through the connection and returns the entities found using
the provided mapping. If you created an exception using a different source, the panel shows
the results from each source separately. If the results don't seem correct, try reconfiguring the
mapping by changing the tag key or value.
If you have more than one service mapped, use the Service drop-down menu to select and
test a different service.
8. Select Save mapping.

Result

On the Observability tab of the Service details page, dashboards and charts appear for the
entities found from the mapping.
Customize Service Observability dashboard templates
You can customize the Service Observability dashboards on both the Overview and
Observability tabs of the Service Details page. You can change or add metrics and related data
to fit your business needs.
Service Observability dashboards are built using templates specific for each Application
Performance Monitor (APM) vendor and entity tab. They're built using Platform Analytics, letting
you customize templates to meet your business needs. For example, you might want to display
metrics from your APM vendor that aren't available by default.
The Service Observability dashboards use APM-specific templates. You can see what each
template displays by default from its respective reference topic.
• Amazon CloudWatch templates for Service Observability
• AppDynamics templates for Service Observability
• Azure Monitor templates for Service Observability
• Datadog templates for Service Observability
• Dynatrace templates for Service Observability
• New Relic templates for Service Observability
• Prometheus templates for Service Observability
• SolarWinds templates for Service Observability
• Splunk templates for Service Observability

Note: When you make a customization, you're changing the template and not the
individual service's dashboard. This means that dashboards for any services that also use
the same data source are also changed.
Along with APM data, you can also add charts for data from ServiceNow tables and also from
data stored in the MetricBase and Health Log Analytics applications.
When you customize a template, a copy of the original is saved so that you can reimplement it if
needed. Default dashboards display a Certified tag.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3832


<!-- page 3833 -->
Creating APM queries for a chart
When you edit or add a chart on a dashboard, you use the Edit data source page of Platform
Analytics to create a query. You use the built-in query editor for simple metric queries and the
Advanced mode to paste a query copied from a chart in your APM vendor instance.
Service Observability dashboards are scoped to the service currently displayed in the Service
Details page. If you want to use a single query for multiple services and entities and any time
range, you can replace hard-coded values with Service Observability template variables.

Add ServiceNow Tables
You can include data from ServiceNow problem records and business application records to
dashboards and the data is scoped to the selected service.

Add MetricBase data charts
You can add charts based on data stored in the MetricBase application. The data is scoped to
the selected service.

Add Health Log Analytics data charts
You can add charts based on data stored in the Health Log Analytics application. The data is
scoped to the selected service.
Edit APM data charts on Service Observability dashboard templates
Edit Service Observability dashboard templates to view different APM vendor metrics on the
Overview or Observability tabs' charts.

About this task

When creating an APM chart, you can use the query builder to create simple queries or use the
advanced mode to create more substantial queries.
Use simple queries to return metrics associated with services, hosts, and databases. The
returned metrics are aggregated across the time window set by the user.
Use advanced query mode to cut and paste queries from existing APM charts into Service
Observability. For most APM vendors, you can simply copy a query from an existing chart in your
APM instance.
Both query types support template variables that let you use the same query to return metrics for
multiple entity instances.

Before you begin

Role required: sn_sow_svcobs.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace and then navigate to a service
record.
You can access a service record from these pages in the SOW:
◦ Services list: Choose a service from the list.
◦ Service dashboard: Choose a service in the dashboard and select Service Details.
◦ List: Navigate to Application Services > Services and select a service.
◦ Express list alert: Select a service from the Impacted services column.
The Service Details page opens and the Overview tab is displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3833


<!-- page 3834 -->
Trouble?
If charts are displaying error messages, see Chart error states.
2. Open the template in editing mode.
◦ If you're editing a certified template, select Duplicate.
◦ If you're editing a custom template, select Edit.

Note: Duplicating a certified template keeps you from overwriting it and also lets you
reinstall it.
The new dashboard is titled with the words - Copy appended. Use the pencil icon to change
the dashboard name.
3. To do basic editing, such as rearranging, resizing, or deleting charts, follow the instructions for
Edit in-line Platform Analytics dashboard elements .
4. To add an APM query for a new chart, follow these steps:
a. In Edit mode, select Add new element and choose Data visualization > New visualization.
b. In the Configuration panel, select Line for Visualization type and choose Add data
source.
c. In the Add data source page, open Service Observability in the navigation panel and select
your APM vendor.
Be sure to select the same APM vendor used on the template you're editing.
d. Enter a query in the Metric card.
Use the query builder to edit a simple APM-specific query.
To copy a full query from your APM vendor chart, activate the Advanced switch and paste in
a query from your APM vendor chart.
For AWS and Azure, instead of entering a query in advanced mode, you can import selected
charts from an existing dashboard. Select Import from AWS/Azure Dashboard. Select a
data source name, then select a dashboard and from the list of charts, select the one to
import, then select Import query. The query for the chart is pasted into the Query box.
Use template variables to replace any hard-coded entities or time periods to have the query
return results that match both the service and time period selected in the UI.

Note: Use the Docs link to refer to the APM-specific documentation for help with
creating the query.
e. To preview your query, select Run and then choose a service and entity.
f. When satisfied with your query, select Add this source to add the chart to the template.
5. To edit an existing query, follow these steps.
a. In Edit mode, select the chart to edit.
b. In the Data sources section of the Configuration panel, use the More actions menu to select
Edit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3834


<!-- page 3835 -->
c. In the Edit data source page, edit the query in the Metric card.
Use the query builder to create a simple APM-specific query.
To copy a full query from your APM vendor chart, activate the Advanced switch and paste in
a query from your APM vendor chart.
For AWS and Azure, instead of entering a query in advanced mode, you can import selected
charts from an existing dashboard. Select Import from AWS/Azure Dashboard. Select a
data source name, then select a dashboard and from the list of charts, select the one to
import, then select Import query. The query for the chart is pasted into the Query box.
Use template variables to replace any hard-coded entities or time periods.

Note: Use the Docs link to refer to the APM-specific documentation for help with
creating the query.
d. To preview your query, select a service and an entity and select Run.
e. When satisfied with your query, select Apply to add the chart to the template.
6. When done customizing, select Save and then Exit editing mode.
7. To return the template to the default (Certified) version, use the More actions menu to select
Return to certified.
Edit ServiceNow data on Service Observability dashboard templates
Edit Service Observability dashboard templates to view data from problem and business app
records on the Overview or Observability dashboards.

Before you begin

Role required: sn_sow_svcobs.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace and then navigate to a service
record.
You can access a service record from these pages in the SOW:
◦ Services list: Choose a service from the list.
◦ Service dashboard: Choose a service in the dashboard and select Service Details.
◦ List: Navigate to Application Services > Services and select a service.
◦ Express list alert: Select a service from the Impacted services column.
The Service Details page opens and the Overview tab is displayed.
Trouble?
If charts are displaying error messages, see Chart error states.
2. Open the template in editing mode.
◦ If you're editing a certified template, select Duplicate.
◦ If you're editing a custom template, select Edit.

Note: Duplicating a certified template keeps you from overwriting it and also lets you
reinstall it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3835


<!-- page 3836 -->
The new dashboard is titled with the words - Copy appended. Use the pencil icon to change
the dashboard name.
3. To do basic editing, such as rearranging, resizing, or deleting charts, follow the instructions for
Edit in-line Platform Analytics dashboard elements .
4. To add a new ServiceNow table, follow these steps:
a. In Edit mode, select Add new element and choose List.
b. In the Configuration panel in the Data sources section, choose Add data source.
c. In the Add data source page, find the Table whose data you want to display and choose Add
this source.
d. In the Columns and rows section, add and arrange the columns to display.
5. To edit an existing chart, follow these steps.
a. In Edit mode, select the chart to edit.
b. In the Data section of the Configuration panel, verify that the correct table is selected in
Table field.
c. In the Columns and rows section, add and arrange the columns to display.
6. When done customizing, select Save and then Exit editing mode.
7. To return the template to the default (Certified) version, use the More actions menu to select
Return to certified.
Add MetricBase charts to Service Observability dashboard templates
Add MetricBase data to charts on Service Observability dashboard templates when you want to
view those metrics in context of Service Observability.

About this task
You can add metrics that are stored in the MetricBase application
to your Service Observability
dashboards. These charts display with data scoped to the selected service.

Before you begin

Role required: sn_sow_svcobs.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace and then navigate to a service
record.
You can access a service record from these pages in the SOW:
◦ Services list: Choose a service from the list.
◦ Service dashboard: Choose a service in the dashboard and select Service Details.
◦ List: Navigate to Application Services > Services and select a service.
◦ Express list alert: Select a service from the Impacted services column.
The Service Details page opens and the Overview tab is displayed.
Trouble?
If charts are displaying error messages, see Chart error states.
2. Open the template in editing mode.
◦ If you're editing a certified template, select Duplicate.
◦ If you're editing a custom template, select Edit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3836


<!-- page 3837 -->
Note: Duplicating a certified template keeps you from overwriting it and also lets you
reinstall it.
The new dashboard is titled with the words - Copy appended. Use the pencil icon to change
the dashboard name.
3. To do basic editing, such as rearranging, resizing, or deleting charts, follow the instructions for
Edit in-line Platform Analytics dashboard elements .
4. To add a new chart with MetricBase data, follow these steps:
a. In Edit mode, select Add new element and choose Data visualization, select New
Visualization, and then select Line.
b. In the Data sources section of the Configuration panel, select Add data source.
c. In the Add data source page, navigate to MetricBase > Monitorable Item and select the
data to display, and then choose Add this source.
The data is added to the dashboard.
d. Use the controls in the Data section of the Configuration panel to select the metric and
configure the query.
5. When done customizing, select Save and then Exit editing mode.
6. To return the template to the default (Certified) version, use the More actions menu to select
Return to certified.
Add Health Log Analytics data
Add a graph showing logs from Health Log Analytics (HLA) in a Service Observability dashboard.

About this task

You can add logs from HLA to your Service Observability dashboards. These charts display with
data scoped to the selected service.

Before you begin

Role required: sn_sow_svcobs.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace and then navigate to a service
record.
You can access a service record from these pages in the SOW:
◦ Services list: Choose a service from the list.
◦ Service dashboard: Choose a service in the dashboard and select Service Details.
◦ List: Navigate to Application Services > Services and select a service.
◦ Express list alert: Select a service from the Impacted services column.
The Service Details page opens and the Overview tab is displayed.
Trouble?
If charts are displaying error messages, see Chart error states.
2. Open the template in editing mode.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3837


<!-- page 3838 -->
◦ If you're editing a certified template, select Duplicate.
◦ If you're editing a custom template, select Edit.

Note: Duplicating a certified template keeps you from overwriting it and also lets you
reinstall it.
The new dashboard is titled with the words - Copy appended. Use the pencil icon to change
the dashboard name.
3. To do basic editing, such as rearranging, resizing, or deleting charts, follow the instructions for
Edit in-line Platform Analytics dashboard elements .
4. To add a new chart with HLA data, follow these steps:
a. In Edit mode, select Add new element and choose Data visualization, select New
Visualization, and then select Line.
b. In the Data sources section of the Configuration panel, select Add data source.
c. In the Add data source page, navigate to Health Log Analytics > Log components.
d. Enter a saved search or select a component and then optionally add conditions or a Lucene
query, as described in Step 5 of Create log data dashboards and visualizations in Health Log
Analytics.
e. Once the filter is correct, choose Add this source.
The data is added to the dashboard.
f. Use the controls in the Data section of the Configuration panel to further configure the chart.
5. When done customizing, select Save and then Exit editing mode.
6. To return the template to the default (Certified) version, use the More actions menu to select
Return to certified.
Use synthetic monitoring with Service Observability
Create a synthetic monitor to test your service's endpoints. Then display the results by
customizing a Service Observability dashboard.

Overview of using synthetic monitoring with Service Observability
Synthetic monitoring simulates user transactions on a service's HTTP endpoints, enabling you
to identify performance bottlenecks, help confirm up-time, and optimize user experiences. It
continually calls a service's endpoint to test availability, response times, or the presence of a
defined string in the response body. When a test fails the configured criteria, it can send an alert.
For more information about synthetic monitoring, see Exploring synthetic monitoring.
The results of the monitor's test can be added to the Service Observability Overview dashboard
and to the Observability Service dashboard. To view synthetic data related to a service on
a dashboard, you first create a monitor that tests the endpoints of your service. Then you
customize a dashboard template to add the monitor's test results.

Note: When you customize the template to add synthetic monitoring, you're adding it to all
dashboards that use that template. Services that don't have a configured monitor display an
empty chart.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3838


<!-- page 3839 -->
1. Create a synthetic monitor to test a service.
Install and configure synthetic monitoring and then create a monitor to continually test your
service's endpoints using status code, response time, or response body as criteria.
2. Add synthetic monitor results to a Service Observability dashboard
Customize a Service Observability dashboard template to add synthetic monitoring test
results.
Create a synthetic monitor to test a service
Install and configure synthetic monitoring and then create a monitor for your service.

Before you begin

Your service must have an HTTP-reachable endpoint, configured as a CI in the HTTP(S)
Endpoints [cmdb_ci_endpoint_http] table of the Configuration Management Database (CMDB).
Role required: n_sow_svcobs.admin, sn_sow_synthetics.synthetics_admin

Procedure
1. Install synthetic monitoring.
See Install synthetic monitoring for more information.
2. If needed, create a location to run the monitor from.
Monitors can be run locally from a ServiceNow Glide instance or from your environment using
either a cluster of Agent Client Collector (ACC) agents or from a MID Server. If you choose to
run them from your environment, you must create a location. See Create synthetic monitoring
locations for more information.
3. Create the monitor.
Follow the steps in Create and edit a synthetic monitor. Be sure to select the service you want
to monitor as the Related service CI.

What to do next

Once you create the monitor, it begins running tests. View the results of those tests to verify
the results before embedding synthetic monitoring into a Service Observability dashboard. For
more information about viewing monitor test results, see Identifying system issues with synthetic
monitoring.
Once you have expected results, move on to Add synthetic monitor results to a Service
Observability dashboard.
Add synthetic monitor results to a Service Observability dashboard
Add a synthetic monitor to a dashboard in Service Observability by customizing an existing
dashboard template.

About this task

Once you have created monitors for your services, you can display those results on your
Service Observability dashboards by customizing the template to include a chart that queries
synthetic monitoring. You can add synthetic monitoring to either the Overview dashboard or the
Observability > Service dashboard.

Note: When you customize the template to add synthetic monitoring, you're adding it to all
dashboards that use that template. Services that don't have a configured monitor display an
empty chart.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3839


<!-- page 3840 -->
Before you begin

Role required: sn_sow_svcobs.admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace and then navigate to a service
record.
You can access a service record from these pages in the SOW:
◦ Services list: Choose a service from the list.
◦ Service dashboard: Choose a service in the dashboard and select Service Details.
◦ List: Navigate to Application Services > Services and select a service.
◦ Express list alert: Select a service from the Impacted services column.
The Service Details page opens and the Overview tab is displayed.
Trouble?
If charts are displaying error messages, see Chart error states.
2. Open the template in editing mode.
◦ If you're editing a certified template, select Duplicate.
◦ If you're editing a custom template, select Edit.

Note: Duplicating a certified template keeps you from overwriting it and also lets you
reinstall it.
The new dashboard is titled with the words - Copy appended. Use the pencil icon to change
the dashboard name.
3. To add a new ServiceNow table, follow these steps:
a. In Edit mode, select Add new element and choose List.
b. In the Configuration panel in the Data sources section, choose Add data source.
c. In the Add data source page, search for and select the synthetic monitoring data source,
depending on the data you want to display.
◦ If you want to display the status of all tests associated with a service, select the Single
API [sn_synthetics_check_single_api] table.
◦ If you want to display the results of a single synthetic test for a service, select the Single
API Result [sn_synthetics_check_single_api_result] table.

Note: Leave the Follow filters check box selected. This control enables the chart to
display information for the selected service.
4. In the Default display section, choose Add to begin adding columns from the table to the new
list.
5. Choose Save and then Exit editing mode to return to the dashboard.
The synthetic monitoring data now appears on the dashboard.

What to do next

For detailed instructions about editing dashboards, see Edit in-line Platform Analytics dashboard
elements .

Monitoring services and investigating issues
Operators use Service Observability to monitor the health of their services and to triage and
manage incidents. They can view performance metrics from external application performance
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3840


<!-- page 3841 -->
management (APM) systems in the context of an application service and its related CIs
(Configuration Item).

Overview of using Service Observability
Service Observability can display metrics from an APM instance in context of a service. Along
with metrics for the service and information about related CIs, Service Observability can infer
entities related to the service, like a host or database, and display their metrics. This functionality
gives an operator a more holistic view of what might be affecting performance.
The Overview tab on the Service Details page shows high-level performance metrics for the
service and other contextual information such as open alerts or incidents affecting the service.
The Observability tab displays more detailed metrics from the APM for the service, along with
metrics for inferred entities that are found through data mappings configured during setup. It
also shows information about CIs related to those inferred entities. Instead of having to switch
to an external tool, an operator can view those external metrics in the context of the Service
Operations Workspace (SOW).
• View overall service health
In the Overview tab of the Service Details page in the SOW, view overall service health and
related information, like alerts and changes.
• View service health metrics
In the Observability tab, view more detailed service metrics, as well as metrics from related
APM-monitored entities such as databases and hosts.
View overall service health
View overall service health and related events, like alerts and changes, with the Overview tab on
the Service Details page in the SOW.

Before you begin
• For version 1.5, a service must be activated. For more information, see Activate teams and
services.
• A data mapping must be configured. For more information, see Create and manage data
mappings.
Role required: operator [snc_sow_svcobs.manager]

About this task

When you have been notified that a service is experiencing performance issues, you can begin
your investigation with the Overview tab on the Service Details page.

Procedure
1. Navigate to Workspaces > Service Operations Workspace and then navigate to a service
record.
You can access a service record from these pages in the SOW:
◦ Services list: Choose a service from the list.
◦ Service dashboard: Choose a service in the dashboard and select Service Details.
◦ List: Navigate to Application Services > Services and select a service.
◦ Express list alert: Select a service from the Impacted services column.
The Service Details page opens and the Overview tab is displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3841


<!-- page 3842 -->
Trouble?
If charts are displaying error messages, see Chart error states.
2. Use the charts in the Overview section to help determine where there might be performance
issues.
The Overview section shows the basic rate, error, and duration (RED) metrics along with
metrics for key transactions found on the service. Hover over a metric to view more details.

Note: If more than one service is found with the same name, select an individual service
using the All services drop-down menu.

3. Change the time period using the time picker.
4. Use the other charts on the page to view related information about the service, such as recent
changes, open incidents, and trends for incidents and alerts.
These charts help explain whether recurring incidents or alerts might be caused by
performance issues on the service. For detailed information about using this page, refer to
the corresponding Overview templates for your Application Performance Management (APM)
vendor described in Service Observability templates.

What to do next

To view more detailed metrics and metrics for related entities, select the Observability tab. For
more information, see View service health metrics.
View service health metrics
View detailed metrics for a service, as well as metrics from related entities, such as databases
and hosts, on the Observability tab in SOW.

About this task

The Observability tab on the Service details page displays metrics for related entities inferred
from external application performance management (APM) instances, enabling you to view
related metrics without having to leave the ServiceNow platform.
The metrics are grouped by the following entity types:
• Application metrics: Metrics associated with the application services
• Computer metrics: Metrics associated with the hosts of the service
• Databases: Metrics associated with databases used by the service
For example, say you have metrics from New Relic used to monitor services, databases,
and hosts. Say that you also have an issue with the checkout service and want to view
performance information and metrics related to that service. Service Observability can show you
the service, database, and host metrics related to that service that are coming from New Relic,
along with related CI information from the ServiceNow platform. Each entity type has its own
dashboard and each metric and related CI information has its own chart.

Before you begin
• For version 1.5.0, a service must be activated. For more information, see Activate teams and
services.
• A data mapping must be configured. For more information, see Create and manage data
mappings.
Role required: operator [snc_sow_svcobs.manager]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3842


<!-- page 3843 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace and then navigate to a service
record.
You can access a service record from these pages in the SOW:
◦ Services list: Choose a service from the list.
◦ Service dashboard: Choose a service in the dashboard and select Service Details.
◦ List: Navigate to Application Services > Services and select a service.
◦ Express list alert: Select a service from the Impacted services column.
The Service Details page opens and the Overview tab is displayed.
Trouble?
If charts are displaying error messages, see Chart error states.
2. Select the Observability tab.
The Observability tab shows the related metrics and CI information available for the service.
Use the navigation pane to view the entity dashboards.

Note: If you don't see navigation options for an entity, then the metrics for that entity
haven't been discovered or mapped.
3. Select an entity to view its dashboard.
You can do the following with the charts:
◦ Display metrics for a single entity by electing the All [entity type] drop-down list and
choosing an entity.

Note: If more than one entity returned metrics, charts display multiple lines with one
line for each entity.
◦ Display metrics from a different time period using the time picker. The default time period is
the last hour.
◦ Refresh the charts to the current time period of the last hour by selecting the Refresh button.
◦ Hover over a point to view detailed information.
For detailed information about using this page, refer to the corresponding Observability
templates for your APM vendor described in Service Observability templates.

Service Observability reference
Reference topics provide additional information about administering and using Service
Observability.
Components installed with Service Observability
Several types of components are installed with activation of the Service Observability plugin,
including tables and user roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3843


<!-- page 3844 -->
Roles installed
Role title [name]

Description

Contains roles

Operator/
Triages incidents in
Operations manager
the SOW. Views basic
[snc_sow_svcobs.manager] health metrics for
a service and more
detailed service metrics
from related entities.
Service
Observability admin
[sn_sow_svcobs.admin]

Configures data
sources and adds data
mappings. Customizes
dashboard templates.

• sn_sow_srm.srm_responder
• connection_admin
• evt_mgmt_connector_instance_write

• sn_sow_srm.srm_admin
• connection_admin
• evt_mgmt_connector_instance_write
• sn_sow_itsm_admin.sow_admin_user

Store applications installed
The following are installed when you install Service Observability.

Store application
[plugin]

Description

Service
Observability UI

The Overview and Observability tabs in the Service Details page of the
SOW.

[sn_service_obs_ui]
Service Reliability
Management

Service Reliability Management and Service Observability display service
performance metrics together to give a holistic view into service health.

Platform Analytics

Enables customizing the dashboards.

Tables installed
Table

Description

Dashboard fragments

Contains the definitions of dashboards in JSON
format.

[sn_sow_svcobs_dashboard_fragments]
Service to data mapping configuration
map

Associates data mapping configurations with a
registered service using the CMDB Group Contains
Configuration Item [cmdb_group_contains_ci] table.

[sn_sow_svcobs_svc_to_config_map]
Data mapping configurations

Defines a data mapping configuration for a service.

[sn_sow_svcobs_mapping_config]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3844


<!-- page 3845 -->
Table

Data mapping configuration rules

Description

Defines a single tag-based mapping rule.

[sn_sow_svcobs_mapping_config_rules]
Observability data source
[sn_sow_svcobs_data_source]
Service Observability entity records

Defines a third-party APM vendor data source (an
http_connections) that can be used to get
telemetry for services.
Records configuration items and unknown monitored
objects for entities that appear in dashboards.

[sn_sow_svcobs_entity_records]
Service Observability PA Dashboards
sn_sow_svcobs_pa_dashboards

Contains reference information for customized
dashboards.

Domain separation and Service Observability
Domain separation is supported for Service Observability. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

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

Domain separation and Service Observability overview
Domain separation is present in all aspects of the synthetic monitoring application. Users
belonging to a specific domain see only the data existing in their own domain.

How domain separation works in Service Observability
When data is separated by domains in Service Observability, users can only configure and see
the observability data in their own domain. By default, all users and records are set to the parent
domain unless the admin assigns them to a specific domain.
You define the domain-separated environment when you configure your data inputs. All relevant
records and data processing in the Service Observability program flow reside in the same
domain as the data input. The domain name of a data input appears in the Domain column that is
displayed in the tables in your instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3845


<!-- page 3846 -->
Service Observability manages all aspects of the data, such as the data mappings and the data
displayed on dashboards. When a property is changed, the new value affects new sources only
in the specific domain.
Related topics
Domain separation for service providers
APM vendor entity mappings for Service Observability
Understand how Service Observability maps service, host, and database entities to your
Application Performance Management (APM) vendor resources.
Service Observability displays metrics from your APM vendor for services, hosts, and databases
on the Observability dashboards based on the key:value pairs in the mapping rules you create
during configuration. Service Observability sends a request to the APM vendor using that
mapping as a filter to find related entities. Any additional filtering needed to find the entities is
noted in the following sections.

Amazon CloudWatch entity mapping
Resources are returned using the AWS GetResources API.

Service Observability entity
category

Service Observability entity
dashboard

AWS resource

Application

API Gateway - HTTP

API Gateway HTTP APIs

API Gateway - REST

API Gateway REST APIs

ELB

ELB application load
balancers

Lambda

Lambda functions

Compute

Host

EC2 instances

Databases

RDS

RDS database instances

AppDynamics entity mapping
Resources are returned using the value of the entityName property.

Service Observability entity
category

Service Observability entity
dashboard

Application

Service

AppDynamics applications
returned by the /
controller/rest/
applications/ API

Compute

Host

Server nodes for applications
returned by the /
controller/sim/
v2/user/machines/
keys/ API

Databases

MySQL

MySQL database
instances returned by
the /controller/

AppDynamics resource

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3846


<!-- page 3847 -->
Service Observability entity
category

Service Observability entity
dashboard

AppDynamics resource

rest/databases/
collectors/
PostgreSQL

MySQL database
instances returned by
the /controller/
rest/databases/
collectors/

Azure entity mapping
Resources are returned using the Azure ResourceGraph API.

Service Observability entity
category

Service Observability entity
dashboard

Application

Service

Azure resource

• Microsoft.Compute/
cloudServices
• Microsoft.Web/sites
Compute

Host

Databases

MySQL

Microsoft.Compute/
virtualMachines

• Microsoft.DBforMySQL/
servers
• Microsoft.DBforMySQL/
flexibleServers
PostgreSQL
• Microsoft.DBforPostgreSQL/
servers
• Microsoft.DBforPostgreSQL/
flexibleServers

Datadog entity mapping
Service Observability entity
category

Service Observability entity
dashboard

Application

Service

Datadog resource

Entities returned from the
Software Catalog: List Entities
API

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3847


<!-- page 3848 -->
Service Observability entity
category

Service Observability entity
dashboard

Compute

Host

Hosts returned from the Hosts:
List Hosts API

Databases

MySQL

Databases returned
by filtering the
mysql.net.max_connections
metric, filtered by the provided
key:value pair in the data
mapping.

Datadog resource

Note: If your databases
don't emit this metric,
they aren't mapped.
PostgreSQL

Databases returned
by filtering the
postgresql.connections
metric, filtered by the provided
key:value pair in the data
mapping.

Note: If your databases
don't emit this metric,
they aren't mapped.
Items of note:
• Service entities: The Software Catalog list entities API only returns data for
services that include metadata. If you want to map services that don't include metadata, you
must create a mapping using service as the tag and the name of the service as the value.
For example, say you have a service named internet-banking-4 that you want to
use in a mapping and it doesn't contain metadata. You set up the mapping as shown in this
screenshot.
Datadog mapping if no metadata is present

• Default dashboard templates: The Requests, Errors, and Latency charts on the Overview and
Observability dashboard templates are created using the Datadog trace.http.request
trace metric. If a service isn't emitting that metric, no data is found. You can customize the
template to use a different trace metric query. See Customize Service Observability dashboard
templates for more information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3848


<!-- page 3849 -->
Dynatrace entity mapping
Service Observability entity
category

Service Observability entity
dashboard

Dynatrace resource

Application

Service

Services

Compute

Host

Hosts

Databases

MySQL

MySQL database instances

PostgreSQL

PostgreSQL database
instances

New Relic entity mapping
Service Observability entity
category

Service Observability entity
dashboard

New Relic resource

Application

Service

APM application services

Compute

Host

Hosts

Databases

MySQL

MySQL database instances

PostgreSQL

PostgreSQL database
instances

Prometheus entity mapping
Service Observability entity
category

Service Observability entity
dashboard

Prometheus resource

Application

Service

Applications

Compute

Host

Server nodes for applications

Databases

MySQL

MySQL database instances

PostgreSQL

PostgreSQL database
instances

SolarWinds entity mapping
Service Observability entity
category

Service Observability entity
dashboard

SolarWinds resource

Application

Service

APM application services

Compute

Host

Hosts

Splunk entity mapping
Resources are returned using the Splunk Metric time series Metadata API. Service Observability
searches for matching key:value pairs in custom properties and then falls back to searching
dimensions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3849


<!-- page 3850 -->
The returned payload is then filtered by the presence of a specific metric in the metadata that
corresponds with an entity type.

Service Observability
entity category

Service Observability
entity dashboard

Application

Service

Splunk Property or
dimension

Splunk metric used for
filtering

sf_metric:service.request
• Property:
sf_service
• Dimension fallback:
service.name

Compute

Host

sf_metric:disk.summary_util
• Property:
host.name
• Dimension fallback:
host.id

Databases

MySQL

sf_metric:mysql.threads
• Property:
mysql.instance.name
• Dimension fallback:
mysql.instance.endpoint

PostgreSQL

Not supported

Advanced query support for AWS and Azure
Understand how to create advanced queries for Service Observability dashboard charts.
Advanced queries in Service Observability support most vendor-specific query languages.
Simply copy a query from the APM chart and paste it into the Advanced query field in Service
Observability. However, queries to AWS and Azure must be JSON-formatted and follow the
guidelines outlined in this topic.

Note: As of version 1.10, you can import charts directly from AWS and Azure. See Edit APM
data charts on Service Observability dashboard templates for more information.

AWS advanced queries
Data from AWS is accessed using the GetMetricData API. Queries can be either a direct
request in JSON format to that API or they can be in the form of a DashboardBody metric
widget. For example, you can use the widget representation for a chart that exists on an AWS
CloudWatch dashboard.

Example: Direct GetMetricData request
The following example shows a GetMetricData JSON query for a chart that displays the
average CPU Utilization for an ELB instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3850


<!-- page 3851 -->
{
"StartTime": 1637061900, // can be replaced with “${START}”
"EndTime": 1637074500, // can be replaced with “${END}”
"MetricDataQueries": [
{
"Expression": "SELECT AVG(CPUUtilization) FROM
SCHEMA(\"AWS/EC2\", InstanceId)",
"Id": "q1",
"Period": 300,
"Label": "Cluster CpuUtilization"
},
{
"Id": "m1",
"Label": "Unhealthy Behind Load Balancer",
"MetricStat": {
"Metric": {
"Namespace": "AWS/ApplicationELB",
"MetricName": "UnHealthyHostCount",
"Dimensions": [
{
"Name": "LoadBalancer",
"Value":
"app/EC2Co-EcsEl-EXAMPLE69Q/fdd2210e799e4376" // can be
replaced with “${ENTITIES}” or “${ENTITIES_ELB}”
}
]
},
"Period": 300,
"Stat": "Average"
}
}
]
}

Example: Copied source for a single object in an AWS CloudWatch dashboard
This example shows the JSON copied directly from a single object in the widgets list of the
Source view for a CloudWatch dashboard.
{
"type": "metric",
"x": 9,
"y": 0,
"width": 15,
"height": 5,
"properties": {
"view": "timeseries",
"metrics": [
[ "AWS/ApplicationELB", "RequestCountPerTarget",
"TargetGroup", "targetgroup/api-tg/1e3dc9z72fe21ca2",
"AvailabilityZone", "us-west-1a" ],
["...", "targetgroup/api-tg-cs/82a1db5f950073e1", ".",
"." ]
],
"region": "us-west-1"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3851


<!-- page 3852 -->
}
}
Both types of queries can use template variables to represent a set of entities or the start and
end time selected in the UI. For example, instead of querying for a single ELB instance, you
can replace the Value field for the LoadBalancer dimension with ${ENTITY_ELB}. The
query is run against each ELB instance associated with the selected service in the Service
Observability UI. The chart displays a time series for each one.

Note: JSON objects copied from the source of a CloudWatch dashboard don't include
explicit time fields. The values from the time picker in the Service Observability UI are used
automatically.
Template variables
AWS field

Dimensions[n].Value

Template variable

• ENTITIES
• ENTITIES_HOST
• ENTITIES_LAMBDA
• ENTITIES_API_GATEWAY_HTTP
• ENTITIES_API_GATEWAY_REST
• ENTITIES_ELB
• ENTITIES_RDS
The Dimensions[n].Value field must be
a resource identifier key.

StartTime

START

EndTime

END

Azure advanced queries
You run an advanced query for an Azure-based chart by copying the source from the Azure UI
and pasting it in the Advanced query field.
To copy the source:
1. In the Azure UI, export and download the dashboard.
2. Copy the JSON for a single chart. Charts are located at
properties.lenses[i].parts[j].metadata.settings.content.options.chart.
3. Paste the JSON into the query field. The JSON must include at least the following:
```
{
“metrics”: [
“name”: string,
“resourceMetadata”: {
“id”: string
}
]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3852


<!-- page 3853 -->
}
```
The id field must be either an Azure resource ID or a template variable.
Service Observability template variables
Understand the template variables that you can use in your queries when editing Service
Observability dashboards and charts.
You can use the following template variables in your query. Variables enable the query to be
used for multiple services, hosts, and database instances, as well as for the time period currently
selected for the dashboard.

Note: Amazon CloudWatch uses slightly different template variables. See Advanced
query support for AWS and Azure for more information.
Aside from the variables listed below, you can also use any tag key used in the chart's data
mapping as a template variable.
Template variables
Variable

Description

{$ENTITIES_HOST}

Returns metrics for the selected host

{$ENTITIES_MYSQL}

Returns metrics for the selected MySQL
instance

{$ENTITIES_POSTGRESQL}

Returns metrics for the selected PostgreSQL
instance

{$ENTITIES_SERVICE}

Returns metrics for the selected service.

{$ENTITIES}

Returns metrics for the selected entity; either
service, host or database.

{$START_TIME}

Returns metric time series using the selected
start time.

{$END_TIME}

Returns metric time series using the selected
end time.

Example query
Let's say you're using NewRelic and you create a data mapping that maps the key service to
the value checkout-service.
A simple query built using the query builder might look like this:
rate(count(apm.service.transaction.duration), 1 minute
It would return the rate of transactions for the checkout-service service.
Instead you might use a full vendor query like this:
SELECT rate(count(apm.service.transaction.duration), 1
minute) as 'Web throughput' FROM Metric WHERE (entity.guid
= 'NDc2NDMyNXxBUE18QVBQTElDQVRJT058MTA3NjIyODQwMw') AND
(transactionType = 'Web') LIMIT MAX SINCE 30 minutes ago
TIMESERIES UNTIL now
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3853


<!-- page 3854 -->
It would return the duration for the hard-coded
NDc2NDMyNXxBUE18QVBQTElDQVRJT058MTA3NjIyODQwMw entity from the last 30
minutes.
To create a query that would return the time series for any selected service at any time period,
you can replace the entity and times with template variables:
SELECT average(convert(apm.service.transaction.duration, unit,
'ms')) as metricValue,
average(convert(apm.service.transaction.duration, unit, 'ms'))
- 100 as loop FROM Metric WHERE entity.guid IN (${ENTITIES})
FACET entity.guid, entity.name SINCE ${START} UNTIL ${END}
TIMESERIES LIMIT 25
Service Observability templates
View the templates for your Application Performance Management (APM) vendor to understand
the default dashboards provided by Service Observability.
See Customize Service Observability dashboard templates for information about customizing
these templates.
Amazon CloudWatch templates for Service Observability
Templates used to create Amazon CloudWatch dashboards in Service Observability. You can
edit these templates as needed.
See Customize Service Observability dashboard templates for more information.
Amazon CloudWatch Overview tab for Service Observability
Information that is displayed on the Amazon CloudWatch Overview tab of the Service Details
page in the SOW.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.

Chart name

Description

Data
source

Invocations Aggregate rate of transactions through the service.

AWS

Errors

Number of transactions that have an error.

AWS

Duration

Aggregate duration of transactions through the service, in
milliseconds.

AWS

Contextual information section
The Recent changes table shows changes made to the system that might have an impact on the
service. This data comes from the related configuration items in the CMDB.

Status indicators section
The Status indicators section displays charts for related Configuration Items (CIs) that might be
affecting the service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3854


<!-- page 3855 -->
Data
source

Chart name

Description

SLO Error
Budget

Information about your current error budget for this service, as
configured in Service Reliability Management (SRM).

CMDB

For more information on error budgets, see Create SLOs, SLIs, and
error budget policies.
Systems
impacted

Services or service offerings that have a relationship to the selected
service.

CMDB

Open incidents
last 30 days

Day-by-day occurrence of open incidents affecting this service over
the last month.

CMDB

Open alerts last Day-by-day occurrence of alerts affecting this service over the last
30 days
month.

CMDB

Current open
incidents

Listing of active incidents that affect this service.

CMDB

All active alerts

Listing of active alerts that affect this service.

CMDB

Amazon CloudWatch Observability tab for Service Observability
Dashboard and charts on the Amazon CloudWatch tab of the Service Details page in the SOW.

Application dashboards
This dashboard displays performance metrics for the selected service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.
API Gateway - HTTP
Chart

Description

Data source

Request Count

Aggregate rate of
transactions through the
service, per minute.

AWS

Latency

Aggregate duration of
transactions through the
service, in milliseconds.

AWS

4xx Errors

Number of errors returned
with a status of 4xx.

AWS

5xx Errors

Number of errors returned
with a status of 5xx.

AWS

Chart

Description

Data source

Request Count

Aggregate rate of
transactions through the
service, per minute.

AWS

API Gateway - REST

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3855


<!-- page 3856 -->
API Gateway - REST (continued)
Chart

Description

Data source

Latency

Aggregate duration of
transactions through the
service, in milliseconds.

AWS

4xx Errors

Number of errors returned
with a status of 4xx.

AWS

5xx Errors

Number of errors returned
with a status of 5xx.

AWS

Chart

Description

Data source

Request Count

Aggregate rate of
transactions through the
service, per minute.

AWS

Latency

Aggregate duration of
transactions through the
service, in milliseconds.

AWS

4xx Errors

Number of errors returned
with a status of 4xx.

AWS

5xx Errors

Number of errors returned
with a status of 5xx.

AWS

Chart

Description

Data source

Errors

Number of errors reported
by the Lambda function.

AWS

Duration

Aggregate duration of
transactions through the
service, in milliseconds.

AWS

Invocations

Number of Lambda
invocations executed by
this service.

AWS

ELB

Lambda

Compute dashboards
This dashboard displays metrics for hosts related to the service.
Host
Chart

Description

Data
source

CPU
utilization

Percent of the host processing power being consumed by this service.

AWS

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3856


<!-- page 3857 -->
Host (continued)
Chart

Description

Data
source

Disk Write
Bytes

Number of bytes written to the database by this service.

AWS

Disk Read
Bytes

Number of bytes read from the database by this service.

AWS

Network In
Bytes

Amount of incoming network traffic in bytes for this service.

AWS

Network Out
Bytes

Amount of outgoing network traffic in bytes for this service.

AWS

All EC2 VM
Instances

Information for all EC2 VM instances the service is actively using. Select CMDB
a link to view more detailed information.

All Active
Servers

Information for all servers the service is actively using. Select a Server
link to view more detailed information.

CMDB

Database dashboards
This dashboard displays metrics for RDS databases related to the service.
RDS
Data
source

Chart

Description

CPU
utilization

Percent of the database's processing power being consumed by this
service.

AWS

Free
Memory

Amount of memory in bytes available on this database.

AWS

Free Storage Amount of storage in bytes available on this database.

AWS

Current
Number of connections from this service to the database.
Connections

AWS

Read
Latency

Time taken in milliseconds for read operation from the database to
complete.

AWS

Write
Latency

Time taken in milliseconds for write operation from the database to
complete.

AWS

All RDS
Instances

Information for all databases the service is actively using. Select a
database link to view more detailed information.

CMDB

AppDynamics templates for Service Observability
Templates used to create AppDynamics dashboards in Service Observability. You can edit these
templates as needed.
See Customize Service Observability dashboard templates for more information.
AppDynamics Overview tab for Service Observability
Information that is displayed on the AppDynamics Overview tab of the Service Details page in
the SOW.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3857


<!-- page 3858 -->
KPIs section
The KPIs section displays basic performance metrics for the service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.

Chart name

Description

Data source

Average Response
Time

Average rate of transactions through the service.

AppDynamics

Errors per Minute

Rate of errors per minute on transactions for the
service.

AppDynamics

Contextual information section
The Recent changes table shows changes made to the system that might have an impact on the
service. This data comes from the related configuration items in the CMDB.

Status indicators section
The Status indicators section displays charts for related CIs that might be affecting the service.

Chart name

Description

SLO Error
Budget

Information about your current error budget for this service, as
configured in Service Reliability Management (SRM).

Data
source

CMDB

For more information on error budgets, see Create SLOs, SLIs, and
error budget policies.
Systems
impacted

Services or service offerings that have a relationship to the selected
service.

CMDB

Open incidents
last 30 days

Day-by-day occurrence of open incidents affecting this service over
the last month.

CMDB

Open alerts last Day-by-day occurrence of alerts affecting this service over the last
30 days
month.

CMDB

Current open
incidents

Listing of active incidents that affect this service.

CMDB

Current open
alerts

Listing of active alerts that affect this service.

CMDB

AppDynamics Observability tab for Service Observability
Dashboard and charts on the AppDynamics Observability tab of the Service Details page in the
SOW.

Application dashboard
This dashboard displays performance metrics for the selected service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3858


<!-- page 3859 -->
Note: If the dashboards have been customized, they might not reflect the information
shown on this page.
Service
Chart name

Description

Data source

Average
Response Time

Average rate of transactions through the service.

AppDynamics

Errors per
Minute

Rate of errors per minute on transactions for the service.

AppDynamics

Calls per Minute Number of calls to the server, per minute.

AppDynamics

Number of slow
calls

Number of calls to the server that have a response time
slower than the set slow threshold.

AppDynamics

Number of Very
Slow Calls

Number of calls to the server that have a response time
slower than the set very slow threshold.

AppDynamics

Compute dashboard
This dashboard displays metrics for hosts related to the service.
Host
Chart

Description

Data source

CPU %Busy

Percent of the host processing power being consumed.

AppDynamics

Memory Used
%

Percent of memory the host is using.

AppDynamics

Disk Reads/
sec

Percent of disk space being used, per second.

AppDynamics

Disk Writes/
sec

Percent of disk space being written to, per second.

AppDynamics

Network
Incoming
KB/sec

Number of kilobytes coming into the service, per second.

AppDynamics

Network
Outgoing
KB/sec

Number of kilobytes being sent by the service, per second.

AppDynamics

All Active
Servers

Information for all servers the service is actively using. Select a CMDB
host link to view more detailed information.

Database dashboards
These dashboards display metrics for databases related to the service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3859


<!-- page 3860 -->
MySQL
Chart

Description

Data source

Calls Per
Minute

Number of database calls made by the service, per minute

AppDynamics

Time Spent
Number of seconds spent executing database calls by the
in Executions service.

AppDynamics

DB Inserts

Number of database inserts by the service.

AppDynamics

DB Reads

Number of database reads by the service.

AppDynamics

All MySQL
Instances

Information for all databases the service is actively using. Select CMDB
a database link to view more detailed information.

PostgreSQL
Chart

Description

Data source

Calls Per
Minute

Number of database calls made by the service, per minute

AppDynamics

Time Spent in
Execution(s)

Time in seconds the database in execution mode for this
service.

AppDynamics

All
PostgreSQL
Instances

Information of all databases the service is actively using. Select CMDB
a database link to view more detailed information.

Azure Monitor templates for Service Observability
Templates used to create Azure Monitor dashboards in Service Observability. You can edit these
templates as needed.
See Customize Service Observability dashboard templates for more information.
Azure Monitor Overview tab for Service Observability
Information that is displayed on the Azure Monitor Overview tab of the Service Details page in
the SOW.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.

Chart name

Description

Data
source

Requests

Aggregate rate of transactions through the service.

Azure

Response
Time

Aggregate duration of transactions through the service, in
milliseconds.

Azure

Http 5xx

Number of errors returned with a status of 5xx.

Azure

Contextual information section
The Recent changes table shows changes made to the system that might have an impact on the
service. This data comes from the related configuration items in the CMDB.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3860


<!-- page 3861 -->
Status indicators section
The Status indicators section displays charts for related Configuration Items (CIs) that might be
affecting the service.

Data
source

Chart name

Description

SLO Error
Budget

Information about your current error budget for this service, as
configured in Service Reliability Management (SRM).

CMDB

For more information on error budgets, see Create SLOs, SLIs, and
error budget policies.
Systems
impacted

Services or service offerings that have a relationship to the selected
service.

CMDB

Open incidents
last 30 days

Day-by-day occurrence of open incidents affecting this service over
the last month.

CMDB

Open alerts last Day-by-day occurrence of alerts affecting this service over the last
30 days
month.

CMDB

Current open
incidents

Listing of active incidents that affect this service.

CMDB

All Active alerts

Listing of active alerts that affect this service.

CMDB

Azure Monitor Observability tab for Service Observability
Dashboard and charts on the Azure Monitor Observability tab of the Service Details page in the
SOW.

Application dashboard
This dashboard displays performance metrics for the selected service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.
Service
Chart

Description

Data source

Requests

Aggregate rate of requests
through the service.

Azure

Http 4xx

Number of transactions
that have an HTTP 4xx
response.

Azure

Response time

Aggregate duration of
transactions through the
service, in milliseconds.

Azure

Data Out

Volume in bytes of outgoing Azure
network traffic from this
service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3861


<!-- page 3862 -->
Service (continued)
Chart

Description

Data source

Http 2xx

Number of transactions that Azure
have an HTTP 2xx response.

Data In

Volume in bytes of incoming Azure
network traffic to this
service.

Compute dashboard
This dashboard displays metrics for hosts related to the service.
Host
Chart

Description

Data
source

Available Memory
Percentage

Percent of the memory available to the service.

Azure

CPU %

Percent of the host processing power being consumed.

Azure

VM Cached Bandwidth
Consumed Percentage

Percent of the virtual machine's cached bandwidth that the
service is consuming.

Azure

All Active VM Instances

Information for all virtual machines (VM) the service is
actively using. Select a VM link to view more information.

CMDB

All Active Servers

Information for all hosts the service is actively using. Select
a host link to view more detailed information.

CMDB

Database dashboards
These dashboards display metrics for databases related to the service.
MySQL
Chart

Description

Data
source

Storage %

Percentage of storage currently being consumed by the service.

Azure

CPU %

Percentage of CPU currently being consumed by the service.

Azure

Memory %

Percentage of memory currently being consumed by the service.

Azure

Active
Number of connections currently used by the service.
Connections

Azure

Aborted
Number of connections from the service terminated by the database
Connections

Azure

MySQL
Uptime

Total time in seconds that this MySQL instance has been running since
its last restart.

Azure

Slow
Queries

Number of queries that take longer than the specified threshold to
execute. This threshold is typically defined by the long_query_time
parameter in MySQL.

Azure

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3862


<!-- page 3863 -->
PostgreSQL
Chart

Description

Data
source

Storage %

Percentage of storage currently being consumed by the service.

Azure

CPU %

Percentage of CPU currently being consumed by the service.

Azure

Memory %

Percentage of memory currently being consumed by the service.

Azure

Active
Connections

Number of connections currently used by the service.

Azure

Aborted
Connections

Number of connections from the service terminated by the database

Azure

Succeeded
Connections

Number of successful connections from the service to the database.

Azure

Deadlocks

Number of deadlocks encountered by the service.

Azure

Is Database
Alive

1 if database is up, 0 if it is down.

Azure

All PostgreSQL Information of all databases the service is actively using. Select a
Instances
database link to view more detailed information.

CMDB

Datadog templates for Service Observability
Templates used to create Datadog dashboards in Service Observability. You can edit these
templates as needed.
See Customize Service Observability dashboard templates for more information.
Datadog Overview tab for Service Observability
Information that is displayed on the DatadogOverview tab of the Service Details page in the
SOW.

KPIs section
The KPIs section displays basic performance metrics for the service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.

Chart
name

Description

Data
source

Request

Aggregate rate of transactions through the service.

Datadog

Errors

Percent of transactions that have an error.

Datadog

Latency

Aggregate duration of transactions through the service, in
milliseconds.

Datadog

Transactions charts
The Transactions charts show metrics for specific key transactions on the service. The key
transactions are determined by your Application Performance Management (APM) system
configuration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3863


<!-- page 3864 -->
Chart
name

Description

Data
source

Requests Each line represents the throughput of a key transaction through the
service. Hover over a point to view the different transaction names.

Datadog

Errors

Each line represents the percentage of errors on a key transaction in the
service. Hover over a point to view the different transaction names.

Datadog

Latency

Each line represents the response time for a key transaction on the
service. Hover over a point to view the different transaction names.

Datadog

Contextual information section
The Recent changes table shows changes made to the system that might have an impact on the
service. This data comes from the related configuration items in the CMDB.

Status indicators section
The Status indicators section displays charts for related CIs that might be affecting the service.

Chart name

Description

SLO Error
Budget

Information about your current error budget for this service, as
configured in Service Reliability Management (SRM).

Data
source

CMDB

For more information on error budgets, see Create SLOs, SLIs, and
error budget policies.
Systems
impacted

Services or service offerings that have a relationship to the selected
service.

CMDB

Open incidents
last 30 days

Day-by-day occurrence of open incidents affecting this service over
the last month.

CMDB

Open alerts last Day-by-day occurrence of alerts affecting this service over the last
30 days
month.

CMDB

Current open
incidents

Listing of active incidents that affect this service.

CMDB

Current open
alerts

Listing of active alerts that affect this service.

CMDB

Datadog Observability tab for Service Observability
Dashboard and charts on the Datadog Observability tab of the Service Details page in the SOW.

Application dashboard
This dashboard displays performance metrics for the selected service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3864


<!-- page 3865 -->
Service KPIs
Chart

Description

Data source

Requests

Aggregate rate of requests
through the service.

Datadog

Errors

Number of transactions that Datadog
have an error.

Latency

Aggregate duration of
transactions through the
service, in milliseconds.

Datadog

Top Transactions
Chart

Description

Data source

Requests

Each line represents
the throughput of a key
transaction through the
service. Hover over a point to
view the different transaction
names.

Datadog

Errors

Each line represents the
number of errors on a key
transaction in the service.
Hover over a point to view the
different transaction names.

Datadog

Latency

Each line represents the
response time for a key
transaction on the service.
Hover over a point to view the
different transaction names.

Datadog

Compute dashboard
This dashboard displays metrics for hosts related to the service.
Host
Chart

Description

Data
source

CPU
Utilization

Percent of the host processing power being consumed.

Datadog

Memory
Utilization

Percent of memory the host is using.

Datadog

Disk
Utilization

Percent of disk space being used.

Datadog

All Active
Servers

Information for all hosts the service is actively using. Select a host
link to view more detailed information.

CMDB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3865


<!-- page 3866 -->
Host (continued)
Chart

Description

All Active VM
Instances

Information for all virtual machines (VM) the service is actively using.
Select a VM link to view more information.

Data
source

CMDB

Database dashboards
These dashboards display metrics for databases related to the service.
MySQL
Chart

Description

Data
source

Max
Maximum number of concurrent connections that can be established
Connections with the MySQL database server.

Datadog

Failed
Number of failed attempts to connect to the MySQL server.
Connections

Datadog

Slow
Queries
Rate

Number of database queries that have been categorized as slow by
the APM.

Datadog

Data Reads

Number of read operations performed on the MySQL database.

Datadog

Data Writes

Number of write operations performed on the MySQL database.

Datadog

Cache
Utilization

Percentage of the cache memory being used by the MySQL database. Datadog

All MySQL
Instances

Information for all databases the service is actively using. Select a
database link to view more detailed information.

CMDB

PostgreSQL
Data
source

Chart

Description

Connections

Total number of connections to the database server, including all
connection states such as active, idle, and others.

Datadog

Connections
Used

Number of connections to the database used by this service.

Datadog

Active Waiting Number of queries in the queue waiting to be executed.
Queries

Datadog

Deadlocks

Number of deadlocks encountered by the service.

Datadog

Rollbacks

Number of transactions rolled back by the service.

Datadog

Buffer Hits

Number of times disk blocks were found in the buffer cache, so that
a read wasn’t necessary.

Datadog

All
PostgreSQL
Instances

Information of all databases the service is actively using. Select a
database link to view more detailed information.

CMDB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3866


<!-- page 3867 -->
Dynatrace templates for Service Observability
Templates used to create Dynatrace dashboards in Service Observability. You can edit these
templates as needed.
See Customize Service Observability dashboard templates for more information.
Dynatrace Overview tab for Service Observability
Information that is displayed on the Dynatrace Overview tab of the Service Details page in the
SOW.

KPIs section
The KPIs section displays basic performance metrics for the service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.

Chart
name

Description

Data
source

Rate

Aggregate rate of transactions through the service.

Dynatrace

Error %

Percent of transactions that have an error.

Dynatrace

Latency

Aggregate duration of transactions through the service, in
milliseconds.

Dynatrace

Key Transactions charts
The Transactions charts show metrics for specific key transactions on the service. The key
transactions are determined by your Application Performance Management (APM) system
configuration.

Chart
name

Description

Data
source

Rate

Each line represents the throughput of a key transaction through the
service. Hover over a point to view the different transaction names.

Dynatrace

Error %

Each line represents the percentage of errors on a key transaction in the
service. Hover over a point to view the different transaction names.

Dynatrace

Latency Each line represents the response time for a key transaction on the
service. Hover over a point to view the different transaction names.

Dynatrace

Contextual information section
The Recent changes table shows changes made to the system that might have an impact on the
service. This data comes from the related configuration items in the CMDB.

Status indicators section
The Status indicators section displays charts for related CIs that might be affecting the service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3867


<!-- page 3868 -->
Data
source

Chart name

Description

SLO Error
Budget

Information about your current error budget for this service, as
configured in Service Reliability Management (SRM).

CMDB

For more information on error budgets, see Create SLOs, SLIs, and
error budget policies.
Systems
impacted

Services or service offerings that have a relationship to the selected
service.

CMDB

Open incidents
last 30 days

Day-by-day occurrence of open incidents affecting this service over
the last month.

CMDB

Open alerts last Day-by-day occurrence of alerts affecting this service over the last
30 days
month.

CMDB

Current open
incidents

Listing of active incidents that affect this service.

CMDB

Current open
alerts

Listing of active alerts that affect this service.

CMDB

Dynatrace Observability tab for Service Observability
Dashboard and charts on the Dynatrace Observability tab of the Service Details page in the
SOW.

Application dashboard
This dashboard displays performance metrics for the selected service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.
Service Basic metrics
Chart

Description

Data source

Rate

Aggregate rate of
transactions through the
service.

Dynatrace

Error %

Percent of transactions that
have an error.

Dynatrace

Latency

Aggregate duration of
transactions through the
service, in milliseconds.

Dynatrace

Client error rate

Rate of errors the service
clients experienced.

Dynatrace

Client throughput

Rate of client requests for
this service.

Dynatrace

Client response time

Response time for client
requests on this service, in
milliseconds.

Dynatrace

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3868


<!-- page 3869 -->
Service Basic metrics (continued)
Chart

Description

Data source

Total DB connections

Number of databases that
this client has connections
to.

Dynatrace

DB connection errors

Number of errors received
by the client when trying to
access databases.

Dynatrace

Time spent in database calls

Duration of requests to
databases, in milliseconds.

Dynatrace

Service Transactions
Chart

Description

Data source

Key Request Count

Each line represents
the throughput of a key
transaction through the
service. Hover over a point to
view the different transaction
names.

Dynatrace

Key Request Error %

Each line represents the
percentage of errors on a key
transaction in the service.
Hover over a point to view the
different transaction names.

Dynatrace

Key Request Response Time

Each line represents the
response time for a key
transaction on the service.
Hover over a point to view the
different transaction names.

Dynatrace

Compute dashboard
This dashboard displays metrics for hosts related to the service.
Host
Chart

Description

Data
source

CPU
utilization

Percent of the host processing power being consumed.

Dynatrace

Memory
utilization

Percent of memory the host is using.

Dynatrace

Disk
utilization

Percent of disk space being used.

Dynatrace

All Active
Servers

Information for all hosts the service is actively using. Select a host
link to view more detailed information.

CMDB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3869


<!-- page 3870 -->
Host (continued)
Chart

Description

All Active VM
Instances

Information for all virtual machines (VM) the service is actively
using. Select a VM link to view more information.

Data
source

CMDB

Process
Chart

Description

Data source

CPU Usage

Percent of the host processing power being consumed.

Dynatrace

Memory Usage

Percent of memory the host is using.

Dynatrace

Requests

Rate of requests per second

Dynatrace

Throughput

Size of requests, in megabytes per second.

Dynatrace

Latency

Aggregate duration of transactions, in milliseconds.

Dynatrace

Process Group
Chart

Description

Data
source

CPU Usage Percent of the host processing power being consumed.

Dynatrace

Memory
Usage

Percent of memory the host is using.

Dynatrace

Requests

Rate of requests per second

Dynatrace

Throughput Size of requests, in megabytes per second

Dynatrace

Latency

Aggregate duration of transactions, in milliseconds.

Dynatrace

All Active
Servers

Information for all hosts the service is actively using. Select a host link CMDB
to view more detailed information.

Database dashboards
These dashboards display metrics for databases related to the service.
MySQL
Chart

Description

Data
source

CPU
utilization

Percent of the database's processing power being consumed.

Dynatrace

Memory
utilization

Percent of memory the database is using.

Dynatrace

Availability

Percent of time the database is available.

Dynatrace

Connections Number of connections to the database.

Dynatrace

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3870


<!-- page 3871 -->
MySQL (continued)
Chart

Description

Data
source

Slow queries Number of database queries that have been categorized as slow by
the APM.

Dynatrace

All MySQL
Instances

CMDB

Information for all databases the service is actively using. Select a
database link to view more detailed information.

PostgreSQL
Data
source

Chart

Description

Scheduled
Checkpoints

Average number of scheduled checkpoints that were
performed.

Dynatrace

Buffers Written for
Checkpoint

Average number of buffers written during checkpoints.

Dynatrace

Buffers Written by
Background Writer

Average number of buffers written by the background writer.

Dynatrace

Buffers Allocated

Average number of buffers allocated.

Dynatrace

Checkpoint Write
Time

Time in milliseconds spent writing files to disk.

Dynatrace

All PostgreSQL
Instances

Information of all databases the service is actively using.
Select a database link to view more detailed information.

CMDB

New Relic templates for Service Observability
Templates used to create New Relic dashboards in Service Observability. You can edit these
templates as needed.
See Customize Service Observability dashboard templates for more information.
New Relic Overview tab for Service Observability
Information that is displayed on the New Relic Overview tab of the Service Details page in the
SOW.

KPIs section
The KPIs section displays basic performance metrics for the service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.

Chart
name

Description

Data
source

Rate

Aggregate rate of transactions through the service.

New Relic

Error %

Percent of transactions that have an error.

New Relic

Latency

Aggregate duration of transactions through the service, in
milliseconds.

New Relic

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3871


<!-- page 3872 -->
Transactions charts
The Transactions charts show metrics for specific key transactions on the service. The key
transactions are determined by your Application Performance Management (APM) system
configuration.

Chart
name

Description

Data
source

Rate

Each line represents the throughput of a key transaction through the service.
Hover over a point to view the different transaction names.

New
Relic

Error %

Each line represents the percentage of errors on a key transaction in the
service. Hover over a point to view the different transaction names.

New
Relic

Latency Each line represents the response time for a key transaction on the service.
Hover over a point to view the different transaction names.

New
Relic

Contextual information section
The Recent changes table shows changes made to the system that might have an impact on the
service. This data comes from the related configuration items in the CMDB.

Status indicators section
The Status indicators section displays charts for related CIs that might be affecting the service.

Chart name

Description

SLO Error
Budget

Information about your current error budget for this service, as
configured in Service Reliability Management (SRM).

Data
source

CMDB

For more information on error budgets, see Create SLOs, SLIs, and
error budget policies.
Systems
impacted

Services or service offerings that have a relationship to the selected
service.

CMDB

Open incidents
last 30 days

Day-by-day occurrence of open incidents affecting this service over
the last month.

CMDB

Open alerts last Day-by-day occurrence of alerts affecting this service over the last
30 days
month.

CMDB

Current open
incidents

Listing of active incidents that affect this service.

CMDB

Current open
alerts

Listing of active alerts that affect this service.

CMDB

New Relic Observability tab for Service Observability
Dashboard and charts on the New Relic Observability tab of the Service Details page in the
SOW.

Application dashboard
This dashboard displays performance metrics for the selected service.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3872


<!-- page 3873 -->
Note: If the dashboards have been customized, they might not reflect the information
shown on this page.
Service basic metrics
Chart

Description

Data source

Rate

Aggregate rate of
transactions through the
service, per minute.

New Relic

Error %

Percent of transactions that
have an error.

New Relic

Latency

Aggregate duration of
transactions through the
service, in milliseconds.

New Relic

Time spent in database calls

Duration of requests to
databases, in milliseconds.

New Relic

Database throughput

Rate of database requests
for this service, per minute.

New Relic

Time spent in database queries

Time spent querying the
database, in milliseconds.

New Relic

Service transactions
Chart

Description

Data source

Rate

Each line represents
the throughput of a key
transaction through the
service. Hover over a point to
view the different transaction
names.

New Relic

Error %

Each line represents the
percentage of errors on a key
transaction in the service.
Hover over a point to view the
different transaction names.

New Relic

Latency

Each line represents the
response time for a key
transaction on the service.
Hover over a point to view the
different transaction names.

New Relic

Compute dashboard
This dashboard displays metrics for hosts related to the service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3873


<!-- page 3874 -->
Host
Data
source

Chart

Description

CPU
utilization

Percent of the host processing power being consumed.

New
Relic

Memory
utilization

Percent of memory the host is using.

New
Relic

Disk
utilization

Percent of disk space being used.

New
Relic

All Active
Servers

Information for all servers the service is actively using. Select a host link
to view more detailed information.

CMDB

Database dashboards
These dashboards display metrics for databases related to the service.
MySQL
Data
source

Chart

Description

CPU
utilization

Percent of the database's processing power being consumed.

New
Relic

Memory
utilization

Percent of memory the database is using.

New
Relic

Availability

Percent of time the database is available.

New
Relic

Connections Number of connections to the database.

New
Relic

Slow queries Number of database queries that have been categorized as slow by the
APM.

New
Relic

All MySQL
Instances

CMDB

Information for all databases the service is actively using. Select a
database link to view more detailed information.

PostgreSQL
Data
source

Chart

Description

Scheduled
Checkpoints

Average number of scheduled checkpoints that were performed. New
Relic

Buffers Written for
Checkpoint

Average number of buffers written during checkpoints.

New
Relic

Buffers Written by
Background Writer

Average number of buffers written by the background writer.

New
Relic

Buffers Allocated

Average number of buffers allocated.

New
Relic

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3874


<!-- page 3875 -->
PostgreSQL (continued)
Data
source

Chart

Description

Checkpoint Write
Time

Time in milliseconds spent writing files to disk.

New
Relic

All PostgreSQL
Instances

Information of all databases the service is actively using. Select
a database link to view more detailed information.

CMDB

Prometheus templates for Service Observability
Templates used to create Prometheus dashboards in Service Observability. You can edit these
templates as needed.
See Customize Service Observability dashboard templates for more information.
Prometheus Overview tab for Service Observability
Information that is displayed on the Prometheus Overview tab of the Service Details page in the
SOW.

KPIs section
The KPIs section displays basic performance metrics for the service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.

Chart name

Description

Data source

Request Rate

Aggregate rate of transactions through the service, per
second.

Prometheus

Error %

Percent of transactions that have an error.

Prometheus

Average Response
Time

Average duration of transactions through the service, in
seconds.

Prometheus

Contextual information section
The Recent changes table shows changes made to the system that might have an impact on the
service. This data comes from the related configuration items in the CMDB.

Status indicators section
The Status indicators section displays charts for related CIs that might be affecting the service.

Chart name

Description

SLO Error
Budget

Information about your current error budget for this service, as
configured in Service Reliability Management (SRM).

Data
source

CMDB

For more information on error budgets, see Create SLOs, SLIs, and
error budget policies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3875


<!-- page 3876 -->
Data
source

Chart name

Description

Systems
impacted

Services or service offerings that have a relationship to the selected
service.

CMDB

Open incidents
last 30 days

Day-by-day occurrence of open incidents affecting this service over
the last month.

CMDB

Open alerts last Day-by-day occurrence of alerts affecting this service over the last
30 days
month.

CMDB

Current open
incidents

Listing of active incidents that affect this service.

CMDB

All Active alerts

Listing of active alerts that affect this service.

CMDB

Prometheus Observability tab for Service Observability
Dashboard and charts on the Prometheus Observability tab of the Service Details page in the
SOW.

Application dashboard
This dashboard displays performance metrics for the selected service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.
Service KPIs
Chart

Description

Data source

Request Rate

Aggregate rate of
transactions through the
service, per second.

Prometheus

Error %

Percent of transactions that
have an error.

Prometheus

Average Response Time

Aggregate duration of
transactions through the
service, in seconds.

Prometheus

Throughput

Count of successful
transactions, per second.

Prometheus

Active Requests

Count of current in-flight
requests to the service.

Prometheus

Response Time (95th Percentile)

95th percentile response
time for HTTP requests, in
seconds.

Prometheus

Average Request Size

Average size of requests to
the service, in bytes.

Prometheus

Average Response Size

Average size of responses
from the service, in bytes.

Prometheus

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3876


<!-- page 3877 -->
Compute dashboard
This dashboard displays metrics for hosts related to the service.
Host
Chart

Description

Data source

CPU
utilization

Percent of the host processing power being consumed.

Prometheus

Memory
utilization

Percent of memory the host is using.

Prometheus

Disk
utilization

Percent of the host disk being used.

Prometheus

All Active
Servers

Information for all servers the service is actively using. Select a
host link to view more detailed information.

CMDB

All Active VM Information for all virtual machines the service is actively using.
Instances
Select a host link to view more detailed information.

CMDB

Database dashboards
These dashboards display metrics for databases related to the service.
MySQL
Chart

Description

Data source

Thread
Utilization %

Percent of the database's threads being consumed.

Prometheus

Queries Per
Second

Number of queries made to the database by the service, per
second.

Prometheus

InnoDB
Memory %

Percent of InnoDB buffer pool being consumed.

Prometheus

Active
Connections

Number of connections to the database.

Prometheus

Aborted
Connections

Rate of aborted connections.

Prometheus

Uptime

Average number of hours the database has been available.

Prometheus

Inbound
Network
Traffic

Number of bytes per second of inbound traffic to the database.

Prometheus

Outbound
Network
Traffic

Number of bytes per second of outbound traffic to the database.

Prometheus

Slow Queries

Rate of slow queries detected by MySQL, per second.

Prometheus

All MySQL
Instances

Information for all databases the service is actively using. Select
a database link to view more detailed information.

CMDB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3877


<!-- page 3878 -->
PostgreSQL
Chart

Description

Data source

Active
Sessions

Count of sessions currently active.

Prometheus

Idle Sessions

Count of idle sessions.

Prometheus

Committed
Transactions

Total committed transactions since server start.

Prometheus

Failed
Transactions

Total rolled back transactions since server start.

Prometheus

Deadlocks

Total deadlocks detected since server start.

Prometheus

Locks Count

Current count of locks given out by the database.

Prometheus

Cache Hit
Ratio

Percentage of database requests that can be served by the
cache.

Prometheus

All
PostgreSQL
Instances

Information of all databases the service is actively using. Select a
database link to view more detailed information.

CMDB

SolarWinds templates for Service Observability
Templates used to create SolarWinds dashboards in Service Observability. You can edit these
templates as needed.
See Customize Service Observability dashboard templates for more information.
SolarWinds Overview tab for Service Observability
Information that is displayed on the SolarWinds Overview tab of the Service Details page in the
SOW.

KPIs section
The KPIs section displays basic performance metrics for the service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.

Chart
name

Description

Data source

Rate

Aggregate rate of transactions through the service.

SolarWinds

Error %

Percent of transactions that have an error.

SolarWinds

Latency

Aggregate duration of transactions through the service, in
milliseconds.

SolarWinds

Transactions charts
The Transactions charts show metrics for specific key transactions on the service. The key
transactions are determined by your Application Performance Management (APM) system
configuration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3878


<!-- page 3879 -->
Chart
name

Description

Data source

Rate

Each line represents the throughput of a key transaction through the
service. Hover over a point to view the different transaction names.

SolarWinds

Error %

Each line represents the percentage of errors on a key transaction in the SolarWinds
service. Hover over a point to view the different transaction names.

Latency Each line represents the response time for a key transaction on the
service. Hover over a point to view the different transaction names.

SolarWinds

Contextual information section
The Recent changes table shows changes made to the system that might have an impact on the
service. This data comes from the related configuration items in the CMDB.

Status indicators section
The Status indicators section displays charts for related CIs that might be affecting the service.

Chart name

Description

SLO Error
Budget

Information about your current error budget for this service, as
configured in Service Reliability Management (SRM).

Data
source

CMDB

For more information on error budgets, see Create SLOs, SLIs, and
error budget policies.
Systems
impacted

Services or service offerings that have a relationship to the selected
service.

CMDB

Open incidents
last 30 days

Day-by-day occurrence of open incidents affecting this service over
the last month.

CMDB

Open alerts last Day-by-day occurrence of alerts affecting this service over the last
30 days
month.

CMDB

Current open
incidents

Listing of active incidents that affect this service.

CMDB

Current open
alerts

Listing of active alerts that affect this service.

CMDB

SolarWinds Observability tab for Service Observability
Dashboard and charts on the SolarWinds Observability tab of the Service Details page in the
SOW.

Note: The X axis on SolarWinds charts use Universal Time Code (UTC) instead of the
user's timezone.

Application dashboard
This dashboard displays performance metrics for the selected service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3879


<!-- page 3880 -->
Service basic metrics
Chart

Description

Data source

Rate

Aggregate rate of
transactions through the
service, per minute.

SolarWinds

Latency

Aggregate duration of
transactions through the
service, in milliseconds.

SolarWinds

Time spent in database calls

Duration of requests to
databases, in milliseconds.

SolarWinds

Time spent in database queries

Time spent querying the
database, in milliseconds.

SolarWinds

Database throughput

Rate of database requests
for this service per minute.

SolarWinds

Compute dashboard
This dashboard displays metrics for hosts related to the service.
Host
Chart

Description

Data source

CPU
utilization

Percent of the host processing power being consumed.

SolarWinds

Memory
utilization

Percent of memory the host is using.

SolarWinds

Disk
utilization

Percent of disk space being used.

SolarWinds

All Active
Servers

Information for all hosts the service is actively using. Select a host
link to view more detailed information.

CMDB

All Active
VM
Instances

Information for all virtual machine instances the service is actively
using. Select a VM link to view more detailed information.

CMDB

Database dashboards
Database metrics are currently not supported for SolarWinds.
Splunk templates for Service Observability
Templates used to create Splunk dashboards in Service Observability. You can edit these
templates as needed.
See Customize Service Observability dashboard templates for more information.
Splunk Overview tab for Service Observability
Information that is displayed on the Splunk Overview tab of the Service Details page in the
SOW.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3880


<!-- page 3881 -->
KPIs section
The KPIs section displays basic performance metrics for the service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.

Chart
name

Description

Data
source

Rate

Aggregate rate of transactions through the service.

Splunk

Error %

Percent of transactions that have an error.

Splunk

Latency

Aggregate duration of transactions through the service, in
milliseconds.

Splunk

Key Transactions charts
The Key Transactions charts show metrics for specific key transactions on the service. The key
transactions are determined by your Application Performance Management (APM) system
configuration.

Chart
name

Description

Data
source

Rate

Each line represents the throughput of a key transaction through the service.
Hover over a point to view the different transaction names.

Splunk

Error %

Each line represents the percentage of errors on a key transaction in the
service. Hover over a point to view the different transaction names.

Splunk

Latency Each line represents the response time for a key transaction on the service.
Hover over a point to view the different transaction names.

Splunk

Contextual information section
The Recent changes table shows changes made to the system that might have an impact on the
service. This data comes from the related configuration items in the CMDB.

Status indicators section
The Status indicators section displays charts for related CIs that might be affecting the service.

Chart name

Description

SLO Error
Budget

Information about your current error budget for this service, as
configured in Service Reliability Management (SRM).

Data
source

CMDB

For more information on error budgets, see Create SLOs, SLIs, and
error budget policies.
Systems
impacted

Services or service offerings that have a relationship to the selected
service.

CMDB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3881


<!-- page 3882 -->
Data
source

Chart name

Description

Open incidents
last 30 days

Day-by-day occurrence of open incidents affecting this service over
the last month.

CMDB

Open alerts last Day-by-day occurrence of alerts affecting this service over the last
30 days
month.

CMDB

Current open
incidents

Listing of active incidents that affect this service.

CMDB

All Active alerts

Listing of active alerts that affect this service.

CMDB

Splunk Observability tab for Service Observability
Dashboard and charts on the Splunk Observability tab of the Service Details page in the SOW.

Application dashboard
This dashboard displays performance metrics for the selected service.

Note: If the dashboards have been customized, they might not reflect the information
shown on this page.
Service KPIs
Chart

Description

Data source

Rate

Aggregate rate of
transactions through the
service, per minute.

Splunk

Error %

Percent of transactions that
have an error.

Splunk

Latency

Aggregate duration of
transactions through the
service, in milliseconds.

Splunk

Service top transactions
Chart

Description

Data source

Rate

Each line represents
the throughput of a key
transaction through the
service. Hover over a point to
view the different transaction
names.

Splunk

Error %

Each line represents the
percentage of errors on a key
transaction in the service.
Hover over a point to view the
different transaction names.

Splunk

Latency

Each line represents the
response time for a key
transaction on the service.

Splunk

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3882


<!-- page 3883 -->
Service top transactions (continued)
Chart

Description

Data source

Hover over a point to view the
different transaction names.

Compute dashboard
This dashboard displays metrics for hosts related to the service.
Host
Chart

Description

Data
source

CPU
utilization

Percentage of CPU currently being consumed by the service.

Splunk

Memory
utilization

Percentage of memory currently being consumed by the service.

Splunk

Disk utilization Percentage of disk space currently being consumed by the service.

Splunk

All Active
Servers

Information for all hosts the service is actively using. Select a host link
to view more detailed information.

CMDB

All Active VM
Instances

Information for all VM instances the service is actively using. Select a
host link to view more detailed information.

CMDB

Database Dashboards
These dashboards display metrics for databases related to the service.
MySQL
Chart

Description

Data
source

Queries Per Number of queries per second the service is sending to the database.
Second

Splunk

Row Locks
Rate

Frequency at which row locks are encountered by transactions from this
service.

Splunk

Buffer Pool
Usage

Usage of the buffer pool to access cached data by this service.

Splunk

Table I/O
Wait Time

Time in milliseconds that the database is waiting on Input/Output
operations on tables sent by this service to complete.

Splunk

Threads

Number of threads used by this service

Splunk

Uptime

Amount of time in (?) that the database has been running since its last
restart.

CMDB

Service Observability data mapping form
Field descriptions for the Observability data mapping form. Use this form to map activated
services in Service Observability to metrics from your application performance monitoring (APM)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3883


<!-- page 3884 -->
instance. Each service can be mapped only once, but can contain exceptions to include all
related entities.

Field

Description

Mapping Name for the mapping. The name should be descriptive so that users understand
name
where the data is coming from.
Services Service to use for this mapping. Each service can be mapped only once.
For version 1.5.0 of Service Observability, services must be activated to be mapped.
To activate a service, see Activate teams and services.
Default
Find
Existing data connection to use for metrics. To add a connection, see Connect a
metrics Service Observability data source.
from this
source
where
source
tag key

Tag key that you want to map to the activated service. If you use more than one tag
to represent a service, you can create an exception. For example, most tags use
service_name except for database metrics, which use service.

source
tag
value

Value that represents the service name. Values can be strings or a variable that
represents fields on the CI for the service. You can use variables on your APM data
as the value to map multiple entities at once. For example, if your APM data uses the
$service_name variable and you enter that as the source tag value, all services
using that value are mapped.

Exceptions
For
entity
type

Entity that uses a different key or value than the default.

Find
Existing data connection to use for metrics. To add a connection, see Connect a
metrics Service Observability data source.
from this
source
where
source
tag key

Tag key that you want to map to the activated service for this entity.

source
tag
value

Value that represents the service name. Values can be strings or a variable that
represents fields on the CI for the service.

Chart error states
Understand the different error states that the charts in Service Observability might display and
how to fix them.

Error message

Fix

Set up this service's observability data
mapping

Observability mapping hasn't been configured
for the service by an admin. See Create and
manage data mappings.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3884


