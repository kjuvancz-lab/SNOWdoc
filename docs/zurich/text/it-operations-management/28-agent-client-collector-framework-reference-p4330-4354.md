# Zurich IT Operations Management — Agent Client Collector Framework reference

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4330–4354 of 4823

Sections: Agent Client Collector Framework reference (p4330)

---

<!-- page 4330 -->
4. In the confirmation dialog box, select Clear ACC Plugins.
5. Optional: Select Collect host data to re-download your plugins from the instance.
Plugins download automatically when used by their respective checks/policies.

Agent Client Collector Framework reference
Reference topics provide additional information about mapping and fine-tuning application
services using Agent Client Collector Framework lists and forms.

Agent Client Collector user roles
Administrators can assign user roles to grant access to the Agent Client Collector. The following
standard roles for the Agent Client Collector Framework (ACC-F) are included in the ServiceNow
system with the Agent Client Collector installed on it.
Agent Client Collector user roles
Role

Description

agent_client_collector_admin

All permissions on Agent Client Collector,
including:
• Access to REST API
• Add, edit, and delete policies, checks,
agents, web sockets
• MID Server management

agent_client_collector_integration
agent_client_collector_user

Access to REST API
• View checks and policies
• Access to some REST APIs

evt_mgmt_admin

Starts the ACC listener.

Agent Client Collector Framework default checks
Agent Client Collector Framework provides default checks with the base system.

Checks
The following table lists the default checks that come with the Agent Client Collector Framework
base system.

Type

Name

Description

Command

Restart

restart

Restarts the agent.

Restart agent

Check is active by
default
Discovery

check-discovery-basic Performs basic
discovery of the
agent's host to
discover:

endpoint_discovery.rb

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4330


<!-- page 4331 -->
Type

Name

Description

Command

• Host CI, including
IP address, serial
number, and
hostname.
• Running processes
(cmdb_running_process)
of the host
• TCP ports
(cmdb_tcp)
The check is
performed by default
every 12 hours (43200
seconds), and times
out after 600 seconds
of inactivity.
Plugins: osquery, accf-commons, acc-fmodules

Note: The check-read-log and config-file-reader checks are for internal use
only.

Agent Client Collector performance and footprint for URL monitoring
The following tables display the agent performance KPIs and its footprint on the host during URL
monitoring data collection execution on different operation systems.
URL monitoring checks on a Linux system
Linux Cent OS 8, 2 CPUs, 4GB RAM

Checks per
minute

100

250

500

1000

1500

Metrics
(expected/
actual)

700/700

1750/1750

3500/3500

7000/7000

10500/10500

Network
utilization - Tx
(MID > Agent)

35 KB/s

78 KB/s

146 KB/s

286 KB/s

430 KB/s

Network
utilization - Rx
(MID < Agent)

15 KB/s

27 KB/s

51 KB/s

107 KB/s

116 KB/s

Network
utilization - Tx
(Agent > MID)

8 KB/s

23 KB/s

37 KB/s

89 KB/s

113 KB/s

Network
utilization - Rx
(Agent < MID)

28 KB/s

72 KB/s

142 KB/s

285 KB/s

426 KB/s

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4331


<!-- page 4332 -->
URL monitoring checks on a Linux system (continued)
Linux Cent OS 8, 2 CPUs, 4GB RAM

Memory
consumption

22 MB

25 MB

26 MB

34 MB

39 MB

CPU of all
checks

~3%

~7%

~11%

~21%

~24%

Process CPU
utilization

1% - 1.5%

1.5% - 2.5%

5% - 6%

6% - 7%

12% - 13%

Host CPU
utilization

~10%

~19%

~23%

~45%

~53%

Agent Client Collector certificate revocation reasons
The following table lists and describes the possible reasons for revoking an Agent Client
Collector certificate to stop communication between the agent and ITOM cloud services.
Certificate revocation reasons
Reason

Description

Unspecified

Revoke a certificate without providing a
specific revocation code.

Note: This reason code doesn’t provide
an audit trail identifying why a certificate
was revoked.
Key Compromise

You suspect that the private key associated
with a certificate is compromised.
For example, if a laptop belonging to a user in
your organization is stolen, any private keys
stored on the laptop may be compromised.

CA Compromise

