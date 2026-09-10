# Zurich IT Operations Management — Optimizing Metric Intelligence

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4693–4716 of 4823

Sections: Optimizing Metric Intelligence (p4693)

---

<!-- page 4693 -->
Procedure
1. Activate the Domain Support – Domain Extension Installer plug-in.
2. Configure the MID Server for Operational Intelligence as a user that belongs to the desired
domain with the role ‘mid_server’ assigned to it.
3. Configure a MID Server distributed cluster in the domain you desire and add Operational
Intelligence MID Servers that belong to the same domain.
For more information about setting up MID Servers for Metric Intelligence , see MID Server
and MID Server distributed cluster for Metric Intelligence.

Note: The Event Management’s binding events are configured using the domain of
the logged-in MID Server user. Once the process has finished, the record’s domain is
updated to use the domain from the CI so that any user within that domain can see the
metric data.

Optimizing Metric Intelligence
You can perform a variety of tasks to optimize your use of Metric Intelligence.

Create an anomaly test rule
To use the anomaly model testing, create an anomaly test rule in which you specify up to 20
metric series to test anomaly detection for. Run the anomaly test, and after it completes, use the
provided URL to open the Insights Explorer which is pre-loaded with the model testing results.

Before you begin

Role required: evt_mgmt_user

Procedure
1. Navigate to All > Event Management > Anomaly Detection > Anomaly Model Testing.
2. Select an existing anomaly test rule to edit and run again, or click New and fill out the Anomaly
Test Rules form.

Field

Description

Name

Name for the model test rule.

Applies to

The table from which to select CI/metric pairs
for the model test rule. The table used is
Metric To CI Mapping [sa_metric_map].

Rule

Filter conditions to specify pairs of CIs/
metrics for the anomaly model testing. If the
rule yields more than 20 pairs of CIs/metrics,
then the list is truncated to 20.

Start date/End data

The time period for which to apply the
anomaly detection testing. The time period
must be within the past 7 days.

Status

Status of the test, automatically updated
by the system during a test run. Status is
initially Scheduled and eventually changes to
Complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4693


<!-- page 4694 -->
Field

Description

URL

URL to the Insights Explorer in which the
anomaly model test results are pre-loaded.

Notes

Logging summary, automatically updated by
the system with details of each test run of the
anomaly test rule.

3. Click Run Anomaly Test.
During the test run, the Status, URL, and Notes fields are automatically updated to reflect the
progression of the job.
4. After Status changes to Complete, click the URL link to open the Insights Explorer to see the
results of the test.

Result

The bounds and the chart for the anomaly model test, appear in faint colors in
Insights Explorer. Also, the upper and lower bounds that are calculated by the
test, use a line pattern that is different than line pattern used for actual anomaly
detection results. These differences let you distinguish between actual anomaly
detection and anomaly model test results, if both are selected in the chart settings.

What to do next
• Modify the date range for the test or choose different time series, and click Run Anomaly Test
again to continue and fine-tune the model.
• Click the Chart Settings icon for a chart to toggle the display of statistics and aggregations
on the chart. Select Show Bounds and Show Anomaly Scores in the Anomaly Test Statistics
and in the Anomaly Statistics sections, to display test results next to actual anomaly detection
results.

Note: Anomaly Model Testing results might be very similar to actual anomaly detection
results. If you configure the chart to display both at the same time, as you move the
mouse over the chart, it might be difficult to identify points of differences.
• When you are satisfied with the anomaly test results, enable anomaly detection in the
production environment, for the metrics and CIs specified in the test. See Choose and
configure metrics to monitor for more details.
Related topics
View metric values in the Insights Explorer
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4694


<!-- page 4695 -->
Specify custom upper and lower metric bounds
Use the Bounds Settings wizard to override learned control bounds by specifying custom upper
and lower bounds for an Metric Intelligence metric.

Before you begin

Role required: evt_mgmt_admin

About this task

Metric Intelligence calculates upper and lower control bounds for metrics using statistical
models learned from historical metric data. Upper and lower bounds are then used in the
analysis for detecting anomalous CIs or resources, affecting anomaly scores. Based on historical
data, some CIs, resources, or metrics might have values that you specifically want or do not want
to be notified about, despite the calculated ranges. For example, trying to meet an SLA without
allowing a metric to exceed or be below a certain value for too long without being notified. When
concrete upper or lower bound values are known for a metric, you can configure that metric with
custom bounds to override the calculated bounds. For example, a CPU metric which does not
exceed 85%.
Use the Bounds Settings wizard to specify custom static bounds or ranges of bounds, and to
preview anomaly analysis of actual data based on the custom settings. The metric class and the
configuration setting rule that custom bounds must be associated with, are both automatically
generated by the Bounds Settings wizard.
In the Bounds Settings wizard, you can choose one of the following options for custom control
bounds:
Static upper and lower bounds
Custom static upper and lower bound values are used as the control bounds in
effect, completely overriding the learned values for upper and lower bounds for the
metric. The median of the metric data must be within the specified static bounds
range, otherwise the static bounds are not applied.
Ranges for upper and lower bounds
Custom upper and lower bounds, each expressed as a range of values. The bounds
in effect are a combination of the custom minimum and maximum values that define
the bound range, and the learned upper and lower bounds:
• If a learned bound value for a point in time is within the custom range of upper or
lower bound, then the learned bound value is in effect.
• If a learned bound value for a point in time is outside the custom range, then
the Max or the Min values of the custom range are in effect respectively. If the
learned value exceeds the custom range, then the custom Max value is in effect,
and if below then the Min custom value is in effect.
When a metric value is outside a control bound, the deviation from the control bound is
normalized by a width value that the system calculates from data. Lower and upper width values
determine how much a metric value needs to exceed the control bounds to be anomalous.
Changing a width for the control bounds affects the speed of reaching a high anomaly score and
being notified about the anomaly. In addition to setting custom control bounds, you can override
width values by specifying custom deviation and time values that the system uses to calculate
custom widths values.
The system stores custom control bounds and custom widths for a metric in a metric class.
Custom values in a metric class override the learned bounds and widths for the metric, and are
then used in subsequent anomaly analysis.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4695


