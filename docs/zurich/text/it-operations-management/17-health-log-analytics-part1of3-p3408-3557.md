# Zurich IT Operations Management — Health Log Analytics

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 3408–3557 of 4823 | Part 1 of 3

Sections: Health Log Analytics (p3408)

---

<!-- page 3408 -->
Alert correlation rule form (continued)
Field

Description

The correlationType can be PRIMARY or
SECONDARY, and the alerts ID must be in an
array.
CurrentAlert is the GlideRecord of the
currentAlert on which that rule runs.
The system supports only one primary per
alert, so:
Do not correlate more than one alert under
the PRIMARY array.
Do not correlate alerts that already have a
primary under the SECONDARY array.
The system supports open alerts only, so do
not correlate alerts that have been closed
under either one of the arrays.
*/
(function findCorrelatedAlerts(currentAlert){
var result = {};

//Insert your code

here
result =
{'SECONDARY':['alertID1','alertID2','alertID3'
]};
return JSON.stringify(result);
})(currentAlert);
Relationship

Description of the CI relationship between primary and secondary, for
example, Allocated from::Allocated to or Allocated
to::Allocated from.
This field displays only if either Primary is Parent or Primary is Child is
selected for the Relationship Type.

This field does not appear when Advanced is selected.

Health Log Analytics
®

The ServiceNow Health Log Analytics application helps prevent IT issues before your users are
affected. It helps you identify the root cause of an issue by enabling you to triage related logs and
analyze the raw data.
Health Log Analytics collects raw log data streaming into your instance and structures textual
data into key-value pairs. It detects meaningful patterns in the data, and when it discovers an
anomaly, it sends an event to the Event Management application.
Health Log Analytics is available in the ServiceNow Store

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3408


<!-- page 3409 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Get started

Explore

Configure

Explore Health Log Analytics workflow,
architecture, and high-level tasks.

Configure Health Log Analytics
setup and configuration tasks.

Remediate

Control

Investigate log data and take action
to resolve the underlying issue.

Influence how HLA generates and
prioritizes alerts and detects anomalies.

System features and health alerts

Analytics and reports

View system features and
core components with
related system health alerts.

Gain insights into the number of
issues predicted before users were
affected and the money that was saved.

Reference

Find reference information
about Health Log Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3409


<!-- page 3410 -->
Health Log Analytics licensing
®

The ServiceNow AI Platform uses a licensing method where your organization is billed for using
Health Log Analytics, which is available as a separate license from ITOM AIOps. The ServiceNow
Product Documentation doesn't provide information on prices, packaging, or other details
determined by your organization customer contract. For general information about licensing and
subscriptions, see ITOM/OT SU Licensing and subscriptions.

Dependencies
For a list of Health Log Analytics plugin dependencies, see Plugins or applications installed with
ITOM AIOps.

Troubleshoot and get help
• Ask questions and explore other resources for in the ServiceNow Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Health Log Analytics
ServiceNow Health Log Analytics predicts IT issues before they affect your users by collecting,
analyzing, and correlating machine-generated log data in real time. It discovers anomalies and
alerts you to potential issues.

Health Log Analytics overview
Health Log Analytics typically receives and processes log data and sends events to ServiceNow
Event Management. The application discovers anomalies as they happen and helps you identify
the root cause of an issue by enabling you to triage related logs and analyze the raw data.
Health Log Analytics can handle any kind of machine-generated textual log data. It can process
application, infrastructure, and network logs, as well as other types of textual log data. Although a
configuration management database (CMDB) can be helpful to generate high-quality events and
alerts, it is not necessary.

Note:
• Health Log Analytics supports only UTF-8 logs. It does not support binary logs.
• If you are sending logs in a language other than English, additional configuration may be
required.

Health Log Analytics users
Health Log Analytics Users
User

Description

Role

Administrator

Configures the Health Log
Analytics application to make
it ready for use by Operators.

evt_mgmt_admin, admin

Performs administration tasks
to keep the system running
efficiently.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3410


<!-- page 3411 -->
Health Log Analytics Users (continued)
User

Description

Role

Operator

Analyzes Log Analytics alerts
and takes action to help
resolve the underlying issue.

evt_mgmt_operator

Health Log Analytics workflow
Health Log Analytics collects and processes log data automatically. It structures the data
logically for operators to analyze, and generates meaningful alerts and suggestions that display
in Event Management.
The diagram shows the Health Log Analytics workflow from collecting the data through sending
an event or alert to Event Management.
Health Log Analytics workflow

Ingestion
This layer connects your environment to Health Log Analytics. You can stream your
logs directly from servers and endpoints or from log repositories. The optional
guided setup helps you create data input connectors for common data sources,
such as:
• Rsyslog
• Beats
• Splunk
• Elasticsearch
• MID Server
• TCP
Structuring
This layer deals with structuring log data and auto-mapping it to logical silos, called
Components. Data structuring can be done automatically or manually.
The system auto-structures log data by extracting the following properties from
incoming log messages: Message, Timestamp, Host, Severity, and External-IDs. It
extracts explicit values, like "property-name" and "value is IP." and semantic ones
such as length, number of English words, and variance.
Auto-mapping assigns log samples and metadata to the appropriate tags
automatically. The system tries to map log lines by analyzing the source that
streams the data. The mapping is based on agent hints and common transport
header fields.
Enrichment
This layer handles identifying the variable parts of a log message.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3411


<!-- page 3412 -->
Health Log Analytics workflow - Enrichment

It also identifies keywords and contextual properties. In the image, "WARN" and
"Failed" are the keywords to track. "User," "source IP," and "port" are the contextual
properties.
Analysis
In this layer, each log line is indexed. Health Log Analytics extracts properties
from the inner log message that contribute to models of behavior that the system
learns to expect. Anomalous behavior departs from this expected behavior. You can
search for an event and its most significant properties for manual triaging.
Machine Learning (ML) and Artificial Intelligence (AI)
Health Log Analytics uses advanced unsupervised machine-learning algorithms
to discover patterns within logs and learn their unique data behavior. It then sets
dynamic thresholds based on the data signature in real time to detect issues when
they first occur. When the system detects a deviation from the typical pattern, it
sends an event to Event Management.
Alert in Event Management
Health Log Analytics sends events to Event Management. In Event Management,
Health Log Analytics alerts appear in the All alerts list. This list enables operators to
see alerts from the event and the Health Log Analytics alert type in a single location.

Health Log Analytics benefits
Health Log Analytics benefits
Benefit

Feature

User

Simplify data input setup
using the guided setup.

Guided setup

Administrator

Set up log data connector
integrations quickly and
conveniently from the
Integrations Launchpad.

Log data connector
integrations

Administrator

Shorten onboarding time by
installing content packs.

Content packs

Administrator

Save time and reduce errors
by migrating data input
configurations between
instances.

Data input migration

Administrator

Identify the root cause of an
Surrounding logs
alert by analyzing the logs that
surround the anomaly.

Operator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3412


<!-- page 3413 -->
Health Log Analytics benefits (continued)
Benefit

Feature

User

Visualize anomalous log data
on the Log viewer.

Log viewer

Operator

Detect relationships in log
data.

Log correlators

Operator

Assign higher or lower
significance to alerts.

Mute alert metrics

Operator

Reduce noise by creating log
filters.

Log alert filters

Operator

Influence how Health Log
Analytics finds anomalies by
managing keywords it looks
for in the log data.

Lexical keywords

Operator

Create alerts for specified
metrics by adding, changing,
or deleting rules.

Custom alert rules

Operator

What to explore next
• Health Log Analytics architecture
• How Health Log Analytics generates alerts
Health Log Analytics architecture
Health Log Analytics collects logs streaming into your ServiceNow instance from endpoints or
data lakes, such as Splunk and Elasticsearch.
The ServiceNow instance receives the logs either via a MID Server
connector instance or via
MID-less Ingest, which supports integration with services such as Amazon Data Firehose. Health
Log Analytics identifies and triages anomalies in your log data using unsupervised machinelearning (ML) models. It then groups the anomalies together and applies further algorithms to
help identify the root cause of the issue.
Health Log Analytics scaled architecture

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3413


<!-- page 3414 -->
How Health Log Analytics generates alerts
Health Log Analytics identifies patterns in your log data and learns pattern behavior. When HLA's
AI engine detects anomalous behavior, it sends an event to the ServiceNow Event Management
application. As an operator, you can use these predictive alerts to handle emerging IT issues
before they impact users.

Log anomaly detection
There are many kinds of anomalous (abnormal or unexpected) behavior. In this example,
the system tracks the baseline rate—the average number of events per minute—of particular
messages. The chart shows the values for the previous day as the lightly peach-shaded area
and the values for today as a blue line. The chart shows a dramatic deviation from the expected
baseline values at around 10:10. This anomalous behavior generates an alert.
Anomalous behavior

Health Log Analytics uses various methods to detect anomalies and generate alerts.

Alert metrics
Health Log Analytics monitors multiple metrics in the log stream to detect anomalous behavior.
Each metric is associated with a unique source: the combination of service instance and
component. When the system identifies an anomalous pattern for a metric, it generates an alert.
As an operator, you can provide feedback about the generated alerts. Your feedback "teaches"
Health Log Analytics that a specific alert is significant or irrelevant to you. The application then
either raises the priority of the alert metric or mutes it to reduce noise.
• A significant alert is more likely to be included in a Log Analytics group when the associated
metric behaves anomalously. For more information, see Mark an alert as significant in Health
Log Analytics
• Mute an alert for a specified source to eliminate distracting new alerts for unimportant issues.
When a metric is muted, Health Log Analytics removes the current alert and any other alerts
based on that metric from the feed. It also stops generating new alerts from that metric. For
more information, see Mute an unimportant alert in Health Log Analytics.
• When the situation changes, you can return a significant metric to its default significance. You
can also reactivate a muted metric to cause the system to start generating alerts again. For
more information, see Restore normal importance to an alert metric in Health Log Analytics.

Lexical keywords
Health Log Analytics scans your logs for words that can indicate important issues. Lexical
keywords such as "crashed" or "failed" signal a condition that can merit attention.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3414


<!-- page 3415 -->
The system sets a threshold for each lexical keyword that is based on what it considers the
normal occurrence pattern and frequency of that keyword in your logs. When it scans your logs,
it finds all occurrences of the keyword. If the number exceeds the threshold, it generates an alert.
For more information, see View the lexical keywords that generate alerts in Health Log Analytics.
For information about managing global keywords, see Add, edit, or delete lexical keywords in
Health Log Analytics. To create or delete keywords for a specific source type, see Configure
source type capabilities in Health Log Analytics.

Correlations
Log correlators are keys or values in log data that detect correlations between alerts. For
example, a log correlator could detect when the ID of a particular network device occurs
simultaneously in multiple warnings across different service instances. For more information, see
Identifying related alerts in log data by using log correlators.

Advanced alert filtering
Add advanced log alert filters to scan alerts for conditions that you specify. The filters reduce
noise by dropping alerts that do not indicate a significant issue. While developing a filter, you can
test, update, publish, or activate the filter at any time. For more information, see Create advanced
log alert filters.

Custom alert rules
Define a Log Analytics alert rule when you encounter log data that should generate an alert. The
alert rule generates an alert for a specified metric with a threshold that you specify and sets the
properties of the generated alert. For more information, see Add a Log Analytics alert rule in
Health Log Analytics.
Types of anomalous behavior in Health Log Analytics
Anomalous behavior in a CI or a service can indicate an important issue. For example, a spike in
the frequency or number of messages of a particular type can indicate a problem.

Understanding anomalies
To build models of expected behavior, Health Log Analytics monitors the log stream to learn
baselines for patterns, metrics, and gauges over various time periods. Time periods can be
hourly, daily, weekly, or unlimited. Behavior that departs from the learned models is considered
anomalous behavior.

Types of log property
Pattern
A pattern is a value or rate that repeats, whether in text, time, or relationships.
Meter
A meter property is a numeric or text value. For example, a status code, a response
code, an action, or a pattern.
Gauge
A gauge property has a numerical value that is reported continuously. Gauge
properties represent operations that consume resources. For example, CPU usage,
memory usage, or response time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3415


<!-- page 3416 -->
How anomalies appear in Health Log Analytics
The Anomaly card illustrates the anomalous activity that led to the alert.
• The blue line shows the recent anomalous activity.
• On some charts, the lightly shaded area indicates the expected (learned baseline) behavior.
A peach-shaded area represents the baseline values for the same hour one day earlier. A pinkshaded area shows the values for the same period in the previous week.
• Click the information icon to see how the anomaly was identified:

.

In this example, the peach-shaded area shows the same data for the same hour one day earlier.
The spike in the metric value (events per minute) is clearly visible.
Anomaly card

Kinds of anomalies
Some of the kinds of anomalies
Behavior

Description

New behavior

A pattern that has not ever been seen. The
New Behavior alert type does not display a
chart.

Signal dead/Stopped appearing

All pattern or log data from a source has
stopped. There has been no signal for at least
five minutes.

Signal alive/Appearing again

A pattern or log data from a "dead" source is
appearing again. For a baseline of one hour, a
pattern is "dead" if it appears less than once
per minute.

Anomaly above average or below average

Activity that deviates from expected baseline
behavior for pattern or meter or gauge metrics,
such as keywords metrics or severity metrics.

Baseline reference increase or decrease

An increase or decrease in the value or
volume of a log property as compared to the
one-hour or one-week baseline.

Correlation of severity and keyword alerts

An increase in the volume of a severity level or
keyword.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3416


<!-- page 3417 -->
Types of Health Log Analytics alerts
Health Log Analytics generates several types of alerts.
In a list of alerts, all alerts that are generated by Health Log Analytics have the value Log
Analytics in the Source column. The value in the Group column identifies the kind of alert, as
follows:
Component-based alert
Component-based alerts involve more than one configuration item (CI). A
component is a logical component of a service instance that caused the alert. A
component can be multiple CIs that perform the same function, such as multiple
redundant hosts.

Important: Each Component-based alert is the parent of a number of readonly alerts. You do not work directly on read-only alerts. You work only on the
parent Component-based alert.
In this example service instance, the identical Java apps X, Y, and Z make up a
single component: Component B. Tomcat servers Q, R, and S and their hosts make
up a different single component: Component C.
Example service instance

Log Analytics alert
A Log Analytics alert identifies an anomaly that involves a single CI. A Log Analytics
alert has the value None in the Group column. The anomaly that leads to the alert
can be an unexpected number of log entries or an unexpected value of a metric.
Log Analytics group
When the system identifies multiple Log Analytics alerts that are related in important
ways, it groups them into a Log Analytics group. A Log Analytics group can group up
to four alerts. The system generates a Log Analytics group when the Log Analytics
alerts share one or more of the following relationships:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3417


<!-- page 3418 -->
• Time: The events all occurred within a configured time interval.
• Metadata: The alerts have matching values in log-line metadata. For example, all
alerts involve the same host.
• Message text: The message text in the log data is similar or identical between
alerts.
• Trend: The alerts show a similar tendency in values or rates. For example, a
particular metric value is increasing in all alerts.

Note: You can mark an alert as significant. A significant alert is more likely
to be included in a Log Analytics group when the associated metric behaves
anomalously. For more information, see Mark an alert as significant in Health
Log Analytics.

Configuring Health Log Analytics
As an Administrator, set up and configure Health Log Analytics for Operators to use, and carry
out administration tasks to ensure that the system runs efficiently.

Configuration overview
Complete the following tasks for a successful setup and configuration of Health Log Analytics.

Important: Regardless of how you implement Health Log Analytics, for log data ingestion
via a MID Server you must first configure MID Server system requirements
the MID Server log ingestion capability is enabled.

and ensure that

For MID Server proxy requirements, see MID Server proxy preconditions for streaming logs
to Health Log Analytics.
1. Install Health Log Analytics (HLA).
Install the Health Log Analytics application.
2. Set up log data inputs for streaming raw log messages to your ServiceNow instance.
Use any of the following methods:
◦ Set up integrations for Health Log Analytics from the Integrations Launchpad.
You're encouraged to set up data input integrations from the Integrations Launchpad, which
provides a unified interface for convenient integration.
◦ Set up data inputs in Health Log Analytics using guided setup.
◦ Set up data inputs in Health Log Analytics manually.
3. Identify and resolve a log streaming issue in Health Log Analytics.
Identify and address log streaming issues to ensure that the data inputs you have configured
are streaming data properly to your instance.
4. Edit raw log data before processing in Health Log Analytics.
Modify raw log messages before they are processed in the MID Server, and therefore before
Health Log Analytics maps and structures it.
5. Map raw log data so HLA can correctly process it.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3418


<!-- page 3419 -->
Configure mapping for your raw log data so that Health Log Analytics can correctly parse and
analyze it.

Note: The user-friendly Log context mapping interface in the new HLA UI is simpler to
use than Data input mapping in HLA's classic interface (UI16). For more information about
Log context mapping, see Map logs to service instances and components for context in
Health Log Analytics.
6. Refine the source type structure.
Fine-tune how Health Log Analytics reads your inner log messages and detects anomalies by
customizing the extracted properties in the source type structure.
Health Log Analytics enables you to reclassify auto-classified properties and change automapped labels. These adjustments help the system's machine learning better understand your
priorities.
7. Perform additional data input setup tasks.
After performing the mandatory data input setup and configuration, you can continue with
optional setup tasks.
8. Perform advanced data input configuration tasks.
Install Health Log Analytics (HLA)
Install Health Log Analytics by requesting ServiceNow HLA installation from ServiceNow
Customer Support.

Before you begin

The minimum version of the ServiceNow AI Platform required for Health Log Analytics installation
is Zurich.

Important: Health Log Analytics uses the default user sn_occ_occultus for internal
communication. Make sure that this user is active and do not deactivate it.
Role required: admin

Procedure
1. Ensure that the Health Log Analytics application and all of its associated ServiceNow Store
applications have valid ServiceNow entitlements.
To obtain the entitlements, contact your ServiceNow Solution Consultant.
2. Opt into the ITOM AIOps product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3419


<!-- page 3420 -->
a. Go to the ServiceNow Store

website and search for the Health Log Analytics app.

Health Log Analytics app in the ServiceNow Store

b. Select Health Log Analytics.
The Health Log Analytics product page displays.
Health Log Analytics product page in the ServiceNow Store

c. Select View Products.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3420


<!-- page 3421 -->
d. Select Opt-in.
ITOM Health product

3. Install the Health Log Analytics application on your instance.
a. Navigate to System Applications > All Available Applications > All.
b. Find the Health Log Analytics application using the search bar.
c. On the Health Log Analytics tile, select Install.
When the application is successfully installed on the instance, an automatic change request
(CHG) is triggered to request provisioning for the necessary endpoints. The instance admin
receives the request and any relevant notifications.

Note: Even when the Health Log Analytics application is successfully installed, it will
not work until the endpoints have been provisioned.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3421


<!-- page 3422 -->
d. Ensure that the application and its dependencies were installed successfully, as illustrated
in the figure.
Health Log Analytics is installed on the instance

4. Optional: Observe the status of the provisioning process by reviewing the CHG.

Note: Some steps in the provisioning process might require your explicit approval. In
such cases, ServiceNow Customer Support will reach out.
5. When provisioning is completed, ensure that the Health Log Analytics application is up and
running.
a. In the Filter navigator, enter sn_occ_stats.do.
The Health Log Analytics Package Dependencies and Versions table displays.
Health Log Analytics Package Dependencies and Versions table

The provisioned endpoints are listed along with their version number:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3422


<!-- page 3423 -->
▪ Occultus
▪ MetricBase
▪ ElasticSearch

Result

The Health Log Analytics application is installed and provisioned on your instance.

What to do next
• Set up the data input process for Health Log Analytics
®

• (Optional) Install the ServiceNow Agent Client Collector Log Analytics (ACC-L) plugin.
Agent Client Collector Log Analytics enables you to stream log data from Linux and Windows
hosts to a ServiceNow instance using the Agent Client Collector. For more information, see the
Agent Client Collector Log Analytics documentation.
Set up Health Log Analytics on your ServiceNow instance
Implement Health Log Analytics on your ServiceNow instance.

Important:
• Install Health Log Analytics on your instance before implementation. For more
information, see Install Health Log Analytics (HLA).
• Regardless of how you implement Health Log Analytics, you must configure MID Server
system requirements
and ensure that the MID Server log ingestion capability is
enabled.
For MID Server proxy requirements, see MID Server proxy preconditions for streaming
logs to Health Log Analytics.

Setting up data inputs
You're encouraged to integrate data inputs with Health Log Analytics from the Integrations
Launchpad. This tool provides a unified interface for convenient integration with connectors that
feed raw log messages from external sources into your instance for processing and analysis.
For more information, see Set up integrations for Health Log Analytics from the Integrations
Launchpad.
Alternatively, you can set up data inputs in one of the following ways:
• Using guided setup. The guided setup provides a sequence of tasks to help you configure
data inputs on your ServiceNow instance. Using the guided setup ensures that you have the
minimum required setup for the data input process. For more information, see Set up data
inputs in Health Log Analytics using guided setup.
• Manually. For more information, see Set up data inputs in Health Log Analytics manually.
For supported data inputs, see Supported data inputs for Health Log Analytics.
Set up integrations for Health Log Analytics from the Integrations Launchpad
Set up integrations from the Event Management Integrations Launchpad in Service Operations
Workspace for ITOM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3423


<!-- page 3424 -->
Integrations Launchpad
The Integrations Launchpad tool provides a unified interface for convenient integration with
connectors that feed raw log messages from external sources into your ServiceNow instance
for processing and analysis. For more information, see Integrations Launchpad in Service
Operations Workspace for ITOM.

Integrations for Health Log Analytics
The Integrations Launchpad enables the following integrations for Health Log Analytics:
Pull integrations
These integrations pull log data from external data sources and stream the data to
your instance via a MID Server. Select an integration in the table to open a page
with the setup procedure.
Pull integrations
Integration

Description

Elasticsearch

Streams log data from Elasticsearch indices to
your instance.

ServiceNow System Logs
Retriever

Sends log data from the ServiceNow System Log
table to the Health Log Analytics AI engine.

Note: Only a single ServiceNow System
Logs Retriever data input can exist in the
system, and only users with the admin role
can create and configure it. This data input
doesn't run on a MID Server.
Apache Kafka

Streams log data from Apache Kafka to your
instance.

Splunk Poller

Pulls log data from Splunk to your ServiceNow
instance periodically by query.

Microsoft Azure Log Analytics

Streams log data from Microsoft Azure Log
Analytics to your instance. The connector points
the Health Log Analytics AI engine to a data
source in your Microsoft Azure Log Analytics
account.

Microsoft Azure Event Hubs

Streams events from Microsoft Azure Event
Hubs to your instance.

Microsoft Azure Event Hubs
(MID-less)

Streams events from Microsoft Azure Event
Hubs to your instance without a MID Server.

MID Server

Collects log messages from the MID Server and
streams them to your instance.

Push integrations
These integrations connect to external data sources that push log data to your
instance via a MID Server. Select an integration in the table to open a page with the
setup procedure.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3424


<!-- page 3425 -->
Push integrations
Integration

Description

UDP

Sends raw log messages to your instance
directly over a UDP socket.

