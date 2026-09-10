# Zurich IT Operations Management — View live CI data with Agent Client Collector / Metric Intelligence

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4663–4692 of 4823

Sections: View live CI data with Agent Client Collector (p4663); Metric Intelligence (p4665); Exploring Metric Intelligence (p4667); Configuring Metric Intelligence (p4687)

---

<!-- page 4663 -->
A dynamic CI Group is a group of CIs that are organized by attribute, such as the CI type. By
default, Agent Client Collector log policy checks monitor only CIs that are associated to an
application service. The Agent Client Collector Log Analytics application inspects the CIs
that the Agent Client Collector discovers. When it discovers a CI that is not associated to an
application service, the application creates a dynamic CI Group and associates the CI to it.
If the CI is later associated to an actual application service, its association to the dynamic CI
Group is automatically deleted. The baseline for the CI is lost in this process. While the system is
establishing the new baseline, it doesn't issue alerts for the application service to which the CI is
now associated.
You can choose to disable the association of unassociated CIs to a dynamic
CI group by changing the default setting of the relevant system property,
sn_accl.dynamic_service.creation.enabled, to false. The Agent Client Collector
Log Analytics application will then not associate unassociated CIs to dynamic CI Groups. In this
case, logs are not streamed for CIs that are not associated to an application service.

View live CI data with Agent Client Collector
View live data for incident-related CIs through Agent Client Collector for information that can help
resolve the incidents.

Before you begin
• Collecting running processes for a macOS system requires sudo privileges. If sudo privileges
aren't granted, only processes run by the Agent Client Collector are collected.
To enable sudo privileges for osqueryi, add the following strings to either the /etc/
sudoers file or to an individual file in the /etc/sudoers.d directory:
◦ Cmnd_Alias LIVE_CI_VIEW = /Library/Application\ Support/
servicenow/agent-client-collector/osquery/bin/osqueryi
◦ _servicenow ALL=(ALL) NOPASSWD:LIVE_CI_VIEW
• To enable the OSQuery executable to retrieve information on logged-in users in a Windows
environment, the agent must run as a local SYSTEM account.
Verify that you have installed Agent Client Collector Framework and Service Operations
Workspace on your instance.
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the Lists icon (

).

3. Select Incidents > All.
4. Select an incident from the list.
5. On the <name of incident> form, select the Live CI Data tab.
The CI data is displayed in the cards described in the following table.
Live CI Data tab cards
Card

Description

Device details

General details about the CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4663


<!-- page 4664 -->
Card

Description

Memory Usage

Amount of memory being used by the CI.

Top 5 running processes by CPU usage

The five CI processes using the most CPU.

Top 5 running processes by memory usage

The five CI processes using the most
memory.

Disk Usage %

Percentage of disk space in use on the CI.

Logged-in users

Users logged in to the CI. Whether this data is
visible depends on your OS privileges.
◦ MacOS: Requires sudo privileges
◦ Windows system: Requires administrator
privileges
◦ Linux: No special privileges are required

Related topics
View live CI data logs
Assign a problematic CI to its incident to view live CI data

View live CI data logs
View CI logs to receive additional details on an incident when viewing live CI data. For example,
viewing log information for a process with high CPU usage can help you pinpoint when the usage
went up, helping you determine the root cause of the issue.

Before you begin

Ensure that you have installed Agent Client Collector Framework and Service Operations
Workspace on your instance.
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the Lists icon (

).

3. Select Incidents > All.
4. Select an incident from the list.
5. Select the Live CI Data tab.
6. Select the Logs link on the right side of the pane.
Logs link

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4664


<!-- page 4665 -->
Note: The data last refreshed value follows the instance time zone and not your local
system time zone. Therefore, ensure that your local system time zone matches the
instance time zone.
The logs appear on the Log page.

Assign a problematic CI to its incident to view live CI data
Retrieve live CI data to help troubleshoot the issues that caused an incident by assigning the
problematic CI to its incident. An incident typically is associated with the CI that caused the
incident, but if this was omitted during the incident creation, you can assign the CI manually.

Before you begin

Ensure that you have installed Agent Client Collector Framework and Service Operations
Workspace on your instance.
Role required: itil

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the Lists icon (

) icon.

3. Select Incidents > All.
4. Select an incident with a value of Configuration item = (empty).
5. Select the Live CI Data tab.
6. Enter the first several characters of the CI that caused the incident in the Primary
configuration item field.
A list of CIs matching the string appears.
7. Select the relevant CI from the list.
The name of the CI appears in the Primary configuration item field, and the CI's live data
appears on the Live CI Data tab.

Metric Intelligence
®

ServiceNow Metric Intelligence provides the ability to capture, and then explore and analyze
operational metrics data, identifying and indicating anomalies. Metric Intelligence generates
anomaly alerts that can be promoted to IT alerts and appear on the Service Operations
Workspace and service health dashboard. You can leverage this analysis to prevent potential
service outages.

Get started

Explore

Configure

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4665


<!-- page 4666 -->
Learn the key features and
business value that the Metric
Intelligence application offers.

Configure the features and components
to enable Metric Intelligence.

Optimize

Reference

Manage metrics, events, alerts
and anomalies to get the
most out of your metric data.

Get additional information on Metric
Intelligence settings and properties.

Helpful resources
Some ServiceNow resources that can provide you with helpful information are:


<!-- page 4667 -->
Exploring Metric Intelligence
Learn more about using Metric Intelligence to analyze metric data and identify anomalies.

Metric Intelligence overview
Metric Intelligence helps identify and prevent potential service outages. Based on historical
metric data, Metric Intelligence indicates anomalous behavior of CIs which events might not
capture.

Metric Intelligence users
Users
User

Description

Event Management user

Can view alerts and their underlying metrics.

[evt_mgmt_user]
Event Management
administrator

Can configure all metric definitions and connector settings.

[evt_mgmt_admin]
Operator

Can view all metric definitions and connector settings.

[evt_mgmt_operator]

Metric Intelligence workflow
The following illustration describes the layout and data flow within the Metric Intelligence
application.

Metric Intelligence benefits
Benefit

Feature

Monitor your system’s health, performance,
and availability through automated collection
of events and metrics, leveraging automated
configurations.

Choose and configure NOC Operator,
metrics to monitor
Event Management
administrator

Reduce noise by promoting only the most
meaningful anomalies.

