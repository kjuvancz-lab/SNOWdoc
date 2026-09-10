# Zurich IT Operations Management — Synthetic monitoring

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4104–4121 of 4823

Sections: Synthetic monitoring (p4104)

---

<!-- page 4104 -->
To return to the procedure, see Configure an event pull connector.

Synthetic monitoring
®

The ServiceNow synthetic monitoring application empowers organizations to proactively
manage and enhance the performance and availability of critical services. By simulating user
transactions on API endpoints, this solution identifies performance bottlenecks, helps ensure
up-time, and optimizes user experiences.

Get started

Explore

Configure

Learn about synthetic monitoring

Add users and create and
manage a synthetic monitor

Identify

Reference

Use synthetic monitoring to
identify performance issues

Find reference information
about synthetic monitoring

Helpful resources
Some ServiceNow resources that can provide you with helpful information are:


<!-- page 4105 -->
Best Practices


<!-- page 4106 -->
Synthetic monitoring customer-hosted workflow
Synthetic monitoring workflow

Admins, service owners, and NOC operators use synthetic monitoring in the following way:
1. As a service owner, you determine which endpoints to monitor based on business criticality.
2. As an admin or service owner, you configure locations to run the monitor from.

Note: The ServiceNow hosted location is available by default and doesn't need to be
configured. However, endpoints tested by that location must be publicly available. You
can also run the monitor from an ACC Proxy cluster or a MID Server.
3. As an admin or service owner, you configure the monitor and then after it runs once, review the
results of the tests. If the results aren't successful, you troubleshoot the configuration. You can
also create an alert that fires when a test fails.
4. Synthetic monitoring runs tests based on the monitor's configuration and reports the results of
each test.
5. As a service owner or operator, you monitor the test results and also respond to any generated
alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4106


<!-- page 4107 -->
Synthetic monitoring benefits
Synthetic monitoring benefits
Benefit

Feature

Users

View aggregate monitor information.

View aggregate information
about the monitors.

Operators,
service
owners

View a monitor and its tests.

Operators,
service
owners

Get real-time notifications for outages before
they impact users.

Optionally configure alerts
when tests don't succeed.

Operators,
service
owners

Share insights with stakeholders.

View aggregate monitor
information.

Operators,
service
owners

Update monitors to match your business
needs.

Edit existing monitors,
including deactivation.

Service owner

Embed monitor results in a Service
Observability dashboard.

Use synthetic monitoring with
Service Observability

Service owner

View the synthetic monitoring home page
where you can:
• See an aggregate view of all monitors
• View the status of all monitors.
• Drill down into a monitor's details
Visualize synthetic test results.
View the details page for a monitor where you
can see:
• The status and configuration of the monitor.
• Charts that display test success and
response time.
• A historical log of synthetic test runs,
including details and the response body.
• A listing of alerts associated with the
monitor.

What to explore next
To learn more about configuring and using synthetic monitoring, see:
• Configuring synthetic monitoring
• Identifying system issues with synthetic monitoring
• Synthetic monitoring reference
• Use synthetic monitoring with Service Observability

Configuring synthetic monitoring
Plan and configure your implementation of synthetic monitoring.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4107


<!-- page 4108 -->
Configuration overview
Install synthetic monitoring
You can install the synthetic monitoring application (com.snc.uib.sow_synthetics) with
the admin role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the synthetic monitoring
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
• Confirm that the Configuration items (CI) that you want to monitor exist in the CMDB HTTP
Endpoints [cmdb_ci_endpoint_http] table.
• Confirm that configured credentials exist in the Credentials [discovery_credentials] table if
your endpoint requires authentication.

Note: Synthetic monitoring supports API key credentials, basic authentication
credentials, and OAuth.
Role required: sn_sow_synthetics.synthetics_admin

About this task

The following items are installed with synthetic monitoring:
• Plugins
• Roles
• Tables
For more information, see Components installed with synthetic monitoring.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the synthetic monitoring application (com.snc.uib.sow_synthetics) using the filter criteria
and search bar.
You can search for the application by its name or ID. If you can't find the application, you might
have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.

