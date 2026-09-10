# Zurich IT Operations Management — Health Log Analytics

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 3708–3719 of 4823 | Part 3 of 3

Sections: Health Log Analytics (p3408)

---

<!-- page 3708 -->
• Time: The events all occurred within a configured time interval.
• Metadata: The alerts have matching values in log-line metadata. For example, all
alerts involve the same host.
• Message text: The message text in the log data is similar or identical between
alerts.
• Trend: The alerts show a similar tendency in values or rates. For example, a
particular metric value is increasing in all alerts.
Click the More info link on the Correlations banner to view the list of correlations
that relate the Log Analytics alerts.
Correlations banner

Correlations

1. List of correlations: The first correlation in the list is expanded to show the
individual Log Analytics alerts that are correlated and the log correlator that the
alerts share. The number in parentheses is the number of alerts in the correlation.
2. An individual log correlator: The identifier for a group of correlated Log Analytics
alerts. The alerts are grouped by the log-line data or metadata that is common
to the alerts (for example, IP address, host name, or user name). The number in
parentheses indicates the number of correlated alerts.
3. Log Analytics alerts that are correlated.
Alerts in group

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3708


<!-- page 3709 -->
For a Log Analytics alert (Alert0010166 in the example), the Alerts in group section
shows the Log Analytics alerts that are grouped under the Log Analytics alert.
Click a Log Analytics alert to view its details. To view the full list of Log Analytics
alerts, click View more or click the Alerts in group tab.
Viewing alert details

Configuration Items
To view more detailed information on the CIs that are associated with the alerts,
click the Configuration Items tab or click View more in the Configuration Items
section. See Operator phase 1: Analyze and acknowledge an alert.
Impacted services
To view detailed information on the services that are impacted by the alerts, click
the Impacted services tab. See Operator phase 1: Analyze and acknowledge an
alert.
Log Analytics alerts on the Alerts in group tab
The table describes the Log Analytics alerts in a Log Analytics group on the Alerts in group tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3709


<!-- page 3710 -->
Alerts in group tab
Column

Description

Number

The number of the alert that appears in the
list of alerts on the Operator Workspace
dashboard.
To view detailed information for an alert on the
Details tab, click the alert number.
This field is automatically set.

Group

Type of group that the alert belongs to:
a standalone Log Analytics alert or a
Component-based alert.

Description

Anomalous pattern or metric that caused the
alert to be generated.

Severity

Severity value for the alert. The available
values are:
• Critical: Immediate action is required. Either
the resource is not functional or critical
problems are imminent.
• Major: Major functionality is severely
impaired or performance has degraded.
• Minor: Either performance has degraded
or there is a partial, non-critical loss of
functionality.
• Warning: Attention is required even though
the resource is still functional.
• Info: An informational message. An alert is
created, but the resource is still functional.
• Clear or Resolved: No action is required. An
alert is not created from this event. Existing
alerts are closed.

Priority group

Priority group that indicates the order in which
to resolve alerts. Choices are as follows:
• Urgent
• High
• Moderate
• Low
The priority group value is more important than
severity alone. For example, a high priority
and low severity alert should be addressed
before a low priority and high severity alert. For
information on how priority is calculated, see
Alert priority.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3710


<!-- page 3711 -->
Alerts in group tab (continued)
Column

Description

State

Processing state of the alert. A newly
generated alert is in the Open state. Other
states are as follows:
• Reopen: A previously closed alert is open
again, and it requires your attention.
• Flapping: The alert is receiving identical
events from the same source at high
frequency. This state can cause an alert to
re-open from the Closed state, resulting in a
high frequency of changes between Open
and Closed states.
• Closed: The alert is closed and does not
require any further action. You close an alert
when it is remediated.

Configuration item

CI in the CMDB. The CI is applied to by the
alert.

Node

Node field that is received in the log message.
The event described in the log message
occurred on this node. Often, the node is the
name of the CI that is associated with the alert.
For example, a computer name, IP address,
FQDN, or MAC address.

Source

All Log Analytics alerts have the value Log
Analytics in the Source column to indicate
that Health Log Analytics generated the alert.

Metric name

Name of the metric whose anomalous
behavior led to the alert. For example, the I/O
request in the case that the I/O request took
longer than 15000 ms to complete.

Updated

Most recent time when the alert information or
state was updated.