View anomaly alerts

Users

Event Management
administrator

Create metric rules
Detect anomalies with AI-based anomaly
detection, either with unsupervised machinelearning abnormal pattern detection (no user
intervention), or by setting deterministic alert
rules (manually setting a static threshold).

How Health Log
Analytics generates
alerts

Event Management
administrator

Improve resolution time on open alerts and
incidents with raw metric data visualization.

Metric Explorer

NOC Operator,
Event Management
administrator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4667


<!-- page 4668 -->
What to explore next
To learn more about configuring and using Metric Intelligence, see:
• Configuring Metric Intelligence
• Optimizing Metric Intelligence
• Metric Intelligence reference

Understanding Metric Intelligence
Use Metric Intelligence to identify and prevent potential service outages. Metric Intelligence,
based on historical metric data, indicates anomalous behavior of CIs which events might
not capture. Anomaly alerts can be promoted to regular IT alerts and appear on the Service
Operations Workspace and service health dashboard for preventive actions.

Anomaly detection
Metric data is collected by various data sources such as SCOM, SolarWinds monitoring system,
or Nagios XI server (some partially configured for metric collection by default). These monitoring
systems collect metric data from the source environment regularly. Metric Intelligence captures
the raw data from these monitoring systems, and uses event rules and the CMDB identification
engine to map data to existing CIs and their resources. The data is then analyzed to detect
anomalies and to provide other statistical scores.
Metric Intelligence uses historical metric data to build statistical models. These models facilitate
projection of expected metric values along with upper and lower bounds. Metric Intelligence
then uses these projections to detect statistical outliers and to calculate anomaly scores.
Anomalies are scored on a range of 0-10. High anomaly scores for CI metrics can indicate that a
CI is at risk of causing a service outage.
After processing, the Insights Explorer shows metric statistics and charts, and the Anomaly Map
shows correlated scores for CIs with the highest anomaly scores, across a timeline.
You may want to disable anomaly detection during system maintenance, as anomalies
may be irrelevant when detected while maintenance is in progress. To do so, set the
mid.mi.anomaly_detection.disable property to true.
To customize displaying anomalies for metrics classified as near-constant, contact customer
support.
Metric Intelligence is available when you activate the Metric Intelligence (com.snc.sa.metric)
plugin.

Terms used with Metric Intelligence
Source metric type
A metric such as '% Free Space' or 'Current Bandwidth' that can be measured by
a data source for a CI. For each data source, you can choose which of all possible
source metric types are processed. For example, there are about 380 source metric
types that are active by default for the SCOM data source.
Anomaly
Data that is outside the control bounds is considered a statistical outlier. These
outliers are used to compute an anomaly score, which is a value between 0–10 that
indicates the degree to which the metric appears unlikely. When an anomaly score
is above a threshold, an anomaly alert is generated. Anomaly alerts are reported
separately from regular IT alerts.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4668


<!-- page 4669 -->
Resource
A component of a CI that consists of multiple individual components of similar type,
where each subcomponent can be monitored separately. For example, individual
Web pages, or specific disks such as 'Disk C:' and 'Disk D:'.
Time series
A series of values (such as metric values) over a time range, associated with a CI
and a metric type. Because an anomaly score is evaluated for each metric, the
series of anomaly scores over a period of time are also a time series. Time series are
computed by the statistical model built for a metric data series, and are used with
metric data values, anomaly scores, and upper and lower control bounds.

Statistical models
Metric Intelligence jobs learn from past metric data (up to 32 days old). A model training process
analyzes historical data to construct a model that projects future values. Typically, models are in
effect until the next time the model learning process runs. These models are used to calculate
upper and lower bounds. Incoming values that are beyond those bounds, and that deviate
with statistical significance from expected values, generate anomalies. Each model is uniquely
patterned and is labeled with a classifier that illustrates the general behavior of the model. This
classification determines if anomaly detection can be applied. For most models, it is possible
to project which future values deviate from expected values. Such models are associated with
control bounds and anomaly detection can be applied (if enabled).
However, for some models, there is insufficient data to determine which values are anomalous
and anomaly detection cannot be applied without additional information (even if anomaly
detection is enabled).
The learned data models are stored in the Metric Time Series Models [sa_time_series] table.
The following statistical models and classifiers are used in anomaly detection:
Time Series statistical model
After it is established, a time series model does not adjust to changes in the
incoming metric data. Therefore, if the pattern of incoming data changes, those
changes are likely to be identified as anomalous. Upper and lower control bounds,
after they are learned, persist until the next time the learning process runs (data is
learned every day).
Weekly
Data with a pattern that repeats itself over weekly intervals (seasonal
model).
Requires a minimum of 15 days of data in the series, as set by the
weekly_model_min_days configuration setting.

Daily
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4669


<!-- page 4670 -->
Data with a pattern that repeats itself over a daily interval (seasonal
model).
Requires a minimum of 3 days of data in the series, as set by the
daily_model_min_days configuration setting.

Trendy
Data that has a linear trend with some slope and with some noise.
Requires a minimum of 30 data points in the series, as set by the
corrupt_data_count_threshold configuration setting.

Noisy
Typical noisy data that is a basic pattern classification in a data model.
The pattern cannot be identified with a specific trend or seasonality.
Requires a minimum of 30 data points in the series, as set by the
corrupt_data_count_threshold configuration setting.

Positive clipped noisy
Similar to the noisy classifier other than the lower bound that is fixed
on 0.
Requires a minimum of 30 data points in the series, as set by the
corrupt_data_count_threshold configuration setting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4670


<!-- page 4671 -->
Centered noisy
Noisy data that typically spreads symmetrically between user-specified
upper and lower bounds. The formula that is used to set bounds and
width values, ignores the statistical data, and the lower and the upper
widths have an identical value.
Requires that the number of data points in the series is zero.

To retrieve alerts for metrics with this model, create metric rules for
static bounds definitions. For details, see Create metric rules.
Skewed noisy
Noisy data that is not evenly spread between user-specified upper
and lower bounds, but instead tends to concentrate closer to one of
the bounds. The median of the data is used to separately compute an
upper width and a lower width.
Requires a minimum of one data point in the series.

