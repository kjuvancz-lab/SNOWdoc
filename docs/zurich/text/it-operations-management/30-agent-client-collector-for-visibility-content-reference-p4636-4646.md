# Zurich IT Operations Management — Agent Client Collector for Visibility - Content reference

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4636–4646 of 4823

Sections: Agent Client Collector for Visibility - Content reference (p4636)

---

<!-- page 4636 -->
Metric Intelligence quick start tests
Test

OI: Health Metrics Collection

Description

Release version

An individual test that verifies
the following:

Madrid

• There is at least one
Metric Intelligence Metrics
extension that is running.
• There are entries for the
‘Health Metrics’ in the
Metric to CI table.
• For each of the Metric
Intelligence Metrics
extensions that are currently
running, that there is data
stored in MetricBase.
If the test initially fails, wait
until the Metric Intelligence
Metrics extension runs for at
least 10-15 minutes. Then try
again.
Related topics
Quick start tests

Event severities
The event severity numbers correspond to actual severities on the Metric Anomaly Score to
Event Severity Maps page.
Event severity mapping
Event Severity Number

Event Severity

0

Clear (OK)

1

Critical

2

Major

3

Minor

4

Warning

Agent Client Collector for Visibility - Content reference
Review this information for details on OS query scripts, data collected, and definition of terms.

OS module scripts for Agent Client Collector for Visibility - Content (ACC-VC)
These platform-specific plugins invoke platform-specific module scripts. Each script outputs to a
standard JSON payload regardless of the platform.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4636


<!-- page 4637 -->
Operating System family/plugin

Name of module script

Linux: acc-f-modules

basic_inventory.rb (Starting with ACC-F
version 2.10.1, this will not be used.)
data_collection.rb
running_processes.rb
tcp_connections.rb

Windows: acc-f-modules

basic_inventory.rb (Starting with ACC-F
version 2.10.1, this will not be used.)
data_collection.rb
running_processes.rb
tcp_connections.rb

macOS Operating Systems: acc-f-modules

basic_inventory.rb (Starting with ACC-F
version 2.10.1, this will not be used.)
running_processes.rb
tcp_connections.rb

Linux:

installed_software.rb

acc-visibility-modules

file_systems.rb
storages_devices.rb (support for getting
physical disk and corresponding disk
partitions only)
network_adapters.rb
local_users.rb
enhanced_inventory.rb
cloud.rb

Windows:

installed_software.rb

acc-visibility-modules

file_systems.rb
storages_devices.rb (support for getting
physical disk and corresponding disk
partitions only)
network_adapters.rb
local_users.rb
enhanced_inventory.rb
cloud.rb
sam_advanced.rb
sam_processor.rb
intel_ema.rb

macOS Operating Systems:

installed_software.rb
file_systems.rb

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4637


<!-- page 4638 -->
Operating System family/plugin

Name of module script

acc-visibility-modules

storages_devices.rb (support for getting
physical disk and corresponding disk
partitions only)
network_adapters.rb
local_users.rb
enhanced_inventory.rb
cloud.rb

Note:
running_processes.rb and tcp_connections.rb are interdependent. For an efficient
Discovery, keep both tcp_connections.rb and running_processes.rb together. Both the files
are needed to get the complete data. If one is not there, it will not populate the other data.
To fetch information about all the running_processes on the macOS, you must provide sudo
access to osquery. If this configuration is not made, then running_processes.rb will only
fetch what is triggered by _servicenow user. For tcp_connections.rb, you must add ‘sudo
lsof’ command in the sudoers file. If this is not done, tcp_connections.rb will only fetch what
is triggered by _servicenow user.