You suspect that a Certificate Authority's (CA)
private key has been compromised and is in
the hands of an unauthorized individual. If a
CA’s private key is revoked, the CA hierarchy
considers all certificates below that CA
revoked as well.

Affiliation Changed

An individual is no longer working in the
organization, or the computer account to
which the certificate was issued is no longer
in use. Can also be used if a person changes
roles within an organization and no longer
requires using the certificate associated with
their previous role.
For example, an employee could move from
the purchasing department and no longer
require a certificate to authorize purchase
requests.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4332


<!-- page 4333 -->
Certificate revocation reasons (continued)
Reason

Description

Superseded

Indicates that a new certificate must be issued
in place of a previously issued certificate. For
example, if you update a certificate template
and reissue certificates, you could revoke the
previous certificate with this reason code.

Cessation of Operation

A server or workstation is decommissioned,
and all certificates issued to the server are no
longer required. You can use this revocation
reason when decommissioning a CA.

Certificate Hold

A temporary revocation indicating that a CA
won’t validate a certificate at that specific time.

Note: Using this reason code makes
it difficult to determine whether a
certificate was valid at a specific time.
Remove from CRL

Enables future unrevoking of the certificate,
removing the certificate from the certificate
revocation list (CRL).

Privilege Withdrawn

The certificate holder no longer has the
privileges required to continue using the
certificate.

AA Compromise

Indicates suspected or actual compromise of
the authentication authority (AA) validated in
the certificate.

Agent Client Collector check definition page
The fields to be configured on the Check Definition page, when creating a check definition.
Check Definition Form
Field

Description

Name

A descriptive name for the check.

Check Type

Select the type of check. The available monitoring options are:
• Events
• Metrics

Active

Select to activate the check.

Is Proxy Valid

Select to indicate that the check's policy is set to work as a
proxy.
When viewing this option in the check instance, it is read-only.

Command Auto Generation

Select to automatically generate the command with the
Command Prefix value and the Parameters tab values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4333


<!-- page 4334 -->
Check Definition Form (continued)
Field

Command Prefix

Description

The command that is used for automatic generation when the
Command Auto Generation check box is selected. The prefix
consists of any portion of the command which is static (does
not change), such as the script name.

Command
• Enter the command that the Agent Client Collector executes.

Note: When the Command Auto Generation check
box is selected, this field is automatically populated
with the prefix and flags of the active parameters
specified in the Parameters tab.

• The field contains parameters taken from one or more of the
following:
◦ Simple template:
{{.labels.params_field_name}}: Takes values
from entries in the Parameters tab. For example, a string
of {{.labels.params_warning}} means that the
value of the warning parameter is used (provided it has
been configured on the Parameters tab).
◦ Monitored CI:
{{.labels.params_ci_field_name}}: Takes
values automatically from the monitored CI, where
field_name is replaced with the exact name of the
required field in the CI table.
Configuration Data Files

Select the configuration data files to be downloaded when the
check runs.

Description

Description of the check.

Exec Mode

The execution mode of the check. Available options are:
• shell: To be used for checks which do not support execv.
• execv: Provides enhanced security during check
execution.
The default execution modes are:
• Existing check definitions: shell
• New check definitions: execv
• If no value is entered in the field: shell
When upgrading to version 2.9.0, if this field is read-only,
ensure that you disable the read-only status, as described in
the (KB1122498) article in the Now Support Knowledge Base.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4334


<!-- page 4335 -->
Check Definition Form (continued)
Field

Description

Interval

The amount of time, in seconds, to wait between check
executions.
For example, a value of 60 means that the check runs every 60
seconds.
Specified value must be an integer.

Timeout

The amount of time, in seconds, after which the check
execution stops when no output is returned.
For example, a value of 60 means that when the check
execution doesn't return a value for 60 seconds, the execution
stops.

Event status change threshold The number of consecutive times that a check's response
status must happen before a new event is sent.
For example, if this value is set to 5, a check whose response
status changes from OK to Error generates a new event with
an Error status only after the fifth consecutive occurrence of
the status change.
After an agent restart, an initial event is always sent.
Default value: 5 (except for AWS event policies)
Event status repair threshold

The number of consecutive times that a check's response
status must improve to close the previous event.
For example, if this value is set to 3, a check whose response
status changes from Error to OK closes the previous event
and generates a new event with an OK status only after the
third consecutive occurrence of the status change.
Default value: 1 (except for AWS event policies)

