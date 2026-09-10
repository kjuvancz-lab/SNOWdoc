# Zurich IT Operations Management — Discovery

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 1348–1359 of 4823 | Part 5 of 5

Sections: Discovery (p748)

---

<!-- page 1348 -->
Field

Description

• SNMP Query (Tabular and Scalar)
• SNMP Walk
• HTTP GET (for Basic Authentication
credentials, not Token)
This field is available only when Validate Al
Patterns Commands isn't selected.
IP Addresses

Any combination of IP v4 Addresses, IP
Ranges, or IP networks. For example:
• 10.196.39.12, 10.196.39.12 Comma-separated IP addresses for a list of
standalone addresses.
• 1.1.1.1-1.1.1.100 - Hyphenseparated IP addresses for an IP range.
• 1.1.1.1/28 - Slash notation for an IP
network.

Note: To use IP range or IP network,
ensure you have installed the
ParseIPRanges script include. For
more information, refer to KB1123625:
Command Validation Tool .
Commands

The commands for which you want to test
credentials. Typically, it's a command that
discovery process failed to execute. For
example, /api/v1/pods?limit=50 or sudo
dmidecode.
You can select only commands from the list of
available commands.
This field is available only when Validate All
Patterns Commands isn't selected.

Pattern

The name of the pattern for which you want to
validate the commands.
This field is available only when Validate All
Patterns Commands isn't selected.

Related topics
Command List form for pattern-based discovery
Discovery commands for probes and patterns
Command List form for pattern-based discovery
The Command List form contains all commands used in discovery by infrastructure or
application type patterns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1348


<!-- page 1349 -->
For information on viewing a list of commands used by a pattern, see View Patterns commands
through the Discovery Patterns module.
Command List properties
Attribute

Description

Applicable OS Class

The command is intended to run on this OS
class.

CI Type

The pattern that contains this command is
assigned to this CI type.

Note: Some ServiceNow applications
refer to CI types as CI classes.
Command

The discovery command.

Command Type

Type of command:
• Shell Command
• WMI Query
• SNMP Query (Tabular and Scalar)
• SNMP Walk
• HTTP GET (for Basic Authentication
credentials, not Token)

Is Failover Step

This command is used in a failover step inside
a pattern. Possible values are true or false.

Outdated

This field is for internal use. Possible values
are true or false.

Pattern

The command is part of this discovery pattern.

Step name

Name of the step that contains this command.

Domain

The command is validated for discovering CIs
in this domain.
This field is applicable for domain-separated
environment.

Related topics
Command Validation Tasks form for pattern-based discovery
Discovery commands for probes and patterns
Discovery log details
Discovery logs contain information on the horizontal discovery process based on probes and
patterns.

Discovery log related list
The Discovery Log related list contains information about the horizontal discovery based on
probes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1349


<!-- page 1350 -->
The Discovery Log provides the following information:

Field

Created

Level

Input value

Timestamp of the Discovery activity. Each timestamp defines the approximate time
of the activity. Several Discovery events may occur in random order within a second.
Classifies the activity into one of the following levels for general sorting:
• Error
• Information
• Warning

Short
Message Informative message detailing the outcome of the activity or the Discovery progress.
Look here for the result of a classify probe or for authentication failure.
ECC
queue
input

The related input record from the ECC queue for this discovery. You can also view
these records from the ECC Queue related list.

CI

Names a device for which a matching CI was found in the CMDB. Select the link to
view the CI record for the device.

Source
Device

Names the particular activity, such as the Shazzam probe or a UNIX classify probe.
Lists the IP address of the CI discovered. All devices identified by IP address appear
in the log, even if they refused all invitations to communicate. Any port activity from a
device places it into the log, even if all subsequent efforts to identify it fail. Select the
IP address of the device to view the events associated with discovering that device.

Horizontal Discovery Log
The Horizontal Discovery Log window contains information on pattern-based horizontal
discovery.

Discovery Log
Item

Description

Pre Pattern
Execution

The actions that were run before the pattern was launched.

Selecting
Pattern for
Execution

The pattern that was run for discovery.

{Identification Displays the results of the operations in the pattern. Expand the name to see
Section
each operation.
name}
Pre Payload
Processing
Scripts