To retrieve alerts for metrics with this model, create metric rules for
static bounds definitions. For details, see Create metric rules.
Skewed noisy - Generalized Extreme Value (GEV) Distribution
Noisy data that is spread unevenly between user-specified upper
and lower bounds, and concentrates closer to one of the bounds.
In addition, the data distribution demonstrates a long or heavy tail.
The median of data derived from the tail of the distribution is used to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4671


<!-- page 4672 -->
separately compute an upper width and a lower width. There must be
at least one data point in the series.
Accumulator
Data pattern similar to the trendy classifier but with a monotonous
increase and without noise. For this classifier, there is no data model
and no anomaly detection.
Requires a minimum of 30 data points in the series, as set by the
corrupt_data_count_threshold configuration setting.

Near Constant
Nearly constant data, in which most values are a specific constant
value. For this classifier, there is no data model and no anomaly
detection.
Requires a minimum of 30 data points in the series, as set by the
corrupt_data_count_threshold configuration setting.

Detected Constant
Enables checking near-constant metrics for anomalies. To do so, you
must move the metrics to the detected-constant model, via a system
token. To add tokens to the token list and enable more metrics to be
measured for anomalies, contact customer support.
Requires a minimum of 30 data points in the series, as set by the
corrupt_data_count_threshold configuration setting.
Enabled when the
metric_name_analysis.add_detected_constant_candidate
system property is set to true. To overwrite the value of this property for
a specific metric type, update the Detected Constant Candidate field
in the Metric Types table by doing the following:
1. Enter sa_metric_type.list in the instance navigation field.
2. In the Detected Constant Candidate column, select the relevant
value for the entry you want to update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4672


<!-- page 4673 -->
Detected Constant Candidate values
Value

Description

<empty>

An algorithm automatically
decided whether the metric is to
be considered for the detected
constant model.
This is the default value.

Yes

The metric is considered for the
detected constant model.

No

The metric is not considered for
the detected constant model.

Multinomial
Data pattern in which all values are one of a relatively small number of
values. For example, values are always 100 or 99.9. For this classifier,
there is no data model and no anomaly detection.
Requires a minimum of 400 data points in the series, calculated as
10 times the value of the multinomial_count_threshold configuration
setting.

Corrupt
Data has insufficient data points to identify a pattern. For this classifier,
there is no data model and no anomaly detection.
Requires that the number of data points in the series is less than the
value of the corrupt_data_count_threshold configuration setting (30 by
default).
Kalman Filter statistical model
Add on to the time series statistical model and applicable only to the noisy and
positive noisy classifiers. This model is a general method of estimating model
parameters from a stream of data where level is the only parameter in the model.
The Kalman Filter model can adjust to new values in incoming metric data. When
there are no clear patterns in the noise or if there is too much noise, the Kalman
Filter model is not used.
Local level
When incoming data clusters around a new value according to
the current control bounds, the Learner adjusts the data model to
accommodate a permanent change. This clustering is detected as a
new value in the data model so that most incoming data is again within
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4673


<!-- page 4674 -->
the control bounds rather than anomalous. Such change detection is
useful when for example, cores or memory are added to a server, which
impact the baselines.
Requires a minimum of 30 data points in the series, as set by the
corrupt_data_count_threshold configuration setting.

Unrecognized
When data does not fit the local level classifier, time series classifiers
are used. This happens when it is not possible to adjust the variance
ratio in a learned local level model to reasonable values.
Non-Parametric statistical model
Add on to the positive noisy classifier. In the nonparametric model, noise
distribution is not symmetrical and does not fit any seasonal pattern. The
nonparametric model creates control bounds that better fit the actual data, and
once learned, the control bounds persist until the next learning cycle. This model
does not adjust itself to changes in the data, and it takes longer for a deviation to be
identified as an anomaly.
Stationary Non-Parametric
Data that is not time-dependent meaning that there is no significant
shift in parameters such as mean and variance when shifting data in
time.
Requires a minimum of 5000 data points in the series, as set by the
snpm_minimum_data_count configuration setting.

Unrecognized
When data does not fit the stationary classifier, time series classifiers
are used.
Median Absolute Deviation (MAD) statistical model
An add-on to the skewed noisy classifier. In this type of data, noise distribution is
not symmetrical and does not fit any seasonal pattern. In addition, data reflects a
heavy or long-tailed distribution. The MAD statistical model creates control bounds
that better fit the data, and once learned, the control bounds persist until the next
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4674


<!-- page 4675 -->
learning cycle. Using this model enhances the deciphering of data collection with
approximately 30% greater efficiency.

MID Server and MID Server distributed cluster for Metric Intelligence
Using Metric Intelligence requires at least one MID Server distributed cluster which contains a
single MID Server that is configured for Metric Intelligence.
When using a single Metric Intelligence MID Server, that server must be added to a MID Server
distributed cluster.
To support the specified throughput, create a distributed cluster with a single MID Server that
meets the Metric Intelligence MID Server requirements. When using a virtual machine (VM), only
a single MID Server can run that supports Metric Intelligence. When working with Agent Client
Collector, a MID Server can also be connected to multiple agents (ACC-M and ACC-L).
A MID Server supporting Discovery can also be used with other applications.
For details on setting up Metric Intelligence, see Get started with Metric Intelligence.

MID Server distributed clusters
Activating Metric Intelligence (com.snc.sa.metric), automatically activates MID Server distributed
cluster (com.snc.agent.distributed.cluster). A MID Server distributed cluster supports the
Distributed MID Server cluster type which is used exclusively with Metric Intelligence.
If automatic creation of a MID Server distributed cluster fails, you can configure the cluster
manually. For details, contact Customer Support.

Metric Intelligence MID Server
The Metric Intelligence MID Server supports the Metric Intelligence feature by processing data
and detecting anomalies. The MID Server transmits batches of processed data to the instance.
If an anomaly is detected, then information about the anomaly along with the raw data is sent
immediately to the instance.
Each Metric Intelligence MID Server must be configured with the following settings:
• Metric Intelligence as a supported application
• The Metrics capability
• Running the Metric Intelligence Metrics extension

Note: The Metric Intelligence MID Server does not support IPv6.
The Metric Intelligence application that the Metric Intelligence MID Server is configured with
enables you to add additional supported applications to the same MID Server. By default, Metric
Intelligence is included in the definition of the MID Server ALL option. For information about
modifying the behavior of the ALL option when selecting supported applications, see Configure
applications included in ALL Applications .
If Domain Support - Domain Extensions Installer is activated, then you can configure a MID
Server with the Metrics capability, per domain. In this case, metrics for a business service are
processed on the MID Server that is in the same domain as the business service. Otherwise, a
MID Server from the global domain is used.
Ensure that the MID Server that you want to configure for Metric Intelligence:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4675


