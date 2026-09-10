# Zurich IT Operations Management — Agent Client Collector Log Analytics

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4647–4662 of 4823

Sections: Agent Client Collector Log Analytics (p4647)

---

<!-- page 4647 -->
Related topics
Discover java installation data using Agent Client Collector for Visibility - Content file-based
discovery

Agent Client Collector Log Analytics
Agent Client Collector Log Analytics (ACC-L) enables you to stream log data from Linux and
Windows hosts to a ServiceNow instance, using the Agent Client Collector.
As with Agent Client Collector Framework (ACC-F), the Agent Client Collector connects to a MID
Server. A single MID Server may support multiple agents, while a single agent works with one
MID Server at a time and switches to a different MID Server when necessary to provide failover
protection.
®

Use the Agent Client Collector to stream log data to your ServiceNow instance by means of a
®
log shipper. The log data is mapped and structured in the ServiceNow Health Log Analytics
application. For more information, see the Health Log Analytics product documentation.
Agent Client Collector Log Analytics has a dependency on the Health Log Analytics application,
Version 22.0.12 - December 2021 and later, available from the ServiceNow Store . Streaming log
data from Windows hosts is supported in Agent Client Collector Log Analytics Version 3.1.0 and
later.
The Agent Client Collector Log Analytics (ACC-L) application, Version 3.2.0, August 2022, has a
dependency on the Agent Client Collector Framework (ACC-F) application, Version 2.10.1, August
2022.
To enable Agent Client Collector Log Analytics, you enable log analytics on the Agent Client
Collector, as described in Set up Agent Client Collector Log Analytics without using guided
setup.

Dependencies
For a list of Agent Client Collector Log Analytics plugin dependencies, see Plugins or
applications installed with ITOM AIOps.

Set up additional ACC data inputs
Data inputs for streaming log messages to your ServiceNow instance using the Agent Client
Collector are created automatically as part of the Agent Client Collector setup. Set up additional
ACC data inputs manually as needed using the Health Log Analytics data input setup flow.

Before you begin
• The Agent Client Collector Log Analytics application has a dependency on the following
ServiceNow applications, available from the ServiceNow Store :
◦ Health Log Analytics, Version 22.0.12 - December 2021 and later releases.
◦ Agent Client Collector -Framework, Version 2.7.0 - December 2021 and later releases.
• Verify that a MID Server is installed and configured. For more information, see MID Server
system requirements .
• The MID Server must be configured to work with the Agent Client Collector. For more
information, see Enable Agent Client Collector monitoring on the MID Server.

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4647


<!-- page 4648 -->
Role required: evt_mgmt_admin

About this task

It is important to configure an ACC data input for every MID Server to which Agent Client
Collectors can connect, even if no agent is currently connected to it. An agent works with one
MID Server at a time, but is connected to a different MID Server when necessary to provide
failover protection.

Important: As part of the standard Health Log Analytics data input setup, you can define
JavaScript functions for mapping and preprocessing raw log data. The JavaScript function
must be identical for all ACC data inputs, because agents will switch to a different ACC
data input when the system connects them to a different MID Server to provide failover
protection. The latest published JavaScript function is provided to all existing and future
ACC data inputs and replaces the previous one. This feature is supported in the Health
Log Analytics application, Version 22.0.12 - December 2021 and later, available from the
ServiceNow Store .

Procedure
1. Set up additional ACC data inputs manually using the Health Log Analytics data input setup
flow.
For more information, see Configure ACC data inputs manually.
2. Identify and address log streaming issues to ensure that your data inputs are streaming data
properly.
For more information, see Ensure that the data input is streaming data.
3. Determine how Health Log Analytics handles raw log data that is streaming into your instance.
By default, every incoming log line is auto-mapped to the correct tag. If properties aren't
discovered automatically, map the data input sources manually by defining a JavaScript
function. For more information, see Map the raw data.
4. Optional: Modify raw log data and drop or break up log messages before they are processed.
Define a JavaScript function that modifies your raw log data before Health Log Analytics maps
and structures it. For more information, see Edit your raw log data before processing.
5. Optional: Refine the source type structure to make sure that Health Log Analytics extracts and
classifies all properties correctly.
For more information, see Refine the source type structure in Health Log Analytics.
Configure ACC data inputs manually
Agent Client Collector setup automatically creates an ACC data input for streaming log
messages to your ServiceNow instance. You can set up additional ACC data inputs manually as
needed.