Credential failure regex

The string from the check's output indicating that the check
failed due to a credentials error. The agent then continues
searching credentials that are part of the credential alias until
it finds the correct one.
This field is relevant (and mandatory) when the check's policy
uses a credential alias. When creating a new check, enter the
string manually.

Plugins

Select the plugins to be associated with the check. Once this
is done, the plugins download before the check executes.

Check definition form parameters tab
The Parameters tab definitions for the Command field on the check definition form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4335


<!-- page 4336 -->
Parameters Tab
Field

Description

Name

A descriptive name for the parameter.

Default value / value

Default value / value of the parameter.

Active

Boolean. When set to true, the parameter
is taken to the Command field when the
Command Auto Generation check box is
selected.

Mandatory

Boolean. When set to true, a parameter value
must be specified for the command to run.

Flag

String. Prefix that is added before the
parameter value in the Command field when
the Command Auto Generation check box is
selected.

Value required

Boolean. When set to true and when the
Command Auto Generation check box is
selected, the value of this parameter is added
to the Command field after the Flag value.

Test check dialog box fields
The dialog box fields when testing a check definition.
Test Check dialog box fields
Field

Description

Check Definition

Displays the name of the selected check
definition.

CI

Select the CI on which to run the check. The
available options are those CIs which meet
both of the following criteria:
• Belong to the group specified in the Check
group field.
• Belong to an agent with Up status.
If the Check group field is empty, the value
defaults to cmdb_ci_computer.

Credentials

Select the credentials of the user whom you
want the agent to connect with.
This field appears only if you have configured
secure check parameters on the Check
Secure Parameter Definitions tab in the
Check Definition.

Proxy Agent

Select a proxy agent to be associated with the
check.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4336


<!-- page 4337 -->
Test Check dialog box fields (continued)
Field

Description

This field appears only when working with a
check instance and when one of the options
has been selected on the Proxy Settings tab
in the instance's policy.

Agent Client Collector data collection properties
Description of the properties that determine the behavior of Agent Client Collector data
collection.
Data collection properties
Property

Description

sn_agent.hostThe amount of time (in seconds) between
data_collection_refresh_duration_seconds
agent data collections on the host. Applicable
only when no host CI is assigned to the agent.
Default: 43200 (12 hours)

sn_agent.disco_minimum_threshold_for_rediscovery_minutes
The minimum number of minutes since
the last endpoint Discovery on a given IP
before Discovery can be triggered again.
This property prevents running endpoint
Discovery too often, such as in cases where a
network intermittently has a break or a laptop
is repeatedly rebooted.
Default: 60

sn_agent.disco_disable_ci_clobber_of_agentless_disco
When set to true, indicates that
data collected by the ServiceWatch
or ServiceNow Discovery sources
takes precedence over Agent Client
Collector when the threshold in the

sn_agent.disco_ci_clobber_of_agentless_disco
property hasn’t been exceeded.
Default: true

sn_agent.disco_ci_clobber_of_agentless_disco_threshold_days
Maximum number of days since an
existing CI has been discovered
using agentless Discovery where the
existing CI is linked instead of being
rediscovered by the agent. Takes effect when

endpoint_disco_disable_ci_clobber_of_agentle
= true and over 14 days (by default) have
passed since a non-ACC Discovery source
(such as ServiceWatch or ServiceNow) has
discovered the CI. After this threshold has
been exceeded, agent Discovery can execute
and overwrite an existing CI regardless
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4337


<!-- page 4338 -->
Data collection properties (continued)
Property

Description

of whether the CI has been previously
discovered by a non-ACC Discovery source.
This process presents the most recently
discovered data in the CMDB.
Default: 14

sn_agent.ci_prefers_ip_version

Indicates whether IPv4 or IPv6 is the preferred
version when saving an IP Address value in
the IP Address field of the CI record.
Default: 4

sn_agent.ci_serial_number.pref_order
Specify the order of the fields to locate a serial
number value to be saved to the host CI's
serial_number field during agent data
collection. Values must be comma-separated,
without spaces, and in lowercase.
Default: bios,system,uuid,baseboard,chassis

sn_agent.mac_ci_name_pref_order

Specify the order of the values by which the
CI record's Name field is populated during
macOS data collection. Values must be
comma-separated, without spaces, and in
lowercase.
Default:
name,hostname,computer_name,local_hostname