<!-- page 4676 -->
• Is validated. For more information, see Validate a MID Server
• Is in running state
• Meets all software, hardware, and configuration requirements
Hardware requirements for the virtual machine/host on which the MID Server runs (scaled
for 5000 CIs with 100 metrics per CI)
Requirement

One MID Server
with:

Supports approximately up to a total of 1.2 million metrics (12,000 CIs with
100 metrics per CI).

• Memory: 12
GB
• Processor: 4
cores
One MID Server
with:

Supports approximately up to a total of 1.7 million metrics (17,000 CIs with
100 metrics per CI).

• Memory: 24
GB
• Processor: 8
cores

Software requirements
Software

Supported versions

Additional requirements

Windows 32-bit and 64-bit versions:

32-bit or 64-bit version of the MID
Server

• Windows 2008 R2
• Windows Server 2012 R2
• Windows Server 2019
Linux

• Red Hat Enterprise Edition Linux 6.6 or
later

32-bit or 64-bit version of the MID
Server

• CentOS Linux 6.6 or later

Configuration requirements
Configuration

Requirement

MID Server service logon user (required only
for pulling)

Must be set to a user with read access to the
SCOM database (OperationsManagerDW).
1. On the MID Server, open the MID Server
Properties dialog box.
2. Click the Log On tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4676


<!-- page 4677 -->
Configuration requirements (continued)
Configuration

Requirement

3. Select This account, and enter credentials
for a user with the required access.
4. Click Apply.

MID Server throttling mechanism
The MID Server throttling mechanism protects against data bursts to the instance. Data burst
protection prevents overloading the instance, while ensuring that you do not lose any data.
The MID Server throttling mechanism is enabled by default. You may want to disable this
mechanism when troubleshooting, to ensure that the mechanism is not causing system
malfunction.
• To disable this feature for metrics, set the mid.oi.metric_token_bucket_enabled parameter to
false.
• To disable this feature for anomalies, set the mid.oi.anomaly_token_bucket_enabled parameter
to false.

Configuration Override
Update the wrapper-override.conf file in folder ../agent/conf:
• Add the following code at the bottom of the file:

# GC
wrapper.java.additional.5=-XX:+AlwaysPreTouch
wrapper.java.additional.6=-XX:+UseG1GC
wrapper.java.additional.7=-XX:+ScavengeBeforeFullGC
wrapper.java.additional.8=-XX:+DisableExplicitGC
# IP4
wrapper.java.additional.9=-DpreferIPv4Stack=true
• Ensure that wrapper.java.initmemory=1024 (or higher) and
wrapper.java.maxmemory=4096 (or higher) for Metric Intelligence to run properly.
• Optionally, if a server has additional RAM available, for example 16 GB RAM, you can replace
4096 with 8192 in: wrapper.java.maxmemory=4096.

Metric Configuration Rules
Metric configuration rules enable you to determine how incoming metrics from the Agent Client
Collector are to be processed.
When a new metric arrives from an Agent Client Collector, a new record is created in the Metric
to CI Mappings table, with the value, Anomaly Detection Action Level = Bounds.
To trigger execution of a metric configuration rule, navigate to the Metric Configuration Rules
table (Event Management > Anomaly Detection > Metric Config Rules) and select the Sync
to MID button at the top of the page. This also synchronizes all MID Servers connected to the
instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4677


<!-- page 4678 -->
When executing the rule, the anomaly detection action level defined in the rule (set by the
anomaly_detection_action_level parameter) retroactively overrides the anomaly
detection action level configured for the metric in the Metric to CI Mappings table.
If you do not trigger the rule execution, retroactive overriding of the Anomaly detection
action level parameter is performed during execution of the hourly scheduled Metric
Intelligence - Metric configuration job.
When configuring a metric configuration rule, rules with a filter run before rules with no filter.
When multiple rules have the same priority, the most recently configured rule runs first.
For details on creating configuration settings rules, see Create a configuration settings rule.
For details on the available anomaly detection action levels, see Configure the action level for
anomaly detection.

Metric bounds sensitivity
When measuring metrics in Insights Explorer, metric bounds may be overly sensitive, creating an
abnormally large number of anomalies. When this happens, the system adjusts itself to ensure
that fewer anomalies are created.
For example, if 95% of a CI’s metric values fall within 2 standard deviations (STDs) of the mean
metric values, those are considered sensitive bounds. Sensitive bounds generate a large
number of anomalies, some of which may be irrelevant. When sensitive bounds are detected, the
system adjusts to measure metric values within 5 STDs, to generate fewer anomalies.
If sensitive bounds are not detected, (that is, 95% of metrics do not fall within 2 STDs of the mean
metric value), the system measures metric values within 3 STDs. Any metric values falling outside
the configured bounds become anomalies.
The previous values are set by default. For details on customizing these values, see Sensitivity
bounds properties for Insights Explorer metrics.

Metric collection sources
When setting up Metric Intelligence, you must configure a source for metric collection. Metric
collection can be performed either by the Agent Client Collector, or by metric connectors.
The metric collection source determines where Metric Intelligence gathers metrics from. For
details on gathering metrics using Agent Client Collector, see Enable metrics collection and
evaluation.
When gathering metrics with connectors, use either a SCOM or Dynatrace connector. For details
on connecting metrics using a SCOM connector, see Configure the SCOM connector instance.
For details on connecting metrics using a Dynatrace connector, see Configure the Dynatrace
metrics connector instance.

Metric binding
After metric data is collected, Metric Intelligence identifies the CIs and the resources to bind the
data to.
The data that is collected on the MID Server is raw and does not relate to any specific CI or
resource in the CMDB. To be useful, the data goes through a normalization process that uses
CMDB identification rules and event rules to uniquely identify CIs, and to map and bind them
to the raw data. Raw data can also be mapped and bound to resources, if binding to a CI is
successful and if resource binding is configured.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4678