What to do next

Create synthetic monitoring locations
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4108


<!-- page 4109 -->
Create synthetic monitoring locations
Create a synthetic monitoring location to run a synthetic monitor. If you plan to run monitors from
a ServiceNow Glide instance, you can skip this procedure.

Before you begin

You need at least one of the following:
• A MID Server
• One or more Agent Client Collector (ACC) agent that monitors the health and performance of
the HTTP endpoints to be monitored using synthetic monitoring. If you plan to run tests only
from the ServiceNow AI Platform, you don't need to set up a location.

Note:
◦ If your synthetic monitor is testing a private HTTP endpoint, your location must
only include ACC agents that are within the same network boundaries as the HTTP
endpoint.
◦ If your monitor is testing an HTTP endpoint from different datacenters, cloud providers,
or geographic regions, a different location must be used for each.
Role required: sn_sow_synthetics.synthetics_admin

About this task

Synthetic monitors can be hosted from:
• A MID Server
• A cluster of Agent Client Collector agents
• A ServiceNow Glide instance, as long as all monitored endpoints are publicly available. You
don't need to configure a local instance as a location. It's available by default.
You can create as many locations as needed, but you must have at least one location to create a
synthetic monitor.

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. Navigate to Synthetic monitoring setup > Manage Locations.
3. Select Create a new location.
4. Expand the Location details card and enter a unique name and an optional description for this
location.
The description should clearly state where the servers or agents in this location are running.
For example, US-1-east-cluster.
5. In the Location type field, select either MID Server or Agent Client Collector, depending on
where you want the monitor to be hosted.
6. Expand the Select card and select one or more MID Servers or ACC agents.
7. Select Save.

Note: You can delete locations from the Synthetic Locations menu, which you can

navigate to by selecting All > Synthetic Monitoring > Synthetic Locations. However, you
must first remove any monitors running on that location, either by editing the monitors to
use a different location or deleting the monitors. See Create and edit a synthetic monitor
for more information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4109


<!-- page 4110 -->
What to do next

Create and edit a synthetic monitor
Create and edit a synthetic monitor
Create or edit a synthetic monitor to test the availability and performance of your HTTP endpoints
before your customers discover issues.

Before you begin
• A configuration item (CI) for the endpoint you want to test.
• If you're testing private endpoints or want to run the monitors from your environment, one or
more locations must be created to host the monitor. To create a location, see Create synthetic
monitoring locations.
Role required: sn_sow_synthetics.synthetics_editor or sn_sow_synthetics.synthetics_admin

Procedure
1. Navigate to All > Service Operations Workspace and select the synthetic monitoring
icon (

).

2. On the Overview page, either create a synthetic monitor or edit an existing one.
◦ To create a synthetic monitor, select New.
◦ To edit an existing one, select the link for the monitor you want to edit and then select the
Details tab.
3. On the form, fill in the fields.
a. In the Monitor details section, enter a unique name for the monitor and a description.
b. In the HTTP settings section, fill in the fields.
HTTP settings section
Field

Description

HTTP
method

HTTP method that you want to monitor for the endpoint.

Note: HEAD and OPTIONS methods aren't supported from a MID
Server.

HTTP
endpoint
CI

CI for the endpoint that you want the monitor to test.

Related
service CI

Application service CI related to the HTTP endpoint. The entered value is
used to create or update the CI relationship between the HTTP endpoint and
the application service.

Support
group

Group who is notified and assigned alerts when this monitor fails.

If the endpoint doesn't exist, choose Manage HTTP endpoints in CMDB to
create a CI.

Note: To view this field in the HTTP Endpoints table, use the Synthetic
Monitoring view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4110


<!-- page 4111 -->
Field

Description

