# Zurich IT Operations Management — Health Log Analytics

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 3558–3707 of 4823 | Part 2 of 3

Sections: Health Log Analytics (p3408)

---

<!-- page 3558 -->
▪ sn_occ_source_type_examples
▪ sn_occ_source_type_structure_data
d. Select the errors that you ignored and then select the Select All check box.
e. From the Actions on selected rows... drop-down menu, choose Accept remote update.
f. In the Preview Problems for Batch related list, select all remaining errors and accept the
remote update as explained in the earlier steps.
3. When all errors in the update set have been resolved, select Commit Update Set Batch.
The imported data input appears on the Data Inputs list. The import includes mapping settings
and all other relevant configuration.
4. In the imported data input, configure the following.
◦ The MID Server to which the logs stream.
◦ Credentials.

Note: Whether you need to configure credentials depends on the data input that
you've imported. For example, you must configure Amazon Web Services (AWS)
credentials for Amazon CloudWatch and Amazon S3 data inputs.
◦ (Optional) The service instance to which to bind the log data.
For more information, see the configuration documentation for the relevant data input: Set up
data inputs in Health Log Analytics manually.

Result

You can begin using the data input for streaming and processing log data.
Export source types to an update set in Health Log Analytics
Export source types to an update set separate from the Health Log Analytics data input
configuration. You can then import the update set to the target environment.

Before you begin

For an overview of this feature, see Migrating a Health Log Analytics data input configuration
between instances.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Source Types.
2. In the Source Types list, select one or more source types that you want to export.
3. From the Actions on selected rows drop-down menu, choose Export Source Types.
The source types are exported to an update set.

Note: An update set can act as the parent for multiple child update sets.
4. Select Download update set to download the update set to the instance.
The update set is downloaded as an XML file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3558


<!-- page 3559 -->
What to do next

Import the update set to the required ServiceNow instance. For more information, see Import
Health Log Analytics source types to a target instance.
Export source types to an update set by log source in Health Log Analytics
Export all source types related to one or more selected log sources to an update set together.
You can then import the update set to the target environment.

Before you begin

For an overview of this feature, see Migrating a Health Log Analytics data input configuration
between instances.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Log Sources.
2. In the Log Sources list, select one or more log sources for which you want to export the related
source types.
3. From the Actions on selected rows drop-down menu, choose Export Related Source Types.
The source types are exported to an update set.

Note: An update set can act as the parent for multiple child update sets.
4. In the Related Source Type Exporter screen, select Download update set to download the
update set to the instance.
The update set is downloaded as an XML file.

What to do next

Import the update set to the required ServiceNow instance. For more information, see Import
Health Log Analytics source types to a target instance.

Note: Only the related source types and tables for the selected log sources will be
imported, not the data inputs.
Import Health Log Analytics source types to a target instance
Import source types that you've exported separate from the Health Log Analytics data input
configuration.

Before you begin

For an overview of this feature, see Migrating a Health Log Analytics data input configuration
between instances.
Before performing this procedure, export the source types to an update set. For more
information, see Export source types to an update set in Health Log Analytics.
Role required: admin

Procedure
1. On the target instance, import the update set that contains the source types.
a. Navigate to All > System Update Sets > Retrieved Update Sets.
b. In the Related Links, select Import Update Set from XML.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3559


<!-- page 3560 -->
c. Select Choose file and open the update set XML file from the Downloads folder.
d. Select Upload.
The update set is uploaded to the instance and appears in the Retrieved Update Sets list in
the Loaded state.
2. Identify and address any errors in the update set.
a. In the Retrieved Update Sets list, open the update set record.
b. Select Preview Update Set Batch to detect errors in the update set.
The Batch Update Set Preview dialog indicates failure, which is expected behavior.
c. Close the dialog and resolve the errors in the Update Set Preview Problems related list.
You can ignore errors that start with 'Could not find a record in [table]' for the following
tables:
d. Select the errors that you ignored and then select the Select All check box.
e. From the Actions on selected rows... drop-down menu, choose Accept remote update.
f. In the Preview Problems for Batch related list, select all remaining errors and accept the
remote update as explained in the earlier steps.
3. When all errors in the update set have been resolved, select Commit Update Set Batch.

Result

The imported source types appear in the Source Types list.
Check gRPC and network connectivity for Health Log Analytics on the MID Server
Verify that Health Log Analytics can function properly by performing diagnostic tests on the MID
Server to check gRPC and network connectivity.

Before you begin

Role required: evt_mgmt_admin

About this task

Your organization's network and security configuration may be keeping Health Log Analytics
from functioning properly. For example, complex configurations with proxy and firewall settings
might block outbound connections. To avoid operational issues, you can test gRPC and network
connectivity on the MID Server.

Procedure
1. Navigate to All > MID Servers > Servers.
2. Open the relevant MID Server record.
3. Under Related Links, select Test gRPC connection.
The system performs gRPC connectivity tests, such as domain name resolution, TCP/IP, and
HTTP connection. When the testing is complete, the test results are displayed. Successful
tests are preceded by a green check-mark, while failed tests are preceded by a red x mark.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3560


<!-- page 3561 -->
4. Fix the issues that caused any tests to fail by following the instructions on the gRPC diagnostic
test results screen.
5. Select Test gRPC connection again and confirm that all the tests are completed successfully.
Administering Health Log Analytics
This section covers tasks involved in Health Log Analytics administration. It provides you with
information needed to keep Health Log Analytics running efficiently.
Configure Health Log Analytics system properties for a single log source
Configure system properties for a specific log source if you need to alter the default values,
which should not usually be necessary.

Before you begin

Role required: evt_mgmt_admin

About this task

Changing Health Log Analytics system properties affects back-end processes and can produce
unexpected results. Therefore, if you need to make changes to these properties, keep a record of
your adjustments. For example, note the value before and after a modification and the time of the
change.

Note: To modify a Health Log Analytics system property whose Requires restart value is
true, contact ServiceNow support to modify it for you.

For a complete description of all the Health Log Analytics system properties, see the HLA System
Properties [KB0869842]
article in the Now Support Knowledge Base.

Procedure
1. Navigate to All > Health Log Analytics > Data Input > Log Sources.
2. On the Source properties tab, right-click a property.
3. Select Override property value from the pop-up menu.
4. In the Value field, enter the appropriate value.
5. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3561


<!-- page 3562 -->
Result

The new value overrides the previous setting for the selected log source.
Related topics
Configure global Health Log Analytics system properties
Configure global Health Log Analytics system properties
Configure global Health Log Analytics system properties if you need to alter the default values,
which should not usually be necessary.

Before you begin

Role required: evt_mgmt_admin

About this task

Changing Health Log Analytics system properties affects back-end processes and can produce
unexpected results. Therefore, if you need to make changes to these properties, keep a record of
your adjustments. For example, note the value before and after a modification and the time of the
change.

Note: To modify a Health Log Analytics system property whose Requires restart value is
true, contact ServiceNow support to modify it for you.

For a complete description of all the Health Log Analytics system properties, see the HLA System
Properties [KB0869842]
article in the Now Support Knowledge Base.

Procedure
1. Navigate to All > Health Log Analytics > Health Log Analytics Administration > System
Properties.
2. Select a property with the scope Source.
3. In the Value field, enter the appropriate value.
4. Select Update.
The setting will apply to log sources created from this point forward.
5. Determine the scope of application of the new setting.
◦ To apply the setting only to log sources created from this point forward, select Update.
◦ To override values for this property in all existing log sources and apply the modified setting
to all new log sources, select Override source property.
Related topics
Configure Health Log Analytics system properties for a single log source
Enable or disable Health Log Analytics system features
Customize the basic configuration of Health Log Analytics by enabling or disabling system
features.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Health Log Analytics Administration > Features.
By default, the table shows the system features that administrators modify most commonly. To
view the complete list of features, use the filtering options.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3562


<!-- page 3563 -->
2. Select a feature record from the table.
The record contains the following information:
◦ The name of the feature
◦ A description of the feature's purpose
◦ The default state of the feature
◦ The current state of the feature
3. Set the state of a system feature to ON to enable the feature or to OFF to disable it.
4. Select Update.
Health Log Analytics alert notification in Slack or Microsoft Teams channels
Health Log Analytics sends notifications for new anomaly alerts in real time to Slack or Microsoft
Teams channels. This built-in functionality frees you from having to continuously monitor logs to
prevent incidents.
The notifications include the number of the alert, its description, severity, configuration item,
state, and priority group. You can filter the alerts for which notifications are sent to your channel.
For example, you may only want to receive alerts of a Major severity or a High priority group. By
default, no notifications are sent on secondary alerts.
To support channel notification, the channel must be configured to receive Health Log Analytics
notifications.
Starting with Version 33.0.27 - August 2024, Health Log Analytics uses the Microsoft Teams
Graph spoke application to send notifications on new anomaly alerts. The application replaces
the Microsoft Teams spoke plugin, which will be deprecated. If you're using an HLA version
earlier than 33.0.27, follow the setup procedure in Set up Health Log Analytics alert notifications
in channels. Otherwise, see Set up Health Log Analytics alert notifications in a Microsoft Teams
channel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3563


<!-- page 3564 -->
Sample HLA alert notification in Microsoft Teams

Set up Health Log Analytics alert notifications in channels
Set up notifications for new Health Log Analytics anomaly alerts in either a Slack or Microsoft
Teams channel.

Before you begin

Starting with Version 33.0.27 - August 2024, Health Log Analytics uses the Microsoft Teams
Graph spoke application to send notifications for new anomaly alerts. The new application
replaces the Microsoft Teams spoke plugin, which will be deprecated. If you're using an HLA
version earlier than 33.0.27, follow the setup procedure below. Otherwise, refer to Set up Health
Log Analytics alert notifications in a Microsoft Teams channel.

Note: If you upgrade from an earlier version to Version 33.0.27 - August 2024 or later,
redo the setup using the procedure in Set up Health Log Analytics alert notifications in a
Microsoft Teams channel.
For alert notifications in Slack channels, verify that the plugin Slack Webhooks Spoke for
ServiceNow Integration Hub (com.sn.slack.ah) is installed:
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel. For more information, see Request a plugin .
Role required: evt_mgmt_operator or evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3564


<!-- page 3565 -->
Procedure
1. Create a Webhook URL for a channel in Slack or Microsoft Teams.
Health Log Analytics uses the Webhook to notify about the alerts in the channel.
Perform the appropriate procedure:
◦ Create a Webhook URL for a channel in Slack
◦ Create a Webhook URL for a channel in Microsoft Teams
2. Map the Webhook URL for the channel to the service instance associated with the alert.
a. Navigate to Health Log Analytics Administration > Webhook Notification.
b. Select New.
c. On the form, fill in the fields.
Alert Notification Webhook form
Field

Description

Webhook

The Webhook URL that you created for the
channel.

Active

Select to activate the Webhook.

Configuration item

The service instance associated with the
alert.
If this field is empty, the system uses
the default property for the channel:
default.slack.webhook.url for Slack or
default.teams.webhook.url for Microsoft
Teams.

d. Select Submit.
3. Activate the Health Log Analytics Alert Management rule for submitting alerts to the
appropriate channel.
a. Navigate to Event Management > Rules > Alert Management Rules.
b. Locate the appropriate rule:
▪ For Slack: Submit HLA alerts to slack.
▪ For Microsoft Teams: Submit HLA alerts to teams.
c. In the Active column for the rule, set the value to true.
4. Optional: Filter the alerts on which notifications will be sent to the channel.
a. In the Alert Management Rules table, select the rule for your channel.
b. Select Alert Filter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3565


<!-- page 3566 -->
c. On the form, set the conditions that must be met for sending a notification on the alert to the
channel.
d. Select Update.
Set up Health Log Analytics alert notifications in a Microsoft Teams channel
Set up notifications for new Health Log Analytics anomaly alerts in a Microsoft Teams channel.

Before you begin

Starting with Version 33.0.27 - August 2024, Health Log Analytics uses the Microsoft Teams
Graph spoke application to send notifications on new anomaly alerts. For more information, see
. If you're using an HLA version earlier than 33.0.27, refer to the setup procedure in Set up Health
Log Analytics alert notifications in channels.
Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
1. Install the latest version of the Microsoft Teams Graph spoke from the ServiceNow Store

.

2. Set up the Microsoft Teams Graph spoke.
For instructions, see: .
3. Activate the Health Log Analytics Alert Management rule for submitting alerts to the Microsoft
Teams channel.
a. Navigate to Event Management > Rules > Alert Management Rules.
b. Locate the appropriate rule: Submit HLA alerts to teams.
c. In the Active column for the rule, set the value to true.
4. Map the service instance to the Microsoft Teams channel.
a. In the All navigation menu, type sn_occ_teams_alert_notification_config and
then press Enter.
b. Select New.
c. On the form, fill in the fields.

Note:
▪ You can obtain the Teams ID and Channel ID from the Microsoft Teams channel.
▪ The Configuration Item field must correspond to the Service instance. If no CI is
needed, leave this field empty. In this case, the record is used for alerts when there's
no record that matches their CI.
d. Select Submit.
e. Optional: Repeat steps 1 to 4 to add additional configurations.
Storage space for log retention in Health Log Analytics
The Health Log Analytics base system typically provides 1,000 GB storage space for log source
retention, although the storage capacity may vary depending on your license. The default
retention time for logs is three days, but you can modify that period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3566


<!-- page 3567 -->
This feature is supported in the Health Log Analytics application, Version 22.0.12 - December
2021 and later, available from the ServiceNow Store . To activate it, contact your ServiceNow
account manager or ServiceNow Support.
When the storage space used by all log sources exceeds 80 percent of the total, you receive
an email notification. You can change the default threshold percentage by modifying the
sn_occ.elastic_storage.utilization_limit.percent system property in the
System Properties table.

Automatic reduction of log retention days
By default, logs are retained for three days. You can adjust this period to 3, 7, 14, or 30 days. For
more information, see Modify the log source retention period in Health Log Analytics.
If the storage space used by all log sources reaches 100 percent, the number of retention days
allocated per source is automatically lowered by one level and you receive an email notification
with the specifics. The automatic reduction process starts with the sources that were allocated
the highest number of retention days. For example, for a source with 30 retention days, the
number is reduced to 14. If the source has 14 retention days, the number is reduced to 7, and so
on.
You can change the threshold percentage for the automatic reduction of log retention days by
modifying the
sn_occ.log_retention.automatic_reduction_utilization_percent system
property in the System Properties table.
Related topics
Modify the log source retention period in Health Log Analytics
Modify the log source retention period in Health Log Analytics
Modify the period that Health Log Analytics retains logs from a specific source. You can calculate
the impact of your intended change on storage to help you make an informed decision.

Before you begin

This feature is supported in the Health Log Analytics application, Version 22.0.12 - December
2021 and later, available from the ServiceNow Store . To activate it, contact your ServiceNow
account manager or ServiceNow Support.
To display Log source retention in the filter navigator:
1. Navigate to All > System Properties > All Properties.
2. Enter the property name sn_occ.activate_log_source_retention in the Search
box.
3. Ensure that the property value is set to true.
Role required: evt_mgmt_admin

About this task

By default, the log retention duration per source is set to three days. You can change this number
to 7, 14, or 30 days. For more information, see Storage space for log retention in Health Log
Analytics. Note that longer log retention results in higher storage usage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3567


<!-- page 3568 -->
Procedure
1. Navigate to All > Health Log Analytics > Log source retention.
2. Optional: Calculate how changing the retention period for logs from a particular source affects
storage.
a. Open a log source record.
b. In the Related Links section, select Calculate how retention impacts storage.
c. From the New retention list, select the proposed number of retention days for logs from this
source.
d. Select Calculate.
The Projected storage usage (GB) field displays the amount of storage space in GB that the
source would use if the new policy were implemented.

Note: Health Log Analytics bases its calculation of projected storage usage on the
volume of log data that was streamed in the past. The estimate could change as the
volume of streamed log data varies.
e. Compare the projected usage to the amount of storage needed for the current policy that is
shown in the Current storage usage (GB) field.
f. Select Cancel to close the dialog box.
3. Update the log retention policy per source or for several sources together.
◦ To update log retention for a single source:
a. Open a log source record.
b. From the Retention days list, select the required number of retention days for logs from
this source.
c. Select Update.
◦ To update log retention for multiple sources:
a. Select several log source records.
b. From the Actions on selected rows choice list, select Update multiple source retentions.
c. From the New retention policy list, select the required number of retention days for logs
from the selected sources.
d. Select Update.
The updated policy takes effect in up to 15 minutes.
4. Optional: Restore the default log retention policy per source or for all log sources.
◦ To restore the default policy for a single source:
a. Open a log source record from the table.
b. In the Related Links section of the record, select Restore default.
The log retention policy for this log source reverts to the default value of three days.
◦ To restore the default policy for all sources:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3568


<!-- page 3569 -->
a. In the Related Links section, select Restore defaults.
b. In the confirmation dialog, select Continue.
The log retention policy for all log sources reverts to the default value of three days.
Scaling Health Log Analytics to stream logs at a higher rate
Stream log data to Health Log Analytics in a scalable, more stable way using the advanced
ServiceNow infrastructure.
The new ServiceNow architecture leverages queueing technology in IT Operations Management
Cloud Services for authentication and log ingestion. The Health Log Analytics AI engine has
been enhanced to scale dynamically in response to increased log ingestion by your organization.
Health Log Analytics can be scaled to support more than 50,000 events per second (EPS) or
more than 10,000 subscription units (SUs).
You can switch to the advanced ServiceNow infrastructure by submitting a scaling request
through the Now Support catalog. For more information, see Submit a Health Log Analytics
scale request through the Now Support catalog. You can also contact your ServiceNow account
manager to request scaling. When your scaling request is approved, ServiceNow provisions the
number of Elasticsearch and HLA AI Engine nodes required to support your subscription units.
Submit a Health Log Analytics scale request through the Now Support catalog
Request Health Log Analytics scaling to support streaming logs at a higher rate.

Before you begin

Role required: None

About this task

This procedure explains how to submit a scaling request through the Now Support catalog. You
can also contact your ServiceNow account manager to request Health Log Analytics scaling.

Procedure
1. On Now Support

, navigate to All > Service Catalog .

2. In the Request scale dialog, select the appropriate option:
◦ Install the Health Log Analytics Prime app from the ServiceNow Store.
When the app is installed, the additional services for supporting your request can use
shared resources in other datacenters besides the one hosting your ServiceNow instance.
This ability enables better resource allocation for supporting your current and future
requests.

Note: To install the Health Log Analytics Prime app, you must accept its terms and
conditions.
◦ Request scale without installing the Health Log Analytics Prime app.
When you select this option, the additional resources for supporting your request reside
in the same datacenter as your instance. You may experience some limitations in terms of
capacity.
3. Fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3569


<!-- page 3570 -->
Request scale fields
Field

Description

Select instance

The name of your ServiceNow instance.

Number of subscription units

The number of subscription units Health Log
Analytics must support.

4. Select Submit.
Your scale request is submitted. When it’s approved, ServiceNow notifies you by email.
Enhancing the CMDB with host data Health Log Analytics found in logs
When Health Log Analytics streams logs, it extracts host data from the log events. If host data
is discovered that doesn't match the information in the Configuration Management Database
(CMDB), the system creates a configuration item (CI) candidate for you to review based on the
data it found in the logs.
After reviewing a CI candidate, you can choose to either add it to the CMDB or dismiss it as
irrelevant. The Log-Based CI Candidates table lists all CI candidates that Health Log Analytics
has created, sorted by system update time. The Operation column shows the suggested action
to take on each CI candidate. You are automatically notified when there are new CI candidates
for your consideration. For more information, see Add log-based CIs to the CMDB in Health Log
Analytics.
For a description of the related system properties, see the "logsourceinfo (CMDB)" section in the
HLA System Properties [KB0869842]
article in the Now Support Knowledge Base.
This feature is supported in the Health Log Analytics application, Version 22.0.12 - December
2021 and later, available from the ServiceNow Store . You can use it on the ServiceNow AI
Platform using the Rome Patch 6 release (scheduled to be released on January 27, 2022) or later.
Add log-based CIs to the CMDB in Health Log Analytics
Keep the Configuration Management Database (CMDB) updated with host data Health Log
Analytics discovered in your logs by adding log-based configuration items (CIs) to the database.

Before you begin

This feature is supported in the Health Log Analytics application, Version 22.0.12 - December
2021 and later, available from the ServiceNow Store . You can use it on the ServiceNow AI
Platform using the Rome Patch 6 release (scheduled to be released on January 27, 2022) or later.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Health Log Analytics > Health Log Analytics Administration > Log-Based CI
Candidates.
2. Handle a single CI candidate or multiple CI candidates together.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3570


<!-- page 3571 -->
Option

Procedure

a. Select a CI candidate record and review the
information on the form.
For field descriptions, see Log-based CI
candidates fields in Health Log Analytics.
b. Add the CI candidate to the CMDB or
delete it.
▪ If the CI candidate is appropriate, either
add it to the CMDB as is or include more
information in it before adding it to the
CMDB.
Take action on a single CI candidate

▪ To add the CI candidate to the CMDB
as is, select Add to CMDB and then se­
lect Continue.
▪ To add more information, select Edit ad­
ditional CI fields. Enter data that was
not extracted from the logs, such as the
name of the company associated with
the CI, and then select Submit.
The CI is added to the CMDB. In the
CMDB table for the relevant class type,
the discovery source for the new CI is
Health Log Analytics. The CI candidate
record is automatically deleted from the
Log-based CI candidates table.
▪ If the CI candidate is irrelevant, delete it
by selecting Delete.

Note: This option does not enable you
to add extra information to the selected
CIs.
◦ Add multiple CIs to the CMDB.

Take action on multiple CI candidates at the
same time

a. In the Log-based CI candidates table, se­
lect the CI candidates you want to add to
the CMDB.
b. From the Actions on selected rows list
at the bottom of the page, select Add to
CMDB.
The selected CIs are added to the CMDB.
The CI candidate records are automatical­
ly deleted from the Log-based CI candi­
dates table.
◦ Delete multiple CI candidates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3571


<!-- page 3572 -->
Option

Procedure

a. In the Log-based CI candidates table, se­
lect the CI candidates you want to delete.
b. From the Actions on selected rows list at
the bottom of the page, select Delete.

Analyzing and resolving Log Analytics alerts
Analyze and resolve Log Analytics alerts by investigating log data and taking action to resolve
the underlying issue.

Overview of analyzing and resolving a Log Analytics alert
As an Operator, you are responsible for analyzing and resolving the alerts that Health Log
Analytics generates. When HLA creates an alert, you review the alert's severity, the affected
Configuration Item (CI), the log data associated with the anomaly, and the impacted services. You
try to identify the root cause by investigating the logs that surround the anomaly.
In the Express List, review alert details and use Now Assist to get an in-depth analysis of the alert
and potential resolutions in straightforward, human-readable language. By drilling down into the
alert, you can quickly identify the issue and proceed to resolve it before it affects your users.
Using the Log Viewer, you can browse the alert logs by timestamp or range for further
investigation. You can visualize the frequency of anomalous log lines in a chart.
• Start remediation of a Log Analytics alert from the Overview tab
Begin the remediation process of a Log Analytics alert from the alert Overview tab. This
tab provides information on the alert, log data associated with the anomalous behavior, CIs
associated with the alert, and services impacted by it.
• Analyze the logs that surround the anomaly
Review the log lines surrounding the anomaly for clues about the state of faulting systems. This
information can help you narrow down the root cause of the alert.
• Use log correlators to identify relationships in log data
Identify relationships between alerts to help you determine whether an alert is part of a larger
issue.
• Navigate to the Express List and select an alert from the Alerts list.
Use Now Assist to get an in-depth analysis of the alert and potential resolutions. By drilling
down into the alert, you can quickly identify the issue and proceed to resolve it.
• Review the logs for an alert on the Log viewer
For further investigation you can navigate to the Log Viewer to browse the alert logs
by timestamp or time range, and visualize anomaly frequency within a time period for a
comprehensive view of log data over a specified time range.
• Add a KB article to a Log Analytics alert
When you have resolved an alert that Health Log Analytics generated, you can add a
knowledge base (KB) article to it. For example, provide information that might help others
resolve similar issues.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3572