TCP

Sends raw log messages to your instance
directly over a TCP/SSL socket.

REST API

Streams log data to your instance in JSON
format.

GCP PubSub

Receives log messages that were published to a
Google Cloud Pub/Sub topic and streams them
to your instance.

Splunk UDP

Streams log messages to your ServiceNow
instance over the UDP transport protocol using
a Splunk heavy forwarder.

Splunk TCP

Streams log messages to your ServiceNow
instance over the TCP transport protocol using a
Splunk heavy forwarder.

Amazon Data Firehose

Streams log messages from Amazon Data
Firehose directly to the collector service in
ITOM Gateway, where it’s queued for Health Log
Analytics processing.

Cribl

Enables Health Log Analytics to process Cribl
log messages streaming into the ServiceNow
instance.

Edge Delta REST

Enable Health Log Analytics to process logs it
receives from Edge Delta in a distinct format.
These logs stream into the ServiceNow instance
via REST.

Edge Delta TCP

Enable Health Log Analytics to process logs it
receives from Edge Delta in a distinct format.
These logs stream into the ServiceNow instance
over the TCP transport protocol.

Set up an Apache Kafka integration for Health Log Analytics
Set up an integration for streaming log data from Apache Kafka to your ServiceNow instance for
processing by Health Log Analytics.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3425


<!-- page 3426 -->
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• Consider whether to pull the log data to a single MID Server or to a MID Server cluster.
In MID Server clusters, multiple MID Servers are grouped together for failover protection. The
active integration runs on a single MID Server in the cluster. If that MID Server fails, the system
moves its tasks to the next available MID Server in the cluster in a configured order.
If you decide to use a MID Server cluster, verify the following:
◦ The MID Server cluster includes only MID Servers that support basic authentication.

Note: mTLS is not supported for log ingestion.
◦ Log ingestion is enabled for each MID Server in the cluster.

Note: If log ingestion is not enabled for the active MID Server, Health Log Analytics
enables it automatically.
◦ No more than the default maximum of 10 integrations will pull logs to a single MID Server.
A cluster passes capacity validation if it contains at least one MID Server with fewer than 10
integrations running on it, even when that MID Server is down.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, search for Kafka.
5. Select the Kafka integration tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see the Provide details table in Apache Kafka integration
configuration fields.
7. Select Next.
8. On the Set data retrieval method form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3426


<!-- page 3427 -->
For a description of the fields, see the Set data retrieval method table in Apache Kafka
integration configuration fields.
9. Optional: Select Advanced settings and fill in the advanced configuration fields.
For a description of the fields, see the Advanced settings table in Apache Kafka integration
configuration fields.
10. Optional: Select Test and save to save the integration to the database and test connectivity.
11. Do one of the following:
◦ If you completed all the prerequisites before starting the configuration, select Activate.
In the pop-up screen, select Test & Save to save the integration to the database and test
connectivity. If an error is returned, adjust the configuration as suggested in the error
message and then try to activate the integration again.
Once the test is successful, the integration is activated and the Overview tab is displayed.
On the Integrations Launchpad, the integration tile is available in the Installed integrations
tab.
◦ If you didn't complete all the prior requirements, select Save draft.
The system saves the integration as a draft in the Integrations Launchpad Installed
integrations tab, under Waiting for your action. You can complete the prerequisites and
activate the installation later. For more information, see the What to do next section.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
If you saved the integration as a draft, perform these steps to activate it later:
1. Complete all the prior requirements.
2. In the Integrations Launchpad Installed integrations tab, under Waiting for your action, locate
and select the integration tile.
3. On the configuration screen, select Activate.
Select Test & Save to save the integration to the database and test connectivity. If an error is
returned, adjust the configuration as suggested in the error message and then try to activate
the integration again.
Once the test is successful, the integration is activated and the Overview tab is displayed. The
integration tile is available in the Installed integrations tab on the Integrations Launchpad.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3427


<!-- page 3428 -->
Set up an Amazon Data Firehose (MID-less) integration for Health Log Analytics
Set up an integration to stream log data from Amazon Data Firehose directly to the ServiceNow
data center, where it’s queued for Health Log Analytics processing. There’s no need to store AWS
keys on your ServiceNow instance.

Before you begin

Role required: evt_mgmt_admin

About this task

This integration doesn't run on a MID Server.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter Firehose in the search field.
5. Select the Amazon Data Firehose (MID-less) integration tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see Amazon Data Firehose integration configuration fields.
7. Select Next.
8. Follow one of the procedures provided on the Set-up instruction screen to install the
integration in AWS.
You can perform the installation procedure using either AWS CloudFormation or the AWS
Management Console. Both methods require the same input. The appropriate choice depends
on your requirements and the size of your deployment:
◦ AWS CloudFormation is best for deploying standardized configurations across multiple
environments. Use it when you need automation, repeatability, and infrastructure-as-code
benefits. AWS CloudFormation prompts for input automatically.
◦ The AWS Management Console is best for manual setups and quick configurations where
you don't need automation.
Before you perform either of these procedures, copy the access token, the ServiceNow
endpoint URL, and the integration ID to the clipboard. You need these values during the
installation process.
9. Select Save draft.
10. Select Activate to activate the integration.

Result

The integration is activated and the Overview tab is displayed. The tile for the integration is
available in the Installed integrations tab on the Integrations Launchpad.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3428


<!-- page 3429 -->
What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
Set up a Cribl integration for Health Log Analytics
Set up an integration to enable Health Log Analytics to process Cribl log messages streaming
into your ServiceNow instance.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using a private IP address.
Role required: evt_mgmt_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3429


<!-- page 3430 -->
About this task

If your organization uses Cribl for filtering and routing large volumes of log data from various
sources, the log format received by Health Log Analytics is distinct from other types. The Cribl
integration enables HLA to detect and separate transport headers from inner log messages in
this format, forwarding only the inner message to the source type structure for processing.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter Cribl in the search field.
5. Select the Cribl integration tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see Cribl integration configuration fields.
7. Select Next.
8. On the Set up connection form, fill in the fields.
For a description of the fields, see Cribl integration configuration fields.
9. Select Save draft.
10. Select Activate to activate the integration.

Result

The integration is activated and the Overview tab is displayed. The tile for the integration is
available in the Installed integrations tab on the Integrations Launchpad.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3430


<!-- page 3431 -->
Set up authentication credentials for the Cribl integration in Health Log Analytics
Configure credentials for the authentication method used by the Cribl integration.

Before you begin

Decide on the appropriate authentication method for your instance:
• Basic authentication is preferred for self-hosted (On-Prem) Cribl instances.
• Token-based authentication is required for Cribl Cloud instances.

Note: Token-based authentication is also supported for self-hosted (On-Prem) Cribl
instances.
For token-based authentication, create a client ID and a client secret on your Cribl instance and
use them to generate a token. For example:
• Client ID: 1234567890abcdef
• Client secret: abcdef1234567890
For detailed information on the Cribl API, refer to the Cribl API

documentation.

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Connections & Credentials > Connection & Credential Aliases.
2. Select the default Cribl credential alias: Cribl_Credential_Alias.
3. Select New to create a credential record.
4. Select the appropriate credentials type for your Cribl instance:
◦ For basic authentication, select Basic Auth Credentials.
◦ For token-based authentication, select Custom Header API Key Credential.
5. On the displayed form, fill in the fields.
◦ For basic authentication:
Basic Auth credentials fields
Field

Description

Name

A name that describes the credentials.

Username

Your Cribl server username. For example:
admin.

Password

Your Cribl server password. For example:
admin123.

◦ For token-based authentication:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3431


<!-- page 3432 -->
Custom Header API Key credential fields
Name

A name that describes the credential.

API Key

The authentication token you generated on
the Cribl instance.

6. Select Save to save the credentials configuration.

What to do next
• Verify that the provided credentials have appropriate permissions to access your Cribl
instance.
• Verify that only one active credential record of each credentials type exists under the
credential alias.
Set up an Edge Delta REST integration for Health Log Analytics
Set up an Edge Delta REST integration to enable Health Log Analytics to process logs it receives
from Edge Delta in a distinct format. These logs stream into your ServiceNow instance via REST.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using a private IP address.
Role required: evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3432


<!-- page 3433 -->
About this task

If your organization uses Edge Delta to handle large volumes of log data from multiple sources
before sending it to Health Log Analytics, the log format HLA receives from Edge Delta is different
from other types. The Edge Delta integration enables HLA to detect and separate transport
headers from inner log messages in this format, forwarding only the inner message to the source
type structure for processing.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter Edge Delta in the search field.
5. Select the Edge Delta REST integration tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see Edge Delta REST integration configuration fields.
7. Select Next.
8. Follow the instructions in the Set-up instruction page to install the integration in the 3rd party
console.
a. Copy the displayed URL.
b. In Edge Delta, create an HTTP destination.
c. Paste the copied URL into the HTTP destination.
d. Add the following headers:
▪ Authorization
Use either of the following:
▪ Key <API_KEY>
Find the API_KEY by navigating to All > MID Web Server API Key > View API Key.
▪ Basic <Base64 (username:password)>

Note: Verify that you use a username and password for a MID web server with
Basic Auth enabled.
▪ Content-Type: application/json.
9. Select Save draft.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3433


<!-- page 3434 -->
10. Select Activate to activate the integration.

Note: You can activate a configured integration only when you have fulfilled all the
integration prerequisites. If you installed the integration in draft mode, you can activate it
later by performing these steps:
a. Complete the integration prerequisites.
b. In the Integrations Launchpad Installed integrations tab, under Waiting for your
action, locate and select the integration.
c. In the Set-up instruction screen, select Activate to activate the integration.

Result

The integration is activated and the Overview tab is displayed. The tile for the integration is
available in the Installed integrations tab on the Integrations Launchpad.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
Set up an Edge Delta TCP integration for Health Log Analytics
Set up an Edge Delta TCP integration to enable Health Log Analytics to process logs it receives
from Edge Delta in a distinct format. These logs stream into your ServiceNow instance over the
TCP transport protocol.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3434


<!-- page 3435 -->
Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using a private IP address.
Role required: evt_mgmt_admin

About this task

If your organization uses Edge Delta to handle large volumes of log data from multiple sources
before sending it to Health Log Analytics, the log format HLA receives is different from other
types. The Edge Delta integration enables HLA to detect and separate transport headers from
inner log messages in this format, forwarding only the inner message to the source type structure
for processing.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter Edge Delta in the search field.
5. Select the Edge Delta TCP integration tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see the Provide details table in Edge Delta TCP integration
configuration fields.
7. Optional: Select Advanced settings and fill in the advanced configuration fields.
For a description of the fields, see the Advanced settings table in Edge Delta TCP integration
configuration fields.
8. Select Next.
9. In the Set-up instruction screen, copy the displayed Host IP and Port values and paste them in
your Edge Delta pipeline under TCP destination.

Note: The Host IP and Port values are based on your configuration on the Provide
details form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3435


<!-- page 3436 -->
10. Select Save draft.
11. Select Activate to activate the integration.

Note: You can only activate a configured integration when you have fulfilled all the
integration prerequisites. If you installed the integration in draft mode, you can activate it
later by performing these steps:
a. Complete the integration prerequisites.
b. In the Integrations Launchpad Installed integrations tab, under Waiting for your
action, locate and select the integration.
c. In the Set-up instruction screen, select Activate to activate the integration.

Result

The integration is activated and the Overview tab is displayed. The tile for the integration is
available in the Installed integrations tab on the Integrations Launchpad.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
Set up an Elasticsearch integration for Health Log Analytics
Set up an integration for seamless log data streaming from Elasticsearch indices to your instance
for processing by Health Log Analytics.

Before you begin

Note: Health Log Analytics supports Elasticsearch versions above 7.10.2 and below
8.18.2. For advanced information about streaming log data from Elasticsearch indices to
your instance, see the Stream logs using Elasticsearch data input - Advanced guide
[KB1080162] article in the Now Support knowledge base.
• Verify that the Health Log Analytics application is installed and provisioned on your instance.
For more information, see Install Health Log Analytics (HLA).
• Verify that a service instance is available.
• Verify that the Health Log Analytics AI Engine is up and running.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3436


<!-- page 3437 -->
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using a private IP address.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter Elasticsearch in the search field.
5. Select the Elasticsearch integration tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see the Provide details table in Elasticsearch integration
configuration fields.
7. Select Next.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3437


<!-- page 3438 -->
8. On the Set data retrieval method form, fill in the fields.
For a description of the fields, see Elasticsearch integration configuration fields.
9. Optional: Select Advanced settings to set advanced configuration fields.
For a description of the fields, see the Advanced settings table in Elasticsearch integration
configuration fields.
10. Optional: Select Test and save to save the integration to the database and test connectivity.
11. Do one of the following:
◦ If you completed all the prerequisites before starting the configuration, select Activate.
In the pop-up screen, select Test & Save to save the integration to the database and test
connectivity. If an error is returned, adjust the configuration as suggested in the error
message and then try to activate the integration again.
Once the test is successful, the integration is activated and the Overview tab is displayed.
On the Integrations Launchpad, the integration tile is available in the Installed integrations
tab.
◦ If you didn't complete all the prior requirements, select Save draft.
The system saves the integration as a draft in the Integrations Launchpad Installed
integrations tab, under Waiting for your action. You can complete the prerequisites and
activate the installation later. For more information, see the What to do next section.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
If you saved the integration as a draft, perform these steps to activate it later:
1. Complete all the prior requirements.
2. In the Integrations Launchpad Installed integrations tab, under Waiting for your action, locate
and select the integration tile.
3. On the configuration screen, select Activate.
Select Test & Save to save the integration to the database and test connectivity. If an error is
returned, adjust the configuration as suggested in the error message and then try to activate
the integration again.
Once the test is successful, the integration is activated and the Overview tab is displayed. The
integration tile is available in the Installed integrations tab on the Integrations Launchpad.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3438


<!-- page 3439 -->
Set up a GCP PubSub integration for Health Log Analytics
Set up an integration for receiving log messages that were published to a Google Cloud Platform
(GCP) Pub/Sub topic and streaming them to your ServiceNow instance.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter Google Cloud in the search field.
5. Select the Google Cloud Platform integration tile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3439


<!-- page 3440 -->
Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see the Provide details table in GCP PubSub integration
configuration fields.
7. Select Next.
8. On the Set up connection form, fill in the fields to connect to GCP PubSub.
For a description of the fields, see the Set up connection table in GCP PubSub integration
configuration fields.
9. Optional: Select Advanced Settings and fill in the fields.
For a description of the fields, see the Advanced Settings table in GCP PubSub integration
configuration fields.
10. Optional: Select Test and save to save the integration to the database and test connectivity.
11. Do one of the following:
◦ If you completed all the prerequisites before starting the configuration, select Activate.
In the pop-up screen, select Test & Save to save the integration to the database and test
connectivity. If an error is returned, adjust the configuration as suggested in the error
message and then try to activate the integration again.
Once the test is successful, the integration is activated and the Overview tab is displayed.
On the Integrations Launchpad, the integration tile is available in the Installed integrations
tab.
◦ If you didn't complete all the prior requirements, select Save draft.
The system saves the integration as a draft in the Integrations Launchpad Installed
integrations tab, under Waiting for your action. You can complete the prerequisites and
activate the installation later. For more information, see the What to do next section.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
If you saved the integration as a draft, perform these steps to activate it later:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3440


<!-- page 3441 -->
1. Complete all the prior requirements.
2. In the Integrations Launchpad Installed integrations tab, under Waiting for your action, locate
and select the integration tile.
3. On the configuration screen, select Activate.
Select Test & Save to save the integration to the database and test connectivity. If an error is
returned, adjust the configuration as suggested in the error message and then try to activate
the integration again.
Once the test is successful, the integration is activated and the Overview tab is displayed. The
integration tile is available in the Installed integrations tab on the Integrations Launchpad.
Set up a Microsoft Azure Event Hubs integration for Health Log Analytics
Set up an integration for streaming events from Microsoft Azure Event Hubs to your ServiceNow
instance.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter Event Hubs in the search field.
5. Select the relevant Azure Event Hubs integration tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3441


<!-- page 3442 -->
6. On the Provide details form, fill in the fields and then select Next.
For a description of the fields, see the Provide details table in Microsoft Azure Event Hubs
integration configuration fields.
7. On the Set data retrieval form, fill in the fields.
For a description of the fields, see the Set data retrieval table in Microsoft Azure Event Hubs
integration configuration fields.
8. Optional: Select Advanced settings and fill in the advanced configuration fields.
For a description of the fields, see the Advanced settings table in Microsoft Azure Event Hubs
integration configuration fields.
9. Optional: Select Test and save to save the integration to the database and test connectivity.
10. Do one of the following:
◦ If you completed all the prerequisites before starting the configuration, select Activate.
In the pop-up screen, select Test & Save to save the integration to the database and test
connectivity. If an error is returned, adjust the configuration as suggested in the error
message and then try to activate the integration again.
Once the test is successful, the integration is activated and the Overview tab is displayed.
On the Integrations Launchpad, the integration tile is available in the Installed integrations
tab.
◦ If you didn't complete all the prior requirements, select Save draft.
The system saves the integration as a draft in the Integrations Launchpad Installed
integrations tab, under Waiting for your action. You can complete the prerequisites and
activate the installation later. For more information, see the What to do next section.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
If you saved the integration as a draft, perform these steps to activate it later:
1. Complete all the prior requirements.
2. In the Integrations Launchpad Installed integrations tab, under Waiting for your action, locate
and select the integration tile.
3. On the configuration screen, select Activate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3442


<!-- page 3443 -->
Select Test & Save to save the integration to the database and test connectivity. If an error is
returned, adjust the configuration as suggested in the error message and then try to activate
the integration again.
Once the test is successful, the integration is activated and the Overview tab is displayed. The
integration tile is available in the Installed integrations tab on the Integrations Launchpad.
Set up a Microsoft Azure Event Hubs (MID-less) integration for Health Log Analytics
Set up an integration for streaming events from Microsoft Azure Event Hubs to your ServiceNow
instance without a MID Server.

Before you begin

Role required: evt_mgmt_admin

About this task

This Microsoft Azure Event Hubs integration eliminates the need for a MID Server, thereby
simplifying setup and enabling more efficient log data ingestion into your instance. By removing
the MID Server requirement, log data collection and processing are streamlined to promote
faster analysis and root cause identification.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter Azure Event Hubs (MID-less) in the search
field.
5. Select the Azure Event Hubs (MID-less) integration tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields and then select Next.
Provide details
Field

Description

Integration Name

Unique name of this integration. For example:
My Event Hubs MID-less integration. This
field is required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the
name you entered.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3443


<!-- page 3444 -->
Field

Description

Description

Option to add a brief description of the
integration to help identify it.

Transport

Protocol used to stream the log data. This
field is read-only.
This integration uses Microsoft Azure Event
Hubs to stream log data to your instance.

7. On the Set-up instruction screen, perform the appropriate procedure to install the integration
in your third-party console.
◦ Install the integration with Bicep, a domain-specific language (DSL) that uses declarative
syntax to deploy Azure resources.
Using Bicep enables automation and consistency across environments through
Infrastructure as Code (IaC), allowing you to manage your Azure environment more
efficiently. It also supports version control and integration with CI/CD pipelines.
◦ Install the integration in the Azure portal.
Installing in the Azure portal is a good choice if you're doing a one-time setup or prefer a
graphical interface. It provides a convenient way to configure resources, making it suitable
for straightforward deployments.
The screen provides a link to detailed configuration instructions for each of these two
installation options.
8. Do one of the following:
◦ If you completed all the prerequisites before starting the configuration, select Activate.
The integration is activated and the Overview tab is displayed. On the Integrations
Launchpad, the integration tile is available in the Installed integrations tab.
◦ If you didn't complete all the prior requirements, select Save draft.
The system saves the integration as a draft in the Integrations Launchpad Installed
integrations tab, under Waiting for your action. You can complete the prerequisites and
activate the installation later. For more information, see the What to do next section.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3444


<!-- page 3445 -->
Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
If you saved the integration as a draft, perform these steps to activate it later:
1. Complete all the prior requirements.
2. In the Integrations Launchpad Installed integrations tab, under Waiting for your action, locate
and select the integration tile.
3. On the Set up connection tab, select Activate.
When the test is successful, the integration is activated and the Overview tab is displayed.
The integration tile is available in the Installed integrations tab on the Integrations Launchpad.
Set up a Microsoft Azure Log Analytics integration for Health Log Analytics
Set up an integration for streaming log data from Microsoft Azure Log Analytics to your
ServiceNow instance. The integration points the Health Log Analytics AI engine to a data source
in your Microsoft Azure Log Analytics account.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3445


<!-- page 3446 -->
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter Azure Log in the search field.
5. Select the Azure Log Analytics integration tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields and then select Next.
For a description of the fields, see the Provide details table in Microsoft Azure Log Analytics
integration configuration fields.
7. On the Set data retrieval method form, fill in the fields.
For a description of the fields, see the Set data retrieval method table in Microsoft Azure Log
Analytics integration configuration fields.
8. Optional: Select Advanced settings and fill in the advanced configuration fields.
For a description of the fields, see the Advanced settings table in Microsoft Azure Log
Analytics integration configuration fields.
9. Optional: Select Test and save to save the integration to the database and test connectivity.
10. Do one of the following:
◦ If you completed all the prerequisites before starting the configuration, select Activate.
In the pop-up screen, select Test & Save to save the integration to the database and test
connectivity. If an error is returned, adjust the configuration as suggested in the error
message and then try to activate the integration again.
Once the test is successful, the integration is activated and the Overview tab is displayed.
On the Integrations Launchpad, the integration tile is available in the Installed integrations
tab.
◦ If you didn't complete all the prior requirements, select Save draft.
The system saves the integration as a draft in the Integrations Launchpad Installed
integrations tab, under Waiting for your action. You can complete the prerequisites and
activate the installation later. For more information, see the What to do next section.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3446


<!-- page 3447 -->
Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
If you saved the integration as a draft, perform these steps to activate it later:
1. Complete all the prior requirements.
2. In the Integrations Launchpad Installed integrations tab, under Waiting for your action, locate
and select the integration tile.
3. On the configuration screen, select Activate.
Select Test & Save to save the integration to the database and test connectivity. If an error is
returned, adjust the configuration as suggested in the error message and then try to activate
the integration again.
Once the test is successful, the integration is activated and the Overview tab is displayed. The
integration tile is available in the Installed integrations tab on the Integrations Launchpad.
Set up a MID Server integration for Health Log Analytics
Set up an integration for collecting and streaming MID Server log messages to your ServiceNow
instance for processing by Health Log Analytics.

Before you begin

Important: You can create only one MID Server integration per MID Server.
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3447


<!-- page 3448 -->
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter mid in the search field.
5. Select the MID Server integration tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see the Provide details table in MID Server integration
configuration fields.
7. Select Advanced Settings and fill in the fields.
For a description of the fields, see the Advanced Settings table in MID Server integration
configuration fields.
8. Do one of the following:
◦ If you completed all the prerequisites before starting the configuration, select Activate.
The integration is activated and the Overview tab is displayed. On the Integrations
Launchpad, the integration tile is available in the Installed integrations tab.
◦ If you didn't complete all the prior requirements, select Save draft.
The system saves the integration as a draft in the Integrations Launchpad Installed
integrations tab, under Waiting for your action. You can complete the prerequisites and
activate the installation later. For more information, see the What to do next section.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3448