Query
String of query parameters to include in the request URL.
parameters
Note: The string shouldn't include the leading question mark.
For example, use id=xyz&customer=myco instead of ?
id=xyz&customer=myco.
Credentials Credential needed if the endpoint requires authentication.
OAuth, Basic Auth, and API keys are supported.
Headers

Key-value pairs for the HTTP request headers. You can add multiple pairs.

Body

Text that is used if the API expects a message body, such as a JSON snippet.

c. In the Locations section, select one or more locations.
Choose a MID Server or Agent Client Collector location, or to run this monitor's test from
your ServiceNow instance, choose Current Instance.

Note: When running tests from your instance, only six tests can be run every minute
for performance reasons.
Choose Create new location to create a location.
For more information on how to create a location, see Create synthetic monitoring locations.
d. In the Assertion section, define a successful test by selecting one or more criteria, an
operator, and a value.

Note: Multiple criteria are joined with an AND phrase, so the test must pass all criteria
to be successful.

Criteria type

Description of success

Status code

Endpoint returns the given status code.

Response time (in ms)

Endpoint response time is less than the
given value.

Response body

Endpoint sends a string value in the
response body that matches the selected
operator and given value.

e. In the Frequency section, enter the number of minutes between each test run.
f. Optional: To have an alert sent through Event Management when a test fails:
▪ In the Alert settings section, activate the toggle switch.
▪ Select an alert severity for a test failure.
▪ Add tags to the alert. For more information about using tags in alerts, see Tag cluster alert
grouping.
4. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4111


<!-- page 4112 -->
Result

The Overview page for the synthetic monitor displays the results of the tests that the monitor
runs. See Identifying system issues with synthetic monitoring for more information.
Manage synthetic monitors
Edit or delete synthetic monitors after creating them.

Before you begin

Role required: sn_sow_synthetics.synthetics_editor

Procedure
1. Navigate to All > Service Operations Workspace and select the synthetic monitoring
icon (

).

2. Follow these instructions to edit a monitor.
Option

Description

From the synthetic monitoring landing page,
select one or more monitors and select Edit.
See Create and edit a synthetic monitor.

Note: Current values aren't shown in
Edit multiple monitor configurations

the fields. If you don't edit a field, the
original values remain.
If you want to edit properties other than cre­
dentials, location, or alert settings, you must
edit a single monitor at a time from the De­
tails tab.

Edit a single monitor configuration

From the synthetic monitoring landing page,
select a monitor to open it and then select the
Details tab to edit. See Create and edit a syn­
thetic monitor for more information.

Delete monitors

From the Synthetic monitoring landing page,
choose one or more monitors to delete and
select Delete.

Identifying system issues with synthetic monitoring
Tests run by synthetic monitors enable service owners and operators to view service endpoint
performance at scale.

Overview of using synthetic monitoring
As a service owner, you can use synthetic monitoring to monitor your service's endpoints,
verifying that they're available and performing as expected. You can be notified when synthetic
tests fail, enabling you to mitigate issues quickly. You can see trends in HTTP API success rates
and response times.
As an operator, you can use synthetic monitoring as part of triaging issues. When you learn a
service is reported to have issues, you can view test results for that service's endpoints. If tests
are failing or response times are slow, that might be something to investigate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4112


<!-- page 4113 -->
View aggregate information about the monitors
The synthetic monitoring landing page shows an overview of all created monitors, including
inactive monitors.
From here, you can see the status for all your monitors. Selecting a card at the top filters the list of
monitors. For example, you can view only the monitors that have failed or that are in an unknown
state.
By default, the list of monitors is sorted by the timestamp in the Updated column. You can select
a different column header to sort by that category.
Selecting a monitor lets you view details about the monitor's tests, including details,
configuration, and associated alerts.

View a monitor and its tests
To view a monitor's details and the results of its tests, select a monitor from the synthetic
monitoring landing page. The Monitor details page provides key information needed to
understand how the monitor is performing.
Use the information in the header to understand the basic health of the monitor, including its
status and when it last ran a test.