<!-- page 3573 -->
Use cases
Use Case: Proactive monitoring of your ServiceNow instance in Health Log Analytics - Use Health
Log Analytics to detect and resolve emerging issues in your organization's ServiceNow instance
before they affect platform users.
Start remediation of a Log Analytics alert from the Overview tab
Begin the remediation process of a Log Analytics alert from the alert Overview tab. This tab
provides information on the alert, the log data associated with the anomalous behavior, CIs
associated with the alert, and services impacted by it.

Before you begin

Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace.
Role required: evt_mgmt_operator, or evt_mgmt_user, or evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the Service Operations Workspace, select the lists icon (

).

3. Select the appropriate list in the Alerts sub-list and navigate to the relevant alert or group.
All Health Log Analytics alerts have the value Log Analytics in the Source column. The value in
the Group column identifies the type of Log Analytics alert. See Types of Health Log Analytics
alerts for a more detailed description of each type of alert or group.

Tip: To preview an alert in the list, click its info icon (

).

4. Select the alert number.
The Overview tab displays.
5. View the section of the Overview tab that provides the information that you need.
For a description of the sections and cards, see Sections and cards on the alert Overview tab
in Health Log Analytics.

Note: Because some sections on the Overview tab show only a portion of the
information, many sections include a link that displays different or more complete
information.
6. Optional: Run predefined remediation tasks to resolve alert issues.
a. Select Launch playbook.
b. Select the Playbook tab.
The Run remediation card displays the available remediation actions.
c. Select the tile corresponding to the action you want to run.
When the action is complete, it appears in the Completed card.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3573


<!-- page 3574 -->
Analyzing the logs around an anomaly to help find the alert's root cause
When Health Log Analytics identifies an anomaly, viewing the logs that surround the anomaly
provides clues about the state of faulting systems. This information can help you narrow down
the root cause of an alert.
While viewing a Log Analytics alert, the Surrounding logs tab lists the log lines that were
generated one minute before and one second after the anomaly occurred. The log lines
are related to the metric or pattern that triggered the alert. The list is filtered to the relevant
component.
Logs generated immediately before the anomaly might point to warning signs or conditions that
led to the issue. By reviewing these logs, you can trace the sequence of events that led to the
anomaly, helping you understand what went wrong. Logs created right after the anomaly can
help you evaluate the impact of the event by analyzing how the system responded and whether
other components were affected. The timeline of the logs around the anomaly can help clarify
what might have caused the issue, for example a configuration change or a software update.
You can modify the time range of the displayed log lines, for example to investigate logs from
more than one minute before the anomaly, or more than a second afterward.

Note: Logs that surround the anomaly are retained and available for 30 days after the
creation of the alert. The system does not delete these logs when the global retention
period of logs expires. When the retention period expires, the surrounding logs are
available only on the Surrounding logs tab and not in the Log viewer.
Health Log Analytics enables you to view the anomalous log data graphically on the Log viewer,
accessed from the Service Operations Workspace. The Log viewer displays a chart of the
frequency of anomalous log lines during one minute before and one minute after the Log
Analytics alert and lists the associated log lines. It automatically shows the query that relates to
the anomaly, the selected component, and the appropriate time filter. For more information, see
Reviewing the logs that are connected with an alert on the Log Viewer in Health Log Analytics.
Related topics
Analyze log lines that surround an anomaly in Health Log Analytics
Analyze log lines around the anomaly to help find the root cause
View the log lines around an anomaly to help you identify the root cause of a Log Analytics alert.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace. For the new procedure, see the
corresponding topic in the Service Operations Workspace for ITOM documentation:
Analyze log lines that surround an anomaly in Health Log Analytics.
Identifying related alerts in log data by using log correlators
Log correlators are keys or values in log data that detect correlations between alerts to help you
determine whether an alert is part of a larger issue. For example, a log correlator could detect
when the interface ID of a particular network device occurs simultaneously in multiple warnings
across different service instances.
You can identify related alerts in your log data by using log correlators. The base system includes
several log correlators, and you can define custom correlators for a specific log source, all log
sources, or only log sources created after the correlator is activated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3574


<!-- page 3575 -->
Most log lines include a metadata portion plus a message portion. Some log lines, however,
include only message text with metadata included in the text. The two types of log correlators,
free text correlators and log property correlators, analyze the different portions of each log to
identify relationships between log data from multiple log sources.
Free text correlators
Free text correlators analyze the text within the log message portion of log lines that
are associated with an anomaly. The system uses free text correlators to identify
correlations between alerts. You use free text correlators to add a term that you
expect to appear within log messages. A good choice is a term that is not structured
and would not otherwise be extracted as a log property. For example, “policy-id” or “
thread-id”.
You also typically add free text correlators for the names of systems, applications,
and services that are unique to your environment. Because such a value can be
referred to by multiple sources, layers, middleware, or databases, the free text
correlator can be an effective detector of correlated alerts. For example, if your
organization's service is called TeaTime, then you might add "teatime" as a free text
correlator. The correlator would identify alerts that are related because they were
generated for resources that support the TeaTime service, such as a database lock
or a connection failure between TeaTime components.
Log property correlators
Log property correlators analyze the metadata portion of log lines. For example, the
correlator can analyze the name of a service instance, the interface ID of a network
device, or the request ID of a web-facing component. A log property correlator could
flag a correlation when the interface ID of a network device simultaneously occurs
in multiple warnings in different log sources. Log property correlators are specific to
the business context of your environment.
You can specify the set of log sources whose log data are analyzed by a log correlator. Choices
are as follows:
• Only new sources: The system applies the log correlator only to log lines from log sources that
were created after this log correlator is activated.
• All sources: The system applies the log correlator to log lines from all log sources.
• Specified source: For a log correlator, the system analyzes only log lines from the log source
that you specify.
Add a log correlator to identify relationships between alerts in log data
Detect related alerts in log data by adding log correlators. The base system includes several log
correlators and you can define custom log correlators.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

About this task

For information about the types and functions of log correlators, see Identifying related alerts in
log data by using log correlators.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3575


<!-- page 3576 -->
Procedure
1. Use one of the following methods to add a log correlator.
Option

Procedure

a. Navigate to Health Log Analytics > Log
Anomaly Detection > Log Correlators. The
list of existing log correlators opens.
Add a log correlator for a specific log source b. Click the name of a log correlator. The
names appear in the Correlation indicator
column.
c. Click New.
a. Navigate to Health Log Analytics > Data In­
put > Log Sources.
Add a log correlator that applies either to all b. Click the name of the log source.
log sources or to only those log sources that
The Log correlators related list displays the
become active after you define this log cor­
list of existing log correlators that analyze
relator
log data from the selected log source.
c. On the Log correlators tab, click New.
2. Fill in the Log correlator form.
For a description of the fields, see Log correlators form fields.
3. Select Active and then click Submit.
Exclude a source from a log correlator
Prevent the system from analyzing log lines from a specific source by excluding that source from
the log correlator.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
1. Navigate to Health Log Analytics > Data Input > Log Sources.
2. Open the relevant source on the Log Sources form.
3. On the Log Correlators tab, select the option for the log correlator.
4. In the Actions on selected items list, select Exclude from this source.
Reviewing the logs that are connected with an alert on the Log Viewer in Health Log Analytics
The Log Viewer tab lets you browse the logs for an alert by timestamp or time range, and
visualize anomaly frequency within a specific time period. Customizing the displayed data and
adjusting time filters enables you to better understand the framework in which the anomaly
occurred, helping you find the root cause faster.
The Log Viewer presents all data connected with the Log Analytics alert. It shows the query
that relates to the anomaly, the selected component, and the appropriate time filter. You can
personalize the displayed data, and manually adjust the time range without affecting the other
settings. The applied filters appear in the Filters pane. You can add or remove filters as needed
to show only the data you want to view.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3576


<!-- page 3577 -->
The Log Viewer displays a chart of the frequency of anomalous log lines during one minute
before and one minute after the Log Analytics alert and lists the associated log data. This
information helps you identify trends leading up to and following the event, providing context for
root cause analysis.
As you analyze the logs for an alert on the Log Viewer, you can modify the query to fine-tune the
search, save useful searches, and share them with others. For a description of the information
displayed in the Log Viewer table, see Log Viewer table fields.
You can perform the following tasks on the Log Viewer:
• View log data for an alert in Health Log Analytics
View a chart of the frequency of anomalous log lines and the associated log data.
• Define, save, and share a search of log data in Health Log Analytics
Fine-tune the search query to help determine the causes of the issue, and save and share
useful searches.
• Use or modify a saved log data search in Health Log Analytics
Use a saved search. As the owner of a saved search, you can modify the search values and
save your changes.
• Filter search results on the Log Viewer in Health Log Analytics
Apply filters to show only the data you want to view.
• Customize the Log Viewer table in Health Log Analytics
Add or remove columns in the table to show only the data you want to view.
If you discover an important metric in the log data, you can use it to define a new Log Analytics
alert rule. For more information, see Add a Log Analytics alert rule in Health Log Analytics.
Related topics
Analyzing the logs around an anomaly to help find the alert's root cause
View log data for an alert in Health Log Analytics
View a chart of the frequency of anomalous log lines and the associated log data on the Log
Viewer.

Before you begin

Role required: evt_mgmt_operator, or evt_mgmt_admin

Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace. For the new procedure, see the
corresponding topic in the Service Operations Workspace for ITOM documentation: View
log data for an alert in Health Log Analytics.
Define, save, and share a search of log data in Health Log Analytics
Define, save, and share searches of log data to help determine the causes of Log Analytics
alerts.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3577


<!-- page 3578 -->
Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace. For the new procedure, see the
corresponding topic in the Service Operations Workspace for ITOM documentation: Define,
save, and share a search of log data in Health Log Analytics.
Use or modify a saved log data search in Health Log Analytics
Use a saved search of log data to better understand the causes of an alert. As the owner of a
saved search, you can modify the search values and save your changes.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin
If you are not the owner of the saved search, save the search with a different name. You can then
update search values, save your changes, and share the search with others.

Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace. For the new procedure, see the
corresponding topic in the Service Operations Workspace for ITOM documentation: Use or
modify a saved log data search in Health Log Analytics.
Filter search results on the Log Viewer in Health Log Analytics
Apply filters on the Log Viewer to show only your desired data.

Before you begin

Role required: evt_mgmt_operator, or evt_mgmt_user, or evt_mgmt_admin

Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace. For the new procedure, see the
corresponding topic in the Service Operations Workspace for ITOM documentation: Filter
search results on the Log Viewer in Health Log Analytics.
Customize the Log Viewer table in Health Log Analytics
Add or remove columns in the Log Viewer table to show only the data you want to view.

Before you begin

Role required: evt_mgmt_operator, or evt_mgmt_admin

Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace. For the new procedure, see the
corresponding topic in the Service Operations Workspace for ITOM documentation:
Customize the Log Viewer table in Health Log Analytics.
Add a KB article to a Log Analytics alert
Add your own knowledge base (KB) article to an alert that was generated by Health Log Analytics.
For example, you can provide additional information that might help to resolve the underlying
issue. Health Log Analytics also uses your knowledge to enhance similar alerts.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace. For the new procedure, see the
corresponding topic in the Service Operations Workspace for ITOM documentation: Add a
KB article to a Log Analytics alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3578


<!-- page 3579 -->
Use Case: Proactive monitoring of your ServiceNow instance in Health Log Analytics
Use Health Log Analytics to detect and resolve emerging issues in your organization's
ServiceNow instance before they negatively impact users.

Using the ServiceNow System Logs Retriever integration to detect platform
issues automatically
Starting with version 35.0.26 of Health Log Analytics, you can use the ServiceNow System Logs
Retriever integration to automatically detect errors and anomalies in your ServiceNow instance's
system logs. As an operator you can view, manage, and respond to the generated alerts in the
Express List. Filter the list to show only alerts for the impacted service. Then, use Now Assist to
get an in-depth analysis of the alert and potential resolutions in straightforward, human-readable
language. This AI-driven tool demonstrates a deep understanding of the Glide system and offers
actionable insights.
Combining HLA's anomaly detection with Now Assist's GenAI capabilities provides a
comprehensive toolkit for identifying and resolving platform system issues more effectively. This
collaboration enables Health Log Analytics to help prevent system issues from impacting your
platform users.

Using the MID Server and System Logs Retriever data inputs together to monitor
your instance
You can also stay ahead of disruptions to your ServiceNow environment by using the MID Server
data input and the ServiceNow System Logs Retriever data input together.
As an admin, you select a MID Server from the MID Servers list. Under Related Links, choose
Create MID Server Data Input using HLA to create a data input specific to the selected MID
Server. Then activate the System Logs Retriever data input and configure it to collect your
ServiceNow instance's system logs.
As an operator, you navigate to the Express List and select an alert from the Alerts list. Review
the alert details, including duration and impacted services, and analyze the logs that surround
the anomaly. Use Now Assist to get an in-depth analysis of the alert and potential resolutions in
straightforward, human-readable language. If needed, for further investigation, you can navigate
to the Log Viewer for a visual presentation of the system logs. Select System Logs Retriever
from the components drop-down list to view all the errors that have occurred in the ServiceNow
instance. You can customize the visualization by using filters.
By drilling down into the alert and MID Server logs, you can quickly identify the issue and resolve
it before it affects your platform users.

Controlling Health Log Analytics alert generation, prioritization, and anomaly
detection
Influence how Health Log Analytics generates and prioritizes alerts and identifies anomalies. Use
alert filters to reduce noise from unimportant issues.

Overview of impacting alert generation, prioritization, and anomaly detection
Explore how to influence alert generation and anomaly detection in Health Log Analytics. You can
create and modify rules to generate alerts for specific metrics, ensuring that you are informed
of important issues. You can also assign different levels of significance to alerts, helping Health
Log Analytics prioritize them based on their relevance. In addition, you can influence anomaly
detection by managing the keywords that Health Log Analytics looks for in your log data, and use
advanced log alert filters to reduce noise.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3579


<!-- page 3580 -->
• Use alert rules to control when Health Log Analytics generates alerts
Manage alert rules to generate Log Analytics alerts for specified metrics.
• Assign higher or lower significance to an alert in Health Log Analytics
Assign higher or lower significance to an alert to help prioritize the alerts that Health Log
Analytics generates.
• Influence anomaly detection in Health Log Analytics with lexical keywords
Influence how Health Log Analytics finds anomalies by managing keywords it looks for in your
log data.
• Reducing noise by adding advanced log alert filters in Health Log Analytics
Use advanced log alert filters to reduce noise by making Health Log Analytics drop alerts that
don't indicate a significant issue.
Use alert rules to control when Health Log Analytics generates alerts
Alert rules enable you to set thresholds and conditions that determine when Health Log
Analytics triggers an alert. When the conditions of an alert rule are met, the system generates a
Log Analytics alert. You can add, change, or delete alert rules to create Log Analytics alerts for a
specified metric.
In Health Log Analytics, alert rules enable you to specify when alerts are triggered. By using
these rules, you ensure that an alert is generated when certain conditions are met, enabling
proactive monitoring and remediation of emerging issues. You can create alert rules when you
encounter log data that should trigger an alert, and modify or delete alert rules that you have
defined.
You can perform the following tasks related to alert rules:
• Add a Log Analytics alert rule in Health Log Analytics
Add a Log Analytics alert rule when you come across log data that should generate an alert.
• Change a Log Analytics alert rule in Health Log Analytics
Edit a Log Analytics alert rule that you have defined.
• Delete a Log Analytics alert rule in Health Log Analytics
Delete a Log Analytics alert rule that you have defined if it’s no longer needed.
Add a Log Analytics alert rule in Health Log Analytics
Define a Log Analytics alert rule when you encounter log data that should generate an alert. The
alert rule generates an alert for a specified metric with a threshold that you specify and sets the
properties of the generated alert.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace. For the new procedure, see the
corresponding topic in the Service Operations Workspace for ITOM documentation: Add a
Log Analytics alert rule in Health Log Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3580


<!-- page 3581 -->
Change a Log Analytics alert rule in Health Log Analytics
You can alter a Log Analytics alert rule that you have defined.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace. For the new procedure, see the
corresponding topic in the Service Operations Workspace for ITOM documentation:
Change a Log Analytics alert rule in Health Log Analytics.
Delete a Log Analytics alert rule in Health Log Analytics
Delete a Log Analytics alert rule that you have defined if it is no longer necessary.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace. For the new procedure, see the
corresponding topic in the Service Operations Workspace for ITOM documentation: Delete
a Log Analytics alert rule in Health Log Analytics.
Assign higher or lower significance to an alert in Health Log Analytics
Label an alert in Health Log Analytics as meaningful or insignificant, or restore normal
importance to the metric involved in generating it.
Assigning higher or lower significance to an alert helps you prioritize the alerts Health Log
Analytics generates. Here are some common use cases for adjusting the importance of an alert:
• Labeling alerts as meaningful: You can make a significant alert more likely to be included in
a Log Analytics group when its associated metric behaves anomalously. This ensures that
important alerts receive appropriate attention.
• Muting distracting alerts: You can mute alerts for insignificant issues to reduce noise and avoid
being overwhelmed by alerts for minor problems. This enables you to focus on more critical
alerts. You can view a list of muted metrics to ensure you are aware of metrics that are no
longer generating alerts.
• Reducing sensitivity to certain anomalies: You can lower the sensitivity of anomaly detection to
a specific anomaly. This can help you focus on more significant anomalies.
• Restoring normal significance: If you previously marked an alert as significant, muted it, or if
you lowered sensitivity to certain anomalies, you can return the associated metric to its normal
significance. This is useful when you no longer want to treat the alert specially.
You can do the following to adjust the importance of an alert or reduce sensitivity to specific
anomalies:
• Mark an alert as significant in Health Log Analytics
Make an alert more likely to be included in a Log Analytics group when the associated metric
behaves anomalously by labeling the alert as meaningful.
• Mute an unimportant alert in Health Log Analytics
Eliminate distracting new alerts for insignificant issues by muting them. View the list of metrics
that were muted and no longer generate alerts.
• Decrease sensitivity to similar anomalies in Health Log Analytics
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3581


<!-- page 3582 -->
Make Health Log Analytics anomaly detection less sensitive to anomalies like the one that
triggered the current Log Analytics alert.
• Restore normal importance to an alert metric in Health Log Analytics
Return normal significance to the metric involved in generating a Log Analytics alert.
For detailed information about alert metrics, see How Health Log Analytics generates alerts.
Mark an alert as significant in Health Log Analytics
Make an alert more likely to be included in a Log Analytics group when the associated metric
behaves anomalously by labeling the alert as meaningful.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace. For the new procedure, see the
corresponding topic in the Service Operations Workspace for ITOM documentation: Mark
an alert as significant in Health Log Analytics.
Mute an unimportant alert in Health Log Analytics
Eliminate distracting new alerts for insignificant issues by muting them.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace. For the new procedure, see the
corresponding topic in the Service Operations Workspace for ITOM documentation: Mute
an unimportant alert in Health Log Analytics.
View the list of muted metrics in Health Log Analytics
View the list of metrics that were muted so that they no longer generate alerts.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
Navigate to All > Health Log Analytics > Log Anomaly Detection > Muted Metrics.
Muted Metrics
Field

Description

Service instance

Service instance where the muted alert with
which the metric is associated appears.

Component

Logical component of the service instance
that generated the event. Multiple CIs can
sometimes perform the same function.

Pattern text

Text for the metric that is associated with the
muted alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3582


<!-- page 3583 -->
Field

Description

Metric

Log text or key that represents a meter or
gauge value in the data. For example, patterns,
raw metrics, keyword, severity, all events
metrics.

Created

Date and time when the metric was added to
the list.

Related topics
Mute an unimportant alert in Health Log Analytics
Restore normal importance to an alert metric in Health Log Analytics
Restore normal importance to an alert metric in Health Log Analytics
If you no longer want a muted alert or an alert that was marked as significant to be treated
specially, you can restore normal importance to the metric involved in generating it.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Important: From the Vancouver release onward, the Operator Workspace is deprecated
and replaced with Service Operations Workspace. For the new procedure, see the
corresponding topic in the Service Operations Workspace for ITOM documentation:
Restore normal importance to an alert metric in Health Log Analytics.
Influence anomaly detection in Health Log Analytics with lexical keywords
Influence how Health Log Analytics finds anomalies by managing keywords it looks for in your log
data. When text in log data for a source matches a lexical keyword that exceeds a specified count
threshold, the system identifies an anomaly and generates an alert.
Health Log Analytics scans your logs for words that can indicate important issues. Lexical
keywords such as 'crashed' or 'failed' signal conditions that may require attention. The
application sets a threshold for each lexical keyword based on its normal occurrence pattern and
frequency in your logs.
When Health Log Analytics scans your logs, it identifies all occurrences of the keyword. If the
frequency of a lexical keyword in the log data for a source exceeds the specified threshold, the
system identifies an anomaly and generates an alert.
Health Log Analytics comes with many default global keywords. You can add, edit, and delete
these global keywords or phrases, which apply to all source types.

Note: To add a specified keyword associated with a specific source type, see Configure
source type capabilities in Health Log Analytics.
You can manage lexical keywords as follows:
• Add, edit, or delete lexical keywords in Health Log Analytics
Add, edit, and delete global keywords or phrases.
• View the lexical keywords that generate alerts in Health Log Analytics
View the list of lexical keywords that can indicate important issues in log entries. By default, the
table lists only global keywords.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3583


<!-- page 3584 -->
Add, edit, or delete lexical keywords in Health Log Analytics
Manage the keywords that Health Log Analytics looks for in your log data.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

About this task

In log data, terms like "crash" or "failed" are called lexical keywords because they indicate
issues that can merit attention. When text in log data for a source matches a lexical keyword that
exceeds a specified count threshold, the system identifies an anomaly and generates an alert.

Important: A lexical keyword differs from a key in a key:value pair in a log line. For

example, Hostname is a key that takes on a value: the name or IP address of the host. In
contrast, a keyword like Failed is important by itself and does not take on a value.
The application comes with many default global keywords. You can add, edit, and delete global
keywords or phrases. These keywords apply to all source types.

Note: To add a specified keyword that is associated with a specific source type, see
Configure source type capabilities in Health Log Analytics.

Procedure
1. Navigate to All > Health Log Analytics > Log Anomaly Detection > Lexical Keywords.
By default, the Lexical Keywords table lists only global keywords.
2. Optional: Add a global keyword.
a. Select New.
b. On the form, fill in the fields.
Lexical keyword form
Field

Description

Name

Unique and descriptive name for the
keyword.

Regular expression

Regular expression (regex) that defines
matches.

Exact match

Option to make Health Log Analytics
match the exact regex. For example,
'NullPointerException' in a message would
not match the regex 'exception'.
This field is automatically set to True.

Case-sensitive

Option to make Health Log Analytics look for
a case-sensitive match of the regex.
This field is automatically set to False.

Range of analysis

Range of sources types where Health Log
Analytics looks for the keyword in the log
data. Choices are as follows:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3584


<!-- page 3585 -->
Field

Description

▪ All source types
▪ Specified source type
Excluded source types

Source types that are not associated with
the keyword. Health Log Analytics does not
look for the keyword in the log data of these
source types.