<!-- page 4679 -->
Records for mapping raw data to CIs are automatically generated and remain in effect for a
specified length of time determined by the properties:
• sa.metric.map.with.ci.expiration.sec: If the mapping to the CI was found. Set
by default to be valid for five days.
• sa.metric.map.without.ci.expiration.sec: If mapping to the CI was not found.
Set by default to be valid for 24 hours.
When similar metric data arrives within that time period, the existing mapping is used to match
the data to CIs. At the end of the time period, metric-to-CI records expire. Also, a change in the
event rules triggers an immediate expiration of the respective metric-to-CI records. Next time
that raw metric data arrives, it will be normalized again. When Discovery adds or removes CIs,
mappings are adjusted to reflect these changes at the next cycle.
All the information about the recent existing mapping is saved under metric-to-CI records in the
sa_metric_map table, as shown below. You can access the Metric to CI table by navigating to All
> Event Management > Metrics > Metric to CI.
Metric to CI table

Metric binding to resources
Bind metrics to resources to simplify metric events binding by enabling binding to resources
such as specific disks or web pages, in addition to binding to CIs.
Metric Intelligence models metric series in either of the following methods:
• Binding a metric series to a CI and to the metric being monitored for that CI using a 'CI/Metric'
format. For example, 'win_server_001/response_time_mean'.
• Binding a metric series to a CI, a resource within that CI, and the metric being monitored for
that resource, using a 'CI/Resource/Metric' format. For example, 'win_server_001/Disk —
C/disk_usage'. This method is referred to as resource binding.
The first method enables modeling, storing, aggregating, and querying data at the CI level.
However, resource binding creates resource records for specific monitored entities, such as
an individual web page or a disk. Therefore, resource binding is more efficient when there are
multiple resources of similar types within a CI, and metrics applicable to a category of these
resources are mapped to these resources.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4679


<!-- page 4680 -->
Use cases:
• Common examples are disks, processors, and network interfaces. In cases in which these
entities are being monitored but do not exist in the CMDB, using resources for metric binding is
useful.
• Some monitoring solutions capture metric data within services such as KPIs for individual web
pages in an application. In such cases where the entity being monitored is not a configuration
item, metric binding to resources can be helpful.
In those situations, using resource binding results in more meaningful aggregations across
similar metrics (such as: avg disk_usage for a host across all disks).

Resource binding process
The MID Server generates metric binding events that are processed by the instance. When
processing a metric binding event, there is an attempt to identify the CI to which this metric
binding event belongs. If this attempt is successful, then the metric binding event is bound to the
identified CI and binding to a resource is attempted. The following steps describe the attempt to
bind a metric binding event to a resource:
1. Identify the CI class of the CI that was bound to the metric binding event.
2. Locate the resource class which is mapped to that CI class (using the CI Type To Resource
Class [sa_ci_type_to_resource_class] table).
3. Read the resource_path attribute value in the additional_information field in the metric
binding event.
4. Check if a resource record exists in the resource class table, in which name is equal to
resource_path and cmdb_ci is equal to the CI that was bound to the metric binding
event.
5. If such resource record exists, then the metric binding event is bound to that resource.
Otherwise, a new resource record is created with the preceding values and the metric binding
event is bound to the newly created resource.

Configure resource binding
• Ensure that the sa.metric.use.resource.binding system property is set to true (default).
• For series intended to be bound to resources, ensure that the resource_path attribute is
populated by doing either step:
◦ Use an event rule to add the resource_path attribute to the Additional information field
in events. For more information, see Creating an event rule to map metrics to specific CIs.
◦ Populate the resource_path attribute as a part of the respective CI identifier when data
is sent to the MID Server for processing.
• Review the default mappings in the CI Type To Resource Class [sa_ci_type_to_resource_class]
table and adjust as needed. It is critical that mappings are set as desired prior to data
processing.
Managing the CI Type To Resource Class table requires the evt_mgmt_admin role.

Resource tables
Resource binding uses an underlying hierarchy structure of resources which is a subset of the
[cmdb_ci] hierarchy. Metric Intelligence installs the following resource tables:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4680


<!-- page 4681 -->
• CI Resource [ci_resource] (parent table):
• Tables that extend CI Resource [ci_resource]:
◦ ci_resource_hardware
◦ ci_resource_appl
◦ ci_resource_service
◦ ci_resource_vm_object
◦ ci_resource_database

Mapping CIs to resources
Mappings of CI classes to resource classes are stored in the CI Type To Resource Class
[sa_ci_type_to_resource_class] table. This table is installed with Metric Intelligence, and is used
during metric binding to resources.
Mappings in the CI Type To Resource Class table (default)
CI class

Resource class

cmdb_ci_hardware

ci_resource_hardware

cmdb_ci_appl

ci_resource_appl

cmdb_ci_service

ci_resource_service

cmdb_ci_database

ci_resource_database

cmdb_ci_vm_object

ci_resource_vm_object

Creating an event rule to map metrics to specific CIs
Create event rules to map incoming raw metric data to specific CIs, to optionally modify metric
names, and to populate the resource_path attribute for resource binding.
The system generates events for every new raw metric data for which there are no CI binding
specifications. You can create event rules that filter those events to map the incoming metric
data to specific CIs. In such event rules, you can for example define a filter that is based on the
monitoring object (such as SCOM).
To use resource binding, the resource_path attribute of events must be populated. You
can configure an event rule to ensure that the resource_path attribute is included in the
Additional information field in events. For more information about configuring and using
resource binding, see resource binding.
For example, in the Event Rule designer you can update the event rule SCOM IIS Web Server as
follows:
• On the Event Filter tab, define filter to match only IIS Web Servers.
• On the Binding tab, set Class to Microsoft IIS Web Server.
Related topics
Event rules
View metric to CI and resource binding
Get started with Metric Intelligence

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4681


<!-- page 4682 -->
CIs in maintenance mode
Configure anomaly detection to exclude metrics for CIs that are in maintenance mode from
model learning.
You can change the settings of system properties to include or exclude metric data for CIs while
they are in maintenance mode.
When the system property sa.model_learner.maint_event_record_history_enabled is set to true
(default), Metric Intelligence stores historical information about the times CIs enter and exit
maintenance mode. When the system property sa_metric.maint_exclusion is set to true (default),
metrics from CIs that are in maintenance mode are excluded from model learning.