The results of scripts that were run before the payload was received.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1350


<!-- page 1351 -->
Discovery Log
Item

Description

Payload
Processing

Details about the payload and how it was processed. Find errors that might
have been encountered during various activities, such as the running of
identification rules, updates to the CMDB, and so on.

Post Payload
Processing
Scripts

The results of scripts that were run after the payload was received.

Discovery Schedule form reference
The Discovery Schedule form provides details about the configuration items (CIs) targeted for
discovery, the associated MID Server, and the schedule settings for when and how the discovery
runs.
For instructions on this procedure, see Schedule a horizontal discovery.
Discovery Schedule Form
Field

Description

Name

Enter a unique, descriptive name for your schedule.

Discover

Select one of the following scan types:
• Configuration items: Uses Discovery identifiers to match devices with CIs in
the CMDB and update the CMDB appropriately. Perform a simple discovery by
selecting a specific MID Server to scan for all protocols (SSH, WMI, and SNMP).
Or, perform advanced discoveries with discovery behaviors. When you select a
behavior, the MID Server field isn’t available.

Note: An IPv6 via address list scan is enabled on Discovery schedule for
Configuration Items.
• IP addresses: Scans devices without the use of credentials. These scans
discover all the active IP addresses in the specified range and create device
history records, but don’t update the CMDB. IP address scans also show multiple
IP addresses that are running on a single device. Identify devices by class and
by type, such as Windows computers and Cisco network gear. The Max range
size Shazzam probe property determines the maximum number of IP addresses
Shazzam scans. See Configure Shazzam probe for details.
• Networks: Discovers IP networks (routers and switches). Results from this search
are used to populate the IP Network [cmdb_ci_ip_network] table in Discovery
> IP Networks with a list of IP addresses and network masks. Network scans
update routers and layer 3 switches in the CMDB.
• Service: Discovers services for the Service Mapping application. See Schedule a
top-down discovery by Service Mapping for instructions.
• Serverless: Finds CIs without needing to run discovery on a host, or CIs on
a proxy host that is already in the CMDB. See Serverless Discovery for more
information.
• Cloud application: Discovers only the cloud resources for the patterns that you
specify. See Discovery for cloud environment for instructions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1351


<!-- page 1352 -->
Discovery Schedule Form (continued)
Field

Description

• Cloud resources: Discovers resources for one of the supported cloud providers.
This option only appears when you run Discovery on a cloud service account.
You can’t select it from a new Discovery schedule.
• Certificates. Discovers certificates based on URLs. Selecting this option
adds the Certificate Discovery Type field: URL Certificate Discovery. See Run
Certificate Discovery via individual URL scans for more information.
MID
Server
selection
method

Select the method that Discovery uses to select a MID Server:
• Auto-Select MID Server: Enable Discovery to select the MID Server
automatically based on the discovery IP ranges you configure. To find a matching
MID Server, you must configure MID Servers to use:
◦ The Discovery application, or ALL applications. This setting authorizes the MID
Server access from Discovery.
◦ The IP range that includes the ranges you configure on the discovery schedule.

Note: MID Server auto-select isn’t supported with IPv6.
• Specific MID Cluster: Use a preconfigured cluster of MID Servers. Select the
cluster. You aren’t required to specify one member of the cluster. The MID Server
can’t be part of multiple clusters, such as one that supports load balancing and
one that supports failover. You can add any cluster regardless of the application
that the MID Servers are assigned to. When you select the cluster, the Discovery
application is automatically added when it doesn’t exist for the MID Servers in
the cluster.
• Specific MID Server: Use only one MID Server. If that MID Server is part of a
cluster, only that MID Server is used. The cluster isn’t used. You can add any MID
Server regardless of the application it’s assigned to. The Discovery application is
automatically added when it isn’t already assigned for the MID Server you select.
You can assign a specific MID Server for all types of Discover scans except
Service.
• Use Behavior: Use a behavior when a single schedule requires the use of
multiple MID Servers to perform any of the following activities:
◦ Scans requiring multiple Windows credentials.
◦ A schedule that must execute two or more particular protocols (SNMP, SSH, or
WMI) using more than one MID Server.
◦ Load balancing for large discoveries where a single MID Server would be
inadequate.
◦ Scanning multiple domains.