View individual tests
The Metrics card displays two charts to help you understand the health of each test the monitor
has run. The Failed tests chart displays each test with a value of 0 when it was successful and a
value of 1 when it failed. Hover over a point on the chart to view further details.
The Response time chart shows the amount of time in milliseconds that it took to receive a
response from the endpoint. Hover over a point on the chart to view details.

Note: Test results are retained for 21 days.
The Monitor result history table lists each test. By default, the table is sorted from newest to
oldest by the timestamp. You can sort by any column to help find issues. For example, you can
sort by Result to see all failures together or you can sort by Response time to view the tests with
the highest latency.
If a monitor was configured to generate an alert when it fails, a link to the alert displays in the
Alert column. Select an alert link to view its details.
When you see a failure or high latency, select a test to view details, including the response body,
which might help explain any issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4113


<!-- page 4114 -->
Response body in the details modal

View aggregate monitor information
View information about all your synthetic monitors.

Before you begin

Role required: sn_sow_synthetics.synthetics_viewer, sn_sow_synthetics.synthetics_editor,
sn_sow_synthetics.synthetics_admin

Procedure
1. Navigate to All > Service Operations Workspace and select the synthetic monitoring
icon (

).

2. To filter the list of monitors, select a card at the top of the page.
For example, to view only monitors that have failed tests, select the Failed card.
3. To view details about each test run by the monitor, select a monitor name.
The monitor's Overview tab opens. For more information about this page, see View a monitor's
test results.
4. To export the list of monitors, select Export.
You can export to the following file formats:
◦ XLSX
◦ CSV
◦ JSON
◦ PDF
View a monitor's test results
View the results of tests run by a monitor, along with configuration details, and related
configuration items (CIs).

Before you begin

Role required: sn_sow_synthetics.synthetics_viewer, sn_sow_synthetics.synthetics_editor,
sn_sow_synthetics.synthetics_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4114


<!-- page 4115 -->
Procedure
1. Navigate to All > Service Operations Workspace and select the synthetic monitoring
icon (

).

2. Select a monitor from the list of all monitors.
3. View the overall health of the monitor in the header, which shows its status, and when it was
last run and updated.
4. View health metrics for the monitor from the Metrics card.
The Failed tests chart displays each test with a value of 0 when successful and a value of 1
when it failed. The Response time chart shows the amount of time in milliseconds that it took
to receive a response from the endpoint. Hover over a point on the charts to view details.
◦ To change the time period, use the drop-down menu.
◦ To refresh the chars, use the context menu.
5. View the status of each test in the Monitor result history card.
To view the details for a test, select its timestamp. For more information about the test details,
see View test details.

Note: If your monitor uses OAuth and a test fails with a 4xx error, it may be because your
refresh token expired. Re-authenticate by visiting the OAuth credential page and clicking
the credential link.
To view active alerts created by the monitor, select the Alert link to open its details.

Note: Filtering the list affects the data displayed in the metric charts.
View test details
View the results of an individual synthetic test run by a monitor.

Before you begin

Role required: sn_sow_synthetics.synthetics_viewer, sn_sow_synthetics.synthetics_editor,
sn_sow_synthetics.synthetics_admin

Procedure
1. Navigate to All > Service Operations Workspace and select the synthetic monitoring
icon (

).

2. Select a monitor from the list of all monitors.
3. Select a test from the list of tests.
The modal displays information about the test including a response body. In this example, it
shows that the request was sent to a bad gateway.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4115


<!-- page 4116 -->
Note: If your monitor uses OAuth and a test fails with a 4xx error, it may be because your
refresh token expired. Re-authenticate by visiting the OAuth credential page and clicking
the credential link.

View alerts for a synthetic monitor
View all the current active alerts for your monitors.

Before you begin

Role required: sn_sow_synthetics.synthetics_viewer, sn_sow_synthetics.synthetics_editor,
sn_sow_synthetics.synthetics_admin

About this task