<!-- page 4696 -->
Procedure
1. Navigate to All > Event Management > Anomaly Detection > Bounds Settings.
2. In the Bounds Settings list view, click Add to open the Bounds Settings wizard.
3. On the Select Scope tab, configure the following settings and then click Next.

Field

Source Metric Type(s)

Description

Source metric type that this bounds setting
applies to.
Select an item from the drop-down list, and
then click the Add Source Metric Type icon
(+) to add the selected item to Selected
Source Metric Types.

Scope

Scope of CIs or resources that this bounds
setting applies to.
You can set the scope to All CIs, Specific CI
or class, or Specific Resource or Resource
class. Depending on the setting, you can
then further filter the scope.

4. On the Apply Bounds Settings tab, configure the following settings and then click Next.

Field

Description

Bounds setting name

Unique name for this bounds setting.

Bounds type

Method for specifying the custom static
bounds:
◦ Set static upper and lower bounds
◦ Set ranges for upper and lower bounds

Show advanced settings

The following fields appear:
◦ If lower bound is and And metric value is
below lower bound by
◦ If upper bound is and And metric value is
above upper bound by
◦ Send critical alert after duration (min.)
Specify the deviation for anomalous values
(in absolute values), and the duration for
sending an anomaly alert. These values are
used internally to calculate the width value
for the metric.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4696


<!-- page 4697 -->
Field

Description

Note:
◦ If the metric class specified for
the bounds setting, is configured
with width override values from an
upgraded release, you cannot set
advanced settings. To set advanced
settings, accept the notification that
appears, agreeing that those width
override values be deleted.
◦ All fields must contain values. If you
do not want to set a metric value, you
must enter 0 in either the And metric
value is below lower bound by or in
the And metric value is above upper
bound by field.
◦ The minimum number of minutes you
can enter is 2.
Lower bound

Static lower bound value that replaces the
learned lower bound for the metric. Applies
to the Static upper and lower
bounds setting.

Upper bound

Static upper bound value that overrides the
learned upper bound for the metric. Applies
to the Static upper and lower
bounds setting.
Value must be greater than Lower Bound.

Lower Bound Range

Min and Max of the custom lower bound
range. Applies to the Set ranges for
upper and lower bounds setting.

Upper Bound Range

Min and Max of the custom upper bound
range Applies to the Set ranges for
upper and lower bounds setting.

5. On the Preview and Confirm tab:
a. Select a Source Metric Type.
b. Optional: Select a Metric Type for the preview.
c. Optional: Enter a CI Name and a Resource Name that you want to include in the preview.
If you specify a CI or a resource, it must be within the scope that was previously specified.
d. Click Preview to perform anomaly detection for the specified metric and CI, using the newly
specified custom bounds.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4697


<!-- page 4698 -->
e. Examine the preview results and if the results are as expected, click Finish.
Otherwise, go back to the previous Apply Bounds Settings tab, adjust settings, and then
preview again. The preview results are a stripped-down version of anomaly model testing.
For more details about the results, and changing chart settings, see Anomaly model testing.
Related topics
Create a configuration settings rule

View metric to CI and resource binding
View the metric to CI and resource binding results, including details for failed bindings which
you can use to mitigate the failure. If Metric Intelligence cannot map and bind a metric to a CI
or to a resource, then that CI or resource is not included in anomaly detection until it is properly
mapped.

Before you begin

Role required: evt_mgmt_admin
If resource binding is not enabled, then no resource binding results appear.

About this task

Metric Intelligence uses event rules to map metric data with the specific CI or resource that is
associated with the metric event. The results of these mappings are stored in the Metric to CI
Mappings [sa_metric_map] table. If mapping fails, then the binding status for the metric indicates
the general reason for the failure and further details about the failure are provided. Examine the
details for a mapping failure and mitigate the problem to improve accurate and effective metric
data processing.
• If mapping to a CI is successful, then the mapped CI appears in the Configuration Item
column. If resource binding was attempted but failed, then the mapped CI does not appear,
even if the mapping to a CI was successful. Missing or duplicate CIs can cause CI mapping to
fail.
• If mapping to a resource is successful, then the mapped resource appears in the Resource
column. Missing a resource table that is mapped to the CI type to which the event is bound, or
a missing resource_path attribute in the event, cause resource binding to fail.
Records in the CI Mappings [sa_metric_map] table remain in effect for 24 hours (by default, if
mapping to the CI is not successful), or for 5 days (by default, if mapping to the CI is successful).
Later, if within that time period raw data arrives for a metric/CI pair that already has a record, the
existing mapping is used to match the data to an existing CI. After Metric to CI Mappings records
expire, incoming new raw data requires remapping. These records expire when:
• The 24-hour or 5-day cycle ends.
• An event rule has changed — Triggering an immediate expiration of the respective mapping
record.
Adjusting mappings to reflect the addition or removal of CIs by Discovery, takes effect only upon
the beginning of the next cycle.