Anomaly model testing
Use anomaly model testing to apply and evaluate anomaly detection for a small set of CIs and
metrics, using actual metric data. Compare test results to expected results, then fine-tune the
anomaly detection model before enabling anomaly detection for the tested CIs and metrics in
the production environment.
For example, before enabling anomaly detection for Linux Servers, you can use anomaly model
testing with actual metric data collected for those Linux Servers. Existing alerts might indicate
an anomaly for a specific metric and CI. You can create an anomaly test rule to test anomaly
detection for those CIs and metrics, and then check if the expected anomaly is detected. You
can also examine the bounds calculated by the anomaly model to see if they match expected
bounds. After you fine-tune the test model, you can enable anomaly detection for Linux Servers.
Anomaly model testing supports up to 20 time series, which can include 20 metric types for the
same CI, the same metric type for 20 different CIs, or any combination of those options.

View test results in the Insights Explorer
Upon completion of a test run, a URL to an Insights Explorer becomes available. The anomaly
model testing results appear in this trimmed-down version of the Insights Explorer. This Insights
Explorer is pre-loaded with the charts and scores for the metric series specified in the anomaly
test rule. You cannot add any CMDB groups or application services to this Insights Explorer.
Each chart in the Insights Explorer, contains the Anomaly Test Statistics section in its Chart
Settings. This section is specific to anomaly model testing and provides the following options:
• Show Bounds: Displays a computed upper and lower bound for the metric in an anomaly
model testing, based on learning of past metric values. The upper and lower bounds always
appear together.
• Show Anomaly Scores: Displays anomaly scores on a virtual axis of 0-10, for an anomaly
model test. Color code is based on the score thresholds that are defined in the Anomaly Score
to Event Severity Map [sa_metric_anomaly_score_to_event_severity_map] table.

Use test results to fine-tune anomaly detection
Anomaly model testing uses the upper and lower bounds configured for selected series in the
anomaly test rule. The anomaly model test results show how many anomaly alerts would have
been generated based on the specified settings, if anomaly detection was enabled for the tested
CIs and metrics. You can then decide if this result is acceptable. Fine-tune the bounds so that
the number of anomaly alerts that are generated is not excessive, but sufficient to accurately
indicate an out of bounds score.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4682


<!-- page 4683 -->
Advanced Promotion Engine
You can create a definition for the Advanced Promotion Engine so that you can define the
conditions for promoting the anomaly alerts to the All Alerts table. By promoting the alerts that
meet the conditions, only the most relevant anomaly alerts move to the table.
The Advanced Promotion Engine moves the most relevant alerts from the list of anomaly alerts
to the All Alerts table. When a group of anomaly alerts on a configuration item (CI) meets the
conditions that you set in the definition that you created for the Advanced Promotion Engine, the
grouping mechanism groups the promoted alerts in the All Alerts table. For example, you can
create a condition indicating that only the anomaly alerts that belong to a specific CI class with a
minimum severity of Major are to be promoted to the All Alerts table.
The All Alerts table is the table that contains the issues that need your immediate attention. The
anomaly alerts on the different metrics within a CI in a specific time period indicate an issue that
needs to be promoted to the All Alerts table.
Anomaly alerts indicate a deviation from projected metric values for monitored CIs. For details,
see View anomaly alerts.
The Advanced Promotion Engine is activated automatically as part of the Metric Intelligence
application.
You can use the Advanced Promotion Engine definitions that come with the base system (for
the Linux server and for the Windows server), or you can create definitions on the different CI
classes. The base system definitions indicate that the CIs on the Linux and Windows servers are
operational, and those CIs that have a minimum severity of Major are to be promoted to the All
Alerts table.
All Advanced Promotion Engine tasks require the evt_mgmt_admin role. The evt_mgmt_user role
enables you to view definitions and properties only.

Metric Explorer
Metric Explorer provides an easy-to-navigate interface where service agents can view the health
of a CI associated with an alert. Health details for a CI include various metric charts with control
bounds, and aggregations in a time period.
The set of metric charts that appear for a CI class in Metric Explorer is determined by metric
chart configurations in the Metric Dashboard Metadata [sa_metric_dashboard_metadata] table.
The Metric Dashboard Metadata table is initially populated with configurations for common
classes and important metrics for those classes. A user with the admin or evt_mgmt_admin role
can update the default metric chart configurations in the Metric Dashboard Metadata table.
There can be up to 10 active metric charts configured for a class at any point.

Chart types
A metric chart that appears in the metric charts form in Metric Explorer can be a time-series
chart or a single-score chart.
Time-series chart

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4683


<!-- page 4684 -->
The time-series chart type is a graph of all data points in the specified time range,
for the metrics of the CI associated with the chart. Time-series charts are similar
to charts in Insights Explorer, and depending on settings, show lower and upper
bounds.
Single-score chart

The single-score chart type shows a single number which is an aggregation of the
data points in the time series for the metric and CI of the chart. The aggregation is
an average of the data points, or the maximum, minimum, or last data point in the
time series.

Templates
The ITOM Service Operations Workspace Metric Explorer template enables metric chart drilldown from Digital Analytics (DA) dashboards to Metric Explorer. For details, see Express list
®
overview
on the ServiceNow Developer portal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4684


<!-- page 4685 -->
Self-health monitoring for Metric Intelligence
Use Event Management self-health monitors to monitor the health of Metric Intelligence
infrastructure components and processes, and to alert about potential issues. Self-health
monitoring allows you to proactively remediate issues and minimize data loss.
Metric Intelligence is pre-configured to use Event Management self-health monitors to ensure
that essential components and processes are functioning properly. If a monitor detects a failure,
then the Event Management self-health monitoring system creates an event for the issue. These
events are then converted into an Event Management alert or get appended to a previous alert.
Metric Intelligence self-health monitors run every 60 seconds.
For example, if an Metric Intelligence MID Server distributed cluster experiences an issue, an
event is generated with the status of Major. Then, this event is converted into an alert. Later,
when the issue is resolved, a new event is generated with the status of Info and the original alert
is closed.

Monitored components and processes
Component/Process Check

Error Condition

Metric Intelligence extension is running
properly

Monitor checks the status field of the

ecc_agent_ext_context_metric table
to detect a state of Error or Warning.

Metric Intelligence MID Server distributed
cluster is running properly

Monitor checks the status field of the
ecc_agent_cluster table to detect a
state of Error, Segmented, orStopped.