Before you begin
• The Agent Client Collector Log Analytics application has a dependency on the following
ServiceNow applications, available from the ServiceNow Store :
◦ Health Log Analytics, Version 22.0.12 - December 2021 and later releases.
◦ Agent Client Collector -Framework, Version 2.7.0 - December 2021 and later releases.
• Verify that a MID Server is installed and configured. For more information, see MID Server
system requirements .
• The MID Server must be configured to work with the Agent Client Collector. For more
information, see Enable Agent Client Collector monitoring on the MID Server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4648


<!-- page 4649 -->
Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.

Note: Currently, the ACC data input setup only supports basic authentication with MID
Server. mTLS is not supported.
Role required: evt_mgmt_admin

Procedure
1. Navigate to All > ACC Log Analytics > ACC Data Inputs.
2. Select New.
3. On the form, fill in the fields.
For a description of the fields, see ACC data input configuration fields.
4. Optional: Select Advanced to set additional configuration fields.
5. Select Save.
Health Log Analytics adds the data input record to the Data Inputs table.
6. Ensure that the data input is configured correctly by selecting Test connection.
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
7. Select Publish to publish the data input to the MID Server.

Result

The new data input is ready to stream logs.

Note: The data input record includes these related lists:
• Agents – Lists all active agents connected to the MID Server for this data input.
• Streaming Sources – Lists all sources for this data input and the MID Server that receives
logs from it.

What to do next

Ensure that the data input is streaming data.
ACC data input configuration fields
Description of the fields on the ACC data input configuration form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4649


<!-- page 4650 -->
Basic configuration
Field

Description

MID

The MID Server to which the logs stream.

Note:
• Only one ACC data input can
be defined per MID Server. You
can select only MID Servers with
AgentClientCollector capability that
support basic authentication. MID
Servers that support mTLS are not
listed.
• The default maximum number of
data inputs streaming logs to a single
MID Server is 10. You can modify this
number in the MID Server properties.
However, when 10 data inputs that
are not ACC data inputs have been
defined for a MID Server, one ACC
data input can still be defined for it,
making a total of 11 data inputs defined
for that MID Server.
• When you submit the form, this field
becomes read-only.
This field is required.
Port

The port on the MID Server.
The port must be configured and active. It
must not be occupied by another process.
Make sure that your organization’s security
team opens the port before you assign it.

Note: When you update the port,
the system updates the Agent Client
Collector with the new port configuration.
Log streaming continues seamlessly
without log loss after 1-3 minutes.
This field is required.
Description

Description of the data input.

The fields in the following table show read-only information.

Field

Description

Name

The name of the data input: Agent Log
Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4650


<!-- page 4651 -->
Field

Description

Note: All ACC data inputs have the
same name. You can identify an ACC
data input by the name of the MID Server
that is defined for it.
Status

The status of the data input.

Transport

The protocol used to send the log data.
The ACC data input sends data using a
ServiceNow Agent.

Sources count

The total number of log sources originating
from all ACC data inputs together.
This feature is supported in the Health
Log Analytics application, Version 22.0.12 December 2021 and later, available from the
ServiceNow Store .

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

Advanced configuration
Field

Description

Default value

Look up hostnames

Option for selecting to
false
perform DNS lookup to resolve
IPs to hostnames.

Use SSL

Option for selecting to use
SSL.

true

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4651


<!-- page 4652 -->
Advanced configuration (continued)
Field

Description

Default value

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