You can view open alerts from all your monitors by selecting the Open Alerts card on the
synthetic monitoring home page. To view a single alert, select the alert link from the resulting list.
To view alerts for a specific monitor, follow this procedure.

Procedure
1. Navigate to All > Service Operations Workspace and select the synthetic monitoring
icon (

).

2. Select a monitor from the list of all monitors and then select the Alerts tab.
The Alerts tab shows the alerts for the monitor. Select an alert to view details.

Note: The alert shows the impacted service associated with the monitor. If for some
reason this field isn't populated, see Impacted Service not appearing in alerts.

Synthetic monitoring reference
Reference topics provide additional information about the synthetic monitoring application, such
as components installed and page details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4116


<!-- page 4117 -->
Components installed with synthetic monitoring
Several types of components are installed with activation of the synthetic monitoring plugin,
including tables and user roles.

Roles installed
Role

Description

Synthetic monitor viewer

Views test
configurations and
their results.

[sn_sow_synthetics.synthetics_viewer]

Contains roles

• cmdb_read
• sn_sow.sow_user
• agent_client_collector_user
• sn_sow_synthetics.credential_reader

Synthetic monitor editor
[sn_sow_synthetics.synthetics_editor]

Synthetic monitor admin
[sn_sow_synthetics.synthetics_admin]

Creates and edits
tests. Views test
configurations and
their results.

Assigns roles. Creates
and edits tests. Views
test configurations and
their results.

• credential_admin
• sn_cmdb_editor
• sn_sow_synthetics.synthetics_viewer

• agent_client_collector_admin
• sn_sow_synthetics.synthetics_editor
• sn_sow_itsm_admin.sow_admin_user

Synthetic monitor credential reader
[sn_sow_synthetics.credential_reader]

Used internally to read None
from the Credentials
[discovery_credentials]
table.

Synthetic monitor event writer

Used internally to
communicate with the
[sn_sow_synthetics.synthetics_event_writer] MID Server.

None

Tables installed
Table

Check

Description

Configuration information for synthetic checks.

[sn_synthetics_check]
Check Execution Location

Execution location configuration for synthetic
checks.

[sn_synthetics_check_execution_location]
Single API

Additional configuration information and last run
results for single API synthetic checks.

[sn_synthetics_check_single_api]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4117


<!-- page 4118 -->
Table

Description

Single API Header

Key value pairs of requests headers for single API
synthetic checks.

[sn_synthetics_check_single_api_header]
Single API to Policy
[sn_synthetics_check_single_api_policy]

Single API synthetic test data and its
corresponding Agent Client Collector (ACC)
policies.
Results from each synthetic check run.

Single API Result
[sn_synthetics_check_single_api_result]

Definitions of the ACC Agent Proxy Clusters
available for synthetic monitoring. Extends the
Proxy Agent Cluster [sn_agent_cluster] table.

Synthetic Private Locations
[sn_synthetics_private_location]
Synthetic monitoring properties

Synthetic monitoring includes the following properties.
These properties are available for synthetic monitoring.

Note: To open the System Properties [sys_properties] table, enter
sys_properties.list in the navigation filter.
Properties for synthetic monitoring
Property

Description

sn_sow_synthetics.logger

Controls logging output. Valid values are:
• debug
• info
• notice (default)
• warning
• err
• crit

Domain separation and synthetic monitoring
Domain separation is supported for synthetic monitoring. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: Basic

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4118


<!-- page 4119 -->
• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
For more information on support levels, see Application support for domain separation

.

Domain separation and synthetic monitoring overview
Domain separation is present in all aspects of the synthetic monitoring application. Users
belonging to a specific domain see only the data existing in their own domain.

