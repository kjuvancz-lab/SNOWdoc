# Zurich IT Operations Management — Discovery

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 1198–1347 of 4823 | Part 4 of 5

Sections: Discovery (p748)

---

<!-- page 1198 -->
CimIQL Component Token Summary (continued)
Token

Details

Query
Delimiter
Token

. (Period)

Index
Token

[index]

Token

Delimiter

Token

Index

Query

Separates queries.

Reduces a preceding query's results to a single object at the specified integer
index.
Token

Key

Key Token <key name>='<value>'
Matches an object property designated as a key by exact value.

Token

Condition

Condition <property name><conditional operator><enclosed value>
Token
Matches a single property of an object based on the condition specified.

Token

Parameter

Parameter <parameter name>:'<value>'
Token
Passes a parameter by <parameter name> to the operation being called. The
parameter may be consumed during CimIQL pre-processing or by the CIMOM via
request, depending on the parameter.

Properties Token
* OR <property name>,<property name>,...
• Specifies which properties are to be returned for each object of the final result set.
• The wildcard * returns all properties available. Otherwise, each property name desired is
provided within a comma-separated list.
• This token is required at the end of each statement.
• Example:
CIM_ComputerSystem[0].*

Query Delimiter Token
. (Period)
• Separates queries.
• Example:
CIM_ComputerSystem.PrimaryOwnerContact

Index Token
[index]
• Reduces a preceding query's results to a single object at the specified integer index.
• This token is always optional.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1198


<!-- page 1199 -->
• Example:
CIM_ComputerSystem[0].*

Key Token
<key name>='<value>'
• Matches an object property designated as a key by exact value.
• The <key name> is the name of the property used as a key.
• Example:
CIM_ComputerSystem{CreationClassName='Linux_ComputerSystem',Nam
e='runtime'}.*

Condition Token
<property name><conditional operator><enclosed value>
• Matches a single property of an object based on the condition specified.
• The <property name> is the name of the property to match against.
• The <conditional operator> determines how the property's actual value is compared to its
expected value. The operators available are equality (=) and inequality (!=).
• The <enclosed value> should be one of the following:
◦ Literal value enclosed in single-quotes ' ... '. For example, foo='bar'
◦ Regular expression, enclosed by a pair of slashes / ... /. For example, foo=/bar.*/
• Example:
CIM_ComputerSystem{{Name!='runtime'}}.*