c. Select Submit.
3. Optional: Edit a global keyword.
a. Click the keyword that you want to edit in the list.
b. On the form, edit the relevant fields.
c. Select Update.
4. Optional: Delete one or more global keywords.
a. Select the rows of the keywords that you want to delete.
b. From the Actions on selected rows list at the bottom of the page, select Delete.
c. Select OK.
Related topics
View the lexical keywords that generate alerts in Health Log Analytics
View the lexical keywords that generate alerts in Health Log Analytics
View the list of lexical keywords that can indicate important issues in log entries.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
Navigate to All > Health Log Analytics > Log Anomaly Detection > Lexical Keywords.
The Lexical Keywords table appears. By default, the table lists only global keywords.
For information about adding, editing, or deleting global keywords, see Add, edit, or delete lexical
keywords in Health Log Analytics.
To add a specified keyword that is associated with a specific source type, see Configure source
type capabilities in Health Log Analytics.
Reducing noise by adding advanced log alert filters in Health Log Analytics
Use advanced log alert filters to determine whether to allow an alert or to drop it. These filters
reduce noise by dropping alerts that don't indicate a significant issue.
You can add advanced log alert filters to scan alerts for your defined conditions. For example,
you can define a filter that drops alerts coming from specific log sources, or alerts for anomalies
that do not cross the specified threshold.
Some examples of the actions that advanced filters can enable:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3585


<!-- page 3586 -->
• Alert only on anomalies that are shared across multiple hosts.
• Do not alert on anomalies that happen outside of working hours.
• Do not alert if the anomaly does not cross the specified threshold.
• Alert only on anomalies that are part of a correlation.
You can manage advanced log alert filters as follows:
• Create advanced log alert filters
Add advanced log alert filters to scan alerts for conditions that you specify. The filters reduce
noise by dropping alerts that do not indicate a significant issue. While developing a filter, you
can test, update, publish, or activate the filter at any time.
• Continue modifying the filter by reopening the filter record from the filters list. You can then
edit, test, publish, and activate the filter.
For more technical information on log alert filters, see the Advanced Log Alert Filtering
[KB0863538]
article in the Now Support Knowledge Base.
Create advanced log alert filters
Add advanced log alert filters to scan alerts for conditions that you specify. The filters reduce
noise by dropping alerts that do not indicate a significant issue. While developing a filter, you can
test, update, publish, or activate the filter at any time.

Before you begin

The Disable Alert Rule Engine feature and the Disable Detection Rule Engine feature must be in
the OFF state. You set the values by navigating to Health Log Analytics > Health Predictive AI
Ops Administration > Features.
Role required: evt_mgmt_operator or evt_mgmt_admin

Procedure
1. Navigate to Health Log Analytics > Log Anomaly Detection > Advanced Log Alert Filter.
2. Select New.
3. Enter a unique and descriptive name for the filter.
4. Optional: Enter a description of the operation of the filter.
5. In the Script template field, select the script that most closely matches your intended logic.
The template can act as a starting point for your custom script code.
After you select a template, the Custom JS function text box is populated with the appropriate
JavaScript function. The JavaScript function applies the filter to the alert payload data and
either allows or drops the alert. The alert payload is the text and metadata for the kind of alert
that the filter will analyze.
6. Save the record by selecting Submit.
To continue modifying the filter, you must reopen the record from the filters list. You can then
edit, test, publish, and activate the filter.
7. Edit the default Alert payload text in preparation for testing your intended logic.
To remove your changes and revert to the default text for the Alert payload text box, click
Reset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3586


<!-- page 3587 -->
For your convenience, Health Log Analytics provides sample alerts with preconfigured
payloads. Select a sample alert in the Example alert field to display its payload in the Alert
payload text box.
8. Optional: Save the current values of the filter without testing by selecting Update.
9. When your content for the alert payload and your JavaScript function are complete, select
Test.
To simulate the alert operation, the system saves the filter values, applies the filter to the Alert
payload text, and then displays one of the following results:
◦ Alert will be dropped.
◦ Alert will be allowed.
Testing the JavaScript to determine whether to allow or drop the alert

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3587


<!-- page 3588 -->
Note: If your new JavaScript function is not behaving as expected, you can revert to the
last published one by selecting the Revert JS Function related link.

10. Repeat the process of updating the alert payload and testing the JavaScript function as often
as needed.
11. When you are satisfied with the filter, save its values and determine whether to apply it to the
log stream.
◦ To save the values and apply the filter to the log stream, make sure the Active check box is
selected and select Publish.
◦ To save the filter without applying it to the log stream, clear the Active check box and select
Publish.

Note: If you modify a published filter, you must publish the modified filter to apply it to
the log stream.

Result

The values of the active filter are saved. If you selected the Active option, the filter is applied to
the log stream.

Viewing system features and system health alerts in Health Log Analytics
View all Health Log Analytics system features that your admin can activate or deactivate for you.
In addition, you can view a model of the Health Log Analytics core components and the system
health alerts that affect them.

Overview of Health Log Analytics system features and system health alerts
Health Log Analytics enables you to view all of its system features and their description.
The admin can enable or disable a feature for you. You can also view a model of the core
components of Health Log Analytics and the system health alerts that could impact them. Health
Log Analytics and the Event Management application together form a single service. Examining
the configuration items (CIs) that comprise Health Log Analytics and their relationships helps you
understand the impact of HLA system health issues on the service.
• View the settings of Health Log Analytics system features
View the settings for all Health Log Analytics system features. These features configure many
operations that affect your work. The admin can enable or disable features for you.
• Identify Health Log Analytics system health issues on the service map
The ServiceNow Event Management service instance map includes a model of the Health Log
Analytics core components and the system health alerts that affect them.
View the settings of Health Log Analytics system features
View the settings for all Health Log Analytics system features. These features configure many
operations that affect your work. The admin can enable or disable features for you.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3588


<!-- page 3589 -->
Procedure
1. Navigate to All > Health Log Analytics > Health Predictive AI Ops Administration > Features.
A full definition of each feature appears in its Description field.
By default, the table shows the system features that administrators modify most commonly. To
view the complete list of features, use the filtering options.

2. Optional: Ask your admin to activate or deactivate a feature by updating the State setting.
Viewing Health Log Analytics system health alerts on the service map
The ServiceNow Event Management service instance map includes a model of the Health Log
Analytics core components and the system health alerts that affect them.
Health Log Analytics and the Event Management application form a single service. Viewing the
configuration items (CIs) that comprise Health Log Analytics and their relationships helps you
visualize the impact of HLA system health issues on the service.
HLA components on the Event Management service instance map

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3589


<!-- page 3590 -->
Health Log Analytics uses self-health checks to monitor the health of its components. When
it discovers a system health issue, a notification triggers an alert. System health alerts display
on the affected CIs on the service map. A colored bar on an affected CI indicates the criticality
level of the alert: A red bar signifies a critical alert, an orange bar a major alert, and a yellow bar a
minor alert.
For example, the red bar indicates a critical alert on this CI:

If the alert impacts the parent object, the parent object has a bar of the same color. For more
information, see View an alert impact on CIs in a service map.
You can drill down into an alert to view details about the issue and then address it by performing
the action proposed in the notification. For more information, see Health Log Analytics self-health
checks, notifications, and proposed actions.
Monitored components
Component

Health Log Analytics core

What is monitored

• Elasticsearch
• Metric Base
• HLA AI Engine

Health Log Analytics

• Data inputs
• Log sources

Note: New data inputs and log sources
are automatically added to the service
map.
Log ingestion process

All elements that affect the log ingestion
process.

Related topics
Identify Health Log Analytics system health issues on the service map
Identify Health Log Analytics system health issues on the service map
View Health Log Analytics (HLA) system health issues on the ServiceNow Event Management
service instance map.

Before you begin

Role required: evt_mgmt_operator or evt_mgmt_admin

About this task

Viewing the configuration items (CIs) that comprise Health Log Analytics and their relationships
helps you visualize the impact of HLA system health issues on the service. For more information,
see Viewing Health Log Analytics system health alerts on the service map.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3590


<!-- page 3591 -->
Procedure
1. Navigate to All > Event Management > Services > Service Instances.
2. On the Service Instances page, locate ServiceNow Event Management and select View
Service.

The Event Management service instance map shows the Health Log Analytics core
components and the system health alerts that affect them.
3. On the service map, identify Health Log Analytics system health issues.
4. Drill down into an alert to view details about the issue.

What to do next

Address the alert by performing the action proposed in the notification. For more information,
see Health Log Analytics self-health checks, notifications, and proposed actions.
Related topics
Health Log Analytics system health notifications

Analytics and Reporting in Health Log Analytics
Gain valuable insights into the number of IT issues predicted before your users were affected
and the money it saved your organization by using Analytics and Reporting in Health Log
Analytics.
Platform Analytics Solutions for Health Log Analytics
Platform Analytics Solutions contain prepackaged Performance Analytics and Reporting content
for use with other ServiceNow AI Platform products. This Platform Analytics Solution provides
valuable insights into the number of IT issues Health Log Analytics predicted before your users
were affected, and the money it saved your organization by preventing critical outages.

Required roles
The following roles and tasks are associated with this solution:
• ServiceNow AI Platform administrator (admin): Install and activate this solution and make any
necessary changes to system properties.
• Performance Analytics administrator (pa_admin): Review the indicators, breakdowns, widgets,
and dashboards. Set up and start data collection. Share the dashboards with appropriate
stakeholders.
Activate the Platform Analytics Solution for Health Log Analytics
Activate the content pack ServiceNow Store application for the Platform Analytics Solution.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3591


<!-- page 3592 -->
Before you begin

Activate the full, subscription version of Performance Analytics on the instance where you are
activating this Platform Analytics Solution. You can activate Performance Analytics on a nonproduction instance without purchasing a subscription. For more information, see Activate your
Performance Analytics subscription .
Role required: admin

Procedure
1. Navigate to All > System Applications > All Applications > ServiceNow Store.
2. Browse for Health Log Analytics and verify that you have the necessary valid entitlements.
You need a HI account and permission to request applications for the instances under
consideration. The HI account and the instance need to be part of the same company. For
more information, see Install a ServiceNow Product
on the ServiceNow Store.
3. Search for Health Log Analytics (sn.occ).
4. Install the application.
When you install this application, you also activate the Performance Analytics - Premium
(com.snc.pa.premium) plugin.

Note: This plugin requires an additional fee.
Configure the Platform Analytics Solution for Health Log Analytics
Run diagnostics, review and customize components, and start collecting data.

Before you begin

A ServiceNow AI Platform administrator must have installed the content pack plugins or
ServiceNow Store application for this Platform Analytics Solution.
Role required: pa_admin

Procedure
1. Run diagnostics on all records.
These diagnostics can catch many mismatches between the configuration of your Platform
Analytics Solutions and your tables.
2. Navigate to All > Performance Analytics > Administration Console.
3. Verify the name of the dashboard that has been installed with this Platform Analytics Solution:
Health Log Analytics Overview dashboard.
4. Open the Indicator Sources tab.
5. For each dashboard included in this Platform Analytics Solution:
a. Filter the indicator sources on the dashboard name.
b. Review the facts table, conditions, and frequency of the indicator sources compared to the
data structure on your own instance.

Important: Pay particular attention to time stamp fields such as Resolved or Created
that are referenced in the Conditions field. You may need to use different time stamp
fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3592


<!-- page 3593 -->
c. If necessary, open an indicator source and make corrections.
d. If you are editing an indicator source record, go to the Indicators related list and review the
Conditions field for each indicator.
Changing the indicator source can also affect the additional conditions on the individual
indicators.
6. If you changed the time field stamps in any indicator sources, then change any related
Performance Analytics scripts.
7. Open the Breakdown Sources tab.
8. For each dashboard included in this Platform Analytics Solution:
a. Filter the breakdown sources on the dashboard name.
b. Review the conditions on the breakdown source as described in Review the breakdown
sources.
9. Navigate to All > Performance Analytics > Jobs.
10. Set up and run the historical job for this Platform Analytics Solution, [PA HLA] Historic
Data Collection.
11. Edit and activate the scheduled data collection job for this Platform Analytics Solution, [PA
HLA] Historic Data Collection.
Health Log Analytics Overview dashboard
The Health Log Analytics Overview dashboard uses Performance Analytics to provide a trend of
historical data as well as regular reports.
From the Xanadu release onward, the Health Log Analytics Overview dashboard has been
deprecated and replaced with the HLA Operational dashboard. The HLA Operational dashboard
uses Performance Analytics to enable you to monitor log data, alerts, and error rate information
in Service Operations Workspace and address issues as they occur in the system. For more
information, see HLA Operational dashboard.

Health Log Analytics reference
Reference topics provide additional information about the Health Log Analytics application.
Components installed with Health Log Analytics
Activating the Health Log Analytics, Health Log Analytics Viewer and Health Log Analytics Core
plugins adds several components.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Plugins
Plugin

Description

Health Log Analytics

Health Log Analytics is an AI-powered log
analysis solution capable of preventing
IT incidents before users are affected. It
automatically identifies your environment and
logs, predicts IT incidents, generates alerts,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3593


<!-- page 3594 -->
Plugin

Description

and provides expert suggestions for fixing
issues.
Health Log Analytics is a ServiceNow Store
app. Once installed, the module is available,
but you can choose not to interact with it.
Dependency:
• Health Log Analytics Core
®

• The ServiceNow Event Management
application
Health Log Analytics Viewer

Event Management operators use the Health
Log Analytics Viewer plugin to browse logs by
timestamp or time range. Health Log Analytics
Viewer enables Event Management operators
to search for a specific log text and visualize
the frequency of hits in a particular time
period.
®

Dependency: The ServiceNow Event
Management application.
Health Log Analytics Core

This plugin contains essential components for
Health Log Analytics, such as the AI Engine
and Elasticsearch.
Health Log Analytics Core is a ServiceNow
Store app. Once installed, the module is
available, but you can choose not to interact
with it.
®

Dependency: The ServiceNow Event
Management application.

Roles
Health Log Analytics uses the following roles.

Role title [name]

Description

Event Management Administrator
[evt_mgmt_admin]

Has read and write access to all Event
Management features to configure Health Log
Analytics.

Event Management Operator
[evt_mgmt_operator]

Has read access to all Event Management
features. Has write access to alerts to manage
the alert life cycle. Has the itil role to manage
incidents created from alerts. Can also
activate operations on alerts, such as to
acknowledge, close, and open an incident and
run remediation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3594


<!-- page 3595 -->
Lists
Health Log Analytics adds the following lists.

Table [name]

Description

Advanced Log Alert Filtering
[sn_occ_advanced_alert_filtering]

Controls processing of alert metrics with feedback
options. Enables providing more complex feedback
to the AI engine.
Beginning with the Health Log Analytics application,
Version 20.0.11 - July 2021, available from the
ServiceNow Store , this representation no longer
displays.

Advanced Log Alert Filter
[sn_occ_advanced_alert_filter]

Controls processing of alert metrics with feedback
options. Enables providing more complex feedback
to the AI engine.

Note: This feature is supported in the Health
Log Analytics application, Version 20.0.11 - July
2021, available from the ServiceNow Store .
Data Inputs
[sn_occ_base_data_input_config]

Enables setting up data input connectors to stream
log data into the instance.

Data Input Mapping
[sn_occ_event_mapper]

Enables mapping raw log data that streams into the
instance to determine how Health Log Analytics
processes it.

Data Input Preprocessor
Enables editing raw log data before the system maps
[sn_occ_data_input_preprocess_screen] and structures it.
Define Alert [sn_occ_custom_alert]

Enables creating custom alerts based on a
predefined set of rules.

Excluded Values
[sn_occ_auto_service_normalizer]

Enables configuring Health Log Analytics to stop
extracting specific log data that is not descriptive
enough or contains redundant text or information.

Extracted Values
[sn_occ_auto_service_mapper]

Enables configuring Health Log Analytics to extract a
specific term found in a field and map it to a specified
component.

Features [sn_occ_features]

Lists all Health Log Analytics features. The features
can be activated and deactivated.

Lexical Keywords
[sn_occ_lexical_keywords]

Shows all default lexical keywords that Health Log
Analytics looks for in log data.

Log Correlator [sn_occ_log_correlator]

Shows all correlators that determine whether to
correlate different alerts to the same group. Enables
adding correlators to Health Log Analytics.

Log Sources [sn_occ_sources]

Provides a view of all data input sources when the
log data has been mapped. Enables controlling
properties and correlators for these sources.

Muted Metrics [sn_occ_metric_state]

Shows all muted alert metrics together with the
muted components. Enables reactivating the muted
alert metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3595


<!-- page 3596 -->
Table [name]

Description

Source Type [sn_occ_source_type]

Contains the source types extracted in the mapping
process.

Source Type Structure
[sn_occ_source_type_structure]

Enables fine-tuning the source type structure.
Provides a view of all source types when the log
data has been mapped. Source types define how
Health Log Analytics treats specific sources and how
it parses the logs.

Streaming Sources
[sn_occ_log_streaming_source_stats]

Enables monitoring all entities that stream log data to
the instance.

System Health – Notifications
[sn_occ_health_check]

Shows all system health notifications together and
enables updating their status.

System Properties
[sn_occ_system_settings]

Displays system properties and enables customizing
their values.

Timestamp Formats
[sn_occ_timestamp_formats]

Displays predefined timestamp formats. Enables
defining and adding timestamp formats.

Time Zones [sn_occ_time_zones]

Enables deleting records in sn_occ_time_zones for
users with the evt_mgmt_admin role.

Forms
Health Log Analytics adds the following forms.

Table [name]

Description

Beats Data Input
[sn_occ_data_input_config_filebeat]

Enables configuring advanced settings for Beats data
input connectors.

Beats Linux (Filebeat)
Enables configuring Filebeat data input connectors.
[sn_occ_data_input_connector_filebeat]
Elasticsearch Data Input
[sn_occ_data_input_config_elastic]

Enables configuring an Elasticsearch data input.

MID Server Data Input
Enables configuring a MID Server data input.
[sn_occ_data_input_config_midserver]
Rsyslog
Enables configuring Rsyslog data input connectors.
[sn_occ_data_input_connector_rsyslog]
Rsyslog Data Input
[sn_occ_data_input_config_rsyslog]

Enables configuring advanced settings for Rsyslog data
input connectors.

TCP Data Input Configuration
[sn_occ_data_input_config_tcp]

Enables configuring advanced settings for TCP data
input connectors.

Windows Beats
Enables configuring Windows Beats data input
[sn_occ_data_input_connector_winbeat]
connectors.
WinLog Beats
Enables configuring WinLog Beats data input
[sn_occ_data_input_connector_winlogbeat]
connectors.
Supported data inputs for Health Log Analytics
Health Log Analytics (HLA) enables you to connect your ServiceNow instance to several types of
data input.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3596


<!-- page 3597 -->
HLA supports the following data input types:
• Passive data inputs (listeners), which wait for log data to be pushed to them. These data inputs
require a network port to be open on the MID Server:
◦ Rsyslog
◦ Beats
◦ Splunk
◦ TCP
◦ UDP
◦ MID Server
◦ GCP PubSub
◦ REST API
The Agent Client Collector data input is supported for use with the Agent Client Collector Log
Analytics application, available from the ServiceNow Store .
• Active data inputs (pullers), which pull data from repositories:
◦ Elasticsearch
◦ Splunk Polling
◦ Amazon CloudWatch
◦ Amazon S3
◦ Microsoft Azure Log Analytics
◦ Microsoft Azure Event Hubs
◦ Apache Kafka
For all active data inputs, Health Log Analytics supports MID Server clusters for failover
protection. The active data input runs on a single MID Server in the cluster. If that MID Server
fails, the system moves its tasks to the next available MID Server in the cluster in a configured
order.
The Elasticsearch data input fetches data from a data repository or database using credentials.
If your data is in Elasticsearch, Health Log Analytics must have the following:
◦ Permissions to query Elasticsearch
One of the following types of credentials:
▪ Basic authentication (user and password)
▪ AWS, for Elasticsearch on Amazon AWS Cloud
◦ Network connectivity to the relevant Elasticsearch cluster

Note: Health Log Analytics must be pointed to the correct index to start pulling the data.
In addition, Health Log Analytics supports Crible, Edge Delta, and Vector Agent data inputs.
These data inputs enable HLA to process log messages that are streaming from these tools into
your instance.

Native ServiceNow data inputs
Streaming logs from Cloud Observability to Health Log Analytics
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3597


<!-- page 3598 -->
®

Health Log Analytics can process log data it ingests from the ServiceNow Cloud
Observability application, formerly Lightstep. HLA automatically sets up the
configuration needed to enable log streaming from Cloud Observability as part of its
native integration. Setting up the connection from Cloud Observability to HLA must
be done in the Cloud Observability application. In HLA, you handle log records from
Cloud Observability in the same way as any other Data Input Mapping and Source
Type Structure records, as explained in Log data auto-mapping and mapping in
Health Log Analytics and Source type structure adjustment in Health Log Analytics.
For more information about Cloud Observability, see Explore Cloud Observability
documentation .
Related topics
Set up Health Log Analytics on your ServiceNow instance
General guidelines for streaming data to Health Log Analytics
This section helps you identify the appropriate data input for streaming your specific data type to
the Health Log Analytics application.
Data inputs for streaming log data to Health Log Analytics
Data type

Data input

Details

Flat files

ACC agent (Agent Client
Collector Framework)

Use the ServiceNow ACC
agent to stream flat files
directly to Health Log
Analytics. This method is
suitable for log files, CSVs,
and other structured file
formats.

Cloud applications

Depends on the cloud:
Microsoft Azure Event Hubs,
Amazon Data Firehose, other
methods

• Microsoft Azure Event Hubs:
Configure your Microsoft
Azure Event Hubs to send
data to Health Log Analytics
using the Microsoft Azure
Event Hubs data input.
• Amazon Data Firehose:
Set up an Amazon Data
Firehose delivery stream
to send data to Health Log
Analytics using the Amazon
Data Firehose data input.
• More examples.

Data lakes

Apache Kafka, Cribl

• Apache Kafka: Export data
from your data lake to a
Kafka topic and use the
Apache Kafka data input
to stream it to Health Log
Analytics.
• Cribl: Use Cribl to export
data from your data lake

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3598


<!-- page 3599 -->
Data inputs for streaming log data to Health Log Analytics (continued)
Data type

Data input

Details

and use the Cribl data input
to stream it to Health Log
Analytics.
Databases

Treat as flat files

Third-party tools

Varies by tool

Treat database logs, such
as Oracle error logs, as flat
files and use the ACC agent
to stream them to Health Log
Analytics.
• VMware: vCenter can use
UDP to stream data to the
MID Server and Health Log
Analytics using the UDP
data input.
• More examples.

APM tools

Varies by tool

• New Relic: Use the New
Relic plugin to stream
events directly to Health
Log Analytics. Export raw
logs to a flat file and use the
ACC agent to stream them
to Health Log Analytics.
• Dynatrace: Set up the
Dynatrace integration to
stream data directly from
Dynatrace to Health Log
Analytics.
• Nagios: Use the Nagios
plugin to stream events
directly to Health Log
Analytics. Export logs to a
flat file and use the ACC
agent to stream them to
Health Log Analytics.
• Datadog: Use the Vector
Agent data input to stream
data from Datadog to Health
Log Analytics.

MID Server proxy preconditions for streaming logs to Health Log Analytics
Requirements for using a MID Server proxy to stream log data to Health Log Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3599


<!-- page 3600 -->
• Use a Squid MID Server proxy to enable streaming log data to Health Log Analytics. For more
information, see Proxy server configuration for MID Servers used for Cloud Discovery and
Cloud Provisioning and Governance.
• Install and configure the MID Server proxy with the log ingestion capability enabled.

In addition, configure the following properties:
◦ mid.proxy.use_proxy = true
◦ mid.proxy.host = <proxy_ip>
◦ mid.proxy.port = <proxy_port>
Health Log Analytics configuration preferences
Commonly used settings for Health Log Analytics properties and general configuration.