Information on the Overview tab for a Log Analytics alert
The alert Overview tab in Health Log Analytics helps you understand Log Analytics alerts.

Sections and cards on the Overview tab for Log Analytics alerts
For a detailed description of Log Analytics alerts , see Types of Health Log Analytics alerts.
Identified issue
The "identified issue" led to the alert. The issue appears in the title for the alert and
on a card on the tab. Information about the alert appears in the banner.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3711


<!-- page 3712 -->
Identified issue

• Click the information icon (

) to see how the issue was identified.

• Click View surrounding logs to view the log lines that were generated one minute
before and one minute after the alert. See Analyze log lines around the anomaly
to help find the root cause.
Configuration Items
To view more detailed information on the CI that is associated with the alert, click
the Configuration Items tab or click View more in the Configuration Items section.
See Operator phase 1: Analyze and acknowledge an alert.
Impacted services
To view detailed information on the services that are impacted by the alerts, click
the Impacted services tab. See Operator phase 1: Analyze and acknowledge an
alert.
Anomaly
The Anomaly card illustrates the anomalous activity that led to the alert.
• The blue line shows the recent anomalous activity.
• On some charts, the lightly shaded area indicates the expected (learned
baseline) behavior.
A peach-shaded area represents the baseline values for the same hour one day
earlier. A pink-shaded area shows the values for the same period in the previous
week.
• Click the information icon to see how the anomaly was identified:

.

In this example, the peach-shaded area shows the same data for the same hour one
day earlier. The spike in the metric value (events per minute) is clearly visible.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3712


<!-- page 3713 -->
Anomaly card

In this example, the pink-shaded area represents the baseline values for the same
hour in the previous week.
Anomaly card with baseline values one week earlier

For more information on the kinds of anomalies that you might encounter, see Types
of anomalous behavior in Health Log Analytics.
Meaningful log properties
On the Meaningful log properties card, each bar chart shows the distribution of
values for a single log property that contributed to the anomaly. Each property value
is associated with a color. The length of a color bar correlates to the percentage that
the property value holds in comparison with all other values for the property. For the
p_a5 property in the example, the value EUR appeared in 56.12% of log lines, GBP
in 13.67%, and so on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3713


<!-- page 3714 -->
Meaningful log properties

Top alerts
The Top alerts card displays summaries of data from the Similar alerts and
Repeated alerts tabs. The Total results value is the sum of the two values.
Click More details to open the Alert Insight Similar Alerts tab. For details, see
Information on the Alert Insight Similar Alerts tab.
Top alerts

Top incidents
The Top incidents card displays summaries of data from the Incidents on CI and
Incidents on related CIs tabs. The Total results value is the sum of the two values.
Click More details to open the Incidents on CI tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3714


<!-- page 3715 -->
Top incidents

Information on the Alert Insight Similar Alerts tab
View the list of alerts that are provided by the Alert Insight feature on the Alert Insight Similar
Alerts tab. The Alert Insight feature generates the information to help you resolve the alert.

Alert Insight Similar Alerts tab
The tab lists information on other alerts generated over the preceding 30 days that have the
same CI type, source, resource, metric name, and so on.
Service Operations Workspace provides a context-aware alert triage based on data from IT
Service Management (ITSM), such as from incidents, change requests, and problems. The Alert
Insight feature helps you to determine the root cause and recommends a solution. Using smart
launch in context, you can perform any of the following actions:
• Launch an application
• Open a browser at a specified URL
• Perform remediation (based on orchestration)
• Launch a subflow (workflow based on flow designer).
Surrounding logs tab fields
This section describes the information displayed on the Surrounding logs tab.
Surrounding logs tab
Column

Description

Time

Timestamp of the log line in the format that the
source uses. If no value appears, then check
the source type structure of the raw data.

Application service

Service instance in which the metric was
found.

Component

Logical component of the service instance
that generated the event. Multiple CIs can
sometimes perform the same function.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3715


<!-- page 3716 -->
Surrounding logs tab (continued)
Column

Description

Message

Inner message of the raw log line that contains
the text of the system-generated log message
regarding the nature of the occurrence.

Level

Type of event. The available values, in order of
importance, are:
• Emergency
• Alert
• Critical
• Error
• Warning
• Notice
• Informational
• Debug

Host

Host identifier from the log line that consists of
the hostname or IP address of the endpoint.

Log message

The raw log message without the header.