Procedure
1. Navigate to All > Event Management > Anomaly Detection > Metric to CI.
The Metrics to CI Mappings page appears.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4698


<!-- page 4699 -->
Column

Description

Source

Data source for the metric.

Metric Type Id

Metric that is measured for the CI, such as
disk% and cpu%.

Metric Identifier

A string in the form of CI/resource/metric that
uniquely identifies a CI and a metric.

Configuration Item

The CI in the CMDB that is mapped to a
metric. A missing value indicates that:
◦ The mapping of the metric to a CI was
unsuccessful.
◦ Resource binding is enabled, but has
failed. Configuration Item is missing even
though binding to a CI was successful.

Resource

The resource that is mapped to a metric. If
resource binding is enabled, then a missing
value indicates that the mapping of the
metric to a resource was unsuccessful.

Expiration Date

Record expiration date.

Anomaly Detection Action Level

The level of anomaly detection processing
and analysis applied to CIs and metrics. The
available options are:
◦ Metrics Only: Only gather metrics from the
data source without any further processing.
◦ Bounds: Includes the Metrics Only
processing level, and also creates a
statistical model and shows bounds in
Insights Explorer.
◦ Anomaly Scores: Includes the Bounds
processing level, and also calculates and
displays anomaly scores.
◦ Anomaly Alerts: Includes the Anomaly
Scores processing level, and also creates
anomaly alerts, as applicable.
◦ IT Alerts: Includes the Anomaly Alerts
processing level, and also creates IT alerts
which are based on anomaly alerts, as
applicable.

Binding Status

Status of the mapping of the metric to a CI or
resource.
A CI Found status indicates that the mapping
was successful, in which case the mapped CI
appears in the Configuration Item column.
Any other status indicates that the mapping
failed, and a general reason for the failure
is provided. Further details about the failure

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4699


<!-- page 4700 -->
Column

Description

are provided in the Binding Failure Reason
column.
Binding Failure Reason

Specific details about the mapping that
failed, such as class and host names, and the
queries that were used.
Click the respective Event link to see further
details in the Processing Notes field.

2. Examine the Binding Status and Binding Failure Reason as appropriate.
Use the details provided to remediate the problem:

Binding Status

Remediation

Host CI Missing

Run Discovery or use any other method to
populate the CMDB with the missing host CI.

Non-Host CI Missing

Run Discovery or use any other method to
populate the CMDB with the missing nonhost CI.

Non-Host CI Duplicate

Use the Duplicate CI Remediator
remediate the duplication.

to

Dependent CI Duplicate

Use the Duplicate CI Remediator
remediate the duplication.

to

Dependent CI Missing

Run Discovery or use any other method
to populate the CMDB with the missing
dependent CI.

Duplicate Metric Map Entry Exists

Check Binding Failure Reason and compare
the metric identifiers associated with the
duplicate metric map entries. If metric
identifiers have changed (for example, an
identifier was added), set the entry for this
series in the CI Mappings [sa_metric_map]
table to expire or delete the entry.
Also check the associated event rule and
ensure that it extracts the attributes correctly
and that it does not extract the same CI for
two different metric identifiers.
This error might appear when 2 different
metric identifiers map to the same CI/metric.

Resource ID Not Found

Verify that the CI Type To Resource Class
[sa_ci_type_to_resource_class] table
contains a mapping record for the respective
CI type, or for one of its parents. Then ensure
that a table with the name of resource class
for this record, exists.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4700


<!-- page 4701 -->
What to do next

Group Binding Failure Reason by Binding Status to create a summary report with the number of
records per failure category. Use this report to efficiently remediate the problems.
Related topics
Creating an event rule to map metrics to specific CIs

Disable a metric for a CI
Metric Intelligence can be configured to collect significant amounts of data, some of which might
not be necessary. To improve performance, you can disable a specific metric for a specific CI to
stop processing data related to the specified metric and CI.

Before you begin

Role required: evt_mgmt_admin

About this task

Note: The Active setting (true or false) for a source metric in the Monitoring System
Metric Types [sa_source_metric_type] table takes precedence over the setting for the
corresponding metric in the Metric To CI Mappings [sa_metric_map] table. If a source
metric type in the Monitoring System Metric Types [sa_source_metric_type] table is
disabled, all records related to the corresponding metrics are removed from the Metric To
CI Mappings [sa_metric_map] table.

Procedure
1. Navigate to All > Event Management > Anomaly Detection > Metric to CI.
2. Locate the record for the metric/CI that you want to disable, and set its Active column to false.

Disable event collection
For performance reasons, you might want to disable the collection of events from a data source
from which metric data is also collected. You can disable event collection for data sources such
as Nagios XI server, SolarWinds monitoring system, and Zabbix server.

Before you begin

Role required: evt_mgmt_admin

Note: To restart event collection after it has been disabled, you will need to restore the
connector's original script.

Procedure
1. Navigate to All > Event Management > Integrations > Connector Instances.
2. Select a connector instance for the data source for which to disable event collection.
For example, select a connector instance for Nagios, SolarWinds, or Zabbix.
3. Set Event collection schedule (seconds) to a large value such as 20,000,000.
Such setting avoids unnecessary communication with the MID Server, optimizing performance.
4. Click Update.
5. Navigate to MID Server > Script Includes and extend the connector's script (such as
NagiosMetrics_JS, SolarWindsJS, or ZabbixJS) by overriding the execute
method.
Add a code snippet such as the following, and then click Update:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4701