MID Server settings
• The MID Server log ingestion capability must be enabled.

Note: Enabling All capabilities on the MID Server includes enabling the log ingestion
capability.
• Use dedicated MID Servers for log ingestion whenever possible.
• To enable MID Servers to run multiple products, Health Log Analytics must have at least the
Java Virtual Machine (JVM) memory setting for the standard product for each MID Server
thread configuration.
The preferred MID Server settings for Health Log Analytics are:
•◦ CPUs: 8
◦ RAM: 32 GB
◦ Network Bandwidth: Up to 10 Gbps
◦ EBS Bandwidth: Up to 4,750 Mbps
◦ Maximum Java heap size for MID Server: 8,192 MB
With the above specifications, the expected log ingestion throughput on a Washington DC
instance is as follows:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3600


<!-- page 3601 -->
◦ For a log message of 300 bytes: 20,000
◦ For a log message of 1.1 KB: 12,300
◦ For a log message of 2 KB: 7,970
The minimum requirements for streaming logs to Health Log Analytics are:
◦ CPUs: 4
◦ RAM: 16 GB
◦ Java heap size for MID Server: 8 GB
For general information, see: MID Server system requirements

.

• To increase log ingestion throughput, you can either increase the ulimit or the network
bandwidth, or decrease the size of the logs being streamed. The ulimit setting can be
configured on an individual MID Server. However, the correlation between the ulimit and the
throughput can’t be modified.
The following table lists the ulimit settings for open files relating to network throughput on the
MID Server. It shows the size of the logs being streamed from the MID Server to the agent, and
the gRPC streaming rate equivalent to the throughput.
Ulimit settings in relation to throughput
Queue Type

Log line size

gRPC rate

In Memory Queue

300 bytes

18,000

In Memory Queue

1.1 KB

13,000

In Memory Queue

2 KB

10,000

Disk-based Queue

300 bytes

11,000

Disk-based Queue

1.1 KB

5,000

Disk-based Queue

2 KB

3,000

Starting from the August 2024 release, you can enhance MID Server communication with the
ServiceNow instance by using the Lightning gRPC client, which can increase log streaming
speeds to Health Log Analytics by up to six times. The Lightning gRPC client requires manual
configuration to activate. For more information, see the Lightning gRPC client - Enabling the
new MID gRPC streaming architecture [KB1648419]
article in the Now Support Knowledge
Base.
• By default, the number of data inputs per MID Server is limited to 10. You can configure this
limitation for an individual MID Server or for all MID Servers.
• Both in FIPS and non-FIPS mode, MID Servers with Health Log Analytics capability must run on
the Java Runtime Environment (JRE) 11 or above.

Note: To support BC-FIPS version 2.0, Health Log Analytics requires an upgrade to
version 34.0.37, December 2024.

Log source retention settings
By default, log retention per source is set to three days. This setting can't be modified.
When using Health Log Analytics application, Version 22.0.12 - December 2021 and later,
available from the ServiceNow Store
, you can modify the log retention policy per source or for
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3601


<!-- page 3602 -->
multiple sources together. For more information, see Modify the log source retention period in
Health Log Analytics.
Health Log Analytics system health notifications
Health Log Analytics system health notifications help to ensure that you're aware of potentially
dangerous conditions. You can manually adjust the status of a notification as the issue is being
addressed.
Health Log Analytics uses self-health checks to monitor the health of its components. When it
discovers a system health issue, a notification is created and an email sent to all subscribers.
The Health Log Analytics Administration System Health - Notifications list displays all HLA
system health notifications, including those about internal errors. You can ask your admin to
subscribe you to the system health notifications.
Health Log Analytics System Health - Notifications
Field

Description

Name

Notification header.

Description

Description of the notification.

Created

Date when the notification was created.

State

State of the notification.
• New: The notification was newly added.
• Acknowledged: The notification record was
read.
• Work in progress: The issue described in
the notification is being addressed. Adjust
the value manually.
• Closed: The issue is no longer active. Adjust
the value manually.

Note: Changing the state of a
notification does not affect the state of
the issue described in it. A notification
in the Closed state will still display in the
table. The notification is automatically
filtered out of the table only when the
issue is detected as fixed (that is, when
the Healthy status is True).
Healthy

Field that indicates the status of the issue
mentioned in the notification.
The table shows only notifications with a
Healthy value of False. When the issue is
detected as fixed, the value is automatically
changed to True and the notification is filtered
out of the table.

Health Log Analytics self-health checks, notifications, and proposed actions
Health Log Analytics provides self-health checks, notifications, and proposed problem-solving
steps.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3602


<!-- page 3603 -->
Health Log Analytics system health notifications
Self-health check

Notification

Proposed action

Maximum AI engine queue
size exceeded

The AI engine is running
at overcapacity (size=%s,
threshold=%s, duration=%s).
As a result, the accuracy of
anomaly detection might
deteriorate.

Contact ServiceNow support.

High rate of unclassified errors "%s %s has a high rate of
in %s %s
unclassified errors and is
failing frequently.

Contact ServiceNow support.

Errors invoking glide API

Errors invoking '%s' for %s.

Contact ServiceNow support.

Log size limitation was
exceeded

Log messages from %s: %s
are being dropped because
the log size limitation was
exceeded.

If the difference is minor,
increase the log size limitation
by adjusting the property

mid.data_inputs.max_length_bytes_
on the MID Server Properties
form. If the logs are too long or
multi-line, you can also modify
the log size at the source of
the logs.

Excessive data volume for
data input %s.

The data volume for data
input %s is too high. Log
messages are being
discarded.

Contact ServiceNow support.

Log messages are being
dropped due to failed autostructuring

Log messages are being
dropped because autostructuring of Source Type %s
failed.

In the Source Type, find out
what could be causing autostructuring to fail. Inspect the
error logs to determine which
component or parsing action
is failing.

Excessive number of script
errors per second in %s:%s

The rate of script errors in %s:
%s is too high.

Review the JavaScript Parsing
Error in the source given in
the message: Data Input
Mapping Screen or Source
Type Structure Screen.

Log messages that exceed
The source type %s contains
the permitted number of
multiple log messages with
properties are being discarded too many properties. Such
log messages are discarded.
Review the Source Type
Structure record.

On the relevant Source Type
Structure record, review the
properties that are being
extracted. Check for script
loops or conditions that might
cause too many properties
to be created. Avoid using a
dynamic property name. For
more information, see Refine
the source type structure in
Health Log Analytics.

Too many clusters are being
generated. The accuracy of

Inspect the created patterns
and verify that the Message
label is being assigned

Too many clusters are being
generated for Source Type
%s. As a result, the accuracy

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3603


<!-- page 3604 -->
Health Log Analytics system health notifications (continued)
Self-health check

Notification

Proposed action

anomaly detection might
deteriorate.

of anomaly detection might
deteriorate.

correctly. On the Source Type
Structure form, review the
Message property.

Sources are being created at a Sources are being created at On the Data Input Mapping
very high rate
a very high rate. Data input %s form, inspect the Mapping
was stopped automatically.
script and fix any JavaScript
errors that might cause too
many sources to be created.
Source Types are being
created at a very high rate

Source Types are being
created at a very high rate.
Data input %s was stopped
automatically.

On the Data Input Mapping
form, inspect the Mapping
script and fix any JavaScript
errors that might cause too
many Source Types to be
created.

Metrics are being created at a
very high rate

Source Type %s is generating
too many metrics. The
properties %s were
automatically classified as
invalid.

On the Source Type Structure
form, observe the metrics
being generated. Make
sure that the Metric label is
assigned only to the required
properties. A dynamic
property name or inaccurate
JavaScript function can cause
too many properties to be
generated.

Processing duration of REST
calls in the AI Engine is too
high

Processing of REST calls in
the AI Engine is taking too
long.

Contact ServiceNow support.

The number of log messages
being discarded is too high

Too many log messages are
being discarded from source
%s.

Review the log retention
settings. Verify that the log
lines timestamp is correct and
does not represent a future or
past time outside the retention
period.

Auto-structuring is slowing
down the AI engine

Auto-structuring is slowing
down the AI engine.

Contact ServiceNow support.

Log messages are being
dropped due to a timestamp
parsing failure

Log messages from %s %s
are being dropped due
to a timestamp parsing
failure. Search for 'Failed
parsing timestamp from log
message' in the logs for the
relevant Service instance and
Component and fix the issue.

On the Data Input Mapping
form, locate the extracted
timestamp. If it is missing,
navigate from the form to
the relevant Source Type
Structure and open the
Timestamp Parsing Error tab.
The tab displays the issue that
led to the parsing error. Fix the
issue.

No memory consumption drop Memory consumption hasn’t
dropped in the last few
minutes.

Contact ServiceNow support.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3604


<!-- page 3605 -->
Health Log Analytics system health notifications (continued)
Self-health check

Notification

Proposed action

Pings the Elasticsearch
clusters' health endpoints to
determine the health of the
connection

Elasticsearch connectivity
issues.

Contact ServiceNow support.

Uses the Metric base
client connection check to
determine the health of the
connection

Metric base connectivity
issues.

Contact ServiceNow support.

Uses the Glide client
connection check to
determine the health of the
connection

Glide connectivity problems.

Contact ServiceNow support.

The data input is in Failed
state

The data input %s failed to
stream logs.

On the Data Input form, check
the connection to the MID
Server and review the error
message.

Health Log Analytics language support
Health Log Analytics provides international language support. The default language is US
English.

Language support coverage
The current available languages for Health Log Analytics are as follows: US English, UK English,
French, German, Italian, Japanese, and Spanish.

Note: To receive keyword-based alerts for languages other than English, keywords in
the relevant language must be added to the system before you start streaming. Contact
ServiceNow Support for assistance.
Domain separation and Health Log Analytics
Domain separation is supported for Health Log Analytics. Domain separation enables you to
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3605


<!-- page 3606 -->
Domain separation and Health Log Analytics overview
Domain separation is present in all aspects of the Health Log Analytics application. Users
belonging to a specific domain see only the data existing in their own domain.

How domain separation works in Health Log Analytics
When data is domain separated using a single Health Log Analytics server, each Managed
Service Provider (MSP) can see the log data only in its own domain or the child domains below it​
. Users can view alerts that Health Log Analytics generates only in their own domain. Actions to
remediate the alerts apply only for the scope of that domain. By default, all users and records are
set to the parent domain unless the admin assigns them to a specific domain.
The Health Log Analytics Domain Separation plugin must be installed before you configure your
data inputs in the Health Log Analytics application. There is no setup procedure for the plugin.
Install the plugin with the Health Log Analytics application Version 21.0.1 - September 2021, and
then activate it. Make sure that you map your data into logical silos and configure rules and
entities.
You define the domain-separated environment when you configure your data inputs. Users can
use data inputs that are only available in their own domain. Health Log Analytics creates alerts
only for logs that arrive in those data inputs. All relevant records and all data processing in the
Health Log Analytics program flow reside in the same domain as the data input. A data input's
domain name is shown in the Domain column displayed in the tables in your instance.
Using domain separation in your instance is transparent to Health Log Analytics. The application
manages all aspects of the data, such as system settings and custom operations, separately.
When a property is changed, the new value affects new sources only in the specific domain.
System properties affecting the server are common to all domains because all domains use the
Health Log Analytics server.

Note: Health Log Analytics supports up to 60 kilobytes events per second (EPS) across
all domains, without the ability to provide a service level agreement (SLA) to a specific
domain and without fairness. If a domain streams a large amount of data, the Health Log
Analytics server processes it. Other domains might suffer latency, drops, or other issues as
a result, even if they stream a low number of logs. On the MID Server side, 10 kilobytes EPS
is expected.

Use cases
• An MSP wants to provide the Health Log Analytics application to multiple customers in a
similar environment with a single instance.
• An organization with many tenants wants to isolate its sensitive data, such as security logs.
• An administrator of a tenant organization wants to define a data input only for their own
domain.
• An operator in a tenant organization wants to view logs only in their own domain.
• An operator in a tenant organization wants to provide feedback for alerts only in their own
domain.
• An MSP Admin wants to view log data from all of their organization's tenant domains.
Related topics
Domain separation for service providers

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3606


<!-- page 3607 -->
JavaScript function test outcome fields
Description of the JavaScript function test outcome fields.
The following fields are read-only:

Field

Description

Duration (ms)

The processing time of all samples, in
milliseconds.

Source types

The number of source types predicted or
created for this data input.

Sources

The number of sources predicted or created
for this data input.

Errors

The number of JavaScript errors that occurred
in all the samples.

Unmapped

The number of log lines that could not be
mapped. These log lines are mapped to
default tags.

Samples

The number of log samples on which the test
is run.
The default value is 1,000.

Note: You can increase the number
of log samples up to a maximum of
5,000 samples in the system property
data_input_mapping.max_examples. For
more information, see Configure global
Health Log Analytics system properties.
In the related lists, view the predicted or created source types and sources.

List/Tab

Description

Outcome Key Value Mapping

The results of running the JavaScript function
on the log samples.

Source Types (from samples)

The predicted or created source types.

Note: You can open source types that
have already been created by selecting
the appropriate link.
Sources (from samples)

The predicted or created sources.

Note: You can open sources that have
already been created by selecting the
appropriate link.
Test Outcome

The log samples used for testing your
JavaScript function, ordered by sources and
source types.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3607


<!-- page 3608 -->
List/Tab

Description

The Test Outcome list displays the number
of log samples for each source-source type
combination, and is updated when the log
samples are refreshed and you start testing
your script.
The list links to samples in the Mapping
Samples table, which shows the outcome of
the JavaScript function for each sample.
This feature is supported in the Health
Log Analytics application, Version 26.0.17 February 2023 and later, available from the
ServiceNow Store .
Source Type Structures

The source type structures for this data input.
Reviewing the source type structures can help
you gain a better understanding of the data
flow.
The Last event time column on this tab shows
the last date and time the AI engine processed
a log for the source type structure. The system
refreshes this information every 5 minutes.
Knowing when the last log was processed for
this source type structure makes it easier to
verify that log data is streaming.

Health Log Analytics severity mapping
Health Log Analytics (HLA) uses common severity values to identify severity labels in the Source
Type Structure.
The Log severity mapping table illustrates how HLA identifies severity words from raw logs
(shown in the left column), maps them to its own severity values (middle column), and then
presents them in Event Management alerts (right column).
Log severity mapping
Raw log severity

HLA log severity

Event Management alert severity

TRACE

TRACE

Keywords-based

VERBOSE

TRACE

Keywords-based

FINE

TRACE

Keywords-based

FINER

TRACE

Keywords-based

FINEST

TRACE

Keywords-based

DEBUG

DEBUG

Keywords-based

DBG

DEBUG

Keywords-based

CONFIG

DEBUG

Keywords-based

INFORMATIONAL

INFORMATIONAL

Keywords-based

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3608


<!-- page 3609 -->
Log severity mapping (continued)
Raw log severity

HLA log severity

Event Management alert severity

INFORMATION

INFORMATIONAL

Keywords-based

INF

INFORMATIONAL

Keywords-based

INFO

INFORMATIONAL

Keywords-based

UNKNOWN

UNKNOWN

Keywords-based

NOTICE

NOTICE

LOW

NOTIFICATION

NOTICE

LOW

WARNING

WARNING

MEDIUM

WARN

WARNING

MEDIUM

ERROR

ERROR

HIGH

ERR

ERROR

HIGH

CRITICAL

CRITICAL

CRITICAL

CRIT

CRITICAL

CRITICAL

FAT

CRITICAL

CRITICAL

FATAL

CRITICAL

CRITICAL

SEVERE

CRITICAL

CRITICAL

ALERT

ALERT

CRITICAL

EMERGENCY

EMERGENCY

CRITICAL

EMER

EMERGENCY

CRITICAL

Note: If your raw log contains numerical severities or unrecognized words, map these
values to the HLA Log Severity column by creating a conditional statement using the JS
function in the Source Type Structure. For more information, see Source type structure
adjustment in Health Log Analytics.
Integration configuration field descriptions
This section provides descriptions of the fields on the integration configuration forms for Health
Log Analytics.
Apache Kafka integration configuration fields
Description of the fields on the Apache Kafka integration configuration forms for Health Log
Analytics.
Provide details
Field

Description

Integration Name

Unique name of this integration. For example:
My Kafka integration. This field is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3609


<!-- page 3610 -->
Provide details (continued)
Field

Description

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
Execute on
MID server name

Option to select whether to use a specific MID
Server or a MID Server cluster.
(Only when the Execute on field is set to
Specific MID Server)
MID Server to which log data from Apache
Kafka is pulled. This field is required.

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed.

• The default maximum number
of data inputs streaming logs
to a single MID Server is 10.
You can modify the maximum
number by adding the property
sn.occ.log_ingestion.max_datainputs_per
to the MID Server and then changing
the default value.
• If log ingestion is not enabled for
the selected MID Server, Health Log
Analytics enables it automatically.
MID Server Cluster

(Only when Execute on is set to MID Server
cluster.)
The MID Server cluster to which the log data is
pulled.
The data input runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the data input tasks to
the next available MID Server in the cluster
according to the configured order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3610


<!-- page 3611 -->
Provide details (continued)
Field

Description

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the data input form, the MID
Server clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• The default maximum number of data
inputs streaming logs to a single MID
Server is 10. A cluster passes capacity
validation if it contains at least one
MID Server with fewer than 10 data
inputs running on it, even when that
MID Server is down.
For more information about MID Server
clusters, see Configure a MID Server cluster

.

This field is required.
Service instance

The service instance (formerly the application
service) to which to bind the log data. This
field is required.

Data source

The source of the log data that the integration
pulls to your ServiceNow instance: Kafka. This
field is read-only.

Description

Option to add a brief description of the
integration to help identify it.

Set data retrieval method
Field

Description

Kafka node names

A comma-separated list in the format
HOST:PORT,HOST:PORT. This field is required.
The list does not have to include all the
Apache Kafka Cluster servers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3611


<!-- page 3612 -->
Set data retrieval method (continued)
Field

Description

Topics

A comma-separated list of topics to which
the data input must subscribe. This field is
required.

Kafka credentials

The Apache Kafka credentials.
You can select existing Kafka SSL credentials,
or create new ones by selecting Create Kafka
credentials from the drop-down list. For a
description of the fields on the Kafka SSL
credentials form, see Kafka SSL credentials
fields.

Group ID

The name of the Apache Kafka Consumer
Group.

Advanced settings
Field

Description

Default value

Timeout

The time, in milliseconds,
500
spent waiting in the poll if data
is not available in the topics.

Default timezone

The time zone of events that
the system will use if a log
does not specify the time
zone.

GMT

By default, the system uses
GMT in such cases, but you
can specify a different time
zone.
Sub sample receive ratio

The number of events to batch -1
together, out of which all but
one will be discarded. This
setting is used to decrease
the number of received
events.

Character encoding

The character encoding for
this data input. This field is
read-only.

UTF-8

Node discovery timeout

The time, in milliseconds,
before node discovery times
out.

30

Sub sample drop ratio

The number of events to batch -1
together, out of which one will
be discarded. This setting is
used to reduce the number of
fetched events.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3612


<!-- page 3613 -->
Advanced settings (continued)
Field

Description

Default value

Max length in bytes

The maximum length, in bytes, 32766
of events.

Drop if queue is full

Option for selecting to discard False
logs if there is a load on the
MID Server.

Amazon Data Firehose integration configuration fields
Description of the fields on the Amazon Data Firehose integration configuration forms for Health
Log Analytics.
Provide details
Field

Description

Integration Name

Unique name of this integration. For example:
My Firehose integration. This field is required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
Transport

The protocol used for streaming log messages
to your instance: Amazon CloudWatch Logs.
This field is read-only.

Description

Option to add a brief description of the
integration to help identify it.

Cribl integration configuration fields
Description of the fields on the Cribl integration configuration forms for Health Log Analytics.
Provide details
Field

Description

Integration Name

Unique name of this integration. For example:
My Cribl integration. This field is required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
Service Instance

The service instance (formerly the application
service) to which to bind the log data. This
field is required.

MID Server name

The MID Server to which the Cribl logs are
streamed. This field is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3613


<!-- page 3614 -->
Provide details (continued)
Field

Description

Port

The port on the MID Server. This field is
required.
Choose a port within the range 6000-6200
from the array. The port must not be occupied
by another process. Make sure that your
organization’s security team opens the
selected port on the MID Server.

Description

Option to add a brief description of the
integration to help identify it.

Transport (for push integrations)

The protocol used for streaming log messages
to your ServiceNow instance: TCP. This field is
read-only.

Source (for pull integrations)

The source of the log data that the integration
pulls to your ServiceNow instance: Cribl. This
field is read-only.

Set up connection
Field

Description

Cribl URL

The URL of the Cribl instance. This field is required.
HLA uses this URL to establish the connection with the Cribl
instance and make the necessary API calls.
For example:
• On-Prem: https://my-cribl.company.com:9000
• Cloud: https://myorg-12345abcde.cribl.cloud
• Sandbox: https://sandbox-xyz789.sandbox.cribl.io

Authentication method

The authentication method used by the Cribl integration.
This field is required.
The Cribl integration supports:
• Token-based authentication: Required for Cribl Cloud and
also supported for self-hosted (On-Prem) Cribl instances.
• Basic authentication: Preferred for self-hosted (On-Prem)
Cribl instances.
Both of these authentication methods use the default
credential alias: Cribl_Credential_Alias.
For information about setting up credentials for the
authentication method used by the Cribl integration, see
Set up authentication credentials for the Cribl integration in
Health Log Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3614


<!-- page 3615 -->
Set up connection (continued)
Field

Description

Important: Verify that only one active credential
record of each credentials type exists under the
credential alias.
Worker Group

The Cribl Worker Group from which to stream log data to the
instance. This field is required.
The drop-down list displays Worker Groups based on the
provided Cribl cloud instance URL and authentication
method.
For example:
• default
• dev-workers
• prod-workers
• staging-workers

Cribl route

The Cribl route that directs log data to a specific
destination.
This field is auto-populated with a drop-down list of all
available routes, each configured with a default destination.
Select the desired route from the list. This field is required.
For example:
• default
• demo-route

Cribl destination

The Cribl destination to which the log data is directed. This
field is auto-populated and read-only.
When HLA populates this field, it provides a link to the
destination on the Cribl server.
For example: sn_hla_cribl_tcp_json_abcdef

Edge Delta REST integration configuration fields
Description of the fields on the Edge Delta REST integration configuration form for Health Log
Analytics.
Provide details
Field

Description

Integration name

Unique name of this integration. For example:
My Edge Delta REST integration. This field is
required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3615


<!-- page 3616 -->
Provide details (continued)
Field

Description

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
MID web server

The MID Web Server to use. This field is
required.

Service instance

The service instance to which to bind the log
data. This field is required.

Port

The port for the MID Server.
This field is read-only. It is auto-populated
when the MID Web Server is chosen.

Transport

The transport method used for streaming log
messages to your ServiceNow instance: REST.
This field is read-only.

MID server name

The MID Server to which the log data is
pushed.
This field is auto-populated when the MID Web
Server is chosen. It is read-only.

Description

Option to add a brief description of the
integration to help identify it.

Edge Delta TCP integration configuration fields
Description of the fields on the Edge Delta TCP integration configuration forms for Health Log
Analytics.
Provide details
Field

Description

Integration Name

Unique name of this integration. For example:
My Edge Delta TCP integration. This field is
required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
MID server name

MID Server to which the Edge Delta logs are
streamed. This field is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3616


<!-- page 3617 -->
Provide details (continued)
Field

Description

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
• If log ingestion is not enabled for
the selected MID Server, Health Log
Analytics enables it automatically.
Port

The port on the MID Server used for listening
on logs. This field is required.
Choose a port within the suggested range
from the array. The port must not be occupied
by another process. Ensure that your
organization's security team opens the
selected port.