sn_agent.host_data_collection.disable_when_container
When set to true, indicates that data
collection is disabled for containerized agents.
Default: true

Agent Client Collector policy collection properties
Description of the properties that determine the behavior of Agent Client Collector policy
collection.
Policy collection properties
Property

Description

sn_agent.full_policy_calculation_cycle_days
The number of days for a policy to reach a
full calculation cycle. If the policy’s last full
calculation cycle was more than 7 days ago,
the policy is queried to fully calculate its
calculation cycle.
Default: 7

sn_agent.max_number_of_monitored_cis_per_policy
The maximum number of monitored CIs that
can be processed per policy.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4338


<!-- page 4339 -->
Policy collection properties (continued)
Property

Description

Default: 400000

sn_agent.max_num_of_monitored_ci_to_process_with_no_agents_association
The maximum number of monitored CIs
unassociated with agents that can be
processed per policy.
Default: 1000

sn_agent.policy_force_recalc_interval_min
The interval limit, in minutes, used to
determine whether forced recalculation is
required for any policies.
Forced recalculation redistributes both a
policy's monitored CIs and the corresponding
agent.
Default: 10

sn_agent.policy_force_recalc_required
When set to true, checks whether forced
recalculation is required for policies.
Forced recalculation redistributes a policy's
monitored CIs and the corresponding agent.
Default: true

sn_agent.populate_proxy_agent_monitored_ci_distribution_always
When set to true, repopulates the monitored
CIs for given policies to show the distribution
of CIs among proxy agents.
Default: false

Agent Client Collector Framework configuration properties
Description of the properties that determine the behavior of Agent Client Collector Framework
configuration.
Framework configuration properties
Property

Description

sn_agent.agent_static_import_char_read_limit
The character read limit for a given payload
item. Relates only to the configuration item
being processed and not the total attachment
size.
Default: 1000000

sn_agent.agent_upgrade_wait_time Maximum number of minutes for an agent
to successfully upgrade before entering
Warning status.
Default: 30
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4339


<!-- page 4340 -->
Framework configuration properties (continued)
Property

Description

sn_agent.agent_version

The current ACC-F release version installed on
the instance.
Type: String

sn_agent.appl_classification_behavior
The characteristics and behaviors for
applications during Agent Discovery. When set
to simple, creates a shell CI.
Default: simple

sn_agent.auto_upgrade.enabled

When set to true, the instance automatically
upgrades existing Agent Client Collector
installations to the version set in the
sn_agent.agent_version property, if the agent
version is lower than the property's version.
Type: Boolean
Default: false

sn_agent.auto_upgrade.max_upgrades_per_handler_per_hour
The maximum number of Agent Client
Collector upgrades possible per MID Server
every hour.
Type: Integer
Default: 50

Note: Modifying this value may
negatively affect system performance.

sn_agent.auto_upgrade.max_upgrades_per_hour
The maximum number of Agent Client
Collector upgrades possible for all agents on
all MID Servers.
Type: Integer
Default: 1000

Note: Modifying this value may
negatively affect system performance.

sn_agent.config_publish.max_payload_size
The size, in bytes, that the
config_publish_payload can reach on the
MonitoringProbe ECC queue topic before an
error is logged and the payload is skipped.
Default: 15000000

sn_agent.ecc_queue.max_payload_size
The maximum allowable payload size for an
ECC queue record to be processed by the
agent.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4340


<!-- page 4341 -->
Framework configuration properties (continued)
Property

Description

Default: 5000000

sn_agent.enable_auto_mid_selection
When set to true, the instance sends a list
of MID Servers to the agents. To enable
automatic selection of a MID Server from
the list, set the auto-mid-selection
property to true in the agents’ acc.yml file.
Automatic selection of MID Servers ensures
that each agent uses the most efficient
available MID Server.
Default: false

Note: This property determines only
whether a list of MID Servers is sent to
the agent.
• If this property was previously set to
true and is then set to false, automatic
MID selection is performed on the
previously sent MID Server list if the
auto-mid-selection property is
set to true in the acc.yml file.
• If this property is set to true and the
auto-mid-selection property
in the acc.yml file is set to false, no
automatic MID Server selection is
performed.