Agent Client Collector log policies
Agent Client Collector data inputs stream log messages to your ServiceNow instance using the
ServiceNow Agent Client Collector. The Agent Client Collector Log Analytics (ACC-L) application
provides predefined log policies for collecting log data from the CIs monitored by the ACC.
You can work with Agent Client Collector log policies in the following ways:
• Use the system's predefined log policies.
The default ACC-L log policies consist of the monitored CIs and the check that runs on those
CIs. For a complete list of the predefined log policies and monitored CI types, see Agent Client
Collector Log Analytics default policies and checks.
• Edit a predefined log policy.
For example, you can modify a default policy if your organization always uses a specific nondefault log path. For more information, see Edit a log policy.
• Customize a published log policy by creating a child policy from it.
You can use an existing log policy (the parent policy) as a template to create a new log policy
(the child policy). You then customize the parameters that the child policy inherits from the
parent to focus on a subgroup of its CIs or services. For example, create a child policy if your
organization saves a subset of IIS Server logs to a different location. For more information, see
Create a child log policy.

Note: The child policy is inherently more specific than its parent policy. When Agent
Client Collector matches a condition defined in the child policy, it will not try to match the
parent policy.
• Define a new log policy when no policy exists for the CI that you want Agent Client Collector to
monitor.
For more information, see Create an Agent Client Collector log policy. For a general
explanation of Agent Client Collector policies, see Checks and policies.
Agent Client Collector Log Analytics default policies and checks
Agent Client Collector Log Analytics provides various default policies and checks.
Streaming log data from Windows hosts is supported in Agent Client Collector Log Analytics
Version 3.1.0 and later.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4652


<!-- page 4653 -->
Default ACC-L policies
Name

OS

Description

Check

Apache on Linux Logs Linux

Collects logs from
log shipper
Apache servers
running on a Linux OS
and sends them to the
MID Server for further
analysis.

Apache on Windows
Logs

Windows

Collects logs from
log shipper
Apache servers
running on a Windows
OS and sends them
to the MID Server for
further analysis.

IIS logs

Windows

Collects logs from
Microsoft IIS web
servers and sends
them to the MID
Server for further
analysis.

JBoss/WildFly
Application Server on
Linux Logs

Linux

Collects logs from
log shipper
JBoss/WildFly
application servers
running on a Linux OS
and sends them to the
MID Server for further
analysis.

JBoss/WildFly
Application Server on
Windows Logs

Windows

Collects logs from
log shipper
JBoss/WildFly
application servers
running on a Windows
OS and sends them
to the MID Server for
further analysis.

Linux OS Logs

Linux

Collects logs from
the Linux OS and
sends them to the
MID Server for further
analysis.

log shipper

MSSQL on Linux Logs

Linux

Collects logs from
MSSQL DBs running
on Linux and sends
them to the MID
Server for further
analysis.

log_shipper

MSSQL on Windows
Logs

Windows

Collects logs from
MSSQL DBs running
on a Windows OS and
sends them to the

log shipper

log shipper

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4653


<!-- page 4654 -->
Name

OS

Description

Check

MID Server for further
analysis.
MySQL DB on Linux
Logs

Linux

Collects logs from
log shipper
MySQL DBs on a Linux
OS and sends them
to the MID Server for
further analysis.

MySQL DB on
Windows Logs

Windows

Collects logs from
MySQL DBs running
on a Windows OS and
sends them to the
MID Server for further
analysis.

log shipper

Nginx on Linux Logs

Linux

Collects logs from
Nginx servers running
on a Linux OS and
sends them to the
MID Server for further
analysis.

log shipper

Tomcat on Linux Logs

Linux

Collects logs from
log shipper
Tomcat servers
running on a Linux OS
and sends them to the
MID Server for further
analysis.

Tomcat on Windows
Logs

Windows

Collects logs from
log shipper
Tomcat servers
running on a Windows
OS and sends them
to the MID Server for
further analysis.

Oracle WebLogic

Windows and Linux

Collects logs from
Oracle WebLogic
servers and sends
them to the MID
Server for further
analysis.

log shipper

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4654


<!-- page 4655 -->
Name

OS

Description

Check

Note:
• The log path
that WebLogic
uses has two
environment
variables, as
described in
the WebLogic
documentation.
For more
information,
see
Environment
variables.
• On both
Windows
and Linux,
Agent Client
Collector Log
Analytics
adds a default
environment
variable from
the WebLogic
documentation
to the log path.
You can either
use this default
environment
variable to
get the full
directory,
or change it
manually if you
prefer to use a
known direct
directory. For
information
about
customizing
the
environment
variable, see
Edit log path
configurations.
WebSphere
Application Server on
Linux Logs