<!-- page 4702 -->
Example: Snippet for Nagios
var NagiosJSCustom = Class.create();
// Extending Nagios default script
NagiosJSCustom.prototype = Object.extendsObject(NagiosJS, {
// Override execute method
execute: function() {
var retVal = {};
retVal['status'] = SUCCESS.toString();
retVal['error_message'] = "Disabled by custom Class,
'Last event collection status' will be 'error' and this is
normal. To achieve success status, enable event pull in custom
class(NagiosJSCustom)";
return retVal;
});
For the SolarWinds connector use:
var SolarWindsJSCustom = Class.create();
// Extending solarwinds default script
SolarWindsJSCustom.prototype =
Object.extendsObject(SolarWindsJS, {
For the Zabbix connector use:
var ZabbixJSCustom = Class.create();
// Extending zabbix default script
ZabbixJSCustom.prototype = Object.extendsObject(ZabbixJS, {

Configure anomaly score thresholds
Metric Intelligence scores anomalies on a range 0-10. This range is broken down to the five levels
of event severities, each represented by a different color in the Insights Explorer and in the
Anomaly Map. You can configure the anomaly score threshold for each level of severity.

Before you begin

Role required: evt_mgmt_admin

About this task

Anomaly score thresholds are defined in the table Anomaly Score to Event Severity Map
[sa_metric_anomaly_score_to_event_severity_map]. For example, by default, anomaly scores
from 8 through 9 are severity 2 (Major), and are displayed by dark orange color in the Insights
Explorer and in the Anomaly Map.
For information on the event severities that each number corresponds to, see Event severities.

Procedure
1. Navigate to All > Event Management > Anomaly Detection > Anomaly Score to Severity
Mapping.
2. In the Metric Anomaly Score to Event Severity Maps list view, double-click the event severity
that you want to modify.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4702


<!-- page 4703 -->
3. Modify the range of anomaly scores that map to the respective event severity.
4. Click Update.

View anomaly alerts
Anomaly alerts indicate deviation from projected metric values for monitored CIs. Anomaly
alerts are separate from the regular IT alerts, and are not displayed in the Service Operations
Workspace. You can define an anomaly alert promotion rule to generate an IT alert that is based
on anomaly alerts.

Before you begin

Role required: evt_mgmt_user

About this task

The statistical model is used to calculate standard deviations, upper and lower bounds, and
statistical outliers which are then used to detect anomalies. An anomaly occurs when metric
values are out of the projected values according to the statistical model. The system monitors the
frequency and persistence of statistical outliers across time to compute a score between 0-10
that indicates how abnormal a deviation is.
Metric Intelligence constantly generates anomaly alerts whenever the anomaly score is above
zero. If there is a score that is above four and which has changed from the previous score, then
it is sent to the instance. On the instance, the entire sequence of anomaly scores over time can
then be displayed in the Insights Explorer.
Metric Intelligence monitors historical data to ensure that metric bounds are accurate and that
the alerts close when the anomalous behavior stops. Metric Intelligence also ignores irrelevant
anomalies based on the metric's labels. For example, if the available CPU increases from its
upper bound of 50% to 60%, the available label is identified as an indicator that the behavior
should not register as an anomaly. This is because the increase in available CPU represents a
favorable outcome, even though the metric of 60% would otherwise represent an anomaly.

Procedure
1. Navigate to All > Event Management > Metrics > Anomaly Alerts.
2. In the Alerts Anomalies list view, double-click an alert that you want to view.
Information about an anomaly alert includes details such as the metric value, promotion
parameter, events relevant to the alert (which appear in the alert's work notes), and upper and
lower bounds (lower bounds cannot be less than 0). Description includes details about why
the anomaly alert was generated, and other details such as the metric name and the anomaly
score.

What to do next

Create an Advanced Promotion Engine Definition, to define the conditions which must be met
to promote anomaly alerts to IT alerts. For details, see Create a definition for the Advanced
Promotion Engine.

View metric values in the Insights Explorer
Metric Intelligence calculates statistics for CI metric data. Insights Explorer displays these metric
values as metric charts for the CIs in the CMDB. Insights Explorer lets you overlap any metrics for
any CIs in a single chart to create a multi-layered view of metric values across a time range.

Before you begin

Role required: evt_mgmt_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4703


<!-- page 4704 -->
About this task

The Insights Explorer provides a canvas to which you can drag various metrics for CIs and create
charts. You can place a single metric on the canvas, for an individual metric for a CI. For a more
comprehensive chart, you can layer several metrics for a single CI or for different CIs to create a
multi-metric chart. In such layered chart, each metric is distinguished by a unique color, which
lets you compare metric values across CIs within a specific time range.
Insights Explorer displays metric boundaries according to the most recently configured model.
Therefore, legacy anomalies from a previous build may still appear as anomalies, even though
according to the current boundaries, the alert does not qualify as an anomaly.
You can also access the Insights Explorer from the following maps:
• View metrics in a Dependency Views map
• View metrics from a business service map
Insights Explorer

If the host name of the CI is available, it appears underneath the CI name. Host name is
populated by retrieving the node information from the generated binding event as part of metric
binding.
To navigate to a CI for which to display metrics:
• Use Hottest Configuration Items (

) to quickly access the 10 most anomalous CIs.

• Use Configuration Items ( ) to create a separate custom list of any CIs from the CMDB and
then add the metrics for these CIs to the canvas.
• Use Application services (
) to create a custom list of application services that let you drill
into the CIs of these services. You can then add metrics for these CIs to the canvas.
• Use CMDB Groups (
) to create a custom list of CMDB Groups that let you drill into the CIs of
these groups. You can then add metrics for these CIs to the canvas.
The following colors, which are based on color settings for alert severities, indicate anomaly
severities:
Red
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4704


<!-- page 4705 -->
Critical severity (highest severity).
Orange
Major severity.
Yellow
Minor severity.
Blue
Warning severity (lowest severity).
Green
Informational. No severity.
The dots at the upper left on the CI icons indicate general anomaly tracking status:
• Grey: Metrics are being tracked for the CI, but none of those metrics have ever had an
anomaly.
• Green: Metric for CI had at least one anomaly in the past, but anomaly score is currently 0.
• Colored: Corresponds to the last recorded severity level according to the configuration of the
color band ranges.
• No dot: There are no metrics for the CI and there is no data to drill into.

Note: Configuration Items and Application Services are likely to include CIs for which
there is no metric data.
Metric Intelligence does not track changes to an anomaly score if it is within the green band
range.
As you create charts, a legend for each series chart automatically appears underneath the chart.
For a single-metric chart, the legend has entries for the aggregations in the chart. For a multimetric chart, the legend has entries for the metrics in the chart.
Modifications in the Insights Explorer remain during the session, and once the Insights Explorer
is refreshed it returns to its initial state.

Procedure
1. Navigate to All > Event Management > Metrics > Insights Explorer.
2. Click a CI to drill down to its associated list of metrics, ordered by their most recent anomaly
scores.
For each metric, a sparkline displays metric values for the CI for the last hour. Point to the
sparkline to display the metric value at each point of time.
If resource binding is enabled, then the list of series being monitored for a CI also contains
series that belong to a resource and metric. The naming convention for such series is
'<resource name>/<metric name>'. For a series that is only bound to a CI, the naming
convention is '<metric name>'.
3. Drag a metric to the Drop Metric To Create Chart area on the canvas and point to the chart to
display the exact metric value at each point of time.
The metric chart displays data for the specified time period, according to the chart settings. By
default, raw data is displayed. If the time period is longer than a week or earlier than the last
week, then average data is displayed. Drag subsequent metric to the canvas as follows:
◦ In the Drop Metric To Create Chart area, so it is displayed individually in a new chart.
◦ Onto an existing chart, in the Replace Chart highlighted block to overwrite the existing chart.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4705


<!-- page 4706 -->
◦ Onto an existing chart, in the Add Metric highlighted block to overlap it with the existing
metrics in the chart.
When you display multiple metrics in a single chart, the same aggregation selection applies
to all the metrics, and statistics settings are not available. For example, if Average is selected
in the Chart Settings, then averaged values are displayed for all the metrics in the chart.
4. Use the Search box to search and filter for specific configuration items, application services, or
CMDB groups that are not listed by default.
In the SEARCH RESULTS section, click the + icon next to an item that you want to add to the
ADDED ITEMS section. Or, use advanced search:
◦ Select
and then click
Add Configuration Item to add any specific CIs. In the Add
Configuration Items dialog box, select a CI Class Type such as Linux Server.
◦ Select
and then click
Add Application Service to add all CIs included in a specified
application services. In the Add Application Services dialog box, select Discovered
Service or Manual Service as the CI Class Type and then specify filter conditions to
narrow down the search.

Note: You can add an application services only if its Operational Status is
‘operational’.
◦ Select
and then click
Add CMDB Group to add all CIs included in a specified CMDB
group. In the CMDB Groups dialog box specify filter conditions such as [GroupName] [starts
with] [d], to narrow down the search.
After selecting the items that you want to add, click Add.
5. Add related CIs:
) icon next to a CI.
a. Click the Add related CIs (
The Add Related Configuration Items dialog box appears, displaying all relationships in
which the selected CI is a parent or a child.
b. To further filter the list, you can define specific conditions that must be met.
c. Select the relationships from which you want to add the parent or the child CI, whichever is
not the selected CI.
d. Click Add.
The CIs from the selected relationships, which are not the selected CI, are added to the list of
CIs in the Insights Explorer.
6. Point to a legend item and click its 'X' icon to remove the corresponding metric from the chart,
or to disable the corresponding series from the Chart Settings.
7. Click the cog Settings icon to open application settings:
◦ Enable, disable, or set the frequency for refreshing anomaly data on the Insights Explorer.
◦ Activate or deactivate the display of related lists such as All Alerts, Incidents, and Problems.
For more information, see Create or modify map indicators .
8. Click the Chart Settings icon to toggle the display of statistics and aggregations on the chart.
Enabling or disabling an item to add or to remove metrics from a chart, also updates the legend
of the chart to reflect the change.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4706


<!-- page 4707 -->
Chart Setting

Description

Show Bounds

Displays a computed upper and lower bound
for the metric, based on learning of past
values. The upper and lower bounds always
display together.

Show Anomaly Scores

Displays anomaly scores on a virtual
axis of 0-10. Color code is based on the
score thresholds that are defined in the
Anomaly Score to Event Severity Map
[sa_metric_anomaly_score_to_event_severity_map]
table.

Average

Displays aggregated average metric values
calculated in one hour intervals.
Aggregated averages are displayed as
follows:
◦ For data that is up to 8 days old: Displays
10-minute aggregation windows.
◦ For data that is up to 94 days old: Displays
10-minutes aggregation windows.
◦ For older data: Displays 1-hour aggregation
windows.

Minimum

Displays aggregated minimum metric values
calculated per one hour time periods.
For data that is up to 8 days old: Displays 10minute aggregation windows.

Maximum

Displays aggregated maximum metric values
calculated for one hour time periods.
For data that is up to 8 days old: Displays 10minute aggregation windows.

Raw

Displays the raw, unaggregated metric values.
These values are kept only for the last 8 days.

What to do next
• Point to the icon of a CI in the right-hand side bar to display the CI type.
• Zoom in or out by changing the default Last Hour time range selection. Select one of the
preset time periods to display anomaly scores for the last 6 Hours for example, or specify a
custom time period for up to 90 days back.
To zoom in, highlight a section of a chart by pointing to the upper left corner of the section
and dragging the mouse device to the lower right corner of the section. The time range
of the chart changes accordingly. If there are other charts on the canvas, they are all
automatically synchronized to display data for the same time range. The time range in the title
bar automatically updates to reflect the new time range.
• Right-click on a CI in the right-hand side bar and select View Form to open its CI form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4707


<!-- page 4708 -->
• Click the map icon next to an application service listed in the Application Services tab, to
open its application service map.
• Click Remove (

) next to a CI to remove it from the Insights Explorer.

• Click the Export icon in a chart to download it as a .png or .svg image, or as a .pdf document.
Related topics
Create an Insights Explorer view
Create an Insights Explorer view
You can create a custom view in the Insights Explorer that saves any metric charts that were
added to the canvas, and any added configuration items. After you create a view, you can share a
link to the view.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Event Management > Metrics > Insights Explorer.
2. Click Create View ( ), and enter a Name in the Create New View dialog box.
If you are already creating a view, then you can choose Create With Existing to load an
existing view to work with rather than starting with a blank canvas.
3. Click Create.
4. Add items to be included in the view:
a. Drag metrics and create charts on the canvas.
b. Add configuration items.
While modifying a view, it is automatically saved every time you update it. The time settings are
not saved in views, and when a saved view is loaded, its time period is always set to Last hour
displaying current information.

What to do next
• Share a view: Click Share View ( ), and then in the Share dialog box, click Copy Link. Send
or paste the link to make it accessible to whoever you want to share the view with. A shared link
captures the time range of the view, the charts that were added to the canvas, and any added
configuration items.
• Display a saved view: Open the Select a Saved View drop down list, and select a previously
saved view that you want to display.

View metric charts in Agent Workspace
Agent Workspace for Metric Intelligence provides easy access to metric charts for a CI. On an
alert form, you can drill down to important metric charts for the CI that is associated with the alert.

Before you begin
• The CI that you want to view metric charts for, must be associated with an alert.
• The Metric Dashboard Metadata [sa_metric_dashboard_metadata] table must contain active
chart configurations for the CI class for which you want to view metric charts.
Role required: workspace_user and itil
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4708


<!-- page 4709 -->
About this task

The set of metric charts, chart types, and other chart characteristics, is determined by the chart
configurations in the Metric Dashboard Metadata [sa_metric_dashboard_metadata] table, for the
CI class.

Procedure
1. Navigate to Agent Workspace and click Agent Workspace Home.
2. In Agent Workspace, click List and in the Lists panel, select one of the Alerts categorized lists
such as All Alerts or Top Priority.
3. In the alerts list view, open an alert.
The alert must have a Configuration item associated with it.
4. In the Details tab of the alert form, click Metrics.

Result

All metric charts that are configured for the CI associated with the alert, and that are active,
appear on the metric charts form in the Metrics tab. The calculation of the default time range for
the charts is based on the times that the first and last events that generated the alert, occurred.

What to do next
• Modify the time range for the charts by changing Start Time and End Time. When you modify
the time range, all charts are updated to reflect the new time range.
• Click the cog wheel Open settings icon and change the settings for all charts:
◦ Show bounds: Show the bounds in the chart. Even if enabled, there are no bounds in a chart
for aggregated resources.
◦ Show legend: Show chart legend.
• Click Insights Explorer to open the Insights Explorer in a new browser tab. That Insights
Explorer opens with the current CI pre-selected and with the current time range settings in
Agent Workspace.

Configure metric charts for Agent Workspace
Configure the set of Metric Intelligence metric charts, chart types, and other chart
characteristics, that appear in Agent Workspace.

Before you begin

Role required: admin or evt_mgmt_admin

About this task

Up to 10 metric charts for a class can be configured to appear in the Metric Intelligence metric
charts form in Agent Workspace. Metric chart configurations are stored in the Metric Dashboard
Metadata [sa_metric_dashboard_metadata] table, determining which metric charts appear for
a CI that is associated with an alert. By default, the Metric Dashboard Metadata contains preconfigured metric charts for several classes.
If resource binding is enabled and you specify a Resource Type in the metric chart configuration,
then all the resources for the CI are included in the chart. The class table for the resource class
(such as ci_resource_metric_extension) that you specify is used for retrieving all the
resources for the CI. Then, for each point in time in the data series, the values of resources are
aggregated into a single data point which is the average of the metric values of all resources for
that point of time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4709


<!-- page 4710 -->
Chart aggregation

Aggregation is applied differently, depending on the setting of Chart Type, and
on whether resources are included in the chart as indicated by the setting of
Resource Type:
Chart type

Resources

Aggregation

Time_Series

No

No aggregation

Time_Series

Yes

Resources are averaged per
data point.

Single_Score

No

Data points are aggregated
according to the Chart
Aggregate setting.

Single_Score

Yes

Resources are averaged
per data point and then
data points are aggregated
according to the Chart
Aggregate setting.

Procedure
1. Navigate to All > Event Management > Administration > Metrics View Configuration.
2. In the Metric Dashboard Metadatas (Dashboard Metadata) list view, select an existing
configuration or click New.
3. Fill out the Metric Dashboard Metadata form.

Field

Description

Active

Include the chart on the Metric Intelligence
charts form in Agent Workspace.

Resource Type

Resource class associated with the CI and for
which to retrieve and aggregate all resources.

Configuration Item Type

CI class that the chart applies to such as
cmdb_ci_metric_extension.

Chart Aggregate

Type of aggregation that is applied for singlescore charts. Aggregation can be the average
of the data points in the time series. Or, the
minimum, maximum, or the last data point in
the time series.

Source Metric Type

Metric such as '% Free Space' that is being
monitored for the CI type.

Order

Order in which the metric chart appears
within all metric charts specified for the class.
For proper appearance and alignment, all
single-score charts always appear after
any time-series charts, regardless of order
settings.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4710


<!-- page 4711 -->
Field

Description

Chart Type

◦ Time_Series: Charts all the data points in
the time series for the metric and CI of the
chart.
◦ Single_Score: A single number which is the
aggregation of all data points in the time
series for the metric and CI of the chart.
Aggregation is determined by the setting of
Chart Aggregate.

View self-health monitoring statistics for Metric Intelligence
Monitor the status of components and processes of Metric Intelligence. Use the XMLStats page
to view statistics and diagnostic details that can help with troubleshooting issues with Metric
Intelligence.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Open a browser and enter the URL to the instance.
Type in: http://<instance name>.service-now.com
2. Append the following text to the instance URL: xmlstats.do?include=XMLStatsOI.
The complete URL format is: http://<instance name>.service-now.com/
xmlstats.do?include=XMLStatsOI
3. Hit Enter.

Result

Details are separated between two sections, instance level statistics and node level statistics.
Details in the node section are specific to the node in the URL.
Node section
Entry

Description

batches_recieved

Number of batches of metrics that the node
received from the MID Server.

batches_processed

Number of batches of metrics processed on
the node.

Details in the instance section are for the entire instance, showing the status of the self-health
monitors.
Instance section
Entry

Description

scheduled_jobs_monitor

Status of the self-health monitor that checks
if the essential Metric Intelligence scheduled
jobs are active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4711


<!-- page 4712 -->
Instance section (continued)
Entry

Description

distributed_cluster_monitor

Status of the self-health monitor that checks if
the Metric Intelligence MID Server distributed
cluster is running properly.

oi_extension_monitor

Status of the self-health monitor that checks
if the Metric Intelligence extension is running
properly.

metrics_collection_monitor

Status of the self-health monitor that checks
if metrics are being collected by active
connectors that are configured for metrics
collection.

Verify that the definitions for the Advanced Promotion Engine are active
Verify that the Advanced Promotion Engine definitions that come with the base system are active.

Before you begin

Role required: evt_mgmt_admin

About this task

The active definitions promote a group of anomaly alerts to the All Alerts table when all of the
definition's conditions are met.
You can't modify the conditions of the definitions that come with the base system. For
information on creating customized definitions, see Create a definition for the Advanced
Promotion Engine.

Procedure
1. Navigate to All > Advanced Promotion Engine > Advanced Promotion Definitions.
2. Select the Advanced Promotion Engine definition that you want to be active:
◦ Windows Server
◦ Linux Server
3. Verify that the Active check box is selected.
4. Select Save.

Create a definition for the Advanced Promotion Engine
Create a definition for the Advanced Promotion Engine so that you can define the conditions for
promoting the anomaly alerts to IT alerts. By promoting the alerts that meet the conditions, only
the most relevant alerts move to the table.

About this task

IT Alerts appear in the Express List and are addressed by an operator.
Only metrics that are associated with a metric configuration rule that has Anomaly score level
= Anomaly alerts are considered for promotion to IT alerts. For details on metric configuration
rules, see Metric Configuration Rules.

Before you begin

Ensure that the Metric Intelligence plugin (com.snc.sa.metric) is installed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4712


<!-- page 4713 -->
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Advanced Promotion Engine > Advanced Promotion Definitions.
2. Select New.
3. In the Name field, enter a descriptive name for the definition.
4. In the Order field, set the execution order for the definition.
The definitions with a lower order are executed first.
5. Activate the definition by selecting the Active check box.
6. On the CIs tab, fill in the fields for the CI aIerts that you want to consider for promotion.
CIs tab fields
Field

Description

CI class

CI class alerts to be promoted to the All Alerts
table.

Filter

Filter to restrict which CIs that the definition
applies to.
Select New Criteria to configure the
conditions that the definition applies to. You
can add more conditions by selecting either
OR or AND.

Skip CIs that were created less than this
number of days ago

Number of days in the past that any CI
created during that time is ignored.
For example, a value of 7 indicates that any
CIs created less than 7 days ago are not
considered for promotion to the All Alerts
table.

7. On the Severity tab, enter the minimum severity of alerts to be considered for promotion.
Alerts with the indicated severity level and higher levels are considered for promotion.
8. On the Number of Alerts tab, in the Number of alerts on CI field, enter the minimum number of
a CI's alerts with an identical severity level (or higher) to be considered for promotion.
For example, a value of 3 indicates that at least three alerts with the indicated severity (or
higher) must exist on a CI for the alert to be considered for promotion.
9. On the Time Window tab:
◦ In the Consider alerts updated at least this number of minutes ago field, enter the minimum
number of minutes old for an alert to be considered for promotion.
For example, if the value of the field is 5, only alerts that are updated at least five minutes ago
are considered for promotion.
◦ In the blue box, select the number of minutes link to modify the amount of minutes during
which alerts are to be considered for promotion.
The Properties page opens and you modify the value in the The width of the time... field.
Default = 30.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4713


<!-- page 4714 -->
For example:
◦ The current time is 10:05.
◦ In the The width of the time... field, you entered a value of 30.
◦ In the Consider alerts updated at least this number of minutes ago field, you entered 5.
Alerts that occur between 9:30-10:00 are considered for promotion.

What to do next

Ensure that the a metric configuration rule exists which includes metrics you want to be
promoted to an IT alert, and that the anomaly score level of the rule is Anomaly alerts. For details
on configuring a metric configuration rule, see Create a configuration settings rule.

View the promoted events
View the anomaly alerts that the Advanced Promotion Engine promoted to IT events. Viewing IT
events enables you to track the source of the event.

Before you begin

Role required: evt_mgmt_user

About this task

The system generates an IT event when an anomaly alert is promoted. Those events then
become IT alerts. For details, see View the promoted anomaly alerts.

Procedure
1. Navigate to All > Advanced Promotion Events.
2. On the Events page, view the IT events that are created from the anomaly alerts by the
Advanced Promotion Engine.

View the promoted anomaly alerts
View the anomaly alerts that the Advanced Promotion Engine promoted to events, which are
then processed as alerts in the All Alerts table. Viewing alerts in the All Alerts table enables you
to track the source of the alert.

Before you begin

Role required: evt_mgmt_user

About this task

The Event Management alert grouping feature takes the anomaly alerts that are promoted to the
IT events and groups them into new IT alerts.
The Alerts table displays all of the relevant issues in the system.

Procedure
1. Navigate to All > Advanced Promotion Engine > Anomaly Alerts.
2. In the Is Advanced Promoted column header, view the alerts with a value of true.
The IT alert that is created from the anomaly alert appears in the IT Alert column.
3. Optional: Select an alert to receive more information about the alert.
For details on the displayed additional information, see Alerts in Service Operations
Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4714


<!-- page 4715 -->
Create metric rules
Create a metric rule to determine the metric, the threshold values and ranges, and the severity
level of generated events. You can add a filter that determines the Configuration Items (CI) types
or resources for which you receive alerts. For example, you can configure a filter to receive alerts
only for Windows servers.

Before you begin

Role required: evt_mgmt_admin

About this task

When a metric crosses or falls within the range of a configured threshold, the system creates a
single event, which is eventually processed into an IT alert. The severity of the event (and alert) is
determined by a defined threshold, and the event is bound to a CI.

Procedure
1. Navigate to All > Event Management > Metrics > Metric Rules.
2. Select New Metric Rule.
The CI selection page opens.
3. Select the CI class on which to run the rule in the CI Class field.
Only CIs containing metrics are available for selection.
4. Optional: Apply a filter within the selected CI class.
For example, if you selected a CI class of Linux Server, you can apply a filter to indicate that
the rule applies only to those servers with a host name that starts with a specified string.
5. Select Next.
The Alert criteria page opens.
6. Select the metric and criteria to create an alert.
a. Select the alert severity that you want to configure in the Alert severity field.
Choose from the following:
▪ Critical
▪ Major
▪ Minor
▪ Warning
b. Select the metric for the alert severity to apply to in the Metric field.
c. Select the comparison operator (equals, is greater than, is greater than or equals, and so
forth) in the Comparison operator field.
d. Enter a value in the Value field.
For example, you can configure criteria to indicate that when the metric node_rx_packets is
greater than 10, a Critical alert is generated.
To define additional alert severities, select Add another alert severity and repeat this step.
7. Select when to generate the alert in the Alert when section.
Choose from the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4715


<!-- page 4716 -->
◦ All sampled values must breach the criteria in the following time period.
Select the time period, in minutes.
◦ Average of sampled values in the following time period must breach the criteria.
Select the time period, in minutes.
◦ Any time the sampled values breach the criteria.
8. Select Next.
The Name and activation page opens.
9. Verify the name and details of the metric rule.
To activate the rule, ensure that the Active toggle switch

is activated.

10. Select Finish.

Create an event rule to bind metric events to host CIs
Create event rules to explicitly allow binding of metric events to host CIs.

Before you begin

Role required: evt_mgmt_admin

About this task

Starting with the London release, Metric Intelligence no longer relies on the default Event
Management binding workflow which binds nodes to host CIs. Event Management is configured
to apply the default host binding algorithm when an event rule cannot find a CI to bind to, based
on event data. In Metric Intelligence, with a given event rule and two different events, there
can be a situation where one event binds to the correct CI and another event cannot bind. In
this case, the same metric types would be created for the selected CI and for the host level CI,
causing confusion.
For example: With an event rule that binds the disk percentage metric to a storage disk, one
event can find a disk CI and another event cannot. This results in the disk percentage metric
being created for a disk CI and for a host CI.
To avoid this confusion, Event Management default host binding is disabled for metric events in
the base system. To allow host binding for metric events, explicitly create the following event rule
in the Event Management event rule designer. The underlying binding functionality of the event
rule designer is used to map metrics to CIs.

Procedure
1. Navigate to All > Event Management > Rules > Event Rules to open the event rule designer.
2. Click New and ensure that the Active toggle switch

is set to the right (Active).

3. On the Event Rule Info tab:
a. Set Source to the data source that this rule applies to.
b. Optional: Enter a Description such as Bind metrics at host level.
4. On the Event Filter tab, set a filter condition to indicate that Classification is Metric.
5. Click Save.
Related topics
Create or edit an event rule
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4716