Data collected
ACC-VC uses the same classification criteria as IP-based Discovery for classifying as computer
or server. The subset of collected data includes the following categories:
• Basic inventory – Starting with ACC-F version 2.10.1, this will not be used.
• Data collection - Collects the necessary data for classification and identification of a host CI.
This includes host name, serial numbers, and OS information.
• Installed Software – cmdb_sam_sw_install (if SAM enabled) and cmdb_software_instance (if
SAM not enabled)
• File Systems – cmdb_ci_file_system
• Storage Devices – cmdb_ci_disk and cmdb_ci_storage_device
• Serial Numbers – cmdb_serial_number
• Network Adapters – cmdb_ci_network_adapter and cmdb_ci_ip_address
• TCP Connections – cmdb_tcp
• Running Processes – cmdb_running_process (ACC-VC also classifies the running processes
and creates application CIs in cmdb_ci_appl, where possible)
• Local User – cmdb_os_user (Populates the local users for all the Operating Systems that ACCVC supports by adding a new module called local_user)
• Enhanced inventory – Collects enhanced data (such CPU info, start_date, object_id) which is
not necessary for identifying a unique host.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4638


<!-- page 4639 -->
Relationships between host computer, file systems, and storage devices

Agent Client Collector terms
Agent Client Collector (ACC)
The software component installed on target hosts that communicates with the MID
Server. Sometimes referred to as Agent. This component is a ServiceNow derivative
of Sensu-Go.
Agent Client Collector Framework (ACC-F)
A ServiceNow base scoped application that leverages ACC and provides core
capabilities (including Check Types, Check Definitions, Policies, and so on)
enabling other ACC scoped applications, including ACC-M and ACC-VC.
Agent Client Collector Monitoring Monitoring (ACC-M)
A ServiceNow scoped application enabling monitoring use cases.
Agent Client Collector for Visibility - Content (ACC-VC)
A ServiceNow scoped application that implements push-based Discovery
leveraging ACC and ACC-F.
Horizontal IP-based Discovery
Traditional Discovery available to customers prior to ACC-VC. It discovers data via
Probes and Patterns through the MID Server, requiring the Discovery Plugin.
Modules
A subset of discovered data that is populated as part of Discovery. Examples
of Modules include: Data Collection, Installed Processes, Serial Numbers, File
Systems, Storage Devices, Network Adapters, Running Processes, and TCP
Connections.
Push-based Discovery
Discover data via ACC, ACC-F, ACC-VC, and the MID Server with a direct push of
data from the target host. Discovery does not require specific IP range configuration
on a Discovery Schedule or providing Discovery Credentials for target host.
Sensu-Go agent
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4639


<!-- page 4640 -->
The Free and Open Source project which ACC is derived from.
Virtual Machine Instance
A virtual target host running inside of a hypervisor, either on-premise or within a
cloud service provider like AWS, GCP, or Microsoft Azure.
Virtual Machine Image
A snapshot of a live virtual machine instance persisted to a file system or cloud
storage.

Agent Client Collector for Visibility - Content default checks and policies
Agent Client Collector for Visibility - Content (ACC-VC) provides various checks and policies as
well as a business rule.

Policies

Note: ACC-VC policies execute at a frequency of once per day. The total data ingested
would be approximately 572KB. This takes into consideration an average of approximately
1500 installed software applications and approximately 500 running processes other than
CI data per machine.
ACC-VC policies
Name

Description

Checks definitions

Enhanced Discovery

Runs on a schedule, by
Enhanced Discovery
default every 24 hours (86400
seconds). The policy interval
can be adjusted, for example
to run every 4 hours (set the
interval to 14400). The ACCVC policy configuration is
synced to all agents based
on the policy filter defined by
ACC-VC. Update the following
ACC-F system properties, if
needed:

• sn_agent.disco_minimum_threshold_for_rediscovery_minu
to avoid discovering the
system too frequently.
• sn_agent.disco_disable_ci_clobber_of_agentless_disco:
to avoid Discovery conflicts.

• sn_agent.disco_ci_clobber_of_agentless_disco_threshol
to avoid Discovery conflicts.
SAM Discovery

Responsible for capturing
the software installed on any
endpoint device, such as
Windows desktops or macOS
servers.

Software installations and
usage metrics

SAM background

Enables a background job
for processing the Osqueryd

SAM background log check

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4640


<!-- page 4641 -->
ACC-VC policies (continued)
Name

Description

Checks definitions

logs for SAM on Windows and
macOS endpoint devices.
SAM background (Non
OsqueryD)

Enables a background job to
collect SAM information using
osqueryi instead of osqueryd.

SAM Background Policy (Non
OsqueryD)

Software installed