Linux

Collects logs
log shipper
from WebSphere
application servers
running on a Linux OS
and sends them to the
MID Server for further
analysis.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4655


<!-- page 4656 -->
Name

OS

Description

Check

Windows OS Event
Logs

Windows

Collects Windows
event logs from
Windows servers and
sends them to the
MID Server for further
analysis.

log shipper for win
events

Environment variables
The log path used for collecting logs from certain servers may contain environment variables. It’s
important to note that on Linux systems, the ACC Agent can only access environment variables
that reside in the /etc/environment file. Add the environment variables that the agent must
access to the /etc/environment file using the format <NAME>='<VALUE>'. On Windows
systems, you can create environment variables in the usual manner.

Default ACC-L checks
Agent Client Collector Log Analytics (ACC-L) provides the following default Type=Log checks.
• The log shipper check launches a background process that sends logs from servers to
an agent data input, according to the check's configured log path. When access permissions
are lacking or the log path is configured incorrectly, the system sends an alert to the instance.
For proper log configuration, ensure that the servicenow user has permissions to access
the configured log path on the machine that is hosting the agent, and that the log path is
configured correctly.
• The log shipper for win events check is similar to the log shipper check, but
sends event logs from Windows OS servers to the agent data input.

Note: To collect Security Windows event logs, servicenow users on an agent hosting
machine must have admin privileges.
Create an Agent Client Collector log policy
Create a new ACC log policy when no default policy exists for the CI that you want Agent Client
Collector to monitor.

Before you begin
• The Agent Client Collector Log Analytics (ACC-L) application, available from the ServiceNow
Store , must be installed. For more information, see Agent Client Collector installation.
• The Agent Client Collector comes with the default servicenow user. Ensure that this
user has read access to enable Agent Client Collector to view all the configured log paths.
For example, the Agent Client Collector servicenow user that comes installed with the
base system does not have permissions to view the paths to /var/log/ in Linux and C:
\Windows\System32 in Windows. For information about configuring permissions for the
servicenow user, see the ACC-L Permission Denied issues [KB1117271]
article in the Now
Support Knowledge Base.
Role required: agent_client_collector_admin

Procedure
1. Navigate to All > ACC Log Analytics > ACC Log Policies.
The Policies page displays all Log Analytics policies. For a list of the policies that come with
the base system, see Agent Client Collector Log Analytics default policies and checks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4656


<!-- page 4657 -->
2. Click New.

Note: For general information about creating an ACC policy, see Create a new Agent
Client Collector policy.
3. On the form, fill in the fields.
Policy Definition Form
Field

Description

Name

A descriptive name for the policy.

Description

Description of the policy.

Publish status

Hard coded as Draft, which means that
the policy has not yet been published. You
cannot edit this field.

Hierarchy

Hard coded as None. When a child policy
is added to the policy, the value changes to
Parent. Child policies have a value of Child.

4. On the Checks tab, associate the log policy with the relevant log shipper check.
◦ For Linux and Windows, except for Windows event logs, select the log shipper check
definition.
◦ For Windows event logs only, select the log shipper for win events check
definition.
5. On the Monitored CIs tab, specify the CIs to which the policy applies.
a. Choose the CI type to be monitored.
▪ Monitored CI type by filter: Select the monitored CI type. You can narrow down the CIs
that will be monitored by using filter conditions.
▪ Monitored CI type by script: Specify the monitored CIs by using a script.
▪ Monitored CI type by CMDB Group: Specify the monitored CIs by using CMDB group
queries.
For more information about choosing monitored CI types, see Create a new Agent Client
Collector policy.
b. Optional: Monitor only CIs that are associated with an Application Service by selecting
Filter Monitored CIs by Application Service.
You can specify the Application Services to be monitored by using filter conditions. Agent
Client Collector will only retrieve the logs of CIs that are associated with these Application
Services.
6. Save the log policy.
In the Check instances related list, a check instance record is created.
7. Open the relevant check instance record and then select Edit in Sandbox.
8. Select the Log path configurations related list.
9. Add a log path for the check instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4657