Parameter Token
<parameter name>:'<value>'
• Passes a parameter by <parameter name> to the operation being called. The parameter may
be consumed during CimIQL pre-processing or by the Common Information Model Object
Manager (CIMOM) via request, depending on the parameter.
• Example:
CIM_ComputerSystem.CIM_RunningOS{{ResultClass:'Win32_ComputerSy
stem'}}.*
CimIQL tutorial
This is a tutorial by example where each example builds on the previous example.
CimIQL Tutorial
Order CimIQL Statement

Result

1

Retrieves the firs
of all instances o
CIM_ComputerS
and its descend
Retrieves all pro

CIM_ComputerSystem[0].*

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1199


<!-- page 1200 -->
CimIQL Tutorial (continued)
Order CimIQL Statement

Result

2

CIM_ComputerSystem.PrimaryOwnerContact

Retrieves all
instances of
CIM_ComputerS
and their descen
Retrieves only
one property,
PrimaryOwnerCo

3

CIM_ComputerSystem{CreationClassName='Linux_ComputerSystem',Name='runtime'}.* Retrieves a singl
unique instance
CIM_ComputerS
and its descend
All key tokens m
specified within
identity token.

4

CIM_ComputerSystem{{Name!='runtime'}}.*

Retrieves all inst
and descendant
CIM_ComputerS
that do not have
property of 'runt

The filter token {
filters out instanc
that do not conta
of the properties
specified.
5

CIM_ComputerSystem{{Name=/^run.*$/}}.*

Retrieves all inst
and descendant
CIM_ComputerS
that have a value
matching the reg
expression cont
within the / / cha

Note: The

expression d
not require s
quotations.

The filter token {
filters out instanc
that do not conta
of the properties
specified.
6

CIM_ComputerSystem{{Name='runtime'}}[2].*

Retrieves the se
result of all insta
CIM_ComputerS
and its descend

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1200


<!-- page 1201 -->
CimIQL Tutorial (continued)
Order CimIQL Statement

Result

where the instan
have a property
'runtime'.

The order of ope
follows the query

1. Query server f
CIM_Compute
and descenda

2. Filter results b
Name propert

3. Retrieve the se
instance that p
the filter.
7

CIM_ComputerSystem.CIM_RunningOS[0].Name

Retrieves the Na
property for the
CIM_OperatingS
instance of each
CIM_ComputerS
instance.

The middle-toke
CIM_RunningOS
name of the Ass
class, not the en
8

CIM_ComputerSystem.CIM_RunningOS{{Name=/CentOS/}}[0].Name

Retrieves the Na
property for the
CIM_OperatingS
instance of each
CIM_ComputerS
instance, where
CIM_OperatingS
instance has a N
property contain
'CentOS'.

CimIQL results
CIM Probe results are passed to the probe sensor as an XML document embedded within the
<output> element.
The following is a commented example of a CimQuery batch result.
<!-- document root -->
<cimqueryset>
<!-- A single query and query result. Multiple <cimquery> tags
may be provided. -->
<cimquery>
<!-- The original query, enclosed by CDATA. -->

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1201


<!-- page 1202 -->
<query><!CDATA[[>CIM_ComputerSystem[0].PrimaryOwnerContact<! ]]
></query>
<!-- The resulting data is enclosed within a single <result>
tag. -->
<result>
<!-- A single class instance result. Multiple <instance>
tags may be provided.
Special tags are prefixed with an underscore
character. -->
<instance>
<!-- The instance's CIM classname -->
<_classname>Linux_ComputerSystem</_classname>
<!-- A set of this instances identifying keys. Always
provided, regardless of property filters.
Within here, each key is provided as
<KeyName>VALUE</KeyName> with the VALUE enclosed as CDATA. -->
<_key>
<CreationClassName><![CDATA[Linux_ComputerSystem]]></CreationCl
assName>
<Name><![CDATA[runtime]]></Name>
</_key>
<!-- Each property that matches the query's property
filter will be provided here, in the same format as keys;
As <PropertyName>VALUE<PropertyName> where VALUE is
enclosed as CDATA -->
<PrimaryOwnerContact><![CDATA[root@runtime]]></PrimaryOwnerCont
act>
</instance>
</result>
</cimquery>
</cimqueryset>
DNS probe
DNS probes determine the DNS names for configuration items (CI).
The default DNS Name Resolver probe is a lightweight and fast probe. It achieves its speed by
executing in parallel on the MID Server. The probe utilizes DNS lookup by the MID Server host OS
to make use of the maintained DNS cache. The probe also leverages the hosts file on the OS.
These performance improvements can be disabled by reverting to the legacy DNS probe with
either MID Server properties or parameters. The names of the MID Server properties/parameters
are [mid.probe.use_legacy_forward_dns] and [mid.probe.use_legacy_reverse_dns]. For more
information, see MID Server parameters
and MID Server properties .
DNS probe definitions
Probe

Description

DNS

Determines DNS names for devices. It has the
parameter ip_addresses.

DNSLookupProbe

Resolves the IP address of a host.

DNSNameResolver

Resolves the DNS name of an IP address.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1202


<!-- page 1203 -->
Port probes
Probe

Description

dns

Triggered by 'dns'. Uses 'DNS Name Resolver'
Scanner and uses classification 'Process
Classification [discovery_classy_proc]'

Horizontal Pattern probe
Discovery uses the Horizontal Pattern probe to launch patterns for horizontal discovery.
The Horizontal Pattern probe works with the Horizontal Discovery sensor to enable Discovery
to use patterns for discovery. When you see messages in the ECC Queue from this probe, they
appear with the ECC queue name Pattern Launcher, followed by the name of the pattern.
The probe contains a sensor named Horizontal Discovery Sensor, which performs the
actual updates of the CMDB based on identification rules.
If you create your own device or process classifier and you want to use patterns for discovery,
you must specify this probe in the classifier record. You do not need to modify this probe or the
Horizontal Discovery sensor.

Splitting payload
When Discovery uses patterns to find certain devices like load balancers, large amounts of data
could be sent to the ECC Queue. To better handle large amounts of data, the horizontal pattern
probe can split the payload into chunks, and then create multiple ECC Queue records.
Control how the MID Server splits payloads and handles payloads using properties. See MID
Server properties
for more information.
PowerShell probe
The PowerShell Probe executes PowerShell V2 scripts on the MID Server host.
PowerShell scripts are defined as probe parameters with the filename as the parameter name. It
is available as a Probe probe type by specifying PowerShell as the probe's ECC queue topic.

PowerShell probe parameters
Parameter name

Description

source

[Required] The initial host to connect to.
Default: None

<script name>.ps1

[Required] The filename of the PowerShell script
to run. Replace <script name> with a valid
filename prefix.
Default: None

powershell_command_parameter_passing Specifies whether to pass script parameters on
the command line. Regardless of this parameter's
value, ServiceNow makes all script parameters
on the command line automatically available to
PowerShell scripts as environment variables.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1203


<!-- page 1204 -->
Parameter name

Description

Default: false
powershell_param_<script parameter
name>

Passes additional parameters to the PowerShell
script to be executed. Each parameter will appear
to the script as an environment variable in the
format $env:SNC_<script parameter
name>. Parameters with this prefix are not
considered encrypted and are passed through
to the script untouched. Make sure you
select the appropriate parameter between

powershell_param_<script parameter
name> and powershell_<script
parameter name>. Using the wrong prefix
results in errors in the PowerShell execution,
which is passed back to the instance in the ECC
queue input.
Default: None
powershell_<script parameter name>

Passes additional parameters to the PowerShell
script to be executed. Each parameter will
appear to the script as an environment
variable in the format $env:SNC_<script
parameter name>. The MID Server assumes
that any parameter with this prefix is encrypted
and attempts to decrypt it. Make sure you
select the appropriate parameter between

powershell_param_<script parameter
name> and powershell_<script
parameter name>. Using the wrong prefix
results in errors in the PowerShell execution,
which is passed back to the instance in the ECC
queue input
Default: None
debug

Enables debug log output during the probe.
Default: false

credentials_debug

Displays a <credentials_debug> section in the
ECC queue, which can help you troubleshoot
credentials. If you set this property to true,
credential troubleshooting information is output to
the ECC queue, even if the credentials succeed.
Default: false

Scripting requirements
Any custom PowerShell scripts must use environment variables to pass any non-Boolean
command line parameter. Replace non-Boolean parameters in the Param() portion of the script
with script variables of the same name. Define the script variable as part of the environment with
an SNC_ prefix. So a string parameter such as this:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1204


<!-- page 1205 -->
Param([string]$paramName)
Becomes a script variable such as the following:
if(test-path env:\SNC_paramName) {
$paramName = $env:SNC_paramName
}
For example, this parameter definition from the PSScript.ps1 script contains several string
parameters that need to be redefined as script variables:
Param([string]$computer, [string]$script, [string]$user,
[string]$password, [boolean]$useCred, [boolean]$isDiscovery,
[boolean]$debug)
Defining the non-Boolean parameters as script variables would result in this type of script:
Param([boolean]$useCred, [boolean]$isDiscovery, [boolean]$debug)
# Copy the environment variables to the params
if(test-path env:\SNC_computer) {
$computer=$env:SNC_computer
}
if(test-path env:\SNC_script) {
$script=$env:SNC_script
}
if(test-path env:\SNC_user) {
$user=$env:SNC_user
$password=$env:SNC_password
}
Create a custom PowerShell probe
You can create your own PowerShell probe and configure probe parameters.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Discovery Definition > Probes.
2. Click New.
3. Enter the following values.
◦ Name: Any unique name
◦ Probe Type: Probe
◦ ecc_queue_topic: Powershell
4. Right-click the form header and click Save.
5. From the Probe parameters related list, click New.
6. Create a probe parameter record for each parameter.
7. Click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1205


<!-- page 1206 -->
SCPRelay probe
The SCP Relay Probe copies a single file or the contents of a directory from one host to another,
using the MID Server as a relay.
The SCP Relay probe uses the same parameters as SSHCommand. The commands may be
sent in or out of the context of a terminal (tty), and with or without sudo (for those commands,
such as lsof, that require being executed in the context of root to cough up the information
we need). When commands are sent in the context of a terminal, the path is automatically
widened to include a set of default paths (and this can be further widened with the path_override
parameter). If the target machine is the local machine, SSH is not used; instead, a local shell is
run to execute the command.
For instructions on configuring probe parameters, see Set probe parameters.
The following parameters may be passed to the SCP Relay probe:
Parameters
Parameter

Description

Default
Value

debug

Enables debug logging.

false

debug_ssh

Enables J2SSH debug logging agent.log

false

Note: This log file can grow quickly and should be
disabled when not needed.
timeout

Sets the socket connection timeout, in ms.

60000

path_override

Overrides the default paths set before executing a command.

none

keyboard_interactive If true, forces the use of keyboard_interactive SSH login mode. false
must_sudo

If true, forces the command to be executed through sudo.

false

run_in_terminal

If false, disables SSH commands from running in an SSH
terminal (this will break many commands).

true

long_runner

If present, indicates a long-running SSH command.

false

set_path

If false, disables setting the path environment variable before
running the command.

true

rm_override

If present, overrides the default rm command ("/sbin/rm -f")
with the provided value.

none

source

Source host or IP to copy from.

required

source_port

SSH port on the source (defaults to 22).

required

from_file

Name of the file to copy from the source.

required

target

Target host or IP to copy to.

required

target_port

SSH port on the target (defaults to 22).

required

to_file

Name of the file to copy to the target.

required

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1206


<!-- page 1207 -->
SNMP probes
The SNMP probes use the SNMP protocol to query a particular device for a list of OIDs, which
are then traversed and the results passed back to the sensors. MID Servers support all SNMP
protocol versions by default. You can set a MID Server to only support specific versions of SNMP.
Discovery supports SNMP versions 1, 2c, and 3. The default value is ALL. If you select one of the
versions, but don’t have that version’s credentials, the Use SNMP Version reverts back to ALL.

Note: SNMP version credentials must be active=true. If a particular version is inactive,
it will also revert back to ALL. A message will appear similar to: --- No SNMP
credentials of type 'snmpv3' are active in this instance.
Setting Use SNMP version back to All.

SNMP patterns
The Network Router pattern replaces the several SNMP-related probes for the discovery of
routers and switches. See Available discovery patterns for a list of patterns.
SNMP probe parameters
This list of parameters may be passed to the SNMP probes.
For instructions on configuring probe parameters, see Set probe parameters.

Parameter

oid_spec_list

Description

A list of OID specifications, one per line. Each specification
must be in one of the following two forms:

Default Value

required

• walk {OID}: Walks the OID and all its children
• table {OID} {OID Children}: Walks all entries in the
table, returning only the given children (for example,
"iso.org.dod.internet")
{OID Children} refers to a comma-delimited list of child
nodes within the entries for the given table. For example,
"ifEntry.ifIndex,ifEntry.ifDescr,ifEntry.ifType" are OID children of
the table "iso.org.dod.internet.mgmt.mib-2.interfaces.ifTable".
As a convenience, the table entry prefix may be left
off. (The preceding children could be specified as
"ifIndex,ifDescr,ifType".)
Any child may include a filter qualifier in parentheses.
For example, the child "entPhysicalContainedIn(=0)"
specifies returning table entries only if the value of
"entPhysicalContainedIn" equals 0. The operators supported
in the expression are:
• = : equals
• != : does not equal
• # : contains
If more than one child has a filter expression, a match on any
one of the children causes that entry to be read.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1207


<!-- page 1208 -->
Parameter

Description

Default Value

Any content including and after a "//" is ignored
(comments). Any OID that does not start with "1.3.6.1" or
"iso.org.dod.internet" automatically prefaces with "1.3.6.1." as a
convenience.
source

The IP address or host name of the device to query SNMP on.

required

index

The index to apply after the community string, for Cisco-style
community string indexing (for VLAN interrogation).

0

credential_id

The sys_id of a specific credential that is preferred for use
above the rest. This parameter is for internal use only and is
not supported.

none

credential_tag The credential tag that must be used. This parameter is for
internal use only and is not supported.

none

timeout

1500

The timeout value (in milliseconds) to wait for a response,
instead of the default. You can use this parameter to override
the mid.snmp.request.timeout SNMP MID Server
configuration parameter.

Note: When use_getbulk is set to true, the timeout
value is for an individual GETBULK request.
established_session_timeout
The interval (in milliseconds) to wait for a response
after at least one response has been received. Longer
values can be useful for collecting complete and
accurate data. You can use this parameter to override the
mid.snmp.session.timeout SNMP MID Server
configuration parameter.

500

debug

false

Enables debug logging. Set to true for debug mode.

request_intervalThe interval (in milliseconds) between successive requests
400
for an OID when a response has not been received, until
the timeout (or established_session_timeout) value is
reached. If this value is set to at least as long as the timeout
(or established_session_timeout) value, then only a single
request is sent for any particular OID. If you change the
timeout (or established_session_timeout) value, adjust the
request_interval at the same time to avoid sending too many or
too few requests for the same OID, as appropriate for a given
environment.
request_delay The interval (in milliseconds) between the receipt of a
0
response and the transmission of the next request. The default
is 0 (no delay). This value may be set to slow the overall rate of
an SNMP query.
result_format

Returns JSON formatted payloads for these probes:

JSON

• SNMP - F5 BIG-IP - System
• SNMP - Netscaler - System
• SNMP - Routing

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1208


<!-- page 1209 -->
Parameter

Description

Default Value

This parameter returns data in a more compact format to
prevent sensor failure or memory problems on a node when
the payload becomes large. Do not change this value or delete
this parameter.

Warning: Use of this parameter with any other probes
causes the sensor to fail.
use_getbulk

Enables the use of SNMP GETBULK requests to retrieve
tabular data from SNMP devices instead of using multiple
SNMP GETNEXT requests. For tabular data, GETBULK is more
efficient. Regardless of the request type, certain devices may
not return any results when they are busy with other tasks. This
parameter is used to configure at the probe level. GETBULK
can also be set for an individual MID Server or globally for all
MID servers. Settings are listed in the order of precedence:

false

• SNMP probe parameter
• MID Server configuration parameter
• MID Server properties
The established_session_timeout,
request_interval, and request_delay parameters
are ignored when use_getbulk is set to true. Instead, the
retries parameter is available. The timeout configuration is
the same one used by use_getscalar.
By default, the following probes use GETBULK requests (the
parameter value is true).
• SNMP - Switch - Vlan
• SNMP - Switch - BridgePortTable
• SNMP - Switch - ForwardingTable
• SNMP - Switch - SpanningTreeTable
• SNMP - Network - ArpTable
• SNMP - Layer 2 Protocol Caches
• SNMP - F5 BIG IP - System (only for Service Mapping
customers)

Note: These probes have a timeout value of 5000.
use_getscalar Enables the use of simplified retrieval and handling of scalar
values from SNMP devices.

false

The established_session_timeout,
request_interval, and request_delay parameters
are ignored when use_getscalar is set to true. Instead,
the retries and timeout parameters are available.
The timeout configuration is the same one used by
use_getbulk.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1209


<!-- page 1210 -->
Parameter

Description

Default Value

retries

The number of additional attempts Discovery makes
to complete an individual GETBULK request (see
use_getbulk) or a GETNEXT request when the
use_getscalar parameter is set to true.

2

Load a MIB module
You can load an additional Management Information Base (MIB) module by creating a new
ecc_agent_mib record and attaching the actual MIB file to the record.

Before you begin

Role required: admin

About this task

MIBs are only loaded during MID Server startup. When the MID Server starts up, the following
MIB modules are loaded:
• Modules that are bundled with the MID Server software. These MIBs are defined industry
standards.
• Modules that are included in each instance. These MIBs are provided by manufacturers for
Discovery to extract specific information from a device.
You can view any errors associated with loading a MIB module in the agent log.

Note: Adding an MIB file allows you to request OID values using String/ASN notation in
addition to numerical notation, but it doesn't guarantee that any additional information will
be retrieved. It simply provides another way to define new OIDs you may want to discover.

Procedure
1. Navigate to All > MID Server > SNMP MIBs.
2. Check whether dependencies are met.
If your new MIB has dependencies on another MIB, the MIB that fills the dependency must
exist before you create your new record. Search the existing MIBs to check that the required
MIBs are already loaded. If they are not, use this procedure to also add them to the instance.
3. Click New to create a new record.
The MID Server MIB File form opens to create a new ecc_agent_mib record.
4. Use the following information to fill out the form:
◦ Name: The name of the MIB.
◦ Version: The version of the MIB.
◦ Source: Use this field to note where the MIB was acquired, such as a URL.
◦ Description: The description that appears in the ecc_agent_mib table.
◦ Active: This check box denotes whether the MIB module is enabled or disabled in the
instance.
5. Click the Add Attachment icon ( ) in the upper right to attach the actual MIB file to the new
record.
The MIB name must begin with an alphabetical character. Remaining characters must be one
of the following: alphanumeric, hyphen ( - ), or underscore ( _ ). The file name must not have an
extension. You can reference the existing MIBs for examples. Use the actual name of the MIB
for both the MIB record name and the attachment name, but it is not required.
6. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1210


<!-- page 1211 -->
What to do next

Update the appropriate pattern or probe to query for the specific OID values defined in the new
MIB.
SNMP probe MIB modules
A management information base module (MIB) is a database that is used to manage elements in
a network.
Your instance includes object definitions from the most common management information base
(MIB) files. Before adding a new object definition, consult the list of MIB modules to ensure
that the object definitions are not already available. The instance includes object definitions
from the most common management information base (MIB) files. The MID Server MIB File
[ecc_agent_mib] table is domain separated. You can create versions of these policies that only
a MID Server from the same domain can use. For instructions, see Set up domain separation for
MID servers .
The following table contains the MIBs that load automatically. The MIBs that are bundled with
the MID Server are not visible in the instance. The MIBs that are in the ecc_agent_mib table are
included in the instance by default and can be viewed in the MID Server > SNMP MIBs module.

Important: MIB files in a ServiceNow instance do not use a file extension. If the

glide.attachment.extensions system property in your instance contains a list of file
extensions permitted for import, MIB files do not load. To ensure that MIB files can load, add
a temporary extension to the files prior to loading, such as .mib, and then list that extension
in the glide.attachment.extensions property. When you load the file, a business rule called
MIB filename compliance strips this extension from the file before it inserts the record into
the ecc_agent_mib table.
Management Information Base (MIB) module
Bundled with the MID Server

Included in the instance

ATM-MIB

A10 AX MIB

BRIDGE-MIB

A10 COMMONS MIB

DISMAN-EVENT-MIB

CISCO-SMI

ENTITY-MIB

CISCO-STACK-MIB

EtherLike-MIB

CISCO-TC

FRAME-RELAY-DTE-MIB

CISCO-VTP-MIB

HOST-RESOURCES-MIB

F5-BIGIP-COMMON-MIB

HOST-RESOURCES-TYPES

F5-BIGIP-LOCAL-MIB

IANA-ADDRESS-FAMILY-NUMBERS-MIB

F5-BIGIP-SYSTEM-MIB

IANAifType-MIB

FOUNDRY-SN-AGENT-MIB

IP-MIB

FOUNDRY-SN-ROOT-MIB

IP-FORWARD-MIB

LanMgr-Mib-II-MIB

IPMROUTE-STD-MIB

MSFT-MIB

IPV6-MIB

NetWare-Host-Ext-MIB

ISDN-MIB

NetWare-Server-MIB

RFC-1212

PowerNet-MIB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1211


<!-- page 1212 -->
Management Information Base (MIB) module (continued)
Bundled with the MID Server

Included in the instance

RFC-1215

QMS-MIB

RFC1155-SMI
RFC1213-MIB
RFC1398-MIB
RFC1406-MIB
RMON2-MIB
RSVP-MIB
SNMPv2-SMI
SNMPv2-TC
UPS-MIB
SSHCommand probe
A probe using the ECC queue topic name SSHCommand executes a shell command on the
target host, and returns the resulting output to the sensor.
Discovery supports Bourne Shell (sh) and Bourne-again Shell (bash) commands. Enter shell
script commands in the probe's ECC queue name field. The shell script can use variables and file
operations supported by the target UNIX shell.
• The SSH engine is active by default on new instances.
• Customers on upgraded instances can manually enable ServiceNow SSH for a particular
probe by setting the use_snc_ssh parameter to true. Alternatively, enable it for all probes on
the MID Server by setting the MID Server parameter mid.ssh.use_snc to true.

Note: To discover network devices, such as routers and switches, use SNMP credentials
credentials, not SSH credentials.
SSHCommand parameters
Several parameters are available for the SSHCommand probe.
For instructions on configuring probe parameters, see Set probe parameters.
Parameters Table
Parameter

Description

allow_unsupported_shells

Allows a probe designer to attempt to run a command on a
device that does not have a supported shell. With no shell, the
following is true:
• No path information can be provided.
• No scripts can function, because there is no ability to handle
script parameters.
• The text that is specified in the ECC queue name field of the
probe form is the raw command that is run on the device.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1212


<!-- page 1213 -->
Parameters Table (continued)
Parameter

Description

For example, you may design a probe to display the version of
a Cisco switch running NX-OS. The command that the switch
understands is show version. To accomplish this, put the
show version command in the ECC queue name field, and
add the parameter name allow_unsupported_shells
with a value of true.
This parameter is only effective for sncssh. It is not supported
with j2ssh. Currently supported shells are sh, bash, ksh, csh, and
tcsh.
• Type: string, true or false
• Default value: false
source

[Required] Specifies the initial host to connect to.
• Type: string (URL)
• Default value: None

port

Specifies the target port to connect to.
• Type: integer (port)
• Default value: 22

debug

Specifies whether to write SSH debug information to the log file.
The parameter usage depends on whether the ServiceNow SSH
client is enabled.
When the ServiceNow SSH client is enabled, this parameter
functions as follows:
• Type: string
• Default value: false
The following string values are valid for the ServiceNow SSH
client:
◦ true: Enables SSH debug information in the log file.
◦ false: Disables SSH debug information in the log file.
◦ <IP Addresses>: Specifies which IP ranges to enable SSH
debug information in the log file. You can enter IP addresses
in the following formats:
▪ An IP range defined by a slash and the number of bits
in the subnetwork. For example, the string 10.10.10.0/
24 scans 24 bits of IP addresses from 10.10.10.0 to
10.10.10.254.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1213


<!-- page 1214 -->
Parameters Table (continued)
Parameter

Description

▪ An IP range defined by a dash. For example, the string
10.10.11.0-10.10.11.165 scans the IP addresses from 10.10.11.0
to 10.10.11.165.
▪ A comma-separated list of specific IP addresses. For
example the string 10.10.11.200,10.10.11.235 scans the IP
addresses 10.10.11.200 and 10.10.11.235.
◦ deferred: Specifies to log SSH debug information in memory
unless an error or warning occurs. If an error or warning
occurs, the platform publishes the debug information to
the log file. This ensures that only the part of the log file
pertaining to the error or warning is recorded. If no error or
warning is detected, the platform deletes the unused log
data from memory when the session closes. Each session
stores up to 1000 log messages. If the session exceeds
1000 log messages, the deferred log discards the oldest log
message to make room for the newest log message.
When the ServiceNow SSH client is disabled, this parameter
enables or disables SSH debug information in the log file:
• Type: true | false
• Default value: false
debug_ssh

Specifies whether the legacy SSH client writes debug
information into the agent/logs/agent.log log file.

Note: This log file can grow quickly and should be
disabled when not needed.
The ServiceNow SSH client does not use this parameter.
• Type: true | false
• Default value: false
timeout

Sets the socket connection timeout for the legacy SSH client.
The ServiceNow SSH client does not use this parameter.
• Type: integer (milliseconds)
• Default value: 60,000

path_override

Specifies how to change the default paths set before executing a
command. Type one or more override paths delimited by a colon
(:). The default path is /usr/sbin: /usr/bin: /bin: /sbin.
The ServiceNow SSH client accepts the following prefixes in front
of the path_overide value:
• append: Appends the override path to the end of the host’s
path. This is the default behavior.
• replace: Replaces the host path with the path_overide value.
• prepend: Appends the override path to the front of the host
path.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1214


<!-- page 1215 -->
Parameters Table (continued)
Parameter

Description

• Type: string (a colon-separated list of directories)
• Default value: None
keyboard_interactive

Determines whether to enforce keyboard_interactive SSH login
mode.
• Type: true | false
• Default value: false

must_sudo

Determines whether SSH commands run through sudo.

Note: must_sudo probe parameter affects all patterns.
On Unix or Linux hosts, pattern execution can run
many different commands, some should not have sudo
appended.
• Type: true | false
• Default value: false
run_in_terminal

Determines whether SSH commands run in an SSH terminal.
• Type: true | false
• Default value:
◦ ServiceNow SSH client: false
◦ Legacy SSH client: true

set_path

Determines whether the probe is allowed to alter the session's
PATH variable or not. By default, during session setup, the PATH
variable is set to /usr/sbin:/usr/bin:/bin:/sbin.
• Type: true | false
• Default value: true

rm_override

Overrides the default remove command (/bin/rm -f) with
the provided value.
• Type: string
• Default value: none

use_snc_ssh

Enables the ServiceNow SSH client. The ServiceNow SSH client
is active by default on new instances. Enabling the ServiceNow
SSH client disables the legacy SSH client.
• Type: true | false
• Default value: true

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1215


<!-- page 1216 -->
Parameters Table (continued)
Parameter

Description

command_timeout_ms

Number of milliseconds an SSH command is allowed to run
before timing out (default is configurable per MID server).
The legacy SSH client does not use this parameter.
• Type: integer
• Default value: value of the mid.ssh.command_timeout_ms MID
Server parameter.

channel_timeout_ms

Specifies the amount of time, in milliseconds, that a MID Server
waits for activity during processing of an SSH command. If the
MID Server does not detect activity in the specified timeout
window, this parameter kills the command.
• Type: integer (milliseconds)
• Default value: 300000 (5 minutes)

preserve_sudo_environment Specifies whether to use sudo to preserve the environment for
SSH. This parameter is only effective if the sudo environment on
the host being probed supports the -E switch.
• Type: true | false
• Default value: false
credentials_debug

Displays a <credentials_debug> section in the ECC queue, which
can help you troubleshoot credentials. If you set this property
to true, credential troubleshooting information is output to the
ECC queue, even if the credentials succeed. See Credentials
Troubleshooting
for more information.

SSHCommand path
The SSHCommand probe computes the default path from the following sources.
• MID Server parameter: mid.ssh.path_override
• SSH Command probe parameter: path_override
• User's default path: Shell configuration file
If you set the MID Server path override parameter, Discovery appends this path to the default
path. If you set the probe path parameter, Discovery uses this path instead of the default
path. Discovery always appends a user's default execution path to the MID Server and probe
parameter paths.

Default Path
By default, the MID Server searches for SSH commands in the following paths:
• /usr/sbin
• /usr/bin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1216


<!-- page 1217 -->
• /bin
• /sbin
Shell script options
The SSHCommand probe supports the following scripting options in the ECC queue name field.
Shell Scripting Options Table
Summary Syntax

Description

Variable

${variable}

Replaces the token with the value of the variable. For example,
${catalina_home} specifies the installation location of a Tomcat
server.

Include
File

${File:file_name.sh} Treats the contents of the specified file as a shell script. For
example, ${File:findcat.sh} runs the findcat shell script.

SSH commands not requiring a privileged user during probe-based discovery
These tables display the SSH commands run by Discovery probes on target devices during
horizontal discovery. These SSH commands don’t require elevated privileges to run.

Operating systems
For information on commands used by Service Mapping during the top-down discovery, see
Service Mapping commands requiring a privileged user and Service Mapping commands not
requiring a privileged user.
AIX commands
Command (ECC queue name)

Parameters

sh

variable

lsattr

-El sys0 -a modelname -F value

lslpp

-Lc

/etc/ifconfig

-au; netstat -in

instfix

-i | grep AIX_ML

oslevel

-r

echo `lsattr

-El sys0 -a systemid | cut ...

rmsock
lsdev

• -C -F 'name,status' -c memory|

grep '^mem'

• -C -F 'name,status' -c

processor -S a

ps

-aef -o "pid,ppid,args"

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1217


<!-- page 1218 -->
Linux commands
Command (ECC queue name)

Parameters

arp

-n

bash

variable

cat

• /sys/hypervisor/compilation/

compiled_by

• /sys/devices/virtual/dmi/

id/product_uuid

• /etc/*release
• /proc/cpuinfo
• /var/lib/dpkg/status
• /proc/mounts
• /proc/scsi/scsi
• /etc/iscsi/initiatorname.iscsi
• /sys/hypervisor/compilation/

compiled_by

grep MemTotal

/proc/meminfo

ifconfig

-a && route -n

sh

variable

rpm

-q -a --qf

ls

• -d /sys/block/* | grep '^/sys/

block/\(dm-|sd|sr\)'

• /sys/class/scsi_host/host*/

protocol 2> /dev/null

• /sys/class/scsi_host/host*/

info 2> /dev/null

• -d /sys/class/fc_host/host*

shopt

-s extglob

findmnt

-l -n -o SOURCE,TARGET 2>/dev/
null

find

/sys/class/iscsi_session
-maxdepth 1 -type l

fcoeadm

-i

ip

• neighbor 2> /dev/null
• address show && ip route

hostname

-f 2> /dev/null

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1218


<!-- page 1219 -->
Linux commands (continued)
Command (ECC queue name)

Parameters

dnsdomainname

2> /dev/null

grep

• ^[[:space:]]*domain /etc/

resolv.conf

• ^[[:space:]]*search /etc/

resolv.conf

wget

• --spider -t 1 -T 1
• -qO-

curl

--connect-timeout 1

python

-c

sudo cat

/sys/devices/virtual/dmi/
id/product_uuid

HP-UX commands
Command (ECC queue name)

Parameters

ps

-elx

echo itick_per_usec/D

| adb -k /stand/vm...

sh

variable

model
uname

• -i
• -r

swlist

-l product | grep -v 'PH.._'

echo
'memory_installed_in_machine/D'

| a...

netstat

-in | grep -v Name

lanscan

-ia

typeset

-i2

ioscan

-fnkC processor | grep
PROCESSOR | wc -l

Solaris commands
Command (ECC queue name)

Parameters

sh

variable

kstat

cpu_info

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1219


<!-- page 1220 -->
Solaris commands (continued)
Command (ECC queue name)

Parameters

pkginfo

-l | egrep 'PKGINST|NAME|
CATEGO...

prtconf

• | grep Memory
• | grep 'System Configuration:'
• -pv 2>/dev/null

ifconfig

-a; netstat -pnr -f inet

arp

-an

showrev

-p

sneep

-T

bash

variable

pkg

list

iostat

-En | awk '/^c/'

zpool

• list
• status | awk '$1 == "NAME", $1

== ""'

df

-k

fcinfo

hba-port

zonename
zoneadm
zonecfg

-z

hostid
uname

-r

nawk
ps

• -o pid,ppid
• -awwx

pfiles

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1220


<!-- page 1221 -->
Mac commands
Command (ECC queue name)

system_profiler

Parameters

• SPHardwareDataType

SPMemoryDataType -xml

• SPSerialATADataType

SPSASDataType
SPFireWireDataType -xml

• SPNetworkDataType

-xml;ifconfig | grep
'\Winet6\W'

• SPSoftwareDataType -xml
• SPHardwareDataType -xml
• SPApplicationsDataType -xml

last

| grep -m 1 console

hostname

2> /dev/null

grep

• '^[\s]*domain' /etc/

resolv.conf

• '^[\s]*search' /etc/

resolv.conf

UNIX commands
Command (ECC queue name)

ps

Parameters

• awwxo pid,ppid,command | sed

-n '/<defunct>/!p'

• -ef

sh

variable

cat

variable

variable

-version

uname

-a

df

-kP

uptime;env

LC_ALL=C date '+%a %b %e %H:%M
%Z %Y'

echo

\echo `uname -I` `hostname`
`uname -Iv`.`uname -Ir` 2>&1``

awk
grep
find
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1221


<!-- page 1222 -->
UNIX commands (continued)
Command (ECC queue name)

Parameters

uuencode

-m

base64

-w 0

wc

-c

nohup
vmware

-v 2>&1

systemctl

status cloudian-s3 2>&1

HMC OS commands
Command (ECC queue name)

Parameters

echo

\lshmc -V 2>&1``

Web servers
Apache commands
Command (ECC queue name)

Parameters

sh

variable

httpd_command

-V

Tomcat commands
Command (ECC queue name)

Parameters

sh

variable

cat

variable

find -L ${dirname}

-name web.xml -print 2>/dev/
null

NGINX commands
Command (ECC queue name)

sh

Parameters

• get-nginxcfg
• get-nginx-ver

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1222


<!-- page 1223 -->
Databases
Oracle commands
Command (ECC queue name)

Parameters

sh

variable

lsnrctl

status

SQL commands
Command (ECC queue name)

Parameters

cat

variable

variable

-V

HBase commands
Command (ECC queue name)

Parameters

cat

variable

sh

variable

variable

-lv | grep ^${processID}

echo

"version" | hbase shell

Applications
ESX - OS commands
Command (ECC queue name)

Parameters

sh

variable

F5 - OS commands
Command (ECC queue name)

Parameters

sh

variable

tmsh

show sys version 2>&1

HAProxy commands
Command (ECC queue name)

Parameters

sh

variable

variable

-v

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1223


<!-- page 1224 -->
JBoss commands
Command (ECC queue name)

Parameters

find

-name web.xml -print

cat

variable

KVM commands
Command (ECC queue name)

Parameters

sh

variable

virsh

Various capabilities

Puppet commands
Command (ECC queue name)

Parameters

puppet

• --version
• config print

hostname

--fqdn

Storage
Command (ECC queue name)

Parameters

purehw

list --all --nvp --type ch

vxprint

-AQmb

vxdisk

path

sudo vxdisk

list | awk 'NR > 1'

pureblade

list 2>&1

Related topics
Discovery commands for probes and patterns
SSH commands requiring a privileged user during probe-based discovery
These tables display the SSH commands run by Discovery probes during horizontal discovery.
These SSH commands require elevated privileges to run.

Operating system commands requiring elevated rights
These examples assume that the user name is Disco. Substitute the actual user name and verify
that the paths for the commands match the paths on the system.

Note: Sudo commands don’t work with private key credentials, because there’s
no password to supply to the sudo command. A solution is to add the NOPASSWD
option to the sudo configuration. For example, you might enter: disco ALL=(root)
NOPASSWD:/usr/sbin/dmidecode,/usr/sbin/lsof,/sbin/ifconfig.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1224


<!-- page 1225 -->
For information on commands that don’t require elevated rights, see SSH commands not
requiring a privileged user during probe-based discovery.
For information on commands used by Service Mapping during the top-down discovery, see
Service Mapping commands requiring a privileged user and Service Mapping commands not
requiring a privileged user.

SSH key not validated
When the MID Server connects to a system, the MID Server doesn’t perform host key validation
against that system and so treats it as untrusted. If an attacker performs a man-in-the-middle
attack and redirects the traffic to a malicious SSH service, the attacker can intercept or modify
any data sent over the connection.
Therefore, limit any sensitive information exchanged between the MID Server and the target
SSH server. Only use keys or certificates for SSH authentication, and avoid sending system
credentials. Configure NOPASSWD in the sudoers file for the required privileged commands.
HP-UX
Command

Purpose

adb

Gathers CPU speed and memory.
/etc/sudoers line example: Disco ALL=(root) /usr/bin/adb

All Linux
Command

Purpose

dmidecode Gathers several pieces of information about the hardware, including the serial
number embedded within the motherboard.
/etc/sudoers line example: Disco ALL=(root) /sbin/dmidecode

fdisk

Gathers the disks and size information on the system.
/etc/sudoers line example: Disco ALL=(root) /usr/bin/fdisk -l

multipath Gathers device mappings for MultiPath Input Output (MPIO).
/etc/sudoers line example: Disco ALL=(root) /usr/bin/multipath
-ll

Linux and Solaris
Command

Purpose

dmsetup

Examines a low-level volume.
/etc/sudoers line example
• Disco ALL=(root) /usr/bin/dmsetup table *
• Disco ALL=(root) /usr/bin/dmsetup ls

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1225


<!-- page 1226 -->
All UNIX versions
Command

Purpose

lsof

Determines the relationship between processes and the connections being made
to the system.
/etc/sudoers line example: Disco ALL=(root) /sbin/lsof

oratab

Grants read access to the oratab file for locating the Oracle Home and pfile.

netstat Determines the relationship between processes and the connections being made
to the system.
/etc/sudoers line example: Disco ALL=(root) /bin/netstat

ss

Determines the relationship between processes and the connections being made
to the system.
/etc/sudoers line example: Disco ALL=(root) /sbin/ss

Solaris
Command

Purpose

iscsiadm Gets iSCSI qualified names (IQNs).
/etc/sudoers line example: ${sudo:iscsiadm list target -S}

fcinfo

Gets World Wide Port Names (WWPNs) for ports.
/etc/sudoers line example: ${sudo:fcinfo remote-port -sl -p
$port}

prtvtoc

Reports information about disk partitions.
/etc/sudoers line example: Disco ALL=(root) /usr/bin/prtvtoc

/usr/
bin/ps

Lists running process. As an alternative to running with root access, add a
proc_owner role.sola.
/etc/sudoers line example: Disco ALL=(root) /usr/bin/ps

/usr/
ucb/ps

Lists running process. As an alternative to running with root access, add a
proc_owner role.
The use of the /usr/ucb/ps command is deprecated as of Solaris 11. Because
Discovery requires the use of this command for all Solaris versions, you must
install the ucb utility manually on Solaris 11 systems. For instructions, see
KB0564262 .
/etc/sudoers line example: Disco ALL=(root) /usr/ucb/ps

pgrep

Gets list of process IDs (PIDs) with socket information.
/etc/sudoers line example: Disco ALL=(root) /usr/bin/pgrep

pfiles

For each PID, gets and processes the output for S_IFSOCK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1226


<!-- page 1227 -->
Solaris (continued)
Command

Purpose

/etc/sudoers line example: Disco ALL=(root) /usr/bin/pfiles
Related topics
Discovery commands for probes and patterns
vCenter probes and probe parameters
vCenter probes scan virtual machines using VMware's vSphere product suite. Each probe scans
for different kinds of data, such as networks, NICs, and tags. The VMware - vCenter probe that
discovered all vCenter objects in previous releases is deprecated in the Istanbul release and
replaced by multiple probes.

Upgrade changes
In upgraded systems, the vCenter process classifier and the vmapp port probe are configured
to trigger the VMware - vCenter Datacenters probe. This probe then triggers the probes that
discover individual vCenter objects such as hosts, storage, and datastores. The legacy probe,
VMware - vCenter, is still in the system but is not triggered to run in the updated instance.

Available vCenter probes and probe parameters
vCenter probe parameters allow you to disable the probes for the objects you are not interested
in discovering. You can also reduce the size of the payload of a probe by specifying a page size.

Important: Before disabling a probe, be aware of any dependencies the probe might
have. If the probe you disable triggers another probe, the dependent probe is also
disabled, and cannot collect data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1227


<!-- page 1228 -->
Relationship of vCenter elements to probe parameters

These parameters are available for vCenter probes.

Note: By default, these parameters are not set in the platform, except where noted.
vCenter probe parameters
Probe

VMWare - vCenter Datacenters

Parameters

• datacenter_only (Cloud Provisioning and
Governance)
• debug
• disable_vm_probe
• disable_network_probe
• disable_datastore_probe
• disable_cluster_probe
• datacenters_only
• fixed_credential_id (Cloud Provisioning and
Governance)
• disable_vm_nic_probe
• disable_host_probe

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1228


<!-- page 1229 -->
vCenter probe parameters (continued)
Probe

Parameters

• disable_host_storage_probe
• vcenter_timeout: default 10000 milliseconds
(10 seconds).
VMWare - vCenter VMs

• disable_vm_nic_probe
• disable_vm_nic_vnics (set to false)
• disable_vm_nic_vdisks (set to true for
Discovery only and false when Cloud
Provisioning and Governance is enabled)
• disable_vm_tags_probe
• refresh_state (Cloud Provisioning and
Governance)
• page_size (100)

Note: The settings for the vnics
and vdisks parameters preserves the
default behavior of vCenter Discovery.
VMWare - vCenter VM Tags*

none

VMWare - vCenter VM NICs

none

VMWare - vCenter Networks

page_size (500)

VMWare - vCenter Datastores

page_size (500)

VMWare - vCenter Clusters

• disable_host_probe
• disable_host_storage_probe
• page_size (1000)

VMWare - vCenter ESX Hosts

• disable_host_storage_probe
• page_size (10)

VMWare - vCenter ESX Hosts Storage

page_size (175)

VMWare - vCenter ESX Hosts License

none

VMWare - vCenter VM Performance

This probe relies on the statistics intervals
configured for the vCenter. By default, the
following intervals are available:
• 5 minutes (300 seconds) – this data is
saved for 24 hours.
• 30 minutes (1800 seconds) – this data is
saved for a week

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1229


<!-- page 1230 -->
vCenter probe parameters (continued)
Probe

Parameters

• 2 hours (7200 seconds) – this data is saved
for a month
• 24 hours (86400 seconds) – this data is
saved for a year
The following properties support this probe:
• data_sampling_weeks_frame: The period for
which the probe retrieves the data, in weeks.
• data_sampling_minutes: The time lapse
between taking the data samples.
• metrics: The collected metrics (CPU /
memory / network / disk).
This probe is used only by Cloud Migration
Assessment.

Important: To modify the default
values for this probe, coordinate with the
administrator responsible for the vCenter
management. For more information, see
VMware documentation .
*For more information, see VMware tags.
Consider the following when setting these parameters:
• Disable: You disable a probe by setting the parameter in the triggering probe. For example, if
you are not interested in discovering storage, set the disable_host_storage_probe
parameter to true in the VMWare - vCenter ESX Hosts probe.
• Page size: Page size parameters control the number of CIs to discover with a single probe. Use
this parameter to limit payload size by reducing the number of vCenter elements discovered at
a time by any probe. The page size expressed in parentheses is the default in the base system.
• Debug: Set the debug parameter in the VMWare - vCenter Datacenters probe to allow
debugging for all the vCenter probes. Debugging returns the raw vCenter data in each probe
payload.
Trigger custom probes with the vCenter Discovery extension
vCenter Discovery extension allows you to collect additional attributes of currently discovered CI
types or collect attributes of new CI types by triggering custom probes from an existing sensor.

Before you begin

Role required: admin

About this task

vCenter sensor records support triggering custom probes that use conditional scripts for
gathering data not typically collected by Discovery or for discovering CI types that you create.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1230


<!-- page 1231 -->
Important: The vCenter extension is intended to be used to create a single custom
probe that extends existing Discovery functionality. Unless you are a user who is familiar
with advanced scripting, do not attempt to configure your new probe/sensor to launch an
additional probe.

Procedure
1. Navigate to All > Discovery Definition > Sensors.
2. Select a vCenter sensor record.
It is important to trigger a new probe at the correct time. For example, if you want to discover
additional information about virtual machines in your network, trigger your probe from the
VMWare - vCenter VMs sensor. If you trigger your custom probe from the VMWare - vCenter
Datacenters sensor, your new probe and the existing VM probe execute in parallel. This might
prevent VM records from being created or updated.
3. Select the Triggers probes related list.
4. Click New to create a new probe to be triggered by this sensor or Edit to add an existing probe
to the list.
You can also use an existing probe record as a template for your new probe by opening the
record and selecting the Insert and Stay option from the context menu.
5. Click the information icon to the right of the probe name to open the Conditional Probes
Triggered by Sensor record.
6. View the script.
The script passes the parms and data arguments to the function, using values passed to
them from the triggering sensor. The script configures the parms object, from which the probe
parameters are derived. The script returns true to trigger the probe or false to cancel it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1231


<!-- page 1232 -->
In this example, the VMWare – vCenter Datacenters sensor parms are all probe parameters
that are supported by the Datacenters probe. The data argument is an object containing up to
4 arrays, named vm, datastore, network, and cluster.
Conditional Probes Triggered by Sensor record

Windows probes and permissions
Discovery accesses devices and software by executing commands as a specific user on
Windows computers.
Most probes require access to Windows classes, properties, and registry entries. Certain probes
also require additional access to Windows directories and resources. Security policies vary by
organization, so there’s no one specific role or right to grant. Verify that the Windows user has
local admin permission for these Windows components.

Administrative shares
Windows administrative shares are hidden server resources that Discovery uses to store
temporarily the results of processes run by specific probes. The MID Server script file
LaunchProc.psm1 launches the process, writes its output to the administrative share on the
machine, and then retrieves the results for the MID Server. Access to administrative shares is
restricted to users with administrative rights to the target. For example: Users, local or on the
domain, who belong to the local administrators group.
With the New York release, all Windows probes using the WMI protocol call the
LaunchProc.psm1 script file and write to the admin$ share folder as default. If another
network share is mounted on each Windows target, the folder could be changed by updating the
MID Server property
mid.powershell.target_base_dir.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1232


<!-- page 1233 -->
Windows Classes
Most Windows probes access Windows classes and properties contained in those classes.
Some Windows classes don’t specify a file namespace path. If an explicit path isn’t specified,
ServiceNow uses root\cimv2\<Class> by default.

Note: Discovery of Cluster VIP isn’t supported.
Windows Classes
Probe

Windows Class

Property

Hyper-V Cluster

root\MSCluster\MSCluster_ClusterToNode

Antecedent

Hyper-V Cluster

root\MSCluster\MSCluster_ClusterToNode

Dependent

Hyper-V Cluster

root\MSCluster\MSCluster_Resource

Type

Hyper-V Resource
Pools

root\virtualization\Msvm_ResourcePool

AllocationUnits

Hyper-V Resource
Pools

root\virtualization\Msvm_ResourcePool

Capacity

Hyper-V Resource
Pools

root\virtualization\Msvm_ResourcePool

InstanceID

Hyper-V Resource
Pools

root\virtualization\Msvm_ResourcePool

Name

Hyper-V Resource
Pools

root\virtualization\Msvm_ResourcePool

ResourceSubType

Hyper-V Resource
Pools

root\virtualization\v2\Msvm_ResourcePool

AllocationUnits

Hyper-V Resource
Pools

root\virtualization\v2\Msvm_ResourcePool

Capacity

Hyper-V Resource
Pools

root\virtualization\v2\Msvm_ResourcePool

InstanceID

Hyper-V Resource
Pools

root\virtualization\v2\Msvm_ResourcePool

Name

Hyper-V Resource
Pools

root\virtualization\v2\Msvm_ResourcePool

ResourceSubType

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1233


<!-- page 1234 -->
Windows Classes (continued)
Probe

Windows Class

Property

Hyper-V
- Virtual
Machines

root\virtualization\Msvm_ComputerSystem

Description

Hyper-V
- Virtual
Machines

root\virtualization\Msvm_ComputerSystem

ElementName

Hyper-V
- Virtual
Machines

root\virtualization\Msvm_ComputerSystem

EnabledState

Hyper-V
- Virtual
Machines

root\virtualization\Msvm_ComputerSystem

Name

Hyper-V
- Virtual
Machines

root\virtualization\Msvm_ComputerSystem

TimeOfLastStateChange

Hyper-V
- Virtual
Machines

root\virtualization\Msvm_LogicalDisk

BlockSize

Hyper-V
- Virtual
Machines

root\virtualization\Msvm_LogicalDisk

ElementName

Hyper-V
- Virtual
Machines

root\virtualization\Msvm_LogicalDisk

NumberOfBlocks

Hyper-V
- Virtual
Machines

root\virtualization\Msvm_LogicalDisk

SystemName

Hyper-V
- Virtual
Machines

root\virtualization
\Msvm_MemorySettingData

AllocationUnits

Hyper-V
- Virtual
Machines

root\virtualization
\Msvm_MemorySettingData

InstanceID

Hyper-V
- Virtual
Machines

root\virtualization
\Msvm_MemorySettingData

VirtualQuantity

Hyper-V
- Virtual
Machines

root\virtualization
\Msvm_ProcessorSettingData

InstanceID

Hyper-V
- Virtual
Machines

root\virtualization
\Msvm_ProcessorSettingData

VirtualQuantity

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1234


<!-- page 1235 -->
Windows Classes (continued)
Probe

Windows Class

Property

Hyper-V
- Virtual
Machines

root\virtualization
\Msvm_SyntheticEthernetPortSettingData

ElementName

Hyper-V
- Virtual
Machines

root\virtualization
\Msvm_SyntheticEthernetPortSettingData

InstanceID

Hyper-V
- Virtual
Machines

root\virtualization
\Msvm_VirtualSystemSettingData

BaseBoardSerialNumber

Hyper-V
- Virtual
Machines

root\virtualization
\Msvm_VirtualSystemSettingData

BIOSGUID

Hyper-V
- Virtual
Machines

root\virtualization
\Msvm_VirtualSystemSettingData

BIOSSerialNumber

Hyper-V
- Virtual
Machines

root\virtualization
\Msvm_VirtualSystemSettingData

ChassisSerialNumber

Hyper-V
- Virtual
Machines

root\virtualization
\Msvm_VirtualSystemSettingData

InstanceID

Hyper-V
- Virtual
Machines

root\virtualization
\Msvm_VirtualSystemSettingData

SystemName

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_ComputerSystem

Description

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_ComputerSystem

ElementName

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_ComputerSystem

EnabledState

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_ComputerSystem

Name

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_ComputerSystem

TimeOfLastStateChange

Hyper-V
- Virtual
Machines

root\virtualization\v2\Msvm_LogicalDisk

BlockSize

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1235


<!-- page 1236 -->
Windows Classes (continued)
Probe

Windows Class

Property

Hyper-V
- Virtual
Machines

root\virtualization\v2\Msvm_LogicalDisk

ElementName

Hyper-V
- Virtual
Machines

root\virtualization\v2\Msvm_LogicalDisk

NumberOfBlocks

Hyper-V
- Virtual
Machines

root\virtualization\v2\Msvm_LogicalDisk

SystemName

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_MemorySettingData

AllocationUnits

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_MemorySettingData

InstanceID

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_MemorySettingData

VirtualQuantity

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_ProcessorSettingData

InstanceID

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_ProcessorSettingData

VirtualQuantity

Hyper-V
- Virtual
Machines

root\virtualization
ElementName
\v2\Msvm_SyntheticEthernetPortSettingData

Hyper-V
- Virtual
Machines

root\virtualization
InstanceID
\v2\Msvm_SyntheticEthernetPortSettingData

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_VirtualSystemSettingData

BaseBoardSerialNumber

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_VirtualSystemSettingData

BIOSGUID

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_VirtualSystemSettingData

BIOSSerialNumber

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_VirtualSystemSettingData

ChassisSerialNumber

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1236


<!-- page 1237 -->
Windows Classes (continued)
Probe

Windows Class

Property

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_VirtualSystemSettingData

InstanceID

Hyper-V
- Virtual
Machines

root\virtualization
\v2\Msvm_VirtualSystemSettingData

SystemName

Hyper-V
- Virtual
Networks

root\virtualization\Msvm_ActiveConnection Antecedent

Hyper-V
- Virtual
Networks

root\virtualization\Msvm_ActiveConnection Dependent

Hyper-V
- Virtual
Networks

root\virtualization
\Msvm_VirtualEthernetSwitch

ElementName

Hyper-V
- Virtual
Networks

root\virtualization
\Msvm_VirtualEthernetSwitch

Name

Hyper-V
- Virtual
Networks

root\virtualization\Msvm_VirtualSwitch

ElementName

Hyper-V
- Virtual
Networks

root\virtualization\Msvm_VirtualSwitch

Name

Hyper-V
- Virtual
Networks

root\virtualization
\v2\Msvm_ActiveConnection

Antecedent

Hyper-V
- Virtual
Networks

root\virtualization
\v2\Msvm_ActiveConnection

Dependent

Hyper-V
- Virtual
Networks

root\virtualization
\v2\Msvm_VirtualEthernetSwitch

ElementName

Hyper-V
- Virtual
Networks

root\virtualization
\v2\Msvm_VirtualEthernetSwitch

Name

Hyper-V
- Virtual
Networks

root\virtualization\v2\Msvm_VirtualSwitch ElementName

Hyper-V
- Virtual
Networks

root\virtualization\v2\Msvm_VirtualSwitch Name

Windows
- Active

Win32_OperatingSystem

Name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1237


<!-- page 1238 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows
- Active
Processes

Win32_Process

Caption

Windows
- Active
Processes

Win32_Process

CommandLine

Windows
- Active
Processes

Win32_Process

CreationDate

Windows
- Active
Processes

Win32_Process

Description

Windows
- Active
Processes

Win32_Process

ExecutablePath

Windows
- Active
Processes

Win32_Process

Name

Windows
- Active
Processes

Win32_Process

ParentProcessId

Windows
- Active
Processes

Win32_Process

Priority

Windows
- Active
Processes

Win32_Process

ProcessId

Connections
Session

Windows Win32_ComputerSystemProduct
Amazon EC2

UUID

Windows
Win32_ComputerSystemProduct
- Azure
Relationship

UUID

Windows Classify

root\MSCluster\MSCluster_Cluster

Name

Windows Classify

root\MSCluster\MSCluster_ClusterToNode

Antecedent

Windows Classify

root\MSCluster\MSCluster_ClusterToNode

Dependent

Windows Classify

root\MSCluster
\MSCluster_ClusterToResource

GroupComponent

Windows Classify

root\MSCluster
\MSCluster_ClusterToResource

PartComponent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1238


<!-- page 1239 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows Classify

root\MSCluster\MSCluster_Node

Name

Windows Classify

root\MSCluster\MSCluster_Resource

Name

Windows Classify

root\MSCluster\MSCluster_Resource

PrivateProperties

Windows Classify

root\MSCluster\MSCluster_Resource

Type

Windows Classify

root\virtualization\Msvm_ComputerSystem

Name

Windows Classify

root\virtualization
\v2\Msvm_ComputerSystem

Name

Windows Classify

Win32_ComputerSystem

Domain

Windows Classify

Win32_ComputerSystem

Name

Windows Classify

Win32_OperatingSystem

Caption

Windows Classify

Win32_OperatingSystem

Version

Windows Cluster

root\MSCluster\MSCluster_Cluster

Caption

Windows Cluster

root\MSCluster\MSCluster_Cluster

Description

Windows Cluster

root\MSCluster\MSCluster_Cluster

Name

Windows Cluster

root\MSCluster\MSCluster_Cluster

Status

Windows Cluster

root\MSCluster\MSCluster_ClusterToNetwork GroupComponent

Windows Cluster

root\MSCluster\MSCluster_ClusterToNetwork PartComponent

Windows Cluster

root\MSCluster
\MSCluster_ClusterToNetworkInterface

GroupComponent

Windows Cluster

root\MSCluster
\MSCluster_ClusterToNetworkInterface

PartComponent

Windows Cluster

root\MSCluster\MSCluster_ClusterToNode

Antecedent

Windows Cluster

root\MSCluster\MSCluster_ClusterToNode

Dependent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1239


<!-- page 1240 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows Cluster

root\MSCluster
\MSCluster_ClusterToQuorumResource

GroupComponent

Windows Cluster

root\MSCluster
\MSCluster_ClusterToQuorumResource

PartComponent

Windows Cluster

root\MSCluster
\MSCluster_ClusterToResource

GroupComponent

Windows Cluster

root\MSCluster
\MSCluster_ClusterToResource

PartComponent

Windows Cluster

root\MSCluster
\MSCluster_ClusterToResourceGroup

GroupComponent

Windows Cluster

root\MSCluster
\MSCluster_ClusterToResourceGroup

PartComponent

Windows Cluster

root\MSCluster\MSCluster_Event

Name

Windows Cluster

root\MSCluster\MSCluster_Event

Type

Windows Cluster

root\MSCluster\MSCluster_Network

Address

Windows Cluster

root\MSCluster\MSCluster_Network

AddressMask

Windows Cluster

root\MSCluster\MSCluster_Network

Description

Windows Cluster

root\MSCluster\MSCluster_Network

Name

Windows Cluster

root\MSCluster\MSCluster_NetworkInterface Address

Windows Cluster

root\MSCluster\MSCluster_NetworkInterface Description

Windows Cluster

root\MSCluster\MSCluster_NetworkInterface DeviceID

Windows Cluster

root\MSCluster\MSCluster_NetworkInterface Name

Windows Cluster

root\MSCluster\MSCluster_NetworkInterface Network

Windows Cluster

root\MSCluster\MSCluster_Node

Caption

Windows Cluster

root\MSCluster\MSCluster_Node

Characteristics

Windows Cluster

root\MSCluster\MSCluster_Node

Description

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1240


<!-- page 1241 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows Cluster

root\MSCluster\MSCluster_Node

Flags

Windows Cluster

root\MSCluster\MSCluster_Node

Name

Windows Cluster

root\MSCluster\MSCluster_Node

NodeInstanceID

Windows Cluster

root\MSCluster\MSCluster_Node

PrivateProperties

Windows Cluster

root\MSCluster\MSCluster_Node

State

Windows Cluster

root\MSCluster\MSCluster_Node

Status

Windows Cluster

root\MSCluster
\MSCluster_NodeToActiveGroup

GroupComponent

Windows Cluster

root\MSCluster
\MSCluster_NodeToActiveGroup

PartComponent

Windows Cluster

root\MSCluster
\MSCluster_NodeToActiveResource

GroupComponent

Windows Cluster

root\MSCluster
\MSCluster_NodeToActiveResource

PartComponent

Windows Cluster

root\MSCluster
\MSCluster_NodeToNetworkInterface

GroupComponent

Windows Cluster

root\MSCluster
\MSCluster_NodeToNetworkInterface

PartComponent

Windows Cluster

root\MSCluster\MSCluster_Resource

Caption

Windows Cluster

root\MSCluster\MSCluster_Resource

Description

Windows Cluster

root\MSCluster\MSCluster_Resource

Name

Windows Cluster

root\MSCluster\MSCluster_Resource

PrivateProperties

Windows Cluster

root\MSCluster\MSCluster_Resource

Status

Windows Cluster

root\MSCluster\MSCluster_Resource

Type

Windows Cluster

root\MSCluster\MSCluster_ResourceGroup

Description

Windows Cluster

root\MSCluster\MSCluster_ResourceGroup

Name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1241


<!-- page 1242 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows Cluster

root\MSCluster\MSCluster_ResourceGroup

PrivateProperties

Windows Cluster

root\MSCluster\MSCluster_ResourceGroup

State

Windows Cluster

root\MSCluster
\MSCluster_ResourceGroupToResource

GroupComponent

Windows Cluster

root\MSCluster
\MSCluster_ResourceGroupToResource

PartComponent

Windows Cluster

root\MSCluster
\MSCluster_ResourceToDependentResource

Antecedent

Windows Cluster

root\MSCluster
\MSCluster_ResourceToDependentResource

Dependent

Windows Cluster

root\MSCluster
\MSCluster_ResourceToPossibleOwner

GroupComponent

Windows Cluster

root\MSCluster
\MSCluster_ResourceToPossibleOwner

PartComponent

Windows Cluster

root\MSCluster\MSCluster_ResourceType

Description

Windows Cluster

root\MSCluster\MSCluster_ResourceType

DisplayName

Windows Cluster

root\MSCluster\MSCluster_ResourceType

Name

Windows Cluster

root\MSCluster\MSCluster_ResourceType

PrivateProperties

Windows Cluster

root\MSCluster
\MSCluster_ResourceTypeToResource

GroupComponent

Windows Cluster

root\MSCluster
\MSCluster_ResourceTypeToResource

PartComponent

Windows Cluster

Win32_NetworkAdapterConfiguration

IPAddress

Windows Cluster

Win32_NetworkAdapterConfiguration

IPEnabled

Windows
- CPU /
Memory

Win32_PhysicalMemory

BankLabel

Windows
- CPU /
Memory

Win32_PhysicalMemory

Capacity

Windows
- CPU /
Memory

Win32_PhysicalMemory

DataWidth

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1242


<!-- page 1243 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows
- CPU /
Memory

Win32_PhysicalMemory

DeviceLocator

Windows
- CPU /
Memory

Win32_PhysicalMemory

FormFactor

Windows
- CPU /
Memory

Win32_PhysicalMemory

Manufacturer

Windows
- CPU /
Memory

Win32_PhysicalMemory

MemoryType

Windows
- CPU /
Memory

Win32_PhysicalMemory

PartNumber

Windows
- CPU /
Memory

Win32_PhysicalMemory

SerialNumber

Windows
- CPU /
Memory

Win32_PhysicalMemory

Speed

Windows
- CPU /
Memory

Win32_PhysicalMemory

Status

Windows
- CPU /
Memory

Win32_PhysicalMemory

Tag

Windows
- CPU /
Memory

Win32_PhysicalMemory

TotalWidth

Windows
- CPU /
Memory

Win32_PhysicalMemory

TypeDetail

Windows
- CPU /
Memory

Win32_Processor

Manufacturer

Windows
- CPU /
Memory

Win32_Processor

MaxClockSpeed

Windows
- CPU /
Memory

Win32_Processor

Name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1243


<!-- page 1244 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows
- CPU /
Memory

Win32_Processor

NumberOfCores

Windows
- CPU /
Memory

Win32_Processor

NumberOfLogicalProcessors

Windows
- Get IIS
Information

root\MicrosoftIISv2\IIsWebServerSetting

LogFileDirectory

Windows
- Get IIS
Information

root\MicrosoftIISv2\IIsWebServerSetting

Name

Windows
- Get IIS
Information

root\MicrosoftIISv2\IIsWebServerSetting

SecureBindings

Windows
- Get IIS
Information

root\MicrosoftIISv2\IIsWebServerSetting

ServerBindings

Windows
- Get IIS
Information

root\MicrosoftIISv2\IIsWebServerSetting

ServerComment

Windows
- Get IIS
Information

root\WebAdministration\Site

Bindings

Windows
- Get IIS
Information

root\WebAdministration\Site

Id

Windows
- Get IIS
Information

root\WebAdministration\Site

LogFile

Windows
- Get IIS
Information

root\WebAdministration\Site

Name

Windows root\MSCluster\MSCluster_NetworkInterface Address
Get Physical
Address for
VIP
Windows Win32_NetworkAdapterConfiguration
Get Physical
Address for
VIP

IPAddress

Windows Win32_NetworkAdapterConfiguration
Get Physical
Address for
VIP

IPEnabled

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1244


<!-- page 1245 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows Hardware
Information

Win32_BaseBoard

SerialNumber

Windows Hardware
Information

Win32_BIOS

SerialNumber

Windows Hardware
Information

Win32_ComputerSystemProduct

IdentifyingNumber

Windows Hardware
Information

Win32_ComputerSystemProduct

UUID

Windows Hardware
Information

Win32_SystemEnclosure

ChassisTypes

Windows Hardware
Information

Win32_SystemEnclosure

SerialNumber

Windows Win32_BaseBoard
Hardware &
Network Info

SerialNumber

Windows Win32_BIOS
Hardware &
Network Info

SerialNumber

Windows Win32_ComputerSystemProduct
Hardware &
Network Info

IdentifyingNumber

Windows Win32_ComputerSystemProduct
Hardware &
Network Info

UUID

Windows Win32_IP4RouteTable
Hardware &
Network Info

Destination

Windows Win32_IP4RouteTable
Hardware &
Network Info

Mask

Windows Win32_IP4RouteTable
Hardware &
Network Info

NextHop

Windows Win32_NetworkAdapter
Hardware &
Network Info

Index

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1245


<!-- page 1246 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows Win32_NetworkAdapter
Hardware &
Network Info

Manufacturer

Windows Win32_NetworkAdapter
Hardware &
Network Info

NetConnectionID

Windows Win32_NetworkAdapterConfiguration
Hardware &
Network Info

Caption

Windows Win32_NetworkAdapterConfiguration
Hardware &
Network Info

DefaultIPGateway

Windows Win32_NetworkAdapterConfiguration
Hardware &
Network Info

DHCPEnabled

Windows Win32_NetworkAdapterConfiguration
Hardware &
Network Info

Index

Windows Win32_NetworkAdapterConfiguration
Hardware &
Network Info

IPAddress

Windows Win32_NetworkAdapterConfiguration
Hardware &
Network Info

IPEnabled

Windows Win32_NetworkAdapterConfiguration
Hardware &
Network Info

IPSubnet

Windows Win32_NetworkAdapterConfiguration
Hardware &
Network Info

MACAddress

Windows Win32_SystemEnclosure
Hardware &
Network Info

ChassisTypes

Windows Win32_SystemEnclosure
Hardware &
Network Info

SerialNumber

Windows Network

Win32_IP4RouteTable

Destination

Windows Network

Win32_IP4RouteTable

Mask

Windows Network

Win32_IP4RouteTable

NextHop

Windows Network

Win32_NetworkAdapterConfiguration

Caption

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1246


<!-- page 1247 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows Network

Win32_NetworkAdapter

Index

Windows Network

Win32_NetworkAdapter

Manufacturer

Windows Network

Win32_NetworkAdapter

NetConnectionID

Windows Network

Win32_NetworkAdapterConfiguration

DefaultIPGateway

Windows Network

Win32_NetworkAdapterConfiguration

DHCPEnabled

Windows Network

Win32_NetworkAdapterConfiguration

Index

Windows Network

Win32_NetworkAdapterConfiguration

IPAddress

Windows Network

Win32_NetworkAdapterConfiguration

IPEnabled

Windows Network

Win32_NetworkAdapterConfiguration

IPSubnet

Windows Network

Win32_NetworkAdapterConfiguration

MACAddress

Windows
- OS
Information

Win32_ComputerSystem

Manufacturer

Windows
- OS
Information

Win32_ComputerSystem

Model

Windows
- OS
Information

Win32_ComputerSystem

UserName

Windows
- OS
Information

Win32_OperatingSystem

CSDVersion

Windows
- OS
Information

Win32_OperatingSystem

Description

Windows
- OS
Information

Win32_OperatingSystem

Version

Windows
- OS
Information

Win32_Processor

AddressWidth

Windows Printers

Win32_TCPIPPrinterPort

HostAddress

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1247


<!-- page 1248 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows Printers

Win32_Printer

DeviceID

Windows Printers

Win32_TCPIPPrinterPort

Name

Windows Printers

Win32_Printer

Name

Windows Printers

Win32_Printer

PortName

Windows Services

Win32_Service

AcceptPause

Windows Services

Win32_Service

AcceptStop

Windows Services

Win32_Service

DesktopInteract

Windows Services

Win32_Service

DisplayName

Windows Services

Win32_Service

Name

Windows Services

Win32_Service

PathName

Windows Services

Win32_Service

ProcessId

Windows Services

Win32_Service

ServiceType

Windows Services

Win32_Service

StartMode

Windows Services

Win32_Service

StartName

Windows Services

Win32_Service

State

Windows
- Storage
2008 - WMI

Win32_DiskDrive

Caption

Windows
- Storage
2008 - WMI

Win32_DiskDrive

DeviceID

Windows
- Storage
2008 - WMI

Win32_DiskDrive

Index

Windows
- Storage
2008 - WMI

Win32_DiskDrive

InterfaceType

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1248


<!-- page 1249 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows
- Storage
2008 - WMI

Win32_DiskDrive

Manufacturer

Windows
- Storage
2008 - WMI

Win32_DiskDrive

Model

Windows
- Storage
2008 - WMI

Win32_DiskDrive

SCSIBus

Windows
- Storage
2008 - WMI

Win32_DiskDrive

SCSILogicalUnit

Windows
- Storage
2008 - WMI

Win32_DiskDrive

SCSIPort

Windows
- Storage
2008 - WMI

Win32_DiskDrive

SCSITargetId

Windows
- Storage
2008 - WMI

Win32_DiskDrive

SerialNumber

Windows
- Storage
2008 - WMI

Win32_DiskDrive

Size

Windows
- Storage
2008 - WMI

Win32_DiskDrive

Status

Windows
- Storage
2008 - WMI

Win32_DiskPartition

DiskIndex

Windows
- Storage
2008 - WMI

Win32_DiskPartition

Index

Windows
- Storage
2008 - WMI

Win32_DiskPartition

Size

Windows
- Storage
2008 - WMI

Win32_DiskPartition

StartingOffset

Windows
- Storage
2008 - WMI

Win32_LogicalDisk

DeviceID

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1249


<!-- page 1250 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows
- Storage
2008 - WMI

Win32_LogicalDisk

VolumeSerialNumber

Windows
- Storage
2008 - WMI

Win32_LogicalDiskToPartition

Antecedent

Windows
- Storage
2008 - WMI

Win32_LogicalDiskToPartition

Dependent

Windows
- Storage
2008 - WMI

Win32_MappedLogicalDisk

Description

Windows
- Storage
2008 - WMI

Win32_MappedLogicalDisk

DeviceID

Windows
- Storage
2008 - WMI

Win32_MappedLogicalDisk

DriveType

Windows
- Storage
2008 - WMI

Win32_MappedLogicalDisk

FileSystem

Windows
- Storage
2008 - WMI

Win32_MappedLogicalDisk

FreeSpace

Windows
- Storage
2008 - WMI

Win32_MappedLogicalDisk

ProviderName

Windows
- Storage
2008 - WMI

Win32_MappedLogicalDisk

Size

Windows
- Storage
2008 - WMI

Win32_MappedLogicalDisk

VolumeName

Windows
- Storage
2008 - WMI

Win32_MappedLogicalDisk

VolumeSerialNumber

Windows
- Storage
2008 - WMI

Win32_MountPoint

Directory

Windows
- Storage
2008 - WMI

Win32_MountPoint

Volume

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1250


<!-- page 1251 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows
- Storage
2008 - WMI

Win32_Volume

Capacity

Windows
- Storage
2008 - WMI

Win32_Volume

DeviceID

Windows
- Storage
2008 - WMI

Win32_Volume

DriveLetter

Windows
- Storage
2008 - WMI

Win32_Volume

DriveType

Windows
- Storage
2008 - WMI

Win32_Volume

FileSystem

Windows
- Storage
2008 - WMI

Win32_Volume

FreeSpace

Windows
- Storage
2008 - WMI

Win32_Volume

Label

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage\MSFT_Disk

AllocatedSize

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage\MSFT_Disk

BusType

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage\MSFT_Disk

FriendlyName

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage\MSFT_Disk

Manufacturer

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage\MSFT_Disk

Model

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage\MSFT_Disk

Number

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage\MSFT_Disk

ObjectId

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1251


<!-- page 1252 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage\MSFT_Disk

OperationalStatus

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage\MSFT_Disk

SerialNumber

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage\MSFT_Disk

Size

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_DiskToPartition

Disk

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_DiskToPartition

Partition

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_iSCSISession

InitiatorNodeAddress

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_iSCSISession

SessionIdentifier

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_iSCSISession

TargetNodeAddress

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_iSCSISessionToDisk

Disk

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_iSCSISessionToDisk

iSCSISession

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Partition

AccessPaths

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Partition

DiskId

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Partition

ObjectId

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Partition

Offset

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1252


<!-- page 1253 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Partition

OperationalStatus

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Partition

PartitionNumber

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Partition

Size

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_PartitionToVolume

Partition

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_PartitionToVolume

Volume

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Volume

DriveLetter

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Volume

DriveType

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Volume

FileSystem

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Volume

FileSystemLabel

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Volume

ObjectId

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Volume

Size

Windows
- Storage
2012 - WMI

root\microsoft\windows\storage
\MSFT_Volume

SizeRemaining

Windows
- Storage
2012 - WMI

Win32_DiskDrive

Name

Windows
- Storage
2012 - WMI

Win32_DiskDrive

SCSIBus

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1253


<!-- page 1254 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows
- Storage
2012 - WMI

Win32_DiskDrive

SCSILogicalUnit

Windows
- Storage
2012 - WMI

Win32_DiskDrive

SCSIPort

Windows
- Storage
2012 - WMI

Win32_DiskDrive

SCSITargetId

Windows
- Storage
2012 - WMI

Win32_LogicalDisk

DeviceID

Windows
- Storage
2012 - WMI

Win32_LogicalDisk

VolumeSerialNumber

Windows
- Storage
2012 - WMI

Win32_MappedLogicalDisk

Description

Windows
- Storage
2012 - WMI

Win32_MappedLogicalDisk

DeviceID

Windows
- Storage
2012 - WMI

Win32_MappedLogicalDisk

DriveType

Windows
- Storage
2012 - WMI

Win32_MappedLogicalDisk

FileSystem

Windows
- Storage
2012 - WMI

Win32_MappedLogicalDisk

FreeSpace

Windows
- Storage
2012 - WMI

Win32_MappedLogicalDisk

ProviderName

Windows
- Storage
2012 - WMI

Win32_MappedLogicalDisk

Size

Windows
- Storage
2012 - WMI

Win32_MappedLogicalDisk

VolumeName

Windows
- Storage
2012 - WMI

Win32_MappedLogicalDisk

VolumeSerialNumber

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1254


<!-- page 1255 -->
Windows Classes (continued)
Probe

Windows Class

Property

Windows
- Storage
2012 - WMI

Win32_MountPoint

Directory

Windows
- Storage
2012 - WMI

Win32_MountPoint

Volume

Windows Registry entries
Several Windows Registry entries are available for Discovery Windows probes.

Note: The Windows - Installed Software sensor appends a timestamp of 00:00:00 to
the install_date retrieved from the registry. The installation time of all Windows software is
independent of the time zone and is set to midnight of the day it was installed. For example,
an install date of 2.19.2017 in the Windows registry appears as 2.19.2017 00:00:00 in the
CMDB.

Probe

Windows Registry Entries

Windows
- Active
Connections
Session

HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/Services/
Tcpip/Parameters/Hostname

Windows Classify

HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/Services/
Tcpip/Parameters/Hostname

Windows Classify

HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/Services/
Tcpip/Parameters/Domain

Windows
- Get IIS
Information

HKEY_LOCAL_MACHINE/SOFTWARE/Microsoft/InetStp/
MajorVersion

Windows
- Get IIS
Information

HKEY_LOCAL_MACHINE/SOFTWARE/Microsoft/InetStp/
MinorVersion

Windows Find APD File
Location

HKEY_LOCAL_MACHINE/SOFTWARE/APD/APD/CONFIGPATH

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Windows/CurrentVersion/Installer/UserData/*/Products/
*/InstallProperties/InstallDate

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Windows/CurrentVersion/Uninstall/*/DisplayVersion

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows
NT/CurrentVersion/ProductId

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1255


<!-- page 1256 -->
Probe

Windows Registry Entries

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/ProductId

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Installer/UserData/*/Products/
*/InstallProperties/InstallDate

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Windows/CurrentVersion/Uninstall/*/DisplayName

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Uninstall/*/ParentDisplayName

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Installer/UserData/*/Products/
*/InstallProperties/DisplayVersion

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Uninstall/*/UninstallString

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Windows/CurrentVersion/Installer/UserData/*/Products/
*/InstallProperties/Publisher

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Internet
Explorer/Version

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Installer/UserData/*/Products/
*/InstallProperties/DisplayName

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Uninstall/*/Publisher

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Windows/CurrentVersion/Installer/UserData/*/Products/
*/InstallProperties/ProductID

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Office/*/Registration/*/ProductID

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Installer/UserData/*/Products/
*/InstallProperties/ProductID

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Uninstall/*/DisplayVersion

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Windows/CurrentVersion/Installer/UserData/*/Products/
*/InstallProperties/DisplayVersion

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1256


<!-- page 1257 -->
Probe

Windows Registry Entries

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Office/*/Registration/*/DigitalProductID

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Installer/UserData/*/Products/
*/InstallProperties/Publisher

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Uninstall/*/DisplayName

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Windows/CurrentVersion/Installer/UserData/*/Products/
*/InstallProperties/DisplayName

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Windows/CurrentVersion/Uninstall/*/UninstallString

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Office/
*/Registration/*/DigitalProductID

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Internet
Explorer/Registration/ProductId

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Windows/CurrentVersion/Uninstall/*/Publisher

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Internet
Explorer/svcVersion

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Office/
*/Registration/*/ProductID

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Windows/CurrentVersion/Uninstall/*/InstallDate

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Windows/CurrentVersion/Uninstall/*/ParentDisplayName

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Uninstall/*/InstallDate

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows
NT/CurrentVersion/DigitalProductID

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Component Based Servicing/Packages/
Package_*_KB*/InstallName

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1257


<!-- page 1258 -->
Probe

Windows Registry Entries

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Component Based Servicing/Packages/
Package_*_KB*/InstallTimeHigh

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Component Based Servicing/Packages/
Package_*_KB*/InstallTimeLow

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Component Based Servicing/Packages/
Package_for_RollupFix*/InstallLocation

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Component Based Servicing/Packages/
Package_for_RollupFix*/InstallName

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Component Based Servicing/Packages/
Package_for_RollupFix*/InstallTimeHigh

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Component Based Servicing/Packages/
Package_for_RollupFix*/InstallTimeLow

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Installer/UserData/*/Products/
*/InstallProperties/InstallLocation

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Microsoft/Windows/
CurrentVersion/Uninstall/*/InstallLocation

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/SOFTWARE/WOW6432Node/Microsoft/
InetStp/SetupString

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/SOFTWARE/WOW6432Node/Microsoft/
InetStp/VersionString

Windows
- Installed
Software

HKEY_LOCAL_MACHINE/Software/Wow6432Node/Microsoft/
Windows/CurrentVersion/Uninstall/*/InstallLocation

Windows
- Installed
Software

HKEY_USERS/*/SOFTWARE/Adobe/Adobe Acrobat/
DC/AVEntitlement/iEntitlementLevel

Windows
- Installed
Software

HKEY_USERS/*/SOFTWARE/Microsoft/Windows/
CurrentVersion/Uninstall/*/DisplayName

Windows
- Installed
Software

HKEY_USERS/*/SOFTWARE/Microsoft/Windows/
CurrentVersion/Uninstall/*/DisplayVersion

Windows
- Installed
Software

HKEY_USERS/*/SOFTWARE/Microsoft/Windows/
CurrentVersion/Uninstall/*/ParentDisplayName

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1258


<!-- page 1259 -->
Probe

Windows Registry Entries

Windows
- Installed
Software

HKEY_USERS/*/SOFTWARE/Microsoft/Windows/
CurrentVersion/Uninstall/*/Publisher

Windows
- Installed
Software

HKEY_USERS/*/SOFTWARE/Microsoft/Windows/
CurrentVersion/Uninstall/*/UninstallString

Related topics
Discovery commands for probes and patterns
WMIRunner probe
WMI Runner is a probe type that fetches data from Windows operating systems via the Windows
Management Instrumentation (WMI) interface. IPv6 supports WMI Runner.
The probe handles multiple user-specified WMI Paths to be queried, using a basic form of native
WMI query. Each field to be probed must be uniquely named (within the domain of the probe).
The probe results returned to the sensor will provide the data found for each field queried,
indexed by its name.
When creating a WMI probe, the probe type must be set to WMI Probe and the ECC Queue Topic
must be set to WMIRunner.
For instructions on configuring probe parameters, see Set probe parameters.
The following parameters may be passed to the WMI Probe:
WMIRunner probe parameters
Parameter

Description

Default value

source

Host to connect to.

port

Port to connect to.

debug

Enables debug logging.

false

wmi_timeout

Timeout for the actual WMI
probe, in seconds. Use this
parameter to change the
timeout interval for individual
Windows probes. This value
overrides the value in the
windows_probe_timeout
MID Server parameter, which
sets a timeout for all probes
launched by a specific MID
Server. Windows - Installed
Software probe is configured
with a timeout value of 15
minutes.

300 (seconds)

process_timeout

Timeout for the process
wmi_timeout + 10 (seconds)
running the script, in seconds.
This parameter is for internal
use only and is not supported.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1259


<!-- page 1260 -->
WMIRunner probe parameters (continued)
Parameter

Description

Default value

credentials_debug

Displays a
<credentials_debug> section
in the ECC queue, which
can help you troubleshoot
credentials. If you set this
property to true, credential
troubleshooting information
is output to the ECC queue,
even if the credentials
succeed. See Credentials
troubleshooting
for more
information.

false

Note: The default timeout for WMI/Powershell is 5 minutes, except for the Windows
Installed Software probe, which has a default timeout value of 15 minutes. Adding
wmi_timeout to a probe parameter can change the default timeout of a Windows probe.
Port probes
Port probes are used in Discovery by the Shazzam probe to detect protocol activity on open
ports on devices it encounters.
When a port probe encounters a protocol in use, the Shazzam sensor checks the port probe
record to determine which classification probe to launch. The common protocols WMI, SSH,
SNMP, and HTTP in the base system have priority numbers that control the order in which they
are launched.
The priority is as follows:
• 1 - WMI
• 2 - SSH
• 3 - SNMP
• 4 - HTTP
In the base system, the WMI probe is always launched first, and if it is successful on a device, no
other port probes are launched for that device. If the WMI probe is not successful, then the SSH
probe is launched to gather information on the device. If it is not successful, the SNMP probe
is launched. This method allows Discovery to classify a device correctly if the device is running
more than one protocol (for example, SSH, SNMP, and HTTP).

Discovery Port Probe form
To access the Port Probe form, navigate to Discovery Definition > Port Probes.
To add multiple classification probes to a port probe, create a link between the port probe and
the actual classification probe itself. See the bottom of the form to add additional Trigger probes.
That way, if one classification fails, it does not affect the others, thus Discovery performance may
be enhanced.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1260


<!-- page 1261 -->
The Port Probe form provides the following fields:
Port probes
Field

Input Value

Name

Simple name for the port probe that reflects its function (for example, SNMP).

Description

Definition of the acronym for the protocol. (For example, SSH is Secure Shell
login).

Scanner

Shazzam techniques for exploring a port. Some of these are protocol-specific,
and others are generic. For example, a WMI port probe uses a Scanner value
of Generic TCP, and the SNMP port probe uses a value of SNMP.

Active

Indicates whether this port probe is enabled or disabled.

CIs

Indicates whether this port probe is enabled or disabled for discovering
Configuration Items.

IPs

Indicates whether this port probe is enabled or disabled for discovering IP
addresses.

Triggered by
services

Indicates which services define the port usage. Use this setting to define nonstandard port usage and pair the port number with the protocol.

Use
classification

Names the appropriate classification table, based on the protocol being
explored.

Classification
priority

Establishes the priority in which this port probe runs. If the first port probe
fails, then the next probe runs on the device, and so forth, until the correct
data is returned. This allows for the proper classification of a device that has
two running protocols, such as SSH and SNMP. The default priorities for the
Discovery protocols are:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1261


<!-- page 1262 -->
Port probes (continued)
Field

Input Value

• 1 - WMI
• 2 - SSH
• 3 - SNMP
• 4 - HTTP
Supplementary Launches supplementary classifications after a higher-priority identification
succeeds, in order of priority.
Conditional

Script

Runs this port probe if any one of the non-conditional probes returns an
open port. The conditional port probes in the base system attempt to resolve
the names of Windows devices and DNS names. These ports probes take
additional resources and are not used unless activity is detected on open
ports.
Script to run.

Shazzam probe, port probes, and protocols
Port scanning is the first step in the discovery process. The Shazzam probe performs port
scanning, regardless of whether you use patterns for horizontal discovery. The following table
lists the known ports and protocols used by Discovery.
After upgrading to Discovery Admin Workspace version 1.3.1 (August 2024 Store), you can
navigate to Workspaces > Discovery Admin Workspace > Insights and use the enhanced
dashboard.
Several port probes are available in the base system. Each port probe uses an IP Service, which
is a record that tells Discovery which port to use for a specific protocol. Review this table before
you block any ports with a firewall.

Important: Make sure that you do not block any ports that Discovery needs.
Default port probes and default IP services
Default port
probe name

Default classification

Default IP Service and port

dns

Process Classification
[discovery_classy_proc]

dns (port 53)

http

HTTP Classification
[discovery_classy_http]

http (port 80) and https (port 443)

ip_phone

SNMP Classification
[discovery_classy_snmp]

sip (port 5060)

osx

Scan Results Application Classifier
[discovery_classy_scan_app]

afp (port 548)

printer

Scan Results Application Classifier
[discovery_classy_scan_app]

hp-pdl-datastr (port 9100) and printer (port
515)

slp

Process Classification
[discovery_classy_proc]

slp (port 427)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1262


<!-- page 1263 -->
Default port probes and default IP services (continued)
Default port
probe name

Default classification

Default IP Service and port

snmp

SNMP Classification
[discovery_classy_snmp]

snmp (port 161)

ssh

UNIX Classification
[discovery_classy_unix]

ssh (port 22)

tls_ssl_certs

tls_ssl_certs
• SSL ports: 443, 8443, 9443, 636 (ldaps),
993 (imaps), 995 (popssl), 989, 990
• StartTLS ports: 25 (smtp), 110, 143, 389, 21,
587 (smtp)

vmapp

Application Classification
[discovery_classy_appl]

vmapp_https (port 5480) and
vmapp6_https (port 9443)

wbem

CIM Classification
[discovery_classy_cim]

wbem_https (port 5989)

winrm

Windows Classification
[discovery_classy_windows]

winrm (port 5985) and winrm_ssl (port
5986)

wins

Process Classification
[discovery_classy_proc]

ms-nb-ns (port 137)

wmi

Windows Classification
[discovery_classy_windows]

epmap (port 135)

This table shows you other common ports and protocols that Discovery uses.
Discovery ports and protocols
Name

Service name

Port

afp

Apple File Protocol

548

TCP

7001

cmdb_ci_app_server TCP

BEA Weblogic
dns

Domain Name
Service

53

epmap

Microsoft RPC (WMI, 135
DCOM)

Details

Creates

Protocol

To resolve the
name of each
IP Address

TCP/
UDP

Windows
Systems

TCP

ftp

21

TCP

hp-pdl-datastr Printer PDL Data
Stream

9100

HP Printers

http

HyperText Transfer
Protocol

80

Web Servers

cmdb_ci_web_server TCP

https

HyperText Transfer
443
Protocol over Secure
Socket

Secure Web
Servers

cmdb_ci_web_server TCP

TCP

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1263


<!-- page 1264 -->
Discovery ports and protocols (continued)
Name

Service name

Port

Details

Creates

Protocol

IBM DB2

50000

TCP

IBM
MQSeries

1414

TCP

IBM
Websphere

9080

TCP

IBM Web
sphere SSL

9443

TCP

IMAPS

993

TCP

pip (Internet
IP Phone/ Session
Print Protocol) Initiation Protocol

5060

TCP

LDAP

389

TCP

LDAPs

636

TCP

Microsoft
netbios

139

TCP

Microsoft-ds

445

TCP

ms-nb-ns

137

UDP

Microsoft SQL
server

1433

TCP

MySQL

3306

TCP

Nagios NRPE

5666

TCP

nfs

2049

TCP/
UDP

Oracle TNS

1521

TCP

POP3

110

TCP

postgresql

5432

cmdb_ci_database

printer

Printer

515

sip

SIP (Session
Initiation Protocol)

5060

TCP

slp

Service Location
Protocol (SLP)

427

TCP/
UDP

smtp

TCP

25

smux (SNMP
multiplexing)
snmp

snmptrap
ssh

Printers

TCP
TCP

199
Simple Network
Management
Protocol

161

Network
Devices

162
Secure Shell Service 22

UDP

UDP
Unix Systems

TCP

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1264


<!-- page 1265 -->
Discovery ports and protocols (continued)
Name

Service name

Port

Details

Creates

Protocol

sunrpc

111

TCP

telnet

23

TCP

TIBCO
Rendezvous

7500

TCP

Tomcat HTTP

8080

TCP

vmapp6_https

9443

TCP
TCP

vmapp_https

vCenter Server
Appliance Web
Interface using https

5480

wbem_https

CIM-XML via
HTTPS(WBEM)

5989

CIM
Classification

TCP

wins

Windows Internet
Name Service

137

NetBIOS Name
Resolver

UDP

Windows and dynamic ports
Supported Windows machines can have dynamic ports ranges: 49152-65535 for both TCP and
UDP.
Configure Shazzam probe
When you run Discovery, the Shazzam probe finds your active network devices by scanning
specified ports on specified IP address ranges. If the list of IP ranges being scanned is large, you
can configure the Shazzam payload for JSON encoding to reduce its size.

Before you begin

Role required: admin

About this task

You control the behavior of individual Shazzam probes using basic and advanced parameters.
For instructions on configuring probe parameters, see Set probe parameters.

Note: The Shazzam payload is controlled by the following MID Server properties

. These
properties do not need to be added to the MID Server. The Shazzam probe will fall back on
their default values.
• The shazzam.chunk_size property controls the maximum number of IP addresses
Shazzam can scan in parallel.
• The mid.shazzam.regulator.interval_ms property sets the interval in which Shazzam can
launch packets.
• The mid.shazzam.regulator.packets_per_interval property sets the number of packets
that Shazzam can launch in that time interval.

Procedure
1. Navigate to All > Discovery Definition > Probes.
2. Select Shazzam.
3. Add or edit parameters in the Probe Parameters related list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1265


<!-- page 1266 -->
4. Configure the Shazzam parameters.
These parameters are available for fine-tuning the Shazzam probe. These values are defined in
the probe record only.
Shazzam advanced parameters
Parameter

Description

BannerTCP_waitForConnectMS

Sets the number of milliseconds the
BannerTCP scanner waits for a connection
and banner.
Default: 1500

debug

Enables debug logging if set to true.
Default: false

delay_wbem

Delays classification of systems with a WBEM
port open until the final Shazzam sensor
job. For a large schedule discovering many
WBEM ports, delaying classification until
the last sensor job could cause the node to
run out of memory. Setting this parameter to
false allows classification of these systems to
occur across all Shazzam sensor jobs.
Default: true

DNS_alternativePort

Deprecated

DNS_waitForResponseMS

Sets the number of milliseconds the DNS
scanner waits for a response.
Default: 1000

GenericTCP_waitForConnectMS

Sets the number of milliseconds the
GenericTCP scanner waits for a connection.
Default: 1000

HTTP_waitForConnectMS

Sets the number of milliseconds the HTTP
scanner waits for a connection.
Default: 500

HTTP_waitForResponseMS

Sets the number of milliseconds the HTTP
scanner waits for a response.
Default: 500

NBT_alternativePort

Deprecated

NBT_waitForResponseMS

Sets the number of milliseconds the NBT
scanner waits for a response.
Default: 500

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1266


<!-- page 1267 -->
Parameter

Description

shazzam_report_inactive

When true, reports devices that are alive but
inactive. For example, a device has no ports
open but refuses at least one port connection
request.
Default: true

scanner_log

Enables scanner logging if set to true. This
logging information appears in the Shazzam
probe response.
Default: false

shazzam_report_dead

When true, reports devices with dead IP
addresses. For example, a device that has all
ports closed.
Default: false

SNMP_alternativePort

Deprecated

SNMP_tapIntervalMS

Sets the number of milliseconds the SNMP
scanner waits between taps.
Default: 1000

SNMP_taps

Sets the number of taps (requests) the SNMP
scanner attempts.
Default: 2

SNMP_waitForResponseMS

Sets the number of milliseconds the SNMP
scanner waits for a response after the last
tap.
Default: 1000

TLS_keepOriginalCertificate

When true and Discovery is running, the
certificate_file field in the cmdb_ci_certificate
is populated with the original certificate. This
can increase your payload size.
Default: false

Control Shazzam payload size
A system property converts Shazzam payloads into JSON strings, which dramatically reduces
their size. This setting prevents nodes from running out of memory when a single schedule
discovers large numbers of IP ranges.

Before you begin

Role required: admin

About this task

The glide.discovery.shazzam_ranges_json property is set to true for new
instances. This setting encodes the payload as a JSON string. The property is configurable by
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1267


<!-- page 1268 -->
administrators and is available in the Discovery Definition > Properties module. The property
label is Use JSON for IP ranges in Shazzam in the module.
This property is set to false in upgraded instances and is not visible by default. Adding the
property manually to your upgraded instance enables the feature, but does not add it to the
Discovery Definition > Properties module. To enable JSON encoding and add it to the module,
import the update set attached to KB0687626 .

Procedure
1. In the navigation filter, type sys_properties.list and press Enter.
2. In the list of system properties, click New.
3. Complete the form, using these field values:
◦ Name: glide.discovery.shazzam_ranges_json
◦ Description: Encodes the Shazzam payload in JSON.
◦ Value: true
4. Click Submit.
Discovery sensors
Every probe in Discovery must have a corresponding sensor to process the data returned.
For example, if incoming data is the result of a WMI probe, then the WMI sensor is triggered to
process the payload.

Note: If you create a multiprobe, you must create a multisensor to process the data
returned from this probe. For details, see Multiprobes and Multisensors.
Navigate to Discovery > Discovery Definition > Sensors and edit or create a sensor.
Sensor Fields Table
Field

Description

Name

Enter a unique probe name.

Reacts to probe

Select the probe whose payload this sensor must process.

Sensor Class
Select the type of sensor to create:
[sys_class_name]
• Import Export Map: This option is not currently used.
• MultiSensor: Multisensors process the data returned from multiprobes.
Select this type to create a multisensor that responds to the simple
probes used in a multiprobe.
• Sensor: Select this type if this sensor is a simple sensor that responds to
a simple probe.
Description

Enter an optional description of the sensors function.

Sensor type
[sensor_type]

Specify how the results from the probe are processed.
• Classifier: This field is not currently used.
• Java: This field is not currently used.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1268


<!-- page 1269 -->
Sensor Fields Table (continued)
Field

Description

• Javascript: Returned data from the probe is processed in the sensor
itself, outside the application, and is visible to the user. This is the most
common sensor type.
• Multiline Text: This field is not currently used.
• XML: The XML data from the probe is broken into pieces. Some pieces
can be used to launch other probes that the original sensor needs to
complete all the necessary information about a device.
Active

Select this option to enable or disable the sensor.

Script

Enter a script to run when processing the probe. You can use the
g_probe_parameters hashmap in a sensor script to set probe parameters
for any configured, triggered probes. For example, this code sets a
'node_port' parameter to 16001 for all triggered probes.
g_probe_parameters['node_port']=16001;

Responds to
probes

Use this related list to specify the simple probe within a multiprobe whose
payload this multisensor must process. This list is available for multisensors
only.

Triggers probes

Use this related list to specify which probes this sensor can start for
additional exploration.

These fields can be added by configuring the form
Field

Description

Agent

Enter the ECC queue type to match this sensor with.

Apply Defaults

Select this option to apply default sensor values.

Classification
type

Select the classification type associated with this sensor.

Coalesce

Enter the field to match against when determining whether to coalesce.

Condition script

Create a predetermined requirement for this sensor to run.

Data option

Select how to treat imported sensor data. Options include:
• Insert and Update
• Insert Only
• Update Only

External names

Enter a name to tag the sensor data.

Cancel sensor transaction by duration
By default, this rule cancels the sensor transaction if it takes more than 20 minutes to complete.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1269


<!-- page 1270 -->
About this task

If the Discovery sensor transaction takes more than 20 minutes to complete, the following
actions occur:
• The associated ECC Queue input record is set to the error state.
• The Discovery Status Completed Count is updated.
• An error message is logged, for example:
Sensor error when processing Linux - Storage: Transaction
cancelled: maximum execution time exceeded
• The remainder of the discovery continues to run.
This behavior is provided by the Discovery Sensors Transaction Quota Rule. This rule is active
by default.
You can disable the rule and you can modify the amount of time that has elapsed before the
rule takes effect. Accessing this record requires the admin role.

Procedure
1. To disable the rule, navigate to System Definition > Quota Rules.
The Transaction Quotas plugin must be active.
2. Search on the name *Discovery to filter the list of rules.
3. In the name column, click Discovery Sensors.
4. To modify the amount of time, edit the Maximum Duration field of the rule.
The value is in seconds.
Discovery probe management
Several discovery probes and their associated sensors are included with Discovery. You rarely
need to modify probes or sensors. But you might need to set parameters to control the behavior
of a particular probe or align versions of customized probes.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

What you can do
These are the things you can do with probes and sensors:
Review the base system probes
Review the List of Discovery probes to see the probes that exist in the base system.
Probes need to be active on classifiers for Discovery to trigger the probes. However,
not all probes are active on classifiers as more patterns replace probes and
sensors. To see a list of patterns, see Available discovery patterns.
Create or modify a probe
You can create a new probe to discover additional CIs that Discovery does not find
with the base system probes or patterns, or modify an existing probe to collect
additional information on the type of CI. After you create or modify a probe, test
it. You can also create multiprobes and multisensors. See Create a Discovery
multiprobe for more information.
Upgrade to the latest version of a probe or sensor

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1270


<!-- page 1271 -->
If you upgrade your instance, the Discovery application is also updated, along
with components like probes and sensors. However, if you customized any probes
or sensors, they do not upgrade. You need to copy your customizations to a text
file, upgrade the probes and sensors, and reapply your customizations. See Align
versions of customized probes and sensors for more information.
Set probe parameters
Probe parameters control several aspects about how probes function. With each
probe provided in the base system, certain parameters are allowed. These are
specified in the list of Discovery probes. See Set probe parameters for instructions
on how to set a parameter.
Review probe permissions
Certain probes need permissions to run on the target machines or CIs that you are
trying to discover. See Discovery probe permissions for more information.
Create or modify a probe
Create a new probe to discover additional CIs or modify an existing probe to collect additional
information. After you create or modify a probe, test it.

Before you begin

Role required: admin

Important: You need an advanced knowledge of scripting to modify probes or their
associated sensors. Many existing probes provide parameters that you can set, rather than
modifying the probe itself. See Set probe parameters for more information.

Procedure
1. Navigate to All > Discovery > Discovery Definition > Probes.
2. Click the name of the probe that you want to modify.
3. Modify the form fields (see table).

Field

Description

Class

Select the probe for the operating system of the device it will query.
◦ AWS Probe: Select this class to query your resources inside an AWS cloud.
◦ CIM Probe: Select this probe type to query a CIM server using WBEM
protocols.
◦ Multiprobe: Select this probe type to run one or more simple probes of any
type or mix probes of different types. This type of probe can make several
queries simultaneously that return all the results at the same time. You cannot
add multiprobes to other multiprobes.
◦ Probe: Select this generic type to define a probe class. Specify the name of the
probe class in the ECC queue topic field.
◦ SNMP Probe: Select this probe type for network devices, such as routers.
◦ WMI Probe: Select this probe type for Windows devices.

ECC
queue
topic

Enter a descriptive term for the function of the probe. The probe uses this label
as the Topic field for incoming ECC queue messages. The term does not have
to be unique. For example, all the UNIX probes might have an ECC queue topic
value of SSHCommand.
By default, probes use the following ECC queue topics:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1271


<!-- page 1272 -->
Field

Description

◦ CimProbe
◦ Multiprobe
◦ Powershell probe
◦ SCPRelay
◦ SSHCommand
◦ SNMP
◦ WMIRunner
ECC
queue
name

Enter either a descriptive name for human use, or the actual command the probe
is to run. For example, if the value in the ECC queue topic field is SSHCommand,
then enter the actual shell command to run in this field.

Cache
results

Select this option to cache this probe's results to improve overall discovery
performance. The probe results cache should be enabled only for those probes
and sensors whose output is unlikely to change. For example, the Linux – CPU
sensor is cached because CPU information seldom changes. The cache is turned
on by default for base system probes and sensors whose output is unlikely to
change.

Warning: Do not turn on the cache for classification and identification
probes. Furthermore, do not turn on the cache for probes that trigger
additional probes because this may prevent them from being triggered.
Classic
Mode

Select this option to cache this probe's results in the Starting in Fuji, select this
option to debug the post-processing script on the ServiceNow instance instead
of the MID Server. This mode is only valid if a post-processor script exists. Use
the Classic mode to debug post-processing scripts in the test environment.
ServiceNow does not recommend use of the Classic mode in the production
environment.

Post
Define an optional post-processing script that runs on the MID Server. The script
processor accepts probe results as an input and outputs a JSON string that is sent back to
script
the instance for a sensor to use as input. Use this type of script to accomplish
tasks like parsing data.
All probe post-processing scripts and their corresponding sensors have access
to the following global variables:
◦ current: Sets the attribute to current. Same functionality that exists in
sensors. They are attributes of the device that is discovered.
◦ related_data: Any additional data to be passed from the probes postprocessing scripts, such as related_list.
All probe post-processing scripts and their corresponding sensors have access
to the following methods:
◦ log(string): Logs the string to the MID Server and the ServiceNow
instance log files.
◦ getParameter(param): Gets the parameter from the ECC queue payload.
4. Right-click the form header and select Save.
5. Modify these related lists if necessary.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1272


<!-- page 1273 -->
Related list

Description

Probe
Parameters that control the functionality of the probe. See Set probe
Parameters parameters for instructions.
Sensors
The sensors that this probe utilizes.
that react to
this probe
or Sensors
Included by If this probe is included with other probes as a MultiProbe.
MultiProbe
MultiSensor Scripts that run for multiple sensors.
Scripts
Versions

The version of the probe. If the State is Current, the probe is the most up to
date with your version of the instance. If not, you do not have the most current
version and you might need to realign it. See Align versions of customized
probes and sensors for instructions.

6. Click Test probe.
7. On the Test Probe window, enter the IP address of the target and select the MID Server.
Only Up and Validated MID Servers are able to be selected.
8. Click OK.
9. Check the ECC Queue for the MID Server to see the results.

What to do next

Add the probe to the Triggers Probe related list on the appropriate classifier. See Create a
Discovery CI classification for a description of the fields and related lists on the classifier form.
Discovery probe permissions
Several probes require additional permissions to run.

Discovering Active Connections
Discovery uses the Windows - Active Connections probe to access active connection
information. The application dependency mapping feature requires this probe to function.
Discovering Active Connections
Probes

Additional Permissions

Windows - Active Connections

Ability to invoke the \root\CIMV2:Win32_Process object
Read and Write access to the admin$ share

Discovering Application Profiles
Discovery uses these probes to access application profile information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1273


<!-- page 1274 -->
Discovering Application Profiles
Probes

Additional Permissions

Windows - Get APD Environment Files

Ability to invoke the \root\CIMV2:Win32_Process
object

Windows - Get APD Env File Content
Windows - Get APD Version File
Content

Read and Write access to the admin$ share
Write access to the %SystemRoot%\temp directory

Discovering VMware Workstation
Discovery uses the Windows - Get VMware Workstation probe to access information about
VMware virtual machines installed on Windows.
Discovering VMware Workstation
Probes

Additional Permissions

Windows Get VMware
Workstation

Ability to invoke the \root\CIMV2:Win32_Process object
Read and Write access to the admin$ share
Write access to the %SystemRoot%\temp directory
Configure the PATH variable to include the path to the vmrun.exe
command. This command is typically found in the VMware Workstation
install directory.

Discovering MSSQL
Discovery uses the Windows - MSSQL probe to access information about Microsoft SQL Server
installed on Windows.
Discovering MSSQL
Probes

Additional Permissions

Windows
- MSSQL

• Access to the Win32_Process object
• Access to the Win32_Service object
• Access to the Win32_NetworkAdapterConfiguration object
• Access to the Microsoft.SqlServer.Management.Smo object
• Access to run the nbtstat command
• Access to HKLM\SOFTWARE\Microsoft\Microsoft SQL Server\InstalledInstances
• Access to HKLM\SOFTWARE\Microsoft\MSSQLServer\$instanceName
\SuperSocketNetLib\Tcp\TcpPort where $instanceName is an array of possible
values.

Related topics
Discovery commands for probes and patterns
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1274


<!-- page 1275 -->
Set probe parameters
Use probe parameters to control the behavior of a particular probe every time it is triggered.

Before you begin

Role required: admin

About this task

The following parameters are available for all probe types:

Parameter

Description

source

[Required] The initial host to connect to.
• Type: string (URL)
• Default value: None

Procedure
1. Create or select the probe you want to set parameters for.
2. From the Probe Parameters related list, click New.
3. Fill in the fields, as appropriate (see table).
The Probe parameter form has the following fields.
Probe Parameter Form Fields
Field

Description

Name

Enter the parameter name. Each probe type has its own list of available parameters.

Value

Enter the parameter value or script as required by the parameter.

Value
script

[Optional] Enter the script you want the parameter to run if you have not already
specified a script in the Value field.

Probe

Displays the probe this parameter relates to.

Align versions of customized probes and sensors
If you customized a probe or sensor and upgraded to a new version of an instance, you need to
realign the versions of the customized probe and sensor to the most current version.

Before you begin

Role required: admin

About this task

Probes and sensors have a major and a minor version.
Major version
A major version change reflects a change in the expected output of a probe, such
as the addition or subtraction of a targeted attribute, a format change, such as XML
versus JSON, or a probe parameter script change.
Minor version
A minor version change reflects small fixes that do not impact the result or the
processing of the data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1275


<!-- page 1276 -->
A sensor and its corresponding probe must have the same major version. It is recommended
they also have the same minor version. This version matching ensures that the data sent back
from the probe is understood and properly processed by the sensor. All members of a multiprobes bundle must have the same major and minor version.
By default, Discovery tracks major version mismatches and displays version mismatch errors
in the Active Discovery Errors section in the Discovery Log. You can control whether or not
Discovery tracks minor versions mismatches by setting the Warn on Minor Version Mismatch
(glide.discovery.warn_minor_version) Discovery property. Minor version
mismatches are tracked in the Discovery log, but are not displayed on the Discovery Dashboard.
Versions for multi-probes and multi-sensors are checked as follows:
• The versions of the individual probes contained in the multi-probes are compared with the
Responds to Probes scripts that process their data.
• The versions of the Responds to Probes scripts and the main multi-sensors script are
compared.
If a probe and its corresponding sensor do not have the same major version, a sensor does not
process information during a discovery and sends error messages to the log file. Errors also
show up on the Discovery Dashboard when you run a discovery job. If the major version is the
same, but the minor version is not, a sensor processes information during a discovery.
To use the most up-to-date version of a probe that is available:

Procedure
1. Save the customizations that you made with your probe or sensor into a text file so you can reapply them later.
2. Navigate to Discovery > Dashboard.
3. Look for version mismatch errors in the Active Discovery Errors section, and note the probe or
sensor that caused the error.
4. Navigate to Discovery Definition > Probes or Discovery Definition > Sensors and select the
probe or sensor that you want to upgrade.
5. Add the Major version and Minor version fields to the form if you want to display the versions
on the form.
6. In a multi-sensor, you can verify the major version with the versions of the probes that use the
sensor in the Responds to Probes related list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1276


<!-- page 1277 -->
Matching multi-probe and multi-sensor version

7. Click the Versions related list.
8. Look for version where the State is Previous and the Source is System upgrades.
9. Click the date link in the Created column for that version to open the version record.
10. Click Revert to this version.
11. Navigate back to the probe or sensor form and verify that the major version is correct.
12. Reapply your customizations to the probe or the sensor.
13. Verify that your customizations are valid with the new version of the probe or sensor by running
a Discovery in your test environment.
Discovery multiprobes and multisensors
Multiprobes contain one or more simple probes configured to extract specific information from
manageable devices by executing multiple queries with a single authentication.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1277


<!-- page 1278 -->
You can schedule multiprobes to run any time in the discovery process to make exploration more
efficient. One common use for multiprobes is as identity probes. Identity probes ask a device
for information such as its name and serial number, and then use the results of those queries to
update existing CIs in the CMDB.
To process the data returned from a multiprobe, you must create multisensors, which run scripts
that process the data returned by the multiprobes. Multisensors typically use the same name as
their corresponding multiprobes.

Note: The corresponding multisensors have the same names as the multiprobes.
The following multiprobes are included with the base system.

Multiprobe

AIX - ADM

Includes These Probes

• AIX - Active Processes: Gets active running processes.
• Unix - Active Connections: Gets active connections information.

AIX - Identity

• AIX - Network: Determines network interfaces, IPs, and MACs.
• AIX - Serial Number: Gets AIX serial numbers.

CIM - Identity

CIM - Computer System: Gets CIM Computer Systems per SMI-S.

CIM - Identity WBEM Service

CIM - CIMOM: Probes for the WBEM Service, CIMOM.

HP-UX - ADM

• HP-UX - Active Processes: Gets active running processes.
• Unix - Active Connections: Gets active connections information.

HP-UX - Identity

• HP-UX - Hardware Serial Number: Gets HP-UX serial numbers.
• HP-UX - Network: Determines network interfaces, IPs, and MACs.

Linux - Identity

• Linux - Hardware Information: Gets DMI (BIOS) information.
• Linux - Network: Determines network interfaces, IPs, and MACs.

Mac OS X Identity

SNMP - A10 Identity

• Mac OS X - Network: Determines network interfaces, IPs, and MACs.
• Mac OS X - CPU/Memory: Gets CPU and memory information.

• SNMP - A10 - Identity - Serial: Part of the SNMP - Load Balancer - Identity
multiprobe that is used to identify the A10 load balancer.
• SNMP - Identity Info: Identifies an SNMP device.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1278


<!-- page 1279 -->
Multiprobe

Includes These Probes

SNMP - ACE Identity

• SNMP - Identity Info: Identifies an SNMP device.

SNMP - Alteon Identity

• SNMP - ACE - Identity - Serial: Part of the SNMP - Load Balancer - Identity
multiprobe, that is used to identify the ACE load balancer

• SNMP - Alteon - Identity - Serial: Part of the SNMP - Load Balancer - Identity
multiprobe, that is used to identify the Alteon load balancer.
• SNMP - Identity Info: Identifies an SNMP device.

SNMP AppDirector Identity

SNMP - F5 BIGIP - Identity

• SNMP - AppDirector - Identity - Serial: Part of the SNMP - Load Balancer Identity multiprobe, that is used to identify the AppDirector load balancer.
• SNMP - Identity Info: Identifies an SNMP device.

• SNMP - F5 BIG-IP - Identity - Serial: Retrieves the BIG-IP chassis serial
number, which is globally unique for this vendor.
• SNMP - Identity Info: Identifies an SNMP device.

SNMP - Identity SNMP - Identity Info: Identifies printer CIs
SNMP - Load
Balancer Identity

• SNMP - F5 BIG-IP - Identity - Serial: Gets BIG-IP chassis serial numbers,
which are globally unique for this vendor

SNMP Netscaler Identity

• SNMP - Netscaler - Identity - Serial: Retrieves the Netscaler chassis serial
number, which is globally unique for this vendor.

Solaris - ADM

• SNMP - Identity Info: Identifies SNMP devices

• SNMP - Identity Info: Identifies SNMP devices

• Solaris - Active Processes: Gets active running processes
• Unix - Active Connections: Gets active connections information

Solaris Identity

Unix - ADM

• Solaris - Network: Determines network interfaces, IPs, and MACs
• Solaris - Serial Number: Gets serial numbers for Solaris devices †

• Unix - Active Processes: Gets active running processes
• Unix - Active Connections: Gets active connections information

UNIX - Classify

• ESX - OS: Identifies ESX machines
• UNIX - OS: Runs after the ESX - OS probe to determine the operating
system for SSH devices not identified as ESX

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1279


<!-- page 1280 -->
Multiprobe

Includes These Probes

Windows - ADM

• Windows - Active Processes: Gets active running processes
• Windows - Active Connections: Retrieves active connections information

Windows Identity

Windows Storage 2008

• Windows - Network: Determines network interfaces, IPs, and MACs
• Windows - OS/Hardware Information: Probes a Windows machine for WMI
information

• Windows - Storage 2008 - PS: Retrieves disk and file system information for
Windows 2008 and earlier.
• Windows - Storage 2008 - WMI: Retrieves disk and file system information
for Windows 2008 and earlier.

Windows Storage 2012

• Windows - Storage 2012 - WMI: Retrieves disk and file system information
for Windows 2012 and later.
• Windows - Storage 2012 - PS: Retrieves disk and file system information for
Windows 2012 and later.

Note: † This probe requires the installation of a command line tool from Oracle called
SNEEP. To download and install this tool, log in to the Oracle website . After this tool is
installed, the Solaris - Serial Number probe runs automatically when Discovery detects
a Solaris device. For Fujitsu PRIMEPOWER devices, you must run this probe with root
credentials.
Add a simple probe to a multiprobe
You can add simple probes to your multiprobe in the Includes Probes related list.

Before you begin

Role required: admin

About this task

You can add simple probes of any type to a multiprobe and mix probe types if necessary.

Warning: Do not add a multiprobe to the Includes Probes related list.
Procedure
1. Navigate to All > Discovery Definitions > Probes.
2. Open a multiprobe from the list.
You can see the MultiProbe designation in the ECC queue topic column.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1280


<!-- page 1281 -->
Linux identity multiprobe

3. In the MultiProbe record, click New in the Includes probes related list.
4. Select a simple probe from the collection list in the left column and move it into the included
list..
Adding a simple probe to a multiprobe

5. Click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1281


<!-- page 1282 -->
Create a Discovery multiprobe
You can use the default multiprobes and multisensors provided in the platform or create your
own.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Discovery > Discovery Definition > Probes.
2. Click New.
3. Complete the form using the following settings:
◦ Probe type: Multiprobe.
◦ ECC queue topic: MultiProbe.
4. In the Includes probes related list, add the probes you want to include in the multiprobe.
5. Click Save.
Create a Discovery multisensor
Create a multiensor to process data returned from a multiprobe.

Before you begin

Role required: admin

About this task
Discovery Multisensor and Script

Procedure
1. Navigate to All > Discovery > Discovery Definition > Sensors.
2. Click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1282


<!-- page 1283 -->
3. Complete the form using the following settings:
◦ Sensor type: MultiSensor.
◦ ECC queue topic: MultiSensor.
◦ Reacts to probe: Select the probe whose payload this sensor must process.
◦ Sensor type: Select one of these options.
▪ Javascript: Returned data from the probe is processed in the sensor itself, outside the
application, and is visible to the user. This is the most common sensor type.
▪ XML: The XML data from the probe is broken into pieces. Some pieces can be used
to launch other probes that the original sensor needs to complete all the necessary
information about a device.
4. Right-click the form header, and click Save.
5. In the Responds to Probes related list, click New.
6. Complete the form using the following settings:
◦ Reacts to probe: Select the probe within the multiprobe that this sensor reacts to. The
sensor must be linked to the probe by function, such as network identification or serial
number.
◦ Script: Enter a script to run before the script in the multisensor. This script defines how the
data returned from each probe should be processed.
7. Click Save.
Example custom Discovery probe and sensor: populate a CI with text file values
This custom Discovery probe helps you if you need to read a text file from a Windows computer
and populate a CI in the CMDB with the values from the file.

Before you begin

Role required: admin

About this task

In this example the user wanted to read files created by BGinfo.

Note: When you have completed the probe and sensor, place the probe in the

appropriate Windows classifier at Discovery Definition > CI Classification > Windows.

Procedure
1. Navigate to Discovery Definition > Probes, and then click New.
2. Complete the following fields:
◦ Name: Unique and descriptive name for the probe
◦ Probe type: Select Probe.
◦ Description: Describe the function of this probe.
◦ Used by Discovery: Select this check box
◦ ECC queue topic: This is name of the probe the MID server is to run. In this example, we use
WMIRunner.
◦ ECC queue name: In this example, we use the descriptive name WMI: BGInfo files.
3. Right-click in the header bar and select Save from the context menu.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1283


<!-- page 1284 -->
4. Select the Probe Parameters tab in the Probe form, and then click New.
5. Enter WMI_GetFiles.js as the Name of this parameter.
6. Copy the script below into the Script field and edit as needed.
7. Click Submit.
//
// Use ServiceNow WMIAPI to gather stats
//
var CMD_RETRIES = 3;
var scanner = getScanner();
if (scanner) {
var output = "";
for(var i = 0; i < CMD_RETRIES; i++) {
output =
scanner.winExec("%SystemRoot%\\system32\\cmd.exe /C type
\\\"C:\\Information Systems\\BgInfo\\*.txt\\\"");
if (output)
break;
}
scanner.appendToRoot("output", output);
}
8. Navigate to Discovery Definition > Sensors, and then click New.
Complete the following fields:
◦ Name: Use the same name as the matching probe. In this example, we use Windows - Get
BGInfo files.
◦ Reacts to probe: The name of the probe created in the previous procedure: Windows - Get
BGInfo files
◦ Sensor type: Select the type of sensor to create - in this example Sensor.
◦ Description: Describes the function of this sensor.
◦ Script: Copy the script below into the Script field and edit as needed.
◦ Sensor type: Determines how the answer from the probe is processed - in this example
JavaScript.
9. Click Submit.

new DiscoverySensor({ data: {}, process: function(result) {
this.parseOutput(result.output);
this.update(this.data);
},
parseOutput: function(output) {
var currentFile;
var files = {};
if (output.startsWith("<wmi")) {
var bgout = new XMLHelper(output).toObject();
if (!bgout)
return;
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1284


<!-- page 1285 -->
output = bgout.output;
}
var lines = output.split(/\n/);
for(var i = 0; i < lines.length; i++) {
var line = lines[i];
if (line.startsWith("C:\\Information
Systems\\BgInfo\\")) {
currentFile = line.substr(30);
files[currentFile] = "";
} else if (currentFile) {
var newLine = line.trim();
if (newLine)
files[currentFile] += (files[currentFile]?
"\n&nbsp;" : "") + newLine;
}
}
this.data['u_jack_id'] = files['JackID.txt'];
this.data['warranty_expiration'] = files['Warranty.txt'];
this.data['po_number'] = files['Ponum.txt'];},
type: "DiscoverySensor"
});
Patterns and horizontal discovery
A pattern is a series of operations that tell Discovery which CIs to find on your network, what
credentials to use, and what tables to populate in the CMDB.
This topic assumes you understand the phases of horizontal discovery. If you need to review the
horizontal discovery process for probes and for patterns, see the following:
• Horizontal discovery process flow with probes and sensors
• Horizontal discovery process flow with patterns

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

How Discovery uses patterns
A pattern performs the same function as a probe: it identifies and explores a target CI. Discovery
uses patterns only during the last two phases of discovery: Identification and Exploration.
When you kick off horizontal discovery with patterns, the Scanning and Classification phases
run as they would if you were not using patterns (only using probes and sensors). After the
Classification stage completes, Discovery looks at the trigger probes on the classifier to see
which probe to launch. When the Horizontal Pattern probe is specified as a trigger
probe, Discovery launches both the Horizontal Pattern probe and the pattern that it
specifies.

Differences between probes and patterns
The main differences between using patterns for horizontal discovery and using only probes for
horizontal discovery are outlined in this table:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1285


<!-- page 1286 -->
Topic

Horizontal discovery with probes

Horizontal discovery with patterns

Discovery phases

Probes run during all four discovery
phases.

Patterns run only during the
identification and exploration
phases. Discovery still uses the
Shazzam probe and port probes to
kick off discovery.

Discovery offers several out-of-box
probes and sensors.

Discovery is offering more patterns
in every major release and on the
ServiceNow App Store .

Finding new CIs

However, if you want to find new CIs
or change the data that Discovery
populates in the CMDB, you must
create news probes and sensors
or customize the existing ones. To
do this, you need knowledge of
Java and JavaScript, and you need
to understand how probes work
together with other probes and with
sensors.
Feature support

If you want to create a new pattern
or customize an existing one, you
can use the pattern designer,
which is a user-friendly interface
that helps you construct steps and
enter values.

Supports all standard network, and In addition to supporting all
CI discovery. Certain applications
standard discovery, patterns
are not supported without the use of support:
patterns. See Detailed information
• Cloud discovery
on products discovered by ITOM
• configuration file tracking
Visibility for a full list.
• CI deletion strategies

The ECC
queue and
troubleshooting

Performance

Discovery creates Multiple ECC
Queue records depending on how
many probes are launched.

Discovery creates only one
additional ECC queue record for
the pattern.

To troubleshoot any issues with
horizontal discovery, you must
analyze several ECC queue records
to see the data that Discovery
retrieved.

To troubleshoot any issues with
horizontal discovery during
identification and exploration,
you only have to analyze one ECC
queue record for the pattern.

Depending on what type of
target CI you are trying to identify
and explore, Discovery might
trigger multiple probes during the
identification phase, and then
trigger additional probes during the
discovery phase. It is possible that
horizontal discovery with probes
can take longer because of the
extra overhead in triggering and
processing many probes.

Discovery triggers one pattern
during the identification an
exploration phases. All operations
that Discovery needs to run are
in the pattern and Discovery can
execute them in order until the
pattern is finished. Therefore,
pattern discovery can lead to faster
performance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1286


<!-- page 1287 -->
Patterns for top-down and for horizontal discovery
Both Discovery and Service Mapping can use the same pattern for horizontal and top-down
discovery. But they are edited differently. See Create or customize patterns for all steps. If
you take a pattern that was exclusively used for top-down discovery and you want to use it for
horizontal discovery, you have to make a few modifications. See Use a pattern for horizontal
discovery for instructions.
Pattern Orchestrator
Pattern Orchestrator is a process that allows a discovery to trigger multiple patterns related to
a collection of data in a hierarchical manner. This is to help address issues with large datasets
(or large payloads) that can cause slow discoveries and OOM (out-of-memory) issues on a MID
Server.
The Pattern Orchestrator is accessed in the Pattern Orchestrator tab in the Pattern Designer.
The tab contains three new tables: Trigger Rules, Orchestrator Input, Orchestrator Output.

The Trigger Rules table specifies the parent pattern with the Parent Pattern field. The Batch Size
field specifies how many items should be triggered from the parent pattern to the child pattern.
Batch Size has the options Count, All, and Use Parent Context Only.
• Count must specify a number for the Batch Size Count. The child pattern is triggered each
time the parent pattern sends the specified number of CIs.
• All uses every CI sent from the parent pattern and triggers the child one time.
• Use Parent Context Only relies on the parent pattern's output settings to dictate which child
pattern should trigger. This is useful when two patterns have the same parent, but you need
one to trigger before the other.
The Orchestrator Input uses the CI Type field to accept CI types from its parent pattern or
parent's parent pattern. The Saved As field saves the CI type's name to be used in the pattern.
Service accounts are a special case and must be named service_account. The CI Attributes field
uses any outputs from the parent pattern to select which attributes to use.
The Orchestrator Output controls which data will be sent to subsequent patterns. It has the
fields CI Class Type, which is the type of CI being discovered, and Variable Names which
specifies the variables to be passed on as inputs to child patterns. Any variables not specified in
Variable Names are not sent to child patterns. The variable source_native_key can be manually
added by searching for it in the Variable Names field.

Source Native Key
In some situations, one pattern may get partial information about a CI, while another
pattern gets partial info about the same CI. Instead of creating redundant records or
discarding partial information, the information is stored in the CMDB IRE Partial Payloads

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1287


<!-- page 1288 -->
[cmdb_ire_partial_payloads_list] table. After enough patterns gather partial information, it can
correlate that data to provide complete information on the CI.

Pagination
Another way to reduce stress on the MID Server's memory is pagination. Pagination breaks a
large payload up into smaller, ordered slices called pages. Pagination limits the maximum size of
items received and generates a token. Once that page is processed, the token is passed to the
next page, which is then processed, until all the pages are completed.
Pagination is controlled from the Custom Operations table [sa_custom_operation]. The field
Is pagination capable is hidden by default on the form, and can be added to the form with
the Personalize Form controls. Once that is set to true, the associated pattern in the pattern
designer has the field Paginated. Setting the Paginated field to true runs that step in the pattern
with pagination.
Add the Horizontal Pattern probe to a classifier
To use a pattern for the identification and exploration phases of horizontal discovery, you must
add the Horizontal Pattern probe to the classifiers for the CIs are you trying to discover.

Before you begin

Role required: discovery_admin

About this task

Warning: This procedure is only intended for custom classifier records or those that do
not include a pattern by default. However, if you have already populated your CMDB with
data using probes from this classifier and then switch to use patterns, Discovery may create
duplicate CIs. Therefore, only follow this procedure if you have never run Discovery with
probes for this classifier type.

Procedure
1. Navigate to All > Discovery Definition > CI Classification > {classifier type}.
2. Open the classifier record.
3. Click the Triggers probe related list.
4. Deactivate the existing identification and exploration probes.
5. Click Edit, and add the Horizontal Pattern probe.
The probe appears in the related list.
6. From the related list view, double click the field under the Pattern column and add the pattern
you want to associate with the classification.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1288


<!-- page 1289 -->
7. Remove or deactivate the other probes from the Triggers probe related list.

Note: If you delete a pattern, the Horizontal Pattern probe is not automatically removed
from the classifier. You must select another pattern for the Horizontal Probe, or you can
switch back to using identification and exploration probes specific to the classifier.
If you use the Horizontal Probe without a pattern specified, discovery stops after the
classification stage.
Use a pattern for horizontal discovery
If you want to use a new pattern, or if you already have a pattern that you were using for topdown discovery, you can use the pattern for horizontal discovery with a few modifications to the
relevant classifier.

Before you begin

Role required: discovery_admin

About this task

Warning: This procedure is only intended for custom classifier records or those that do
not include a pattern by default. However, if you have already populated your CMDB with
data using probes from this classifier and then switch to use patterns, Discovery may create
duplicate CIs. Therefore, only follow this procedure if you have never run Discovery with
probes for this classifier type.

Procedure
1. Verify that Discovery can use the pattern:
a. Navigate to Pattern Designer > Discovery Patterns.
b. Open the pattern.
Application patterns that Service Mapping uses are indicated as type 1-Application.
c. In the Identification Sections on the Basic tab, verify that there is at least one section that
allows for an entry point type of TCP or All.
If not, create one. See the Identification steps for creating a new pattern.
d. Save the pattern.
2. On the instance, create or modify the classification for the CI type you want to discover.
Configure the classifier as follows:
a. Navigate to Discovery Definition > CI Classification > {classification type}.
b. Open the relevant classifier.
c. Configure the classifier as follows:
▪ Relationship type: Select Runs on::Runs (for process classifiers only)
▪ Condition: Configure the same condition you defined in the pattern.
▪ Triggers probes Related list: Add the Horizontal Pattern probe, and then add the pattern
you are using to the Pattern column.
See Create a Discovery CI classification for a description of the other fields on the classifier.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1289


<!-- page 1290 -->
What to do next

Run the pattern in Debug mode to test it. When you are sure the pattern works, you can run
discovery by setting up a discovery schedule or running an on-demand discovery. See Schedule
a horizontal discovery for more information.
Discovery resource utilization
Standard transactions on Windows and UNIX generate various amounts of network traffic,
depending on what is being discovered.
These tables show the bandwidth consumption for each data flow segment of a typical discovery
using probes and patterns over different operating systems.
Discovery Bandwidth Over Different Operating Systems (in Megabytes)
Device Type

MID > Instance

Instance > MID

MID > Target

Target > MID

Windows
2016

0.104966

Windows 2012

Total

0.101271

0.77739

2.364353

3.34798

0.126327

0.07928

1.177146

3.70751

5.089804

Windows
2008

0.141816

0.104674

1.032673

3.594784

4.873947

Windows 10

0.091466

0.075601

0.642313

2.221103

3.030483

Linux CentOS

0.164232

0.111376

0.148742

0.690117

1.114467

Mac OSX

0.103707

0.068302

0.021681

0.461365

0.655055

HP-UX

0.120358

0.106676

0.042669

0.101149

0.370852

Solaris

0.130551

0.099414

0.060243

0.346605

0.636813

Cisco UCS
Switch

0.029655

0.027465

0.094918

0.097444

0.249492

F5 Load
Balancer

0.043935

0.03689

0.017179

0.012132

0.110136

A10 Load
Balancer

0.046631

0.032266

0.018313

0.03182

0.12903

EMC Storage

0.4776

0.373828

1.215954

4.741926

6.809308

The following table shows the bandwidth comparison between an initial discovery for three-tier
applications and for each subsequent discovery. Bandwidth is broken up into the three tiers: UI
(Apache), application (Websphere), and data (Oracle). This measures the total data transfer for
each discovery run once for a device class.
Discovery Bandwidth for Three Tier Applications (in Megabytes)
Device Type

MID > Instance

Instance > MID

Three-tier
application
- Initial
discovery

0.712829

0.678862

F5 Load
Balancer

MID > Target

Target > MID

Total

7.084678

9.430181

17.90655

0.017179

0.012132

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1290


<!-- page 1291 -->
Discovery Bandwidth for Three Tier Applications (in Megabytes) (continued)
Device Type

MID > Instance

Instance > MID

MID > Target

Target > MID

Total

Apache on
Linux

0.540161

1.107108

Websphere
on Linux

0.729403

1.165112

Oracle on
Windows

5.797935

7.145829

0.560122

3.354948

F5 load
balancer

0.001347

0.012132

Apache on
Linux

0.136366

0.79392

Websphere
on Linux

0.341042

0.11365

Oracle on
Windows

2.05778

0.354948

Three-tier
application subsequent
discovery

0.150882

0.107409

2.536535

This table shows discovery of different OS types using patterns. This measures, in megabytes,
the total amount of data created and the total amount of data in subsequent scans for each
device.
Discovery Bandwidth for Patterns over Different Operating System Types (in Megabytes)
MID >
Instance

Instance >
MID

Create

0.39

Update

Device

Linux

Windows
Server

Solaris

HP-UX

Citrix
Netscaler

F5

MID > Target

Target > MID

Total

0.486

0.098

0.273

1.247

0.382

0.499

0.093

0.264

1.238

Create

0.289

0.316

5.628

8.508

14.741

Update

0.273

0.306

5.621

8.458

14.658

Create

1.222

1.4

0.383

0.917

3.922

Update

1.24

1.42

.399

.675

3.734

Create

0.176

0.222

0.063

0.13

0.591

Update

0.178

0.247

0.062

0.128

0.615

Create

0.424

1.919

0.019

0.042

2.404

Update

0.355

0.619

0.016

0.041

1.031

Create

0.087

0.135

0.026

0.047

0.295

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1291


<!-- page 1292 -->
Discovery Bandwidth for Patterns over Different Operating System Types (in Megabytes)
(continued)
MID >
Instance

Instance >
MID

Update

0.132

Create
Update

Device

L3 Switch

MID > Target

Target > MID

Total

0.171

0.026

0.047

0.376

0.172

0.125

0.282

0.478

1.057

0.178

0.126

0.282

0.479

1.065

Note: These measurements were taken with base operating configurations. Your local
system results may vary.

CPU Usage examples
Examples from CPU Usage will vary among the matrix of thousands of combinations of Operating
Systems, chip sets and specific loads for each system.
Your mix of these variables will determine your unique level of CPU consumption.
You can identify unique builds using internal templates and discover them by watching the
performance impact, or lack of performance impact that your Discovery tool has on your system.
Discovery monitoring and issue resolution
Learn how to monitor the progress of your discoveries and how to configure the system
to aggregate performance metrics that are important to you. Find descriptions of the error
messages you see, as well as possible steps you can take to solve problems. The Knowledge
Base on Hi contains several articles to help you troubleshoot discovery issues.

MID Server overview
Discovery Home Page
Open the Discovery Manager to create or edit schedules for IP-based and Cloud
Discovery. View the CIs and cloud resources that your schedules discover and then
track any errors that occurred.
Discovery Troubleshooting Guide
Look at the Discovery troubleshooting guide in the knowledge base if you are
experiencing symptoms, such as the inability for Discovery to classify a discovered
host, or the Shazzam probe not finding certain types of devices.
KB0657528: Credentials and Permissions troubleshooting on Discovery, Service
Mapping, and Orchestration
Discovery issues may be caused by incorrectly configured or missing credentials.
Find our how to identify and configure a missing credential or permission.
Discovery error messages
View the list of common error messages and possible solutions.
Discovery performance metrics
View performance metrics on probe/pattern and sensor processing times. You
can use the roll-up data to monitor the performance of specific discoveries or to
compare performance between versions after an upgrade.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1292


<!-- page 1293 -->
Discovery Home page
The Discovery Home page provides a summary of discoveries that were triggered by cloud
and non-cloud schedules. You can view any errors that occurred during a Discovery and find
remediation suggestions. Use the Home page view to examine the cloud resources discovered
for the service accounts you selected in a cloud schedule.
To open the Discovery Home page, navigate to Discovery > Home. The Home page shows the
Discovery totals for each of the following categories. Click a tile to see details for that category.

Item

Schedules

Description

The number of Discovery schedules that are configured to find cloud
resources and virtual machines (IP addresses).
Click View Schedules to open the CI schedule view, where you
can see specific details about each CI schedule separately. View
the results of your cloud or IP address schedules and create new
schedules.

Discovered Devices

Cloud Resources

The total number of device CIs discovered. Devices include all the
CIs in tables that extend the Hardware [cmdb_ci_hardware] table,
such as Computer [cmdb_ci_computer] and Cisco UCS Equipment
[cmdb_ci_ucs_equipment].
The total number of resources (virtual machines) discovered for the
service accounts selected. See Enable discovery of virtual machines
for details about setting up Discovery for your cloud resources.
Click View Cloud Resources to open a list of discovered cloud
resources, by type.

Errors

The total number of unresolved errors that occurred during discovery.
Click View Errors to drill down to specific types of errors.

Viewing all schedules
The schedule view displays details for each schedule that ran for the selected filter. By default,
the list shows all the Discovery schedules in alphabetical order, regardless of their current
running status.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1293


<!-- page 1294 -->
Use these controls to filter Discovery results by schedules:
Schedule filters
You have the choice of these filters:
• All: Results of all Discovery schedules that ran. This is the default filter.
• Cloud Schedules: Results of all Cloud Discovery schedules that ran. When you
select this filter, a second filter appears, allowing you to display cloud schedules
by Service Account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1294


<!-- page 1295 -->
• IP Based Schedules: Results of all Discovery schedules that ran for Configuration
Items (CI), using IP ranges. When you select this filter, a second filter appears,
allowing you to display the CI schedules by a specific location or all locations.

Schedule sorter
From the schedule selector in the left pane, select a sorting criteria, from left to right:

• Errors for each schedule listed.
• Unidentified IP addresses.
• Recent activity, which lists the schedules that are currently running first.
• Alphabetical listing of schedules.
Schedule list
List of available Discovery schedules. Select a schedule to display its details. Click
the pencil icon at the top of the page to edit the schedule.
Date/time indicator
Date and time the selected schedule ran.
Schedule topics
Tiles that show the Discovery result categories for the selected schedule. Click a tile
to see more detail.
• Cloud resources: Displays the total number of CIs updated or created for this
filter.
• Virtual Machines: Displays the total number of virtual machines discovered with
the selected schedule.
• Errors: Displays the total number of errors that occurred from running the
selected schedule.
• Datacenters: Displays the number of datacenters selected during the creation of
the Discovery schedule.
Cloud resources trend chart
Trend graph for the selected schedule. Each circle in the graph represents a
specific Discovery run.
Place the cursor over any circle to see a summary of that Discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1295


<!-- page 1296 -->
Click the circle to filter the values you see in the Discovery topics. The results
populate the appropriate tiles above the graph.
Errors by category
Category tiles for the errors encountered during the Discovery for the selected
schedule. Click a tile to view the errors in that category and to see recommended
actions for remediation. See Discovery error messages for additional details.
Discovered cloud resources
Breakdown of the cloud resources discovered for the selected schedule, presented
in a horizontal bar chart.
Add schedules
Types of schedules to add.

Advanced View
Displays the Discovery status record for the selected schedule. Use this link to
examine the results of the schedule in the ECC Queue and the Discovery log.

Viewing IP-based schedules
To display results from IP range discoveries, select IP Based Schedules in the primary filter. Use
the secondary field that appears to filter the search results by Location. The tiles show the result
categories for the selected IP-based schedule. Click a tile to see more detail.
• Discovered devices: Total count of virtual machines discovered by the IP-based schedule,
including both targeted and unidentified IP addresses.
• Errors: Displays the total number of errors encountered running the selected IP-based
schedule.
• Unidentified IPs: Count of unidentified CIs discovered by the IP-based scheduled.
• Targeted IPs: Count of CIs found that were configured in the IP-based schedule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1296


<!-- page 1297 -->
Resolve CI Discovery Schedule errors
From the ServiceNow Home page, you can view the Discovery errors that occurred during
a Discovery and get suggestions for resolving these errors. You can view the errors for all
schedules or for a single schedule.

Before you begin

Role required: discovery_admin

Procedure
1. Navigate to All > Discovery > Home.
The summary page for all schedules appears.

2. View the errors, using one of these methods:
◦ Click the Errors tile to see the errors by category for all CI discovery schedules.
◦ Click the Schedules tile to display the errors for a single schedule.
a. In the summary screen, select the schedule that you want to investigate for errors.
If you have numerous schedules, you can filter by location, using the location dropdown
list, or filter by the schedule name in the Search by name field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1297


<!-- page 1298 -->
b. After you select the schedule, click the Errors tile.
c. Scroll down to view the errors by category.

3. Click a category tile to display the specific error codes that occurred in that category.
4. Click the tile for the error code you want to investigate.

The list displays all occurrences of that error code, either for a single CI schedule or for all
schedules, depending on the path you took to view the errors. The list shows the IP address of
each instance that experienced the error and the error status Active error. The Recommended
Actions pane on the right contains the recommended action for the selected error. The
ACTION ON ALL pane contains operations you can execute on all the errors in the list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1298


<!-- page 1299 -->
5. Click View instructions to see details and remediation suggestions for the error code.

6. To begin work, either select the check box next to an error to resolve that specific error or
select an action for ALL to resolve that error code for all instances of that error.
In this example, the system recommends creating new Windows credentials to resolve this
error code.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1299


<!-- page 1300 -->
7. Complete the suggested remediation tasks before attempting to retry Discovery.
In this example, the Create new Windows Credentials link opens a form for creating and
testing new Windows credentials.

8. After all the recommended tasks are complete, click Retry Discovery.
A possible course of action might be to retry Discovery for ALL instances after creating the
credentials. The new credentials might solve the issue for all the instances experiencing this
error code.
9. Check the Error Status column to see the results of your remediation efforts.
Single retries complete quickly. Retries for large numbers of IP addresses can take several
minutes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1300


<!-- page 1301 -->
An error can have one of these statuses:
◦ Active error: Unresolved error. This is the default status of all new errors.
◦ Resolved: Resolved error. The recommended actions show Error successfully resolved.
◦ Assigned: Task assigned to resolve this error. Click Create a task to assign a user to a task
for all active errors. Assigned errors are considered Active errors, and actions can still be
performed on them.
◦ Pending Discovery: Waiting for Discovery to start after you execute the Retry Discovery
action on all errors.
◦ In Discovery: Discovery is currently active.
Related topics
Discovery status
Review the logs for horizontal discovery
The ECC queue for Discovery
Create discovery schedules for cloud resources
Cloud Discovery home page in Cloud Discovery Workspace
The Cloud Discovery home page displays a summary of the discoveries triggered through a
discovery schedule. You can view the count of CIs discovered and errors encountered over time.
You can also select any dashboard report to view additional information.

Required ServiceNow AI Platform roles
sn_cloud_ops_ws.cloud_ops_admin

Access the Cloud Discovery home page
To open the dashboard, navigate to Cloud Discovery Workspace > Cloud Discovery >
Dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1301


<!-- page 1302 -->
Use cases
For examples of how different people in your organization would use this dashboard, see these
use cases.

User

Dashboard use

sn_cloud_ops_ws.cloud_ops_admin

The sn_cloud_ops_ws.cloud_ops_admin can
review the following information in the Cloud
Discovery dashboard:
• 30 day discovery runs
• Upcoming schedules
• Total configuration items
• Cloud discovery errors
• Credentials
• MID Servers
• Service accounts
• Cloud VMs by datacenter

Indicators
Credentials
This indicator displays the total count of credentials defined in the system and their
breakdown according to cloud provider.
Select the number mentioned under any credential type to see a filtered list of
matching credentials.
Service accounts
This indicator displays the total count of service accounts defined in the system and
their breakdown according to cloud provider.
Select the number mentioned under any cloud provider to see a filtered list of
matching service accounts.

Reports
Title

Type

Source table

Description

30 day
discovery
runs

Donut chart

discovery_status

This report displays the count
and the state of the discovery
runs over the last 30 days.
Cloud Discovery displays the
following states in the report:
• Active
• Canceled
• Completed

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1302


<!-- page 1303 -->
Title

Type

Source table

Description

Select the report to view the
list of all the discoveries.
Upcoming
schedules

List

discovery_schedule

This report displays
information about up to
eight upcoming scheduled
discoveries.
Select any schedule to view its
details.

Total
Line and area cmdb_ci
configuration chart
items

This report displays the
number of CIs discovered over
time.
Select the report to view the
list of all the configuration
items discovered so far. You
can select any CI record to
view more information about
the CI and its multi-source
data if available.

Cloud
discovery
errors

Line and area discovery_log
chart

This report displays the
number of Cloud Discovery
errors over time.
Select the report to view the
list of all Cloud Discovery
errors in the Discovery log.
Alternatively, you can access
this information, by navigating
to Diagnostics > Discovery
log.

Credentials

Indicator

discovery_credential

This report displays the
total count of credentials
defined in the system and their
breakdown per cloud provider.
Select the number mentioned
under any credential type to
see a filtered list of matching
credentials.

MID servers

Donut chart

ecc_agent

This report displays the total
count of MID Servers and their
status.

Service
accounts

Indicator

cmdb_ci_cloud_service_account This report displays the total
count of service accounts
defined in the system and their
breakdown per cloud provider.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1303


<!-- page 1304 -->
Title

Type

Source table

Description

Select the number mentioned
under any cloud provider to
see a filtered list of matching
service accounts.
Cloud
VMs by
datacenter

Horizontal
bar chart

sn_disco_cd_vm_analytics

This report displays the
count of VMs discovered per
datacenter.
Cloud Discovery displays this
report for Microsoft Azure,
Amazon Web Services (AWS),
and vCenter datacenters only.

Cloud Discovery schedules dashboard in Cloud Discovery Workspace
The Cloud Discovery schedules dashboard displays information about the selected discovery
run.

Required ServiceNow AI Platform roles
sn_cloud_ops_ws.cloud_ops_admin

Access the Cloud Discovery schedules dashboard
To open the dashboard, navigate to Cloud Discovery Workspace > Cloud Discovery >
Schedules.

Use cases
For examples of how different people in your organization would use this dashboard, see these
use cases.

User

sn_cloud_ops_ws.cloud_ops_admin

Dashboard use

• View the resource count from the recent
discovery runs.
• View the time taken for the recent discovery
runs.
• View the list of newly discovered CIs
• View the list of CIs missing from the previous
discovery run.
• View the count of CIs discovered during the
selected discovery run.
• View the count of discovery errors that
occurred during the selected discovery run.

Indicators
Total Resources
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1304


<!-- page 1305 -->
The indicator displays the total count of Configuration Items (CI) discovered during
the selected discovery run.
Newly discovered
The indicator displays the count of new CIs discovered during the selected
discovery run.
Absent from last
The indicator displays the count of CIs missing during the selected discovery run.
That is, CIs were discovered during the previous discovery run, but are missing
during the selected discovery run.
Errors
The indicator displays the count of discovery errors that occurred during the
selected discovery run.
Duration
The indicator displays the time taken to complete the selected discovery run.

Note: Cloud Discovery calculates the Newly discovered and Absent from last indicators
only for the pattern-based discoveries.

Reports
Title

Type

Source table

Description

Resource counts from
recent discovery runs

Bar chart

discovery_cloud_resultsThis report displays
the count of CIs
discovered during
the last 10 runs of the
selected discovery
schedule.

Time taken for recent
discovery runs

Bar chart

discovery_status

This report displays
the time taken to
complete the last 10
runs of the selected
discovery schedule.
This report covers
both completed as
well as canceled
discovery runs.

Filters
Name

Type

Description

Schedules filter

Choice-based filter

By default, the list shows
all the Cloud Discovery
schedules in alphabetical
order, regardless of their
current running status. Use
the schedule filter to filter the
Cloud Discovery schedules.
You can filter the schedules

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1305


<!-- page 1306 -->
Name

Type

Description

by cloud provider, schedule
name, or both. You can also
sort the filtered list by any one
of the following criteria:
• Alphabetically: Sort
the schedule names
alphabetically.
• Errors: Sort by the count of
errors encountered during
the discovery.
• Discovery in progress: Sort
by status of the discovery.
After filtering the schedule,
select the discovery run
from the Report drop-down
list to visualize its data in
the schedules dashboard
displayed on the Results tab.

Note:
Only the last 10
discovery runs appear
in the Report drop-down
list.
Discovery performance metrics
This Discovery enhancement collects performance metrics on probe/pattern and sensor
processing times and then aggregates that data over time. You can use the roll-up data to
monitor the performance of specific discoveries or to compare performance between versions
after an upgrade.

Metrics
Discovery provides these individual performance metrics:
• Probe and pattern processing time.
• Sensor processing time.
• Identification and Reconciliation Engine (IRE) processing time for Discovery patterns. This
processing time is already included in the sensor processing time, but is isolated here to
provided more insight into the identification and reconciliation of pattern payloads.
Discovery can aggregate individual metrics for these attributes:
• Builds/versions
• Discovery status
• Target IP address

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1306


<!-- page 1307 -->
How metric aggregations are triggered
Metric roll-ups are initiated as follows:
• Aggregated by build: Implemented by the Aggregate Discovery Probe And Sensor Metrics
By Build scheduled job. This job runs at 0200, local time.
• Aggregated by status: Implemented by the Rollup Probe/Sensor Metrics by Status Script
Action, which is triggered by the discovery.complete or discovery.cancelled registered
events.
• Aggregated by target: Implemented by the Rollup Probe/Sensor Metrics by Target Script
Action that is triggered by the discovery.device.complete registered event.

Note: If Discovery execution is cancelled before it completes, Discovery
cannot update the IP target metric aggregation table. This is because the
discovery.device.complete event that triggers aggregation does not run. IP
target data for an interrupted Discovery is collected when subsequent discoveries run
successfully on the target. Cancelling Discovery execution does not affect the aggregation
of other metrics, which are triggered differently.

Tables
Discovery performance metrics data is stored in these tables:

Table

Description

Probe and Sensor Metrics (Individual)
[discovery_perf_metric_probe_sensor]

Stores the individual performance metrics for
probes/patterns, sensors, and IRE processing
times.

Probe and Sensor Metrics (Aggregate)
[discovery_perf_metric_probe_sensor_rollup]

This is the base table for the metric
aggregations and does not store data itself.
The three roll-up tables, by-build, by-status,
and by-target all extend this table.

Probe and Sensor Metrics
Stores the aggregated performance metrics
(Aggregated by Build)
for probes/patterns, sensors, and IRE by build
[discovery_perf_metric_probe_sensor_rollup_by_build]
and version.
Probe and Sensor Metrics
Stores the aggregated performance metrics
(Aggregated by Status)
for probes/patterns, sensors, and IRE by
[discovery_perf_metric_probe_sensor_rollup_by_status]
Discovery status.
Probe and Sensor Metrics
Stores the aggregated performance metrics
(Aggregated by Target)
for probes/patterns, sensors, and IRE by IP
[discovery_perf_metric_probe_sensor_rollup_by_target]
address.

Discovery properties
Performance metrics properties control whether or not aggregation occurs, but not what data is
included in the aggregation. Status and IP target data is collected as follows:
• Rollups for status always contain new data. Discovery continuously collects data on all probes
and sensors during the discovery execution for that discovery status and stores it in the Probe
and Sensor Metrics (Individual) [discovery_perf_metric_probe_sensor] table. Aggregation
rolls up all probe and sensor data for that particular status after discovery.cancel and
discovery.complete events are fired for that status, but only if the aggregation property
for status roll-ups is enabled.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1307


<!-- page 1308 -->
• Discovery continuously collects data on IP targets and stores it in the Probe
and Sensor Metrics (Individual) [discovery_perf_metric_probe_sensor]
table. Aggregation rolls up all existing IP target data after the
glide.discovery.perf.metrics.rollup_by_target property is
enabled and creates records in the Probe and Sensor Metrics (Aggregated by Target)
[discovery_perf_metric_probe_sensor_rollup_by_target] table.
These properties control the gathering of probe and sensor metrics:

Property

Description

glide.discovery.perf.metrics.enable_collection

Enables collection of performance metrics.
• Type: true | false
• Default: true

glide.discovery.perf.metrics.rollup_by_build

Enables aggregation of individual discovery
performance metrics into a roll-up table that
groups by build.
• Type: true | false
• Default: true

glide.discovery.perf.metrics.rollup_by_status

Enables aggregation of individual discovery
performance metrics into a roll-up table that
groups by discovery status.
• Type: true | false
• Default: false

glide.discovery.perf.metrics.rollup_by_target

Enables aggregation of individual discovery
performance metrics into a roll-up table
that groups by target IP address. By default,
Discovery continuously collects individual
IP address metrics, even when aggregation
by target IP is disabled. When you enable
IP target aggregation, Discovery includes all
target metrics in the roll-up table.
• Type: true | false
• Default: false

View Discovery performance metrics for probes, sensors, and patterns
By default, Discovery tracks the performance of individual probes, sensors, and patterns by
measuring the processing time. When patterns are used, Discovery measures the Identification
and Reconciliation Engine (IRE) processing time.

Before you begin

Role required: discovery_admin or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1308


<!-- page 1309 -->
Procedure
1. Navigate to All > Discovery > Discovery Performance Metrics > Probe/Sensor (Individual).
2. Sort the list by Discovery status to see the list of probes and patterns that ran in a specific
Discovery.
3. You can view the metrics for each probe, sensor, or pattern in the list or open the record.
All probe and sensor metrics data are read-only.

The Probe and Sensor Metrics (Individual) form provides these fields:

Field label

Field name

Description

Build/version

build_version

Build on which the Discovery
was run.

Discovery status

discovery_status

ID number of the Discovery
status from which the metrics
were collected.

Target IP address

target_ip

IP address of the target for
this Discovery.

ECC queue input

ecc_queue_input

Identifies a particular ECC
input record in the ECC
queue table.

ECC queue topic *

ecc_queue_topic

Identifies the Java class in
the MID Server that executes
the probe.

ECC queue name *

ecc_queue_name

Identifies the probe/pattern
evaluated for performance in
this aggregation.

Probe *

probe

Name of the probe used for
this Discovery.

Probe processing time

probe_time

Interaction time of the
MID Server with the target,
including construction of the
payload that is sent back to
the instance. The time is in
milliseconds.

IRE processing time

ire_time

Time required to process
the pattern payload on the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1309


<!-- page 1310 -->
Field label

Field name

Description

instance by the Identification
and Reconciliation Engine
(IRE). IRE time is useful
because it shows the part
of the sensor time used by
the pattern. The time is in
milliseconds.
Sensor processing time

sensor_time

Time it took the sensor to
process the payload on the
instance for a Discovery. The
time is in milliseconds.

* Used to uniquely identify a probe/pattern and accompanying sensor when gathering metrics
for a Discovery.
View Discovery performance metrics aggregated by build
Use the roll-up by build data to ensure that the processing times for Discovery components
remain consistent for discoveries in a 24 hour period. View aggregate build data before and
after an upgrade to compare the performance of the old and new versions. All aggregated
performance data is read-only.

Before you begin

Role required: discovery_admin or admin

Procedure
1. Navigate to All > Discovery > Discovery Performance Metrics > Probe/Sensor (Rollup-ByBuild).
2. Sort the list by Build/version.

3. Filter by a specific build to see the aggregated processing times for the probes and patterns
that performed a Discovery on that build.
4. Open a record to see the probe/pattern statistics for the selected build.
The form displays additional fields not visible on the list. Roll-up calculations are over a 24 hour
period, beginning every night at 0200.
5. See the table of performance aggregation data for descriptions of additional metrics displayed
on the form for roll-ups by build.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1310


<!-- page 1311 -->
View Discovery performance metrics aggregated by status
Use the roll-up by status data to ensure that the processing times for probes/patterns and
sensors remain consistent for a specific Discovery. All aggregated performance data is read-only.

Before you begin

Role required: discovery_admin or admin

About this task
Procedure
1. Navigate to All > Discovery > Discovery Performance Metrics > Probe/Sensor (Rollup-ByStatus).
2. Sort the list by Discovery status to see the aggregated processing times for the probes and
patterns that ran during a specific Discovery.

3. Filter by a specific status to display metrics available for probes and patterns that ran in that
status.
4. Open a record to see the probe/pattern statistics for the selected status.
The form displays additional fields not visible on the list. Roll-ups are only created for a
completed or cancelled status.
5. See the table of performance aggregation data for descriptions of additional metrics displayed
on the form for roll-ups by status.
View Discovery performance metrics aggregated by IP address
Use the roll-up by target data to ensure that the processing times for probes/patterns and
sensors remain consistent for each Discovery of a specific IP address. All aggregated
performance data is read-only.

Before you begin

Role required: discovery_admin or admin

Procedure
1. Navigate to All > Discovery > Discovery Performance Metrics > Probe/Sensor (Rollup-ByTarget).
2. Sort the list by Target IP address.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1311


<!-- page 1312 -->
3. Filter by a specific IP address to see the aggregated processing times for the probes and
patterns that performed the Discovery of that IP address.
4. Open a record to see the statistics about the selected probe/pattern for the specific IP
address.
The form displays additional fields not visible on the list. Roll-ups are performed after IP
Discovery has completed successfully.
5. See the table of performance aggregation data for descriptions of additional metrics displayed
on the form for roll-ups by target.
Aggregated data for Discovery performance metrics
Discovery performance metrics can accumulate data for probes, patterns, and sensors each time
Discovery runs. Discovery calculates processing times and increments the number of times a
component runs for each roll-up profile: status, target, or build. All aggregated performance data
is read-only.

Sample roll-up form
This is an example of an aggregation record for probe and sensor metrics. The metrics fields
shown here are used for each aggregation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1312


<!-- page 1313 -->
Sample roll-up by Status form

Performance Framework aggregated data
Except where noted, these fields are common to all aggregation records.

Field label

Field name

Description

Build/version

build_version

Name of the build running
on the instance. This name
identifies the version, patch
level, and release date of the
ServiceNow platform.

Discovery status

discovery_status

ID number of the Discovery
status record for this
aggregation.

Note: This field only
appears on the form for
roll-ups by status.
Target IP address

target_ip_address

IP address of the target for this
Discovery.

Note: This field only
appears on the form for
roll-ups by target.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1313


<!-- page 1314 -->
Field label

Field name

Description

Aggregation cutoff

aggregation_cutoff

The cutoff time varies,
depending on the roll-up
profile.
• By-build: Occurs daily at
02:00, by default.
• By-status: Closing time
of the last aggregation for
that Discovery status, which
might have run the last time
discovery.complete or
discovery.cancelled ran for
that status.
• By-target: Closing time of
the last aggregation for that
target IP address, which
might have run the last time
discovery.device.complete
ran for that IP address.

ECC queue topic *

ecc_queue_topic

Identifies the Java class in the
MID Server that executes the
probe.

ECC queue name *

ecc_queue_name

Identifies the probe/pattern
evaluated for performance in
this aggregation.

Probe *

probe

Name of the probe used for
this Discovery.

Probe time (count)

probe_time_count

Number of times a probe ran
for a given roll-up profile.

Probe time (average)

probe_time_average

Average time a probe took to
gather data on the target and
format the payload for a given
roll-up profile.

Probe time (minimum)

probe_time_min

Minimum time a probe took to
gather data on the target and
format the payload for a given
roll-up profile.

Probe time (maximum)

probe_time_max

Maximum time a probe took to
gather data on the target and
format the payload for a given
roll-up profile.

Probe time (total)

probe_time_total

Total time used by a probe to
gather data on the target and
format the payload for a given
roll-up profile.

Sensor time (count)

sensor_time_count

Number of times a sensor
processed payloads for a
given roll-up profile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1314


<!-- page 1315 -->
Field label

Field name

Description

Sensor time (average)

sensor_time_average

Average time a sensor took
to process payloads on the
instance for a given roll-up
profile.

Sensor time (minimum)

sensor_time_min

Minimum time a sensor took
to process a payload on the
instance for a given roll-up
profile.

Sensor time (maximum)

sensor_time_max

Maximum time a sensor took
to process a payload on the
instance for a given roll-up
profile.

Sensor time (total)

sensor_time_total

Total time used by a sensor
to process payloads on the
instance for a given roll-up
profile.

IRE time (count)

ire_time_count

Number of times a pattern's
payload was processed
by the Identification and
Reconciliation Engine (IRE) for
a given roll-up profile.

IRE time (average)

ire_time_average

Average time used for IRE
processing of a pattern's
payload for a given roll-up
profile.

IRE time (minimum)

ire_time_min

Minimum time used for IRE
processing of a pattern's
payload for a given roll-up
profile.

IRE time (maximum)

ire_time_max

Maximum time used for IRE
processing of a pattern's
payload for a given roll-up
profile.

IRE time (total)

ire_time_total

Total time used for IRE
processing of a pattern's
payload for a given roll-up
profile.

* Together, these values uniquely identify a probe/sensor pair (a "probe execution") that is used
for a Discovery.
Discovery error messages
Error messages and warnings in the system are documented to allow users to recognize the
issues they are having and to take steps to resolve their problems.

Common error messages
Input/output errors

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1315


<!-- page 1316 -->
• CONNECTION_FAILED
• CONNECTION_TIMEOUT
• CONNECTION_REFUSED
• CONNECTION_CIPHER_UNSUPPORTED
• CONNECTION_PROTOCOL_UNSUPPORTED
• CONNECTION_LOST
• INVALID_CONNECTION_PARAMETER
• FILE_NOT_FOUND
• IO_ERROR
Authentication errors
• NO_CREDENTIALS
• AUTHENTICATION_FAILED
• INVALID_CREDENTIALS_TYPE
SSH errors
• SSH_SHELL_UNSUPPORTED
• SSH_SCRIPT_TRANSFER_FAILED
• SSH_INVALID_SESSION
Windows errors
POWER_SHELL_VERSION_UNSUPPORTED
Command errors
• COMMAND_TIMEOUT
• INVALID_COMMAND
• COMMAND_FILTER_ERROR
• COMMAND_PARSER_ERROR
• COMMAND_KEY_MAPPER_ERROR
• COMMAND_VALUE_NORMALIZER_ERROR
• TERMINAL_SESSION_LOST_ERROR
• TERMINAL_SESSION_ENVIRONMENT_MODIFICATION_ERROR
Generic component errors
• INVALID_COMPONENT
• INVALID_COMPONENT_PARAMETER
• INVALID_OPERATION

General error messages
Message: org.xml.sax.SAXParseException: The entity name must immediately follow the
'&' in the entity reference

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1316


<!-- page 1317 -->
A version of this message occurs if you have used special characters in a password
that is saved in an XML file.
Message: Identified, ignored extra IP
This message can appear at the end classification phase of Discovery if a targeted
IP address belongs to a device that is being discovered at the same time.
For example, a Windows server has two NIC cards with two IP addresses. Discovery
targets both IP addresses within the same Discovery schedule. This message is
generated to note that that second IP address is ignored because we don't want to
update the same CI twice within the same Discovery run.
This message is a warning and is expected. No action is needed.
Message: Authentication failures
The discovery process could not discover the CI because the discovery application
could not authenticate. To resolve, add the credentials of that machine in to the
discovery credentials table.
Message: Identified, not updating CI, now finished
No match on any of the CI Identifiers.
Message: The impersonation of user failed
This message originates in the Powershell. Check that the domain is specified along
with the user name in the credentials.
Message: Connection failed to WMI service. Error: Permission denied
This message originates in WMI. Check that the MID Server service is running with
the correct credentials and has access to the target device.
To check this, run the following command from the command prompt on the MID
Server host:
wmic /node:target /user:user /password:password path
win32_operatingsystem
target = IP address of target device
user = user account used by the mid server service
password = password used by the mid server service
Message: Connection failed to WMI service. Error: The remote server machine does not
exist or is unavailable
This message originates in WMI. Check that the MID Server service account has
access to the targeted machine. Check if a domain admin account is used as
the MID Server service account. Check if any existing firewalls are open to the
connection. To check this, run the following command from the command prompt
on the MID Server host.
Execute for runner_type=WMI:
wmic /node:"<target>" /user:"<user>" /
password:"<password>" path win32_operatingsystem
From within a Powershell console on the mid server
host, execute for runner_type=Powershell:
gwmi win32_operatingsystem -computer <ip> -credential
'<username>'
Message: Provider is not capable of the attempted operation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1317


<!-- page 1318 -->
WMI repository was corrupted. After following the "WMI: Repository Corruption, or
Not?" article on the Microsoft TechNet site , the problem was corrected.
Message: The result file can't be fetched because it doesn't exist
PRB581515 - Powershell does not work when customer has locked down write rights
to admin share.
Message: Please run sneep as root to ensure correct serial number from fserial data
source
The Oracle Sneep command line tool must be installed for the Solaris - Serial
Number probe to work correctly. There is a known limitation
with Fujitsu
PRIMEPOWER devices. To work around this limitation, run the Solaris discovery with
root credentials.

Discovery sensor error messages
Message: The multisensor will not process because its major version = X while
probe_name responding script's major version = Y
The above error message indicates that there is a major version mismatch.
Message: Payload length exceeds limit of 5000000
The above error message indicates that the Discovery probe results exceed the
limit. The MID Server will discard the results and return a warning message. To
resolve, set the value of the mid.discovery.max_payload_size MID Server
property to any negative number (for example, -1) to disable the payload limit and
allow payloads of any size to be sent to the instance.
Message: The multisensor will not process because its responding script's major version
= X while its referenced probe probe_name major version = Y
The above error message indicates that there is a major version mismatch.
Message: sensor_name sensor's major version = X while its related probe's major version
=Y
The above error message indicates that there is a major version mismatch in the
probe and sensor versions and the sensor will stop processing until this condition is
resolved.
Message: sensor_name multisensor's minor version = X while probe_name responding
script's minor version = Y
The above error message indicates that there is a minor version mismatch.
Message: sensor_name multisensor's responding script's minor version = X while its
referenced probe probe_name minor version = Y
The above error message indicates that there is a minor version mismatch.
Message: sensor_name sensor's minor version = X while its related probe's minor version
=Y
The above error message indicates that there is a minor version mismatch in the
probe and sensor versions. Processing will continue, but you may want to resolve
this condition.
Message: Sensor error when processing . . . : No sensors defined
Every active probe looks for a corresponding sensor to process the data that is
collected by the probe. The above error message indicates that the corresponding
sensor for the probe is missing or inactive.
Message: Sensor error when processing . . . : typeError: . . .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1318


<!-- page 1319 -->
The above error message indicates that the sensor has one of the core error
constructors in JavaScript.
Message: Sensor error when processing ...: Exception while processing sensor: XML
Parse Problem: ![CDATA]
This XML parsing error occurs when the discovery sensor fails to parse the input
ECC queue payload. The payload is not formatted according to XML specifications.
Possible solutions include:
• Escape problematic characters. For example, change < to &lt and & to &amp.
• Escape entire blocks of text with CDATA sections, or put encoding declarations at
the start of the text.
• Remove any whitespace characters (space, tabs, newlines) before the XML
declarations.
Message: Sensor error when processing Linux - Network ARP Tables: Exception while
running probe post processing script: No XML data
The system displays the No XML data error when the XML sensor processor fails
to find the expected XML data in the probe output. During sensor processing,
Discovery attempts to retrieve the probe results but finds the probe output empty.
Verify that the probe returns the correct output for the sensor to process.
Message: Sensor error when processing Shazzam: Exception while running probe post
processing script: Probe not found: null
The Probe not found error occurs when the sensor processor fails to find the probe
record supposedly associated with the sensor. During sensor processing, Discovery
gets the probe record from the probe cache and stores it for later reference. The
"Probe not found" error occurs either when the sys_id of the probe cannot be found
or there is an issue with the probe cache.
See Find the cause of a "Probe not found" error for more information.
Find the cause of a sensor error message
Use this procedure to identify a Discovery sensor error.

Before you begin

Role required: sn_cloud_ops_ws.cloud_ops_admin or admin

About this task

This process requires that you identify the following:
• The error.
• The name of the sensor where the error occurred.
• The datestamp of the error.
• The associated stack trace of the error.

Procedure
1. Depending on the application you are using, do one of the following:
◦ To view the Discovery Log in Cloud Discovery Workspace, navigate to Cloud Discovery
Workspace > Cloud Discovery > Discovery Log.
◦ To view the Discovery Log in Discovery, navigate to All > Discovery > Discovery Log.
2. To find the error, filter on the Level name of Error.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1319


<!-- page 1320 -->
If you are using Discovery, you can also view the error and the date stamp in the Error Report.
The report is available on the Discovery dashboard.
3. Note the Created field of the error record.
This timestamp is used to find the proper stack trace.
4. Note the Short Message field of the error record.
This field shows the name of the sensor where the error has occurred.
5. To find the stack trace, navigate to System Logs > Errors.
6. Search for the date and time that matches the value in the Created field of the error record in
the Discovery Log.
7. The Message field of that entry contains the full stack trace of the error.
The stack trace contains the error message, the sys_id of the script, and the line number where
the error has occurred.
8. After determining the error details, you can fix the JavaScript file.
Find the cause of a "No Sensor Defined" error message
Every active probe looks for a corresponding sensor to process the data that is collected by the
probe. The "No Sensors Defined" message indicates that the corresponding sensor for the probe
is missing or inactive.

Before you begin

Role required: sn_cloud_ops_ws.cloud_ops_admin or admin

About this task

To find the cause of this error, identify the Short Message field of the error record. This field
shows the name of the probe for which the sensor is missing.

Procedure
1. Depending on the application you're using, do one of the following:
◦ To identify the cause of the error using Cloud Discovery Workspace, navigate to Cloud
Discovery Workspace > Cloud Discovery > Diagnostics > Discovery Log.
◦ To identify the cause of the error using Discovery, navigate to All > Discovery > Output and
Artifacts > Discovery Log.
2. Filter the Level column by Error.
If you are using Discovery, you can also view the Error Report on the Discovery dashboard.
3. Note the Short Message field of the error record.
This field shows the name of the sensor where the error has occurred.
Fix the cause of a sensor error message
To fix a Discovery sensor error message, you must fix the JavaScript file containing the code that
generated the error.

Before you begin

Role required: admin

About this task

To fix the JavaScript file:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1320


<!-- page 1321 -->
Procedure
1. Navigate to the module in Discovery in which the error occurred.
In this example, navigate to Discovery Definition > Script Includes.
2. Fix the error.
a. In this example, search for DiscoverySmiFcSwitchSensor in the Name field.
Discovery script includes

b. Click on the link to go to the details page for that script include.
c. Modify the JavaScript script on that page to fix the error indicated.
d. Click Update.
Find the cause of a "Probe not found" error
Verify the correct sys_id of the probe associated with the probe parameter in the payload of the
ECC Queue input record.

Before you begin

Role required: discovery_admin or admin

Procedure
1. Record the sys_id of the probe as it appears in the ECC Queue payload.
ECC Queue payload sample

2. Navigate to Discovery Definition > Probes and open the record for the probe you want to
inspect.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1321


<!-- page 1322 -->
3. Right-click in the record's header bar.
4. Select Copy sys_id from the context menu.
Follow browser instructions to copy the sys_id if browser security measures restrict this
function.
5. Compare this value with the sys_id of the probe from the payload.
If the sys_id of the probe record does not match the value in the payload, try to determine the
cause of the incorrect value.
Discover missing compute resources
Use the Discovery Admin Workspace to identify compute resources that weren't discovered
recently. Run a quick discovery to update the resource's data. If a resource isn't discoverable,
ignore the resource and exclude it from the report. This procedure helps you maximize the use of
your resources.

Before you begin

Role required: discovery_admin or admin

About this task

By default, the report provides the following information:
®

• Resources discovered by the ServiceNow platform and ServiceWatch Suite.
• Resources that weren't discovered since the previous discovery ran 14 days previously or that
have no discovery date in the Most recent discovery field.
• Resources that don't have an ignore from report tag.

Procedure
1. Navigate to Workspaces > Discovery Admin Workspace > Insights > Missing compute
resources from Discovery.
2. Run a quick discovery for a resource.
a. In the list, select the resource.
b. Select Quick discovery.
c. Select a MID Server to run discovery.
The Enter IP List is automatically populated.
d. In the MID Selection Method and MID Server fields, select the preferred options.
For more information, see MID Server selection .
e. Select Run discovery.
3. If the resource's discovery failed, ignore the resource and exclude it from the report.
If you successfully ignore a resource, a green banner appears to indicate that the resource is
ignored from the report. When the resource is ignored, it's removed from the Missing compute
resources report.
a. In the list, select the resource.
b. Select Ignore from report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1322


<!-- page 1323 -->
4. Optional: If you want to enable the discovery for a previously ignored resource, remove the
ignore from the report tag.
a. Navigate to All and type in the filter cmdb_ci_server.list.
b. Personalize the list to include the Tags column, using the settings button.
c. Search for the resource name.
d. In the Tags field, select the removal option.

Result

If the quick discovery was successful, the instance redirects to the Discovery status dashboard.
When the resource is discovered, it's removed from the Missing compute resources report and
is listed in the Server [cmdb_ci_server] table.
Run Tuning checks
Tuning checks are scans aimed at optimizing configurations, grouped into suites with each
specific check detailed below.

Before you begin

Role required: discovery_admin or admin

About this task

The configured checks are listed under the following tabs:
• Discovery suite
• MID suite
• Self Monitoring suite

Procedure
1. Navigate to Workspaces > Discovery Admin Workspace > Tuning.
2. Select Checks.
3. To manually run a check for Discovery suite, MID suite, or Self Monitoring suite, select Run
now.

Note:
The instance scan can only run one at a time, so wait for the in-progress scan to finish
before re-running the suite.
4. To access more information about an issue, select the check name.

Note:
◦ To understand the issue, select the Show check description link.
◦ To know more details on the issue, select the Documentation on the check link.
◦ To view the definition page, select the Check definition page link. To edit a check, see
Edit an existing check.
Edit an existing check
By editing the definition check, you can change description and script.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1323


<!-- page 1324 -->
Procedure
1. Navigate to Workspaces > Discovery Admin Workspace > Tuning.
2. Select the check name.
3. Select the Check definition page link.
4. To edit the check, select Switch scope.
5. Update all the required details and select Save.

Note: If the Active option is enabled:
◦ Discovery suite runs once a week on Sunday at 8 AM.
◦ MID suite runs once a week on Sunday at 10 AM.
◦ Self monitoring suite runs every 15 mins.
Resolve Cloud Discovery errors in Cloud Discovery Workspace
View the Cloud Discovery errors that occurred during the discovery and resolve them. You can
view the errors for all the Cloud Discovery runs or a single Cloud Discovery run.

Before you begin

Role required: sn_cloud_ops_ws.cloud_ops_admin

Procedure
1. Navigate to Cloud Discovery Workspace > Cloud Discovery.
2. Select Errors.
The Status tab of the Schedules module displays the list of errors for the selected discovery
run.
3. Select a category tile to display the specific error codes that occurred in that category.
4. Select the error code tile that you want to investigate.
The list displays all occurrences of that error code for all the Cloud Discovery schedules. The
list shows the error message, Configuration Item (CI) ID, IP address of each instance that
experienced the error, and the error status.
5. Perform one of the following actions:
◦ Select the specific errors, and then select the appropriate action from the Selected errors
section.
◦ Select appropriate action from the All errors section.
Cloud Discovery applies the selected action to all errors of the list.
Available actions
Action

Description

Create
task

You can create an error task and assign it to an user for resolution.
Assigned errors are considered Active errors, and actions can still be performed
on them.
Cloud Discovery displays the error task number on the error code tile.

Retry
Cloud Discovery retries an IP-based discovery.
discovery
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1324


<!-- page 1325 -->
Action

Description

When you select Retry discovery, Cloud Discovery performs this action on all the
active errors that are available in the list.
®

You can retry the discovery, only if the ServiceNow IP-based Discovery plugin
(com.snc.discovery.ip_based) is installed and activated in the instance.
Ignore

Cloud Discovery ignores the error.

6. Check the Error Status column to see the results of the remediation.
Single retries complete quickly. Retries for large numbers of IP addresses can take several
minutes.
An error can have one of the following statuses:
◦ Active error: Unresolved error. This is the default status of all new errors.
◦ Resolved: Resolved error.
◦ Assigned: Task assigned to resolve this error.
◦ Pending Discovery: Waiting for Discovery to start after you execute the Retry discovery
action on all errors.
◦ In Discovery: Discovery is currently active.

Discovery Platform Analytics Solutions
Platform Analytics Solutions contain preconfigured dashboards. These dashboards contain
actionable data visualizations that help you improve your business processes and practices.

Platform Analytics Solutions
Platform Analytics data visualizations use Performance Analytics indicator data to show you data
over time, helping you analyze your business processes and identify areas of improvement. With
Platform Analytics Solutions, you can get value from Performance Analytics for your application
with minimal setup. You can always create your own objects as well.
To enable the solution plugin for Discovery, an admin can navigate to System Definitions >
Plugins and activate the Performance Analytics - Content Pack - Discovery plugin.
Related topics
Activate your Performance Analytics subscription
Cloud discovery reporting
Cloud discovery reporting provides a user-friendly interface for navigating and analyzing your
cloud resource inventory. It offers drill-down and slice-and-dice views to gain granular insights
into your cloud resource inventories, with details obtained from the discovery. It provides
an easier and faster way to locate and identify the state and location of cloud resources,
streamlining your management tasks.
Learn about cloud discovery reporting:
• Analytics and Reporting for Cloud Resources
• Cloud Resources dashboard
• Cloud Resources Explorer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1325


<!-- page 1326 -->
Note: For better results, use the Cloud Resources Explorer instead of the Platform
Analytics Solutions featured on the Cloud Resources dashboard.
Analytics and Reporting for Cloud Resources
Platform Analytics Solutions contain prepackaged Performance Analytics and Reporting content
for use with other ServiceNow AI Platform products.

Performance Analytics Content Pack for Cloud Resources overview
The Performance Analytics Content Pack for Cloud Resources shows the aggregated view of
all your Cloud Resources. You can filter on specific information for more details. There are also
analytics tables and views that associate tags with resources so that you can build your own
custom dashboards and reports.
The Performance Analytics Content Pack for Cloud Resources works with Discovery and Cloud
Provisioning and Governance and it supports the following cloud providers:
• Amazon Web Services
• Microsoft Azure public clouds
• VMware vCenter
• Google Cloud Platform (GCP) (Supported with Performance Analytics Content Pack for Cloud
Resources version 1.2.1 and higher).
The aggregate count of each cloud resource and the latest Cloud Discovery error logs are
displayed on the dashboard. You can filter the cloud resources by the service account,
datacenter, or resource group (only for Microsoft Azure) under a specific provider and view the
resource count and the resources.
The base-system Performance Analytics Content Pack for Cloud Resources dashboard doesn’t
contain any widget for the GCP resources. You can create the reports and widgets by consuming
data from the appropriate tables. For more information on the tables that contain the GCP
resources data, see Cloud Resources dashboard. Alternatively, you can install the Cloud
Discovery Workspace application to view the GCP reports and widgets. For more information,
see Cloud Discovery Workspace.
For each cloud provider, a separate scheduled job is triggered every 30 minutes. The latest CI
data is updated in the cloud resource analytic tables, which allows the dashboard to be more
realistic and have the updated count. The information about each scheduled job is available
in the Cloud Dashboard Job Status [sn_disco_cd_cloud_dashboard_job_status] table. The job
details including the provider type, status, start time, end time, and duration are stored in this
table.
The reports for the cloud dashboard widgets are generated from the cloud resource analytical
tables. The analytical tables are populated through the scheduled job. The scheduled job
queries the new database views, and inserts and updates the records into the analytical tables.
The scheduled job can run for a maximum of 360 minutes. The maximum job timeout value is set
using the system property (sn_disco_cd.scheduled_job_time_out_in_mins). If the scheduled job
exceeds 360 minutes, or the time set in this property, then the job is canceled.

Required roles
The following roles and tasks are associated with this solution:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1326


<!-- page 1327 -->
• ServiceNow AI Platform administrator (admin): Install and activate this Analytics and Reporting
Solution and can make any necessary changes to system properties.
• Performance Analytics administrator (pa_admin): Review the indicators, breakdowns, widgets,
and dashboards. Set up and start data collection and share the dashboards with appropriate
stakeholders.
• Cloud Dashboard user (sn_disco_cd.user): Crew the cloud resource widgets in the Cloud
Dashboard and has read-only access on the Cloud Resource analytics tables and the
dashboard reports.
• Cloud Dashboard administrator (sn_disco_cd.admin): View, add, or edit the dashboard widgets
and reports and has read-only access on the Cloud Resource analytics tables. By default
(sn_disco_cd.admin) contains the (sn_disco_cd.user) role and (discovery_admin) contains the
(sn_disco_cd.admin) role.
Activate Analytics and Reporting for Cloud Resources
Activate the Performance Analytics Content Pack for the Cloud Resources ServiceNow Store
application for the Analytics and Reporting Solution.

Before you begin

Make sure the Cloud Provisioning and Governance Core (com.snc.cloud.core) plugin is installed
and activated and that you have upgraded to Orlando or later release. Cloud Provisioning and
Governance Core is available with Discovery as well as the Cloud Provisioning and Governance
Core plugin.
Role required: Admin

About this task
Procedure
1. Navigate to System Applications > All Applications > ServiceNow Store.
2. Browse for Performance Analytics Content Pack for Cloud Resources and verify that you have
the necessary valid entitlements.
You need a HI account and permission to request applications for the instances under
consideration. The HI account and the instance must be part of the same company. For more
information, see Install a ServiceNow Product
on the ServiceNow Store.
3. Install the Performance Analytics Content Pack for Cloud
Resourcesapplication.
Cloud Resources dashboard
The Cloud Resources dashboard shows the aggregated view of all your cloud resources, their
combined analytical views, and a visual summary and detail of all your cloud resources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1327


<!-- page 1328 -->
Cloud Resources dashboard tabs

Use cases
For examples of how someone in your organization could use this dashboard, see the use cases.

User

Dashboard use

Cloud user

Discovery customers have an enormous
number of CIs obtained from Cloud Discovery
which can be viewed in one place.

Cloud user with sn_disco_cd.admin role

Use the analytics tables that are available
to build custom dashboards. These tables
are specific baseline database views with
resource tags. See Customize the Cloud
Resources dashboard for more information.

Data visualizations
Title

Type

Source table

Cloud Networks

Line

VMware Network Analytics
[sn_disco_cd_vmware_network_analytics]

Cloud Networks

Single Score

VMware Network Analytics
[sn_disco_cd_vmware_network_analytics]

Public Cloud Resources

Line

Cloud Analytics
[sn_disco_cd_analytics]

Clusters

Single Score

VMware Cluster Analytics
[sn_disco_cd_vmware_cluster_analytics]

Clusters

Line

VMware Cluster Analytics
[sn_disco_cd_vmware_cluster_analytics]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1328


<!-- page 1329 -->
Title

Type

Source table

Compute Security Groups

Single Score

AWS Security Group Analytics
[sn_disco_cd_aws_sec_group_analytics]

Databases

Single Score

Azure Database Analytics
[sn_disco_cd_azure_database_analytics]

Databases

Line

Azure Database Analytics
[sn_disco_cd_azure_database_analytics]

Datastore Disk

Single Score

VMWare Datastore
Disk Analytics
[sn_disco_cd_vmware_ds_disk_analytics]

Datastores

Single Score

VMware Datastore Analytics
[sn_disco_cd_vmware_datastore_analytics]

Disks

Line

Azure Disk Analytics
[sn_disco_cd_azure_disk_analytics]

Disks

Single Score

Azure Disk Analytics
[sn_disco_cd_azure_disk_analytics]

Distributed Virtual Port Groups Single Score

VMware Distributed Virtual
Port Group Analytics
[sn_disco_cd_vmware_dv_port_grp_analytics]

Distributed Virtual Switches

Single Score

VMWare Distributed
Virtual Switch Analytics
[sn_disco_cd_vmware_dvs_analytics]

EC2 Instances

Single Score

AWS EC2 Instance Analytics
[sn_disco_cd_aws_ec2_instance_analytics]

EC2 Instances

Line

AWS EC2 Instance Analytics
[sn_disco_cd_aws_ec2_instance_analytics]

EC2 Instances

Pie

AWS EC2 Instance Analytics
[sn_disco_cd_aws_ec2_instance_analytics]

ESX Servers

Single Score

ESX Server Analytics
[sn_disco_cd_vmware_esx_analytics]

ESX Servers

Line

ESX Server Analytics
[sn_disco_cd_vmware_esx_analytics]

Folders

Single Score

vCenter Folder Analytics
[sn_disco_cd_vmware_folder_analytics]

Functions

Single Score

Azure Function Analytics
[sn_disco_cd_azure_function_analytics]

Generic Cloud Resources

Single Score

AWS Generic Cloud
Resource Analytics
[sn_disco_cd_aws_gen_resource_analytics]

Generic Cloud Resources

Line

AWS Generic Cloud
Resource Analytics
[sn_disco_cd_aws_gen_resource_analytics]

Generic Cloud Resources

Single Score

Azure Generic Cloud
Resource Analytics
[sn_disco_cd_azure_gen_resource_analytics]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1329


<!-- page 1330 -->
Title

Type

Source table

Images

Single Score

AWS Image Analytics
[sn_disco_cd_aws_image_analytics]

Images

Single Score

Azure Image Analytics
[sn_disco_cd_azure_image_analytics]

Lambdas

Single Score

AWS Lambda Analytics
[sn_disco_cd_aws_lambda_analytics]

Load Balancers

Line

AWS Load Balancer Analytics
[sn_disco_cd_aws_loadbalancer_analytics]

Load Balancers

Single Score

AWS Load Balancer Analytics
[sn_disco_cd_aws_loadbalancer_analytics]

Load Balancers

Single Score

Azure Load Balancer Analytics
[sn_disco_cd_azure_loadbalancer_analytics]

Load Balancers

Line

Azure Load Balancer Analytics
[sn_disco_cd_azure_loadbalancer_analytics]

Network Interfaces

Single Score

AWS Network
Interface Analytics
[sn_disco_cd_aws_nw_interface_analytics]

Network Interfaces

Single Score

Azure Network
Interface Analytics
[sn_disco_cd_azure_nw_interface_analytics]

Network Security Groups

Single Score

Azure Network Security
Groups Analytics
[sn_disco_cd_azure_nw_sec_group_analytics]

Relational Database Services
(RDS)

Line

AWS RDS Analytics
[sn_disco_cd_aws_rds_analytics]

Relational Database Services
(RDS)

Single Score

AWS RDS Analytics
[sn_disco_cd_aws_rds_analytics]

S3 Buckets

Single Score

AWS S3 bucket Analytics
[sn_disco_cd_aws_s3_bucket_analytics]

Storage Volumes

Single Score

AWS Storage
Volume Analytics
[sn_disco_cd_aws_storage_volume_analytics]

Storage Volumes

Line

AWS Storage
Volume Analytics
[sn_disco_cd_aws_storage_volume_analytics]

Virtual Machines

Line

Azure VM Analytics
[sn_disco_cd_azure_vm_analytics]

Virtual Machines

Single Score

Azure VM Analytics
[sn_disco_cd_azure_vm_analytics]

Virtual Machines

Pie

Azure VM Analytics
[sn_disco_cd_azure_vm_analytics]

Virtual Machines

Line

VMware VM Analytics
[sn_disco_cd_vmware_vm_analytics]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1330


<!-- page 1331 -->
Title

Type

Source table

Virtual Machines

Pie

VMware VM Analytics
[sn_disco_cd_vmware_vm_analytics]

Virtual Machines

Single Score

VMware VM Analytics
[sn_disco_cd_vmware_vm_analytics]

All Virtual Machines

Line

VM Analytics
[sn_disco_cd_vm_analytics]

Virtual Networks

Single Score

Azure Virtual
Network Analytics
[sn_disco_cd_azure_virtual_nw_analytics]

Virtual Private Clouds (VPC)

Line

AWS VPC Analytics
[sn_disco_cd_aws_vpc_analytics]

Virtual Private Clouds (VPC)

Single Score

AWS VPC Analytics
[sn_disco_cd_aws_vpc_analytics]

VM Templates

Single Score

VMWare VM
Template Analytics
[sn_disco_cd_vmware_vm_template_analytics]

Access the Cloud Resources dashboard
To access the Cloud Resources dashboard, navigate to Discovery > Cloud Resource Dashboard
or Cloud Provisioning and Governance > Cloud Resource Dashboard.

Customize the Cloud Resources dashboard
Customize your dashboard In each cloud provider tab by filtering these attributes:
• Service Account: All the service accounts that are specific to the cloud provider tab selected
are listed.
• Datacenters: The datacenters are populated based on the cloud provider.
• Resource Group: This filter is only applicable for Microsoft Azure and restricts objects and
resources to the chosen resource group.
Use these database views with resource tags to create your own dashboard.
AWS Database Views with Resource Tags
Database View Table Name

Label

sn_disco_cd_aws_api_gateway_analytics_tags_db_view

AWS API Gateway Analytics with
Tags

sn_disco_cd_aws_ec2_instance_analytics_tags_db_view

AWS EC2 Instance Analytics with
Tags

sn_disco_cd_aws_gen_resource_analytics_tags_db_view

AWS Cloud Resource Analytics
with tags

sn_disco_cd_aws_image_analytics_tags_db_view

AWS Image Analytics with Tags

sn_disco_cd_aws_lambda_analytics_tags_db_view

AWS Lambda Analytics with Tags

sn_disco_cd_aws_loadbalancer_analytics_tags_db_view

AWS Load Balancer Analytics with
Tags

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1331


<!-- page 1332 -->
AWS Database Views with Resource Tags (continued)
Database View Table Name

Label

sn_disco_cd_aws_nw_interface_analytics_tags_db_view

AWS NW Interface Analytics with
Tags

sn_disco_cd_aws_rds_analytics_tags_db_view

AWS RDS Analytics with Tags

sn_disco_cd_aws_s3_bucket_analytics_tags_db_view

AWS S3 bucket Analytics with
Tags

sn_disco_cd_aws_sec_group_analytics_tags_db_view

AWS Security Group Analytics
with Tags

sn_disco_cd_aws_storage_volume_analytics_tags_db_view AWS Storage Volume Analytics
with Tags
sn_disco_cd_aws_vpc_analytics_tags_db_view

AWS VPC Analytics with Tags

sn_disco_cd_aws_zone_analytics_tags_db_view

AWS Zones Analytics with tags

Microsoft Azure Database Views with Resource Tags
Database View Table Name

Label

sn_disco_cd_azure_database_analytics_tags_db_view

Azure Database Analytics with
Tags

sn_disco_cd_azure_disk_analytics_tags_db_view

Azure Disk Analytics with Tags

sn_disco_cd_azure_function_analytics_tags_db_view

Azure Function Analytics with
Tags

sn_disco_cd_azure_gen_resource_analytics_tags_db_view Azure Cloud Resource Analytics
with Tags
sn_disco_cd_azure_image_analytics_tags_db_view

Azure Image Analytics with Tags

sn_disco_cd_azure_loadbalancer_analytics_tags_db_view

Azure Load Balancer Analytics
with Tags

sn_disco_cd_azure_nw_interface_analytics_tags_db_view

Azure NW Interface Analytics with
Tags

sn_disco_cd_azure_nw_sec_group_analytics_tags_db_view Azure Security Group Analytics
with Tags
sn_disco_cd_azure_virtual_nw_analytics_tags_db_view

Azure Virtual NW Analytics with
Tags

sn_disco_cd_azure_vm_analytics_tags_db_view

Azure VM Analytics with Tags

sn_disco_cd_azure_zone_analytics_tags_db_view

Azure Zones Analytics with Tags

VMware Database Views with Resource Tags
Database View Table Name

Label

sn_disco_cd_vmware_cluster_analytics_tags_db_view

VMware Cluster Analytics with
Tags

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1332


<!-- page 1333 -->
VMware Database Views with Resource Tags (continued)
Database View Table Name

Label

sn_disco_cd_vmware_datastore_analytics_tags_db_view

VMware Datastore Analytics with
Tags

sn_disco_cd_vmware_ds_disk_analytics_tags_db_view

VMware DatastoreDisk Analytics
with Tags

sn_disco_cd_vmware_dvs_analytics_tags_db_view

VMware DVS Analytics with Tags

sn_disco_cd_vmware_dv_port_grp_analytics_tags_db_view

VMware DV Port Group Analytics
with Tags

sn_disco_cd_vmware_esx_analytics_tags_db_view

VMware ESX Analytics with Tags

sn_disco_cd_vmware_folder_analytics_tags_db_view

VMware Folder Analytics with
Tags

sn_disco_cd_vmware_network_analytics_tags_db_view

VMware Network Analytics with
Tags

sn_disco_cd_vmware_vm_analytics_tags_db_view

VMware VM Analytics with Tags

sn_disco_cd_vmware_vm_template_analytics_tags_db_view VMware VM Template Analytics
with Tags
The below resources that are supported for GCP are populated by
GCPResourcePopulateScheduledJob.
Google Cloud Platform (GCP) Analytics tables and their corresponding Configuration
Management Database (CMDB) Configuration Item (CI) resource tables
Analytic Table

CMDB CI resources

GCP VM Analytics
[sn_disco_cd_gcp_database_analytics]

Virtual Machine Instance
[cmdb_ci_vm_instance]

GCP Storage Volume Analytics
[sn_disco_cd_gcp_storage_volume_analytics]

Storage Volume
[cmdb_ci_storage_volume]

GCP Database Analytics
[sn_disco_cd_gcp_database_analytics]

Cloud Database
[cmdb_ci_cloud_database]

GCP Virtual Network Analytics
[sn_disco_cd_gcp_virtual_nw_analytics]

Cloud Network [cmdb_ci_network]

GCP Load Balancer Analytics
[sn_disco_cd_gcp_loadbalancer_analytics]

Cloud Load Balancer
[cmdb_ci_cloud_load_balancer]

GCP Image Analytics
[sn_disco_cd_gcp_image_analytics]

Cloud OS Images
[cmdb_ci_cloud_os_images]

GCP Generic Cloud Resource Analytics
[sn_disco_cd_gcp_gen_resource_analytics]

Cloud Resource
[cmdb_ci_cmp_resource]

GCP Network Interface Analytics
[sn_disco_cd_gcp_nw_interface_analytics]

Cloud Mgmt Network Interface
[cmdb_ci_nic]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1333


<!-- page 1334 -->
Scheduled jobs
Scheduled jobs installed
Job

Description

GCPResourcePopulateScheduledJob

Scheduled job that fetches and populates the GCP
CI data in the analytics table.

AWSResourcePopulateScheduledJob

Scheduled job that fetches and populates the AWS
CI data in the analytics table.

AzureResourcePopulateScheduledJob

Scheduled job that fetches and populates the
Microsoft Azure CI data in the analytics table.

VMwareResourcePopulateScheduledJob Scheduled job that fetches and populates the
VMware CI data in the analytics table.
Since a separate scheduled job is triggered every 30 minutes for each cloud provider, you can
verify if the last job was successful. If the scheduled job was not successful, you can manually
trigger the job by going to the System Definition > Scheduled Jobs. Select the job for the
affected cloud provide and click Execute Now.
The refresh jobs run every 30 minutes to populate and update the date in the analytics tables.
You can increase this frequency to get more updated data.
Synchronization is needed if:
• The Resource Status was updated from installed to another status (for example, retired or
canceled).
• Any new resources were recently discovered.
Synchronization is not needed if:
• No resources were updated.
• There are new resources which were not recently discovered.
Important to note:
• Only one job can run at a time. For example, if an AWS job is already running, you cannot
trigger another AWS job.
• If the LDC and service account fields of a CI resource is empty, the resource may not be
associated with any LDC in the CI Relationship [cmdb_rel_ci] table or the resource is a generic
cloud resource of IAM type and the fields are empty.
• Only the resources with installed status set to installed are counted and represented in the
cloud resources dashboard widgets.
• If a new resource is discovered after the scheduled job run, then the next scheduled job adds
the resource details in the analytical tables.
• If a job is marked as failed in the Cloud Dashboard Job Status
[sn_disco_cd_cloud_dashboard_job_status] table, the reason for the failure is logged in the
system logs. Filter the system log table by the job sys_id to fetch the error message.
• If IP-based discovery is used to discover the vCenter, the service account field of the VMware
resource is left blank.
• The System Administrator should not delete the records from the analytics table since records
deleted from the analytics table are not populated again by the scheduled job. Deletion of
records leads to data inconsistency in the analytics table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1334


<!-- page 1335 -->
• To ensure complete refresh of the VMware records (including the service accounts) after
changing the VMware resource discovery mechanism, delete the VMware records from the
Cloud Dashboard Job Status [sn_disco_cd_cloud_dashboard_job_status] table and run the
schedule job. In the Cloud Dashboard Job Status table, the provider field of all the VMware
resources is set to vmware. You can use either vCenter IP discovery or service account
discovery to discover the VMware resources.
Cloud Resources Explorer
®

Use the ServiceNow Cloud Resources Explorer to filter and visualize the distribution of
resources across your multi cloud estate. Gain insight into operational information such as stale
resources and cloud event inflow rates.
Cloud Resources Explorer

The Cloud Resources Explorer supports the following cloud providers:
• Amazon Web Services.
• Microsoft Azure public clouds.
• VMware vCenter.
• Google Cloud Platform (GCP) (Supported with Performance Analytics Content Pack for Cloud
Resources version 1.2.1 and higher).

Required ServiceNow AI Platform roles
The sn_cloud_ops_ws.cloud_ops_admin role is required to view the Cloud Resources Explorer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1335


<!-- page 1336 -->
Access the Cloud Resources Explorer
To open the Cloud Resources Explorer, navigate to All > Cloud Discovery Workspace > Cloud
Resources Explorer.

Use cases
For examples of how different people in your organization would use this dashboard, see these
use cases.

User

Dashboard use

sn_cloud_ops_ws.cloud_ops_admin

• Gain insight into the cloud resources
inventory count and the current size of
the Configuration Management Database
(CMDB), and how many objects are under
the purview.
• Gain insight into fault-related information
such as Cloud Discovery errors.
• Gain insight into operational information
such as the inflow and processing rate of
the event.
• Gain insight into the health of your CMDB.
• Gain insight into the distribution of
resources across the on-prem cloud and the
public clouds.

Indicators
Cloud Discovery errors
Total Cloud Discovery errors encountered over time.
Stale CIs > 30 days
If a CI isn't updated in the last 30 days, it's considered as a stale CI.
A stale CI indicates that the CI exists in the Configuration Management Database
(CMDB), but it may or may not exist in the datacenter. Identifying the stale CIs is
important for maintaining a healthy CMDB.
Here are some of the scenarios that leads to the creation of stale CIs:
• The cloud resource doesn't exist, but its deletion isn't updated in the CMDB.
• The device may still be on the network, but the automated discovery process
can't connect to the device to rediscover it.
• The device exists on the network and it's accessible, but the identification
process isn't recognizing it uniquely. Therefore, Cloud Discovery has created a
duplicate CI in the CMDB.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1336


<!-- page 1337 -->
Data visualizations
Title

Type

Configuration Horizontal
item classes bar report

Source table

Description

Cloud Analytics [sn_disco_cd_analytics]

This report
displays the
count of the top
10 CI classes
discovered over
time.
You can select
a report entry
from the
Configuration
item classes
report to view
the analytics
table on which
the report entry
is based. If
you've selected
a specific cloud
provider, then
the analytics
table of that
specific CI
appears.
Otherwise, the
parent analytics
table for that CI
type appears.
For example,
if you select
Google from the
Cloud resources
filter and select
the Storage
Volume bar
from the report,
the dedicated
analytics table
of the Google
Storage Volume
CI appears.
If you select
All Platforms
from the Cloud
resources filter
and select the
Storage Volume
bar from the
report, the
parent analytics
table of the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1337


<!-- page 1338 -->
Title

Type

Source table

Description

storage volume
CI appears.
Configuration Horizontal
items by
bar report
regions

Cloud Analytics [sn_disco_cd_analytics]

This report
displays the
distribution of
CIs per region
(datacenter).

Configuration Horizontal
items by
bar report
cloud service
accounts

Cloud Analytics [sn_disco_cd_analytics]

This report
displays the
top 10-service
accounts with
the maximum
number of
discovered CIs.

Incoming
events

Cloud Event [sn_cmp_cloud_event]

Bar report

This report
displays the
trend of cloud
resource events
received over
time.
To view the list
of all the cloud
events received
over a given
day, select the
corresponding
report entry.

Total cloud
Stacked bar
resources in report
on-prem vs
public clouds

Daily resource count by providers
This report
[sn_disco_cd_daily_resource_cnt_by_provider] displays the
daily count of
the resources
of your
organization
that are spread
across the onprem cloud
and the public
clouds.
Use this report
to understand
the public cloud
adoption and
Virtual Machine
(VM) count over
time.
In this report,
the VMware

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1338


<!-- page 1339 -->
Title

Type

Source table

Description

Cloud is
considered onprem.

To populate the Cloud Analytics [sn_disco_cd_analytics] table, the Cloud Resources Explorer
uses the same set of scheduled jobs as the Performance Analytics Content Pack for Cloud
Resources. For more information on the scheduled jobs, see Cloud Resources dashboard.
To view the details of the OS images discovered in the AWS, Microsoft Azure, and GCP clouds,
Discovery and Service Mapping Patterns store app version 1.0.87 or later must be installed in the
instance. Also, the sn_cmdb_ci_class.use_single_cloud_os_image property must
be set to true.

Filters
Name

Type

Description

Cloud
Choiceresources based Use the cloud resources filter to select and visualize the cloud resources
data of interest.
filter
filter
By default, the Cloud Resources Explorer displays data for all the cloud
resources across the cloud providers of your organization. Only the cloud
providers that you've selected in the Cloud provider selection page of the
Cloud Discovery Workspace app appear in the cloud resources filter.
You have the choice of the following cascading filters:
• Platform: Select the cloud provider with the resources data that you
want to visualize.
• Region: Select the region or datacenter with the resources data that you
want to visualize.
• Service account: Select the service account with the resources data
that you want to visualize.
• CI class: Select the CI class with the resources data that you want to
visualize.
• Resource group: Select the resource group with the resources data that
you want to visualize.
This field is available only when Azure is selected from the Platform
drop-down list.
You can filter the Incoming events report based on the Platform filter only.
The data displayed in the Cloud Discovery errors indicator isn't affected
by the criteria selected in the Cloud resources filter.
Day
Choicenavigator based Use the Day navigator to slice the Total cloud resources in on-prem vs
public clouds report across the following dimensions:
filter

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1339


<!-- page 1340 -->
Name

Type

Description

• None: The report displays the data collected over the last one year if
available.
• First day of the month: The report displays the historical data collected
for the first day of the month over the last one year if available.
• Mid of the month: The report displays the historical data collected for
the mid day of the month over the last one year if available.
• Last day of the month: The report displays the historical data collected
for the last day of the month over the last one year if available.
• Pick a date of the month: The report displays the historical data
collected for the selected day of the month over the last one year if
available.

Discovery for data-center virtualization
Discovery and Service Mapping Patterns identify and classify information about virtual machines
discovered in a data-center.
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
After upgrading to Discovery Admin Workspace version 1.3.1 (August 2024 Store), you can
navigate to Workspaces > Discovery Admin Workspace > Insights and use the enhanced
dashboard.

Note: See the knowledge article KB0687582

for information on model_id and

manufacturer.
Data collected
Label

Table Name

Field Name

CPUs

cmdb_ci_vm_instance

cpus

Disks

cmdb_ci_vm_instance

disks

Disks size

cmdb_ci_vm_instance

disks_size

Image path

cmdb_ci_vmware_instance

image_path

Memory

cmdb_ci_vm_instance

memory

Network adapters

cmdb_ci_vm_instance

nics

State

cmdb_ci_vm_instance

state

Template

cmdb_ci_vmware_instance

template

vCenter Reference

cmdb_ci_vmware_instance

vcenter_ref

vCenter Reference UUID

cmdb_ci_vmware_instance

vcenter_uuid

Discovery for VMware virtualization
A Discovery schedule for VMware virtualization discovers vCenter and ESX hosts and individual
ESXi hosts that manage VMs and related components without a vCenter.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1340


<!-- page 1341 -->
The following options are available for discovering VMware vCenter data:
• Discovery runs the VMware - vCenter Datacenters probe when it identifies a VMware vCenter
process running on a Windows machine or detects activity with the vmapp port probe.
• Classic Orchestration

runs any of the vCenter probes from a workflow.

Use standalone ESXi discovery to discover VMware data without a vCenter.

Note: See the knowledge article KB0687582

for information on model_id and

manufacturer.
VMware Workstation
In the basic VMware system, the VMware Workstation runs on a Windows or Linux host machine,
but not managed directly thorugh vCenter.
This system clones instances from templates, but can't be automated. The relationships between
VMware components for this type of installation are in the following diagram:
VMware Workstation relationships

VMware Workstation Component relationships
Component

Relationships

Windows or Linux Server

Runs the VMware application

VMware application

• Runs on a Windows or Linux host machine
• Has registered VM instances
• Virtualizes virtual machines

VM Instances (including images and templates)

• Registers on the VMware application
• Instantiated by individual virtual machines

Virtual machines

• Instantiates VM instances
• Virtualized by VMware application

Discovery reference
Reference topics provide additional information about Discovery lists and forms.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1341


<!-- page 1342 -->
Cloud Discovery reference
Reference topics provide additional information about the lists, forms, and cloud settings used in
Cloud Discovery.
Cloud Discovery service account form reference
The Cloud Discovery service account form displays detailed information about the selected
cloud provider. The Cloud Discovery service account form is available in the Cloud Discovery
Workspace.
Amazon Web Services (AWS) service account fields
Field

Description

Service
Account

Name of the service account whose resources you want to discover.

Name

Name of the service account whose resources you want to discover.

This field appears only when the Existing service account option is selected.

Account ID 12-digit Identity and Access Management (IAM) account number.
Credentials Name of the credentials that you have created for AWS discovery.
Leave the field empty if the account is a member account of an AWS organization
and you've configured the associated management account with a credential.
To add a credential in the ServiceNow AI Platform, select the Add new credentials
icon (

) and fill in the fields. If required, you can select an existing credential

and then edit it by selecting the Edit credentials icon ( ). For description of the
AWS Credentials form fields, see Configure access to the AWS accounts using
permanent AWS credentials.
URL

URL of the datacenter.
Enter this field only for the AWS GovCloud (US) and AWS China region accounts.

Access
role name

Name of the IAM role created for the trusting account.

Select
Name of the trusted account. Configure this field only for accounts that don't use
account for permanent AWS credentials, and rely on IAM roles for access.
access
Microsoft Azure service account fields
Field

Description

Service
Account

Name of the service account whose resources you want to discover.

Name

Microsoft Azure subscription name.

This field appears only when the Existing service account option is selected.

Subscription
Microsoft Azure subscription ID.
ID/Management
group ID
Credentials

Name of the credentials that you have created for Microsoft Azure discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1342


<!-- page 1343 -->
Microsoft Azure service account fields (continued)
Field

Description

To add a credential in the ServiceNow AI Platform, select the Add new
credentials icon (

) and fill in the fields. If required, you can select an

existing credential and then edit it by selecting the Edit credentials icon ( ).
For description of the Azure Service Principal form fields, see Store the Azure
service principal credentials in the instance.
URL

URL of the datacenter.
Configuring this field is required for Azure GovCloud (US) accounts. Add the
required URL.

Pull Events

Option to enable the ServiceNow AI Platform to collect resource change
information from the Microsoft Azure cloud. The ServiceNow AI Platform uses
the resource change information to update the Configuration Management
Database (CMDB). For more information on the supported Azure resource
types, see Azure change processing.
If you select the Pull Events check-box for a management group, the
ServiceNow AI Platform enables Azure change processing for all the
subscriptions in the management group.

Google Cloud Platform service account fields
Field

Description

Service
Account

Project ID of the Google Cloud Platform (GCP) project whose resources you want
to discover.
This field appears only when the Existing service account option is selected.

Name

Project ID of the Google Cloud Platform (GCP) project.

Project
ID/Folder
ID

Project ID of the Google project.

Credentials Name of the credentials that you have created for GCP discovery.
To add a credential in the ServiceNow AI Platform, select the Add new credentials
icon (

) and fill in the fields. If required, you can select an existing credential

and then edit it by selecting the Edit credentials icon ( ). For description of the
Google API Credentials form fields, see Discovery for Google Cloud Platform.
Pull Events

®

Option to enable the ServiceNow event-driven discovery to collect events for the
resource types hosted in the Google Project LDCs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1343


<!-- page 1344 -->
IBM service account fields
Field

Description

Service
Account

Name of the service account whose resources you want to discover.

Name

Name of the service account.

This field appears only when the Existing service account option is selected.

Credentials Name of the credentials that you have created for IBM discovery.
To add a credential in the ServiceNow AI Platform, select the Add new credentials
icon (

) and fill in the fields. If required, you can select an existing credential

and then edit it by selecting the Edit credentials icon ( ). For description of the
IBM Credentials form fields, see Discovery for IBM Cloud Platform.
Account ID IBM software user number that the instance should use to access the IBM Cloud
Console.
Oracle Cloud Infrastructure service account fields
Field

Description

Service
Account

Name of the service account whose resources you want to discover.

Name

Name of the service account.

This field appears only when the Existing service account option is selected.

Account ID OCI Compartment id.
Credentials Name of the credentials that you have created for Oracle Cloud Infrastructure
(OCI) discovery.
To add a credential in the ServiceNow AI Platform, select the Add new credentials
icon (

) and fill in the fields. If required, you can select an existing credential

and then edit it by selecting the Edit credentials icon ( ). For description of
the Oracle API Credentials form fields, see Oracle Cloud Infrastructure (OCI)
discovery.
Datacenter Datacenter value.
URL
For example, https://$service.ap-mumbai-1.oraclecloud.com

OpenStack service account fields
Field

Description

Service
Account

Name of the service account whose resources you want to discover.

Name

Name of the service account.

This field appears only when the Existing service account option is selected.

OpenStack Project ID of the OpenStack Project to be discovered.
account ID
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1344


<!-- page 1345 -->
OpenStack service account fields (continued)
Field

Description

Account
Name of the credentials that you have created for OpenStack discovery.
credentials
To add a credential in the ServiceNow AI Platform, select the Add new credentials
icon (

) and fill in the fields. If required, you can select an existing credential

and then edit it by selecting the Edit credentials icon ( ). For description of the
OpenStack Credentials form fields, see OpenStack resource discovery.
Cloud URL

OpenStack identity service endpoint.
For example: https://<openstack dns>:<port>.

Red Hat Virtualization (RHV) service account fields
Field

Description

Service
account

Name of the service account whose resources you want to discover.

Name

Name of the service account.

Manager
URL

The account ID to which this credential belongs. Specify the API url of the RHV-M
instance, including the port. For example, https://my-manager-instance.com:443.

This field appears only when the Existing service account option is selected.

Manager
Name of the credentials that you have created for RHV discovery.
credentials
To add a credential in the ServiceNow AI Platform, select the Add new credentials
icon (

) and fill in the fields. If required, you can select an existing credential

and then edit it by selecting the Edit credentials icon ( ). For description of the
RHV Credentials form fields, see Oracle Linux Virtualization Manager and Red Hat
Virtualization discovery.

VMware service account fields
Field

Description

Service
Account

Name of the service account whose resources you want to discover.

Name

Name of the service account.

UUID

Universal Unique Identifier (UUID) of the instance.

This field appears only when the Existing service account option is selected.

To access the UUID, do the following:
1. Open the Managed Object Browser (MOB) for the vCenter.
2. Select Content > About.
3. Paste the value of the instance UUID property in this field.
Credentials Name of the credentials that you have created for VMware discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1345


<!-- page 1346 -->
VMware service account fields (continued)
Field

Description

To add a credential in the ServiceNow AI Platform, select the Add new credentials
icon (

) and fill in the fields. If required, you can select an existing credential

and then edit it by selecting the Edit credentials icon ( ). For description of the
VMware Credentials form fields, see VMware credentials .
URL

Full URL of the vCenter.

Edit settings form reference
The Edit settings form displays information about the Amazon Web Services (AWS) settings used
to record and deliver the AWS events to the listening endpoint.
Edit settings form
Field

Description

General settings
Resource types to record

Resource types for which you want to record the
configuration change.
Also specify whether you want to record the configuration
change for global resources such as AWS AMI resources.
For more information, see the Selecting Which Resources
AWS Config Records
topic in the AWS documentation.

Data retention period

(Optional) Retention policy for the recorded events.

AWS Config role

An AWS role that can access the following services and
resources:
• Simple Notification Service (SNS)
• AWS Config service
• Resource types for which you want to track the
configuration change

Delivery method
AWS S3 bucket

An AWS S3 bucket to store the recorded events.
Create an AWS S3 bucket or select an existing AWS S3
bucket to which you have access.

Stream configuration changes and
notifications to an Amazon SNS
topic

Option to publish the event notifications to the SNS topic.

Amazon SNS topic

Amazon SNS topic to which the AWS Config service
should publish the events.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1346


<!-- page 1347 -->
Edit settings form (continued)
Field

Description

1. Select the Choose a topic from your account option.
2. Select the Amazon SNS topic created in step 3 from the
SNS topic name drop-down list.

Command Validation Tasks form for pattern-based discovery
Command Validation Tasks form displays the fields that you must fill when you create or modify
a task for testing a pattern command.
For more information about testing pattern commands, see Validate commands used in patternbased discovery.

Field

Description

Number

The task number is automatically created by
the system.

MID Server Selection Method

Select the relevant method:
• Specific MID Server - To define the MID
Server for this test.
• Automatic MID Selection - To use a MID
Server that's assigned to the IP range or
IP network that you want to use for the
test. Select this method only if you have
configured a MID Server with IP ranges or as
a default MID Server for Discovery.
• Try All Eligible MID Servers - To use any
MID Server available for the the IP range
or IP network that you want to use for the
test. Select this method only if you have
configured a MID Server with IP ranges or as
a default MID Server for Discovery.

MID Server

The MID Server name.
This field appears only if Specific MID Server
is selected from MID Server Selection
Method.

Validate All Pattern Commands

The check box for validating all commands
used by a specific pattern simultaneously.

OS Class

The CI class that represents the servers on
which you run this validation task.

Command Type

The command type that depends on the kind
of the server:
• Shell Command
• WMI Query

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1347