How domain separation works in synthetic monitoring
When data is separated by domains in synthetic monitoring, users can only configure and see
the monitoring data in their own domain. By default, all users and records are set to the parent
domain unless the admin assigns them to a specific domain.
You define the domain-separated environment when you configure your data inputs. All relevant
records and data processing in the synthetic monitoring program flow reside in the same domain
as the data input. The domain name of a data input appears in the Domain column that is
displayed in the tables in your instance.
Using domain separation in your instance is transparent to synthetic monitoring. The application
manages all aspects of the data, such as the monitor configurations and results. When a
property is changed, the new value affects new sources only in the specific domain.
When setting up Agent Client Collector (ACC) for non-hosted synthetic checks, each domain
that supports non-hosted synthetics requires its own ACC cluster and MID Server. The ACC
cluster and MID Server must be created in a leaf domain.
Related topics
Domain separation for service providers
Troubleshoot synthetic monitors
Read these topics to understand how to fix common issues in synthetic monitoring.
Upgrade issues
What to do when monitors don't work after upgrading synthetic monitoring.

Condition
After upgrading synthetic monitoring, monitors remain in unknown state.

Cause
After upgrading synthetic monitoring, if the monitor is hosted on a MID Server, the server must
be restarted to re-recognize the hosted monitors.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4119


<!-- page 4120 -->
Remedy
Restart the MID Server. See Manually start, stop, and restart a MID Server

.

OAuth issues
Learn how to fix OAuth token refresh issues.

Condition
OAuth token doesn't refresh as expected.

Cause
Your OAuth provider and server have different refresh time periods. Refresh time periods are
based on the OAuth provider. When creating an OAuth connection, you configure it to have an xamount of time before needing reauthentication. If that configured amount of time isn't the same
as your provider's, your token might require a refresh sooner or later than expected.

Remedy
Refer to your OAuth provider's documentation when configuring OAuth. See OAuth inbound and
outbound authentication
for more information.
Impacted Service not appearing in alerts
When a test fails for a monitor and you have configured an alert to trigger, the alert record should
show the impacted service. There are a few reasons why this field might not be populated.

Condition
The Impacted Services field isn't populated on an alert record from a failed synthetic monitor.
Following are the causes and remedies for the different reasons the field isn't populated.

Cause: Service isn't a mapped service
The service isn't a mapped service.

Remedy
This field only populates when the associated service is configured as a mapped application
service in the Configuration Management Database (CMDB).

Cause: The field didn't have time to populate
Impacted Services are populated at alert creation.

Remedy
Close and reopen the alert so new mappings are applied.

Cause: Race condition encountered
If an alert triggers immediately, the platform might not have time to establish the necessary
CMDB relationships before the alert attempts to populate impacted services.

Remedy
Try reloading the page or consider running tests from the MID Server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4120


<!-- page 4121 -->
Cause: Delayed population
The relationship might take up to a minute to appear, which means the field might not populate
until after the initial alert creation event.

Remedy
Check back after a few minutes.
Synthetic monitoring Landing Page
Read the following to understand what is displayed on the Synthetic monitoring landing page
where you can view aggregate information about your synthetic monitors.

Aggregate information
The cards show aggregate information for all monitors, whether they're active or not. Select a
card to filter the Monitors list.
Aggregate cards
Card title

Description

Total
Total number of monitors created.
monitors
Passed

Number of total monitors that have returned the value that was set as the monitor's
assertion, for example a status code of 200.

Failed

Number of total monitors that returned a value other than what was configured as
the assertion.

Pending

Number of total monitors that are in the Pending state. Monitors are set to Pending
before the first test runs.

Paused

Number of total monitors that are in the Paused state. Paused monitors are monitors
that have been set to Monitor disabled on the Configuration page.

Unknown Number of total monitors that aren't running due to an issue with the related Agent
Client Collector (ACC) proxy.

Monitor list
By default, this list displays all monitors that have been created. You can select a card at the top
of the page to filter to a list of monitors with that state. Select a monitor to view its details page.
Details page of a synthetic monitor
Read the following to understand how to use the Details page of a synthetic monitor to view the
results of its tests.

Header
The header provides an overview of the monitor.

Item

Description

Monitor
name

Name given to the monitor when it was created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4121