Log Viewer table fields
This section describes the information displayed in the Log Viewer table.
Log Viewer table fields
Column

Description

Time

Timestamp of the log line in the format that the
source uses. If no value appears, then check
the source type structure of the raw data.

Service instance

Service instance in which the metric was
found.

Component

Logical component of the service instance
that generated the event. Multiple CIs can
sometimes perform the same function.

Message

Inner message of the raw log line that contains
the text of the system-generated log message
regarding the nature of the occurrence.

Level

Type of event. The available values, in order of
importance, are:
• Emergency
• Alert
• Critical
• Error

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3716


<!-- page 3717 -->
Log Viewer table fields (continued)
Column

Description

• Warning
• Notice
• Informational
• Debug
Host

Host identifier from the log line that consists of
the hostname or IP address of the endpoint.

Log message

The raw log message without the header.

Note: The Raw message column does not appear in the Log Viewer table by default. You
can display this column by selecting it from the Filters pane. For more information, see
Customize the Log Viewer table in Health Log Analytics.
Log correlators form fields
This section describes the fields on the Log correlators form.
Log correlators form
Field

Description

Type

Type of log correlator. Choices are as follows.
• Free text correlator: The log correlator
analyzes text in the log message.
• Log-key correlator: The log correlator
analyzes log metadata. For example,
the name of a service instance in your
infrastructure. Log property correlators are
specific to the business context of your
environment.
For more information, see Identifying related
alerts in log data by using log correlators.

Free text term or Identifier

Text that the log correlator isolates when
parsing log lines.
The label for this field is Free text term for
free text log correlators and Identifier for log
property correlators.

Note: The value of this field can be
the text for either type of log correlator.
As a result, the label for this column
in the resulting list of log correlators is
Correlation indicator.
Active

Option to apply the log correlator. When you
select this field, the system applies the log
correlator to the log stream.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3717


<!-- page 3718 -->
Log correlators form (continued)
Field

Description

Range of analysis

Set of sources whose log data are analyzed by
this log correlator. Choices are as follows:
• All sources: The log correlator is applied to
log lines from all sources in the data stream.
• Only new sources: The log correlator is
applied to log lines from all sources created
after this log correlator is activated.
• Specified source: The log correlator is
applied only to the log lines from the source
that you specify on this form.

Excluded sources

Sources that are excluded from the log
correlator. The system does not analyze log
lines from sources that are listed in this field.

Note: This field applies only when the

Range of analysis field is set All sources
or Only new sources.
For information about excluding a source from
a log correlator, see Exclude a source from a
log correlator.
Source

Source of the log correlator. The log correlator
analyzes the data of this log source.
This field appears only when you are adding
the log correlator from the Log Sources form.
The field is automatically set to the log source
that you are working on.

Log-based CI candidates fields in Health Log Analytics
Field descriptions for the Log-based CI candidates table, the Log-based CI candidate form, and
the Add CI candidate to CMDB form.
Log-based CI candidates table
Field

Description

Host name

The host name that Health Log Analytics
discovered in the log data.

CI class type

The CI class type discovered in the log data.
The CI class type is determined by the data
input type:
• Rsyslogs – CI class type: Linux Server
• Linux Filebeat - CI class type: Linux Server

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3718


<!-- page 3719 -->
Log-based CI candidates table (continued)
Field

Description

• Windows Filebeat - CI class type: Windows
Server
• Winlogbeat - CI class type: Windows Server
Last log time

(Read only) The last time this host was found
in the log data.

Operation

(Read only) The suggested action to take:
Add - Add the CI to the CMDB.

Status

(Read only) The status of the suggested
action.
• Pending - No action has been taken.
• If the taken action failed, this field contains
an error message.

Log-based CI candidate form
Field

Description

CI class type

The CI class type discovered in the log data.
The CI class type is determined by the data
input type:
• Rsyslogs – CI class type: Linux Server
• Linux Filebeat - CI class type: Linux Server
• Windows Filebeat - CI class type: Windows
Server
• Winlogbeat - CI class type: Windows Server

CI name

The host name that Health Log Analytics
discovered in the log data.

Operation

(Read only) The suggested action to take:
Add - Add the CI to the CMDB.

Last log time

(Read only) The last time this host was found
in the log data.

Status

(Read only) The status of the suggested
action:
• Pending - No action has been taken.
• If the taken action failed, this field contains
an error message.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3719