<!-- page 4658 -->
Note: A check must have at least one log path configured for it to enable streaming
logs. For more information about checks, see Checks and policies.
a. Select New.
b. On the form, fill in the fields.
New path configuration form
Field

Description

Path

The full path from where the logs are
streamed. You can use a wildcard. This field
is required.

Component

The device type or stack layer that provides
a context for the logs, used for anomaly
detection and correlation. For example:
Tomcat.

Source Type

Defines how Health Log Analytics handles
a specific log type and parses the log data.
For example: Tomcat Catalina.

c. Optional: For shipping multiline logs using Filebeat, configure the following properties.
(Optional) These parameters control how Agent Client Collector Log Analytics (ACC-L)
handles messages that span multiple lines of text.
For more information, see Manage multiline messages

in the Elastic documentation.

Field

Description

multiline.pattern (regex)

The regular expression to match.

Note: You must define this property
before you can configure the
multiline.match and multiline.negate
properties.
multiline.match

How ACC-L combines matching lines into a
single log line.
(Optional) The available options are None,
Before, and After. Default is None.

multiline.negate

Option for determining whether the pattern
identified in the log lines is negated.
(Optional) The available options are None,
True, and False. Default is None.

d. Optional: Define the following properties that control the Filebeat YML configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4658


<!-- page 4659 -->
Field

Description

Fields

Field that enables you to include and
exclude information in the output. For
example, you can add a field for filtering the
log data.
(Optional) Add more Field rows by selecting
the plus icon next to the Value field:
.
Remove a Field row by selecting the minus
icon:

.

For more information, see the Log
input Fields
description in the Elastic
documentation.
Configuration Options

Field that enables you to add configuration
options to the log lines. For example, you
can add the encoding to use.

Note: Define only configuration
options that are supported by Filebeat.
For more information, see the Log input
Configuration options
description in
the Elastic documentation.

e. Select OK.
The log path is created.
10. Select Return to Policy.
11. On the policy form, select Publish.
The policy's Publish status changes to Published.
12. Optional: Activate the policy by selecting Activate.

What to do next

Ensure that the data input is streaming data.
Create a child log policy
Refine an existing log policy to focus on a subset of CIs or services by creating a child policy.

Before you begin

Role required: agent_client_collector_admin

About this task

A published log policy (the parent policy) can be used as a template for creating a new log policy
(the child policy). You can customize the parameters that the child policy inherits from the parent
to focus on a subgroup of its CIs or services.
The child policy inherits parameters from its parent policy that are modified after the child
policy's creation, unless you disable this option in the child policy. You can choose to review
these modified parameters in draft mode in each child policy before accepting them.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4659


<!-- page 4660 -->
Note: The child policy is inherently more specific than its parent policy. When Agent
Client Collector matches a condition defined in the child policy, it will not try to match the
parent policy.

Procedure
1. Navigate to All > ACC Log Analytics > ACC Log Policies.
2. On the Policies page, select a published policy with a Hierarchy value of either None or
Parent.
3. Select Create Child.
A new policy opens with the same parameters as the published policy. The name of the new
policy is <Policy name><date and time created>.
For example, MySQL DB on Linux Logs 2022-02-13 04:44:12.
The following fields are read-only:
Child policy fields
Field

Value

Publish status

Draft

Hierarchy

Child

Parent

<Name of the parent policy>

The Order field value indicates the priority by which the agent attaches itself to the child policy
in relation to its sibling policies. A lower number indicates a relatively higher priority for this
child policy. By default, each new child policy takes on a higher value (and hence, a lower
priority) than the one preceding it. You can modify the order value as needed.
4. Customize the child policy's parameters.
For a description of the parameters, see Create an Agent Client Collector log policy.
5. Select Save to create the child policy.
6. Optional: Select Disable inherit option to disable automatically inheriting modified
parameters from the parent policy.
7. Select Publish to publish the child policy.