<!-- page 3449 -->
Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
If you saved the integration as a draft, perform these steps to activate it later:
1. Complete all the prior requirements.
2. In the Integrations Launchpad Installed integrations tab, under Waiting for your action, locate
and select the integration tile.
3. On the configuration screen, select Activate.
The integration is activated and the Overview tab is displayed. The integration tile is available
in the Installed integrations tab on the Integrations Launchpad.
Set up a REST API integration for Health Log Analytics
Set up an integration for streaming log data to your ServiceNow instance for processing by
Health Log Analytics.

Before you begin
• Verify that the Health Log Analytics application is installed and provisioned on your instance.
For more information, see Install Health Log Analytics (HLA).
• Verify that a service instance is available.
• Verify that the Health Log Analytics AI Engine is up and running.
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3449


<!-- page 3450 -->
On the MID Web Server Context form, in the Execute on field, select Specific MID Server and
not the cluster option. In the MID Server field, select the specific MID Server to which the log
data is pulled.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.

Note: REST API integrations support only UTF-8 encoding for incoming data.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter REST in the search field.
5. Select the REST API integration tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see REST API integration configuration fields.
7. Select Next.
8. In the Set-up instruction screen, copy the provided URL to the clipboard.
The format of the URL is: http://(MID_SERVER_IP):(MID_WEB_SERVER_PORT)/
ap1/mid/hla/raw, where /aps/mid/hla/raw is the endpoint. HLA has replaced
(MID_SERVER_IP) and (MID_WEB_SERVER_PORT) with the values you configured on
the Provide details form.
9. Select Save draft.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3450


<!-- page 3451 -->
10. Select Activate to activate the integration.

Note: You can only activate a configured integration when you have fulfilled all the
integration prerequisites. If you installed the integration in draft mode, you can activate it
later by performing these steps:
a. Complete the integration prerequisites.
b. In the Integrations Launchpad Installed integrations tab, under Waiting for your
action, locate and select the integration.
c. In the Set-up instruction screen, select Activate to activate the integration.

Result

The integration is activated and the Overview screen is displayed. The tile for the integration is
available in the Installed integrations tab on the Integrations Launchpad.

What to do next

Instruct your API client to send log messages to the MID Server.
1. In the API client, configure a request with the following parameters:
◦ HTTP Method: POST.
◦ URL: The URL you copied in the Set-up instruction screen.
◦ Authentication: The required authentication credentials. For example, Basic authentication
(username and password).

Note: The authentication method must be the same as the method configured on the
MID Web Server.
◦ Headers: Set the Content-Type header to match your payload format.
▪ For JSON: application/json.
▪ For raw text: text/plain.
◦ Body: The logs payload in JSON or raw text.
2. Send the request.
A successful response indicates that the MID Server has received the payload. When the MID
Server has processed the log messages, the data input streams them to your ServiceNow
instance using the REST protocol.
Set up a ServiceNow System Logs Retriever integration for Health Log Analytics
Set up an integration for streaming log data from your ServiceNow platform's System Log table to
the HLA engine.

Before you begin

Note: This integration doesn't run on a MID Server. Only a single ServiceNow System Logs
Retriever integration or data input can exist in the system.
• Verify that the Health Log Analytics application is installed and provisioned on your instance.
For more information, see Install Health Log Analytics (HLA).
• Verify that a service instance is available.
• Verify that the HLA Engine is up and running.
Role required: evt_mgmt_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3451


<!-- page 3452 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter System Logs in the search field.
5. Select the ServiceNow System logs tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. The Provide details form is displayed.
These fields are auto-populated, because only one ServiceNow System Logs Retriever
integration or data input can exist in the system. For a description of the fields, see the Provide
details table in ServiceNow System Logs Retriever integration configuration fields.
7. Select Next.
8. Optional: On the Set data retrieval method page, build conditions for filtering log data from
the System Log table before it is streamed to the HLA engine.
(Optional) This page helps you focus on the specific logs you want to monitor. For example,
you might want to look at Discovery logs or exclude email logs. By default, all logs are included.
9. Do one of the following:
◦ If you completed all the prerequisites before starting the configuration, select Activate.
The integration is activated and the Overview tab is displayed. On the Integrations
Launchpad, the integration tile is available in the Installed integrations tab.
◦ If you didn't complete all the prior requirements, select Save draft.
The system saves the integration as a draft in the Integrations Launchpad Installed
integrations tab, under Waiting for your action. You can complete the prerequisites and
activate the installation later. For more information, see the What to do next section.

Result

Log data starts streaming from the ServiceNow System Log table to the Health Log Analytics
AI engine, based on the configured filters. The dedicated HLA engine for your instance starts
analyzing your system logs in real-time.

Note: Starting with Health Log Analytics version 37.0.15, you can use the ServiceNow
System Logs Retriever integration to automatically detect errors and anomalies in your
ServiceNow instance's system log. By combining HLA's anomaly detection with Now
Assist's GenAI capabilities, you can identify and resolve platform issues more effectively for
a better user experience. For more information, see Use Case: Proactive monitoring of your
ServiceNow instance in Health Log Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3452


<!-- page 3453 -->
What to do next

Leverage the information in the Overview tab to refine how HLA reads the log data by adjusting
your integration configuration. For more information, see Review log streaming data and adjust
integration settings in Health Log Analytics.
The MID Server streaming status and the Log streaming sources table do not appear on the
Overview tab for this integration, because it doesn't run on a MID Server. When the integration
is first configured, it may take up to 24 hours for the first alerts to appear. Once the data is
populated, you can refresh the screen to see real-time metrics.

Tip: Use the View menu to go directly from the Overview tab to the Data Input Mapping,
Source Type Structures, and Log Sources pages with context from the integration. If
your log data is not properly mapped, structured, or sourced, go back and adjust the
configuration. If the Service Operations Workspace Log Analytics application is installed,
the View menu also provides direct access to the Log Viewer, where you can see the raw
logs that the integration ingests.
If you saved the integration as a draft, perform these steps to activate it later:
1. Complete all the prior requirements.
2. In the Integrations Launchpad Installed integrations tab, under Waiting for your action, locate
and select the integration tile.
3. On the configuration screen, select Activate.
The integration is activated and the Overview tab is displayed. The integration tile is available
in the Installed integrations tab on the Integrations Launchpad.
Set up a Splunk Poller integration for Health Log Analytics
Set up an integration that periodically pulls log data from Splunk to your ServiceNow instance for
processing by Health Log Analytics.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3453


<!-- page 3454 -->
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.
• The MID Server must support basic authentication.

Note: mTLS is not supported for log ingestion.
• No more than the default maximum of 10 integrations will stream logs to a single
MID Server. You can modify the maximum number by adding the property
sn.occ.log_ingestion.max_datainputs_per_mid to the MID Server and then
changing the default value.
To find out how many data inputs are streaming logs to the same MID Server, navigate to the
Streaming Sources table and count the data inputs that stream to a specific MID Server.
• Consider whether to pull the log data to a single MID Server or to a MID Server cluster.
In MID Server clusters, multiple MID Servers are grouped together for failover protection. The
active integration runs on a single MID Server in the cluster. If that MID Server fails, the system
moves its tasks to the next available MID Server in the cluster in a configured order.
If you want to use a MID Server cluster, verify the following:
◦ The MID Server cluster includes only MID Servers that support basic authentication.
◦ Log ingestion is enabled for each MID Server in the cluster.

Note: If log ingestion is not enabled for the active MID Server, Health Log Analytics
enables it automatically.
◦ No more than the default maximum of 10 integrations will stream logs to a single MID Server.
A cluster passes capacity validation if it contains at least one MID Server with fewer than 10
integrations running on it, even when that MID Server is down.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter Splunk Poller in the search field.
5. Select the Splunk Poller integration tile.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3454


<!-- page 3455 -->
Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see the Provide details table in Splunk Poller integration
configuration fields.
7. Select Next.
8. On the Set data retrieval method form, fill in the fields.
For a description of the fields, see the Set data retrieval method table in Splunk Poller
integration configuration fields.
9. Select Advanced settings and fill in the advanced configuration fields.
For a description of the fields, see Splunk Poller integration configuration fields.
10. Optional: Select Test and save to save the integration to the database and test connectivity.
11. Do one of the following:
◦ If you completed all the prerequisites before starting the configuration, select Activate.
In the pop-up screen, select Test & Save to save the integration to the database and test
connectivity. If an error is returned, adjust the configuration as suggested in the error
message and then try to activate the integration again.
Once the test is successful, the integration is activated and the Overview tab is displayed.
On the Integrations Launchpad, the integration tile is available in the Installed integrations
tab.
◦ If you didn't complete all the prior requirements, select Save draft.
The system saves the integration as a draft in the Integrations Launchpad Installed
integrations tab, under Waiting for your action. You can complete the prerequisites and
activate the installation later. For more information, see the What to do next section.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
If you saved the integration as a draft, perform these steps to activate it later:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3455


<!-- page 3456 -->
1. Complete all the prior requirements.
2. In the Integrations Launchpad Installed integrations tab, under Waiting for your action, locate
and select the integration tile.
3. On the configuration screen, select Activate.
Select Test & Save to save the integration to the database and test connectivity. If an error is
returned, adjust the configuration as suggested in the error message and then try to activate
the integration again.
Once the test is successful, the integration is activated and the Overview tab is displayed. The
integration tile is available in the Installed integrations tab on the Integrations Launchpad.
Set up a Splunk TCP integration for Health Log Analytics
Set up an integration to stream log messages to your ServiceNow instance over the TCP
transport protocol using a Splunk heavy forwarder. Health Log Analytics processes the ingested
log data.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3456


<!-- page 3457 -->
• The MID Server must support basic authentication.

Note: mTLS is not supported for log ingestion.
• No more than the default maximum of 10 integrations will stream logs to a single
MID Server. You can modify the maximum number by adding the property
sn.occ.log_ingestion.max_datainputs_per_mid to the MID Server and then
changing the default value.
To find out how many data inputs are streaming logs to the same MID Server, navigate to the
Streaming Sources table and count the data inputs that stream to a specific MID Server.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter Splunk in the search field.
5. Select the Splunk TCP integration tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see the Provide details table in Splunk TCP integration
configuration fields.
7. Optional: Select Advanced settings and fill in the advanced configuration fields.
For a description of the fields, see the Advanced settings table in Splunk TCP integration
configuration fields.
8. Select Next.
9. Follow the procedure on the Set-up instruction screen to install the integration in the thirdparty console.

Note: The procedure varies based on your configurations.
10. Select Save draft.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3457


<!-- page 3458 -->
11. Select Activate to activate the integration.

Note: You can only activate a configured integration when you have fulfilled all the
integration prerequisites. If you installed the integration in draft mode, you can activate it
later by performing these steps:
a. Complete the integration prerequisites.
b. In the Integrations Launchpad Installed integrations tab, under Waiting for your
action, locate and select the integration.
c. In the Set-up instruction screen, select Activate to activate the integration.

Result

The integration is activated and the Overview screen is displayed. The tile for the integration is
available in the Installed integrations tab on the Integrations Launchpad.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
Set up a Splunk UDP integration for Health Log Analytics
Set up an integration to stream log messages to your ServiceNow instance over the UDP
transport protocol using a Splunk heavy forwarder. Health Log Analytics processes the ingested
log data.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3458


<!-- page 3459 -->
Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter Splunk in the search field.
5. Select the Splunk UDP integration tile.

Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see Provide details table in Splunk UDP integration
configuration fields.
7. Optional: Select Advanced settings and fill in the advanced configuration fields.
For a description of the fields, see the Advanced settings table in Splunk UDP integration
configuration fields.
8. Select Next.
9. Follow the procedure on the Set-up instruction screen to install the integration in the thirdparty console.

Note: The procedure varies based on your configurations.
10. Select Save draft.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3459


<!-- page 3460 -->
11. Select Activate to activate the integration.

Note: You can only activate a configured integration when you have fulfilled all the
integration prerequisites. If you installed the integration in draft mode, you can activate it
later by performing these steps:
a. Complete the integration prerequisites.
b. In the Integrations Launchpad Installed integrations tab, under Waiting for your
action, locate and select the integration.
c. In the Set-up instruction screen, select Activate to activate the integration.

Result

The integration is activated and the Overview screen is displayed. The tile for the integration is
available in the Installed integrations tab on the Integrations Launchpad.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
Set up a TCP integration for Health Log Analytics
Set up an integration for sending log data to your ServiceNow instance directly over a TCP/SSL
socket.

Before you begin
• Verify that the Health Log Analytics application is installed and provisioned on your instance.
For more information, see Install Health Log Analytics (HLA).
• Verify that a service instance is available.
• Verify that the HLA Engine is up and running.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3460


<!-- page 3461 -->
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.

Note: For information about streaming data from Logstash to your instance, see the
Streaming data from Logstash to your HLA instance
Support knowledge base.

[KB0994735] article in the Now

Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter TCP in the search field.
5. Select the TCP integration tile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3461


<!-- page 3462 -->
Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see the Provide details table in TCP integration configuration
fields.
7. Select Next.
8. In the Set-up instruction screen, follow the instructions on the screen to install the integration
in the third-party console.
9. Select Save draft.
10. Select Activate to activate the integration.

Note: You can only activate a configured integration when you have fulfilled all the
integration prerequisites. If you installed the integration in draft mode, you can activate it
later by performing these steps:
a. Complete the integration prerequisites.
b. In the Integrations Launchpad Installed integrations tab, under Waiting for your
action, locate and select the integration.
c. In the Set-up instruction screen, select Activate to activate the integration.

Result

The integration is activated and the Overview screen is displayed. The tile for the integration is
available in the Installed integrations tab on the Integrations Launchpad.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
Set up a UDP integration for Health Log Analytics
Set up an integration for sending log data to your ServiceNow instance directly over a UDP
socket.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3462


<!-- page 3463 -->
Before you begin
• Verify that the Health Log Analytics application is installed and provisioned on your instance.
For more information, see Install Health Log Analytics (HLA).
• Verify that a service instance is available.
• Verify that the HLA Engine is up and running.
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Add integration.
The Integrations launchpad appears.
4. In the Browse integrations tab, enter UDP in the search field.
5. Select the UDP integration tile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3463


<!-- page 3464 -->
Note: If you start an integration setup before meeting all prerequisites, a message
appears. You can either cancel the setup and complete the prior requirements first,
or continue in draft mode and complete them later. Note that you can't activate the
integration until you meet all prerequisites.
6. On the Provide details form, fill in the fields.
For a description of the fields, see the Provide details table in UDP integration configuration
fields.
7. Optional: Select Advanced Settings to set advanced configuration fields.
For a description of the fields, see the Advanced Settings table in UDP integration
configuration fields.
8. Select Next.
9. In the Setup instruction screen, follow the instructions on the screen to install the integration
in the third-party console.
10. Select Save draft.
11. Select Activate to activate the integration.

Note: You can only activate a configured integration when you have fulfilled all the
integration prerequisites. If you installed the integration in draft mode, you can activate it
later by performing these steps:
a. Complete the integration prerequisites.
b. In the Integrations Launchpad Installed integrations tab, under Waiting for your
action, locate and select the integration.
c. In the Set-up instruction screen, select Activate to activate the integration.

Result

The integration is activated and the Overview screen is displayed. The tile for the integration is
available in the Installed integrations tab on the Integrations Launchpad.

What to do next

Leverage the information on the Overview tab to refine how HLA reads the log data. For more
information, see Review log streaming data and adjust integration settings in Health Log
Analytics.

Tip: Use the More options menu (

) to open the Data Input Mapping, Source Type
Structures, or Log Sources pages with context from the integration. If your log data is
not properly mapped, structured, or sourced, go back and adjust the configuration. If the
Service Operations Workspace Log Analytics application is installed, the More options
menu also provides direct access to the Log Viewer, where you can review raw log
messages ingested by the integration.
For more information, see:
• Log data auto-mapping and mapping
• Source type structure adjustment
• Review logs on the Log Viewer
Monitoring log data flow and optimizing integration settings in Health Log Analytics
The Overview screen in Health Log Analytics provides a comprehensive view of the components
in the log-processing pipeline of active integrations. From this screen, you can troubleshoot any
streaming issues and adjust the integration’s settings if needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3464


<!-- page 3465 -->
The Overview screen shows the log data streaming status and streaming sources of an active
integration. It provides direct access to the Data Input Mapping, Source Type Structures, and
Log Sources pages, as well as the Log Viewer, all with context from the current integration.
Overview screen and View menu items

Streaming status
The Streaming status section on the Overview screen shows the status of data streaming
between the log source and the MID Server and between the MID Server and the HLA engine.
It displays the number of logs per minute passing through the MID Server and through the HLA
engine.

Note: For the ServiceNow System Logs Retriever integration, the Overview screen
doesn’t display the MID Server streaming status because that integration doesn't run on a
MID Server.
The ServiceNow AIOps component shows the total number of alerts that the
HLA engine has created. These statistics are updated when the Overview
screen loads and are automatically refreshed every minute to show live data. You
can change the default auto-refresh time interval through the system property

sn_itom_integ_app.overview_page_data_input_stats_auto_refresh_interval_second
If data streaming fails, the integration is automatically deactivated and the Streaming status
marks the component where the failure occurred. In addition, a banner explains the failure and
either proposes steps to take to fix it or refers to ServiceNow support.

For MID-less or OpenTelemetry Protocol (OTLP) integrations, such as Amazon
Data Firehose, the Overview screen displays the ITOM Gateway as a component
in the log-processing pipeline. The MID Server component is not shown in
the pipeline, because log data is sent directly from the source to the ITOM

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3465


<!-- page 3466 -->
Gateway. The logs are then processed by the HLA engine to find anomalies.

For these integrations, the Overview screen shows the average rate of logs per minute over the
last 15 minutes passing through the ITOM Gateway and the HLA engine, similar to the metrics
shown for MID-based ingestion.

Note: The ITOM Gateway component is shown only if the MID Server property

mid.hla.itom_gateway_streaming.enabled is set to true. For more information,
see MID Server properties

.

When the integration isn't streaming live data from the source, a warning message is displayed.
There is a 4-hour interval between the last log source time and the current time before this
message is generated. You can change the default time interval through the system property
sn_itom_integ_app.overview_page_log_source_time_threshold_hours.

Note: The warning message is displayed only when the HLA engine is up and running.
Log streaming sources
Depending on your integration, the Log streaming sources table displays the following
information about the integration's log streaming sources.

Note: This table isn’t available for the ServiceNow System Logs Retriever integration.
Log streaming sources
Column

Description

Name

The name of the log data source.

Status

The streaming status: Active or Not active.

Data input

The integration streaming the data to your
ServiceNow instance.

MID Server

The MID Server to which the log data is
streaming.

Last event time

The time when the integration received the
latest event.

Last log processing time

The time when the last log was received or
processed.

Raw log lines/sec

The average number of raw log lines that
streamed to the MID Server per second in the
last one-minute interval.

Note: This value represents the number
of raw log lines before preprocessing.
Pre-processed log lines/sec

The average number of preprocessed log lines
that streamed to the MID Server per second in
the last one-minute interval.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3466


<!-- page 3467 -->
Log streaming sources (continued)
Column

Description

Note: This value can differ from the
number of raw log lines per second. For
example, the difference can be a result
of logs having been dropped during
preprocessing.
Related topics
Review log streaming data and adjust integration settings in Health Log Analytics
Review log streaming data and adjust integration settings in Health Log Analytics
Review the log data streaming status and streaming sources of an active integration for Health
Log Analytics on the integration's Overview screen. From this tab, you can investigate streaming
issues and refine the integration settings. Leverage the displayed data to refine how HLA reads
the log data by adjusting the integration's configuration.

Before you begin

Confirm that the integration has been activated on the Integrations Launchpad. For more
information, see Set up integrations for Health Log Analytics from the Integrations Launchpad.
For MID-less or OpenTelemetry Protocol (OTLP) integrations, verify that the
mid.hla.itom_gateway_streaming.enabled property is set to true in the MID Server
properties to enable displaying the ITOM Gateway component on the Overview screen.
To access the Log Viewer from the Overview tab with context from the integration, you must have
the ServiceNow Service Operations Workspace Log Analytics application installed.
Role required: evt_mgmt_admin

About this task

For more information about the data shown in the Overview screen, see Monitoring log data flow
and optimizing integration settings in Health Log Analytics.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Manage installed integrations.
The Integrations launchpad appears.
4. In the Installed integrations tab, search for an active integration and open it.
The Overview screen displays, showing the integration's data streaming status and its log data
sources data.

Note: The ServiceNow System Logs Retriever integration doesn't run on a MID Server.
Therefore, for this integration the Overview screen doesn’t display the MID Server
streaming status.
5. Analyze the provided data and investigate any data streaming issues.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3467


<!-- page 3468 -->
6. Optional: Adjust the configuration of the integration, if needed.
Use the options on the View menu (

) to navigate to the relevant table or the Log Viewer.

Note: The View menu content changes dynamically depending on whether the
referenced tables contain data.
View menu options
Option

Description

Data Input Mapping

Opens the Data Input Mapping page.
On this page, you can map sources
manually if HLA didn't discover properties
automatically. For more information, see Map
raw log data in Health Log Analytics.

Source Type Structure

Opens the Source Type Structures page.
In the Source Type Structure, log data
is classified and organized based on its
origin or type. You can adjust the structure
and verify that the HLA AI engine extracts
properties properly and classifies them
correctly. For more information, see Source
type structure adjustment in Health Log
Analytics.

Log Sources

Opens the Log Sources table.
This table enables you to verify that HLA has
created all your log sources. If a log source
is missing, you can add it manually. For more
information, see Verify your log sources in
Health Log Analytics.

Log Viewer

Opens the Log Viewer, which shows the
frequency of anomalies in the log data during
a specific time period. For more information,
see Reviewing the logs that are connected
with an alert on the Log Viewer in Health Log
Analytics.

Note: The Log Viewer option
appears only if the Service Operations
Workspace Log Analytics application is
installed.

7. When you have resolved any data streaming issues and fixed the configuration, select Test
and save.
The system saves the updated configuration to the database and tests the configured port,
returning either success or an error. If an error is returned, fix the configuration according to the
suggestions on the screen and then select Test and save again. Once the test is successful,
continue with the next step.
8. Reactivate the integration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3468


<!-- page 3469 -->
Map logs to service instances and components for context in Health Log Analytics
Map your logs to service instances and components so that Health Log Analytics can generate
alerts in context. Contextualizing your log data is especially important when the integration
processes logs from multiple service instances and components.

Before you begin

Configure and activate an integration before you perform this procedure. For more information,
see Set up integrations for Health Log Analytics from the Integrations Launchpad.
Role required: evt_mgmt_admin

About this task