Note: For a state of Stopped, an event

is created only if the error_message
field is not empty.
Metrics are collected by active connectors
that are configured for metrics collection

For each connector with the Metrics
collection flag set to true:
Monitor checks the status of the
last_kpi_status field in the
em_connector_instance table to detect
a status of Error.

Essential Metric Intelligence scheduled jobs
are active

Monitor checks the following essential
scheduled jobs, to detect if any is inactive:
• Metric Intelligence — Metric configuration
job
• Metric Intelligence — Sync tables with mid
• Metric Intelligence — Validate MID
Distributed cluster

For more information about enabling or disabling an Metric Intelligence self-health monitor, see
Configure a self-health monitor.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4685


<!-- page 4686 -->
Related topics
Self-health monitors for Event Management
Scheduled jobs installed with Metric Intelligence

Domain separation and Metric Intelligence
Domain separation is supported in Metric Intelligence. Domain separation enables you to
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

How domain separation works in Metric Intelligence
When domains are separated in Metric Intelligence, users can view and manage alerts and
events only in their own (tenant) domain. After the binding process has finished, the domain of
the configuration item (CI) is used so that users within that domain can explore metric data. A
domain column is present for Metric Intelligence tables that are provided in the base system. The
domain column shows the name of the domain to which the CI belongs.

Note: If the domain column does not appear in the list, click

(Personalize List) and
add the required column. In addition, you can add a column that displays the domain path.
The following Metric Intelligence features have limited domain separation support.

Feature

Metric types

Support

Supported at global level.
The instance owner can control the metric
types for all domains.

Metric type registration

Supported at global level.
The instance owner can control the metric
type registration for all domains.

Metric class

Supported at global level.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4686


<!-- page 4687 -->
Feature

Support

The instance owner can control the metric
classes that are used for all domains.
Configuration settings rules

Supported at global level.
The instance owner can control the
configuration settings rules for all domains

Related topics
Domain separation for service providers

Configuring Metric Intelligence
Plan and configure your Metric Intelligence implementation.

Configuration overview
Metric Intelligence configuration typically follows these steps:
1. Install the AIOps Experience plugin [sn_sow_aiops].
2. Manually configure a MID Server for Metric Intelligence.
3. Activate Metric Intelligence.
4. Stream metrics to the instance, via the relevant data source or connector.
5. Choose and configure metrics to monitor.
6. Ensure that metrics are properly bound to CIs.
7. Configure the action level for anomaly detection.
8. Define an advanced promotion rule, to determine the conditions for promoting an anomaly
alert to an IT alert.

Get started with Metric Intelligence
Complete the following setup and initial configuration steps to start using Metric Intelligence.

Before you begin

Activate the Metric Intelligence plugin (com.snc.sa.metric).
Role required: evt_mgmt_admin

About this task

Metrics have an expiration date. You can continue receiving data without interruption when
a metric’s expiration date arrives by pushing ahead the expiration date. For details, contact
customer support.
Metric Intelligence guided setup provides a sequence of tasks that help you configure Metric
Intelligence on your ServiceNow instance. To open Metric Intelligence guided setup, navigate to
Guided Setup > ITOM Guided Setup, and click Continue. Then scroll to Metric Intelligence, and
click Continue. For more information about using the guided setup interface, see Using guided
setup .
Alternatively, you can complete the following procedure.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4687


<!-- page 4688 -->
Procedure
1. Configure a MID Server for Metric Intelligence.
For details, see MID Server and MID Server distributed cluster for Metric Intelligence.
2. Use the Automated Metric Intelligence setup.
3. Choose a source for collecting metrics.
4. Choose and configure metrics to monitor.
5. Create event rules to map raw metric data to specific CIs and Create an event rule to bind
metric events to host CIs.
6. About 10 minutes after the Metric Intelligence Metrics extension has started, run the quick start
tests for Metric Intelligence to verify functionality.

Activating Metric Intelligence
Metric Intelligence enables you to capture, explore and analyze operational metrics data,
identifying and indicating anomalies. This analysis can prevent potential service outages.
View and work with Metric Intelligence data in the Insight Explorer, Agent Workspace, and
Service Operations Workspace interfaces.
For details on the plugins activated with Metric Intelligence, see Plugins or applications installed
with ITOM AIOps.

Automated Metric Intelligence setup
When you initially set up Metric Intelligence, you can automate many of the setup steps. For
example, the automated setup configures a MID Server for Metric Intelligence and creates a MID
Server distributed cluster which contains that MID Server.

Before you begin

Role required: evt_mgmt_admin

About this task

When the following conditions are met, the related link Setup Metric Intelligence appears on the
MID Server form, enabling automated setup:
• The MID Server has been validated.
• The MID Server is in a running state.
• The property sa.metric.display.mid.setup.action is set to true (default value).
The Metric Intelligence automated setup performs the following setup tasks:
1. Configures the MID Server with the Operation Intelligence application
2. Adds the Metrics capability to the MID Server
3. Creates a new MID Server cluster of type ‘distributed’ set with a default port of 47100 for
Apache Ignite
4. Adds the MID Server to the new MID Server distributed cluster
5. Creates a Metric Intelligence Metrics Extension and starts it
6. Opens the Metric Intelligence Metrics Context form. On this form, you can click the Setup
REST Listener UI action to create the MID Web Server extension configured with the ‘Enable
REST Listener’ option and default port 8097

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4688


<!-- page 4689 -->
If automatic setup fails, you can create a MID Server distributed cluster manually, as described in
the Use the Setup Metric Intelligence link only to create the first MID Server distributed cluster
that contains a single MID Server, with default values. After the automated setup completes, you
have to manually create any additional MID Server distributed clusters or add Metric Intelligence
MID Servers.

Procedure
1. Navigate to All > MID Server > Servers.
2. Select the MID Server that you want to configure as a Metric Intelligence MID Server.
3. On the MID Server form, select Setup Metric Intelligence in the Related Links section.
4. In the newly created Metric Intelligence Metrics Extension form:
a. Wait for the Status value to be Started.
b. If configuring the MID Server for pushing, select the UI action Setup REST Listener.
A notification appears about the MID Server extension being created. The MID Web Server
Extension field appears and Enable REST Listener is checked. You can preview the MID
Server Extension record to verify that its Status value is Started.
Related topics
MID Server and MID Server distributed cluster for Metric Intelligence