Service instance

The service instance to which to bind the log
data. This field is required.

Transport

The protocol used for streaming log messages
to your ServiceNow instance: TCP. This field is
read-only.

Description

Option to add a brief description of the
integration to help identify it.

Advanced settings
Field

Description

Lookup hostnames

Option to perform DNS lookup to resolve IPs to
hostnames. The default value is false.

Sub sample drop ratio

The ratio of logs to drop. The default value is -1:
no logs are dropped.
For example: If you want one out of every five
logs to be dropped, change the value to 5.

Sub sample receive ratio

The ratio of logs to receive. The default value is
-1: no logs are received.
For example: If you want one out of every five
logs to be received, change the value to 5.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3617


<!-- page 3618 -->
Advanced settings (continued)
Field

Description

Max length in bytes

The maximum length of log messages in bytes.
The default value is 32766.

Character encoding

The character encoding for this data input.
Default is UTF-8.

Line breaker delimiters

The line break character separating the raw
log lines.
Splitting values must be separated by a
comma followed by a space: ", ". For example:
"\r, \n, , splitHere, ".

Boss thread count

The number of threads that manage
connections.

Worker thread count

The number of threads that handle incoming
data.

Read timeout seconds

The timeout in seconds since the last read.
When the timeout expires, the system closes
the channel.

Default timezone

The time zone of events that the system uses if
a log does not specify the time zone.
By default, the system uses GMT, but you can
specify a different time zone.

Drop if queue is full

Option to discard logs if there is a load on the
MID Server.

Elasticsearch integration configuration fields
Description of the fields on the Elasticsearch integration configuration forms for Health Log
Analytics.
Provide details
Field

Description

Integration Name

Unique name of this integration. For example:
My Elasticsearch integration. This field is
required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
Execute on
MID server name

Option to determine whether to use a specific
MID Server or a specific MID Server cluster.
(Only when Execute on is set to Specific MID
Server)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3618


<!-- page 3619 -->
Provide details (continued)
Field

Description

The MID Server to which log data from
Elasticsearch indices is pulled. This field is
required.
MID Server Cluster

(Only when Execute on is set to Specific MID
Server Cluster)
The MID Server cluster to which the log data is
pulled. This field is required.
When you select a cluster, the MID Servers
in the selected cluster and their status are
displayed.
The integration runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the integration tasks
to the next available MID Server in the cluster
according to the configured order.

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the integration form, the MID
Server Clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• If Elasticsearch uses client certificate
or CA certificate authentication, all MID
Servers in the cluster must have the
appropriate certificates.
• The default maximum number of
integrations streaming logs to a single
MID Server is 10. A cluster passes
capacity validation if it contains at least
one MID Server with fewer than 10
integrations running on it, even when
that MID Server is down.
Service instance

The service instance to which to bind the log
data. This field is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3619


<!-- page 3620 -->
Provide details (continued)
Field

Description

Note: If no relevant service instance
exists, Create an service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
Data source

The source of the log data that the integration
pulls to your ServiceNow instance: Elastic. This
field is read-only.

Description

Option to add a brief description of the
integration to help identify it.

Data retrieval method
Field

Description

Server URL

The URL used to access the cluster. This field
is required.

Authentication method

The authentication method used to
authenticate the integration to Elasticsearch.
Default is none.
When you select the authentication method,
the corresponding credentials fields display
on the form.

Note: As an admin, you can create an
authentication method by navigating
to All > Health Log Analytics >
Authentication Methods and selecting
New.
Index prefix

Prefix prepended to the names of the
Elasticsearch indices from which you want
to read data. The integration only reads data
from indices that match the configured prefix.
For example: network-logs-* matches indices
such as network-logs-2024.01.01. This field is
required.
This setting ensures that HLA only ingests
data from the relevant indices.
For example: only-read-these-indices-*

Document timestamp field

Timestamp field in documents stored in the
read indices. This field is required.

Timestamp field format

Format of the timestamp field in the
documents.
If no format is specified, the default Unix
epoch time format is used, in milliseconds. For

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3620


<!-- page 3621 -->
Data retrieval method (continued)
Field

Description

example: 1684168407 (May 15, 2023 4:33:27
PM)
Term filters

JSON map of the terms to filter.

Note: Avoid using the term query for
text fields. If the target field is mapped
as both text and keyword, reference the
keyword by using fieldname.keyword.
For example: {"severity": ["error", "warning"]}

Advanced settings
Field

Description

Max connections per route

The maximum number of connections to be
opened per node.

Max scroll slices

The number of shards configured for the
relevant index in Elasticsearch.
This number tells Elastic how many parallel
queries to execute in each polling request.

Proxy host

Host name of the HTTP proxy through which
requests are sent.

Proxy port

Port of the HTTP proxy through which requests
are sent.

Use MID certificate policy check

Option to enable the MID certificate policy
check.
Select this option if you want to ship your logs
encrypted using SSL TLS. Then navigate to
All > MID Server > MID Security Policy and
add the MID certificate policy check to the
table. For more information, see MID Server
certificate check policies .

Use cross-cluster search

Option for searching for data across
Elasticsearch clusters.
When this check box is selected, the Clusters
to search field displays.

Note: Your settings in the Use minimal
privileges check box and the Delay in
reading current timestamp (seconds)
field on the Advanced configuration
form affect how data is collected across
multiple clusters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3621


<!-- page 3622 -->
Advanced settings (continued)
Field

Description

Clusters to search

The Elasticsearch clusters to search.This field
displays only when the Use cross-cluster
search check box is selected.
Do one of the following:
• Leave this field empty or enter “*” to
search all the remote clusters defined in
Elasticsearch.
• Specify the clusters to search in a commaseparated list.

Note: To also search the local cluster,
add a comma at the beginning or end,
or add two commas in succession to
the list. For example: “east,,west” or
“,east,west” or “*,”
Use minimal privileges

Option for reading log data directly from the
Elasticsearch indices with the configured
prefix.
• When selected, the integration reads the log
data directly from the Elasticsearch indices
with the configured prefix. To perform this
task, it needs only read privileges.

Note: When this check box is
selected and you're using cross-cluster
search, data is collected from all the
clusters simultaneously.
• When clear, the integration fetches all
indices with the prefix, filters them, and
reads the log data from the filtered indices.
Performing this task requires additional
privileges.

Note: Leaving this check box clear
when using cross-cluster search
affects how data is collected from the
clusters. For more information, see
the Enabling and Using Cross-Cluster
Search for Elasticsearch Data Inputs
in Health Log Analytics [KB1556079]
article in the Now Support Knowledge
Base.
For additional information about streaming
logs using the Elasticsearch integration, see
the Stream logs using Elasticsearch data input
- Advanced guide [KB1080162]
article in the
Now Support Knowledge Base.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3622


<!-- page 3623 -->
Advanced settings (continued)
Field

Description

Max documents per query

Maximum number of documents fetched in a
single query.

Sliced-scrolling tie breaker

Value used to slice the data. Each slice is
scrolled in parallel. Default: _id

Search-after tie breaker

Unique value per document to use as
tiebreaker when sorting log entries by
timestamp.

Use search-after API

Option for toggling between using slicedscrolling and search-after APIs.

Note: Sliced-scrolling APIs are
preferable when reading historical data,
while search-after APIs are better for
reading real-time data.
Index time-suffix format

Format of the time suffix when using
time-based index names, such as
[logstash-]YYYY.MM.DD.
When using aliases, leave this field empty.
For example: uuuu.MM.dd

Data reading timeout (milliseconds)

The duration of time, in milliseconds, before a
request to the Elasticsearch cluster times out.

Index discovery interval (seconds)

The number of seconds between intermittent
MID Server requests to the Elasticsearch
cluster for new indices from which to read
data.

Scroll context time (milliseconds)

The lifetime of the created scroll when using
the scroll API to read data from Elasticsearch.
For more information, see the Elasticsearch
scroll API documentation .

Event processor workers

The maximum number of CPU cores used
in parallel to process events fetched from
Elasticsearch. A higher setting increases the
data input throughput at the cost of higher
CPU usage.

Worker queue size

The maximum number of batches to queue
for processing. A higher setting increases
throughput, at the cost of higher RAM usage.

Default timezone

The time zone of events that the system will
use if a log does not specify the time zone.
By default, the system uses GMT in such
cases, but you can specify a different time
zone.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3623


<!-- page 3624 -->
Advanced settings (continued)
Field

Description

Sub sample drop ratio

The number of events to batch together, out
of which one will be discarded. This setting is
used to reduce the number of fetched events.

Sub sample receive ratio

The number of events to batch together, out
of which all but one will be discarded. This
setting is used to decrease the number of
received events.

Character encoding

The character encoding for this data input.

Sleep interval (seconds)

The interval, in seconds, to wait before
querying again after a query has returned no
data.

Max length in bytes

The maximum length, in bytes, of log
messages.

Delay in reading current timestamp (seconds)

The number of seconds before current time to
query to include delayed data.The configured
number of seconds is subtracted from the
current time for reading the last timestamp.

Note: If this value is 0 and data
is collected from multiple clusters
simultaneously, the query may not
include data that was sent with a delay
on one of the clusters,
Polling interval

How frequently the system polls for new log
data.

GCP PubSub integration configuration fields
Description of the fields on the GCP PubSub integration configuration forms for Health Log
Analytics.
Provide details
Field

Description

Integration Name

Unique name of this integration. For example:
My GCP PubSub integration. This field is
required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
Service Instance

The service instance (formerly the application
service) to which to bind the log data. This
field is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3624


<!-- page 3625 -->
Provide details (continued)
Field

Description

Execute on

Option to select whether to use a specific MID
Server or a MID Server cluster.

MID Server name

(Only when Execute on is set to Specific MID
Server.)
The MID Server to which the logs are
streamed.

Note:
• You can only select a MID Server with
log ingestion capability that supports
basic authentication. MID Servers that
support mTLS are not listed.
• If log ingestion is not enabled on
the selected MID Server, Health Log
Analytics enables it automatically.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
This field is required.
MID Server cluster

(Only when Execute on is set to MID Server
cluster.)
The MID Server cluster to which the log data is
pulled.
The data input runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the data input tasks to
the next available MID Server in the cluster
according to the configured order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3625


<!-- page 3626 -->
Provide details (continued)
Field

Description

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the data input form, the MID
Server clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• The default maximum number of data
inputs streaming logs to a single MID
Server is 10. A cluster passes capacity
validation if it contains at least one
MID Server with fewer than 10 data
inputs running on it, even when that
MID Server is down.
For more information about MID Server
clusters, see Configure a MID Server cluster

.

This field is required.
Source

The source of the log data that the integration
pulls to your ServiceNow instance: PubSub.
This field is read-only.

Description

Option to add a brief description of the
integration to help identify it.

Set up connection
Field

Description

Project ID

The project ID of the Google Cloud project. For
example, my-project-id. This field is required.
You can obtain the project ID from your Google
Cloud homepage by selecting My Project. The
project ID will be displayed.

Authentication method

®

The credential alias ServiceNow uses to
access Google Cloud. The default value is

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3626


<!-- page 3627 -->
Set up connection (continued)
Field

Description

sn_occ.HLA_Credential_Alias. This field is
required.

Note: You can add more credential
aliases to the list of available aliases
to choose from by selecting Manage
credential aliases from the list and
adding a credential alias.
Topic name

The Google Cloud Pub/Sub topic to which to
subscribe Health Log Analytics. For example,
my_topic. This field is required.
You can obtain the topic name from your
Google Cloud homepage by searching for
Pub/Sub. All topic names will be displayed.

Subscription name

The subscription Health Log Analytics uses
to receive log data that is published on the
Google Cloud Pub/Sub topic.
If you leave this field blank, Health Log
Analytics uses ServiceNow-Subscription.

Advanced Settings
Field

Description

Default value

Subscriber thread pool size

The number of concurrent
threads that are downloading
files from the Google Cloud
Pub/Sub topic.

1

Sub sample receive ratio

The ratio of logs to receive.

-1

This setting determines the
number of logs to group
together, out of which one
is received. It reduces the
number of logs you receive.
The default value is -1,
meaning no logs are received.
For example, if you want to
receive one log out of every
five, change the value to 5.
Max length in bytes

The maximum length of log
messages, in bytes.

32,766

Character encoding

The character encoding for
this data input. This field is
read-only.

UTF-8

Sub sample drop ratio

The ratio of logs to discard.

-1

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3627


<!-- page 3628 -->
Advanced Settings (continued)
Field

Description

Default value

This setting determines the
number of logs to group
together, out of which one
is dropped. It reduces the
number of fetched logs.
The default value is -1: no logs
are discarded. For example, if
you want one log out of every
five to be dropped, change
the value to 5.
Rate limit

The maximum number of
events per second that this
data input processes.

-1

Default timezone

The default time zone of
events. The system uses this
default when the log does not
specify a time zone.

GMT

Drop if queue is full

Option for selecting to discard Clear
logs if many processes are
waiting in the queue to access
the MID Server.

Microsoft Azure Event Hubs integration configuration fields
Description of the fields on the Microsoft Azure Event Hubs integration configuration forms for
Health Log Analytics.
Provide details
Field

Description

Integration Name

Unique name of this integration. For example:
My Event Hubs integration. This field is
required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
Service Instance

The service instance (formerly the application
service) to which to bind the log data. This
field is required.

Source

The source of the log data that the integration
pulls to your ServiceNow instance: PubSub.
This field is read-only.

Description

Option to add a brief description of the
integration to help identify it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3628


<!-- page 3629 -->
Provide details (continued)
Field

Description

Execute on

Option to select whether to use a specific MID
Server or a MID Server cluster.

MID Server name

(Only when Execute on is set to Specific MID
Server.)
The MID Server to which the logs are
streamed.

Note:
• You can only select a MID Server with
log ingestion capability that supports
basic authentication. MID Servers that
support mTLS are not listed.
• If log ingestion is not enabled on
the selected MID Server, Health Log
Analytics enables it automatically.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
This field is required.
MID Server cluster

(Only when Execute on is set to MID Server
cluster.)
The MID Server cluster to which the log data is
pulled.
The data input runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the data input tasks to
the next available MID Server in the cluster
according to the configured order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3629


<!-- page 3630 -->
Provide details (continued)
Field

Description

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the data input form, the MID
Server clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• The default maximum number of data
inputs streaming logs to a single MID
Server is 10. A cluster passes capacity
validation if it contains at least one
MID Server with fewer than 10 data
inputs running on it, even when that
MID Server is down.
For more information about MID Server
clusters, see Configure a MID Server cluster

.

This field is required.

Set data retrieval method
Event Hubs namespace

The scoping container for the event hub or
hubs. This field is required.

Event Hub name

The event hub from which to fetch log data.
This field is required.

Consumer Group name

The Consumer Group to use. This field is
required.
Enter an existing Consumer group or create
one in the event hub. The default value is
$Default.

Event Hub Credentials

The Event Hub credentials to use. This field is
required.
Select existing Azure Shared Access Signature
(SAS) credentials or create the Azure SAS

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3630


<!-- page 3631 -->
Set data retrieval method (continued)
credentials to use. If you create new Azure
SAS credentials, you must provide the SAS
policy name and key.

Advanced settings
Field

Description

Restore point rate

The number of logs the integration can read
before a restore point is saved.

Processor threads count

The total number of processor threads.

Sub sample drop ratio

The ratio of logs to discard.
This setting determines the number of logs to
group together, out of which one is dropped. It
reduces the number of fetched logs.
The default value is -1: no logs are discarded.
For example, if you want one log out of every
five to be dropped, change the value to 5.

Sub sample receive ratio

The ratio of logs to receive.
This setting determines the number of logs to
group together, out of which one is received. It
reduces the number of logs you receive.
The default value is -1, meaning no logs are
received. For example, if you want to receive
one log out of every five, change the value to
5.

Operation timeout (seconds)

The number of seconds to wait before timing
out event hubs operations.

Receive idle timeout (seconds)

The number of seconds to wait before timing
out receive operations.

Max length in bytes

The maximum length, in bytes, of log
messages. The default value is 32766.

Prefetch count

The number of logs received in advance of
event hubs operations.

Max batch size

The maximum number of events passed to a
single process call. The default value is 100.

Default timezone

The default time zone of logs. The system uses
this default when the log does not specify a
time zone. The default value is GMT.

Character encoding

The character encoding for this integration.
The default value is UTF-8.

Drop if queue is full

Option for selecting to discard logs if there is a
load on the MID Server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3631


<!-- page 3632 -->
Microsoft Azure Log Analytics integration configuration fields
Description of the fields on the Microsoft Azure Log Analytics integration configuration forms for
Health Log Analytics.
Provide details
Field

Description

Integration Name

Unique name of this integration. For example:
My Azure Log Analytics integration. This field is
required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
Execute on
MID server name

Option to select whether to use a specific MID
Server or a MID Server cluster.
(Only when the Execute on field is set to
Specific MID Server)
MID Server to which log data from Microsoft
Azure Log Analytics is pulled. This field is
required.

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed.
• The default maximum number of
integrations streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
• If log ingestion is not enabled for
the selected MID Server, Health Log
Analytics enables it automatically.
MID MID Server Cluster

(Only when Execute on is set to MID Server
cluster.)
The MID Server cluster to which the log data is
pulled.
The data input runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the data input tasks to
the next available MID Server in the cluster
according to the configured order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3632


<!-- page 3633 -->
Provide details (continued)
Field

Description

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the data input form, the MID
Server clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• The default maximum number of data
inputs streaming logs to a single MID
Server is 10. A cluster passes capacity
validation if it contains at least one
MID Server with fewer than 10 data
inputs running on it, even when that
MID Server is down.
For more information about MID Server
clusters, see Configure a MID Server cluster

.

This field is required.
Service instance

The service instance (formerly the application
service) to which to bind the log data. This
field is required.

Data source

The source of the log data that the integration
pulls to your ServiceNow instance: Azure Log
Analytics. This field is read-only.

Description

Option to add a brief description of the
integration to help identify it.

Set data retrieval method
Field

Description

Redirect url

The redirect URL of the access log application.
This field is required.
The URL refers to the Microsoft Azure
redirect_uri authorization property. For more
information, see the Authorization code URL

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3633


<!-- page 3634 -->
Set data retrieval method (continued)
Field

Description

(GET request) section in the Microsoft Azure
documentation .
Authentication method

The credentials used to access Microsoft
Azure resources. This field is required.
If no credentials exist, select Create new
Azure Service Principal credential. Create
a credential by filling in the fields and then
selecting Submit. For information on the
Tenant ID, Client ID, and Secret key fields,
refer to the Microsoft Azure documentation .
When you have created a credential, you can
select it from the drop-down list.

Workspace ID

The Customer ID used to call the Microsoft
Azure Log Analytics REST API. This field is
required.

Table name

The name of the table in Microsoft Azure Log
Analytics where the data input fetches the log
data. For more information, see the View table
information section in the Microsoft Azure
documentation . This field is required.

Event time property name

The Microsoft Azure Log Analytics field in
which to detect the event time. This field is
required.

Advanced settings
Field

Description

Event Processor workers

The number of concurrent event processing
workers, where each worker processes a
batch of events independently.

Workers queue size

The queue size of the Event Processor
workers.

Sub sample drop ratio

The number of events to batch together, out
of which one will be discarded. This setting is
used to reduce the number of fetched events.

Sub sample receive ratio

The number of events to batch together, out
of which all but one will be discarded. This
setting is used to decrease the number of
received events.

Max documents per query

The highest number of rows retrieved in each
query.

Columns to select

Comma-separated list of column names to
return.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3634


<!-- page 3635 -->
Advanced settings (continued)
Field

Description

Note: This field is ignored when you
provide a custom query.
Character encoding

The character encoding for this data input.

Sleep interval (seconds)

The interval, in seconds, to wait before
querying again after a query has returned no
events.

Polling interval

The interval, in seconds, to wait before polling
for new events.

Drop if queue is full

Option for selecting to discard logs if there is a
load on the MID Server.

Log Query

Option to define your own Log Analytics query.
This field overrides the values configured in
the other query settings fields.