Log context mapping enables you to configure the settings that Health Log Analytics (HLA) uses
to map your raw log data to the appropriate log source. A log source is defined by a service
instance and a component, enabling HLA to link logs to their corresponding service instance and
component for more contextualized analysis.
For example, a large financial institution might face performance issues with its e-banking
application, which relies on various components like web, application, and database servers.
Without log context mapping, logs from these components appear isolated, complicating issue
correlation. An anomaly in a Tomcat server log might be detected, but without proper context,
the operator struggles to assess its impact. Log context mapping enables defining rules to map
logs to the e-banking application service instance and the Tomcat server component, providing a
contextualized view for root cause analysis and resolution.
By default, automatic log context mapping is enabled. Health Log Analytics uses the settings you
define in this procedure to identify service instances and components in log examples and map
log data to them automatically.

Important: If a manually-defined mapping script exists in the Data Input Mapping page,
automatic mapping overwrites it.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. Perform one of the following procedures.
Option

Description

a. Under Logs, select Map log context.
From the Optimize section

b. From the Log context mapping page, select
an integration.

Note: This method is supported in
From the Integrate section

Health Log Analytics version 38.0.16 and
later, available from the ServiceNow
.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3469


<!-- page 3470 -->
Option

Description

a. Under Integrations, select Manage in­
stalled integrations.
The Integrations launchpad appears.
b. On the Installed integrations tab, search
for an integration and open it.
The Overview screen displays.
c. Under Next steps, on the Log context map­
ping card, select View mapping.
d. From the Log context mapping page, select
an integration.
The integration's Log context mapping screen displays.

Note: If the selected integration has features that are unsupported in Service

Operations Workspace, you’re referred to the Data Input Mapping page. For more
information, see Map raw log data in Health Log Analytics.
4. Optional: Use the toggle to disable automatic service instance and component mapping.
If you turn off automatic mapping, you must define a mapping script manually in the Data Input
Mapping page. For more information, see Map raw log data in Health Log Analytics.
The remaining steps in this procedure are only relevant when automatic mapping is enabled.

Note: When you open the Log context mapping form for the first time, the system
default values display in all fields.
5. Select the log field by which Health Log Analytics identifies a service instance from Raw log
field drop-down list.
A service instance represents a complete business process.

Note: If the selected field doesn’t appear in the sample log, Health Log Analytics
assigns the default value to the service instance.
6. Select the log field by which Health Log Analytics identifies a component from the Raw log
field drop-down list.
A component represents the smallest part of a service instance. A single service instance
typically comprises multiple components.

Note: If the selected field doesn’t appear in the sample log, Health Log Analytics
assigns the default value to the component.
7. Optional: Select Preview to view the service instances and components the system has
identified based on your settings in the previous steps.
The service instances and components are grouped by service.
8. In Advanced settings, review the fallback service and set the log field by which the system
identifies a source type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3470


<!-- page 3471 -->
a. In the Selected fallback service field, review the fallback service the system uses if it can't
identify the service instance in the log data.
The displayed fallback service is the default service instance you selected when you
configured the integration.

Note: For some integrations, such as Filebeat, this field shows N/A instead of a value.
In these integrations, if Health Log Analytics can't identify the service instance, it uses
the system default value rather than the fallback service.
b. From the Raw log field drop-down list, select the field by which Health Log Analytics
identifies a source type in the log data.

Note: If the selected field doesn’t appear in the sample log, Health Log Analytics
assigns the default value to the source type.
c. Optional: Select Preview to view the log sources the system has identified based on your
source type settings.
9. Optional: Review a log processing simulation based on your current mapping.
The simulation helps you understand how your mapping impacts Health Log Analytics log
processing, enabling you to fine-tune your settings.
◦ The Log fields tab shows the default service, component, and source type and the raw log.
◦ The Extracted values tab shows the service instance, component, and log source that the
system has extracted from the raw log based on your current settings.
10. Select Save mapping to save your settings.
Edit an installed integration in Health Log Analytics
Edit an installed integration for streaming log data to Health Log Analytics on the Integrations
Launchpad. For example, you can switch to a different service instance.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Manage installed integrations.
The Integrations launchpad appears.
4. In the Installed integrations tab, search for and select the tile for the integration you want to
edit.
5. Select a tab that you want to edit.
6. Select Deactivate to deactivate the integration.

Note: You must deactivate the integration before you can edit it.
7. Select Edit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3471


<!-- page 3472 -->
8. Edit the integration per your requirements.
9. Select Test and save.
Health Log Analytics tests the MID Server connectivity, returning either success or an error.
If an error is returned, make adjustments to your configuration as suggested on the screen,
and then select Test and save again. When the test is successful, you can reactivate the
integration.
10. Select Activate.
Deactivate a log data integration in Health Log Analytics
Deactivate an integration for streaming log data to Health Log Analytics on the Integrations
Launchpad. A deactivated integration stops streaming logs to your ServiceNow instance, but is
still available.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. From the Integrate section, under Integrations, select Manage installed integrations.
The Integrations launchpad appears.
4. In the Installed integrations tab, search for and select the integration tile for the integration
you want to deactivate.
5. In the Overview tab, select Deactivate.

Result

The integration is deactivated and stops streaming log data to the instance. The deactivated
integration is still available on the Integrations Launchpad in the Installed integrations tab,
under Waiting for your action.
Set up data inputs in Health Log Analytics using guided setup
The Health Log Analytics guided setup provides a sequence of tasks to help you create data
inputs on your ServiceNow instance. Data input configuration is an essential step in setting up
the Health Log Analytics application. Using guided setup ensures that you have the minimum
required setup for the data input process.

Before you begin

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3472


<!-- page 3473 -->
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.
• For MID Server proxy requirements, see MID Server proxy preconditions for streaming logs to
Health Log Analytics.
Role required: evt_mgmt_admin

About this task
For information about using the guided setup interface, see Using guided setup

.

Procedure
1. Navigate to All > Guided Setup > ITOM Guided Setup > Health Log Analytics.
2. Follow the instructions to select and set up a data input.

What to do next

Once you've created the data input connector, proceed to map your raw log data.
Related topics
Supported data inputs for Health Log Analytics

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3473


<!-- page 3474 -->
Set up data inputs in Health Log Analytics manually
Set up your Health Log Analytics data inputs for Health Log Analytics manually. Data input
configuration is an essential step in setting up the Health Log Analytics application.

Before you begin

Note: Consider using the Health Log Analytics data input guided setup, which ensures
that you have the minimum required setup for the data input process. For more information,
see Set up data inputs in Health Log Analytics using guided setup.
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.
• For MID Server proxy requirements, see MID Server proxy preconditions for streaming logs to
Health Log Analytics.
Role required: evt_mgmt_admin. For the ServiceNow System Logs data input: admin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3474


<!-- page 3475 -->
Procedure
1. Setup a data input manually by performing the relevant procedure described in the product
documentation.
Data Inputs
Data Input

Description

Rsyslog or Beats

The data input streams log data into your
instance using Rsyslog or Beats.

Splunk

The data input streams log data into your
instance using Splunk.

Splunk Polling

The data input periodically pulls log data from
Splunk by using a query.

Elasticsearch

The data input pulls log data from
Elasticsearch indexes into your instance.

TCP

The data input sends raw log messages to
your instance directly over a TCP/SSL socket.

UDP

The data input streams raw log messages to
your ServiceNow instance directly over a UDP
socket.

GCP PubSub

The data input receives log messages that
are published to a Google Cloud Pub/Sub
topic and streams them to your ServiceNow
instance.

MID Server

The data input collects MID Server log files
and streams them to your instance.

Amazon CloudWatch

The data input streams log data from Amazon
CloudWatch to your ServiceNow instance.

Amazon S3 Bucket

The data input streams log data from Amazon
S3 (Simple Storage Service) buckets to your
ServiceNow instance.

Microsoft Azure Log Analytics

The data input streams log data from
Microsoft Azure Log Analytics to your
ServiceNow instance.

Microsoft Azure Event Hubs

The data input streams events from Microsoft
Azure Event Hubs to your ServiceNow
instance.

Apache Kafka

The data input streams log data from Apache
Kafka to your ServiceNow instance.

REST API

The data input streams log data to your
ServiceNow instance in JSON format.

ServiceNow System Logs Retriever

The data input streams log data from the
ServiceNow System Log table to the Health
Log Analytics AI engine.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3475


<!-- page 3476 -->
Data Input

Description

Note: Only a single ServiceNow
System Logs Retriever data input can
exist in the system, and only users with
the admin role can create and configure
it. This data input doesn't run on a MID
Server.
Cribl

The data input to enables Health Log
Analytics to process Cribl log messages
streaming into your ServiceNow instance.

Edge Delta

The data input enables Health Log Analytics
to process Edge Delta log messages
streaming into your ServiceNow instance.

Vector Agent

The data input enables Health Log Analytics
to process log messages that are streaming
into your ServiceNow instance via a Vector
Agent.

Agent Client Collector

The data input streams log messages to your
ServiceNow instance using the ServiceNow
Agent Client Collector.
This data input is supported for use with
the Agent Client Collector Log Analytics
application, available from the ServiceNow
Store .

Note: Selecting Test connection at the end of the procedure ensures that your data
input is configured correctly. You can only publish a data input configuration when the
connection between the MID Server and the data repository has been established.
2. Identify and address streaming issues to ensure that the data input is streaming log data to the
MID Server from all sources.
For more information, see Identify and resolve a log streaming issue in Health Log Analytics.
3. Optional: Edit raw log data before Health Log Analytics maps and structures it.
For more information, see Edit your raw log data before processing.
4. Determine how Health Log Analytics handles raw log data that is streaming into your instance.
By default, every incoming log line is auto-mapped to the correct tag. If properties aren't
discovered automatically, map the data input sources manually by defining a JavaScript
function. For more information, see Map the raw data.
5. Optional: Tweak the source type structure to make sure that Health Log Analytics extracts and
classifies all properties correctly.
For more information, see Refine the source type structure in Health Log Analytics.
6. Optional: Perform additional data input setup tasks.
For more information, see Additional data input setup tasks in Health Log Analytics.
Related topics
Supported data inputs for Health Log Analytics

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3476


<!-- page 3477 -->
Configuring data inputs for Health Log Analytics manually
Configure the data input process manually in Health Log Analytics. Data input configuration is an
essential step in setting up the Health Log Analytics application.
Configure an Amazon CloudWatch data input in Health Log Analytics manually
Set up a data input for streaming log data from Amazon CloudWatch to your ServiceNow
instance.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the Amazon CloudWatch data input.
4. On the form, fill in the fields.
For a description of the fields, see Amazon CloudWatch data input configuration fields.
5. Optional: Select Advanced to set additional configuration fields.
For a description of the fields, see Amazon CloudWatch data input configuration fields. For
information about configuring the advanced settings later, see Configure advanced settings for
Amazon CloudWatch data inputs in Health Log Analytics manually.
6. On the Query settings tab, fill in the fields.
For a description of the fields, see Amazon CloudWatch data input configuration fields.
7. On the Transport tab, fill in the fields.
For a description of the fields, see Amazon CloudWatch data input configuration fields. These
fields are required.
8. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
9. Verify that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
If the data input is configured to run on a MID Server cluster, the system tries to connect all the
MID Servers contained in the cluster to the repository. The cluster passes the test if at least
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3477


<!-- page 3478 -->
one of its MID Servers gets connected. This feature is supported in the Health Log Analytics
application, Version 26.0.17 - February 2023 and later, available from the ServiceNow Store .
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
10. Select Publish to publish the data input to the MID Server.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record. The
data input starts streaming log data from Amazon CloudWatch to your ServiceNow instance.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.

What to do next

Make sure that the data input is streaming data.
Related topics
Configure advanced settings for Amazon CloudWatch data inputs in Health Log Analytics
manually
Configure an Amazon S3 data input in Health Log Analytics manually
Set up a data input for streaming log data from Amazon S3 (Simple Storage Service) buckets to
your ServiceNow instance.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3478


<!-- page 3479 -->
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the Amazon S3 data input.
4. On the form, fill in the fields.
For a description of the fields, see Amazon S3 data input configuration fields.
5. Optional: Select Advanced to set additional configuration fields.
For a description of the fields, see Amazon S3 data input configuration fields. For information
about configuring the advanced settings later, see Configure advanced settings for Amazon S3
data inputs in Health Log Analytics manually.
6. On the Query settings tab, fill in the fields.
7. On the Transport tab, fill in the field.
For a description of the fields, see Amazon S3 data input configuration fields.
8. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
9. Verify that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
If the data input is configured to run on a MID Server cluster, the system tries to connect all the
MID Servers contained in the cluster to the repository. The cluster passes the test if at least
one of its MID Servers gets connected. This feature is supported in the Health Log Analytics
application, Version 26.0.17 - February 2023 and later, available from the ServiceNow Store .
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
10. Select Publish to publish the data input to the MID Server.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record. The
data input starts streaming log data from Amazon S3 buckets to your ServiceNow instance.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.

What to do next

Make sure that the data input is streaming data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3479


<!-- page 3480 -->
Related topics
Configure advanced settings for Amazon S3 data inputs in Health Log Analytics manually
Configure an Apache Kafka data input in Health Log Analytics manually
Set up a data input for streaming log data from Apache Kafka to your ServiceNow instance.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the Apache Kafka data input.
4. On the form, fill in the fields.
For a description of the fields, see Apache Kafka data input configuration fields.
5. Optional: Select Advanced to set additional configuration fields.
For a description of the fields, see Apache Kafka data input configuration fields. For
information about configuring the advanced settings later, see Configure advanced settings for
Apache Kafka data inputs in Health Log Analytics manually.
6. On the Query Settings tab, fill in the field.
For a description of the fields, see Apache Kafka data input configuration fields.
7. On the Transport tab, fill in the fields.
For a description of the fields, see Apache Kafka data input configuration fields.
8. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
9. Verify that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
If the data input is configured to run on a MID Server cluster, the system tries to connect all the
MID Servers contained in the cluster to the repository. The cluster passes the test if at least
one of its MID Servers gets connected. This feature is supported in the Health Log Analytics
application, Version 26.0.17 - February 2023 and later, available from the ServiceNow Store .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3480


<!-- page 3481 -->
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
10. Select Publish to publish the data input to the MID Server.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record. The
data input starts streaming log data from Apache Kafka to your ServiceNow instance.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.

What to do next

Make sure that the data input is streaming data.
Related topics
Configure advanced settings for Apache Kafka data inputs in Health Log Analytics manually
Configure a Cribl data input in Health Log Analytics manually
Set up a dedicated Cribl data input to enable Health Log Analytics to process Cribl log messages
streaming into your ServiceNow instance.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3481


<!-- page 3482 -->
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using a private IP address.
Role required: evt_mgmt_admin

About this task

If your organization uses Cribl for filtering and routing large volumes of log data from various
sources, the log format Health Log Analytics receives is distinct from other types. The Cribl data
input enables HLA to detect and separate transport headers from inner log messages in this
format, forwarding only the inner message to the source type structure for processing.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the Cribl data input.
4. On the Getting Started tab, fill in the form fields and then select Next.
For a description of the fields, see Cribl data input configuration fields.
5. On the Config tab, fill in the form fields and then select Next.
For a description of the fields, see Cribl data input configuration fields.
6. On the Process tab, select the required route and then select Next.
For more information, see Cribl data input configuration fields.

Note: For troubleshooting issues related to this step, see the Cribl - Setting up Cribl
data input | Troubleshooting setup & data ingestion issues [KB0558611]
Now Support Knowledge Base.

article in the

The Finish tab opens.
7. On the Cribl instance, verify that the configuration of the data input is correct.
You can use the Cribl commands displayed on the Finish tab as needed.
8. When the configuration is correct, return to the data input configuration Finish tab and select
Publish to publish the data input.

Result

The data input configuration process is complete. The data input starts streaming log data to
your ServiceNow instance.
For resolving issues related to the ingestion of log data from Cribl, see the Cribl - Setting up
Cribl data input | Troubleshooting setup & data ingestion issues [KB0558611]
article in the Now
Support Knowledge Base.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3482


<!-- page 3483 -->
What to do next

Make sure that the data input is streaming data.
Configure an Edge Delta data input in Health Log Analytics manually
Set up an Edge Delta data input to enable Health Log Analytics to process Edge Delta log
messages streaming into your ServiceNow instance.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using a private IP address.
Role required: evt_mgmt_admin

About this task

If your organization uses Edge Delta to handle large volumes of log data from multiple sources
before sending it to Health Log Analytics, the log format HLA receives is distinct from other types.
The Edge Delta data input enables HLA to detect and separate transport headers from inner
log messages in this format, forwarding only the inner message to the source type structure for
processing.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the Edge Delta data input.
4. On the form, fill in the fields.
For a detailed description of the fields, see Edge Delta data input configuration fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3483


<!-- page 3484 -->
5. Select Save to save your configuration.
6. Select Publish to publish the data input.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table. The data input starts streaming log data to your ServiceNow
instance.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.

What to do next

Make sure that the data input is streaming data.
Configure an Elasticsearch data input in Health Log Analytics manually
Set up a data input for streaming log data from Elasticsearch indices to your ServiceNow
instance.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using a private IP address.
Health Log Analytics supports Elasticsearch versions above 7.10.2 and below 8.18.2.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3484


<!-- page 3485 -->
Note: For advanced information about streaming log data from Elasticsearch indices
to your instance, see the Stream logs using Elasticsearch data input - Advanced guide
[KB1080162] article in the Now Support knowledge base.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the Elasticsearch data input.
4. On the form, fill in the fields.
For a description of the fields, see Elasticsearch data input configuration fields.
5. Optional: Select Advanced to set advanced configuration fields.
For a description of the fields, see Elasticsearch data input configuration fields. For information
about configuring the advanced settings later, see Configure advanced settings for
Elasticsearch data inputs in Health Log Analytics manually.
6. On the Transport tab, fill in the fields.
For a description of the fields, see Elasticsearch data input configuration fields.
7. On the Query Settings tab, fill in the fields.
For a description of the fields, see Elasticsearch data input configuration fields.
8. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
9. Verify that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
If the data input is configured to run on a MID Server cluster, the system tries to connect all the
MID Servers contained in the cluster to the repository. The cluster passes the test if at least
one of its MID Servers gets connected. This feature is supported in the Health Log Analytics
application, Version 26.0.17 - February 2023 and later, available from the ServiceNow Store .
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field. This
field displays only when a streaming error has occurred.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
10. Select Publish to publish the data input to the MID Server.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record. The
data input starts streaming log data from Elasticsearch indices to your ServiceNow instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3485


<!-- page 3486 -->
For more information about streaming logs using the Elasticsearch data input, see the Stream
logs using Elasticsearch data input - Advanced guide [KB1080162]
article in the Now Support
Knowledge Base.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.

What to do next

Make sure that the data input is streaming data.

Note: If you experience permissions-related issues with streaming log data from
Elasticsearch, refer to the Granting privileges for data streams from Elasticsearch
[KB0967366]
article in the Now Support Knowledge Base.
Related topics
Configure advanced settings for Elasticsearch data inputs in Health Log Analytics manually
Configure a GCP PubSub data input in Health Log Analytics manually
Set up a data input for receiving log messages that were published to a Google Cloud Platform
(GCP) Pub/Sub topic and streaming them to your ServiceNow instance.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3486


<!-- page 3487 -->
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the GCP PubSub data input type.

Note: The selected data input type complements the passive data input (listener). For
more information, see Supported data inputs for Health Log Analytics.
4. On the form, fill in the fields.
For a description of the fields, see GCP PubSub data input configuration fields.
5. Optional: Select Advanced to set additional configuration fields.
For a description of the fields, see GCP PubSub data input configuration fields.
6. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
7. Verify that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
If the data input is configured to run on a MID Server cluster, the system tries to connect all the
MID Servers contained in the cluster to the repository. The cluster passes the test if at least
one of its MID Servers gets connected. This feature is supported in the Health Log Analytics
application, Version 26.0.17 - February 2023 and later, available from the ServiceNow Store .
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you changed the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
8. Select Publish to publish the data input to the MID Server.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record. The
data input starts to receive log messages from the Google Cloud Pub/Sub topic and streams
them to your ServiceNow instance via the MID Server.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.
Configure a Microsoft Azure Event Hubs data input in Health Log Analytics manually
Set up a data input for streaming events from Microsoft Azure Event Hubs to your ServiceNow
instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3487


<!-- page 3488 -->
Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the Microsoft Azure Event Hubs data input.
4. On the form, fill in the fields.
For a description of the fields, see Microsoft Azure Event Hubs data input configuration fields.
5. Optional: Select Advanced to set additional configuration fields.
For a description of the fields, see Microsoft Azure Event Hubs data input configuration fields.
For information about configuring the advanced settings later, see Configure advanced
settings for Microsoft Azure Event Hubs data inputs in Health Log Analytics manually.
6. On the Query settings tab, fill in the fields.
For a description of the fields, see Microsoft Azure Event Hubs data input configuration fields.
7. On the Transport tab, fill in the fields.
For a description of the fields, see Microsoft Azure Event Hubs data input configuration fields.
8. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
9. Verify that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
If the data input is configured to run on a MID Server cluster, the system tries to connect all the
MID Servers contained in the cluster to the repository. The cluster passes the test if at least
one of its MID Servers gets connected. This feature is supported in the Health Log Analytics
application, Version 26.0.17 - February 2023 and later, available from the ServiceNow Store .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3488


<!-- page 3489 -->
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
10. Select Publish to publish the data input to the MID Server.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record.
The data input starts streaming log data from Microsoft Azure Event Hubs to your ServiceNow
instance.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.

What to do next

Make sure that the data input is streaming data.
Related topics
Configure advanced settings for Microsoft Azure Event Hubs data inputs in Health Log
Analytics manually
Configure a Microsoft Azure Log Analytics data input in Health Log Analytics manually
Set up a data input for streaming log data from Microsoft Azure Log Analytics to your ServiceNow
instance. The data input points the Health Log Analytics AI engine to a data source in your
Microsoft Azure Log Analytics account.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3489


<!-- page 3490 -->
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the Microsoft Azure Log Analytics data input.
4. On the form, fill in the fields.
For a description of the fields, see Microsoft Azure Log Analytics data input configuration
fields.
5. Optional: Select Advanced to set additional configuration fields.
For a description of the fields, see Microsoft Azure Log Analytics data input configuration
fields. For information about configuring the advanced settings later, see Configure advanced
settings for Microsoft Azure Log Analytics data inputs in Health Log Analytics manually.
6. On the Query settings tab, fill in the fields.
Health Log Analytics uses the values set in these fields to generate the query for receiving log
data from Microsoft Azure Log Analytics.
For example:
{"query": "ContainerLog | where TimeGenerated > %s | take 500",
"project": ["TimeGenerated", "LogEntry", "LogEntrySource"]}
where:
◦ ContainerLog: The data source name.
◦ TimeGenerated: The event time property name.
◦ 500: The maximum number of rows retrieved in each query.
◦ ["TimeGenerated", "LogEntry", "LogEntrySource"]: The event time and
the comma-separated list of column names to return.
Alternatively, you can configure a custom query in the Log query field. The value you set in this
field overrides the values in all other fields on the Query settings tab except the From field. If
the Log query field is empty, Health Log Analytics generates the query using the values set in
the other fields on the tab.
For a description of the Query settings fields, see Microsoft Azure Log Analytics data input
configuration fields.
7. On the Transport tab, fill in the fields.
For a description of the fields, see Microsoft Azure Log Analytics data input configuration
fields.
8. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
9. Verify that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
If the data input is configured to run on a MID Server cluster, the system tries to connect all the
MID Servers contained in the cluster to the repository. The cluster passes the test if at least
one of its MID Servers gets connected. This feature is supported in the Health Log Analytics
application, Version 26.0.17 - February 2023 and later, available from the ServiceNow Store .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3490