Manually configure a MID Server for Metric Intelligence
To use Metric Intelligence, configure at least one MID Server with Metric Intelligence as a
supported application, with the Metrics capability, and which runs the Metric Intelligence
Metrics extension. Then, add that Metric Intelligence MID Server as a member to a MID Server
distributed cluster.

Before you begin

Ensure that the MID Server meets all software, hardware, and configuration requirements to be
configured for Metric Intelligence.
Role required: To access the MID Server - mid_server. To configure a MID Server in an instance
(for example, to add a supported application), refer to the MID Server documentation.

Procedure
1. Navigate to All > MID Server > Servers.
2. Click the MID Server that you want to configure for Metric Intelligence.
3. Add the Metric Intelligence application:
a. At the center of the MID Server form, click Supported Applications.
b. In the Supported Applications section, click Edit.
c. In the slushbucket, select OperationalIntelligence and click the > add button.
d. Click Save.
4. Add the Metrics capability:
a. At the center of the MID Server form, click Capabilities.
b. In the Capabilities section, click Edit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4689


<!-- page 4690 -->
c. In the slushbucket, select Metrics and click the '>' add button.
d. Click Save.
5. Click Update.

What to do next

Create a MID Server distributed cluster, and add the Metric Intelligence MID Server as a member
to that cluster.

Manually configure the Metric Intelligence extension
Configure the MID Server Metric Intelligence extension to enable the MID Server to pull raw
metrics from external systems, to detect anomalies and report anomalies to the instance along
with raw data. This MID Server Metric Intelligence extension is required and must be running in
order for your system to be able to collect Metric Intelligence data.

Before you begin

See Get started with Metric Intelligence for the high level steps of setting up Metric Intelligence.
Role required: evt_mgmt_admin

About this task

The MID Server Metric Intelligence extension normalizes the raw data and then transmits the
data to the instance. If the extension detected any anomalies above a specified threshold,
they are sent to the instance. The extension runs for as long as it is enabled. This provides a
persistent connection to the MID Server to constantly listen for raw Metric Intelligence data from
external systems.
The MID Server Metric Intelligence extension:
• Receives raw metric data, batches them and sends them to the instance at specified intervals.
• Detects anomalies and sends a report to the instance.
• The information that is sent to the ServiceNow instance is relevant for Metric Intelligence, so
data processing is efficient.
The MID Server Metric Intelligence extension does not provide any API calls. However, when the
Enable REST Listener option is selected, the extension adds a handler for the supported REST
APIs.

Note:
• Only upon configuring the Metric Intelligence extension, the Metric Intelligence MID Servers
actually join the distributed cluster for Metric Intelligence.
• After the initial configuration, the first metric is not included in the metrics data.
• There is a delay of one minute in receiving metric information from the synchronization of the
instance with the MID Server.

Procedure
1. Navigate to All > MID Server > Profiles and Deployments > Metric Intelligence.
2. In the Metric Intelligence Metrics Contexts list, click New.
3. Fill in the fields, as appropriate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4690


<!-- page 4691 -->
Field

Description

Name

A unique name for this extension for easy
identification.

Short description

A description of this extension.

Status

This field is auto-populated with the status
of the extension. The field is blank until the
extension is started. After issuing a command
to the extension, one of the following values
is displayed:
◦ Started: The extension is running.
◦ Stopped: The extension is not running.
◦ Offline: The MID Server is down.
◦ Error: The extension failed with an error
(the error message is displayed in Error
Message).
◦ Warning: A run-time exception has
occurred. The extension continues to work.

Error Message

Message describing any error that causes a
command, such as Start or Stop, to fail. This
field appears when the value in the Status
field is Error and also when the value in the
Status field is Warning.

Execute on

Location for running this extension.
When configuring this option for use with
Metric Intelligence, set to Specific MID
Server. Then specify the MID Server with
Operationalintelligence as a
supported application and the Metrics
capability.

MID Server

The name of the designated MID
Server, which is configured with

Operationalintelligence as a
supported application and the Metrics
capability.
Executing on

[Read-Only] The name of the MID Server on
which the extension is running. This field
shows the name of the MID Server even if
the MID Server is down. If the user stops the
extension, this field is empty.

4. When using the Push method for collecting Metric Intelligence data, the MID Server Metric
Intelligence extension must be configured with the Enable REST Listener enabled. This option
enables a listener so that a REST endpoint can receive raw metric data. The raw metric data
is then placed in the regular data flow where the data is sent to the instance and the anomaly
detector looks for anomalies. When selected, it adds a handler to the web server to listen for
any metrics that are pushed to the MID Server. When this option is selected, the Web Server

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4691


<!-- page 4692 -->
extension, which starts a Web Server on the MID Server, must also be configured. For more
information, see Configure the MID Web Server extension.
5. Right-click the form heading and select Save.
6. Under Related Links click Start to save the Metric Intelligence data in this extension and start
the extension.
Commands available in the MID Server Metric Intelligence extension
Related Link

Description

Start

Starts the extension on the configured MID Server if it is currently not running.

Stop

Stops the running extension on the configured MID Server. No action is taken
if the extension is not running.

Restart

Stops, then starts the extension on the configured MID Server.

Test

The test is not relevant to Metric Intelligence. Parameters are not tested or
validated when Test is run.

Update
parameters

Sends the latest saved parameters to the extension.

Activate the Advanced Promotion Engine
Before you can use the Advanced Promotion Engine feature, you must activate it from the list of
plugins.

Before you begin

Role required: evt_mgmt_admin

About this task
To activate the var.adv-promo-eng, you also need to install a plugin for ACC-M, which
includes the Metric Intelligence plugin.
If you don't plan to use ACC-M, install Metrics Intelligence plugin only, as described in Get
started with Metric Intelligence.

Procedure
1. Navigate to System Definition > Plugins.
2. Locate Advanced Promotion Engine (id: sn_metric_promote).
3. Select the entry and review the app details on the Store Application Advanced Promotion
Engine form.
4. Select Activate/Upgrade in the Related Links section.
5. Select Activate.

Configure domain separation for Metric Intelligence
Configure Metric Intelligence for domain separation to create logically defined domains that limit
unauthorized access to data.

Before you begin

Role required: evt_mgmt_admin and evt_mgmt_integration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4692