Responsible for capturing
installed software
the software installed on all
devices except for Windows
and macOS endpoint devices.
The data collected is stored
in the [cmdb_sam_sw_install]
table. Scheduled to run every
24 hours.

File-based Discovery
background policy

Takes the config file
File-based discovery
(AgentFBDUnixParameters.json,
background
AgentFBDWindowsParameters.json,
or
WindowsWhiteList.txt)
as input from the instance
to an agent. Information
compiled by the configuration
console gets put into the
config file after running the

Refresh FBD Config
Files scheduled job.
This policy scans the system
using config file parameters
and stores the output on the
agent, in the location of the
configuration file.
Runs weekly on the agent
when file-based discovery is
activated on the configuration
console. For details, see Filebased Discovery.
File-based Discovery policy

Collects the output
file from the agent's
background policy. Sends
the collected information to
the configuration tables and
deletes the file after sending.
The output file cannot exceed
2MB.

File-based discovery

Runs weekly on the agent
when file-based discovery is
activated on the configuration
console. For details, see Filebased Discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4641


<!-- page 4642 -->
ACC-VC policies (continued)
Name

Description

Checks definitions

Note:
• During file-based
discovery on a
Windows system,
the servicenow
user does not have
the necessary
permissions.
Therefore, manually
grant the List Folder
Contents permission
to the folder you want
to scan.
• To ensure successful
retrieval of the file
version, run the agent
as the local system
account user instead
of the servicenow
user.
VISC Get application metric

Retrieves the SaaS application VISC Get application metric
metrics from the agents.
For details on enabling SaaS
usage monitoring with ACCVC, see the SaaS Usage
Monitoring with Agent Client
Collector [KB2320193]
article in the Now Support
Knowledge Base.

VISC Get browser extension
device init

Initializes the DEX browser
extension with the host sysID.

VISC Get browser extension
device init

VISC Get browser extension
init

Initializes the DEX browser
extension with logged-in
users.

VISC Get browser extension
init

Note: Windows endpoint devices include devices that have a Windows operating system
and belong to CI class: computer.
See System properties

for more details. For more details on policies, see Checks and policies.

Check type
ACC-VC has the following check types: Enhanced Discovery, SAM Advanced
Discovery, and Installed Software.

Enhanced Discovery
This check type is responsible for invoking the EnhancedDiscoveryHandler
script include that processes the payload produced by endpoint_discovery.rb as
executed by ACC.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4642


<!-- page 4643 -->
Used by File-base Discovery.

SAM Advanced Discovery
This check type is for the SAM Discovery policy that invokes the
EnhancedDiscoveryHandler script include for processing the SAM data produced
by the sam_advanced.rb file.

Installed Software
This check type for the Software installed policy that invokes the
EnhancedDiscoveryHandler script include for processing the installed software
data produced by the installed_software.rb file.

Check definitions
ACC-VC check definitions
Name

Description

Enhanced Discovery

Synced to all agents based on the policy filter
defined by ACC-VC. The Check definition
is configured to run with certain assets and
determines what gets synced between the
agent and the MID Server. For more details on
policies, see Checks and policies.

Note:
For the agent to retrieve the OS serial
numbers and TCP connections along
with associated running processes,
sudo access for “dmidecode” and “ss” is
required on Linux systems. For example,
this content could be added to /etc/
sudoers or to an individual file in /etc/
sudoers.d/:
Cmnd_Alias AGENT_ACC_V
= /usr/sbin/dmidecode -s
baseboard-serial-numbe
r,/usr/sbin/dmidecode -s
chassis-serial-number,/u
sr/sbin/dmidecode -s
system-serial-number,/u
sr/sbin/dmidecode -s
system-uuid,/usr/sbin/ss
-tanp
servicenow ALL=(root)
NOPASSWD:AGENT_ACC_V
SAM background log check

Runs every 8 minutes and performs inline
aggregation of data generated from Osqueryd
logs. After collecting the data, it writes all the
intermediate data results into a temporary
marker file which is reused in the next run. This
reuse limits the number of log files and disk
space needed on target systems.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4643


<!-- page 4644 -->
ACC-VC check definitions (continued)
Name

Description