Note: The discovery schedule enforces domain separation. The MID
Servers that are available for selection are limited to the same domain of the
user who is configuring the schedule.
See MID Server selection sequence for Discovery schedules for additional
information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1352


<!-- page 1353 -->
Discovery Schedule Form (continued)
Field

Description

MID
Server

Select the MID Server to use for this schedule. This field is available if MID Server
selection method is set to Specific MID Server, or if you discover IP addresses,
networks, or web services.
To verify that the MID Server you selected is up and validated, look at the MID
Server dashboard .

MID
Server
Cluster

Select the MID Server cluster to use for this schedule. This field is available if MID
Server selection method is set to Specific MID Cluster.

Behavior

Select a behavior configured for the MID Servers in your network.
This field is available only if MID Server selection method is set to Use Behavior.

Active

Select the check box to enable this schedule. If you clear the check box, the
schedule is inactive, but you can still run a discovery manually from this form, using
the configured values.

Location

Choose a location to assign to the CIs that the schedule discovers. If this field is
empty, then no location is assigned.

Max run
time

Set a time limit for running this schedule. When the configured time elapses, the
remaining tasks for the discovery are canceled, even if the scan isn’t complete. Use
this field to limit system load to a desirable time window. If no value is entered in
this field, this schedule runs until complete.

Max Idle
time

Set a time limit for inactivity during discovery to automatically cancel stalled
processes and log the event. A discovery is considered idle only when no input
records are being processed and nothing is left in the processing state. Idle time is
measured from the most recent change to an ECC Queue record. The configured
idle time is fixed at the start of the discovery and won’t reflect any edits until the
next run. If no value is entered in this field, this schedule runs until complete or
canceled.

Note: By default, the Max Idle time field doesn’t display in the Discovery
Schedule form. To include this parameter, open the Discovery Schedules
[discovery_schedule] table, add the column, and configure the Max Idle time
directly in the table. For information about customizing columns in tables, see
Personalize a list .
Run and
related
fields

Determines the run schedule of the discovery. Configure the frequency in the Run
field and the other fields that appear to specify an exact time.

Note: The run time uses the system time zone. If you add the optional Run
as tz field, it has no effect on the actual runtime.

Log state
changes

Select this check box to create a log entry every time the state changes during a
discovery, such as a device going from Active to Classifying. View the discovery
states from the Discovery Devices related list on the Discovery Status form. The
Completed activity and Current activity fields display the states.

Shazzam Enter the number of IP addresses that each Shazzam probe can scan. Dividing the
batch size IP addresses into batches improves performance by enabling classification for
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1353


<!-- page 1354 -->
Discovery Schedule Form (continued)
Field

Description

each batch to begin after the batch completes, rather than after all IP addresses
have been scanned. The probes run sequentially. For example, the value is set
to 1000 and a discovery scans 10,000 IP addresses using a single MID Server.
It creates 10 Shazzam probes with each probe scanning 1000 IP addresses. By
default, the batch size is 1000. A UI policy enforces a minimum batch size of 256
because batch sizes below 256 IP addresses don’t benefit from clustering. The
policy converts any value below 256 to a value of zero.
The value for this field can’t exceed the value defined in the maximum range size
property for the Shazzam probe.
Discovery Select the agent to perform this discovery:
Agent
• AWS MID: Use AWS SSM to perform discovery.
• MID: Use the MID Server to perform discovery.
By default, the Discovery Agent is set to MID. This field is available only when the
system property glide.discovery.enable_ssm is enabled, the Discover
type is set to Configuration Items, and the Run after field is configured to follow a
Cloud Resources schedule.
Shazzam
cluster
support

Select the check box to distribute Shazzam processing among multiple MID
Servers in a cluster and improve performance. This setting works with the Shazzam
batch size. For example, a schedule is created to scan 100,000 IP addresses,
with 10 MID Servers assigned to do the work. Each MID Server is assigned to
scan 10,000 IP addresses. If the Shazzam batch size is set to 5,000 IP addresses
per probe, the schedule runs two Shazzam probes per MID Server (10,000
IP addresses/5,000 per batch). These probes are run in sequence and not
concurrently.

Use
SNMP
Version