sn_agent.installer_max_endpoints Maximum number of MID Web Server
endpoint URLs to be selected during agent
single line installation.
Default: 3

sn_agent.keep_alive.alive_duration
The amount of time, in seconds, within which
the agent's last_refreshed timestamp must
be updated. After this time period, the agent
status moves from Up to Warning. If the
indicated time period passes again, the status
moves from Warning to Down.
Default: 120

sn_agent.keep_alive.disconnected_duration
The amount of time, in seconds, within
which the last_keepalive timestamp must
be updated. After this time period, the agent
status changes from Up to Disconnected.
Default: 600

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4341


<!-- page 4342 -->
Framework configuration properties (continued)
Property

Description

sn_agent.logging.verbosity

The minimum level of messages that are
logged for Agent Client Collector Framework.
Messages with the indicated status and
anything more severe are logged.
Options:
• error
• warn
• info
• debug
Default: info

sn_agent.max_sys_ids_in_query

The maximum number of sys IDs to return
during GlideRecord queries.
Default: 400000

sn_agent.maximum_mids_to_select

The maximum number of MID Servers that can
be selected for agent setup.
Default: 20

sn_agent.min_upgrade_history_per_agent
The minimum number of upgrades saved per
agent.
Default: 2

sn_agent.registration_key_validity.days
The number of days after creation of a
registration key that the key is valid before it is
deleted.
Default: 90

sn_agent.registration_key_notification.days
The number of days before registration key
deletion that an email notification is sent to the
key's ownership group, informing of pending
deletion.
Default: 14

sn_agent.sync_filters_interval_min
The number of minutes after which CMDB
changes are detected and then synched to
the MID Server.
Default: 10

sn_agent.time_ago_in_seconds_to_query_ecc_queue
When processing ecc_queues, only query
those created within the indicated time (in
seconds).
Default: 43200 (12 hours)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4342


<!-- page 4343 -->
Agent Client Collector data collection tables
Agent Client Collector performs data collection based on the scoped apps that you've installed.
Agent Client Collector Framework performs basic data collection, and Agent Client Collector for
Visibility - Content performs enhanced data collection.
The Refresh Host Data for Agents scheduled job collects host data every hour on hosts that
haven't had data collection run in the past 12 hours. The job collects the data described in the
following tables.
Agent Client Collector Framework data collection
Data

CMDB field

hostname

ci.name

physical memory

ci.ram

hardware vendor

ci.manufacturer

hardware model

ci.model_id

CPU name

ci.cpu_type

OS domain

ci.os_domain

OS name

ci.os

OS version

ci.os_version

IPv4 address

ci.ip_address

Default gateway

ci.default_gateway

Serial number

ci.serial_number

DNS Name

ci.name

FQDN

ci.fqdn

TCP Connections

cmdb_tcp

Running Processes

cmdb_running_process

Serial numbers

cmdb_serial_number

Note: When collecting data from Linux
hosts, dmidecode must be configured
with sudo permissions to collect all
serial numbers.

Agent Client Collector for Visibility - Content data collection
Data

CMDB field

CPU manufacturer

ci.cpu_manufacturer

CPU speed

ci.cpu_speed

OS arch

ci.os_address_width

CPU count

ci.cpu_count

CPU core count

ci.cpu_core_count

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4343


<!-- page 4344 -->
Agent Client Collector for Visibility - Content data collection (continued)
Data

CMDB field

CPU core thread

ci.cpu_core_thread

Is virtual

ci.virtual

Start date (uptime)

ci.start_date

Object ID

ci.object_id

TCP Connections

cmdb_tcp

Running Processes

cmdb_running_process

Account commands for LocalService, LocalSystem, and gMSA during
Windows installation
When installing an agent on a Windows host using a LocalService, LocalSystem, or gMSA
account, you must run msi commands to enable the accounts.
Account type commands
Account type

Command

LocalSystem

LocalService

gMSA

msiexec /i
C:\acc-installer.msi /qn /
norestart ACC_API_KEY=<API
key code> ACC_MID=<MID
Server URL>/ws/events
ACC_ALLOW_LIST=False
LOCALUSERNAME="SYSTEM"
msiexec /i
C:\acc-installer.msi /qn /
norestart ACC_API_KEY=<API
key code> ACC_MID=<MID
Server URL>/ws/events
ACC_ALLOW_LIST=False
LOCALUSERNAME="LOCALSERVICE"
msiexec /i
C:\acc-installer.msi /qn /
norestart ACC_API_KEY=<API
key code> ACC_MID=<MID
Server URL>/ws/events
ACC_ALLOW_LIST=False
LOCALUSERNAME="DOMAIN\gMSA$"