<!-- page 3491 -->
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
10. Select Publish to publish the data input to the MID Server.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record. The
data input starts streaming log data from Microsoft Azure Log Analytics to your ServiceNow
instance.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.

What to do next

Make sure that the data input is streaming data.
Related topics
Configure advanced settings for Microsoft Azure Log Analytics data inputs in Health Log
Analytics manually
Configure a MID Server data input in Health Log Analytics manually
Set up a data input for collecting and streaming MID Server log messages to your ServiceNow
instance.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3491


<!-- page 3492 -->
Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.
Role required: evt_mgmt_admin

About this task

This procedure describes how to create a MID Server data input from the Data Inputs page. To
configure the MID Server data input automatically, click the related link on the MID Server form.

Important:
• When you create a MID Server data input, all logs are automatically mapped to the
predefined mid_server_log source type. This source type includes preconfigured
mapping settings to maximize the value of monitoring your MID Server logs. To review
the mapping script, navigate directly from the data input configuration form to the
mapping form by selecting Go to Mapping under Related Links. Review the source type
by navigating to Source Type Structures and select the mid_server_log source type.
• For optimal performance, debug MID Server log messages are not processed by default.
If you want to send debug messages to Health Log Analytics for processing, add the
following to your MID Server properties: mid.hla.mid_data_input.ignore_debug_level_logs
= false.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the MID Server data input.
4. On the form, provide a description of the data input and the name of the MID Server from
which the logs are streamed.
For a description of the fields, see MID Server data input configuration fields.
5. Optional: Select Advanced to set additional configuration fields.
On the form, fill in the fields. For a description of the fields, see MID Server data input
configuration fields. For information about configuring the advanced settings later, see
Configure advanced settings for MID Server data inputs in Health Log Analytics manually.
6. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3492


<!-- page 3493 -->
Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record.
The data input starts collecting and streaming MID Server log messages to your ServiceNow
instance.
For a description of how this data input can help you detect and resolve emerging issues in your
organization's ServiceNow instance, see Use Case: Proactive monitoring of your ServiceNow
instance in Health Log Analytics.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.

What to do next

Make sure that the data input is streaming data.
Configure a REST API data input in Health Log Analytics manually
Set up a REST API data input for streaming log data to your ServiceNow instance.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
On the MID Web Server Context form, in the Execute on field, select Specific MID Server and
not the cluster option. In the MID Server field, select the specific MID Server to which the log
data is pulled.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
Role required: evt_mgmt_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3493


<!-- page 3494 -->
Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the REST API data input.
4. On the form, fill in the fields.
For a description of the fields, see REST API data input configuration fields.
5. Select Save.
◦ Health Log Analytics adds the data input record to the Data Inputs table.
◦ The system automatically generates the REST API data input URL for sending logs to the
MID Server. The generated URL will be in this format: http://(MID_SERVER_IP):
(MID_WEB_SERVER_PORT)/ap1/mid/hla/raw. HLA replaces (MID_SERVER_IP)
and (MID_WEB_SERVER_PORT) with the values you configured.
6. Copy the generated URL.
7. Instruct your API client to send log messages to the MID Server.
a. In the API client, configure a request with the following parameters:
▪ HTTP Method: POST.
▪ URL: The URL you copied in the previous step.
▪ Authentication: The required authentication credentials. For example, Basic authentication
(username and password).

Note: The authentication method must be the same as the method configured on
the MID Web Server.
▪ Headers: Set the Content-Type header to match your payload format.
▪ For JSON: application/json.
▪ For raw text: text/plain.
▪ Body: The logs payload in JSON or raw text.
b. Send the request.
A successful response indicates that the MID Server has received the payload. When
the MID Server has processed the log messages, the data input streams them to your
ServiceNow instance using the REST protocol.
Configure a Rsyslog, Filebeat, or Winlogbeat data input in Health Log Analytics manually
Set up a data input for streaming log messages to your ServiceNow instance using an Rsyslog,
Filebeat, or Winlogbeat agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3494


<!-- page 3495 -->
Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the data input type to create from the available data input types described in the table.

Note: The selected data input type complements the passive data input (listener). For
more information, see Supported data inputs.
Data input types
Type

Description

Rsyslog

Streams log messages from UNIX-based
servers to the ServiceNow AI engine using
the Rsyslog agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3495


<!-- page 3496 -->
Type

Description

Linux using Filebeat

Streams system log messages and local files
from Linux servers to the instance using the
Filebeat agent.

Windows Application Logs using Filebeat

Streams local files from Microsoft Windows
devices to the ServiceNow instance using the
Filebeat agent.

Windows OS using Winlogbeat

Streams Windows event logs to the
ServiceNow instance using the Winlogbeat
agent.

4. On the Getting Started tab, fill in the form.
For a description of the fields, see Rsyslog, Filebeat, or Winlogbeat data input configuration
fields.

Note: When creating a data input for Linux using Filebeat, you can select a content

pack from the Content pack drop-down. The content pack contains default source types
and mapping script templates that save you the time it takes to create them from scratch.
For more information, see Health Log Analytics content packs for quicker time to value.
5. If the Rsyslog, Filebeat, or Winlogbeat agent has not already been installed, download and
install it from the Installation tab.
For installation instructions, refer to the product documentation of the respective agent.

Note: Make sure that you’re running the latest version of the agent. Earlier versions will
work, but with limited functionality.
6. On the Tagging and Binding tab, assign logs to an service instance in the Configuration
Management Database (CMDB) to enable the service to correlate the log data and enable the
system to do root cause analysis.
a. For each source, configure the path and service instance for the logs to be streamed.

Note: By default, only the required fields Path and Service instance appear.
For a description of the fields, see Rsyslog, Filebeat, or Winlogbeat data input configuration
fields.
b. If you want to ship multiline logs using Filebeat, configure the properties that control how
Filebeat handles messages that span multiple lines of text.

Field

Description

Match

Specifies how Filebeat combines matching
lines into an event.

Negate

Defines whether the pattern identified in the
log lines is negated.

Regex

Specifies the regular expression to match.

Note: Health Log Analytics currently doesn't support multiline properties for Rsyslog.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3496


<!-- page 3497 -->
c. Optional: Define additional log paths to enable the data input to stream log types from
multiple paths.
Do the following for each additional log path:
i. Insert a new row.
ii. Configure the log path.
iii. Choose a service instance.
iv. (Optional) Choose a component and a source type.

Note: This option is not available or necessary when using Winlogbeat, because
Health Log Analytics streams the Windows event logs.
7. On the Finish tab, complete the configuration for your data input type.
◦ Rsyslog:
a. Download the configuration file and install it on the endpoint device, in the /etc/
rsyslog.d/rsyslog.conf directory.

Note: If you are using the Health Log Analytics application, Version 20.0.11 - July
2021, available from the ServiceNow Store

, do the following instead:

i. On the endpoint device, install the configuration file in the /etc/rsyslog.d/
directory.
ii. Create a spool directory by running the sudo mkdir -p/var/spool/
rsyslog command.
b. Validate the configuration by running the rsyslogd -N1 command and verify the
output.
c. Restart Rsyslog by running the sudo systemctl restart rsyslog command.
d. Verify the output. If it contains errors, check the /var/log/messages system log file for
error messages and fix the errors.
◦ Linux using Filebeat:
a. Download the configuration file and install it on the endpoint device, in the /etc/
filebeat/ directory.
b. Start the agent service by running the sudo service filebeat start command.

Note: The generated configuration ignores files that were last changed more than
six hours ago. If needed, you can change this setting in the configuration.
c. Restart the agent service by running the appropriate command.
◦ Windows using Beats (Filebeat or Winlogbeat):
a. Download the configuration file and install it on the endpoint device, in the C:\Program
Files\ directory.
b. Start the agent service by running the appropriate command in PowerShell.
▪ Filebeat: PS > Start-Service filebeat
▪ Winlogbeat: PS > Start-Service winlogbeat

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3497


<!-- page 3498 -->
Note: The generated configuration ignores files that were last changed more than
six hours ago. If needed, you can change this setting in the configuration.
c. Restart the agent service by running the appropriate command.
8. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
9. Verify that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field. This
field displays only when a streaming error has occurred.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
10. Select Publish to publish the data input to the MID Server.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record. The
data input starts streaming log data to your ServiceNow instance.

Note: The configuration file Health Log Analytics generates for new Filebeat data inputs
is compatible with Filebeat version 7.14 and above. The minimum Filebeat version that
Elasticsearch currently supports is 7.17, which is nearing its end of life (EOL).
Existing Filebeat data input configuration files in HLA are compatible with Filebeat versions
up to 8.x. For Filebeat version 9.0 and above, either migrate from log input to filestream
input or generate a new configuration file. For more information on the migration process,
refer to the Filebeat documentation .

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.

What to do next

Make sure that the data input is streaming data.
Related topics
Configure advanced settings for Rsyslog, Splunk, or TCP data inputs in Health Log Analytics
manually
Configure advanced settings for Beats data inputs in Health Log Analytics manually

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3498


<!-- page 3499 -->
Configure a ServiceNow Log Export data input in Health Log Analytics manually
Set up a data input for monitoring ServiceNow instance node logs from both Java code and
JavaScript in Health Log Analytics (HLA). This data input provides a complete view of your
instance status, including server context.

Before you begin

Note: Only a single ServiceNow Log Export data input can exist in the system. This data
input doesn't run on a MID Server.
• Verify that the Log Export Service (LES) is installed on your ServiceNow instance. LES is a
ServiceNow Platform tool under a different license than Health Log Analytics that enables you
to export your system logs seamlessly into HLA. For more information, see Log Export Service
(LES) .
• Verify that the Hermes Messaging Service is up and running:
1. Navigate to All > Hermes Messaging Service > Diagnostics.
2. Ensure that the status icon is green, signifying that the service is active:

.

If it isn't, contact ServiceNow support.
• Create an instance-signed PKI Certificate:
1. Navigate to All > Certificate Generator > Instance PKI Certificate Generator.
2. In the Certificate Password field, set a password to use for your certificate.
3. Select Generate.
The system generates the certificate.
4. Download the keystore and truststore files to your machine.
• Create a Basic Auth credential and attach it to a credential alias.
1. Navigate to All > IntegrationHub > IntegrationHub Usage > Connections & Credentials >
Credentials
2. Select New.
3. Select Basic Auth Credentials.
4. In the Password field, enter the certificate password.
5. In the Credential alias field, attach the new Basic Auth credential to a new credential alias.
Role required: evt_mgmt_admin

About this task

The ServiceNow Log Export data input streams system node logs from Java code and JavaScript
into HLA, providing a complete view of your ServiceNow instance status with server context.
This enhanced visibility facilitates improved monitoring and generates more meaningful alerts
to help you identify instance issues, detect security threats, optimize performance, and maintain
regulatory compliance.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3499


<!-- page 3500 -->
3. Choose ServiceNow Log Export Hermes Consumer.
4. Select the Manage Attachments icon (
to the form.

) and attach the keystore and truststore files

5. On the form, fill in the fields.
For a description of the fields, see ServiceNow Log Export data input configuration fields.
6. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record.
Alerts generated by this data input have the glide_node_log alerts component alert tag
in the Express List Active alerts page.
Configure a ServiceNow System Logs Retriever data input in Health Log Analytics manually
Set up a data input for streaming log data from the ServiceNow System Log table to the HLA
engine (aka Occultus).

Before you begin

Note: Only a single ServiceNow System Logs Retriever data input can exist in the system.
This data input doesn't run on a MID Server.
Role required: admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the ServiceNow System Logs Retriever data input.
4. On the form, fill in the fields.
For a description of the fields, see ServiceNow System Logs Retriever data input configuration
fields.
5. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record.
The data input starts streaming ServiceNow log data from the System Log table to the Health
Log Analytics AI engine, based on the configured filters. Admin users can set filters to query the
System Log table. Operators can monitor the logs and view the alerts that Health Log Analytics
generates from them.
For a description of how this data input can help you detect and resolve emerging issues in your
organization's ServiceNow instance, see Use Case: Proactive monitoring of your ServiceNow
instance in Health Log Analytics.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3500


<!-- page 3501 -->
What to do next

Make sure that the data input is streaming data.
Configure a Splunk data input in Health Log Analytics manually
Set up a data input for streaming log messages to your ServiceNow instance using a Splunk
heavy forwarder.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.
• Configure Splunk to forward logs to your ServiceNow instance using Syslog.
• The configuration of this data input assumes the existence of an environment variable named
$SPLUNK_HOME. In Unix-like environments, this variable typically points to /opt/splunk.

Note: The Windows environment uses the same directory structure, but with
backslashes (\).
Role required: evt_mgmt_admin

About this task

This setup procedure is for streaming logs to your instance using a Splunk heavy forwarder. If
you can't use a heavy forwarder, you can use a Splunk Universal Forwarder instead. For more
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3501


<!-- page 3502 -->
information, see the Splunk Universal Forwarder as a Shipping method [KB0961378]
the Now Support Knowledge Base.

article in

Starting in the Yokohama family release, you can use new Splunk data inputs to ingest data in
the preprocessed ("cooked") log-forwarding format that Splunk uses by default. In cooked mode,
the Splunk forwarder embeds configuration details, such as host, source type, source, and other
settings into the log data. Ingesting the data into HLA in this format verifies that each log line
retains all the relevant contextual information. If you are using the cooked data option in HLA,
there is no need to edit the props.conf and transforms.conf files during Splunk data
input configuration.

Note: All Splunk configuration files are located in the $SPLUNK_HOME/etc/system/
local/ folder. If a configuration file that you need to modify doesn't exist, create it and
save it to this folder.

Note: A MID Server that is down can cause a blockage in your Splunk pipeline. A full
processing queue does not affect the pipeline.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the Splunk data input for streaming logs via a Splunk heavy forwarder or universal
forwarder.
4. On the Getting Started tab, fill in the form fields.
For a description of the fields, see Splunk data input configuration fields.
5. On the Outputs.conf tab, add the following stanzas to the outputs.conf file to make the
shipper forward log data over the selected transport protocol on the selected port, and then
select Next.

Note: If you have already configured outputs, merge these lines with your existing
configuration.
◦ Forwarding over TCP:

Note: Use the first stanza only if you have not already configured a tcpout stanza. The
second stanza is required for forwarding to Health Log Analytics over TCP.

[tcpout]
indexAndForward = 1
defaultGroup = nothing
[tcpout:health_log_analytics]
server = ip-172-31-17-121.us-east-2.compute.internal:5000
sendCookedData = false
compressed = false
◦ Forwarding over UDP:

Note: Use the first stanza only if you have not already configured a syslog stanza. The
second stanza is required for forwarding to Health Log Analytics over UDP.

[syslog]defaultGroup = nothing
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3502


<!-- page 3503 -->
[syslog:health_log_analytics]
server = ip-172-31-17-121.us-east-2.compute.internal:5000
6. On the Props.conf tab, edit the props.conf file, and then select Next.

Note: If you selected the Use Cooked Data option on the Getting Started tab, there is
no need to edit the props.conf file.
a. Modify existing stanzas or add stanzas to mark source types, service instances, and hosts
for forwarding to Health Log Analytics.

Note: For best results, mark only source types for forwarding.
When adding stanzas, use the following name formats:
▪ Source types: [<source type>]. For example: [syslog]
▪ Sources (not recommended): [source::<source>]. For example, [source::myApp]
▪ Hosts (not recommended): [host::<host>]. For example, [host::10.9.8.7]
b. Add the following line to the end of each stanza that you want to forward to Health Log
Analytics over either TCP or UDP.
▪ Forwarding over TCP:
TRANSFORMS-cloned_data = clone_for_hla_store_sourcetype,
clone_for_hla
▪ Forwarding over UDP:
TRANSFORMS-cloned_data = clone_for_hla_store_sourcetype,
clone_for_hla_udp
This line applies the CLONE_SOURCETYPE transform on the data to prevent manipulation
needed for Health Log Analytics processing from affecting your existing data pipeline. For
example, to send all logs from the source type "syslog" to Health Log Analytics:
[syslog]
#existing configuration
goes here
TRANSFORMS-cloned_data =
clone_for_hla_store_sourcetype, clone_for_hla_udp
c. Add the following stanza to apply all the relevant transforms needed for Health Log Analytics
processing.

Note: Splunk enables you to anonymize sensitive data on the cloned source type for
the selected protocol. For more information, see the "Anonymize data" section in the
Splunk documentation .
▪ Forwarding over TCP:
[send_to_hla_tcp]
TRANSFORMS-health_log_analytics =
health_log_analytics_add_sourcetype,
health_log_analytics_add_host,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3503


<!-- page 3504 -->
health_log_analytics_add_source,
health_log_analytics_add_syslog5424,
health_log_analytics_add_index,
health_log_analytics_add_syslogHost,
health_log_analytics_add_time
▪ Forwarding over UDP:
[send_to_hla_udp]
TRANSFORMS-health_log_analytics =
health_log_analytics_add_sourcetype,
health_log_analytics_add_host,
health_log_analytics_add_source,
health_log_analytics_add_syslog5424,
health_log_analytics_add_index,
health_log_analytics_add_syslogHost,
health_log_analytics_add_time
7. On the Transforms.conf tab, add the following stanzas to the transforms.conf file, and
then select Next.

Note: If you selected the Use Cooked Data option on the Getting Started tab, there is
no need to edit the transforms.conf file.
The third stanza clones the logs for further manipulation without affecting your existing
indexing. The remaining stanzas add the information needed to enable correct Health Log
Analytics processing.

Note: You can obfuscate sensitive data by adding a transform here and then modifying
the stanza of the cloned source type in the props.conf file.
[accepted_keys]
#Custom field for preserving sourcetype
hla_sourcetype_preservation=_hla_sourcetype
#Store sourcetype in a custom field, since CLONE_SOURCETYPE
overwrites it
[clone_for_hla_store_sourcetype]
SOURCE_KEY = MetaData:Sourcetype
REGEX = ^sourcetype::(.+)$
FORMAT = hla_sourcetype::$1
DEST_KEY = _hla_sourcetype
[clone_for_hla]
REGEX=.
DEST_KEY = _TCP_ROUTING
FORMAT = health_log_analytics
CLONE_SOURCETYPE=send_to_hla_tcp
#Only used in case of UDP forwarding
[clone_for_hla_udp]
REGEX=.
DEST_KEY = _SYSLOG_ROUTING
FORMAT = health_log_analytics
CLONE_SOURCETYPE=send_to_hla_udp

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3504