Use this field to designate the SNMP version to use for this discovery. The default
value is ALL. You can change this value to v1, v2c, or v3.

URL
Define the number of URLs to discover per batch during discovery. Leave the batch
Certificate size as it is unless recommended to change.
Batch
Size
Quick
ranges

Define IP addresses and address ranges to scan by entering IP addresses in
multiple formats (network, range, or list) in a single, comma-delimited string. For
more information, see Create a Quick IP range for a Discovery schedule.

Discover
now

Use this link to immediately start this Discovery.

Related lists
IP Ranges This related list defines the ranges of IP addresses to scan with this schedule. If
you’re using a simple CI scan (no behaviors), use this related list to define the IP
addresses to discover.

Note: To improve security, limit the range of discovery targets to exclude
unnecessary networks and devices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1354


<!-- page 1355 -->
Discovery Schedule Form (continued)
Field

Description

Discovery This related list defines each range set in a schedule to scan by one or more
Range
Shazzam probes.
Sets
Discovery This related list displays the results of current and past schedule runs.
Status
Certificate This related list displays the URLs that are discovered using this schedule. You can
URLs
add or delete URLs from this list.
Create a new discovery schedule form reference
The Create a new discovery schedule form displays information related to the schedule and
the target cloud provider. The Create a new discovery schedule form is available in the Cloud
Discovery Workspace.
For instructions on this procedure, see Create a discovery schedule in Cloud Discovery
Workspace.
Choose the provider form
Field

Description

Discovery
schedule
name

Name of the discovery schedule.

Cloud
provider

Name of the cloud provider that hosts the resources you want to discover.

MID
selection
types

MID Server or MID cluster that you want to use to discover the cloud resources.
The following options are available:
• Auto-Select MID Server: Discovery automatically selects an appropriate MID
Server.
• Specific MID Cluster: Discovery uses the MID cluster specified in the MID
cluster field.
• Specific MID Server: Discovery uses the MID Server specified in the MID
Server field.
If the selected MID Server is a part of a MID cluster, the jobs are equally
distributed among all the MID Servers of that cluster.
This field appears only when one of the following values is selected from the
cloud provider field:
• AWS
• Azure
• Google

MID clusters

MID clusters you want to use with the Cloud Discovery schedule.
This field appears only when the Specific MID Cluster value is selected from the
MID selection types field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1355


<!-- page 1356 -->
Choose the provider form (continued)
Field

Description

Credentialless
discovery

Option to use credential-less discovery.

MID Servers

MID Servers you want to use with use with the Cloud Discovery schedule.

To view and filter the MID Servers that can assume an IAM role to discover the
cloud resources, move the Credential-less discovery toggle to the right.

This field appears only when the Specific MID Server value is selected from the
MID selection types field.
Discovery Admin Workspace reference
Reference topics provide additional information about the lists, forms, and settings used in
Discovery Admin Workspace.
Discovery Admin Workspace support tools
The Support tools tab provides tools to investigate and troubleshoot your instance.
Available tools
Tool

Description

CAPI to patterns

Migrates your Cloud Discovery from Cloud API
REST Calls (CAPI) to Patterns.

Probes to pattern migration

Migrates older probes to new, flexible, and
efficient patterns.

Retrieve logs

Retrieves diagnostic logs to help identify ITOM
Visibility and Discovery issues.

Detect Frequently discovered CIs

Displays which CIs are discovered more often
than others.

Pattern to customization check

Determines if a customization might be
breaking a pattern.

IRE payload explorer

Identifies the underlying key component in
identification and reconciliation (IRE) across
different data sources.

Discovery customization report

Detects probe, sensor, classifier, and pattern
code that have been modified from base
system settings.

Skipped files from store updates

Examines all file names from pattern plugins
that were skipped from store updates.

Command validation task

Runs and validates commands on a range of
IP addresses.

Missing IPs in schedules

Identifies which Discovery schedules are
missing IPs and adds them to the schedule.

Missing SNMP OID data

Checks for missing SNMP device OIDs from
the SNMP data that cause the devices to be
misclassified.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1356


<!-- page 1357 -->
Available tools (continued)
Tool

Description

SaCmdManager

Searches for information that might be needed
when creating Discovery patterns.