Note: You may notice a spike in
system resource consumption, as the
background aggregation check runs
every interval.
Software installations and usage metrics

Collects data every 24 hours.

Installed software

Fetches installed software data for all devices
other than Windows and macOS endpoint
devices.

File-based discovery background

Runs a file scanning background job on the
agent.

File-based discovery

Fetches the file data from the agent.

Business rule
The Enhanced Discovery – On Host CI Delete business rule triggers
the Endpoint Discovery Check when the CI associated with a given CI is deleted from
sn_agent_cmdb_ci_agent.

Agent Client Collector MID-less installation command parameters
Description of the command line parameters used during MID-less Agent Client Collector
installation.
Installation command line parameters
Parameter

Description

CONNECT_WITHOUT_MID

Specify true to enable MID-less Agent Client
Collector installation. If you don't specify
a value, the regular MID Server websocket
installation is invoked.

ACC_CNC

Specify a public gateway endpoint for Agent
Client Collector.

REGISTRATION_KEY

Active and valid registration key for the agent
to communicate with.

INSTANCE_URL

ServiceNow instance that the agent is
registered with.

ACC_ALLOW_LIST

Optional string; to disable the allow list, set
ACC_ALLOW_LIST=0. By default, the allow
list is enabled.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4644


<!-- page 4645 -->
Installation command line parameters (continued)
Parameter

Description

Note: Disabling the allow list
compromises your system's security
and is intended as a temporary measure
while you’re updating the allow list. After
completing the update, enable the allow
list by setting ACC_ALLOW_LIST=1.
ACC_VALIDATE_SIG

Optional string; to disable verification of
the installer certification validation, set
ACC_VALIDATE_SIG=0 that you can add
to disable the verification of the installer
certification validation. By default, validation is
enabled.

Note: Disable the certification
validation only when using non-standard
signature validation tools.
Related topics
Configure the websocket server on the MID Server

Data collected during Agent Client Collector for Visibility - Content file-based
Discovery
The following tables describe the data collected during Agent Client Collector for Visibility Content file-based Discovery.
Java Audit [ora_java_audit]
Field

Description

Name

Name of the record. For example:
Java@hostname

Physical Machine Name

Name of the host CI

Machine Type

Either Server(S) or Desktop(D)

Java Publisher/Runtime Vendor

Java Vendor name

Operating System

Operating system in which the java is run

Environment Type

Production or Development or QA
environment

Java Release/Version/Build

Java Version

Installation Path

Absolute installation path of the java binary

Installation Date (DateTime)

The date and time of the java binary file
created on the file system

Release File (Y / N)

Indicates if a release.md file exists in the
installation

Processor Make/Model

Processor model name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4645


<!-- page 4646 -->
Java Audit [ora_java_audit] (continued)
Field

Description

Sockets (Integer)

Number of CPU sockets

Cores (Integer)

Number of CPU cores

V6 and earlier

Indicates if you have a 6 or earlier java version

Open Source

Indicates if you have an open-source java
installation

Unlock Commercial features

Indicates if you have the commercial features
(like JFR) enabled.
Not collected during ACC-VC file-based
discovery (FBD).

Mission Control

Indicates if the mission control plugin is
enabled

AMC Agent

Indicates if the AMC agent plugin is enabled.
Not collected during ACC-VC file-based
discovery (FBD).

Usage Tracker

Indicates if the Usage Tracker feature is
enabled

Virtual Machine Object ID

Object ID of the Virtual machine instance

PID

Running process PID

IP Address

IP address of the host/VM

First Discovered

The date of the first discovery

Most recent discovery

The date of the most recent discovery

Discovery Source

The discovery method

Application

Reference to the [cmdb_ci_appl] table

Software installation

Reference to the [cmdb_sam_sw_install] table

Java evidence

Reference to the [cmdb_ora_java_evidence]
table

Host

Reference to the [cmdb_ci] table

Java Evidence [ora_java_evidence]
Field

Description

Running process

Reference to the [cmdb_running_process]
table

Host CI

Reference to the [cmdb_ci_computer] table

File information

Provides a reference to the
[cmdb_file_information] table. Relevant only
for file-based discovery (FBD); in patternbased discovery, this field remains empty.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4646