Note: If this field is empty, Health Log
Analytics generates the query using the
values set in the other fields.
For your custom query, use the following JSON
format:
{"query": "query | where
TimeGenerated > %s | take 500"}
For example:
{
"query":"ContainerLog
|
where LogEntry contains
'cartservice'
| where
TimeGenerated > %s
| take
500",
"workspaces":
["defaultworkspace-3ab145ff-f
9cd-433f-8533-d1b1ee24aee6-eus
"],
"project": ["TimeGenerated",
"LogEntry", "LogEntrySource"]
}
MID Server integration configuration fields
Description of the fields on the MID Server integration configuration forms for Health Log
Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3635


<!-- page 3636 -->
Provide details
Field

Description

MID server name

The name of the MID Server from which the
integration collects log messages and streams
them to the instance.

Note: You can only create one MID
Server integration per available MID
Server. If an existing MID Server
integration or data input uses the
same MID Server, you can't create an
additional one for this MID Server.
This field is required.
Integration Name

The name of the integration.
When you select the MID Server name, this
field is auto-populated with the selected MID
Server. This field is read-only.

Service instance

The service instance to which to bind the log
data. This field is required. By default, it is set
to ServiceNow MID Server.

Note: This field is only available for MID
Server integrations created in version
36.0.17 or later versions.
Description

Option to add a brief description of the
integration to help identify it.

Advanced settings
Field

Description

Default timezone

The time zone of events that the system will
use if a log does not specify the time zone.
By default, the system uses GMT in such
cases, but you can specify a different time
zone.

Sub sample drop ratio

The ratio of events to drop. The default value is
-1.

Sub sample receive ratio

The ratio of events to receive. The default
value is -1.

Max length in bytes

The maximum length of log messages, in
bytes. The default value is 32,766.

Character encoding

The character encoding for this data input. The
default value is UTF-8.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3636


<!-- page 3637 -->
Advanced settings (continued)
Field

Description

Drop if queue is full

Option for selecting to discard logs if many
processes are waiting in the queue to access
the MID Server.

REST API integration configuration fields
Description of the fields on the REST API integration configuration forms for Health Log Analytics.

Note: REST API integrations support only UTF-8 encoding for incoming data.
Provide details tab
Field

Description

Integration Name

Unique name of this integration. For example:
My REST API integration. This field is required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
MID web server

The MID Web Server to use. This field is
required.

Service instance

The service instance (formerly the application
service) to which to bind the log data. This
field is required.

Note: If no relevant service instance
exists, Create a service instance
and
add CIs (Configuration Items) to it. Set
the status of the new service instance to
Operational.
Transport

The protocol used for streaming log messages
to your ServiceNow instance: REST. This field
is read-only.

Description

Option to add a brief description of the
integration to help identify it.

MID server name

The MID Server to which the log data is
pushed.
This field is auto-populated when the MID Web
Server is chosen. It is read-only.

Port

The port for the MID Server.
This field is read-only. It is auto-populated
when the MID Web Server is chosen.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3637


<!-- page 3638 -->
ServiceNow System Logs Retriever integration configuration fields
Description of the fields on the ServiceNow System Logs Retriever integration configuration form
for Health Log Analytics.
Provide details
Field

Description

Integration Name

Unique name of this integration. For example:
My System Logs integration. This field is
required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
Service instance

The service instance (formerly the application
service) to which to bind the log data. This
field is required. The default service instance
for this integration is ServiceNow System Logs.

Description

Option to add a brief description of the
integration to help identify it.

Splunk Poller integration configuration fields
Description of the fields on the Splunk Poller integration configuration forms for Health Log
Analytics.
Provide details
Field

Description

Integration Name

Unique name of this integration. This field is
required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
Execute on
MID server name

Option to select whether to use a specific MID
Server or a MID Server cluster.
(Only when the Execute on field is set to
Specific MID Server)
MID Server to which log data from Splunk is
pulled. This field is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3638


<!-- page 3639 -->
Provide details (continued)
Field

Description

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
• If log ingestion is not enabled for
the selected MID Server, Health Log
Analytics enables it automatically.
MID Server Cluster

(Only when Execute on is set to MID Server
cluster.)
The MID Server cluster to which the log data is
pulled.
The data input runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the data input tasks to
the next available MID Server in the cluster
according to the configured order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3639


<!-- page 3640 -->
Provide details (continued)
Field

Description

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the data input form, the MID
Server clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• The default maximum number of data
inputs streaming logs to a single MID
Server is 10. A cluster passes capacity
validation if it contains at least one
MID Server with fewer than 10 data
inputs running on it, even when that
MID Server is down.
For more information about MID Server
clusters, see Configure a MID Server cluster

.

This field is required.
Service instance

The service instance (formerly the application
service) to which to bind the log data. This
field is required.

Data source

The source of the log data that the integration
pulls to your ServiceNow instance: Splunk.
This field is read-only.

Description

Option to add a brief description of the
integration to help identify it.

Set data retrieval method
Field

Description

REST API Server URL

The URL used to access the Splunk REST API.
This field is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3640


<!-- page 3641 -->
Set data retrieval method (continued)
Field

Description

Note:
• By default, the Splunk REST API
endpoint is available on port 8089.
Therefore, the default endpoint for
the Splunk REST API is: http://
<splunk-server>:8089.
• The REST API endpoint is different
from the front-end endpoint.
Authentication method

The credential alias to be used. This field is
required.
The Splunk integration uses credential aliases
instead of direct references to credentials
for authentication. The credential aliases are
listed by type: aliases that contain basic auth
credentials, and those that contain token auth
credentials. If an alias holds both credential
types, it appears in both categories.
You can select Manage credential aliases to
manage your credential aliases and create
new ones in the Connection & Credential
Aliases list.

Query

The query Splunk uses to search your data.
This field is required.
For example, the query
sourcetype="adc_access_log"
instructs the Splunk Poller integration
to retrieve all logs with the source type
adc_access_log.

Advanced settings
Field

Description

Max documents per query

The maximum number of documents retrieved
each time log data is fetched from Splunk.
Default: 10,000.

Splunk Request Timeout (seconds)

The maximum time, in seconds, allowed for
data retrieval before the request times out.

Splunk TCP integration configuration fields
Description of the fields on the Splunk TCP integration configuration forms for Health Log
Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3641


<!-- page 3642 -->
Provide details
Field

Description

Integration Name

Unique name of this integration. For example:
My Splunk TCP integration. This field is
required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
MID server name

MID Server to which log data from Splunk is
pulled. This field is required.

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
• If log ingestion is not enabled for
the selected MID Server, Health Log
Analytics enables it automatically.
Port

The port for the MID Server. This field is
required.
Make sure that your organization’s security
team opens the selected port on the MID
Server.

Description

Option to add a brief description of the
integration to help identify it.

Transport

The protocol used for streaming log messages
to your ServiceNow instance: TCP. This field is
read-only.

Use Cooked Data

Option to ingest log data from Splunk in the
preprocessed ("cooked") format that Splunk
uses on the forwarder.
Ingesting data into HLA in this format ensures
that each log line retains the relevant
contextual information that Splunk embeds
into it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3642


<!-- page 3643 -->
Advanced settings
Field

Description

Use SSL/TLS

Option for selecting to use SSL/TLS, for
enhanced data security and protection.

Note: SSL/TLS must be enabled if
you want to send logs in a compressed
format.
Lookup hostnames

Option for selecting to perform DNS lookup to
resolve IPs to hostnames. The default value is
false.

Use Forwarder TimeZone

Option to pass information about the time
zone in which the forwarder is located.
The MID Server uses this information to adjust
for the time zone from which the logs arrive.
This option is displayed when Use Cooked
Data is selected. It is relevant when using
Splunk Universal Forwarders.

Enable Compression

Option to send logs in compressed format.
Sending logs in a compressed format
minimizes the size of the data being
transferred, which is important when dealing
with large volumes of log data.
This option is displayed when Use Cooked
Data and Use SSL/TLS are selected. It
is relevant when using Splunk Universal
Forwarders.

Sub sample drop ratio

The ratio of logs to drop. The default value is -1:
no logs are dropped.
For example: If you want one out of every five
logs to be dropped, change the value to 5.

Sub sample receive ratio

The ratio of logs to receive. The default value is
-1: no logs are received.
For example: If you want one out of every five
logs to be received, change the value to 5.

Max length in bytes

The maximum length of log messages in bytes.
The default value is 32766.

Character encoding

The character encoding for this data input.
Default is UTF-8.

Boss thread count

The number of threads that manage
connections.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3643


<!-- page 3644 -->
Advanced settings (continued)
Field

Description

Worker thread count

The number of threads that handle incoming
data.

Read timeout seconds

The timeout in seconds since the last read.
When the timeout expires, the system closes
the channel.

Default timezone

The time zone of events that the system will
use if a log does not specify the time zone.
By default, the system uses GMT in such
cases, but you can specify a different time
zone.

Drop if queue is full

Option for selecting to discard logs if there is a
load on the MID Server.

Splunk UDP integration configuration fields
Description of the fields on the Splunk UDP integration configuration forms for Health Log
Analytics.
Provide details
Field

Description

Integration Name

Unique name of this integration. For example:
My Splunk UDP integration. This field is
required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
MID server name

MID Server to which log data from Splunk is
pulled. This field is required.

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
• If log ingestion is not enabled for
the selected MID Server, Health Log
Analytics enables it automatically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3644


<!-- page 3645 -->
Provide details (continued)
Field

Description

Port

The port for the MID Server. This field is
required.

Note: Make sure that your
organization’s security team opens the
selected port on the MID Server.
Description

Option to add a brief description of the
integration to help identify it.

Transport

The protocol used for streaming log messages
to your ServiceNow instance: UDP. This field is
read-only.

Advanced settings
Field

Description

Lookup hostnames

Option for selecting to perform DNS lookup to
resolve IPs to hostnames. The default value is
false.

Sub sample receive ratio

The ratio of logs to receive. The default value is
-1: no logs are received.
For example: If you want one out of every five
logs to be received, change the value to 5.

Character encoding

The character encoding for this data input. The
default value is UTF-8. This field is read-only.

Drop if queue is full

Option for selecting to discard logs if there is a
load on the MID Server.

Sub sample drop ratio

The ratio of logs to drop. The default value is -1:
no logs are dropped.
For example: If you want one out of every five
logs to be dropped, change the value to 5.

Max length in bytes

The maximum length of log messages in bytes.
The default value is 32766.

Default timezone

The time zone of events that the system will
use if a log does not specify the time zone.
By default, the system uses GMT in such
cases, but you can specify a different time
zone.

TCP integration configuration fields
Description of the fields on the TCP integration configuration forms for Health Log Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3645


<!-- page 3646 -->
Provide details tab
Field

Description

Integration Name

Unique name of this integration. For example:
My TCP integration. This field is required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
MID server name

The MID Server to which the logs are
streamed. This field is required.
• You can select only MID Servers with log
ingestion capability that support basic
authentication. MID Servers that support
mTLS are not listed.
• The default maximum number of data inputs
streaming logs to a single MID Server is
10. You can modify this number in the MID
Server properties.

Port

The port for the MID Server. This field is
required.
Select a unique port from the array. The
placeholder shows the range of ports
from which to choose. Make sure that your
organization’s security team opens the
selected port.

Service instance

The service instance to which to bind the log
data. This field is required.

Transport

The protocol used for streaming log messages
to your ServiceNow instance: TCP. This field is
read-only.

Description

Option to add a brief description of the
integration to help identify it.

Advanced settings
Field

Description

Use SSL/TLS

Option for selecting to use SSL/TLS.

Lookup hostnames

Option for selecting to perform DNS lookup to
resolve IPs to hostnames.

Boss thread count

The number of threads that manage
connections.

Worker thread count

The number of threads that handle incoming
data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3646


<!-- page 3647 -->
Advanced settings (continued)
Field

Description

Read timeout seconds

The time zone of events that the system will
use if a log does not specify the time zone.
By default, the system uses GMT in such
cases, but you can specify a different time
zone.

Default timezone

The default time zone of events. The system
uses this default when the log does not
specify a time zone.

Sub sample drop ratio

The ratio of events to drop.

Sub sample receive ratio

The ratio of events to receive.

Max length in bytes

The maximum length of log messages in bytes.

Character encoding

The character encoding for this data input.

Drop if queue is full

Option for selecting to discard logs if there is a
load on the MID Server.

Line breaker delimiters

The line break character separating the raw
log lines.
Splitting values must be separated by a
comma followed by a space: ", ". For example:
"\r, \n, , splitHere, ".

UDP integration configuration fields
Description of the fields on the UDP integration configuration forms for Health Log Analytics.
Provide details tab
Field

Description

Integration Name

Unique name of this integration. For example:
My UDP integration. This field is required.

Note: When you fill in this field, the
generic name displayed on the form
adjusts automatically to match the name
you entered.
MID server name

The MID Server to which the logs are
streamed. This field is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3647


<!-- page 3648 -->
Provide details tab (continued)
Field

Description

Note:
• You can select only MID Servers with
log ingestion capability that support
basic authentication. MID Servers that
support mTLS are not listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
Service instance

The service instance (formerly the application
service) to which to bind the log data. This
field is required.

Port

The port for the MID Server. This field is
required.
The port must be within the range 6000-6200.
Make sure that your organization’s security
team opens the selected port on the MID
Server.

Transport

The protocol used for streaming log messages
to your ServiceNow instance: UDP. This field is
read-only.

Description

Option to add a brief description of the
integration to help identify it.

Advanced
Field

Description

Default timezone

The time zone of events that the system will
use if a log does not specify the time zone.
By default, the system uses GMT in such
cases, but you can specify a different time
zone.

Sub sample drop ratio

The ratio of events to drop. The default value is
-1.

Sub sample receive ratio

The ratio of events to receive. The default
value is -1.

Rate limit

Limitation on the number of events per second
that the data input processes. The default
value is -1.

Max length in bytes

The maximum length of log messages, in
bytes. The default value is 32,766.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3648


<!-- page 3649 -->
Advanced (continued)
Field

Description

Character encoding

The character encoding for this data input. The
default value is UTF-8. This field is read-only.

Drop if queue is full

Option for selecting to discard logs if many
processes are waiting in the queue to access
the MID Server.

Data input configuration field descriptions
This section provides descriptions of the fields on the Health Log Analytics data input
configuration forms.
Amazon CloudWatch data input configuration fields
Description of the fields on the Amazon CloudWatch data input configuration form.

Basic configuration
Field

Description

Name

Name of the new data input. This field is
required.

Description

Description of the data input.

Execute on

Option to select whether to use a specific MID
Server or a MID Server cluster.

MID

(Only when the Execute on field is set to
Specific MID Server)
MID Server to which log data from Amazon
CloudWatch is pulled.

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
• If log ingestion is not enabled for
the selected MID Server, Health Log
Analytics enables it automatically.
This field is required.
MID Server Cluster

(Only when Execute on is set to MID Server
cluster.)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3649


<!-- page 3650 -->
Field

Description

The MID Server cluster to which the log data is
pulled.
The data input runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the data input tasks to
the next available MID Server in the cluster
according to the configured order.

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the data input form, the MID
Server clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• The default maximum number of data
inputs streaming logs to a single MID
Server is 10. A cluster passes capacity
validation if it contains at least one
MID Server with fewer than 10 data
inputs running on it, even when that
MID Server is down.
For more information about MID Server
clusters, see Configure a MID Server cluster

.

This field is required.
Service instance

The service instance to which to bind the log
data.

Note: If no relevant service instance
exists, Create an service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
This field is required.
The following fields show read-only information:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3650


<!-- page 3651 -->
Field

Description

Status

Status of the data input.

Transport

Protocol used to stream the log data.
This data input uses Amazon CloudWatch to
stream log data to your instance.

Sources count

The number of log sources this data input has
created.

Disabled since

The time when the data input stopped or
failed.

Last log time

The time when the last log streamed in the
data input.

Error message

The streaming error.
This field is populated automatically. It
displays only when a streaming error has
occurred.

Query settings tab
Field

Description

Example

From

The date and time to start
reading the data. Data older
than this date and time is not
read.

Now -1 week

Note: Setting this
value to a past date
might require the
system to read large
amounts of data, causing
congestion.
This field is required.
Group Name(s)

The log groups to search. If
hla-cw-loggroup1,hla-cwmultiple log groups must be
loggroup2
searched, specify the groups
in a comma-separated list.
To fetch log data from all
groups, use an asterisk (*) as a
wildcard character.
This field is required.

Prefix

Name prefix for the Amazon
CloudWatch log streams to
read from. The data input
reads only from log streams
with this name prefix.

hla-cw

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3651


<!-- page 3652 -->
Query settings tab (continued)
Field

Description

Example

Note: Only a single log
stream prefix per data
item is supported. For
multiple prefixes, create
multiple data inputs.
Filter pattern

Pattern by which to filter
incoming events.
Various types of filter patterns
are supported. For example:
• A pattern for fetching log
events that contain a single
term.
• A pattern for fetching log
events that contain multiple
terms.
• A pattern for fetching log
events that include a term
and exclude another.

Note: Filter patterns
are case sensitive.
For more information,
see https://
docs.aws.amazon.com/
AmazonCloudWatch/
latest/logs/
FilterAndPatternSyntax.html

• Pattern for fetching log
events that contain a single
term, "STATUS_CODE":
"STATUS_CODE"
• Pattern for fetching log
events that contain multiple
terms, “STATUS_CODE” and
“200”:
“STATUS_CODE 200”
• Pattern for fetching log
events that include a term,
“STATUS_CODE,” and
exclude another term,
“200”:
“STATUS_CODE” – “200”

Transport tab
Field

Description

AWS credentials

Field that refers to the AWS Credentials list
(aws_credentials.list). The list contains the
AWS access and secret access keys.

AWS region

The AWS region where the Amazon
CloudWatch cluster runs, for example, uswest-1.
For a list of AWS regions, see https://
docs.aws.amazon.com/AWSEC2/latest/
UserGuide/using-regions-availabilityzones.html concepts-regions
This field is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3652


<!-- page 3653 -->
Advanced configuration
Advanced configuration form
Field

Description

Default value

Connection timeout

The number of milliseconds to wait
before timing out the AWS connection
attempt.

1000

Batch size

The maximum number of logs retrieved
per query.

2500

Socket timeout

The number of milliseconds to wait
before timing out a data transfer over an
established connection.

10000

Default timezone

The default timezone if the log date
and time doesn't include timezone
information.

GMT

Sub sample drop ratio

The number of logs to batch together,
out of which one will be discarded. This
setting is used to reduce the number of
fetched logs.

-1

Sub sample receive ratio

The number of logs to batch together,
out of which all but one will be
discarded. This setting is used to
decrease the number of received logs.

-1

Max length in bytes

The maximum length of log messages, in 32766
bytes.

Sleep interval

The interval, in seconds, to wait before
querying again after a query has
returned no logs.

60

Polling interval

The interval, in seconds, to wait before
polling for new logs.

0

Drop if queue is full

Option for selecting to discard logs if
there is a load on the MID Server.

False

Amazon S3 data input configuration fields
Description of the fields on the Amazon S3 data input configuration form.

Basic configuration
Field

Description

Name

Name of the new data input. This field is
required.

Description

Description of the data input.

Execute on

Option to select whether to use a specific MID
Server or a MID Server cluster.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3653


<!-- page 3654 -->
Field

MID

Description

(Only when the Execute on field is set to
Specific MID Server)
MID Server to which log data from Amazon S3
is pulled.

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
• If log ingestion is not enabled for
the selected MID Server, Health Log
Analytics enables it automatically.
This field is required.
MID Server Cluster

(Only when Execute on is set to MID Server
cluster.)
The MID Server cluster to which the log data is
pulled.
The data input runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the data input tasks to
the next available MID Server in the cluster
according to the configured order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3654


<!-- page 3655 -->
Field

Description

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the data input form, the MID
Server clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• The default maximum number of data
inputs streaming logs to a single MID
Server is 10. A cluster passes capacity
validation if it contains at least one
MID Server with fewer than 10 data
inputs running on it, even when that
MID Server is down.
For more information about MID Server
clusters, see Configure a MID Server cluster

.

This field is required.
Service instance

The service instance to which to bind the log
data.

Note: If no relevant service instance
exists, Create an service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
This field is required.
The following fields show read-only information:

Field

Description

Status

Status of the data input.

Transport

Protocol used to stream the log data.
This data input uses Amazon S3 to stream log
data to your instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3655


<!-- page 3656 -->
Field

Description

Sources count

The number of log sources this data input has
created.

Disabled since

Time when the data input stopped or failed.

Last log time

Time when the last log streamed in the data
input.

Error message

The streaming error.
This field is populated automatically. It
displays only when a streaming error has
occurred.

Query settings tab
Field

Description

Example

From/To

Starting and ending dates and From: Now -1 week
time for reading the data.
To: 2300-01-01 15:59:59
• From: Data older than this
date and time is not read.

Note: Setting this
value to a past date
might require the
system to read large
amounts of data,
causing congestion.
• To: Data newer than this
date and time is not read.
For live data, set this date
far into the future.
This field is required.
Bucket name

The Amazon S3 bucket to
stream.

my-s3-bucket

This field is required.
Prefix

Prefix for the objects to be
fetched. The data input
fetches only objects that
begin with this prefix. This
field is typically used to fetch
only specific folders in a
bucket.

/only/this/folder/

Include

File or object to include when
the system performs pattern
matching.

.*include-me.*

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3656


<!-- page 3657 -->
Query settings tab (continued)
Field

Description

Example

Exclude

File or object to exclude when
the system performs pattern
matching.

.*skip-me.*

Transport tab
Field

Description

AWS credentials

Field that refers to the AWS Credentials list
(aws_credentials.list). The list contains the
AWS access and secret access keys.

AWS region

The AWS region where the Amazon S3 bucket
is located, for example, us-west-1.
For a list of AWS regions, see https://
docs.aws.amazon.com/AWSEC2/latest/
UserGuide/using-regions-availabilityzones.html concepts-regions
This field is required.

Advanced configuration
Advanced configuration form
Field

Description

Default value

Anonymous

Option to force accessing the
Amazon S3 bucket without
credentials, while ignoring
default credentials if they
exist.

False

Traverse

Option to access each
directory in the bucket.

False

Object sorted by Last
Modified Time

Option to fetch objects if the
objects in the bucket are
sorted by time.

False

Connection timeout

The number of milliseconds
to wait before timing out
the attempt to establish a
connection to AWS.

100

Threadpool size

The number of concurrent
threads that are downloading
files from the bucket.

1

Buffer size

Size of the download buffer, in 100MB
bytes.

Socket timeout

The number of milliseconds
to wait before timing out data

10000

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3657


<!-- page 3658 -->
Advanced configuration form (continued)
Field

Description

Default value

transfer over an established
connection.
Max retry for file

The maximum number of
10
times to retry file processing in
case of failure.

Default timezone

The default timezone if the
log doesn't include timezone
information.

Sub sample drop ratio

The number of events to batch -1
together, out of which one will
be discarded. This setting is
used to reduce the number of
fetched events.

Sub sample receive ratio

The number of events to batch -1
together, out of which all but
one will be discarded. This
setting is used to decrease
the number of received
events.

Rate limit

The maximum number of
events per second that this
data input processes.

Max length in bytes

The maximum length, in bytes, 32766
of events.

Character encoding

The character encoding for
this data input.

UTF-8

Sleep interval

The interval, in seconds, to
wait before querying again
after a query has returned no
events.

60

Polling interval

The interval, in seconds, to
wait before polling for new
events.

0

Drop if queue is full

Option for selecting to discard False
logs if there is a load on the
MID Server.

UTC

-1

Apache Kafka data input configuration fields
Description of the fields on the Apache Kafka data input configuration form.

Basic configuration
Field

Description

Name

Name of the new data input. This field is
required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3658


<!-- page 3659 -->
Field

Description

Description

Description of the data input.

Execute on

Option to select whether to use a specific MID
Server or a MID Server cluster.

MID

(Only when the Execute on field is set to
Specific MID Server)
MID Server to which log data from Apache
Kafka is pulled.

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
• If log ingestion is not enabled for
the selected MID Server, Health Log
Analytics enables it automatically.
This field is required.
MID Server Cluster

(Only when Execute on is set to MID Server
cluster.)
The MID Server cluster to which the log data is
pulled.
The data input runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the data input tasks to
the next available MID Server in the cluster
according to the configured order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3659


<!-- page 3660 -->
Field

Description

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the data input form, the MID
Server clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• The default maximum number of data
inputs streaming logs to a single MID
Server is 10. A cluster passes capacity
validation if it contains at least one
MID Server with fewer than 10 data
inputs running on it, even when that
MID Server is down.
For more information about MID Server
clusters, see Configure a MID Server cluster

.

This field is required.
Service instance

The service instance to which to bind the log
data.

Note: If no relevant service instance
exists, Create an service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
This field is required.
The following fields show read-only information:

Field

Description

Status

Status of the data input.

Transport

Protocol used to stream the log data.
This data input uses Apache Kafka to stream
log data to your instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3660


<!-- page 3661 -->
Field

Description

Sources count

The number of log sources this data input has
created.

Disabled since

The time when the data input stopped or
failed.

Last log time

The time when the last log streamed in the
data input.

Error message

The streaming error.
This field is populated automatically. It
displays only when a streaming error has
occurred.

Query Settings tab
Field

Description

Example

From

Starting date and time for
reading the data. Data older
than this date and time is not
read.

Now -1 week

Note: Setting this
value to a past date
might require the
system to read large
amounts of data, causing
congestion.
This field is required.

Transport tab
Field

Description

Example

Kafka node names

A comma-separated
list in the format
HOST:PORT,HOST:PORT. The
list does not have to include
all the Apache Kafka Cluster
servers.

123.4.5.6:9092,123.3.4.5:9093

Topics

A comma-separated list of
topics to which the data input
must subscribe.

FirstTopic,SecondTopic,ThirdTopic

This field is required.
Kafka credentials

Reference to the Apache
Kafka credentials.

None

You can display the Kafka SSL
credentials form by selecting
the information icon (

) and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3661


<!-- page 3662 -->
Transport tab (continued)
Field

Description

Example

then selecting Open Record.
The form enables you to
choose the security protocol
used for authenticating
with Apache Kafka from the
following options:
• SSL - SSL channel.
• SASL_SSL - SASL
authenticated, SSL channel.
• SASL_PLAINTEXT SASL authenticated, nonencrypted channel.
For a description of the
fields on the Kafka SSL
credentials form, see Kafka
SSL credentials fields.
Group Id

The name of the Apache Kafka logs
Consumer Group.

Advanced configuration
Advanced configuration form
Field

Description

Default value

Timeout

The time, in milliseconds,
500
spent waiting in the poll if data
is not available in the topics.

Node discovery timeout

The time, in milliseconds,
before node discovery times
out.

30

Default timezone

The default timezone if the
log doesn't include timezone
information.

GMT

Sub sample drop ratio

The number of events to batch -1
together, out of which one will
be discarded. This setting is
used to reduce the number of
fetched events.

Sub sample receive ratio

The number of events to batch -1
together, out of which all but
one will be discarded. This
setting is used to decrease
the number of received
events.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3662


<!-- page 3663 -->
Advanced configuration form (continued)
Field

Description

Default value

Max length in bytes

The maximum length, in bytes, 32766
of events.

Character encoding

The character encoding for
this data input.

Drop if queue is full

Option for selecting to discard False
logs if there is a load on the
MID Server.

UTF-8

Kafka SSL credentials fields
Description of the fields on the Kafka SSL credentials form.
SSL security protocol
FIeld

Description

SSL keystore

The content of an actual server.keystore.jks
file, encoded as a Base64 string.

SSL keystore type

Format of the SSL keystore file. Default: Java
KeyStore (JKS).

SSL keystore password

Password to the keystore, identical to the
value of the ssl.keystore.password property in
Apache Kafka.

SSL key password

Password, identical to the ssl.key.password
property value in Apache Kafka.

SSL truststore

The content of an actual client.truststore.jks
file, encoded as a Base64 string.

SSL truststore type

Format of the truststore file. Default: Java
KeyStore (JKS).

SSL truststore password

Password to the truststore, identical to the
value of the ssl.truststore.password property in
Apache Kafka.

SSL provider

Name of the security provider used for SSL
connections.

Disable hostname verification

Option to disable verification of the hostname.

Additional Kafka consumer properties

Semicolon-separated string of additional
Kafka consumer properties. For example:
ssl.protocol=TLSv1.2;ssl.enabled.protocols=TLSv1.2,TLSv1.1

SASL_SSL security protocol
FIeld

Description

SSL truststore

The content of an actual client.truststore.jks
file, encoded as a Base64 string.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3663


<!-- page 3664 -->
SASL_SSL security protocol (continued)
FIeld

Description

SSL truststore type

Format of the SSL truststore file. Default: Java
KeyStore (JKS).

SSL truststore password

Password to the truststore, identical to the
value of the ssl.truststore.password property in
Apache Kafka.

SSL provider

Name of the security provider used for SSL
connections.

Disable hostname verification

Option to disable verification of the hostname.

User name

The user name, if any, associated with this
credential.

Note: The specified user name is

used for SASL authentication using
JAAS. The following JAAS configuration
is passed to the Kafka Server:
org.apache.kafka.common.security.plain.Pl
required
username=<user_name>
password=<password>
Password

The password associated with this credential.

Note:

• The specified password is used for
SASL authentication using JAAS.
The following JAAS configuration
is passed to the Kafka Server:
org.apache.kafka.common.security.plain.
required
username=<user_name>
password=<password>
• The password you specify is invisible.
It is stored in the database in
encrypted form.
Additional Kafka consumer properties

Semicolon-separated string of additional
Kafka consumer properties. For example:
ssl.protocol=TLSv1.2;ssl.enabled.protocols=TLSv1.2,TLSv1.1

SASL_PLAINTEXT security protocol
User name

The user name, if any, associated with this
credential.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3664


<!-- page 3665 -->
SASL_PLAINTEXT security protocol (continued)

Note: The specified user name is

used for SASL authentication using
JAAS. The following JAAS configuration
is passed to the Kafka Server:
org.apache.kafka.common.security.plain.Pl
required
username=<user_name>
password=<password>
Password

The password associated with this credential.

Note:

• The specified password is used for
SASL authentication using JAAS.
The following JAAS configuration
is passed to the Kafka Server:
org.apache.kafka.common.security.plain.
required
username=<user_name>
password=<password>
• The password you specify is invisible.
It is stored in the database in
encrypted form.
Additional Kafka consumer properties

Semicolon-separated string of additional
Kafka consumer properties. For example:
ssl.protocol=TLSv1.2;ssl.enabled.protocols=TLSv1.2,TLSv1.1

Cribl data input configuration fields
Description of the fields on the Cribl data input configuration form.
Getting Started
Field

Description

Data input name

Name of the new data input. This field is
required.

Description

Description of the data input.

MID server

The MID Server to which the Cribl logs are
streamed.
This field is required.

Port

The port on the MID Server.
Choose a port within the suggested range
from the array. The port must not be occupied
by another process. Make sure that your
organization’s security team opens the
selected port.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3665


<!-- page 3666 -->
Getting Started (continued)
Field

Description

This field is required.
Config
Field

Description

Cribl instance URL

The URL of the Cribl instance.
HLA uses this URL to establish the connection
with the Cribl instance.

Cribl API token

The Cribl API token HLA uses to authenticate
with Cribl and make API calls.

Process
Field

Description

Cribl route

The Cribl route that directs log data to a
specific destination.
This field is auto-populated with a drop-down
list of all available routes, each configured
with a default destination. You must select
the desired route from this list. This field is
required.

Cribl destination

The created Cribl destination.
The Cribl destination points to the MID Server
host and port configured in the data input. This
field is read-only.

Edge Delta data input configuration fields
Description of the fields on the Edge Delta data input configuration form.
Edge Delta data input configuration form
Field

Description

Data input name

Name of the new data input. This field is required.

Description

Description of the data input.

Transport

The Edge Delta destination used for streaming log messages to the
ServiceNow instance. The options are:
• TCP - Frequently used for handling large volumes of log data.
If you select TCP, you must provide the MID Server and port.
When choosing the TCP transport option, create a TCP destination
in Edge Delta to send log data to the instance from any source,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3666


<!-- page 3667 -->
Edge Delta data input configuration form (continued)
Field

Description

using the same MID Server host and port you have configured for
the Edge Delta data input.

Note: For TCP, TLS/SSL is not supported.
• HTTP: Frequently used for sending smaller logs via RESTful APIs,
HTTP, or HTTPS for secure transmission.

Note: For the HTTP protocol, authentication is used.
If you select HTTP, you must provide the MID Web Server that is
running on the MID Server. The system then populates the MID
Server and port fields automatically, based on the provided MID
Web Server.
Depending on the MID Web Server configuration, you can send
logs using either HTTP or HTTPS. If the Secure Connection check
box on the MID Web Server extension form is clear, use HTTP. If it is
selected, use HTTPS. For more information, see Event Management
MID Web Server extension form. In addition, if the Authentication
Type on the MID Web Server extension form is Basic, provide
Basic authentication details in the Authorization header. If the
Authentication Type is API Key, provide the key as “Key Api_Key".
When choosing the HTTP transport option, create an
HTTP destination in Edge Delta and enter the Endpoint
URL in the following format: http://{MID_SERVER_IP}:
{MID_WEB_SERVER_PORT}/api/mid/hla/raw. In Advanced Settings,
create two headers to be attached to the HTTP request:
◦ An Authorization header with the MID Web Server API key value or
basic credentials as MID Web Server configured.
◦ A Content-Type header named with the application/json value.
MID web server

The MID Web Server to which the log data is streamed.

MID server

The MID Server to which the Edge Delta logs are streamed.
This field is required. If you selected HTTP in the Transport field,
this field is populated automatically based on the selected MID Web
Server.

Port

The port on the MID Server used for listening to logs.
Choose a port within the suggested range from the array. In the case
of TCP transport, the port must not be occupied by another process.
Make sure that your organization’s security team opens the selected
port.
This field is required. If you selected HTTP in the Transport field,
this field is populated automatically based on the selected MID Web
Server.

Service instance

The service instance to which to bind the log data. This field is
required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3667


<!-- page 3668 -->
Edge Delta data input configuration form (continued)
Field

Description

Choosing the service instance enables HLA to correlate CIs and
service instances in the CMDB for root cause analysis.

Note: If no relevant service instance exists, Create an service
instance
and add CIs to it. Set the status of the new service
instance to Operational.
Elasticsearch data input configuration fields
Description of the fields on the Elasticsearch data input configuration form.

Basic configuration
Field

Description

Name

Name of the new data input. This field is
required.

Description

Description of the data input.

Execute on

Option to determine whether to use a specific
MID Server or a MID Server cluster.
This feature is supported in the Health
Log Analytics application, Version 26.0.17 February 2023 and later, available from the
ServiceNow Store .

MID

(Only when the Execute on field is set to
Specific MID Server)
MID Server to which log data from
Elasticsearch indices is pulled.

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
• If log ingestion is not enabled for
the selected MID Server, Health Log
Analytics enables it automatically.
This field is required.
MID Server Cluster

(Only when the Execute on field is set to
Specific MID Server Cluster)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3668


<!-- page 3669 -->
Field

Description

The MID Server cluster to which the log data is
pulled.
The data input runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the data input tasks to
the next available MID Server in the cluster
according to the configured order.
This feature is supported in the Health
Log Analytics application, Version 26.0.17 February 2023 and later, available from the
ServiceNow Store .

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the data input form, the MID
Server Clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• If Elasticsearch uses client certificate
or CA certificate authentication, all MID
Servers in the cluster must have the
appropriate certificates.
• The default maximum number of data
inputs streaming logs to a single MID
Server is 10. A cluster passes capacity
validation if it contains at least one
MID Server with fewer than 10 data
inputs running on it, even when that
MID Server is down.
For more information about MID Server
clusters, see Configure a MID Server cluster

.

This field is required.
Service instance

The service instance to which to bind the log
data. This field is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3669


<!-- page 3670 -->
Field

Description

Note: If no relevant service instance
exists, Create an service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
The following fields show read-only information:

Field

Description

Status

Status of the data input.

Transport

Protocol used to stream the log data.
This data input uses Elastic to stream log data
to your instance.

Sources count

The number of log sources this data input has
created.

Disabled since

The time when the data input stopped or
failed.

Last log time

The time when the last log streamed in the
data input.

Transport tab
Field

Description

Server URL

URL used to access the cluster. This field is
required.

Max connections per route

Maximum number of connections to be
opened per node. Default: 2.

Max scroll slices

The number of shards configured for the
relevant index in Elasticsearch.
This number tells Elastic how many parallel
queries to execute in each polling request.

Proxy host

Host name of the HTTP proxy through which
requests are sent.

Proxy port

Port of the HTTP proxy through which requests
are sent.

Authentication method

The authentication method used to
authenticate the data input to Elasticsearch.
The options are: Basic auth, apiKey, or client
certificate.

Note: When you select the
required authentication method, the
corresponding credentials fields display
on the form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3670


<!-- page 3671 -->
Transport tab (continued)
Field

Description

Basic auth credentials

User name and password used to connect to
the Elasticsearch search engine.

Note: Fill in either this field or the AWS
credentials field.
AWS credentials

AWS credentials to use to connect to the AWShosted Elasticsearch search engine.

Note: Fill in either this field or the Basic
auth credentials field.
AWS region

AWS region where the Elasticsearch cluster
runs.

API key credentials

The API key used to connect to the
Elasticsearch search engine.

Client certificate

The client certificate used to connect to the
Elasticsearch search engine.

Use MID certificate policy check

Option to enable the MID certificate policy
check.
Select this option if you want to ship your logs
encrypted using SSL TLS. Then navigate to
All > MID Server > MID Security Policy and
add the MID certificate policy check to the
table. For more information, see MID Server
certificate check policies .

Query Settings tab
Field

Description

Example

From/To

From and to dates and time for reading
the data.

From: 1970-01-01
15:59:59

• From: Don't read data older than this
date.

To: 2300-01-01
15:59:59

Note: Setting this value to
a past date might require the
system to read large amounts of
data, causing congestion.
• To: Don't read data newer than this
date. For live data, set this date far into
the future.
Use cross-cluster search

Option for searching for data across
Elasticsearch clusters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3671


<!-- page 3672 -->
Query Settings tab (continued)
Field

Description

Example

When this check box is selected, the
Clusters to search field displays.

Note: Your settings in the Use

minimal privileges check box
and the Delay in reading current
timestamp (seconds) field on the
Advanced configuration form
affect how data is collected across
multiple clusters.
Clusters to search

The Elasticsearch clusters to search.

east,west,south

This field displays only when the Use
cross-cluster search check box is
selected.
Do one of the following:
• Leave this field empty or enter “*” to
search all the remote clusters defined
in Elasticsearch.
• Specify the clusters to search in a
comma-separated list.

Note: To also search the local
cluster, add a comma at the
beginning or end, or add two
commas in succession to the
list. For example: “east,,west” or
“,east,west” or “*,”
Index prefix

Prefix for the Elasticsearch indices to
read from. The data input reads only
from indices with this prefix. This field is
required.

Use minimal privileges

Option for reading log data directly
from the Elasticsearch indices with the
configured prefix.

only-read-theseindices-*

• When selected, the data input
reads the log data directly from
the Elasticsearch indices with the
configured prefix. To perform this task,
it needs only read privileges.

Note: When this check box
is selected and you're using
cross-cluster search, data is
collected from all the clusters
simultaneously.
• When clear, the data input fetches all
indices with the prefix, filters them,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3672


<!-- page 3673 -->
Query Settings tab (continued)
Field

Description

Example

and reads the log data from the filtered
indices. Performing this task requires
additional privileges.

Note: Leaving this check
box clear when using crosscluster search affects how data
is collected from the clusters.
For more information, see the
Enabling and Using Cross-Cluster
Search for Elasticsearch Data
Inputs in Health Log Analytics
[KB1556079]
article in the Now
Support Knowledge Base.
For additional information about
streaming logs using the Elasticsearch
data input, see the Stream logs using
Elasticsearch data input - Advanced
guide [KB1080162]
article in the Now
Support Knowledge Base.
Document timestamp field

Timestamp field in documents stored in
the read indices. This field is required.

Timestamp field format

Format of the timestamp field in the
documents.

yyyy-MMdd'T'HH:mm:ss.SSSSSSS'Z'

If no format is specified, the default
Unix epoch time format is used, in
milliseconds. For example:
1684168407 (May 15, 2023 4:33:27 PM)
Term filters

JSON map of the terms to filter.

Note: Avoid using the term query

{"severity": ["error",
"warning"]}

for text fields. If the target field is
mapped as both text and keyword,
reference the keyword by using
fieldname.keyword.
Max documents per query

Maximum number of documents fetched
in a single query.

Sliced-scrolling tiebreaker

Value used to slice the data. Each slice is
scrolled in parallel. Default: _id

Search-after tiebreaker

Unique value per document to use as
tiebreaker when sorting log entries by
timestamp.

Use search-after API

Option for toggling between using slicedscrolling and search-after APIs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3673


<!-- page 3674 -->
Query Settings tab (continued)
Field

Description

Example

Note: Sliced-scrolling APIs are
preferable when reading historical
data, while search-after APIs are
better for reading real-time data.
Index time-suffix format

Format of the time suffix when using
time-based index names, such as
[logstash-]YYYY.MM.DD.

uuuu.MM.dd

When using aliases, leave this field
empty.

Advanced configuration
Advanced configuration form
Field

Description

Data reading timeout (milliseconds)

The duration of time, in milliseconds, before a
request to the Elasticsearch cluster times out.

Index discovery interval (seconds)

The number of seconds between intermittent
MID Server requests to the Elasticsearch
cluster for new indices from which to read
data.

Scroll context time (milliseconds)

The lifetime of the created scroll when using
the scroll API to read data from Elasticsearch.
For more information, see the Elasticsearch
scroll API documentation .

Event processor workers

The maximum number of CPU cores used
in parallel to process events fetched from
Elasticsearch. A higher setting increases the
data input throughput at the cost of higher
CPU usage.

Worker queue size

The maximum number of batches to queue
for processing. A higher setting increases
throughput, at the cost of higher RAM usage.

Default timezone

The default timezone if the event date and
time doesn't include timezone information.

Sub sample drop ratio

The number of events to batch together, out
of which one will be discarded. This setting is
used to reduce the number of fetched events.

Sub sample receive ratio

The number of events to batch together, out
of which all but one will be discarded. This
setting is used to decrease the number of
received events.

Character encoding

The character encoding for this data input.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3674


<!-- page 3675 -->
Advanced configuration form (continued)
Field

Description

Sleep interval (seconds)

The interval, in seconds, to wait before
querying again after a query has returned no
data.

Max length in bytes

The maximum length, in bytes, of log
messages.

Delay in reading current timestamp (seconds)

The number of seconds before current time to
query to include delayed data.
The configured number of seconds is
subtracted from the current time for reading
the last timestamp.

Note: If this value is 0 and data
is collected from multiple clusters
simultaneously, the query may not
include data that was sent with a delay
on one of the clusters,
GCP PubSub data input configuration fields
Description of the fields on the GCP PubSub data input configuration form.

Basic configuration
Field

Description

Name

Name of the new data input. This field is
required.

Port

The port for the MID Server.
Select a unique port from the array. The
placeholder shows the range of ports
from which to choose. Make sure that your
organization’s security team opens the
selected port.
This field is required.

Execute on
MID

Option to select whether to use a specific MID
Server or a MID Server cluster.
(Only when the Execute on field is set to
Specific MID Server)
The MID Server to which the logs are
streamed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3675


<!-- page 3676 -->
Field

Description

Note:
• You can select only MID Servers with
log ingestion capability that support
basic authentication. MID Servers that
support mTLS are not listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
• If log ingestion is not enabled for
the selected MID Server, Health Log
Analytics enables it automatically.
This field is required.
MID Server Cluster

(Only when Execute on is set to MID Server
cluster.)
The MID Server cluster to which the log data is
pulled.
The data input runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the data input tasks to
the next available MID Server in the cluster
according to the configured order.

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the data input form, the MID
Server clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• The default maximum number of data
inputs streaming logs to a single MID
Server is 10. A cluster passes capacity
validation if it contains at least one
MID Server with fewer than 10 data
inputs running on it, even when that
MID Server is down.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3676


<!-- page 3677 -->
Field

Description

For more information about MID Server
clusters, see Configure a MID Server cluster

.

This field is required.
Service instance

The service instance to which to bind the log
data. This field is required.

Note: If no relevant service instance
exists, Create an service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
The fields in the following table show read-only information.

Field

Description

Transport

Protocol used to send the log data: PubSub.

Sources count

The number of log sources this data input has
created.

Status

Status of the data input.

Disabled since

The time when the data input stopped or
failed.

Last log time

The time when the last log streamed in the
data input.

Transport tab
Field

Description

Project ID

The project ID of the Google Cloud project. For
example, my-project-id.

Topic Name

The Google Cloud Pub/Sub topic to which to
subscribe Health Log Analytics. For example,
my_topic.

GCP Credential Alias

The credential alias to be used.
Specify one GCP credential alias by selecting
the magnifying glass icon and then either
selecting an existing credential alias from
the Connection & Credential Aliases list, or
selecting New to create a new record. The
default is sn_occ.HLA_Credential_Alias.
For information about creating a credential
alias, see Credential aliases for Discovery .

Subscription Name

The subscription Health Log Analytics uses
to receive log data that is published on the
Google Cloud Pub/Sub topic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3677


<!-- page 3678 -->
Transport tab (continued)
Field

Description

If you leave this field blank, Health Log
Analytics uses ServiceNow-Subscription.

Advanced configuration
Advanced tab
Field

Description

Default value

Subscriber Thread Pool Size

The number of concurrent
threads that are downloading
files from the Google Cloud
Pub/Sub topic.

1

Default timezone

The default time zone of
events. The system uses this
default when the log does not
specify a time zone.

GMT

Max length in bytes

The maximum length of log
messages, in bytes.

32,766

Character encoding

(Read-only) The character
encoding for this data input.

UTF-8

Sub sample drop ratio

The ratio of events to drop.

-1

Sub sample receive ratio

The ratio of events to receive.

-1

Rate limit

The maximum number of
events per second that this
data input processes.

-1

Drop if queue is full

Option for selecting to discard Clear
logs if many processes are
waiting in the queue to access
the MID Server.

Microsoft Azure Event Hubs data input configuration fields
Description of the fields on the Microsoft Azure Event Hubs data input configuration form.

Basic configuration
Field

Description

Name

Name of the new data input. This field is
required.

Description

Description of the data input.

Execute on

Option to select whether to use a specific MID
Server or a MID Server cluster.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3678


<!-- page 3679 -->
Field

MID

Description

(Only when the Execute on field is set to
Specific MID Server)
MID Server to which log data from Microsoft
Azure Event Hubs is pulled.

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
• If log ingestion is not enabled for
the selected MID Server, Health Log
Analytics enables it automatically.
This field is required.
MID Server Cluster

(Only when Execute on is set to MID Server
cluster.)
The MID Server cluster to which the log data is
pulled.
The data input runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the data input tasks to
the next available MID Server in the cluster
according to the configured order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3679


<!-- page 3680 -->
Field

Description

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the data input form, the MID
Server clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• The default maximum number of data
inputs streaming logs to a single MID
Server is 10. A cluster passes capacity
validation if it contains at least one
MID Server with fewer than 10 data
inputs running on it, even when that
MID Server is down.
For more information about MID Server
clusters, see Configure a MID Server cluster

.

This field is required.
Service instance

The service instance to which to bind the log
data.

Note: If no relevant service instance
exists, Create an service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
This field is required.
The following fields show read-only information:

Field

Description

Status

Status of the data input.

Transport

Protocol used to stream the log data.
This data input uses Microsoft Azure Event
Hubs to stream log data to your instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3680


<!-- page 3681 -->
Field

Description

Sources count

The number of log sources this data input has
created.

Disabled since

The time when the data input stopped or
failed.

Last log time

The time when the last log streamed in the
data input.

Error message

The streaming error.
This field is populated automatically. It
displays only when a streaming error has
occurred.

Query settings tab
Field

Description

Example

From

Starting date and time for
reading the data. Data older
than this date and time is not
read.

Now -1 week

Note: Setting this
value to a past date
might require the
system to read large
amounts of data, causing
congestion.
This field is required.
Max batch size

The maximum number of
events passed to a single
process call.

100

Transport tab
Field

Description

Event Hubs namespace

The scoping container for the event hub or
hubs. This field is required.

Event Hub name

The event hub from which to fetch log data.
This field is required.

Event Hub credentials

Shared access authorization policy with which
to authenticate to the event hub. This field is
required.

Consumer Group name

The Consumer Group to use.
This field is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3681


<!-- page 3682 -->
Advanced configuration
Advanced configuration form
Field

Description

Default value

Restore point rate

The number of events the
data input can read before a
restore point is saved.

100

Processor threads count

The total number of
processor threads.

2

Operation timeout

The number of seconds to
wait before timing out event
hubs operations.

120

Receive idle timeout

The number of seconds to
60
wait before timing out receive
operations.

Prefetch count

The number of events
received in advance of event
hubs operations.

500

Default timezone

The default timezone if the
log doesn't include timezone
information.

GMT

Sub sample drop ratio

The number of events to
batch together, out of which
one will be discarded. This
setting is used to reduce the
number of fetched events.

-1

Sub sample receive ratio

The number of events to
batch together, out of which
all but one will be discarded.
This setting is used to
decrease the number of
received events.

-1

Max length in bytes

The maximum length, in
bytes, of events.

32766

Character encoding

The character encoding for
this data input.

UTF-8

Sleep interval

The interval, in seconds, to
wait before querying again
after a query has returned no
events.

60

Polling interval

The interval, in seconds, to
wait before polling for new
events.

0

Drop if queue is full

Option for selecting to
discard logs if there is a load
on the MID Server.

False

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3682


<!-- page 3683 -->
Microsoft Azure Log Analytics data input configuration fields
Description of the fields on the Microsoft Azure Log Analytics data input configuration form.

Basic configuration
Field

Description

Name

Name of the new data input. This field is
required.

Description

Description of the data input.

Execute on

Option to select whether to use a specific MID
Server or a MID Server cluster.

MID

(Only when the Execute on field is set to
Specific MID Server)
MID Server to which log data from Microsoft
Azure Log Analytics is pulled.

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
• If log ingestion is not enabled for
the selected MID Server, Health Log
Analytics enables it automatically.
This field is required.
MID Server Cluster

(Only when Execute on is set to MID Server
cluster.)
The MID Server cluster to which the log data is
pulled.
The data input runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the data input tasks to
the next available MID Server in the cluster
according to the configured order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3683


<!-- page 3684 -->
Field

Description

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the data input form, the MID
Server clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• The default maximum number of data
inputs streaming logs to a single MID
Server is 10. A cluster passes capacity
validation if it contains at least one
MID Server with fewer than 10 data
inputs running on it, even when that
MID Server is down.
For more information about MID Server
clusters, see Configure a MID Server cluster

.

This field is required.
Service instance

The service instance to which to bind the log
data.

Note: If no relevant service instance
exists, Create an service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
This field is required.
The following fields show read-only information:

Field

Description

Status

Status of the data input.

Transport

Protocol used to stream the log data.
This data input uses Microsoft Azure Log
Analytics to stream log data to your instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3684


<!-- page 3685 -->
Field

Description

Disabled since

The time when the data input stopped or
failed.

Sources count

The number of log sources this data input has
created.

Last log time

The time when the last log streamed in the
data input.

Error message

The streaming error.
This field is populated automatically. It
displays only when a streaming error has
occurred.

Query settings tab

Health Log Analytics uses the values set in these fields to generate the query
for receiving log data from Microsoft Azure Log Analytics. The Log query field
enables you to configure a custom query
Field

Description

Example

From

Starting date and time for
reading the data. Data older
than this date and time is not
read.

Now -1 week

Note: Setting this
value to a past date
might require the
system to read large
amounts of data, causing
congestion.
This field is required.
Data source name

The name of the table
in Microsoft Azure Log
Analytics where the data
input fetches the log data.
For more information, see
the View table information
section in the Microsoft Azure
documentation .

ContainerLog

This field is required.
Event time property name

The Microsoft Azure Log
Analytics field in which to
detect the event time.

TimeGenerated

This field is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3685


<!-- page 3686 -->
Query settings tab

Health Log Analytics uses the values set in these fields to generate the query
for receiving log data from Microsoft Azure Log Analytics. The Log query field
enables you to configure a custom query
(continued)
Field

Description

Example

Max documents per query

The highest number of rows
retrieved in each query.

500

Columns to select

Comma-separated list of
column names to return.

LogEntry,LogEntrySource

Note: This field is
ignored when you
provide a custom query.
Log query

A custom query for receiving
log data from Microsoft Azure
Log Analytics.
The settings in this field
override those in all other
fields on the Query settings
tab except the From field.
If the Log query field is
empty, Health Log Analytics
generates the query using the
values set in the other fields.
For the custom query, use the
following JSON format:
{"query": "query |
where TimeGenerated
> %s | take 500"}

{
"query":"Container
Log
| where
LogEntry contains
'cartservice'
| where
TimeGenerated > %s
| take 500",
"workspaces":
["defaultworkspace
-3ab145ff-f9cd-433f
-8533-d1b1ee24ae
e6-eus"],
"project":
["TimeGenerated",
"LogEntry",
"LogEntrySource"]
}

Transport tab
Field

Description

Redirect Url

The redirect URL of the access log application.
The URL refers to the Microsoft Azure
redirect_uri authorization property. For more
information, see the Authorization code URL
(GET request) section in the Microsoft Azure
documentation .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3686


<!-- page 3687 -->
Transport tab (continued)
Field

Description

This field is required.
Azure service principal credentials

The credentials used to access Microsoft
Azure resources.
Choose Client Secret from the drop-down list.

Note: You do not need Azure Enterprise
Agreement (EA) credentials.
This field is required.
Workspace Id

The Customer ID used to call the Microsoft
Azure Log Analytics REST API.

Advanced configuration
Advanced configuration form
Field

Description

Default value

Event Processor workers

The number of concurrent
event processing workers,
where each worker
processes a batch of events
independently.

4

Workers Queue Size

The queue size of the Event
Processor workers.

5

Sub sample drop ratio

The number of events to batch -1
together, out of which one will
be discarded. This setting is
used to reduce the number of
fetched events.

Sub sample receive ratio

The number of events to batch -1
together, out of which all but
one will be discarded. This
setting is used to decrease
the number of received
events.

Character encoding

The character encoding for
this data input.

UTF-8

Sleep interval

The interval, in seconds, to
wait before querying again
after a query has returned no
events.

60

Polling interval

The interval, in seconds, to
wait before polling for new
events.

0

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3687


<!-- page 3688 -->
Advanced configuration form (continued)
Field

Description

Default value

Drop if queue is full

Option for selecting to discard False
logs if there is a load on the
MID Server.

MID Server data input configuration fields
Description of the fields on the MID Server data input configuration form.

Basic configuration
Field

Description

Description

Description of the data input.

MID

The name of the MID Server from which the
logs are streamed.

The following fields show read-only information:

Field

Description

Status

Status of the data input.

Transport

Protocol used to stream the log data.
This data input uses the MID Server to stream
log data to your instance.

Sources count

The number of log sources this data input has
created.

Disabled since

The time when the data input stopped or
failed.

Last log time

The time when the last log streamed in the
data input.

Advanced configuration
Field

Description

Default value

Default timezone

The default time zone of
events. The system uses this
default when the log does not
specify a timezone.

GMT

Sub sample drop ratio

The ratio of events to discard.

-1

Sub sample receive ratio

The ratio of events to receive.

-1

Max length in bytes

The maximum length of log
messages, in bytes.

32766

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3688


<!-- page 3689 -->
Field

Description

Default value

Character encoding

The character encoding for
this data input.

UTF-8

Drop if queue is full

Option for discarding logs
if there is a load on the MID
Server.

REST API data input configuration fields
Description of the fields on the REST API data input configuration form.

Basic configuration
Field

Description

Name

Name of the new data input. This field is
required.

Description

Description of the data input.

MID Web Server

MID Server to which the log data is pulled.

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed. When you select the MID Server,
the MID and Port fields are completed
automatically.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
This field is required.
Service instance

The service instance to which to bind the log
data.

Note: If no relevant service instance
exists, Create an service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
This field is required.
The following fields show read-only information:

Field

Description

Status

Status of the data input.

Transport

Protocol used to stream the log data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3689


<!-- page 3690 -->
Field

Description

This data input uses REST to stream log data
to your instance.
Sources count

The number of log sources this data input has
created.

Disabled since

The time when the data input stopped or
failed.

Last log time

The time when the last log streamed in the
data input.

Rsyslog, Filebeat, or Winlogbeat data input configuration fields
Description of the fields on the Rsyslog, Filebeat, and Winlogbeat data input configuration forms.

Basic configuration
Getting Started tab
Field

Description

Data input name

Name of the new data input. This field is
required.

Description

Description of the data input.

MID Server

The MID Server to which the logs stream.

Note:
• You can select only MID Servers with
log ingestion capability that support
basic authentication. MID Servers that
support mTLS are not listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
This field is required.
Port

The port on the MID Server.
Choose a port within the suggested range
from the array. The port must not be occupied
by another process. Make sure that your
organization’s security team opens the
selected port.
This field is required.

Content pack

(Linux using Filebeat only) The content pack to
use.
Content packs contain default source
types and mapping script templates. Health
Log Analytics activates the selected pack

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3690


<!-- page 3691 -->
Getting Started tab (continued)
Field

Description

automatically and uses its mapping script for
mapping the data input sources. For more
information, see Health Log Analytics content
packs for quicker time to value.

Tagging and Binding tab
Field

Description

Path

The full path from which to stream logs. You
can use a wildcard. This field is required.

Service instance

The service instance to which to bind the log
data. This field is required.

Note: If no relevant service instance
exists, Create an service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
Component

The device type or stack layer as context for
the logs that is used for anomaly detection
and correlation. For example: Tomcat.
Components typically represent CIs in
the CMDB. Several components are often
clustered together in a single service instance.

Source Type

The source type, which defines how Health
Log Analytics handles a specific application
and parses the log data. For example: Tomcat
Catalina.
Each data input can have multiple source
types, based on the diversity of its log formats.
Service instances and components can have
any number of source types.

Advanced configuration
For Rsyslog data inputs:
Rsyslog advanced configuration form
Field

Description

Default values

Use SSL/TLS

Option for selecting to use
SSL/TLS.

Look up hostnames

Option for selecting to
false
perform DNS lookup to resolve
IPs to hostnames.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3691


<!-- page 3692 -->
Rsyslog advanced configuration form (continued)
Field

Description

Default values

Boss thread count

The number of threads that
manage connections.

1

Worker thread count

The number of threads that
handle incoming data.

4

Read timeout seconds

The timeout in seconds
since the last read. When the
timeout expires, the system
closes the channel.

30

Default timezone

The default time zone of
events. The system uses this
default when the log does not
specify a time zone.

GMT

Sub sample drop ratio

The ratio of events to drop.

-1

Sub sample receive ratio

The ratio of events to receive.

-1

Max length in bytes

The maximum length of log
messages in bytes.

32766

Character encoding

The character encoding for
this data input.

UTF-8

Drop if queue is full

Option for selecting to discard
logs if there is a load on the
MID Server.

For data inputs that use Beats agents:
Beats advanced configuration form
Field

Description

Default value

Client inactivity timeout (sec)

The timeout, in seconds, to
close an inactive channel.

15

Worker thread count

The number of threads that
handle incoming data.

4

Default time zone

The default time zone of
events. The system uses this
default when the log does not
specify a time zone.

GMT

Sub sample drop ratio

The ratio of events to drop.

-1

Sub sample receive ratio

The ratio of events to receive.

-1

Max length in bytes

The maximum length of log
messages, in bytes.

32766

Character encoding

The character encoding for
this data input.

UTF-8

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3692


<!-- page 3693 -->
Beats advanced configuration form (continued)
Field

Description

Default value

Drop if queue is full

Option for selecting to discard false
logs if there is a load on the
MID Server.

ServiceNow Log Export data input configuration fields
Description of the fields on the ServiceNow Log Export data input configuration form.
ServiceNow Log Export data input configuration fields
Field

Description

Name

Name of the new data input. This field is
required.

Service instance

The service instance to which to bind the log
data.

Important: The service instance field
is pre-populated with a value. Changing
this value is necessary only if there is a
compelling reason to do so. Consider the
implications carefully before making any
changes.
Certificate password alias

The credential alias you created in Basic Auth
Credentials. This field is required.
For more information, see the Before you
begin section in Configure a ServiceNow
Log Export data input in Health Log Analytics
manually.

Description

Option to add a brief description of the data
input to help identify it.

Log level

The log level indicating the severity of the log
messages.
The available log levels are:
• INFO: Information messages representing
service actions. This is the default log level.
• ERROR: Non-fatal error messages.
• WARN: Warning messages indicating
potential issues.

Status

Status of the data input: Active or Not Active.
This field is read-only.

Disabled since

The time when the data input stopped or
failed. This field is read-only.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3693


<!-- page 3694 -->
ServiceNow System Logs Retriever data input configuration fields
Description of the fields on the ServiceNow System Logs Retriever data input configuration form.
ServiceNow System Logs Retriever data input form fields
Field

Description

Name

Name of the new data input. This field is
required.

Description

Description of the data input.

Service instance

The service instance to which to bind the log
data. The default value is ServiceNow Glide
Sys Log. This field is required.

Note: Health Log Analytics comes with
the source type glide_sys_log for log
traffic from the ServiceNow Glide Sys Log
service instance.
From

From date and time for reading the data. The
data input doesn’t read data older than this
date and time. This field is required.

Status

Status of the data input.

Disabled since

The time when the data input stopped or
failed.

Syslog table filter

The criteria used to filter log data from the
System Log table before streaming it to the AI
engine.

Splunk data input configuration fields
Description of the fields on the Splunk data input configuration form.

Basic configuration
Getting Started tab
Field

Description

Data input name

Name of the new data input. This field is
required.

Description

Description of the data input.

MID Server

The MID Server to which the logs stream.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3694


<!-- page 3695 -->
Getting Started tab (continued)
Field

Description

Note:
• You can select only MID Servers that
support basic authentication. MID
Servers that support mTLS are not
listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
This field is required.
Port

The port for the MID Server.
Make sure that your organization’s security
team opens the selected port in the MID
Server.
This field is required.

Transport Protocol

The protocol used for streaming log messages
to your ServiceNow instance.
• TCP - When using the Transmission Control
Protocol (TCP) protocol, all logs will reach
the instance. However, the Splunk pipeline
might be blocked if the MID Server is down
or the connection to it is lost. TCP is the
default transport protocol.
• UDP - When using the User Datagram
Protocol (UDP) protocol, the Splunk pipeline
will never be blocked. However, some logs
might be dropped before they reach the
instance.
For more information about streaming
log data using the TCP or UCP transport
protocol, see the Streaming Splunk data
using Heavy Forwarder: Selecting TCP or UDP
[KB0998928]
article in the Now Support
Knowledge Base.

Use Cooked Data

Option to ingest log data from Splunk in the
preprocessed ("cooked") format that Splunk
uses on the forwarder.
Ingesting data into HLA in this format ensures
that each log line retains the relevant
contextual information that Splunk embeds
into it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3695


<!-- page 3696 -->
Getting Started tab (continued)
Field

Description

Note: If you select this option, there is
no need to edit the props.conf and
transforms.conf files during Splunk
data input configuration.
Use Forwarder TimeZone

Option to pass information about the time
zone in which the forwarder is located.
The MID Server uses this information to adjust
for the time zone from which the logs arrive.
This option is relevant when using Splunk
Universal Forwarders.

Enable Compression

Option to send logs in compressed format.
Sending logs in a compressed format
minimizes the size of the data being
transferred, which is important when dealing
with large volumes of log data. This option
is relevant when using Splunk Universal
Forwarders and can only be used when SSL/
TLS is enabled.

Advanced configuration
Advanced configuration form
Field

Description

Use SSL/TLS

Option for selecting to use
SSL/TLS.

Default values

Note: To send logs in
a compressed format,
SSL/TLS must be
enabled.
Look up hostnames

Option for selecting to
false
perform DNS lookup to resolve
IPs to hostnames.

Boss thread count

The number of threads that
manage connections.

1

Worker thread count

The number of threads that
handle incoming data.

4

Read timeout seconds

The timeout in seconds
since the last read. When the
timeout expires, the system
closes the channel.

30

Default timezone

The default time zone of
events. The system uses this

GMT

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3696


<!-- page 3697 -->
Advanced configuration form (continued)
Field

Description

Default values

default when the log does not
specify a time zone.
Sub sample drop ratio

The ratio of events to drop.

-1

Sub sample receive ratio

The ratio of events to receive.

-1

Max length in bytes

The maximum length of log
messages in bytes.

32766

Character encoding

The character encoding for
this data input.

UTF-8

Drop if queue is full

Option for selecting to discard
logs if there is a load on the
MID Server.

Splunk Polling data input configuration fields
Description of the fields on the Splunk Polling data input configuration form.

Basic configuration
Getting Started tab
Field

Description

Name

Name of the new data input. This field is
required.

Description

Description of the data input.

Execute on

Option to select whether to use a specific MID
Server or a MID Server cluster.

MID

(Only when the Execute on field is set to
Specific MID Server.)
The MID Server to which the logs are
streamed.
This field is required.

MID Server Cluster

(Only when Execute on is set to MID Server
cluster.)
The MID Server cluster to which the log data is
pulled.
The data input runs on a single MID Server
in the cluster until that MID Server fails. The
system then moves all the data input tasks to
the next available MID Server in the cluster
according to the configured order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3697


<!-- page 3698 -->
Getting Started tab (continued)
Field

Description

Note:
• Health Log Analytics supports only
failover MID Server clusters. In
these clusters, multiple MID Servers
are grouped together for failover
protection. When selecting a cluster
from the data input form, the MID
Server clusters list displays only
failover clusters.
• The MID Server cluster must include
only MID Servers that support basic
authentication. mTLS is not supported
for log ingestion.
• Log ingestion must be enabled for
each MID Server in the cluster. If log
ingestion is not enabled for the active
MID Server, Health Log Analytics
enables it automatically.
• The default maximum number of data
inputs streaming logs to a single MID
Server is 10. A cluster passes capacity
validation if it contains at least one
MID Server with fewer than 10 data
inputs running on it, even when that
MID Server is down.
For more information about MID Server
clusters, see Configure a MID Server cluster

.

This field is required.
Service instance

The service instance to which to bind the log
data. This field is required.

Note: If no relevant service instance
exists, create a service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
Transport

The protocol used for streaming log messages
to your ServiceNow instance.

Sources count

The number of log sources this data input has
created.

Status

Status of the data input.

Disabled since

The time when the data input stopped or
failed.

Last log time

The time when the last log streamed in the
data input.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3698


<!-- page 3699 -->
Advanced configuration
Transport tab
Field

Description

Server URL

The URL used to access the Splunk REST API.

Query

The query Splunk uses to search your data.

Authentication Type

The authentication type.
• Basic authentication: Sends a username
and password with each HTTP request.
Basic authentication is simpler than tokenbased authentication, but less secure.
• Token authentication: The client obtains
a token from an authentication server and
uses that token to authenticate against
Splunk.

Splunk Poll Credential Alias

The credential alias to be used.
Specify a Splunk Poll credential alias by
selecting the magnifying glass icon and then
either selecting an existing credential alias
from the Connection & Credential Aliases
list, or selecting New to create a new record.
The selected credential alias can hold one
Basic Auth credential and one Token Auth
credential.
For information about creating a credential
alias, see Credential aliases for Discovery .

From

The date and time from which Splunk
searches the data.

To

The date and time until which Splunk searches
the data.

Advanced tab
Field

Description

Max documents per query

The maximum number of documents retrieved
each time log data is fetched from Splunk.
Default: 10,000.

Splunk request timeout (seconds)

The maximum time, in seconds, allowed for
data retrieval before the request times out.

TCP data input configuration fields
Description of the fields on the TCP data input configuration form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3699


<!-- page 3700 -->
Basic configuration
Field

Description

Name

Name of the new data input. This field is
required.

Description

Description of the data input.

Port

The port for the MID Server.
Select a unique port from the array. The
placeholder shows the range of ports
from which to choose. Make sure that your
organization’s security team opens the
selected port.
This field is required.

MID

The MID Server to which the logs are
streamed.

Note:
• You can select only MID Servers with
log ingestion capability that support
basic authentication. MID Servers that
support mTLS are not listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
This field is required.
Service instance

The service instance to which to bind the log
data. This field is required.

Note: If no relevant service instance
exists, Create an service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
The following fields show read-only information:

Field

Description

Status

Status of the data input.

Transport

Protocol used to send the log data.
Rsyslog and Splunk send data using the TCP
protocol.

Sources count

The number of log sources this data input has
created.

Disabled since

The time when the data input stopped or
failed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3700


<!-- page 3701 -->
Field

Description

Last log time

The time when the last log streamed in the
data input.

Error message

The streaming error.
This field is populated automatically. It
displays only when a streaming error has
occurred.

Advanced configuration
Advanced configuration form
Field

Description

Default value

Use SSL/TLS

Option for selecting to use SSL/TLS.

Look up hostnames

Option for selecting to perform DNS lookup to false
resolve IPs to hostnames.

Boss thread count

The number of threads that manage
connections.

1

Worker thread count

The number of threads that handle incoming
data.

4

Read timeout seconds

The timeout in seconds since the last read.
When the timeout expires, the system closes
the channel.

30

Default timezone

The default time zone of events. The system
uses this default when the log does not
specify a time zone.

GMT

Sub sample drop ratio

The ratio of events to drop.

-1

Sub sample receive ratio

The ratio of events to receive.

-1

Max length in bytes

The maximum length of log messages in
bytes.

32766

Character encoding

The character encoding for this data input.

UTF-8

Drop if queue is full

Option for selecting to discard logs if there is
a load on the MID Server.

Line breaker delimiters

The line break character separating the raw
log lines.
Splitting values must be separated by a
comma followed by a space: ", ". For example:
"\r, \n, , splitHere, ".

UDP data input configuration fields
Description of the fields on the UDP data input configuration form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3701


<!-- page 3702 -->
Basic configuration
Field

Description

Name

Name of the new data input. This field is
required.

Port

The port for the MID Server.
Select a unique port from the array. The
placeholder shows the range of ports
from which to choose. Make sure that your
organization’s security team opens the
selected port.
This field is required.

MID

The MID Server to which the logs are
streamed.

Note:
• You can select only MID Servers with
log ingestion capability that support
basic authentication. MID Servers that
support mTLS are not listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
This field is required.
Service instance

The service instance to which to bind the log
data. This field is required.

Note: If no relevant service instance
exists, Create an service instance
and
add CIs to it. Set the status of the new
service instance to Operational.
The fields in the following table show read-only information.

Field

Description

Status

Status of the data input.

Transport

Protocol used to send the log data: UDP.

Sources count

The number of log sources this data input has
created.

Disabled since

The time when the data input stopped or
failed.

Last log time

The time when the last log streamed in the
data input.

Error message

The streaming error.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3702


<!-- page 3703 -->
Field

Description

This field is populated automatically. It
displays only when a streaming error has
occurred.

Advanced configuration
Field

Description

Default value

Default timezone

The default time zone of
events. The system uses this
default when the log does not
specify a time zone.

GMT

Sub sample drop ratio

The ratio of events to drop.

-1

Sub sample receive ratio

The ratio of events to receive.

-1

Rate limit

Limitation on the number of
events per second that the
data input processes.

-1

Max length in bytes

The maximum length of log
messages, in bytes.

32,766

Character encoding

The character encoding for
this data input.

UTF-8

Drop if queue is full

Option for selecting to discard false
logs if many processes are
waiting in the queue to access
the MID Server.

Vector Agent data input configuration fields
Description of the fields on the Vector Agent data input configuration form.
Getting Started tab
Field

Description

Data input name

Name of the new data input. This field is
required.

Description

Description of the data input.

MID Server

The MID Server to which the Vector Agent logs
are streamed. This field is required.

Note: If the MID Server is down or the
connection is lost, the Vector pipeline
may get blocked.
Port

The port on the MID Server used for listening
to logs. This field is required.
Choose a port within the range of 6000-6200.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3703


<!-- page 3704 -->
Getting Started tab (continued)
Field

Description

Transport

The protocol used for streaming log messages
to your ServiceNow instance.
Currently, only TCP is available.

Status

Status of the data input.

Sections and cards on the alert Overview tab in Health Log Analytics
The Overview tab helps you understand component-based alerts, Log Analytics alerts, and Log
Analytics alert groups.
Information on the Overview tab for a Component-based alert
The alert Overview tab in Health Log Analytics helps you understand Component-based alerts.

Sections on the Overview tab for a Component-based alert
For a detailed description of Component-based alerts, see Types of Health Log Analytics alerts.
Identified issue
The "identified issue" led to the alert. The issue appears in the title for the alert and
on a card on the tab. Information about the alert appears in the banner.
Identified issue

• Click the information icon (

) to see how the issue was identified.

• Click View surrounding logs to view the log lines that were generated one minute
before and one minute after the alert. See Analyze log lines around the anomaly
to help find the root cause.
Configuration Items

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3704


<!-- page 3705 -->
To view more detailed information on the CIs that are associated with the alert, click
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
Anomaly card

In this example, the pink-shaded area represents the baseline values for the same
hour in the previous week.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3705


<!-- page 3706 -->
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
Meaningful log properties

Top alerts
The Top alerts card displays summaries of data from the Similar alerts and
Repeated alerts tabs. The Total results value is the sum of the two values.
Click More details to open the Alert Insight Similar Alerts tab. For details, see
Information on the Alert Insight Similar Alerts tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3706


<!-- page 3707 -->
Top alerts

Top incidents
The Top incidents card displays summaries of data from the Incidents on CI and
Incidents on related CIs tabs. The Total results value is the sum of the two values.
Click More details to open the Incidents on CI tab.
Top incidents

Information on the Overview tab for a Log Analytics group
The alert Overview tab in Health Log Analytics helps you understand Log Analytics groups.

Sections on the Overview tab for Log Analytics groups
For a detailed description of Log Analytics groups, see Types of Health Log Analytics alerts.
Correlations banner
During initial analysis, alerts are scored. Each correlation in the alert's log data with
another alert contributes to the score. The higher the score, the more likely the alert
is to be included as a Log Analytics alert in a Log Analytics alert.
The following kinds of data are considered when determining whether alerts are
correlated:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3707