Application fingerprint suggestion form
When viewing suggestions based on application fingerprints, verify the information on the
Application fingerprints suggestion form.
Application fingerprint suggestion form data
Field

Description

Discovery Pattern name

The name of the pattern.

Suggested CMDB CI Class

The name of the CMDB CI class. This field is
pre-populated, but as the administrator you
can modify it if necessary.

Suggested Classifier Rule

The name of the process excluded from
discovery using the Ignore action.

Accuracy Percent

A percentage, based on a validation algorithm,
that checks the quality of the prediction. Pick
suggestions with higher accuracy.
You can’t modify this field.

Suggested Group Name

Process Count

Extended Group Name

The name ITOM Visibility generates for the
suggestion. This field is pre-populated, but you
can modify it if necessary.
The number of discovered processes that this
suggestion is based on.
The top 10 key words that provide more
information about the process. Predictive
Intelligence extracts these key words from the
process.
This field is pre-populated and you can’t
modify it.

Discovery Admin Workspace data visualizations
The Overview tab includes visualizations that provide detailed information about the Discovery
schedule. These visualizations offer a comprehensive view of the schedule performance and
status, showing key metrics like the number of discoveries completed, success rate, and any
errors encountered.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1357


<!-- page 1358 -->
Data visualizations
Report title

Type

Description

Total runs

Indicator Total number of times this Discovery schedule ran in a certain time
period.

Error Tasks

Indicator Number of active (in-progress or pending) error tasks that were
opened in a certain time period.

Timeline of
Timeline Events that occurred during the schedule runs.
events during
schedule run
Total CIs

Indicator Number of CIs detected on the last run.

CIs
discovered
count

Line
chart

Trends of discovered CI attributes for this Discovery schedule across
the statuses listed in Run History. The anomaly threshold trend
reflects the most severe anomaly for this schedule.

Important: The anomaly threshold only displays when
anomaly detection is enabled. For more information, see
Discovery Admin Workspace Settings.
Errors

Indicator Total number of errors detected on the last run.

Errors count

Line
chart

Error trends for this Discovery schedule across the statuses listed in
Run History. The anomaly threshold trend reflects the most severe
anomaly for this schedule.

Important: The anomaly threshold only displays when
anomaly detection is enabled. For more information, see
Discovery Admin Workspace Settings.
Duration in
mins

Indicator Duration in minutes it took for the last Discovery to run.

Discovery run Line
time
chart

Run time trends for this Discovery schedule across the statuses
listed in Run History. The anomaly threshold trend reflects the most
severe anomaly for this schedule.

Important: The anomaly threshold only displays when
anomaly detection is enabled. For more information, see
Discovery Admin Workspace Settings.
Queue Registration form reference
The Queue Registration form displays the fields available when creating or modifying a queue.
Queue Registration form
Field

Description

Queue

Name of the queue.

Application

Scope of the application.

Automatic Job Scheduling

Option to enable automatic job scheduling.
When selected, the queue switches to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1358


<!-- page 1359 -->
Queue Registration form (continued)
Field

Description

automatic job scheduling and the system
handles all job configurations.
Event Processing Order

Method used to process events. Options
include:
• Parallel: Process multiple events
simultaneously.
• Sequential: Process only one event at a
time. The events are interdependent and
can only process after the previous event
completes.

Note: After you configure the
processing order and submit the queue,
it can't be edited. Instead, you must
delete the queue and create another
queue.
Job configuration type

Type of job configuration. Options include:
• Constant number: Creates the required
number of jobs.
• Scale with node: Creates multiple jobs
based on the number of nodes. Select this
option if you don't know the number of
available nodes.

Note: This field is automatically
set to Constant number when the
Event Processing Order field is set to
Sequential.
Scale factor

Total number of jobs, which is calculated
based on the value of the Job configuration
type field.

Poll interval

How frequently jobs should poll and process
events in this queue.

Description

Description of the queue.

Quick start test for IP Discovery
Quick start test for IP discovery validate configuration items (CI) and their relationships.
IP Discovery quick start test
Test

Description

TestIPDiscovery

IP discovery is performed on an IP input by the
user. After discovery, the CI and relationships
are created in the cmdb_ci and rel_ci tables.
This test validates the CIs and relationships

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1359