Verify API is associated with a live agent
Call the AgentNowHandler.hasAgent API to determine if the CI is associated with a live
agent. The API gets a sys_id of the CI and returns a true/false result.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4344


<!-- page 4345 -->
The hasAgent() method takes a sys_id of the CI as a string parameter and returns true when
the CI fulfills one of the following conditions:
• The CI is sn_agent_cmdb_ci_agent and this agent is alive.
• The CI is a host (extends cmdb_ci_hardware) and is associated with a live agent.
• The CI is an application (extends cmdb_ci_appl) and has a runs-on relation to a host
associated with a live agent.
For example:
var agentNow = new sn_agent.AgentNowHandler();
gs.info(‘Agent assocation with CI? ‘ +
agentNow.hasAgent(‘158279505372b30034b8ddeeff7b1270’); // sys_id
of agent

Configuration file options
Options available in the acc.yml configuration file.
Basic configuration options for acc.yml configuration file
Option

Type

Default

Description

name

String

Agent_<value of
the hostname
command>

Agent name
name: <name
registered on
of agent>
the SN instance
can be specified
by the user.
The result of
the 'hostname'
command is used
as the default.

backend-url

List

wss://127.0.0.1:8800/
List of MID
backend-url:
ws/events
Webserver
<mid server
endpoint URLs
ip>:<websocket
to communicate port>
with. If
communication
cannot be
configured with
the first URL, the
system moves
to the ensuing
URLs until it
establishes a
connection.
Works when
enableauto-midselection=true

api-key

String

<None>

API key used by
the MID Server
to authenticate
incoming agent
connections.

Example

api-key:
<mid web
server api
key>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4345


<!-- page 4346 -->
Basic configuration options for acc.yml configuration file (continued)
Option

Type

Default

Description

Example

Value is
encrypted on
initial agent
startup.
user

String

admin

Username
used for basic
authentication.

user:
"agent-01"

If this parameter
is empty, the
agent does not
start.
password

String

admin

Password
used for basic
authentication.
Value is
encrypted on
initial agent
startup.

password:
<securepassword>

If this parameter
is empty, the
agent does not
start.
log-level

String

Info

Amount of
log-level:
logging to appear debug
in the acc.log file.
Values:
• Panic
• Fatal
• Error
• Warn
• Info
• Debug

allow-list

String

/etc/servicenow/
agent-clientcollector/checkallow-list.json

Path to the JSON
file that contains
the list of check
commands
the agent
can execute.
Comment out
this parameter to
disable the allowlist.

allowlist: /
etc/agent/
check-allowlist.json

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4346


<!-- page 4347 -->
Basic configuration options for acc.yml configuration file (continued)
Option

Type

Default

Description

Example

If this parameter
is empty, the
allow-list is
disabled.
appl_classification_behavior
List

simple

Indicates
whether to
enable shell CI
creation on the
agent.

appl_classification_beha
off

Possible values
are:
• simple:
Indicates
that shell CI
creation is
enabled.
• off: Indicates
that no shell
CIs are
created for the
application.
• full: Indicates
that complete
Discovery
of the
application CIs
is performed
using patterns.
Advanced configuration options for acc.yml configuration file
Option

Type

Default

Description

Example

verify-pluginsignature

Boolean

True

Verifies
the plugin
signature prior
to execution.
Disable when
using self-signed
or developmental
plugins.

verifypluginsignature:
true

insecure-skip-tls- Boolean
verify

True

Determines
insecurewhether the
skip-tlsverify the
verify: true
certificate when
connecting to the
MID Server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4347


<!-- page 4348 -->
Advanced configuration options for acc.yml configuration file (continued)
Option

Type

Default

Description

Example

enable-auto-mid- Boolean
selection

True

Controls the Auto
MID Selection
feature to
connect to the
optimal MID Web
Server provided
by the instance.

enableauto-midselection:
true

check-command- Boolean
prefer-installed

False

Indicates the
preference of
executables
provided within
ACC plugins
or executables
available in the
host system’s
PATH variable.

checkcommandpreferinstalled:
false

• false = ACC
plugins
• true =
Executables
in the host
system's PATH
variable
powershell_installed
Boolean

False

Disables
powershell
command
execution on
agents.

allow-list-globalonly

False

Set to true to
allow-listenhance security global-only:
by relying only
false
on the allow list
defined in the

Boolean

powershellinstalled:
true

allow-list
parameter you
specify during
configuration,
ignoring allow
lists bundled with
ACC plugins.
disable-assets

Boolean

false

Indicates
whether a check
running with an
asset (plugin)
dependency
fetches ACC
plugins from the
®
ServiceNow

disableassets:
false

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4348


<!-- page 4349 -->
Advanced configuration options for acc.yml configuration file (continued)
Option

Type

Default

Description

Example

instance, or uses
a copy of the
plugins in its
cache folder.
When set to
false, additional
assets can be
downloaded
during check
execution.
Set to true to
enhance security
and ensure that
no new plugins
are downloaded
during check
execution.
agent-upgradeurl-path

String

https://
Indicates an
install.servicealternate web
now.com/
server URL
glide/
endpoint for
distribution/ downloading
builds/
ACC installer
package/app- packages when
signed/
performing
selective
upgrade.

agentupgradeurl-path:
https://<ip
address>:<port>/
acc_installers

certificateInteger
rotation-days-out

28

Indicates the
certificatenumber of days
rotationbefore certificate days-out=28
expiration that an
agent attempts
to rotate its
certificate.

enable-patternson-agent

false

Enables
gathering
details on the
applications
which run on
the Agent Client
Collector.

Boolean

enablepatterns-onagent: true

This parameter
is required
only when
using the Agent
Client Collector
for pattern
execution.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4349


<!-- page 4350 -->
Advanced configuration options for acc.yml configuration file (continued)
Option

Type

Default

Description

keepalive-filternics

Boolean

true

Indicates
keepalivewhether Network filter-nics:
Interface
true
Controllers
(NICs) are filtered
on the agent
(true) or the MID
Server (false)
during keepalive
action.

1

Indicates the
keepalivemaximum
number_nics_per_ip_type:
number of
4
Network Interface
Controllers
(NICs) per IP type
(IP4, IP6) sent
with a keepalive
action. The
indicated number
is sent for each IP
type.

keepaliveInteger
number_nics_per_ip_type

Example

For example, if
the value is 1, a
maximum of 2
NICs are sent (0-1
each for IP4 and
IP6). If the value
is 4, a maximum
of 8 NICs are
sent (0-4 each
for IP4 and IP6).

Proxy Auto-Configuration (PAC) file parameters
Option

Type

Default

Description

Example

pac-file

String

"" (empty)

Specifies the
location of
the PAC file to
use for proxy
configuration.
Can be either:

pac-file:
"https://
proxy.company.com/
proxy.pac"

(Required)

• A local file
path (such as:
file:///
etc/proxy/
proxy.pac)
• A remote
URL (such as:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4350


<!-- page 4351 -->
Proxy Auto-Configuration (PAC) file parameters (continued)
Option

Type

Default

Description

Example

https://
proxy.company.com/
proxy.pac)
pac-cache-ttl

Duration
(Optional)

30m (30 minutes) Determines how
long proxy rules
from the PAC file
are cached in
memory.

pac-cachettl: "1h" #
Cache for 1
hour

Setting this to 0
disables caching.
pac-refreshinterval

Duration
(Optional)

30m (30 minutes) Specifies how
often the agent
is to check for
updates to the
PAC file.
Useful when the
PAC file is hosted
remotely and
may be updated
periodically.

pac-dial-timeout

Duration
(Optional)

pac-reset-onconnect-failure

Boolean
(Optional)

pac-refreshinterval:
"15m" #
Check for
updates
every 15
minutes

30s (30 seconds) Indicates the
amount of time
to wait when
establishing
a connection
through a proxy
server before
timing out.

pac-dialtimeout:
"10s" #
10 second
timeout

true

pac-reseton-connectfailure:
true

When set to true,
the agent clears
the PAC cache
and attempts
to refresh the
PAC file if a proxy
connection
proxy fails. This
helps recover
from proxy
configuration
changes or
temporary proxy
issues.

Synchronization properties for validating Agent Client Collector plugins
Use the following properties when synchronizing public certificates from the MID Server to the
Agent Client Collector.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4351


<!-- page 4352 -->
Certificate synchronization - MID properties
Property

Description

mid.acc.cert_monitor_disable

Ability to disable the monitor from
synchronizing the public certificates.
Default value: False

mid.acc.cert_monitor_interval

Interval (in seconds) at which the monitor
synchronizes public certificates from a
configured endpoint URL.
Default value: 86400

mid.acc.cert_monitor_target_url

Endpoint URL prefix (minus the filename)
from which the monitor synchronizes public
certificates.
Default value: ServiceNow Install server

mid.acc.cert_monitor_target_filename

Endpoint URL target filename from which the
monitor synchronizes public certificates.
Default value: SNCertificates.zip

Certificate synchronization - Agent properties
Property

Description

fetch-certificates-from-mid

Status of whether the public certificates are
retrieved from the MID Server for plugin asset
validation.
Default value: True

Agent Client Collector statuses
The following table lists and describes the Agent Client Collector statuses.
Agent Client Collector statuses
Status

Description

Up

Agent is connected and working properly.

Warning

Agent has not been refreshed in over
2 minutes (based on the value of the
sn_agent.keep_alive.alive_duration property).

Down

Agent is shut down.

Restarting

Agent restart is in progress.

Upgrading

Agent upgrade is in progress.

Disconnected

Agent's MID Server is down.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4352


<!-- page 4353 -->
Agent Client Collector statuses (continued)
Status

Description

Unknown

Agent’s MID Server has not sent a
keepalive communication for over 10
minutes (based on the value of the
sn_agent.keep_alive.disconnected_duration
system property).

Agent Client Collector log levels
The following table displays the available log levels which indicate the severity of Agent Client
Collector events.

Log level

Description

Panic

Severe errors that cause the service to shut
down unexpectedly.

Fatal

Fatal errors that cause the service to shut
down (status 0).

Error

Non-fatal service error messages.

Warn

Warning messages indicating potential issues.

Info

Information messages representing service
actions.

Debug

Detailed service operation messages which
help troubleshoot issues.

Agent Client Collector log rotation parameters
If Agent Client Collector logs get too large, they can drain system resources. To ensure system
efficiency, configure parameters in the acc.yml file by which to rotate logs out of the system's
storage (Windows default location = C:\ProgramData\ServiceNow\agent-clientcollector\config\acc.yml. Linux default location = /etc/servicenow/agentclient-collector/acc.yml).
Log rotation parameters
Parameter

Definition

log-file-and-stdout

Write logs to the stdout file.
Default: false

log-retention-duration

Maximum age, in days, of the log file before it
is rotated out of the system's storage.
Default: 72h (3 days)

log-retention-files

Maximum number of log files that can be
stored before being rotated out of the system.
Default: 3

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4353


<!-- page 4354 -->
Log rotation parameters (continued)
Parameter

Definition

log-max-size

Maximum size, in MB, of the log file before it is
rotated out of the system's storage.
Default: 10

log-level

The log level to be measured by the logs.
Available options are: Panic, Fatal, Error,
Warn, Info, Debug.
Default: Info
The specified log level represents the lowest
level of events displayed in the log. For
example, a user who specifies Error sees all
Error events, as well as Fatal and Panic events.

Agent Client Collector CPU protection thresholds
When an agent meets the configured thresholds specified in the agent's acc.yml file, it enters
CPU protection mode, either for an individual check or for all checks. Agents in CPU protection
mode appear in the agent logs with the syntax Agent Protection.

Parameter

Description

agent_cpu_threshold_disabled

To prevent the agent from shutting itself
off when CPU memory reaches a certain
threshold, set value to True.
Default=False

cpu_percentage_limit

The percentage of the agent's CPU usage that
sends the agent into CPU protection mode.
Default=5%

cpu_protection_behavior

Assign individual for the system to disable
only the individual check that passed the
cpu_percentage_limit value. If multiple
checks crossed the threshold, the check with
the highest CPU is disabled.
Assign all to disable all checks and pause
data collection.
Possible values: all, individual
Default: all

repeated_high_cpu_num

The number of consecutive times
CPU consumption exceeds the
cpu_percentage_limit for the agent to
enter CPU protection mode.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4354