Result

The child policy is published and appears on the Child Policies tab of the parent policy.
Edit a log policy
You can edit published Agent Client Collector log policies. For example, modify a default log
policy if your organization always uses a specific non-default log path.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > ACC Log Analytics > ACC Log Policies.
2. Select a policy for which the Publish status is Published.
3. Select Edit in Sandbox.
The policy is now in Draft view, and its fields and check instances are editable.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4660


<!-- page 4661 -->
Note: Although the policy is in Draft view, its publish status remains Published.
4. On the Monitored CIs tab, edit the CIs to which the policy applies as needed.
a. Choose the CI type to be monitored.
▪ Monitored CI type by filter: Select the monitored CI type. You can narrow down the CIs
that will be monitored by using filter conditions.
▪ Monitored CI type by script: Specify the monitored CIs by using a script.
▪ Monitored CI type by CMDB Group: Specify the monitored CIs by using CMDB group
queries.
For more information about choosing monitored CI types, see Create a new Agent Client
Collector policy.
b. Optional: Monitor only CIs that are associated with an Application Service by selecting
Filter Monitored CIs by Application Service.
You can specify the Application Services to be monitored by using filter conditions. Agent
Client Collector will only retrieve the logs of CIs that are associated with these Application
Services.
5. Optional: In the Check Instances table, select the log shipper check instance record and edit
it.
For more information, see Edit log path configurations.
6. Select Save to save the changes you entered into the Sandbox policy fields.
The policy remains in Draft view, and the Publish status is Published*. The asterisk (*)
indicates that the current published version is not the most up to date one, because it contains
saved changes that have not yet been published.
7. Select Republish to publish the updates.
The policy returns to Published state and opens as the published policy.

Note: This option appears only after entering updates into the policy fields, for a policy
whose Publish status is Published*.

8. Determine the active status of the policy by selecting either Activate or Deactivate.
9. Optional: Select Delete to delete both the Published and the draft policies.
Edit log path configurations
Modify a log path configuration in the log shipper check instance.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > ACC Log Analytics > ACC Log Policies.
2. Select a policy record.
3. In the Check instances related list, select the log shipper check instance record.
4. Select Edit in Sandbox to enable editing the record.
5. On the Log path configuration related list, edit a log path configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4661


<!-- page 4662 -->
a. Select the log path configuration that you want to edit.
b. Edit the configuration.
▪ You can add custom fields, allowing you to include additional information in the output.
▪ You can add extra configuration options, such as encoding, include_lines, and
exclude_lines, to filter your log data. For information about discovering file encoding,
see the How to Detect File Encoding on Windows, Linux and Mac [KB1702770]
article in
the Now Support Knowledge Base.
These configuration options impact all the files that the data input streams to your
instance.

Note: Define only configuration options that are supported by Filebeat. For more
information, see the Log input Configuration options
documentation.

description in the Elastic

c. Select Update to save your edits.
6. Optional: Add an environment variable or edit an existing one in the Path field.
Use the relevant format for its name:
◦ On Linux, capitalize the name and precede it with a dollar sign: $. For example: $HOME. The
name is case sensitive.
◦ On Windows, surround the name with percentage signs: %. For example: %HOMEPATH%. The
name is not case sensitive.

Important: The servicenow user and ACC agent must have access to the environment
variable. On Linux systems, only environment variables that reside in the /etc/
environment file are accessible. Add the environment variable to this file using the
format <NAME>='<VALUE>'.
7. Optional: Delete a log path.
a. Check the box next to the log path configuration that you want to delete.

Note: You can select multiple log path configurations, but a check must have at least
one log path configured for it to enable streaming logs. For more information about
checks, see Checks and policies.
b. Select Delete.
8. Select Return to policy to go back to the log policy record.
9. Select Republish and then confirm to publish the policy again with the updated log path
configurations.
The changes take effect in a few minutes.

CI association to a dynamic CI Group in Agent Client Collector Log Analytics
When the Agent Client Collector Log Analytics (ACC-L) application discovers a CI that is not
associated to an application service, the application creates a dynamic CI Group and associates
the CI to it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4662