<!-- page 3505 -->
#Add metadata to the log message, since metadata is lost when
forwarding externally
[health_log_analytics_add_sourcetype]
SOURCE_KEY = _hla_sourcetype
REGEX = ^hla_sourcetype::(.+)$
FORMAT = sourcetype="$1"] $0
DEST_KEY = _raw
[health_log_analytics_add_host]
SOURCE_KEY = MetaData:Host
REGEX = ^host::(.+)$
FORMAT = host="$1" $0
DEST_KEY = _raw
[health_log_analytics_add_source]
SOURCE_KEY = MetaData:Source
REGEX = ^source::(.+)$
FORMAT = source="$1" $0
DEST_KEY = _raw
[health_log_analytics_add_syslog5424]
REGEX=.
FORMAT = - - [sdid@1234 $0
DEST_KEY = _raw
[health_log_analytics_add_index]
SOURCE_KEY = _MetaData:Index
REGEX = ^(.+)$
FORMAT = $1 $0
DEST_KEY = _raw
[health_log_analytics_add_syslogHost]
SOURCE_KEY = MetaData:Host
REGEX = ^host::(.+)$
FORMAT = $1 $0
DEST_KEY = _raw
[health_log_analytics_add_time]
SOURCE_KEY = _time
REGEX = ^(.+)$
FORMAT = <182>1 $1 $0
DEST_KEY = _raw
8. On the Finish.conf tab, restart Splunk by running the $SPLUNK_HOME/bin/splunk
restart splunkd command.
9. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
10. Verify that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field. This
field displays only when a streaming error has occurred.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3505


<!-- page 3506 -->
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
11. Select Publish to publish the data input to the MID Server.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record. The
data input starts streaming log data to your ServiceNow instance using a Splunk shipper.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.

What to do next

Make sure that the data input is streaming data.
Related topics
Configure advanced settings for Rsyslog, Splunk, or TCP data inputs in Health Log Analytics
manually
Configure a Splunk Polling data input in Health Log Analytics manually
Set up a data input that periodically pulls log data from Splunk by using a query.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3506


<!-- page 3507 -->
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the Splunk Polling data input.
4. On the form, fill in the fields.
For a description of the fields, see Splunk Polling data input configuration fields.
5. Optional: Select Advanced to set additional configuration fields.
On the Transport tab and Advanced tab, fill in the fields. For a description of the fields, see
Splunk Polling data input configuration fields.
6. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
7. Verify that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository. If the data input
is configured to run on a MID Server cluster, the system tries to connect all the MID Servers
contained in the cluster to the repository. The cluster passes the test if at least one of its MID
Servers gets connected.

Note: You can only publish the data input configuration when the connection is created
successfully.
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
8. Select Publish to publish the data input to the MID Server.
Configure a TCP data input in Health Log Analytics manually
Set up a data input for sending raw log messages to your ServiceNow instance directly over a
TCP/SSL socket.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3507


<!-- page 3508 -->
Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.

Note: For information about streaming data from Logstash to your instance, see the
Streaming data from Logstash to your HLA instance
Support knowledge base.

[KB0994735] article in the Now

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the TCP data input type.

Note: The selected data input type complements the passive data input (listener). For
more information, see Supported data inputs for Health Log Analytics.
4. On the form, fill in the fields.
For a description of the fields, see TCP data input configuration fields.
5. Optional: Select Advanced to set additional configuration fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3508


<!-- page 3509 -->
For a description of the fields, see TCP data input configuration fields. For information about
configuring the advanced settings later, see Configure advanced settings for Rsyslog, Splunk,
or TCP data inputs in Health Log Analytics manually.
6. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
7. Verify that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
8. Select Publish to publish the data input to the MID Server.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record. The
data input starts sending raw log messages to your ServiceNow instance directly over a TCP/SSL
socket.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.

What to do next

Make sure that the data input is streaming data.
Related topics
Configure advanced settings for Rsyslog, Splunk, or TCP data inputs in Health Log Analytics
manually
Configure a UDP data input in Health Log Analytics manually
Set up a data input for sending raw log messages to your ServiceNow instance directly over a
UDP socket.

Before you begin

This feature is supported in the Health Log Analytics application, Version 25.0.17 - November
2022 and later, available from the ServiceNow Store .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3509


<!-- page 3510 -->
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using the private IP address.
• For shipping your logs encrypted using SSL TLS, see the Streaming Data With Rsyslog &
Filebeat Using SSL [KB0866319]
article in the Now Support Knowledge Base.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose the UDP data input type.

Note: The selected data input type complements the passive data input (listener). For
more information, see Supported data inputs for Health Log Analytics.
4. On the form, fill in the fields.
For a description of the fields, see UDP data input configuration fields.
5. Optional: Select Advanced to set additional configuration fields.
For a description of the fields, see UDP data input configuration fields.
6. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
7. Verify that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3510


<!-- page 3511 -->
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
8. Select Publish to publish the data input to the MID Server.

Result

The data input configuration process is complete. Health Log Analytics adds the data input
record to the Data Inputs table and attaches the configuration file to the data input record. The
data input starts sending raw log messages to your ServiceNow instance directly over a UDP
socket.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.

What to do next

Make sure that the data input is streaming data.
Related topics
Configure advanced settings for Rsyslog, Splunk, or TCP data inputs in Health Log Analytics
manually
Configure a Vector Agent data input in Health Log Analytics manually
Set up a Vector Agent data input to enable Health Log Analytics to process log messages that are
streaming into your ServiceNow instance via a Vector Agent.

Before you begin
• Verify that a MID Server is installed and configured with the Log Ingestion capability enabled.
For more information, see MID Server system requirements .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3511


<!-- page 3512 -->
Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• When the MID Server IP address is exposed through network address translation (NAT), a load
balancer, or a similar device, the MID Server must have a public IP address to be reachable
by external clients, such as Filebeat agents, located outside its network. Private IP addresses
are not routable over the internet, so without a public IP, these external clients can't connect
to the MID Server even if they are configured with its address. In the MID Server properties,
add a property named mid.public_ip with the public IP address as the value. For more
information, see Create a MID Server property .

Note: If the MID Server and external clients are on the same network, a public IP is not
necessary, and connections can be made using a private IP address.
• Verify that you have a vector.yaml file on your system, or create one.
Role required: evt_mgmt_admin

About this task

If your organization uses Vector by Datadog to handle log data from multiple sources before
sending it to Health Log Analytics, the log format HLA receives is distinct from other types. The
Vector Agent data input enables HLA to detect and separate transport headers from inner log
messages in this format, forwarding only the inner message to the source type structure for
processing.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. On the Data Inputs page, select New.
3. Choose Vector - Stream logs from Vector Agent.
4. On the Getting Started tab, fill in the form and then select Next.
For a detailed description of the fields, see Vector Agent data input configuration fields.
5. On the vector.yaml tab, update the code with the relevant values as needed.
For example, you can specify the sources or source file from which the logs will be streamed.

Note: Code that you should not modify is preceded by a commented note.
For more information, consult the Vector documentation

.

6. Copy the updated code and paste it into the vector.yaml file on your system.
7. Select Next.
The Finish tab displays a message confirming that the data input configuration process is
complete.
8. Start streaming log data by running Vector with the configuration file.
Run the following command:vector --config /path/to/your/vector.yaml,
where /path/to/your/ is the actual path to your YAML file.
9. Optional: Use the other commands displayed on the Finish tab as needed.
10. Select Save to save the data input.

Result

Health Log Analytics adds the data input record to the Data Inputs table. The data input starts
streaming log data to your ServiceNow instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3512


<!-- page 3513 -->
Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.

What to do next

Make sure that the data input is streaming data.
Identify and resolve a log streaming issue in Health Log Analytics
Find and address log streaming issues to verify that your data inputs are streaming log data to
your instance properly.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Streaming Sources.
The Streaming Sources page shows all data inputs and the MID Servers that are receiving logs
from them.

Note:
◦ When Look up hostnames is selected in the advanced data input configuration, the
Streaming Sources page shows the hostname of devices that use an Rsyslog or a
Filebeat shipper. For Elasticsearch indices, it displays the index name.
◦ Streaming Sources is also available as a related list on the data input form. The related
list displays only the endpoint devices that are relevant to that data input.
◦ If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the Streaming Sources page. When this happens, contact ServiceNow
support.
2. Select a data input record to view the streaming data of its sources and identify streaming
issues and their possible cause.
For example, if the last recorded event time for a data input's endpoint server is yesterday, that
server might be down or configured incorrectly. A streaming issue might also be caused by the
data input configuration file not being installed on the endpoint.

Filter

Description

Status

The status of the source. A red bullet
indicates that this source has not streamed
data in the last hour.

Last event time

The last recorded time an event arrived at the
MID Server in the last one-minute interval.
Health Log Analytics continuously updates
the last event time. If the last event time is not
up to date, data is not streaming.

Raw log lines/sec

The average number of raw log lines that
streamed to the MID Server per second in the
last one-minute interval.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3513


<!-- page 3514 -->
Filter

Description

Note: This value represents the
number of raw log lines before
preprocessing.
Preprocessed log lines/sec

The average number of preprocessed log
lines that streamed to the MID Server per
second in the last one-minute interval.

Note: This value can differ from the
number of raw log lines per second. For
example, the difference can be a result
of logs having been dropped during
preprocessing.

3. Investigate and resolve any data streaming issues.

Note: If you experience permissions-related issues with streaming log data from
Elasticsearch, refer to the Granting privileges for data streams from Elasticsearch
[KB0967366]
article in the Now Support Knowledge Base.

What to do next

When the logs are streaming properly, proceed to map your raw log data.

Note: You can choose to edit incoming raw log data before Health Log Analytics
processes it. For example, preprocessing enables you to discard log portions or remove
sensitive data from your logs. This task is optional.
Additional data input setup tasks in Health Log Analytics
After performing the initial data input setup and configuration in Health Log Analytics, continue
with the remaining data input setup tasks.
Add a timestamp format in Health Log Analytics
Define any timestamp format that does not appear in the list of defined formats. Health Log
Analytics must be able to read timestamps of any format contained in your log files.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Timestamp Formats.
2. To determine whether your timestamp format matches a predefined format in the system, do
the following:
a. Select Find format.
b. Enter a sample of your timestamp.
c. Select Find format.
If the sample matches an existing format, the system provides its ID.
3. If your timestamp sample doesn't match an existing format, then manually define your custom
format and add it to the available timestamp formats.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3514


<!-- page 3515 -->
a. On the Timestamp Formats page, select New.
b. On the form, fill in the fields.
Timestamp format form
Field

Description

ID

ID of the timestamp format. This value is
selected automatically.

Format

Valid timestamp format. For example, ddMMM-yyyy, HH:mm.

Note: Health Log Analytics uses the
Java 8 API

for timestamp syntax.

Sample

Example of the timestamp format. For
example, 03-May-2018, 10:20.

Description

Description of the timestamp format.

4. Select Submit.

Result

The system validates the timestamp format and adds it to the list of available timestamps.
Add a source type manually in Health Log Analytics
Create a source type manually before you configure a data input if you want to stream log data
to a specific source type rather than to the source type automatically extracted by Health Log
Analytics during the mapping process.

Before you begin

This feature is supported in the Health Log Analytics application, Version 20.0.11 - July 2021,
available from the ServiceNow Store .
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Source Types.
2. On the Source Types page, select New.
3. On the form, fill in the fields.
Source type form
Field

Description

Name

The name of the source type.
The name must be between 3-50 characters
long. Acceptable characters are letters,
numeric values, dashes, and underscores.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3515


<!-- page 3516 -->
Field

Description

Examples

One or more raw input samples for this
source type. Enter each sample on a new line.

Note: This field must contain data.
The fields in the following table are read-only.

Field

Description

Created manually

Option for indicating that this source type
was created manually. Default: true.

Auto-extraction enabled

Auto-extraction for this source type is
disabled by default.

Learning mode

Option for indicating that Learning mode for
the source type is ongoing.
The AI engine must learn the format of
log messages in each new log stream.
In Learning mode, it learns the format of
messages for this source type and extracts
properties based on that knowledge.

4. Right-click the form header and select Save.
5. Select Load examples to load the raw input samples for this source type that you provided in
the Examples field.
When loading the log samples is completed successfully, the Examples field and the Load
examples buttons no longer appear on the form.
6. Optional: Check how the AI engine has parsed the raw input samples by selecting the Go to
Source Type Structure related link and modify the extracted properties if necessary.
7. Click Submit.

What to do next

Configure a data input and then map it to the new source type. For more information, see Set up
data inputs in Health Log Analytics manually and Map raw log data in Health Log Analytics.
Related topics
Refine the source type structure in Health Log Analytics
Configure source type capabilities in Health Log Analytics
Health Log Analytics extracts source types automatically in the mapping process. You can add
timestamp formats and specify, delete, or exclude keywords for individual source types.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Source Types.
The Source Types table lists all source types that were extracted automatically during raw data
mapping.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3516


<!-- page 3517 -->
Source Types
Field

Description

Auto extraction enabled

Auto-extraction for this source type is either
enabled or disabled. This value is set on the
Source Type Structure form. Default: true.

Learning mode

Learning mode for the source type is either
ongoing or completed.
The AI engine must learn the format of
log messages in each new log stream.
In Learning mode, it learns the format of
messages for this source type and extracts
properties based on that knowledge.

Stack trace detection enabled

Detection of active stack frames for this
source type is either enabled or disabled.
Typically, a stack trace enables tracking an
error to the log in which it originated.

2. Open a record.
3. Optional: Add a timestamp format for this source type.
a. On the Source Type Timestamps tab, select New.
b. In the Timestamp format field, select a format from the list of available timestamp formats.
c. Select Submit.
4. Optional: Specify a keyword for this source type.
a. On the Lexical Keywords tab, select New.

Note: The Lexical Keywords tab contains both global and specified keywords.
Selecting New creates a specified keyword for this source type.
b. On the form, fill in the fields.

Field

Description

Name

Unique and descriptive name for the
keyword.

Regular expression

The regular expression ("regex") that defines
matches.

Exact match

Boolean value. If selected, Health Log
Analytics matches the exact regex. For
example, 'NullPointerException' in a
message would not match the regex
'exception'.
Default: True

Case-sensitive

Boolean value. If selected, Health Log
Analytics looks for a case-sensitive match of
the regex.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3517


<!-- page 3518 -->
Field

Description

Default: False
c. Select Submit.
5. Optional: Delete a keyword specified for this source type.
a. Select the row of the specified keyword that you want to delete.
b. From the Actions on selected rows list at the bottom of the page, select Exclude keyword.
c. Select Continue to delete the keyword.
6. Optional: Exclude a global keyword for this source type
When you exclude a keyword, Health Log Analytics no longer looks for it in the log data of this
source type.
a. Select the row of the global keyword that you want to exclude.
b. From the Actions on selected rows list at the bottom of the page, select Exclude keyword.

Note: You can delete global keywords from the Lexical Keywords page.
7. Select Update.
Verify your log sources in Health Log Analytics
Verify that all your log sources are present and active after Health Log Analytics tagging has
assigned a log to a service instance and components, and has automatically mapped the log to a
source.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Log Sources.
The Log Sources table provides information about the sources created when you mapped the
streaming data. The table lists these sources by service instance.

Column

Description

Service instance

The service instance.
Service instances represent large or
complete business processes. A single
service instance can consist of multiple
components, whereas different service
instances can include the same components.

Component

The components comprising the service
instance.
Components represent small technical
parts or business processes. Typically, they
represent Configuration Items (CIs). Several

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3518


<!-- page 3519 -->
Column

Description

components are often clustered together in a
single service instance.
Status

The status of the log source: Active or
Inactive. The Active status indicates that logs
streamed into the system from this source in
the last hour.

Created

The creation date and time of this log source.

Last event time

The last time logs streamed into the system
from this source.

2. Make sure that the system has created all your log sources.
3. Verify the creation, status, and log samples of a specific source in the source record.

Note: Because auto-mapping can map log data to multiple sources, be sure to verify
this information per source.
4. If a log source is missing, add it.
a. Navigate to Health Log Analytics > Data Input > Data Input Mapping.
b. Use the JavaScript function to manually map a log sample to the correct service instance,
component, and source type.
For more information, see Map raw log data in Health Log Analytics.
c. Navigate back to the Log Sources page and verify that the status of the new log source is
Active.
The system creates a log source.
5. Make sure that the status of all your log sources is Active.
If the status of a source is Inactive, double-click it and change it to Active manually.
6. Select Update.
Related topics
Delete a log source in Health Log Analytics
Stop extraction of unneeded log data in Health Log Analytics
Extract specific log data in Health Log Analytics
Delete a log source in Health Log Analytics
Delete a log source with or without its associated log data in Health Log Analytics.

Before you begin

Role required: evt_mgmt_admin

About this task

When you delete a log source, Health Log Analytics automatically deletes its related log data. You
can also delete a source while keeping the log data. The associated data will then be deleted
according to the log retention policy. For more information, see Storage space for log retention in
Health Log Analytics.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3519


<!-- page 3520 -->
Procedure
1. Navigate to All > Health Log Analytics > Log Sources.
2. Open a source record.
3. Delete the log source in one of the following ways:
◦ Delete the source and its related data by selecting Delete.
◦ Delete the source without its related data by selecting the Delete without logs related link.
Review properties extracted from a source type in Health Log Analytics
Inspect the properties that were extracted from all the source types in a source type structure in
a single table to identify any setup issues.

Before you begin

Role required: evt_mgmt_admin

About this task

The Source Type Properties Stats table provides a comprehensive overview of the properties
that were extracted from the source types. By reviewing the statistical distribution of their values,
you can assess the classification of these properties and adjust your settings if needed.
The procedure in this section explains how to access the Source Type Properties Stats table
via the Source Type Structure. From a source type record, you can navigate to the Source Type
Structure by selecting the Go to Source Type Structure related link.

Procedure
1. Navigate to All > Health Log Analytics > Source Type Structures.
2. Open a source type structure record.
3. Open the Properties Statistics related links tab.

The Source Type Properties Stats table shows the properties of all the source types that are
part of this source type structure.
Source Type Properties Stats
Column

Description

Source Type Property

The property extracted from the source type.

Classification

The classification of the property.
The available types are: METER, GAUGE,
ARC, and INVALID.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3520


<!-- page 3521 -->
Column

Description

Note: A property classified as INVALID
(the default classification) isn't tracked
for anomaly detection or shown in the
Meaningful Properties analysis.
Source Type

The source type from which the property was
extracted.

Log Source

The list of Log Sources in which this property
appeared.

Domain

The domain to which the log source belongs.

Total Unique Value Count

Only for properties classified as METER: The
total number of distinct values contained in it.
This field is inactive when the property is
classified as ARC or GAUGE.

Note: The Total Unique Value Count is
updated once a day. Records older than
24 hours are deleted automatically.
Sample Values

Only for properties classified as METER:
Sample unique values tracked by the system.
Default is 30 samples.
This field is inactive when the property is
classified as ARC or GAUGE.

4. Review the properties and identify possible classification issues.
5. Optional: View statistics for individual source type properties classified as ARC_ONLY or
GAUGE.
a. Open a source type property classified as ARC_ONLY or GAUGE from the Properties
Statistics related links tab.
b. On the Source Type Property form, select Source Type Properties Stats.
The following information displays in a pop-up:
◦ For an ARC property: The percentage distribution of terms, based on the processed logs. For
example, the percentage of Bad Request vs. Success.
◦ For a GAUGE property: The average, minimum, and standard deviation from the expected
numerical value.
6. Optional: Change classification settings on the Key/Value Mapping tab.
For more information, see Refine the source type structure in Health Log Analytics.
Review patterns extracted from a source type in Health Log Analytics
Inspect all learned patterns extracted from a source type in a source type structure, together
with the log sources in which these patterns appeared. Reviewing these patterns can provide
valuable insights into the log message patterns that Health Log Analytics tracks for each source
type and log source.

Before you begin

Role required: evt_mgmt_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3521


<!-- page 3522 -->
Procedure
1. Navigate to All > Health Log Analytics > Source Type Structures.
2. Select a source type in the Source type name column.
3. On the Source Type form, select the Aggregated Log Patterns related list.
The tab shows the following data for each pattern that was extracted from this source type. The
displayed data is updated every hour.
Aggregated Log Patterns
Column

Description

Pattern text

The content of the aggregated pattern.

Sources

The sources in which the pattern appeared.

Domain

The domain to which the pattern belongs.

Modify a data input configuration in Health Log Analytics
Change the configuration of a data input for Health Log Analytics by adding a new path to an
existing data input configuration or modifying the data input's MID Server destination and port.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. Open a record from the Data Inputs table.
3. Modify the data input configuration.

Column

Description

Name

Name of the data input.

Description

Description of the data input.

Port

The port on the MID Server.

Note: The port must not be occupied
by another process. Make sure that your
organization’s security team opens the
selected port.
MID

The MID Server to which the logs stream.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3522


<!-- page 3523 -->
Column

Description

Note:
◦ You can select only MID Servers with
log ingestion capability that support
basic authentication. MID Servers that
support mTLS are not listed.
◦ The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.

Settings
Column

Description

Path

The full path from which to stream logs. You
can use a wildcard.

Note: This column is not available on
Windows systems using Winlogbeat.
Service instance

The service instance to which to bind the log
data.

Note: If no relevant service instance
exists, Create an service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
Component

The device type or stack layer as context for
the logs that is used for anomaly detection
and correlation. For example, Tomcat.
Components typically represent CIs in
the CMDB. Several components are often
clustered together in a single service
instance.

Source Type

The source type that defines how Health Log
Analytics handles a specific application and
parses the log data. For example: Tomcat
Catalina.
Each data input can have multiple source
types depending on the diversity of its log
formats. Service instances and components
can have any number of source types.

For handling multiline messages on Linux / Windows systems using Filebeat only:
Match

Specifies how Filebeat combines matching
lines into an event, either after or before.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3523


<!-- page 3524 -->
Column

Description

Negate

Boolean that defines whether the pattern
identified in the log lines is negated. The
default is false.

Regex

The regular expression to match.

Note: You can modify the Rsyslog configuration file to make the agent ship system logs
in addition to application logs. For more information, see the Shipping system logs using
Rsyslog [KB0954507]
article in the Now Support Knowledge Base.
4. Select Update.
5. For data inputs that use Rsyslog or Beats agents only, rebuild the server-side configuration file
and install it on the endpoint device.
a. Select Rebuild configuration file.
Health Log Analytics rebuilds the file and saves it in the Manage Attachments section.
Depending on the agent used, the rebuilt file is saved as either rsyslog.yml,
filebeat.yml, or winlogbeat.yml.
The system automatically renames the previous configuration file by adding a suffix with the
date and time the file was rebuilt to the file name.
b. Install the rebuilt configuration file on the endpoint according to your data input type.

Data input type

Rsyslog

Action

i. Download the file and install it on
the endpoint device in the /etc/
rsyslog.d/rsyslog.conf directory.
ii. Validate the configuration by running the
rsyslogd -N1 command.
iii. Verify the output. If it contains errors,
check the /var/log/messages
system log file for error messages and fix
the errors.
iv. Restart Rsyslog by running the sudo
systemctl restart rsyslog
command.

Linux

i. Download the file and install it on
the endpoint device in the /etc/
filebeat/ directory.
ii. Restart the agent service by running
the sudo service filebeat
restart command.

Note: The generated configuration
ignores files that were last changed
more than six hours ago. If needed,
you can change this setting in the
configuration file.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3524


<!-- page 3525 -->
Data input type

Windows using Beats (Filebeat or
Winlogbeat):

Action

i. Download the file and install it on the
endpoint device in the C:\Program
Files\ directory.
ii. Restart the agent service by running the
appropriate command in PowerShell:
▪ Filebeat: PS > Restart-Service
filebeat
▪ Winlogbeat: PS > RestartService winlogbeat

Note: The generated configuration
ignores files that were last changed
more than six hours ago. If needed,
you can change this setting in the
configuration file.
Related topics
Configure advanced settings for Rsyslog, Splunk, or TCP data inputs in Health Log Analytics
manually
Configure advanced settings for Beats data inputs in Health Log Analytics manually
Advanced data input configuration in Health Log Analytics
When you have configured a data input successfully, Health Log Analytics adds a record to the
Data Inputs table and attaches the configuration file to it. You can configure advanced settings
for your data input. Configuring advanced settings is optional.
Configure advanced settings for Amazon CloudWatch data inputs in Health Log Analytics
manually
Configure advanced settings for data inputs used for streaming log data from Amazon
CloudWatch to your instance.

Before you begin

Role required: evt_mgmt_admin

About this task

You can set system parameters for reading log data that determine the actions that the system
performs on log data arriving on the MID Server. For example, you can set the time zone to use
if a log lacks a timestamp. If no advanced settings are configured, the system uses the default
values.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. Open an Amazon CloudWatch data input record from the Data Inputs table.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.
3. Select Advanced and then select the Advanced tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3525


<!-- page 3526 -->
4. On the form, fill in the fields.
For a description of the fields, see Amazon CloudWatch data input configuration fields.
The Character encoding field is read-only. By default, the character encoding used for this
data input is UTF-8.
5. Optional: In the Streaming Sources related list, verify that this data input is streaming log data
from all relevant endpoint devices.
For more information about streaming sources, see Identify and resolve a log streaming issue
in Health Log Analytics.
6. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
7. Ensure that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
If the data input is configured to run on a MID Server cluster, the system tries to connect all the
MID Servers contained in the cluster to the repository. The cluster passes the test if at least
one of its MID Servers gets connected. This feature is supported in the Health Log Analytics
application, Version 26.0.17 - February 2023 and later, available from the ServiceNow Store .
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
8. Select Publish to publish the data input to the MID Server.
Related topics
Configure an Amazon CloudWatch data input in Health Log Analytics manually
Configure advanced settings for Amazon S3 data inputs in Health Log Analytics manually
Configure advanced settings for data inputs used for streaming log data from Amazon S3
buckets to your instance.

Before you begin

Role required: evt_mgmt_admin

About this task

You can set system parameters for reading log data that determine the actions that the system
performs on log data arriving on the MID Server. For example, you can set the time zone to use
if a log lacks a timestamp. If no advanced settings are configured, the system uses the default
values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3526


<!-- page 3527 -->
Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. Open an Amazon S3 data input record from the Data Inputs table.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.
3. Select Advanced and then select the Advanced tab.
4. On the form, fill in the fields.
For a description of the fields, see Amazon S3 data input configuration fields.
5. Optional: In the Streaming Sources related list, verify that this data input is streaming log data
from all relevant endpoint devices.
For more information about streaming sources, see Identify and resolve a log streaming issue
in Health Log Analytics.
6. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
7. Ensure that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
If the data input is configured to run on a MID Server cluster, the system tries to connect all the
MID Servers contained in the cluster to the repository. The cluster passes the test if at least
one of its MID Servers gets connected. This feature is supported in the Health Log Analytics
application, Version 26.0.17 - February 2023 and later, available from the ServiceNow Store .
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
8. Select Publish to publish the data input to the MID Server.
Related topics
Configure an Amazon S3 data input in Health Log Analytics manually
Configure advanced settings for Apache Kafka data inputs in Health Log Analytics manually
Configure advanced settings for data inputs used for streaming log data from Apache Kafka to
your instance.

Before you begin

Role required: evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3527


<!-- page 3528 -->
About this task

You can set system parameters for reading log data that determine the actions that the system
performs on log data arriving on the MID Server. For example, you can set the time zone to use
if a log lacks a timestamp. If no advanced settings are configured, the system uses the default
values.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. Open an Apache Kafka data input record from the Data Inputs table.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.
3. Select Advanced and then select the Advanced tab.
4. On the form, fill in the fields.
For a description of the fields, see Apache Kafka data input configuration fields.
5. Optional: In the Streaming Sources related list, verify that this data input is streaming log data
from all relevant endpoint devices.
For more information about streaming sources, see Identify and resolve a log streaming issue
in Health Log Analytics.
6. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
7. Ensure that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
If the data input is configured to run on a MID Server cluster, the system tries to connect all the
MID Servers contained in the cluster to the repository. The cluster passes the test if at least
one of its MID Servers gets connected. This feature is supported in the Health Log Analytics
application, Version 26.0.17 - February 2023 and later, available from the ServiceNow Store .
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
8. Select Publish to publish the data input to the MID Server.
Related topics
Configure an Apache Kafka data input in Health Log Analytics manually
Configure advanced settings for Beats data inputs in Health Log Analytics manually
Configure advanced settings for data inputs that use Beats agents.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3528


<!-- page 3529 -->
Before you begin

Role required: evt_mgmt_admin

About this task

You can set system parameters for reading log data that determine the actions that the system
performs on log data arriving on log data arriving on the MID Server. For example, you can set the
time zone to use if a log lacks a timestamp. If no advanced settings are configured, the system
uses the default values.
For information about how to change settings that were configured when the data input was
created, such as adding a new path or changing the data input's MID Server destination or port,
see Modify a data input configuration in Health Log Analytics.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. Open a Beats data input record from the Data Inputs table.
The data input configuration displays.

Note: The number of log sources that the data input has created is shown in the

Sources count field. For more information about data input sources, see Log data automapping and mapping in Health Log Analytics.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.
3. Select Advanced.
4. On the form, fill in the fields.
For a description of the fields, see Rsyslog, Filebeat, or Winlogbeat data input configuration
fields.
5. Optional: In the Streaming Sources related list, verify that this data input is streaming log data
from all relevant endpoint devices.
For more information about streaming sources, see Identify and resolve a log streaming issue
in Health Log Analytics.
6. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
7. Ensure that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field. This
field displays only when a streaming error has occurred.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3529


<!-- page 3530 -->
Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
8. Select Publish to publish the data input to the MID Server.
Related topics
Configure a Rsyslog, Filebeat, or Winlogbeat data input in Health Log Analytics manually
Configure advanced settings for Elasticsearch data inputs in Health Log Analytics manually
Configure advanced settings for data inputs used for streaming log data from Elasticsearch
indices to your instance.

Before you begin

Role required: evt_mgmt_admin

About this task

You can set system parameters for reading log data that determine the actions that the system
performs on log data arriving on the MID Server. For example, you can set the time zone to use
if a log lacks a timestamp. If no advanced settings are configured, the system uses the default
values.
For additional information about streaming logs using the Elasticsearch data input, see the
Stream logs using Elasticsearch data input - Advanced guide [KB1080162]
article in the Now
Support Knowledge Base.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. Open an Elasticsearch data input record from the Data Inputs table.
The data input configuration displays.

Note: The number of log sources that the data input has created is shown in the

Sources count field. For more information about data input sources, see Log data automapping and mapping in Health Log Analytics.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.
3. Select Advanced and then select the Advanced tab.
4. On the form, fill in the fields.
For a description of the fields, see Elasticsearch data input configuration fields.
5. Optional: In the Streaming Sources related list, verify that this data input is streaming log data
from all relevant endpoint devices.
For more information about streaming sources, see Identify and resolve a log streaming issue
in Health Log Analytics.

Note: If you experience permissions-related issues with streaming log data from
Elasticsearch, refer to the Granting privileges for data streams from Elasticsearch
[KB0967366]
article in the Now Support Knowledge Base.
6. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3530


<!-- page 3531 -->
Health Log Analytics adds the data input record to the Data Inputs table.
7. Ensure that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
If the data input is configured to run on a MID Server cluster, the system tries to connect all the
MID Servers contained in the cluster to the repository. The cluster passes the test if at least
one of its MID Servers gets connected. This feature is supported in the Health Log Analytics
application, Version 26.0.17 - February 2023 and later, available from the ServiceNow Store .
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field. This
field displays only when a streaming error has occurred.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
8. Select Publish to publish the data input to the MID Server.
Related topics
Configure an Elasticsearch data input in Health Log Analytics manually
Configure advanced settings for Microsoft Azure Event Hubs data inputs in Health Log
Analytics manually
Configure advanced settings for data inputs used for streaming log data from Microsoft Azure
Event Hubs to your instance.

Before you begin

Role required: evt_mgmt_admin

About this task

You can set system parameters for reading log data that determine the actions that the system
performs on log data arriving on the MID Server. For example, you can set the time zone to use
if a log lacks a timestamp. If no advanced settings are configured, the system uses the default
values.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. Open a Microsoft Azure Event Hubs data input record from the Data Inputs table.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.
3. Select Advanced and then select the Advanced tab.
4. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3531


<!-- page 3532 -->
For a description of the fields, see Microsoft Azure Event Hubs data input configuration fields.
5. Optional: In the Streaming Sources related list, verify that this data input is streaming log data
from all relevant endpoint devices.
For more information about streaming sources, see Identify and resolve a log streaming issue
in Health Log Analytics.
6. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
7. Ensure that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
If the data input is configured to run on a MID Server cluster, the system tries to connect all the
MID Servers contained in the cluster to the repository. The cluster passes the test if at least
one of its MID Servers gets connected. This feature is supported in the Health Log Analytics
application, Version 26.0.17 - February 2023 and later, available from the ServiceNow Store .
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
8. Select Publish to publish the data input to the MID Server.
Related topics
Configure a Microsoft Azure Event Hubs data input in Health Log Analytics manually
Configure advanced settings for Microsoft Azure Log Analytics data inputs in Health Log
Analytics manually
Configure advanced settings for data inputs used for streaming log data from Microsoft Azure
Log Analytics to your instance.

Before you begin

Role required: evt_mgmt_admin

About this task

You can set system parameters for reading log data that determine the actions that the system
performs on log data arriving on the MID Server. If no advanced settings are configured, the
system uses the default values.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. Open a Microsoft Azure Log Analytics data input record from the Data Inputs table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3532


<!-- page 3533 -->
Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.
3. Select Advanced and then select the Advanced tab.
4. On the form, fill in the fields.
For a description of the fields, see Microsoft Azure Log Analytics data input configuration
fields.
5. Optional: In the Streaming Sources related list, verify that this data input is streaming log data
from all relevant endpoint devices.
For more information about streaming sources, see Identify and resolve a log streaming issue
in Health Log Analytics.
6. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
7. Ensure that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
If the data input is configured to run on a MID Server cluster, the system tries to connect all the
MID Servers contained in the cluster to the repository. The cluster passes the test if at least
one of its MID Servers gets connected. This feature is supported in the Health Log Analytics
application, Version 26.0.17 - February 2023 and later, available from the ServiceNow Store .
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
8. Select Publish to publish the data input to the MID Server.
Related topics
Configure a Microsoft Azure Log Analytics data input in Health Log Analytics manually
Configure advanced settings for MID Server data inputs in Health Log Analytics manually
Configure advanced settings for data inputs that are used for collecting and streaming MID
Server log messages.

Before you begin

Role required: evt_mgmt_admin

About this task

You can set system parameters for reading log data that determine the actions that the system
performs on log data arriving on the MID Server. For example, you can set the time zone to use
if a log lacks a timestamp. If no advanced settings are configured, the system uses the default
values.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3533


<!-- page 3534 -->
Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. Open a MID Server data input record from the Data Inputs table.
The data input configuration displays.

Note: The number of log sources that the data input has created is shown in the

Sources count field. For more information about data input sources, see Log data automapping and mapping in Health Log Analytics.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.
3. Select Advanced.
4. On the form, fill in the fields.
For a description of the fields, see MID Server data input configuration fields.
5. Optional: In the Streaming Sources related list, verify that this data input is streaming log data
from all relevant endpoint devices.
For more information about streaming sources, see Identify and resolve a log streaming issue
in Health Log Analytics.
6. Select Update.

Result

Health Log Analytics updates the system parameters.
Related topics
Configure a MID Server data input in Health Log Analytics manually
Configure advanced settings for Rsyslog, Splunk, or TCP data inputs in Health Log Analytics
manually
Configure advanced settings for data inputs that use Rsyslog, Splunk, or TCP agents.

Before you begin

Role required: evt_mgmt_admin

About this task

You can set system parameters for reading log data that determine the actions that the system
performs on log data arriving on the MID Server. For example, you can set the time zone to use
if a log lacks a timestamp. If no advanced settings are configured, the system uses the default
values.
For information about how to change settings that were configured when the data input was
created, such as adding a new path or changing the data input's MID Server destination or port,
see Modify a data input configuration in Health Log Analytics.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. Open a Rsyslog, Splunk, or TCP data input record from the Data Inputs table.
The data input configuration displays.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3534


<!-- page 3535 -->
Note: The number of log sources that the data input has created is shown in the

Sources count field. For more information about data input sources, see Log data automapping and mapping in Health Log Analytics.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the data input configuration page. When this happens, contact ServiceNow
support.
3. Select Advanced.
4. On the form, fill in the fields.
For a description of the fields, see Rsyslog, Filebeat, or Winlogbeat data input configuration
fields.
5. Optional: In the Streaming Sources related list, verify that this data input is streaming log data
from all relevant endpoint devices.
For more information about streaming sources, see Identify and resolve a log streaming issue
in Health Log Analytics.
6. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
7. Ensure that the data input is configured correctly by selecting Test connection.
Health Log Analytics tries to connect the MID Server to the data repository.
◦ If the connection was established, the Test connection button is turned off and the Publish
button is enabled.
◦ If the connection failed, the reason for the failure displays in the Error message field. This
field displays only when a streaming error has occurred.
Resolve the issue, select Save if you modified the configuration, and then select Test
connection to test the connection again.

Note: You can only publish the data input configuration when the connection is
created successfully.

Note: You can revert to the last published configuration by selecting Revert Changes.
This option is available only when you're modifying a configuration that has been
published previously.
8. Select Publish to publish the data input to the MID Server.
Stop or restart a data input in Health Log Analytics
You can stop using a data input for streaming log messages to your ServiceNow instance. Restart
the data input if you want it to resume streaming data.

Before you begin

This functionality is available only when the data input configuration has been published.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Log Data Inputs.
2. Open a data input record from the Data Inputs table.
3. Select Stop Data Input.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3535


<!-- page 3536 -->
The name of the button changes to Start Data Input.
4. To start using the data input again, select Start Data Input.
Edit raw log data before processing in Health Log Analytics
You can modify raw log data and drop or break up log messages before they are treated in the
MID Server, and therefore before Health Log Analytics maps and structures them. For example,
you could prevent sensitive data from reaching Health Log Analytics by replacing user names
and passwords with an asterisk (*).

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input Preprocessor.
2. Open a record.

Note: The first time the preprocessing form is displayed, Health Log Analytics fetches
log samples automatically. In subsequent sessions, fetch fresh samples manually by
selecting Refresh Samples.
3. Optional: Prevent showing log samples that are taken from your organization’s raw logs by
selecting Disable raw log samples.
Select this option if you don't want to expose your logs to Health Log Analytics.
4. Optional: View how the current JavaScript function affects the log lines.
a. Add a sample message in the Test manual sample field.
b. Select Go.
c. Note how the JavaScript function affects the log lines.
5. In the Raw input samples field, choose a log sample that will show the effect of your new
JavaScript function on log lines when you test it.
6. Define a JavaScript function that modifies your raw log data before Health Log Analytics maps
and structures it.

Note:
(ACC data inputs only) When the Agent Client Collector switches to a different MID
Server to provide failover protection, it must switch to a different ACC data input.
Therefore, all ACC data inputs must have the same JavaScript function. Health Log
Analytics provides the latest published JavaScript function to all existing and future
ACC data inputs, replacing the previous script. This feature is supported in the Health
Log Analytics application, Version 22.0.12 - December 2021 and later, available from the
ServiceNow Store . For information about failover protection in Agent Client Collector
Log Analytics (ACC-L), see Agent Client Collector Log Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3536


<!-- page 3537 -->
a. In the JavaScript console, either change the provided default JavaScript function, modify an
existing custom JavaScript function, or define a new one.

Note: In addition to the default JavaScript function for data preprocessing, Health Log

Analytics provides a JavaScript function template named Scrubbing. This JavaScript
function removes personally identifiable information such as email addresses, social
security numbers, and passwords, from the raw log data. The template can act as a
starting point for your custom script code. This feature is supported in the Health Log
Analytics application, Version 20.0.11 - July 2021, available from the ServiceNow Store .

Note: (ACC data inputs only) Make sure that your JavaScript function can be used to
handle data streamed by all ACC data inputs.
JavaScript functions for preprocessing raw log data use the following objects:
▪ Signature: function process(sample, metadata)
Object

Description

sample

The current log sample.

metadata

Object that contains the event stream.
To access the event stream, call the
metadata.eventStream function.
Because event stream is an object, you can
access each of its properties by calling the
metadata.eventStream.origin or

metadata.eventStream.LocalPort
functions.
The list of available event stream
properties is available in the Event Stream:
access via metadata tab.
▪ Return type and structure

Note: The JavaScript function returns a map of two entries. Do not change this
return structure.

Object

Description

modifiedInput

The current log message after the
JavaScript function has modified the
original message. If null, the original log
message is used.

splitEvents

Array of log messages after the JavaScript
function has divided the original message.

▪ To discard a log message, call return drop().
b. Test the JavaScript function by selecting Test and viewing the outcome on your log sample
in related lists.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3537


<!-- page 3538 -->
Tab

Description

Outcome

The result of running the JavaScript function
on your log sample.

Event Stream: access via metadata

The key-value pairs that present the event
stream metadata.

Failures

The log samples on which the JavaScript
function failed to run successfully.

Note: If your new JavaScript function is not behaving as expected, you can revert to
the last published one by selecting the Revert JS Function related link.

c. Optional: Make any necessary adjustments and then test the JavaScript function again.
7. Select the Save template option to save the JavaScript function.
You can either save the JavaScript function as a new template or overwrite the currently
selected template.
◦ To save the JavaScript function as a new template, enter a new name in the Template name
field.
◦ To overwrite the template currently selected in the JS function templates field, leave the
Template name field empty.
8. Select Publish to save the JavaScript function to the database.

Result

When the JavaScript function is published, Health Log Analytics uses it to pre-process your raw
log data before mapping and structuring it.
The new script is automatically added to the list of JS function templates from which you can
choose. This feature is supported in the Health Log Analytics application, Version 20.0.11 - July
2021, available from the ServiceNow Store .
(ACC data inputs only) Health Log Analytics provides the published JavaScript function to all
existing and future ACC data inputs. The new JavaScript function replaces the previous script.

What to do next

Proceed to the Data Input Mapping page by selecting the Go to Mapping related link. Map raw
data that streams into your instance to determine how Health Log Analytics processes it.
Log data auto-mapping and mapping in Health Log Analytics
By default, the HLA Engine tries to auto-map every incoming log line to the correct tags. You can
change automatic mapping results manually by defining a JavaScript function.

Auto-mapping incoming log lines
Health Log Analytics auto-mapping assigns log samples and metadata to three tags: service
instance, component, and source type. The service instance assignment is based on the service
instance specified in the data input setup. The remaining tags are assigned automatically.
For example, in the following example log line, Health Log Analytics uses the "source" field to find
the component and source type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3538


<!-- page 3539 -->
{"beat":{"version":"6.8","name":"abc3.prd.acme.com","hostname":"
abc3.prd.acme.com"},"@timestamp":"2020-08-27T10:12:24.792Z","pro
spector":{"type":"log"},"message":"****
User null is requesting the following page
http://www.acme.com PROPS:{"subcategory1":"home
pages","httpStatus":"200","loginLevel":"Anonymous","userAgent":
"Mozilla5.0",
("pageUrl":\"http://www.acme.com","host":"abc3.prd.acme.com","@
version":"1","source":"/opt/oracle/weblogic/abc/online_store3/lo
gs/online_store3.out","offset":3951550786}
In the example, Health Log Analytics extracts the string "online_store". It analyzes the following
fields if they exist in the log line: source, path, channel, namespace_name, name, pod_name,
source_name, and aws_lambda_name. When data is sent over Syslog, it also analyzes the syslog
tag.
Stop extraction of unneeded data
If an extracted string is not descriptive enough or contains redundant text or
information, you can stop extracting such expendable data. For more information,
see Stop extraction of unneeded log data in Health Log Analytics.
Ensuring extraction of specific data
You can make sure that Health Log Analytics extracts specific desired terms. For
more information, see Extract specific log data in Health Log Analytics.

Mapping data input sources
You can change automatic mapping results manually by defining a JavaScript function. Data
input mapping enables you to organize your log data by service instance and by availability
zone. A single service instance can include multiple components, and a component can
receive logs from many different source types. An service instance-component pair, however,
is unique. Source types are based on a specific log structure and format. Service instances and
components are defined more broadly and are therefore used mainly for logical mapping.
Activating Test mode avoids blowing up Elasticsearch storage with sample data that is used only
for perfecting the log data mapping. When the data input is in Test mode, Health Log Analytics
doesn’t create the source types, sources, or any other objects it creates in the standard
flow. It saves the streamed data in dedicated temporary Elasticsearch indices that appear as
components in the Log viewer. When you publish the script and exit Test mode, these temporary
indices are deleted to minimize storage space consumption.
When you're defining a JavaScript function, select Test to view the outcome of the script as it
is currently specified. This functionality enables you to preview the created source types and
sources. You can then refine the script until it achieves the desired outcome. For example, it can
be useful to compare the test outcome of several versions of the JavaScript function.

Note: By default, the test processes 100 log data samples. You can customize this number
in the system properties. For more information, see Configure global Health Log Analytics
system properties.
During the data input setup, the system might create an excessive total number of data input
sources. For example, this can be due to a faulty mapping script. You can configure limits for the
number of sources created per data input in the system properties:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3539


<!-- page 3540 -->
System property

Description

log_source.sources_warning_limit
The warning limit for the

Default

500

number of sources created
per data input.

log_source.sources_critical_limit
The critical limit for the

600

number of sources created
per data input.
The number of log sources that a specific data input has created displays in the Sources count
field for that data input. When the total number of sources created during the data input setup
reaches the warning limit, the system sends a warning notification by email. It also displays a
message on the Data Input mapping, Log sources, and Data input pages. The notification and
the message include the total number of sources created so far and the three data inputs that
contributed the most sources to this total. If no action is taken, the system continues to create
sources until the total number reaches the critical limit. When this happens, the data input setup
and streaming from all data inputs stops automatically. You can't start data inputs again manually
until the issue has been resolved. You can resolve this state by following the instructions in
the How to handle too many sources in data inputs [KB0963067]
article in the Now Support
Knowledge Base.

Binding log data
Binding log data to Configuration Items (CIs) in the Configuration Management Database (CMDB)
enables you to search the CMDB for endpoints that match a log. When you configure a data
input, you bind log entries to a service instance that is bound to a CI in the CMDB. Binding log
entries, service instances, and CIs enables the HLA Engine to correlate them for use in root
cause analysis (RCA). For more information, see Configure a Rsyslog, Filebeat, or Winlogbeat
data input in Health Log Analytics manually or Configure an Elasticsearch data input in Health
Log Analytics manually.
Map raw log data in Health Log Analytics
Mapping raw log data that streams into your instance determines how the data is handled.
Health Log Analytics automatically structures logs, creates metrics for anomaly detection, and
presents alerts based on how your data is tagged.

Before you begin

Role required: evt_mgmt_admin

About this task

By default, Health Log Analytics tries to auto-map every incoming log line to the correct tag. If
properties aren't discovered automatically, map the data input sources manually by defining a
JavaScript function.
In the JavaScript function, you are required to map only the service instance (here called
application service). Mapping the component and the source type is optional: Health Log
Analytics tries to extract their values from the log data automatically. If the attempt fails, it assigns
the default values. If you map the component but not the source type or vice versa, the system
tries to extract the missing value from the log data. If it fails, it assigns the component value to the
source type or vice versa, depending on which one you have mapped. This feature is supported
in the Health Log Analytics application, Version 20.0.11 - July 2021, available from the ServiceNow
Store .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3540


<!-- page 3541 -->
Note:
(ACC data inputs only) When the Agent Client Collector switches to a different MID Server
to provide failover protection, it must switch to a different ACC data input. Therefore, all
ACC data inputs must have the same JavaScript function. Health Log Analytics provides the
latest published JavaScript function to all existing and future ACC data inputs, replacing the
previous script. This feature is supported in the Health Log Analytics application, Version
22.0.12 - December 2021 and later, available from the ServiceNow Store . For information
about failover protection in Agent Client Collector Log Analytics (ACC-L), see Agent Client
Collector Log Analytics.

Note: You can manipulate raw log data before Health Log Analytics maps and structures it.
For more information, see Edit raw log data before processing.

Procedure
1. Navigate to All > Health Log Analytics > Mapping > Data Input Mapping.
2. Open a record.

Note: The first time the Data Input Mapping form is displayed, Health Log Analytics
fetches log samples automatically. In subsequent sessions, fetch fresh samples by
selecting Refresh Samples.

Note: If the HLA engine is down and data has stopped streaming, a notification appears
at the top of the Data Input Mapping page. When this happens, contact ServiceNow
support.
3. Optional: To forward the complete raw log message, disable automatic header properties
detection for this data input by selecting Disable header detection.
For more information, see Header properties detection in Health Log Analytics.
4. Optional: Activate Test mode by setting the Test mode value to ON.
In Test mode, Health Log Analytics doesn't create the source types, sources, or any other
objects it creates in the standard flow to avoid blowing up Elasticsearch storage with sample
data. For more information, see Log data auto-mapping and mapping in Health Log Analytics.
5. Optional: View how the current JavaScript function affects log lines.
a. Add a sample message in the Test manual sample field.
b. Select Go.
c. Note how the JavaScript function affects the log lines.
6. In the Raw input sample field, choose a log sample that will show the effect of your new
JavaScript function on log lines when you test it.
7. Optional: Enable HLA to identify service instances and components from log fields and
automatically map log data to them by selecting Enable auto map from log field.

Note:
◦ Automatic log context mapping can only be configured in the Service Operations
Workspace. For more information about this feature, see Map logs to service instances
and components for context in Health Log Analytics.
◦ If a manually-defined mapping script exists, automatic log context mapping overwrites
it.
◦ To be able to define a JavaScript function manually in the current form, the Enable auto
map from log field check box must be clear.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3541


<!-- page 3542 -->
8. Define a JavaScript function that maps your data input sources to the correct service instance
(here called application service), component, and source type.

Note: (ACC data inputs only) Make sure that your JavaScript function can be used to
handle data streamed by all ACC data inputs.
a. In the JavaScript console, either modify the provided default JavaScript function or a custom
JavaScript function selected from the JS functions templates drop-down list, or define a
new JavaScript function.
The provided templates can act as a starting point for your custom script code. Available
templates are:
▪ Default Mapping Script
▪ Glide Node Log Mapping Script
▪ Glide Sys Log Mapping Script
▪ Linux OS logs streamed with Syslog

Note: Logs must have a syslog wrapper for this JavaScript function to work properly.
▪ Mid Server Log Mapping Script
▪ Windows - Winlogbeat logs streamed with Winlogbeat
The JavaScript function for mapping raw log data uses the following objects:
▪ Signature: function map(sample, metadata)
Object

Description

sample

The current log sample after
preprocessing.

metadata

Object that contains:
▪ Event Stream: Access via:
<metadata value>. For example:

metadata.eventStream.origin
▪ Transform header 1: Access via:
<metadata value>. For example:

metadata.headers.i1.type
▪ Transform header 2: Access via:
<metadata value>. For example:
metadata.headers.i2.type
▪ type Transform header 3: Access
via: <metadata value>. For example:

metadata.headers.i3.type
▪ Fallback Assignment: Access via:
<metadata value>. For example:

metadata.fallBacks.host

Note: You can create and associate multiple services per source type.
▪ Return type and structure
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3542


<!-- page 3543 -->
Note: The JavaScript function returns a map of two entries. Do not change this
return structure.

Object

Description

applicationService

The existing application service (that is, the
service instance) to which this sample will
be assigned.

Note: The service instance must be
bound to anomaly alerts related to the
log.
component

The component to which this sample will
be assigned.

sourceType

The source type to which this sample will
be assigned.

▪ To discard a log message, call return drop().
b. Test the JavaScript function by selecting Test.
Testing the JavaScript function enables you to view the outcome of the script on the log
sample. For a description of the displayed fields, see JavaScript function test outcome fields.

Note: If your new JavaScript function is not behaving as expected, you can revert to
the last published one by selecting the Revert JS Function related link.

c. Optional: Make any necessary adjustments and then test the JavaScript function again.
d. Optional: Compare the outcome of multiple tests.
Comparing the test results of several versions of the JavaScript function can help you refine
the script until it achieves the desired outcome.
9. When you have finalized the JavaScript function, select Save template to save it.
You can either save the JavaScript function as a new template or overwrite the currently
selected template.
◦ To save the JavaScript function as a new template, enter a new name in the Template name
field.
◦ To overwrite the template currently selected in the JS function templates field, leave the
Template name field empty.
10. Select Publish to save the JavaScript function to the database.

Result

When the JavaScript function is published, Health Log Analytics uses it to map data input
sources.
The new script is automatically added to the list of JS function templates from which you can
choose. This feature is supported in the Health Log Analytics application, Version 20.0.11 - July
2021, available from the ServiceNow Store .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3543


<!-- page 3544 -->
(ACC data inputs only) Health Log Analytics provides the published JavaScript function to all
existing and future ACC data inputs. The new JavaScript function replaces the previous script.

What to do next
• (Optional) Edit your raw log data before Health Log Analytics maps and structures it. If you want
to perform this task immediately, click the Go to Preprocessor related link to proceed to the
Data Input Preprocessor page.
• (Optional) Fine-tune how the system reads your log data by refining the Source Type structure.
This step enables you to reclassify auto-classified properties and change auto-mapped labels.
Related topics
Log data auto-mapping and mapping in Health Log Analytics
View the relationships between source types and log sources in Health Log Analytics
Header properties detection in Health Log Analytics
Stop extraction of unneeded log data in Health Log Analytics
Extract specific log data in Health Log Analytics
View the relationships between source types and log sources in Health Log Analytics
Explore the many-to-many relationships between source types and log sources to help you
optimize your data input mapping.

Before you begin

Role required: evt_mgmt_admin

About this task

Health Log Analytics uses source types to parse logs and utilizes log sources as the framework
for detecting anomalies. Each source type provides logs that are analyzed by multiple log
sources, and each log source receives logs that are parsed by multiple source types. Reviewing
the associations between source types and log sources can help you improve your data input
mapping for better performance and outcomes.

Procedure
1. Navigate to All > Health Log Analytics > Mapping > Data Input Mapping.
2. Ensure that log data is streaming into your instance, and then open a data input mapping
record.
3. View the associations between the log sources and the source types.
◦ View the log sources that are associated with a source type:
a. Open the Source Types tab to view the generated source type structures.
b. Open a source type structure record.
c. Select a source type.
d. Under Sources, view all the log sources that receive data from this source type.
◦ View the source types that are associated with a log source:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3544


<!-- page 3545 -->
a. Open the Sources tab to view the generated log sources.
b. Select a log source record.
c. On the Source Types tab, view all the source types that feed data into this log source.

Note: The displayed results are updated once a day. Results that are older than 24
hours are deleted automatically.
Header properties detection in Health Log Analytics
In Health Log Analytics, automatic header properties detection separates the transport header
from the inner log message and forwards only the inner log message to the source type
structure. The inner message contains the actual log data without including shipping information.
The Health Log Analytics application supports header properties detection for Fluentd, Beats,
and Syslog (RFC 3164, RFC 5424).
Starting with Version 33.0.27 - August 2024, the system also supports header properties
detection for logs that follow the OpenTelemetry logs data model and semantic conventions. For
more information, see the OpenTelemetry Logs Data Model documentation .

Disabling header properties detection
When you disable header properties detection for a data input, the Health Log Analytics AI
Engine stops extracting properties from the header. Forwarding the complete raw message can
be useful in the following situations:
• The inner log message lacks information for parsing, such as timestamp and severity.
• The data input contains information that can be used for structuring.
• The data input forwards the logs fully parsed.
For the procedure to disable header properties detection, see Map raw log data in Health Log
Analytics.
Extract specific log data in Health Log Analytics
Set Health Log Analytics to extract specified terms from logs and map them to specific
components.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Mapping > Extracted values.
2. Select New.
3. In the Value to extract field, enter the term that you want Health Log Analytics to extract from
your logs.
4. In the Map to component field, enter the component that you want the value mapped to.
5. In the Property field, choose a property from the list.
6. Optional: Further specify the value to extract by selecting additional options:
◦ Exact match
◦ Case sensitive
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3545


<!-- page 3546 -->
7. Optional: In the Description field, add a description of the value.
8. Select Submit.
Stop extraction of unneeded log data in Health Log Analytics
If an extracted string of data is not descriptive enough or contains redundant text or information,
you can set Health Log Analytics to stop extracting such data from your logs.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Mapping > Excluded values.
2. Select New.
3. In the Value to exclude field, enter the string that you want Health Log Analytics to stop
extracting.
4. Optional: Further specify the values to stop extracting by selecting additional options:
◦ Starts with
◦ Ends with
◦ Contains
◦ Case sensitive
5. Optional: In the Description field, add a description of the value.
6. Select Submit.
Source type structure adjustment in Health Log Analytics
Health Log Analytics enables you to reclassify auto-classified properties and change automapped labels. These adjustments help Health Log Analytics machine learning to better
understand your priorities.
Health Log Analytics automatically separates the transport header from the inner log message
and sends the inner log message to the source type structure. It extracts properties from
incoming log messages and auto-maps labels to source type fields.
Modifying the source type structure and classification is your chance to make sure that the HLA
engine extracts all the properties properly and classifies them appropriately.

Note: Because a single data input can contain more than one source type, the system
structures log data by source type and not by data input.
For example, consider the following log:
{
"TenantId": "abc-01-02-03-04-05050708091011121314",
"@timestamp": "2020-08-28T08:29:23.967Z",
"Computer": "john Doe_computer",
"EventType_s": "LogMessage",
"Job_s": "johnDoe_cell",
"IP_s": "1.00.00.00",
"message": "This is the extracted message. This part of the
message includes superfluous content and values",
"MessageType_s": "OUT",
"Timestamp_d": 1598603359017850000,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3546


<!-- page 3547 -->
"Type": "my_LogMessage_is",
"_ResourceId": ""
}
The sample code contains "key":"value" pairs. The key is the property name, and the value
is the property value.
The key "message" has the following value: "This is the extracted message. This
part of the message includes superfluous content and values". If you
wanted your logs to contain only the meaningful part of that message, you would add JavaScript
code instructing the system to extract only that part.
//Added JavaScript to extract only the first sentence in the
message! if (output['message'] != null){ output['message'] =
output['message'].slice(0, output['message'].indexOf("\.")); }
(edited)
You could use the same logic to reclassify a value. For example, if the key "Computer" is
insignificant, you could set its value to "Invalid".
For more information about the source type structure, see the Source Type Structure – Labels &
Classifications [KB0863562]
article in the Now Support Knowledge Base.

Note: You can reactivate the learning mode for a source type structure if you'd like to use
the AI Engine's learning functionality again after the initial learning period has become
outdated. On the Source Type Structure form, select Relearn to reset parsing, extraction,
classification, and labeling for the source type structure and start the learning process
anew.
Related topics
Refine the source type structure in Health Log Analytics
Refine the source type structure in Health Log Analytics
Fine-tune how Health Log Analytics reads your inner log messages and detects anomalies by
customizing the extracted properties in the source type structure.

Before you begin

To better understand the reasons for adjusting auto-classified properties and auto-mapped
labels in the source type structure, see Source type structure adjustment in Health Log Analytics.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Inputs > Source Type Structure.
2. Open a record.

Note:
◦ By default, Auto extraction is selected to make Health Log Analytics automatically
separate the transport header from the inner log message.
◦ The first time the Source Type Structure form displays, Health Log Analytics fetches log
samples automatically. In subsequent sessions, fetch the latest samples by selecting
Refresh Samples.
3. Optional: View how the current JavaScript function affects the log lines.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3547


<!-- page 3548 -->
a. Add a sample message in the Test manual sample field.
b. Select Go.
c. In the Key/Value Mapping tab, note how the JavaScript function affects the log lines.
4. In the Raw input sample field, choose a log message.
When you test your JavaScript function, Health Log Analytics uses this sample message to
show the joint effect of automatic extraction and the JavaScript function on the log lines.
The following fields are read-only:

Field

Description

Duration (ms)

The processing time of all samples, in
milliseconds.

Dropped

The total number of logs dropped in all the
samples.

Errors

The total number of errors that occurred in all
the samples.

Timestamp extraction failures

The number of timestamp extraction failures
that occurred in all the samples.

Severity extraction failures

The total number of severity extraction
failures that occurred in all the samples.

Message extraction failures

The total number of message extraction
failures that occurred in all the samples.

Lengthy properties

The total number of lengthy properties in all
the samples.
Lengthy properties are properties with more
than 256 characters.

Note: Because Health Log Analytics
doesn't extract such properties,
they are not indexed as keywords in
Elasticsearch.
5. Define a JavaScript function that customizes automatically extracted properties or adds
properties to the source type structure.
a. In the JavaScript console, either change the provided default JavaScript function, modify an
existing custom JavaScript function, or define a new one.

Note: In addition to the default JavaScript function, Health Log Analytics provides
several JS function templates for refining the source type structure. The templates
can act as a starting point for your custom script code. This feature is supported in
the Health Log Analytics application, Version 20.0.11 - July 2021, available from the
ServiceNow Store .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3548


<!-- page 3549 -->
JS function templates

Extract Key_Values Using Regex

Description

Script used for parsing logs into a series of
key:value pairs by using regular expressions
to identify specific regex patterns.
Depending on the log data being sent to
the source type, it parses either the inner
message or the full log line. You can view
how the data appears in the samples that
are loaded into the source type structure.
This process is iterative; it is repeated until
all key:value pairs are found.

Extract Key_Values Using split-regex

Script used for parsing logs into a series of
key:value pairs by using regular expressions
to identify specific regex patterns. This
process captures the values in a LIST form
first, then uses the Java split function to
create the key:value pairs.
Depending on how the data appears in
the raw input, this function might be more
efficient than Extract Key_Values
Using Regex. The raw input is either
the inner message that header detection
passes on, or the full raw log if header
detection is disabled or doesn’t work on that
particular log.

JSON Parse - flatten

Script used for extracting JSON information
that is part of another text string from the
raw input. For example, the information
could be a JSON request written as part of a
longer inner message.
Inner JSON sections are difficult to split.
In such cases, this script can be used to
"flatten" or parse out the key:value pairs.

Extract a new field from raw input

Script used for extracting a new field from
the raw input by using a regular expression
with capture groups to identify the pattern of
the new field.

Parse XML format

Script used for extracting key:value pairs
from the XML by using a regular expression
to identify the XML format.
This process is iterative; it is repeated until
all key:value pairs are found.

Set numerical severity level as textual values Script used for converting numerical
severity values to their corresponding
textual severity values.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3549


<!-- page 3550 -->
JS function templates

Description

Note: To enable the system to
correctly identify the severity level of a
log, the severity must be given in text
format. No numerical severity values
should remain.
Trim function

Script used for removing the double quotes
that surround the string from VALUE.
You can adapt this function to remove any
other characters that surround the output
VALUE of a key:value pair.

The JavaScript function for refining the source type structure uses the following objects:
Signature - function construct (sample, output)
Object

Description

sample

The inner message extracted from the
sample message.

output

Object that contains the key-value pair map.

b. Test the JavaScript function by selecting Test.
c. View the outcome of the JavaScript function in the related lists and make changes if needed.
▪ The Key/Value Mapping tab shows the effect of your JavaScript function combined with
the system's automatic extraction on your raw input sample.
You can modify keys where appropriate.
▪ The Classification field enables you to reset the classification of a property. The
available types are:

Type

Description

Example

Meter

A property with this
Status codes, response
classification detects
codes, actions, or patterns
anomalies in the number of
times the property appears
in each log message. It
presents changes in the
quantity of this value as
part of Automatic Root
Cause analysis.

Note: Properties
classified as Meter
consume resources.
Gauge

A property with this
classification detects

CPU, memory, or response
time

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3550


<!-- page 3551 -->
Type

Description

Example

anomalies in a numerical
value that is reported
continuously.

Note: Properties
with a classification
of Gauge consume
resources.
Timeless Gauge

A property with this
classification detects
anomalies in a numerical
value that is not reported
continuously. The system
notifies about an anomaly
in this value regardless
when the anomaly
occurred.

Note: This feature
is supported in the
Health Log Analytics
application, Version
20.0.11 - July 2021,
available from the
ServiceNow Store .
Automatic Root Cause
(ARC Only)

A property with this
classification reports
the property as part
of the Automatic Root
Cause analysis of another
anomaly and not as an
anomaly by itself.

Invalid

A property with this
classification is not
calculated or shown in
the Automatic Root Cause
analysis.

User name, IP addresses,
application components, or
datacenter

Note: Properties
classified as Invalid
save resources.

▪ The Labels to assign field enables you to set a property on a label.
Label

Description

Timestamp

The property that holds the timestamp of
the event.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3551


<!-- page 3552 -->
Label

Description

Note: If automatic header
properties detection is enabled and
the source type lacks a timestamp,
the system extracts the timestamp
from the transport header. If header
detection is disabled or doesn't work
for the relevant log lines in the data
input, all log lines must have proper
timestamps.
Severity

The property that represents the severity
level of the log.

Message

The log message. The system uses this
property to identify textual patterns in the
data.

Host

The property that represents the host from
which the event was sent.

Note: If automatic header
properties detection is enabled and
the source type lacks a host, the
system extracts the host from the
transport header. If header detection
is disabled or doesn't work for the
relevant log lines in the data input, all
log lines must have a host.
External ID

The property that serves as a unique
identifier for this event type. For example,
Event ID in Windows event log.

▪ The Rename key field enables you to rename the key.
▪ The Outcome Key-Value tab shows how your JavaScript function processed the data.
▪ The Data Input Mappings tab shows the data input mappings for the current source type.
The Last event time column on this tab shows the last date and time the AI engine
processed a log for the data input mapping. The system refreshes this information every
5 minutes. Knowing when the last log was processed for this data input mapping makes it
easier to verify that log data is streaming.
▪ The remaining tabs show errors, message extraction failures, severity extraction failures,
timestamp extraction failures, and lengthy properties.

Note: If your new JavaScript function is not behaving as expected, you can revert to
the last published one by selecting the Revert JS Function related link.

d. Optional: Make any necessary adjustments and then test the JavaScript function again.
6. Select the Save template option to save the JavaScript function.
You can either save the JavaScript function as a new template or overwrite the currently
selected template.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3552


<!-- page 3553 -->
◦ To save the JavaScript function as a new template, enter a new name in the Template name
field.
◦ To overwrite the template currently selected in the JS function templates field, leave the
Template name field empty.
7. Select Publish to save the JavaScript function to the database.

Result

When the JavaScript function is published, Health Log Analytics uses it to fine-tune how it reads
your inner log messages and detects anomalies.
The new script is automatically added to the list of JS function templates from which you can
choose. This feature is supported in the Health Log Analytics application, Version 20.0.11 - July
2021, available from the ServiceNow Store .

What to do next

Continue with the remaining data input setup tasks: Verify that all your log sources are present
and active, and add timestamp formats if necessary.
Health Log Analytics content packs for quicker time to value
Shorten onboarding time for the Health Log Analytics application by installing content packs. The
packs contain default source types and mapping script templates that save you the time it takes
to create them from scratch.
After installing a content pack, Health Log Analytics begins to stream and parse your log data
immediately. The application recognizes and analyzes the data, generates more relevant alerts,
and reduces noise from the moment of the integration. You can still customize the mapping
configuration later on, if needed.
You can integrate content packs in two different ways:
• Select a content pack when you're configuring a data input. Health Log Analytics activates the
selected pack automatically and uses its mapping script for mapping the data input sources.
• Activate a content pack before you configure a data input. When you have configured the data
input and you're mapping the raw log data, select the content pack’s mapping script from the
Data Input Mapping form.
Currently, a content pack is available for streaming logs from Linux using Filebeat.

Note: All configurations in content packs exist in the global domain. If you're using domain
separation, the content pack content is only available for logs in the global domain.
This feature is supported in the Health Log Analytics application, Version 25.0.17 - November
2022 and later, available from the ServiceNow Store .
Activate a content pack in Health Log Analytics
You can activate a content pack before configuring a data input.

Before you begin

For an overview of this feature, see Health Log Analytics content packs for quicker time to value.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Content Packs.
2. Open the appropriate content pack for your data input.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3553


<!-- page 3554 -->
Note: Currently, a content pack is available for streaming logs from Linux using Filebeat.
3. On the Content Pack form, select Activate.
The Active check-box appears selected. The activated content pack displays the script
templates and source types that are associated with it.

Note: The source types included in the content pack may already exist on your
ServiceNow instance. In this case, Health Log Analytics automatically renames the
content pack source types by adding a content pack suffix to their name. If you want
to use the content pack source types and their mapping, delete or rename the original
source types and then remove the suffix from the content pack source types. Otherwise,
Health Log Analytics uses the original source types.
On the Data Input Mapping form, the mapping script is listed as a JavaScript functions
template option.

What to do next

When you have configured the data input and you're mapping your raw log data, you can select
the content pack’s mapping script from the JS functions templates drop-down.
Migrating a Health Log Analytics data input configuration between instances
Export a Health Log Analytics data input and source types configuration as an update set and
import it to a different ServiceNow instance. In the target environment, you can use the migrated
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3554


<!-- page 3555 -->
data input for streaming and processing log data. This functionality saves time and reduces
possible errors by avoiding the need to configure the settings again on the target instance.
The migrated configuration includes mapping and all other relevant settings, except credentials.
Depending on the data input that you're exporting, you may need to configure credentials in
the target environment. For example, when exporting Amazon CloudWatch or Amazon S3 data
inputs, you must configure Amazon Web Services (AWS) credentials.
This feature is supported in the Health Log Analytics application, Version 25.0.17 - November
2022 and later, available from the ServiceNow Store .
Starting with Health Log Analytics Version - December 2025, you can also export all source types
related to one or more selected log sources to the update set together. For more information, see
For general information about update sets in the ServiceNow AI Platform, see System update
sets .
Export a Health Log Analytics data input configuration
Export the configuration of a Health Log Analytics data input with or without the related source
types to an update set. You can then import the update set to the target environment.

Before you begin

For an overview of this feature, see Migrating a Health Log Analytics data input configuration
between instances.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Data Inputs.
2. In the Data Inputs list, select the data input that you want to export.
3. Export the data input to an update set.

Note: The exported configuration doesn't include the service instance configured for
the data input.
a. From the Actions on selected rows drop-down menu, choose Export Data Input.

b. In the Export Data Input dialog, do one of the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3555


<!-- page 3556 -->
▪ Leave the check box selected to include the source types that are associated with the
data input in the update set.
When the box is selected, the update set will include the following source type-related
tables:
▪ sn_occ_source_type
▪ sn_occ_source_type_structure
▪ sn_occ_sources
▪ sn_occ_timestamp_formats
▪ sn_occ_lexical_keywords
▪ sn_occ_log_correlator
▪ sn_occ_log_source_retention
▪ sn_occ_quick_replacements
▪ sn_occ_reconstructors
▪ sn_occ_replacements
▪ Clear the box to export the data input without the associated source types. For example,
if you want to reuse the data input configuration, but configure the source types from
scratch.
When the box is clear, the update set will not include the source type-related tables.

Note: You can export source types separately. For more information, see Export
source types to an update set in Health Log Analytics.
c. Select Continue.
The data input, with or without the source types, is exported to an update set.

Note: An update set can act as the parent for multiple child update sets.
4. Select Download update set to download the update set to the instance.
The update set is downloaded as an XML file.

What to do next

Import the update set to the required ServiceNow instance. For more information, see Import a
Health Log Analytics data input to a target instance.
Import a Health Log Analytics data input to a target instance
Import a data input configuration that you've exported from another instance as an update set.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3556


<!-- page 3557 -->
Before you begin

For an overview of this feature, see Migrating a Health Log Analytics data input configuration
between instances.
Before performing this procedure, export the data input to an update set. For more information,
see Export a Health Log Analytics data input configuration.
Role required: admin

Procedure
1. On the target instance, import the update set that contains the data input configuration.
a. Navigate to All > System Update Sets > Retrieved Update Sets.
b. In the Related Links, select Import Update Set from XML.
c. Select Choose file and open the update set XML file from the Downloads folder.
d. Select Upload.
The update set is uploaded to the instance and appears in the Retrieved Update Sets list in
the Loaded state.
2. Identify and address errors in the update set.
a. In the Retrieved Update Sets list, open the update set record.
b. Select Preview Update Set Batch to detect errors.
The Batch Update Set Preview dialog indicates failure, which is expected behavior.
c. Close the dialog and resolve the errors in the Update Set Preview Problems related list.
For more information, see Preview a remote update set

.

You can ignore errors that start with 'Could not find a record in [table]' for the following
tables:
▪ aws_credentials
▪ azure_sas_credentials
▪ azure_service_principal
▪ basic_auth_credentials
▪ cmdb_ci_service_auto - Service instance
▪ ecc_agent - MID
▪ ecc_agent_cluster - MID Server Cluster
▪ kafka_ssl_credentials
▪ sn_occ_data_input_preprocess_example
▪ sn_occ_data_input_preprocess_example_row
▪ sn_occ_gcp_credentials
▪ sn_occ_mapper_example

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3557


