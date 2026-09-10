# Zurich IT Operations Management — Agent Client Collector deployment - servers

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4152–4233 of 4823

Sections: Agent Client Collector deployment - servers (p4152)

---

<!-- page 4152 -->
• Target host cycle: When the target host goes down and comes back up.
• Network break: When there is a break in the network link to the target.

Note: Discovery is triggered for those agents whose hosts are already present. Agents
whose hosts are not present are discovered through ACC-F.

ACC-VC checks and policies
The ACC-VC assets are stored as Agent plugins with the main entry point [acc_visibility_main]
and other modules for OS families. There is one main system Discovery Check definition, called
Enhanced Discovery, which is used by the Enhanced Discovery Policy. This ACCVC policy runs off a schedule, which is defaulted to 24 hours (86,400 seconds). This policy
configuration is synced to all agents as defined in the ACC-VC policy.
When the payload is returned from the MID Server to the instance, the ACC-VC Check Type,
EnhancedDiscovery, delegates tasks to the EnhancedDiscoveryHandler script include
provided by ACC-VC. The script contains logic to process the data from the check and handles
tasks such as:
• Data transformation into an identification and reconciliation engine (IRE) compatible payload
• Non-CI data reconciliation (cmdb_running_processes, cmdb_tcp_connections, and so on)
The ACC-VC Check Definition, Enhanced Discovery, is initiated by the ServiceNow
Instance. Then, an ECC Queue record with topic, MonitoringProbe, is created on the output
queue with relevant Check information. The MID Server then processes the check by sending a
message to the ACC via WebSocket over TLS.
During this time, the MID Server also serves any relevant Assets or Plugins that the ACC
requests, making sure it is relevant to the particular Operating System, platform, OS version, and
architecture on which the ACC is running.
You can edit and modify all parts of the ACC-VC application including check type, policy, and
check definition. See Checks and policies for more information.

Virtual machines and cloud instances
ACC-VC associates a target, discovered via Discovery, with a pre-existing virtual machine (VM)
Instance CIs. ACC-VC associates the discovered CI record with any pre-existing VM Instance
record or Cloud Server Instance record with appropriate CMDB relationships.
The following variants of virtualization and cloud server vendors are supported for ACC-VC:
• vCenter
• Amazon AWS Cloud
• Google (GCP)
• Microsoft Azure

Agent Client Collector deployment - servers
When deploying the Agent Client Collector, perform deployment and management tasks on your
environment's servers.
Server deployment uses MID Servers to connect your agents to a ServiceNow instance. Agents
deployed on data center servers open WebSocket connections to your MID Servers, which relay
data to your instance. You manage the sizing, certificates, and load balancing of the MID Server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4152


<!-- page 4153 -->
Use server deployment when your agents are in controlled environments such as data centers,
where you are already running MID Servers and want to keep traffic on your network. Agent
Client Collector Monitoring (ACC-M) and Agent Client Collector Log Analytics (ACC-L) require
server deployment, and you can deploy Agent Client Collector for Visibility - Content (ACC-VC)
with servers as well.

Configuring Agent Client Collector with a MID Server
Configure the Agent Client Collector with a MID Server to enable communication between
network servers and the ServiceNow instance.
Configure an Agent Client Collector with a MID Server using a single-line command
Use a single-line command to set up an Agent Client Collector with a MID Server. You can also
use the single-line command to migrate agents with MID-less configuration to be used with a MID
Server.

Before you begin
Role required:

• In a Linux or macOS environment: root
• In a Windows environment: agent_client_collector_admin

About this task

Running the single-line command includes flags, which indicate the options to be added to the
acc.yml configuration file. These options dictate the configuration of the Agent Client Collector
with the MID Server. If you don’t specify an option in the command, the existing option in the
acc.yml file is used. If there’s no existing option, an error message indicates that the parameter
is required to enable connecting to an endpoint.
Running a command validates that a connection can be made with the specified parameter (for
example, the specified api-key value). However, the command doesn’t verify if the value of the
parameter is valid.

Procedure
1. Run the following command in a terminal window: acc gateway mid <flags>.
The available flags appear in the following table:
MID Server configuration flags
Flag

Type

Description

-y, <--acc-yml>

String

Location of the acc.yml
being configured. Can also
be used to modify and
validate parameters if the file
is in a different location that
the default.
Optional. If no value is
entered, the default location
of the acc.yml file is used.

-a, <--api-key>

String

The API key to be used by the
MID Server.

-b, <--backend-url>

String

One or more backend
connection URLs specifying

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4153


<!-- page 4154 -->
Flag

Type

Description

a websocket endpoint
to a MID Server. Multiple
values are specified using
commas between entries
with no spaces separating
the values; for example,
<url1>,<url2>.
-h, help

N/A

Explains what the specified
command does.

2. Restart the agent for the configuration settings to be entered into the acc.yml file.
Configure the websocket server on the MID Server
Configure the websocket server on MID Servers to enable connections from agents to the MID
Server. You can configure only one websocket server per MID Server.

Before you begin
• Ensure that you download and install curl (or similar software) on your MID Server Windows
machine.
• Role required: agent_client_collector_admin

Procedure
1. Navigate to All > MID Server > Servers.
2. Select the relevant MID Server name.
3. In the Related Links section, click Setup ACC Listener.
The Agent Client Collector Setup dialog box appears.

4. Enter the MID web server port (8800) in the displayed field.

Note: You can change the default port, 8800, as needed.
◦ To invoke secure TLS configuration, run the following command: wss://
<mid_ip>:<websocket_port>/ws/events
◦ To invoke TLS 1.3 support on the MID Web Server, set the following
parameter in the wrapper-override.conf file on the MID Server:
-Djdk.tls.server.protocols="TLSv1.3"
◦ In a Linux environment, port numbers under 1024 can be used only with superuser
privileges.
5. Click OK.
A confirmation message with the URL for the agent configuration file appears.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4154


<!-- page 4155 -->
The web server and websocket extension are configured for the MID Server. To verify that the
configuration is working, you must navigate to the following menu options:
◦ Agent Client Collector > MID Web Server. When editing the fields on the resulting form, you
must restart the MID web server extension to save your changes.
◦ Agent Client Collector > Websocket Endpoint
6. Verify the validity of the websocket, using curl:
a. Enter the following command into a cmd or terminal window: curl

-Lk -H "Authorization: Key <API_KEY>" https://
<mid_server_address>:<port>/api/mid/mon

b. Verify that you receive a valid JSON response (and not an error message), such as the
following:
Successful installation JSON script

Configure a websocket endpoint
Configure a websocket to enable the endpoint to provide web access from the MID Server to the
Agent Client Collector (ACC).

Before you begin

Role required: agent_client_collector_admin

About this task

For added security, ensure that MID Servers deployed for the Agent Client Collector aren’t
deployed for other components.

Procedure
1. Navigate to All > Agent Client Collector > Deployment > MID Servers.
2. Select a MID Server.
3. Select the ACC Websocket Endpoints tab on the bottom of the page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4155


<!-- page 4156 -->
4. Select New.
5. Configure the fields on the page.
ACC Websocket Endpoint page
Field

Description

Name

Enter a descriptive name for the websocket
endpoint.

MID Server

The name of the selected MID Server.

Short description

Optionally, enter a short description for the
websocket endpoint.

Accessible IP address

Apply an external/public IP when the
MID Server has an internal IP that is not
accessible from an agent. Used for cloud
solutions with an agent that has access
only to the MID Server's public IP. If the MID
Server and all agents are in the same Virtual
private cloud (VPC), this field can be left
empty.

6. In the Related Links section, select Start to activate the websocket endpoint.
Configure the frequency of updating the agent MID Server list
By default, the list of MID servers connected to agents is updated once daily. If you have a
dynamic environment that adds MID servers frequently, you may want to schedule updates more
often, or execute the job on demand.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Locate the Update Mid List for All Agents job.
3. To run the job immediately, click Execute Now.
4. To edit the frequency by which the job runs:
a. In the Run field, select Periodically.
The Repeat Interval field appears.
Repeat interval field

b. Configure the frequency by which you want the job to run.
The cells next to the Hours cell represent minutes and seconds, respectively.
c. Click Update to update the job frequency.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4156


<!-- page 4157 -->
Enable Agent Client Collector monitoring on the MID Server
Enable Agent Client Collector monitoring on the MID Server by configuring the Agent Client
Collector framework (ACC-F) and Metric Intelligence extensions in a single action. Enabling
Agent Client Collector monitoring also enables monitoring on agents connected to the MID
Server.

Before you begin

Role required: evt_mgmt_admin

Procedure
1. Navigate to All > Agent Client Collector > MID Servers.
2. On the MID Server page, select a MID Server to view the MID Server's details.
3. In the Related Links section, select Setup ACC Monitoring and enter the relevant port number
in the MID Web Server Port field of the dialog box.

Result

The MID Server is configured to support both the Agent Client Collector and Metric Intelligence.

Note: You are prompted to enter a port number only on initial ACC Monitoring setup.
Automatic MID Server selection
Automatic selection of MID Servers ensures that each agent uses the most efficient available
MID Server.
The Agent Client Collector automatic MID Server selection feature set is disabled by default.
There are several factors to consider before determining if automatic MID Server selection is
right for your use cases.

Use case considerations
Automatic MID Server selection provides several benefits. MID Server capabilities
can narrow
the list of MID Servers an agent can potential connect to. Automatic MID Server selection keeps
the back-end URL configuration list up to date on the agent host without additional work flows.
When automatic MID Server selection is enabled, the agent performs a connectivity test against
the list of available MID Servers and determines the best connection based on latency and
number of currently connected agents.
However, there are several additional considerations that may make automatic MID Server
selection wrong for your use case.
The ACC automatic MID Server selection is not a true load balancer and should be considered
a fail-over mechanism. There is higher complexity for choosing a back-end URL as it is derived
from multiple input sources. If, instead, an application load balancer is used only one backend URL needs to be specified. See Enable the Agent Client Collector load balancer for more
information.
By default, each agent is sent the list of all MID Servers listening for ACC connections. Since that
list includes MID Servers running in restricted areas, the agents can try to connect to them which
can generate security alerts.
Your DNS configuration should be considered before using automatic MID Server selection
because the resolution can lead to unexpected results. The DNS resolution is done periodically.
End User Compute systems that alternate between internal corporate, Wi-Fi, VPN, or external
networks may not be able to reconnect if the network context has changed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4157


<!-- page 4158 -->
Automatic selection process
When automatic selection is enabled, the ServiceNow instance sends periodic MID Server
updates to existing agents. The agent selects a MID Server based on information it receives from
the ServiceNow instance.
During automatic MID Server selection, the agent selects a primary MID and a secondary MID
list, and writes them to the agent’s config file. The agent uses this list for fail-over protection when
the primary MID/secondary MID in the list loses connection.
When an agent detects that its IP address has changed, it automatically connects with the most
efficient MID Server available from the agent's list of MID Servers.
To secure communication between the MID Server and the agent, use the MID Server's unified
key store. For details on using the MID Server unified key store, see MID Server unified key
store .
Related topics
Enable automatic MID Server selection
Enable automatic MID Server selection
Enabling automatic MID Server selection lets the agent perform a connectivity test against the
list of available MID Servers and determine the best connection based on latency and number of
currently connected agents. Automatic MID Server selection is disabled by default.

Before you begin

Role required: agent_client_collector_admin

Procedure
• To enable sending periodic MID Server updates from the ServiceNow instance to existing
agents, set the sn_agent.enable_auto_mid_selection system property to true.
• To enable automatic MID Server selection for individual agents:
1. Set the enable-auto-mid-selection property in the agent's acc.yml file to true.
2. Enable and execute the Update MID List for All Agents and Update MID List for All New
Agents scheduled jobs.

What to do next

To disable automatic MID Server selection again, set each of the properties back to false.
To schedule updates more often than once daily, or execute the job on demand, see Configure
the frequency of updating the agent MID Server list.
Configure the Agent Client Collector capabilities for MID Servers
Configure the MID Servers with Agent Client Collector capabilities to enable the MID Servers to
work with agents. Agents that have identical MID Server capabilities are eligible for automatic
MID Server selection.

Before you begin

Role required: agent_client_collector_admin

About this task

A capability defines MID Server functions. Any MID Server that is assigned with a capability
that has Is ACC Capability=true is enabled to work with an agent. For details on the MID Server
capabilities, see MID Server capabilities .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4158


<!-- page 4159 -->
Procedure
1. Navigate to All > MID Server > Capabilities.
2. Select a capability to enable the MID Server to work with the agent.
a. Select the ACC Capability column next to the AgentClientCollector entry.
b. Set the value to true.
3. Enable other capabilities for Agent Client Collector MID Servers by selecting the Is ACC
Capability column next to the AgentClientCollector entry and setting the value to true.

Result

MID Servers with the same capabilities are eligible to be used during automatic MID Server
selection.
Configure the automatic MID Server selection based on the Agent Client Collector capabilities
Configure the MID Servers that are ineligible for automatic MID Server selection with the agent.
For example, you may want to block a MID Server from connecting to your agent due to firewall
constraints.

Before you begin

Role required: agent_client_collector_admin

About this task

Agents with different levels of Agent Client Collector (ACC) capability can’t be considered for
automatic MID Server selection. If you want to block a MID Server from automatic MID Server
selection, you can assign the MID Server different ACC capabilities from all MID Servers, but not
the primary MID Server, in your environment.

Procedure
1. Configure the Agent Client Collector capabilities for MID Servers, as described in Configure
the Agent Client Collector capabilities for MID Servers.
2. Navigate to All > Agent Client Collector > MID Servers.
3. Select the MID Server that you want to be ineligible for automatic MID Server selection.
4. Select the additional actions icon

and select View > Default View.

5. Select the Capabilities tab.
6. Ensure that the MID Server isn’t assigned with the capabilities that have Is ACC
Capability=true on the Capabilities tab.

Example: Configuring MID Servers to be ineligible for automatic MID Server
selection
1. Assign the AgentClientCollector capability to MID Server A and MID Server C, but not to MID
Server B.
2. On the MID Server Capabilities page:
a. Assign a capability to MID Server A and MID Server C.
b. Assign a different capability to MID Server B.
3. Install Agent Client Collector Framework and specify MID Server A as the MID Server during
installation.
After installation, the agent has Status=Up and its MID Server is MID Server A.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4159


<!-- page 4160 -->
4. Execute the MID Server Selection scheduled job to determine which MID Servers are eligible
for automatic MID Server selection.
MID Server B is ineligible for automatic selection, because it doesn’t have the same ACC
capability as MID Server A. MID Server C is eligible, because it has the same ACC capability as
MID Server A.

Agent Client Collector installation
You can install the Agent Client Collector on any supported host machine. The Agent Client
Collector connects to a MID Server using the HTTP/S protocol, and the connection remains
active after being established. One MID Server may handle several agents simultaneously, while
a single agent works with one MID Server at a time and switches to a different MID Server when
necessary to provide failover protection.
When an agent's IP address changes, it selects a MID Server to connect to based on the agent's
MID Server list.
The maximum number of agents that can be connected to a single MID Server is configurable
in the sn_agent.mid.max_allowed_agents MID Server property. The default value is
4,000.
For ACC-VC, a default 1 GiB MID Server can support 700 agents concurrently. An 8 GiB
configuration for a MID Server can support 8,000 agents concurrently. You can also scale out.
For example, 5 MID Servers with 8 GiB of heap size can handle up to 40k agents.
The default user account is a local user called servicenow. This user has basic level
permissions.
The following table describes the permissions required to work with various features associated
with the agent, per OS. An asterisk (*) indicates that no special permissions are required.
Agent on Endpoints Deployment
Feature

Windows

Linux

macOS

Basic inventory

*

*

*

Serial number(s)

*

sudo

*

dmidecode
Running processes

Debug programs

*

*

Mapping TCP connections
to running processes

*

sudo ss

*

Storage devices

LOCAL SYSTEM

*

*

Logged-in users

LOCAL SYSTEM

*

*

Package self-upgrade

LOCAL SYSTEM

sudo rpm/dpkg

Not supported

If you completely reinstall the agent on a single host server, a second agent record registers on
the instance. Delete the original agent on the Agent Client Collectors page (All > Agent Client
Collector > Agents).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4160


<!-- page 4161 -->
Agents whose Status = Down or Disconnected which haven't been deleted are deleted
automatically after 30 days. You can modify this setting on the Autoflush form page (see
Autoflush form ).
Use the Manual Transport Layer Security protocol (mTLS) for secure authentication between your
MID Web Server and the agent (the client). For details, see Connect the agent to the MID Server
using mTLS.
For details on using Agent Client Collector in an air-gapped environment, see the Agent Client
Collector Framework Air Gapped Configuration Item Management Solution [KB1585753]
article
in the Now Support Knowledge Base.
Agent Client Collector supports domain separation. The domain of the agent and the CIs it
creates is determined by the domain of the MID Server that the agent is connected to. The
user's domain must be the lowest domain level (known as a leaf domain) to enable creating a
Websocket endpoint extension for the MID Server.
Related topics
Agent Client Collector installation on a Linux OS system
Install Agent Client Collector on a Windows machine manually
Agent Client Collector installation on macOS system
Agent Client Collector system requirements
System requirements are the fundamental specifications and configuration needed to install and
run Agent Client Collector (ACC) effectively.
Before installing the Agent Client Collector, you must do the following:
• When working with a MID Server:
◦ Ensure that one or more MID Servers are properly registered and validated with your
instance, to be available for an agent connection request. For details, see Configuring MID
Servers . In a staging environment, you need only one MID Server. However, in a production
environment, configure at least two MID Servers to support zero-touch configuration and
ensure that a MID Server is always available if one fails.
◦ Ensure that there's a validated connection from the designated server where you're installing
the agent to the MID Server.
◦ Ensure that the MID Server port on which the Agent Client Collector listener runs is
accessible.
• When working with MID-less deployment, follow the instructions described in Configuring MIDless Agent Client Collector.
• Ensure that the following plugins are installed on your instance:

Application

Plugin

ACC-F

◦ MID Server
◦ CMDB for scoped applications
◦ Agent Client Collector global utilities
◦ MID Web Server
◦ Service Error Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4161


<!-- page 4162 -->
Application

Plugin

ACC-VC

◦ Agent Client Collector for Visibility Content
◦ Agent Client Collector Framework
◦ Discovery [com.snc.discovery] plugin

ACC-M

◦ Agent Client Collector Framework
◦ Agent Client Collector Monitoring
◦ Event Management and Service Mapping
Core
◦ Metric Intelligence - [com.snc.sa.metric]
plugin

ACC-L

◦ Agent Client Collector Framework
◦ Agent Client Collector Log Analytics
◦ Health Log Analytics

DEX

◦ Agent Client Collector Framework
◦ ITOM Cloud Services Core
[sn_itom_cloud_svc]

You can verify that these plugins are installed on the System Definitions > Plugins page.
All plugins that come with the base system are signed with the ServiceNow certificate.
Optionally, you can use custom plugins and sign them using your own certificate, as described
in Enable OpenSSL secure signing for plugins.
• Ensure that your system has the minimum requirements for agent installation.
Minimum installation requirements
Agent Client Collector component

Requirements

Agent Client Collector Framework

◦ 1 GB RAM
◦ 300 MB free disk space
◦ 1 CPU core

Agent Client Collector Monitoring

◦ 1 GB RAM
◦ 1 GB free disk space
◦ 1 CPU core

Agent Client Collector for Visibility - Content

◦ 1 GB RAM
◦ 1 GB free disk space
◦ 1 CPU core

• Ensure that you are installing Agent Client Collector on one of the supported operating system
distributions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4162


<!-- page 4163 -->
Supported Operating System Distributions
Operating System

Distribution

Linux

◦ Red Hat Enterprise Linux - RHEL and
Oracle Linux - OL 7, 8, 9
◦ CentOS 7, CentOS Stream 8 and 9
◦ SLES 12, 15
◦ Debian 9, 10, 11
◦ Ubuntu 18.04, 20.4, 22.04, 24.04 LTS
◦ Amazon Linux 2 AMIs
◦ Amazon 2023
◦ Rocky Linux 8 and 9

Windows (ACC-M and ACC-L are supported
only on servers, not endpoints)

◦ Windows Server 2012, 2012r2, 2016, 2019,
2022
◦ Windows 10 Enterprise Edition
◦ Windows 11 Professional and Enterprise
◦ Windows 11 Surface on ARM64

macOS (on both x86_64 and arm64 (Apple
◦ Catalina
Silicon) architectures. ACC-M and ACC-L are
◦ Big Sur
supported only on servers, not endpoints)
◦ Monterey
◦ Ventura
◦ Sequoia

Important: All supported operating systems work only with the x86-64 CPU architecture
type. ACC-F v3.1.1 also adds native support for ARM64 on Apple Silicon architectures. For
the latest information, see the Agent Client Collection on non- x86-64 computers and
embedded boards [KB1172387]
article in the Now Support Knowledge Base.
When using ACC-L: The Agent Client Collector comes with the default servicenow user.
Ensure that this user has read access to enable Agent Client Collector to view all the configured
log paths. For example, the Agent Client Collector servicenow user that comes installed with
the base system does not have permissions to view the paths to /var/log/ in Linux and C:
\Windows\System32 in Windows. For information about configuring permissions for the
servicenow user, see the ACC-L Permission Denied issues [KB1117271]
article in the Now
Support Knowledge Base.
When determining the number of machines and servers needed to support your agents (such
as the number of machines requiring proxy agents), you must consider the agents' performance
KPIs. For details on agent performance KPIs, see Agent Client Collector performance and
footprint for URL monitoring.
Incorporating the Agent Client Collector into a custom base image for mass deployment
Deploy the Agent Client Collector on a virtual machine during mass deployment using the
machine's base image. Mass deployment uses silent installation, which hides installation status.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4163


<!-- page 4164 -->
Before you begin

Use Microsoft SCCM to manage the deployment and security of your devices, as described in
the Create a Windows service account with Log on as a Service
KB article.
Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Agent Downloads.
2. Download the installation file of the relevant OS.
3. Install the agent according to the relevant OS instructions.
4. Run the following command to stop the agent service:
◦ In a Windows environment: Run the command sc stop AgentClientCollector
◦ In a Linux environment: Run the command sudo systemctl stop acc
5. Ensure that the acc.yml file doesn’t include an encrypted API key.
For example: api-key: "<insert plain text API key here>"
6. Delete the contents of the agent's cache directory, keeping the directory structure intact:
◦ In a Windows environment: C:\ProgramData\ServiceNow\agent-clientcollector\cache
◦ In a Linux environment: /var/cache/servicenow/agent-client-collector
7. When installing on a Windows machine, ensure that the installation was successful by doing
one of the following:
◦ Enable logging in silent installation and verify that the log file ends with the string, Windows
Installer installed the product.
◦ Ensure that the AgentClientCollector service has the status Running.
8. When installing on a Linux machine, access the machine where the agent is installed
and modify the /usr/share/servicenow/agent-client-collector/
serial_number.txt file in one of the following ways:
◦ Change its content with the host's serial number, by running the following command: sudo
-n dmidecode -s system-serial-number
◦ Assign sudo permissions to the ServiceNow user to enable running the following osqueryi
command: sudo -E env "PATH=$PATH" osqueryi --logger_min_status=3
--line "select hardware_serial from system_info"

Note: You must change the virtual machine's host name after deployment to a unique
value, to avoid damaging the host's CI.
9. As a post-deployment step, restart the agent service.
◦ In a Windows environment: Run the command sc start AgentClientCollector
◦ In a Linux environment: Run the command sudo systemctl start acc
Enable the Agent Client Collector load balancer
Enable a load balancer to ensure that you have functional MID Servers. A load balancer
distributes resources over multiple MID Servers to ensure that no single MID Server is
overloaded.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4164


<!-- page 4165 -->
Before you begin
1. Install the Agent Client Collector Framework.
2. Configure the Agent Client Collector web server.
3. Ensure that you have access to the internal application's load balancer configuration.
4. Verify that the file <mid_server_install_path>/static/hello.txt was created
during MID Server setup.
hello.txt is an empty file that is created manually, to retrieve an HTTP response 200.
Role required: agent_client_collector_admin

About this task

Load balancers are not configured by default. Follow this procedure to configure a load balancer
in your environment.

Procedure
1. Configure the load balancer so that it can be used in the backend-url parameter in the
acc.yml configuration file.
2. Perform the following setup actions on the load balancer:
a. Increase the idle timeout to 300 seconds.
b. Configure the load balancer target group with https and port 443.
Configure all MID Servers behind the load balancer as targets.
c. Configure the load balancer health check to monitor the
<mid_server_install_path>/static/hello.txt file created during MID Server
setup.
The health check ensures that there are no communication interruptions between the load
balancer and the MID Server.
3. Add the <mid_server_install_path>/static/hello.txt file to the static folder
for each MID Server.
You can place the file in another location that doesn't require credentials, to simplify the setup.
4. Update the acc.yml configuration file with the appropriate FQDN (backend-url value) and
port number, and turn off automatic MID Server selection.
backend-url:
- wss://<fqdn>:<port>/ws/events
enable-auto-mid-selection: false
5. Restart the Agent Client Collector.

Result

The Agent Client Collector data flow proceeds as described in Agent Client Collector
architecture.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4165


<!-- page 4166 -->
Note:
When working with SSL, all certificates or certificate chains used by the configured MID
Servers must be signed by root certificate authorities whose certificates are bundled inside
a single .pem file. To transfer the signed certificates to the agent, specify the .pem file in
the trusted-ca-file property of the agent’s .yml configuration file. For information
on enhancing security with SSL/TLS configuration, see the ITOM Agent Client Collector
documentation material
article in the Now Support Knowledge Base.
Upgrade an agent in an instance
Perform selective self-upgrade instead of bulk upgrade for enhanced efficiency when working
with agents that are difficult to access, such as agents deployed in the cloud. You can perform
selective upgrade on up to 20 agents at a time.

Before you begin

Note: Selective upgrade is available for the agents version 2.7.0 and above.

Supported Operating Systems: Windows and Linux.
Ensure that data files are up to date by restarting the MID Server and collecting host data. For
details on collecting host data, see Run host data collection on demand.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4166


<!-- page 4167 -->
Note:
When working in a Linux environment, ensure that you have sudo permissions and that the
following configurations are set:
Linux Operating Systems
OS

OS version

CentOS,Red Hat

7, 8

Commands

• /usr/bin/
systemctl
start acc

Agent version

2.7

• /usr/bin/
systemctl
stop acc
• <systemctl
location>
daemon-reload
(default location is
/usr/bin)
• /usr/bin/
rpm -Uv
<cache dir
location>/
upgrade/
agent-clientcollectorupgrade.rpm
Default cache
directory location:
/var/cache/
servicenow/
agent-clientcollector
• unzip -o:
Unzips the
signature file
to validate the
installation.
• openssl
dgst -sha256
-verify: Verifies
use of a signature
from a servicenow
installation file.
Debian, Ubuntu

• /usr/bin/
systemctl
start acc
• /usr/bin/
systemctl
stop acc

2.7

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

• <systemctl
location>

4167


<!-- page 4168 -->
When connecting via a MID Server, ACC installs need to access one of the following URLs:
• https://<MID-WEBSERVER-URI:PORT>/static/acc_installers/agentclient-collector
• https://install.service-now.com/
When upgrading MID-less agents, upgrade is performed at the URL set in the agentupgrade-url-path property of the acc.yml file. If no URL is set at this property, upgrade
is performed by downloading the installer script from the following Content Delivery Network
(CDN) URL: https://cdn-install.sncapps.service-now.com/glide/
distribution/builds/package

Note: When using a CDN, send your download request through a proxy server, for added
security. For details, see Configure proxies when performing MID-less upgrade using a
Content Delivery Network (CDN).
Select the version to which you want to upgrade your agent.
1. Navigate to All > System Properties > All Properties.
2. Select New.
3. Assign the following values:
◦ Name = sn_agent.agent_upgrade_version
◦ Type = string
◦ Value = The version number to be upgraded to, in the format
<major_version.minor_version.patch_version>. For example: 4.3.2
4. Select Submit.
If you do not select a version, the agent automatically upgrades to the current Agent Client
Collector Framework scoped app version.
Role required:
• Windows: Local SYSTEM account (Agent Client Collector service running as Local System)
• Linux: sudo rpm/dpkg
• macOS: sudo pkg

About this task

Agent Client Collector supports selective self-upgrade in the following operating systems:
• Windows: Due to Windows UAC restrictions, the agent must run as a local SYSTEM account to
perform the upgrade via msiexec.
• Linux: RPM and DEB

Procedure
1. Navigate to All > Agent Client Collector > Agents.
2. Select the agent that you want to upgrade.
3. In the Related Links section, select Upgrade agent.
4. In the confirmation dialog box, select Upgrade.
The Agent Upgrade Histories page appears, where you can monitor the upgrade progress in
the State column, which displays either Success or Failed.
5. View the log for the agent upgrade in the Message column.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4168


<!-- page 4169 -->
For a failed upgrade on a Linux machine, navigate to the <cache directory
location>/upgrade/agent-client-collector-upgrade.rpm file and ensure
that the configurations are set for the relevant OS, according to the Linux Operating Systems
table, above.
For a failed upgrade on a Windows machine, check the relevant log file, located at <user
folder>\AppData\Local\Temp\ACC_Logs:
◦ ACC logs: ACC_Upgrade.log
◦ MSI logs: MSI_ACC_Upgrade.log
Upgrade multiple agents in an instance
When performing selective upgrade of an agent in an instance, you can select multiple instances
to upgrade at once.

Before you begin

Supported Operating Systems: Windows and Linux.
Agent Client Collector installs need to access this URL: https://install.servicenow.com/. MID connected agents can download the installer from the MID Server (https://
<MID-WEBSERVER-URI:PORT>/static/acc_installers/agent-clientcollector).
Select the version to which you want to upgrade your agent.
1. Navigate to All > System Properties > All Properties.
2. Select New.
3. Assign the following values:
◦ Name = sn_agent.agent_upgrade_version
◦ Type = string
◦ Value = The version number to be upgraded to, in the format
<major_version.minor_version.patch_version>. For example: 4.3.2
4. Select Submit.
If you do not select a version, the agent automatically upgrades to the current Agent Client
Collector Framework scoped app version.
When working with MID-less agents, ensure that the agents are connected to a Content Delivery
Network (CDN). For details, see Configure proxies when performing MID-less upgrade using a
Content Delivery Network (CDN).
Role required: agent_client_collector_admin

About this task

You can select up to 20 agents at a time for upgrade. To upgrade large numbers of agents,
incorporate the Agent Client Collector into your software deployment tools.

Procedure
1. Navigate to All > Agent Client Collector > Agents.
2. Select the check box next to the agents that you want to upgrade.
You can select up to 20 agents.
3. In the Actions on selected rows... box, select Upgrade agent.
4. In the confirmation dialog box, select Upgrade.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4169


<!-- page 4170 -->
Related topics
Upgrade an agent in an instance
Perform high-volume Agent Client Collector upgrade
Perform high-volume Agent Client Collector upgrade
Perform high-volume upgrade of your Agent Client Collector agents when you want to upgrade
all of your agents at one time.

Before you begin

Configure the Agent Client Collector web server. For details, see Configure the websocket server
on the MID Server.
Ensure that the MID Server, MID Web Server, and the MID Server websocket server are running.
Select the version to which you want to upgrade your agent.
1. Navigate to All > System Properties > All Properties.
2. Select New.
3. Assign the following values:
◦ Name = sn_agent.agent_upgrade_version
◦ Type = string
◦ Value = The version number to be upgraded to, in the format
<major_version.minor_version.patch_version>. For example: 4.3.2
4. Select Submit.
If you do not select a version, the agent automatically upgrades to the current Agent Client
Collector Framework scoped app version.
Roles required: agent_client_collector_admin
• In a Windows environment: Local SYSTEM account
• In a Linux environment: sudo rpm/dpkg
• In a macOS environment: sudo pkg

About this task

High-volume upgrade is supported only in a Windows or Linux environment.
High-volume upgrade does not support Agent Client Collector to MID Server communication via
mTLS.
When performing high-volume upgrade, all agents that aren't using the most up-to-date version
are upgraded. No upgrade is performed on agents already using the upgraded version.
An agent is excluded from high-volume upgrade when you reach the failed
upgrade limit for an agent. The failed upgrade limit is specified in the
sn_agent.auto_upgrade.retry_limit system property. The default value for this
property is 3.
• This property applies to both high-volume and selective upgrades that have failed.
• When an agent reaches the failed upgrade limit, an Agent Client Collector administrator can
still run selective upgrade on the agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4170


<!-- page 4171 -->
• You can manually reset the failed upgrade limit by selecting the Reset failed upgrade attempts
option on the agent page (select All > Agent Client Collector > Agents and select an agent).
• After a successful upgrade, the upgraded agent is considered to have zero failed upgrades (for
future upgrades).

Procedure
1. Verify that the version number you want to upgrade to is available.
a. Navigate to All > System Properties > All Properties.
b. Locate the sn_agent.agent_version property.
Verify that the version number displayed is a valid agent version, representing the version
that the agent will be upgraded to. If the version number is not valid, the version updates to
the sn_agent.agent_version number.
2. Enable the property on the System Properties table (All > System Properties > All Properties)
to activate the upgrade.
a. Locate the sn_agent.auto_upgrade.enabled property.
b. Set the property value to true.
Upgrading starts within one minute of enabling the property.

Result
• For agents connected to a MID Server: The scheduled job upgrades 50 agents on each MID
Server per hour. The maximum number of agents that can be upgraded at a time for all MID
Servers is 1,000.
• For MID-less agents: The scheduled job upgrades up to 1,000 agents per hour by default.
• For both MID Server and MID-less agents: To modify the number
of agents being upgraded at a time, update the value of the

sn_agent.auto_upgrade.max_upgrades_per_handler_per_hour property (All
> System Properties > All Properties). The default value is 1,000.

Note: Modifying this value can negatively impact system performance.
To modify the frequency of the upgrade, update the value of the Repeat Interval in the Upgrade
Agents Incrementally scheduled job (All > System Definition > Scheduled Jobs).
Repeat high-volume upgrade for failed agents
If high-volume upgrade fails for specific agents, you must clear the problematic agents' history
to re-enable upgrade. If the target upgrade version changes, you don't need to clear the agents'
history, as the agents upgrade with the next scheduled high-volume upgrade.

Before you begin

Roles required: agent_client_collector_admin
• In a Windows environment: Local SYSTEM account
• In a Linux environment: sudo rpm/dpkg
• In a macOS environment: sudo pkg

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4171


<!-- page 4172 -->
Procedure
1. Navigate to the Agent Client Collectors page All > Agent Client Collector > Agents.
2. Select an entry for which the Version number is not the highest available version.
3. Locate the Agent Upgrade Histories tab.

4. Underneath the check box icon
box that appears.

, hover next to a failed upgrade entry and select the check

5. Select the arrow next to the Actions on selected rows... drop-down and select Delete.

Result

The specified agents will be upgraded with the next scheduled high volume upgrade.
Configure proxies when performing MID-less upgrade using a Content Delivery Network
(CDN)
Create proxies for added security when upgrading MID-less agents via a Content Delivery
Network (CDN). You add proxy servers to the sn_agent_proxy table on the ServiceNow instance.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Package Download Proxies.
2. Select New to create a new proxy server.
3. Fill in the fields on the page.
Proxy - New record page fields
Field

Description

Name

A descriptive name to identify the proxy
server.

URL

The URL of the proxy server that is accessed
when the agent downloads the installer.
Enter the URL in the following format:
some.example.com:8800.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4172


<!-- page 4173 -->
Field

Description

Domain

Select one of the following:
◦ leaf: Select if domain separation is active,
and select the leaf domain for the proxy to
be used in.
◦ global: Select if domain separation is not
active.

Order

A number indicating which proxy is used first
when the agent downloads the installer from
the CDN. Lower numbers are used first.

Active

Select for the URL to be invoked.
Clear for the URL to be ignored.

If no proxy server is specified, the default of direct is invoked, instructing the agent to
download the installer directly from the CDN.
Restart an agent manually
Perform manual restart of an agent when the agent configuration file has been refreshed, or if
the agent is unstable. You can perform manual restart only on agents installed in a Windows
environment and for Linux-based agents that use systemd.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Agents.
The Agent Client Collectors page appears with the list of agents.

2. Select the check box of the agent you want to restart.
You can select multiple agents.
3. In the Actions on selected rows... list underneath the list of agents, select Restart agent.
A confirmation dialog box appears.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4173


<!-- page 4174 -->
4. Select Restart.
Alternatively, you can restart the agent from within the agent record by selecting the agent
name and, in the Related Links section, select Restart agent.

Agent Client Collector installation on a Linux OS system
Install Agent Client Collector on a system that uses a Linux OS, either using a single-line
command script, or following the installation procedure to embed in your own package
distribution mechanism. The installation procedure provides consistency when using package
distribution solutions.
Install Agent Client Collector on a Linux system
Install Agent Client Collector using a package distribution tool. Prior to installing, you can
manually install the Agent Client Collector on a few machines to ensure that your agents contain
the correct policies and checks before installing a large number of agents.

Before you begin
• Ensure that the Agent Client Collector Listener is configured on your MID Servers, and the
service is available from your target hosts.
• Verify that your server's OS and version is supported. For a list of supported OS's and versions,
see Agent Client Collector installation.
• Verify whether there are restrictions or requirements to be aware of during deployment, such
as specifying an account other than the default servicenow account. For more information
about embedding the agent into your own automated system, see ITOM Agent Client Collector
documentation material [KB1122613] .
• Ensure that the MID Server and its MID Web Server and ACC Websocket Endpoint extensions
are up and running.
• Retrieve the MID Server ACC Listener information to be specified in the agent's backendurl parameter.
1. Navigate to All > Agent Client Collector > Deployment > MID Servers.
2. Select a MID Server.
3. Select the ACC Websocket Endpoints tab.
4. Select a websocket endpoint.
5. Copy the value in the Endpoint URL field.
• Retrieve the MID Server API key specified in the agent's api-key parameter.
1. Navigate to All > Agent Client Collector > Deployment > MID Web Server API Key.
2. Select the API key you want to use.
3. In the Related Links section, select View API key.
4. Copy the API key value and close the pop-up window.
Role required: agent_client_collector_admin

About this task

During Linux installation (and upgrade), the agent executable file is enabled with Linux
capabilities (CAP_SETFCAP, CAP_SETPCAP) by default. Store apps such as Agent Client
Collector Log Analytics (ACC-L) can use this to grant capabilities to read the entire file system
(CAP_DAC_READ_SEARCH). The system undergoes various security measures, such as double
verification of the content origination, leveraging the plugin verification process and more, to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4174


<!-- page 4175 -->
ensure that granting capabilities does not pose a security risk. This procedure assumes that you
are familiar with commands for Linux capabilities.
To opt out of these enhanced capabilities, run the following commands, based on your Linux
OS/packaging system:
Linux enhanced capability opt-out commands
OS/Packaging System

RPM

Commands

ACC_SKIP_CAPS=true yum / dnf
localinstall
ACC_SKIP_CAPS=true rpm -vi
agent-client-collector-<version
number>-x86_64.rpm

Debian

ACC_SKIP_CAPS=true apt-get
install
ACC_SKIP_CAPS=true dpkg -i
agent-client-collector-<version
number>-<distro>_amd64.deb

SLES

ACC_SKIP_CAPS=true zypper
install

Procedure
1. Download the relevant installation packages.
◦ For manual installation:
a. Navigate to > Agent Client Collector > Deployment > Agent Downloads.
b. Download the relevant .rpm or .deb installation file.
c. Download the relevant signature files to validate the installation files.
◦ For command-line installation, run the following commands to download both the signature
and installation files to your local machine:
curl -LO
https://install.service-now.com/glide/distribution/builds/pa
ckage/app-signed/agent-client-collector-<version_number>-x86_
64.rpm
curl -LO
https://install.service-now.com/glide/distribution/builds/pa
ckage/app-signed/agent-client-collector-<version_number>-x86_
64-rpm-rpm.zip

Note: Each curl command must appear on a single line.
2. Optional: Verify the package signature.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4175


<!-- page 4176 -->
a. Extract the installation file (if it is compressed) by running the following command:
unzip agent_client-collector-<version_number>-x86_64-rpmrpm.zip
b. Validate the installation file signature by running the indicated commands.
▪ On an RPM-based system:
openssl dgst -sha256 -verify {<ServiceNow
DGST pem key>} -signature {<signature file>}
agent-client-collector-<version number>-x86_64.rpm
Where <ServiceNow DGST pem key> is the .pem file extracted from the .zip file,
and <signature file> is the .bin file extracted from the .zip file.
For example:
$ curl -sLO
https://install.service-now.com/glide/distribution/builds/p
ackage/app-signed/agent-client-collector-3.0.0-x86_64.rpm
$ curl -sLO
https://install.service-now.com/glide/distribution/builds/p
ackage/app-signed/agent-client-collector-3.0.0-x86_64-rpm-rp
m.zip
$ unzip agent-client-collector-3.0.0-x86_64-rpm-rpm.zip
Archive: agent-client-collector-3.0.0-x86_64-rpm-rpm.zip
inflating: ServiceNow_Digicert_DGST.pem
extracting: agent-client-collector-3.0.0-x86_64.bin
$ openssl dgst -sha256 -verify ServiceNow_Digicert_DGST.pem
-signature agent-client-collector-3.0.0-x86_64.bin
agent-client-collector-3.0.0-x86_64.rpm
Verified OK

Note: Each command must appear on a single line.
▪ On a Debian-based system:
(Optional) gpg --import ServiceNow_Digicert_Public.gpg
sudo gpg --verify agent-client-collector-<version number><distro>_amd64.deb
For example:
$ curl -sLO
https://install.service-now.com/glide/distribution/builds/p
ackage/app-signed/agent-client-collector-3.0.0-debian-9_amd6
4.deb
$ curl -sLO
https://install.service-now.com/glide/distribution/builds/p
ackage/app-signed/agent-client-collector-3.0.0-debian-9_amd
64-deb-deb.zip
$ unzip
agent-client-collector-3.0.0-debian-9_amd64-deb-deb.zip
Archive:
agent-client-collector-3.0.0-debian-9_amd64-deb-deb.zip
extracting: ServiceNow_Digicert_Public.gpg
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4176


<!-- page 4177 -->
$ gpg --import ServiceNow_Digicert_Public.gpg
gpg: /home/admin/.gnupg/trustdb.gpg: trustdb created
gpg: key 985DD52C6A0ABB45: public key "ServiceNow, Inc.
(Signing) <seceng@servicenow.com>"
imported
gpg: Total number processed: 1
gpg: imported: 1
$ dpkg-sig --verify
agent-client-collector-3.0.0-debian-9_amd64.deb
Processing
agent-client-collector-3.0.0-debian-9_amd64.deb...
GOODSIG _gpgbuilder 9B928FB49771DF6C047430DD985DD52C6A0ABB45
1665054068

Note: Each command must appear on a single line.
3. Install the Agent Client Collector package using the package manager associated with Linux
distribution.

OS

Command

RHEL-based

yum / dnf localinstall

SLES

zypper install

Debian-based

apt-get install

Alternatively, if these commands are not configured correctly, you can use the core commands
that are configured to run with the package manager commands.
◦ RPM-based system: # rpm -vi agent-client-collector-<version
number>-x86_64.rpm
◦ Debian-based system: # dpkg -i agent-client-collector-<version
number>-<distro>_amd64.deb
Verify that the package commands are configured correctly with your system administrator.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4177


<!-- page 4178 -->
Note: Some file systems may have restrictions enabled; for example, /var/ may be
mounted with a noexec flag. Because the agent must execute Agent Client Collector
plugins that are normally store in the /var/cache directory, you must deploy the
application into specific folders by customizing the installation paths using the -relocate option as an .rpm parameter.
For example: rpm -i --relocate /var/cache=/opt/cache agentclient-collector-<version_number>-x86_64.rpm
The following paths can be relocated:

Path

Notes

/etc

When updating, you must also update the
allow-list parameter in the acc.yml
file with the new path.

/usr/share

N/A

/var/cache

Updating the /var directory retains all /
var subdirectories, nested under the new
directory.

/var/log
/var/run
/var

Review the paths in /usr/lib/systemd/system/acc.service to ensure that
they appear as expected.
4. When installing a .deb package, configure the agent's acc.yml configuration file.
a. Copy the sample configuration file by running the following command.
# cp -p /etc/servicenow/agent-client-collector/
acc.yml.example /etc/servicenow/agent-client-collector/acc.yml
b. Rename the allow list file.
# cp -p /etc/servicenow/agent-client-collector/check-allowlist.json.default /etc/servicenow/agent-client-collector/checkallow-list.json

Note: This step is not relevant for .rpm packages, which come with acc.yml and
check-allow-list.json files included in the base system.
5. Update the configuration file, adding check-allow-list.json to /etc/servicenow/
agent-client-collector and copying the backend-url and api-key from the
instance.
For example:
--# Agent Client Collector configuration
backend-url:
- "wss://YOUR_MID_ENDPOINT_HERE:YOUR_MID_PORT_HERE/ws/events"
api-key: "YOUR_API_KEY_HERE"
log-level: "info"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4178


<!-- page 4179 -->
insecure-skip-tls-verify: false
allow-list: /
etc/servicenow/agent-client-collector/check-allow-list.json
verify-plugin-signature: true
max-running-checks: 10
disable-sockets: true
disable-api: true
statsd-disable: true
enable-auto-mid-selection: false
agent_cpu_threshold:
cpu_percentage_limit: 25
repeated_high_cpu_num: 3
monitor_interval_sec: 60
agent_cpu_threshold_disabled: false
The allow-list feature, indicating the commands permitted to be executed by the agent, is
enabled.
6. Configure sudoers.
Configuration is typically automated by your Linux sysadmin. To configure manually if you want
to ensure correctness before full configuration, run the following.
# visudo -f /etc/sudoers.d/01_servicenow
User_Alias ACC_USERS = servicenow
Cmnd_Alias ACC_CMD = /usr/sbin/dmidecode -s
baseboard-serial-number,/usr/sbin/dmidecode
-s chassis-serial-number,/usr/sbin/dmidecode
-s system-serial-number,/usr/sbin/dmidecode -s
system-uuid,/usr/sbin/ss -tanp
Cmnd_Alias ACC_CMD_SETENV = /usr/bin/netstat -ltnup,/usr/bin/ls
-l /proc/*,/usr/bin/cat /proc/*
ACC_USERS ALL = (root) NOPASSWD:ACC_CMD
ACC_USERS ALL = (root) NOPASSWD:SETENV:ACC_CMD_SETENV
Defaults:ACC_USERS !requiretty
7. Configure the agent to run as a service.
a. Safeguard resource consumption by adding the indicated values to the /usr/lib/
systemd/system/acc.service file.
▪ CPUShares=128
▪ CPUQuota=10%
▪ MemoryLimit=192M
▪ BlockIOWeight=10
▪ LimitNICE=15
For example:
# vi /usr/lib/systemd/system/acc.service
[Unit]
Description=Agent-Now acc
After=network-online.target
[Service]
Environment=AGENT_ROOT=/usr/share
Environment=AGENT_CACHE_ROOT=/var/cache
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4179


<!-- page 4180 -->
Environment=AGENT_CONFIG_ROOT=/etc
Environment=AGENT_LOG_ROOT=/var/log
Environment=AGENT_RUN_ROOT=/var/run
Environment=RUBYOPT=-Eutf-8
User=servicenow
Group=servicenow
ExecStart=/usr/share/servicenow/agent-client-collector/bin/a
cc-service start acc
KillMode=process
Restart=on-failure
RestartSec=1min
CPUShares=128
CPUQuota=10%
MemoryLimit=192M
BlockIOWeight=10
LimitNICE=+15
[Install]
WantedBy=network-online.target
b. Run the reload daemon command If you modified the service file after enabling the acc
service.
# systemctl daemon-reload
c. Enable and start the service by running the following commands.
# systemctl enable acc
# systemctl start acc
Validate Linux installation
After installing the Agent Client Collector on a Linux system, validate the installation by ensuring
it was completed properly.

Before you begin

Install the Agent Client Collector on a Linux system (see Install Agent Client Collector on a Linux
system).
Role required: agent_client_collector_admin

Procedure
1. Run the # systemctl status acc command.
The active (running) indicator appears when the service is running properly.
# systemctl status acc
● acc.service - Agent-Now ACC
Loaded: loaded (/usr/lib/systemd/system/acc.service; enabled;
vendor preset: disabled)
Active: active (running) since Mon 2022-04-25 14:10:24 UTC; 6
months 23 days ago
Main PID: 2693 (acc)
Tasks: 10 (limit: 512)
Memory: 143.4M (limit: 192.0M)
CPU: 12h 57min 50.442s
CGroup: /system.slice/acc.service
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4180


<!-- page 4181 -->
└─2693 /usr/share/servicenow/agent-client-collector/bin/acc
start --config-file
/etc/servicenow/agent-client-collect...
2. View the encrypted api-key and agent-key-id in use by running the grep -E
'^api-key|agent-key-id' /etc/servicenow/agent-client-collector/
acc.yml command.
# grep -E
'^api-key|agent-key-id' /
etc/servicenow/agent-client-collector/acc.yml
api-key:
"encrypted:adskfjldfjlasd+ajflksadjmoreunreadablestringasdfdfk
djksdjaasdfas"
agent-key-id:
b4ac2ab4ac2b4ac2b4ac2b4ac2b4ac2b4ac2b4ac2b4ac2b4ac2b4ac2b4ac2
b4a

Note: The grep command must appear on a single line.
3. View the agent's connection with its backend URL by running the grep 'successfully
connected' /var/log/servicenow/agent-client-collector/acc.log
command.
# grep 'successfully
connected' /var/log/servicenow/agent-client-collector/acc.log
2022-11-17T19:03:17.94 [INFO] [agent] successfully connected to
the url:
wss://MY_BACKEND_FQDN:MY_BACKEND_PORT/ws/events

Note: The grep command must appear on a single line.
4. Verify the unique agent ID by running the # echo $(hexdump -e '/1 "%02x"' /
var/cache/servicenow/agent-client-collector/agent_now_id)
command.
# echo $(hexdump -e '/1
"%02x"' /
var/cache/servicenow/agent-client-collector/agent_now_id)
14b4443df6d2394d
The indicated agent ID appears on the Agents page in an instance (All > Agent Client
Collector > Agents) with Status = Up and Host data collection = Collected (both appearing in
green).
Linux agents - green status

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4181


<!-- page 4182 -->
Upgrade Agent Client Collector on a Linux system
Upgrade your existing Agent Client Collector version on a system running a Linux OS if the
single-line command script is not connected to the instance or you want to use enhanced
customization options.

Before you begin
• The upgrade procedure is the same for both MID Server and MID-less deployments.
• Role required: agent_client_collector_admin

Procedure
1. Optional: Back up sensitive files by running the following command.
tar
-Pcvzf /root/acc_backup.tar.gz /
etc/servicenow/agent-client-collector \
/var/cache/servicenow/agent-client-collector/agent_now_id \
/usr/lib/systemd/system/acc.service
2. Download the .rpm/.deb agent package and signature files, as described in Install Agent Client
Collector on a Linux system.
3. Upgrade the package.
◦ In an RPM-based system:
rpm -Uv agent-client-collector-<version number>-x86_64.rpm
◦ In a DEB-based system:
dpkg -i agent-client-collector-<version number><distro>_amd64.deb
4. Restore the systemd service file (if you customized the file), using either an automation tool or
by reloading systemd configuration.
tar -C / -Pxvzf /root/acc_backup.tar.gz
usr/lib/systemd/system/acc.service
systemctl daemon-reload
5. Change the owner:group setting to the correct one by running the following command.
chown -R
servicenow:servicenow /
{etc,var/cache,var/log,usr/share}/servicenow/agent-client-colle
ctor
6. Restart the service and verify that it connects to its backend-url.
systemctl restart acc
tail -f /var/log/servicenow/agent-client-collector/acc.log
Uninstall Agent Client Collector from a Linux system manually
Uninstall the Agent Client Collector from a Linux machine manually if the command script is
unavailable due to the specific agent not being connected to the instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4182


<!-- page 4183 -->
Before you begin
• The uninstall procedure is the same for both MID Server and MID-less deployments.
• Role required: agent_client_collector_admin

About this task

By default, an uninstalled agent is removed from the system after 30 days. To modify this amount
of time, update the sn_agent_ci_extended_info table, accessible from the Auto Flushes
page (enter sys_auto_flush.LIST into the instance's search filter field).

Procedure
1. Stop the service.
sudo systemctl stop acc
2. Use the relevant package management tool to remove the service.
◦ yum remove agent-client-collector
◦ apt-get remove agent-client-collector
◦ zypper remove agent-client-collector
Alternatively, you can run one of the following commands, based on the OS in use.
◦ rpm -e agent-client-collector
◦ dpkg -r agent-client-collector
3. If you ran either the rpm or dpkg command, remove any remaining files from your system.
# userdel -r servicenow
# groupdel servicenow
# rm
-R /
{etc,var/cache,var/log,usr/share}/servicenow/agent-client-colle
ctor

Warning: Do not use the command rm -Rf, as this can cause data loss.
Perform a single-line Agent Client Collector installation on Linux
Use an efficient single-line command script to install Agent Client Collector on a machine that
uses a Linux operating system. If a script is not connected to the instance or you want to use
enhanced customization options, you might have to install Agent Client Collector manually.

Before you begin
• Ensure that you have configured the Agent Client Collector web server.
• Verify that your server's OS and version matches the list of supported OS versions as
described in Agent Client Collector installation.
• Ensure that the unzip program is installed on your Linux machine.
• Determine the resource limits for the agent to be configured in the /usr/lib/systemd/
system/acc.service file after installation.
• Ensure that you have the openssl and dgst (for RHEL/Centos/SUSE installation) packages
available, to be used by the install script.
• Ensure that you have the gpg package available for validation (for Ubuntu/Debian installation).
• When performing single-line installation on more than one agent, download the agent package
to your local machine. Place the package on your ftp server, using an Ansible script. For
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4183


<!-- page 4184 -->
details on mass deployment of agents, see Incorporating the Agent Client Collector into a
custom base image for mass deployment.
• In order for the Agent to retrieve the OS serial numbers and TCP connections along with
associated running processes, sudo access for “dmidecode” and “ss” is required on Linux
systems.
Role required: agent_client_collector_admin

Procedure
1. Retrieve MID Server websocket URL parameters.
a. Navigate to Agent Client Collector > Websocket Endpoint and select the relevant
websocket endpoint.
b. Copy the value of the Endpoint URL field to be used in the installation command.
2. Copy and edit the following command line, substituting your own information for the command
parameters.
ACC_API_KEY=<api_key> ACC_MID=wss://<mid_ip>:<websocket_port>/
ws/events bash -c "$(curl -L https://<instance URL>/api/
sn_agent/agents/install_agent)"
Command parameters
Parameter

Value

ACC_API_KEY

The API key used to access the MID Server
websocket.
If no ACC_API_KEY value is specified, you will
be asked to enter the API key value during
execution of the script.

ACC_MID

The URL of the MID Server websocket.
If you are specifying multiple MID Servers,
enter a string separated by commas for each
MID Server.

3. Optional: If you need to create new check definitions to be included in the allow list
that indicates the checks enabled to run on the agent, disable the allow list by adding
ACC_ALLOW_LIST=0 to the single-line command string.

Note: This action compromises your system's security and is recommended only
as a temporary measure until you finish updating the allow list. After completing the
update, re-activate the allow list by removing ACC_ALLOW_LIST=0 from the single-line
command string.
4. Optional: If the certificate validation process is too time consuming or if you are using
the agent for development purposes, you can bypass certificate validation by adding
ACC_VALIDATE_SIG=0 to the single-line command string.
5. Run the single-line command (specified in step 2, above) on the server where the Agent Client
Collector is installed.
6. Optional: Configure resource limits for the agent in the /usr/lib/systemd/system/
acc.service file, according to your business needs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4184


<!-- page 4185 -->
(Optional) The default values in the file are:
◦ CPUShares: 128
◦ CPUQuota: 10%
◦ MemoryLimit: 192M
◦ BlockIOWeight: 10
◦ LimitNICE: +15
Upgrade the Agent Client Collector manually on a Linux system
Perform a manual upgrade of your existing Agent Client Collector version on a system running a
Linux OS if the single-line command script is not connected to the instance or you want to use
enhanced customization options.

Before you begin
• Ensure that you have configured the Agent Client Collector web server. For more information,
see Configure the websocket server on the MID Server.
• Restart the MID Web Server.
• Collect host data, to ensure that all files are up to date. For details, see Run host data collection
for an agent.
• Ensure that you have installed a Linux version of the Agent Client Collector. For more
information, see Agent Client Collector installation on a Linux OS system.
• Role required: agent_client_collector_admin

About this task

The upgrade procedure is the same for both MID Server and MID-less deployments.

Procedure
1. Back up the agent-id and configuration files.
mkdir -p /tmp/acc-upgrade-backup
sudo cp
-rp /etc/servicenow/agent-client-collector/acc.yml /
tmp/acc-upgrade-backup
sudo cp
-rp /
etc/servicenow/agent-client-collector/check-allow-list.json /
tmp/acc-upgrade-backup
sudo cp
-rp /
var/cache/servicenow/agent-client-collector/agent_now_id /
tmp/acc-upgrade-backup
2. Uninstall the package.
a. Stop the service.
sudo systemctl stop acc
b. Disable the service.
sudo systemctl disable acc

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4185


<!-- page 4186 -->
c. Uninstall the package:
▪ For RHEL/CentOS/SUSE: sudo rpm -e agent-client-collector
▪ For Ubuntu/Debian: sudo dpkg -r agent-client-collector
3. Download the installation file.
For example, when working with an Ubuntu/Debian OS, use both of the following:
curl -L -O https://<MID-WEBSERVER-URI:PORT>/static/
acc_installers/agent-client-collector/glide/distribution/builds/
package/app-signed/agent-client-collector-<version number><Ubuntu/Debian version>_amd64-deb-deb.zip -O
https://<MID-WEBSERVER-URI:PORT>/static/acc_installers/agentclient-collector/glide/distribution/builds/package/app-signed/
agent-client-collector/agent-client-collector-<version number><Ubuntu/Debian version>_amd64.deb
4. Verify and install the package.
a. Unzip the compressed file.
unzip agent-client-collector-2.3.0-debian-9_amd64-deb-deb.zip
b. Validate the installer file signature.
▪ RHEL/Centos/SUSE OS:
openssl dgst -sha256 -verify {<ServiceNow DGST pem key>}
-signature {<signature file>} agent-client-collector-<version
number>-x86_64.rpm
▪ Ubuntu/Debian OS:
gpg --import ServiceNow_Digicert_Public.gpg
dpkg-sig --verify agent-client_collector-<version
number>-<Ubuntu/Debian version>_amd64.deb
c. Install the package.
▪ RHEL/CentOS/SUSE: sudo rpm -vi --force agent-client-collector<version number>-x86_64.rpm
▪ Ubuntu/Debian: sudo dpkg -1 agent-client-collector-<version
number>-<Ubuntu/Debian version>_amd64.deb
5. Restore the agent-id and configuration files.
sudo -u servicenow cp
-rp /tmp/acc-upgrade-backup/acc.yml /
etc/servicenow/agent-client-collector/acc.yml
sudo -u servicenow cp
-rp /tmp/acc-upgrade-backup/check-allow-list.json /
etc/servicenow/agent-client-collector/check-allow-list.json
sudo -u servicenow cp
-rp /tmp/acc-upgrade-backup/agent_now_id /
var/cache/servicenow/agent-client-collector/agent_now_id
6. Configure the agent to run as a service.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4186


<!-- page 4187 -->
sudo systemctl enable acc
7. Start the service.
sudo systemctl start acc
8. View the logs to verify that the startup was successful.
sudo tail -f /var/log/servicenow/agent-client-collector/acc.log
Uninstall Agent Client Collector from a Linux system using a single-line command
Uninstall the Agent Client Collector from a Linux machine by running an efficient single-line
command. If the script is not connected to the instance, you might have to uninstall Agent Client
Collector manually.

Before you begin
• The uninstall procedure is the same for both MID Server and MID-less deployments.
• Role required: agent_client_collector_admin

Procedure
Uninstall Agent Client Collector by running the following command in a command window where
<instance url> is the URL of the ServiceNow instance.
bash -c "$(curl -L https://<instance url>/api/sn_agent/agents/
install_agent)" -s "--remove" .

Note: Uninstalling the Agent Client Collector removes the acc.yml file and its directory
from your machine.

Agent Client Collector installation on a Windows machine
When installing the Agent Client Collector on a Windows machine, either download an
installation file and use a wizard to install the agent manually, or use silent installation to
automate agent installation and configuration. Manual installation enables you to test the agent
on a single system, while silent installation enables you to deploy the agent at scale.
Install Agent Client Collector on a Windows machine manually
Install Agent Client Collector on a Windows machine manually when you want to test the agent
on a single system.

Before you begin
1. Ensure that you’ve configured the Agent Client Collector web server. For details, see Configure
the websocket server on the MID Server.
2. Verify your server's OS and version.
3. When using Microsoft Internet Explorer, do the following to prepare the Agent Client Collector
installation file:
a. Navigate to Server Manager > Local Server.
b. Turn off IE Enhanced Security Configuration.
c. Download the installation file.
d. Change the extension of the installation file from .man to .msi
For troubleshooting, see KB2200094

article in the HI Knowledge Base.

Role required: agent_client_collector_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4187


<!-- page 4188 -->
Procedure
1. Navigate to Agent Client Collector > Agent Downloads.
2. To perform installation using the wizard:
a. Download the .msi file that is accessible from the link on the UI.
The Installation Wizard opens.
b. Select Next until you reach the MID Web Server Connection Settings page.

c. Enter the relevant parameters in the dialog box fields:
MID Web Server Connection Settings fields
Field name

Description

MID Web Server Name/IP

IP address of the MID Web server.

MID Web Server Port

Port number of the MID Web server. Use a
number between 1024-49151.

MID Web Server API Key

API key to access the MID Web server.

d. Select Next.
The Create Local User Account page appears.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4188


<!-- page 4189 -->
e. Select the relevant option in the dialog box.
Create Local User Account dialog box
Option

Description

Use default user (servicenow)

Default user with which to run the Agent
Client Collector on a Windows machine.
Selecting this option creates a local user
called servicenow as part of the installation.
The servicenow user password is randomly
generated and is not stored in the system.
A security event is created on the host
machine which, if repeated, requires
opening a support case. For details, see
KB1649116
article in the HI Knowledge
Base.

Select existing user

When selecting this option, configure the
following subfields:
▪ User Name: User name to log in to the
Windows environment.
▪ Password: Password of the selected user.
The user can be one of the following:
▪ Local user (created by the virtual machine
owner; provides added resiliency).
▪ Domain user (created by IT personnel).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4189


<!-- page 4190 -->
Option

Description

▪ Group Managed Service Account (gMSA):
Enter the name of the group managed
service account in the User Name field
and leave the Password field empty.
▪ Local Service Account: Enter
LOCALSERVICE in the User Name field
and leave the Password field empty.
▪ Local System Account: Enter SYSTEM
in the User Name field and leave the
Password field empty.
Due to Windows UAC restrictions, running
the agent as a local SYSTEM account
is necessary to perform an upgrade via
msiexec.

Note: Using a Local System account creates the local group ServiceNow Users,
and adds the created user to the group. The ServiceNow Users group has access to
Agent Client Collector directories and has the following privileges:
▪ Performance Monitor: Comes with the base system; enables viewing all
performance counters in the system.
▪ Log on as a service: Enables starting network services and services that run
continuously, even when no one is logged onto the console.
▪ Debug programs: Enables debugging processes and reading process details for
users outside the ServiceNow user group.
f. Select Create User.
The system creates a Windows user with the specified credentials, and the Agent Client
Collector Configuration page appears.
g. To enable the Allow-List containing the checks enabled to run after setup, select the Enable
executing command allow list check box on the resulting page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4190


<!-- page 4191 -->
h. Select Next to open the installation page.
When installation completes, click Next to complete and exit the wizard.
After a successful installation, the service starts automatically and generates the following:
▪ User: Default = servicenow (an existing user can also be configured to manage the
service). The servicenow user belongs to the local user group ServiceNow Users.
▪ Service: AgentClientCollector
▪ File location:
▪ Default for installation = C:\Program Files\ServiceNow\agent-clientcollector
▪ Default for service files = C:\ProgramData\ServiceNow\agent-clientcollector, which holds the cache, config, and log folders.
3. To run Silent installation to disable installation reports, run the command line appearing in the
Silent installation section of the procedure, as follows:
msiexec /i <msi_file_path> /quiet /qn /norestart
ACC_API_KEY=<key_value> ACC_MID=wss://<mid_ip>:<websocket_port>/
ws/events ACC_ALLOW_LIST=False
To enable the allow list of specified checks when running Silent installation, set the
ACC_ALLOW_LIST parameter to True.
4. To configure multiple MID Servers with Silent installation, run the command line appearing in
the Silent installation section of the procedure with comma-separated values, as follows:
msiexec /i <msi_file_path> /quiet /qn /
norestart ACC_API_KEY=<key_value> ACC_MID="wss:/
/<mid1_ip>:<websocket1_port>/ws/events,wss://
<mid2_ip>:<websocket2_port>/ws/events"

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4191


<!-- page 4192 -->
Insert the following parameter values in the command:
Command parameters
Parameter

Value

ACC_API_KEY

The API key used to access the MID Server
websocket.

ACC_MID

The URL of the MID Server websocket.

DENY_LOCAL_LOGON

When set to True, prevents any user other
than the default servicenow user from
logging onto the service.
Default value: False

PASSWORD_NEVER_EXPIRES

When set to True, the password for the
default servicenow user never expires.
Default value: False

START_SERVICE

When set to True, the Agent Client Collector
service automatically starts after installation.
Default value: True

LOCALUSERNAME

Account running the Agent Client Collector
as a Windows service. Possible values:
◦ SYSTEM
◦ LOCALSERVICE
◦ DOMAIN\gMSA$
◦ string (local username)
Default = servicenow
When using the SYSTEM, LOCALSERVICE, or
DOMAIN\gMSA$ accounts, you do not have
to configure a password.

LOCALPASSWORD

Password for the user specified in the
LOCALUSERNAME parameter.

The configured MID Server values are automatically added to the acc.yml file. The agent
connects to the first available MID Server in the list.
To configure a secondary MID server, enter the following syntax in the backend-url section
of the acc.yml file, per the .yml standard: - "wss://<MID IP>:<Web socket
port>/ws/events" (with the quotation marks).
Upgrade the Agent Client Collector manually on a Windows system
Perform a manual upgrade of your existing Agent Client Collector version on a system running a
Windows OS.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4192


<!-- page 4193 -->
Before you begin

Backup the Agent Client Collector configuration files, such as acc.yml, check-allowlist.json, agent_now_id and agent_now_keystore. The agent_now_id is located
in the cache directory: C:\ProgramData\Servicenow\agent-client-collector
\cache
Backing up configuration files is a safety precaution to safeguard the files during the upgrade.
Configuration files need to be restored only if there are upgrade issues which require new
installation.
Role required: agent_client_collector_admin

Procedure
1. Select the Windows button on your keyboard and enter Services to open the Services page.
2. Locate the Agent Client Collector service.
3. Right click the Agent Client Collector service and select Stop.
4. On the Windows Control Panel, select Uninstall a program.
5. Select the Agent Client Collector program and select Uninstall.
6. Navigate to Agent Client Collector > Agent Downloads and download the MSI Installer in the
Windows Downloads section.
7. Install the new agent, as described in Install Agent Client Collector on a Windows machine
manually.
You can use either the manual or single-line procedure. When restoring backup files, the
system replaces the configuration file values.
8. After installation is complete, stop the service.
9. Restore the agent_now_id and agent_now_keystore configuration files.
10. Restart the Agent Client Collector service.
Uninstall the Agent Client Collector manually from a Windows machine
Uninstall the Agent Client Collector from a Windows machine manually instead of using the
single-line procedure. Use the manual procedure if the command script is unavailable due to the
specific agent not being connected to the instance.

Before you begin

Role required: agent_client_collector_admin

Procedure
Uninstall the Agent Client Collector in the Windows Control Panel.
Install Agent Client Collector on a Windows machine using silent installation
Install Agent Client Collector on a Windows machine using silent installation when you want to
deploy the agent at scale.

About this task

Silent installation automatically creates a local user called servicenow (unless another existing
user is invoked with the LOCALUSERNAME parameter, as described in the command parameters
table in the following procedure). The servicenow user password is randomly generated and
is not stored in the system. A security event is created on the host machine which, if repeated,
requires opening a support case. For details, see KB1649116
article in the Now Support
Knowledge Base.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4193


<!-- page 4194 -->
Before you begin

ACC installs need to access this URL: https://install.service-now.com/.
Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Deployment > Agent Downloads.
2. From the Windows Download section, download the MSI installer by selecting the Download
icon (

).

3. To run Silent installation to disable installation reports, run the command line appearing in the
Silent installation section of the procedure, as follows:
msiexec /i <msi_file_path> /quiet /qn /norestart
ACC_API_KEY=<key_value> ACC_MID=wss://<mid_ip>:<websocket_port>/
ws/events ACC_ALLOW_LIST=False
To enable the allow list of specified checks when running silent installation, set the
ACC_ALLOW_LIST parameter to True.
4. To configure multiple MID Servers with Silent installation, run the command line appearing in
the Silent installation section of the procedure with comma separated values, as follows:
msiexec /i <msi_file_path> /quiet /qn /
norestart ACC_API_KEY=<key_value> ACC_MID="wss:/
/<mid1_ip>:<websocket1_port>/ws/events,wss://
<mid2_ip>:<websocket2_port>/ws/events"
Insert the following parameter values in the command:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4194


<!-- page 4195 -->
Command parameters
Parameter

Type

Value

ACC_API_KEY

String

The API key used to access
the MID Server websocket.

ACC_MID

String

The URL of the MID Server
websocket.

ACC_ALLOW_LIST

Boolean

Indicates whether the allowlist is enabled (True) or
disabled (False).
Default = True

START_SERVICE

Boolean

Indicates whether the agent
starts automatically upon
installation (true) or must be
started manually (false).
Default = True

LOCALUSERNAME

String

Account running the Agent
Client Collector as a Windows
service. Possible values:
◦ SYSTEM
◦ LOCALSERVICE
◦ DOMAIN\gMSA$
◦ string (local username)
Default = servicenow
When using the SYSTEM,
LOCALSERVICE, or DOMAIN
\gMSA$ accounts:
◦ You do not have to
configure a password.
◦ You must run the
relevant .msi command,
as described in
Account commands for
LocalService, LocalSystem,
and gMSA during Windows
installation.

LOCALUSERPASSWORD

String

Password used to access the
agent.
Default = <randomly
generated password>

ISDOMAIN

Boolean

Assigns a domain user
account to the Windows
service. Possible values:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4195


<!-- page 4196 -->
Parameter

Type

Value

◦ 0 - DOMAIN is ignored
◦ 1 - DOMAIN is used
DOMAIN

String

PASSWORD_NEVER_EXPIRES Boolean

Indicates the user domain.
Applies only to domain user
accounts (not gMSA)
Indicates whether the user
password expires (false) or
never expires (true).
Default = false

The configured MID Server values are automatically added to the acc.yml file. The agent
connects to the first available MID Server in the list.
To configure a secondary MID server, enter the following syntax in the backend-url section
of the acc.yml file, per the .yml standard: - "wss://<MID IP>:<Web socket
port>/ws/events" (with the quotation marks).
For the <MID IP> value, you can assign either the MID FQDN or CNAME. To enable high
availability, use either the Auto MID Selection algorithm, or manage a virtual IP with a load
balancer. For more information, see the ITOM Agent Client Collector documentation material
[KB1122613]
article in the HI Knowledge Base.
Uninstall Agent Client Collector from a Windows system using a single-line command
Uninstall the Agent Client Collector from a Windows machine by running an efficient single-line
command. If the script is not connected to the instance, you might have to uninstall Agent Client
Collector manually.

Before you begin

Role required: agent_client_collector_admin

Procedure
Uninstall Agent Client Collector by running the following command in a command window.
msiexec /quiet /x <path_to_acc_msi_file> .

Note: Uninstalling the Agent Client Collector removes the acc.yml file and its directory
from your machine.

Create and edit Agent Client Collector plugins
You can edit the default plugins, or you can add new plugins, as needed. Creating and editing
plugins customizes the Agent Client Collector monitoring capabilities.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Configuration > ACC Plugins.
2. Click New.
The Agent Client Collector Plugin - New record page appears.
3. Enter values in the fields on the page, as described in the following table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4196


<!-- page 4197 -->
Agent Client Collector Plugin fields
Field

Description

Name

Name of the plugin. This field is populated
automatically with the name of the tar.gz file
attached to the plugin, and is visible only
when selecting an existing record.

Description

Description of the plugin.

Operating System

Select the operating system to be monitored
by the plugin.

Platform

Select the platform to be monitored by the
plugin.

Active

Select to activate the plugin and download it
to the MID server.

Advanced

Select to enable selecting the operating
system version to be monitored by the plugin.

OS Version

Select the operating system version to be
monitored by the plugin. This field is visible
only when selecting the Advanced check
box.

4. Attach the tar.gz file to the plugin record, according to the instructions that appear on the UI
page.
Secure a custom plugin with a certificate
When you customize or create an Agent Client Collector plugin, you can secure the plugin
with either a third-party certificate or an internal secure certificate in the plugin's script. Official
plugins are signed by an external certificate authority.
Using a self-signed certificate is enabled by default. To disable this feature, set the verifyplugin-signature property to False. When you disable a self-signed certificate, your
configured plugins use no certificate.
For details on how to configure a self-signed certificate by using OpenSSL, see Enable OpenSSL
secure signing for plugins. For details on how to configure a third-party certificate, consult the
third-party vendor's documentation.
When the agent's current certificates can't validate a plugin, Agent Client Collector requests
the updated certificates from its synchronized MID Server. You can manually refresh the agent
to receive these certificates before the scheduled synchronization. For details, see Manually
refresh Agent Client Collector certificates.
You can manually save the certificates in a directory on the MID Server that is connected to the
installed agents. Any agent that's installed in your environment can then access the certificates
from that MID Server.
For details on how to configure the certificate synchronization properties, see Synchronization
properties for validating Agent Client Collector plugins.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4197


<!-- page 4198 -->
Optimize distribution of agents to MID Servers
Optimize the distribution of agents by allowing redistribution from one MID Server to another.
Agents will always be connected to the MID Server with the fastest response time.

Before you begin

Ensure that the following settings are configured:
• The sn_agent.enable_auto_mid_selection system property is set to true. When
using the acc.yml file, the property is enable_auto_mid_selection.
• On the MID Server page (Agent Client Collector > MID Server):
◦ Status: Up
◦ Validated: Yes
Role required: agent_client_collector_admin

About this task

Only validated MID Servers can accept connections from agents.

Procedure
1. Navigate to Agent Client Collector > Deployment > MID Servers.
2. On the MID Servers [Agent Client Collector view] page, select the check box next to the MID
Server from which you want to redistribute agents.
3. In the Actions on selected rows list, select Try redistributing connected agents.
Note the number of agents assigned to your MID Servers.
4. Refresh the page to view the results of the redistribution attempt.
The values in the Number of agents column for any affected MID Server will show a change if
any agents were redistributed.

View the Agent Client Collector configuration file for an agent
View the acc.yml Agent Client Collector configuration file without having to access the host
server by retrieving the file from an agent.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Agents.
2. On the Agent Client Collectors page, select an agent.
3. In the Related Links section, select Grab agent config (acc.yml).
A message appears on the page that indicates that the file is attaching.
4. Wait several seconds and refresh the page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4198


<!-- page 4199 -->
The acc.yml configuration file appears as an attachment on the agent.

Related topics
Configuration file options

Create an Agent Client Collector configuration data file
Create an Agent Client Collector configuration data file and associate it with check definitions so
that you can view the information about your instance. You can also add or delete an attachment
to the configuration data files, which are used by check definitions during check executions.

Before you begin

Role required: agent_client_collector_admin

About this task

A check definition is an individual check entry in the system. For details, see Agent Client
Collector configuration data files.
Configuration data file attachments contain instance data, such as configuration item (CI)
information, which is used when executing a check.
Domain separation is supported in the Agent Client Collector configuration data files.

Procedure
1. Navigate to All > Agent Client Collector > Configuration > Configuration Files.
2. Select New.
3. Add or remove an attachment.
Action

Description

Synchronize the record and the relevant MID
Servers.
a. Select the paper clip icon
Add a file

.

The Attachments dialog box opens.
b. Select Choose file and select a file to at­
tach.
c. Close the Attachments dialog box.

Delete a file

Optionally, delete an attachment you don’t
want to be associated with the record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4199


<!-- page 4200 -->
Action

Description

a. Select Manage Attachments.
The Attachments dialog box opens.
b. Select the check box next to the attach­
ment that you want to remove.
c. Select Remove.
The attachment name must be unique for each domain and can consist only of alphanumeric
characters.
If the attachment contains invalid characters or is a duplicate of another attachment, the
following situations occur:
◦ The configuration file is automatically set to Active = False.
◦ A message appears in the Error column indicating a problem with the attachment.
Each record can contain only one attachment.
4. Optional: In the Description field, enter a description for the configuration data file.
5. Select Submit.

Result
• The configuration data file is listed on the Agent Client Collector Configuration File page.
• The Name value is automatically set to the name of the attachment.
Checks use the configuration data file with instance data during check execution.

Validate plugins on the MID Server
Validate plugins on your MID Server to ensure that they match the plugins on your ServiceNow
instance. Validating plugins ensures that the instance provides accurate data on all of your MID
Server plugins.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Deployment > MID Servers.
2. Select a MID Server entry on the MID Servers page.
3. Select the Validate ACC Plugins link.
The Queues page appears, displaying the ECC queue.
4. Refresh the queue to view the new input record.
5. Select the record to view its results.
Validation status is visible in the Payload section of the form.
If plugins aren't validated, restart the MID Server. Plugins sync automatically when the MID
Server restarts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4200


<!-- page 4201 -->
Validate plugins on agents
Validate plugins on your agents to ensure that they match the plugins on your ServiceNow
instance. Validating plugins ensures that the instance provides accurate data on all of your
agents' plugins.

Before you begin

Role required: agent_client_collector_admin

About this task

Only plugins that are able to be executed are validated. For example, if you’re running an agent
on a macOS, only macOS plugins on your instance are validated.

Procedure
1. Navigate to All > Agent Client Collector > Agents.
2. Select an agent on the Agent Client Collectors page.
3. Select the Validate ACC Plugins link.
The Queues page appears, displaying the ECC queue.
4. Refresh the queue to view the new input record.
5. Select the record to view its results.
Validation status is visible in the Payload section of the form.
If plugins aren't validated, navigate back to the Agent Client Collectors page and select the
Clear ACC Plugins link.
The plugins automatically re-sync the next time a command runs which requires the plugin.

Using proxy agents in Agent Client Collector
You can use a proxy agent to monitor the health and performance of your configuration items
(CIs) even if the agent is in the cloud or any place that is external to your host server.
Proxy agents are used to monitor:
• URLs (to ensure that the URLs are available and accessible)
• Services that don't have a host server
• Closed services on which you can’t configure an agent
• External databases in the cloud
One agent can monitor multiple entities and their CIs.
The following diagram shows the connection between a ServiceNow instance, the MID Server,
and Agent Client Collector agents, as well as proxy agents that monitor CIs that are external to
the agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4201


<!-- page 4202 -->
Proxy agent configuration

You can configure the proxy agent to do a custom check when it is monitoring external entities.
To learn how to create custom checks, see Create and edit checks.
You can create a cluster of proxy agents on multiple proxy servers to monitor the services that
are external to the host server. To learn how to create a proxy agent cluster, see Create a proxy
agent cluster.
Use a Proxy Auto-Configuration (PAC) file to dynamically determine the appropriate proxy server
to use. PAC files provide flexible and automated proxy configuration, enabling the agent to use
different proxies for different destinations, connect directly to internal resources, implement
complex proxy routing logic, and to automatically handle proxy failover. For details on the
parameters used for PAC file configuration, see Configuration file options.
Following is a sample PAC file:
function FindProxyForURL (url, host) {
// Connect directly to internal hosts
if (isPlainHostName(host) ||
shExpMatch(host, "*.internal.company.com")) {
return "DIRECT";
}
// use proxy for all other hosts
return "PROXY proxy.company.com:8080:
}
Related topics
Checks and policies
Agent Client Collector Monitoring default checks and policies
Configure an agent on a proxy server
Configure an Agent Client Collector on a proxy server when monitoring services external to the
host server, such as URLs or external databases in the cloud.

Before you begin

Role required: agent_client_collector_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4202


<!-- page 4203 -->
About this task

Proxy agents should be dedicated agents, as running other apps on a proxy agent is likely to
cause performance degradation.

Procedure
1. Navigate to All > Agent Client Collector > Agents > Policies.
2. Select the policy containing the checks that you want to run on a proxy server.
You must configure a proxy server for checks and policies that monitor external services. For
details on these checks and policies, see Agent Client Collector Monitoring default checks
and policies.
3. Select the Proxy Settings tab.
4. Select from the following fields.
Field

Description

Single proxy agent

Select to display the Proxy agent field, where
you select a single proxy agent.

Multi-proxy agents by cluster

Select to enable a group of proxy agents to
monitor the policy CIs.
When selecting this check box, the Agent
cluster name field appears.

Agent cluster name

Select an agent cluster to monitor the policy
CIs.

Multi-proxy agents by filter

Select to filter multiple proxy agents from the
agent list.
When selecting this option, all proxy agents
monitor the same services. For example, you
may want to use this option for multiple proxy
servers in different geographic locations.

Note:
◦ This field appears only when
the Hide Multi Proxy Agent by
filter, if its not selected property
(sys_ui_policy) is set to
active=false.
◦ This field appears only for existing
policies where this option was
previously selected. If you remove the
filter in an existing policy, the option
disappears.
Multi-proxy agents by script

Select to configure a JavaScript for selecting
proxy agents.
When selecting this option, you can assign
services to different proxy agents, which can
serve as a form of load balancing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4203


<!-- page 4204 -->
Field

Description

Run checks on all proxy agents (No load
balancing)

Clear this option to load balance the selected
multi proxy agents that monitor the matching
CIs in the policy's Monitored CIs tab. Select
this option for each agent to monitor all
matching CIs in the policy's Monitored CIs
tab.
For example, if you have five agents in a
cluster or five agents using the filter/script
option and 10 matching CIs in the policy,
when you clear this option, each agent
monitors two CIs. When selecting this option,
each agent monitors all 10 of the matching
CIs in the policy.
For existing or active policies, this option
is enabled by default. For new and inactive
policies, this option is turned off by default.
Select this option only in a case where you
have an external endpoint for which you want
to measure how quickly it is accessed from
different locations.

5. Select Activate.
Create a proxy agent cluster
Create a cluster of agents on multiple proxy servers to monitor services external to the host
server. Creating a cluster of agents enables you to assign that cluster to multiple policies instead
of having to assign the agents individually to every policy.

Before you begin

Role required: agent_client_collector_admin

About this task

A proxy agent cluster monitors the CIs that match the filter specified on the policy's Monitored
CIs tab.
A proxy agent cluster must contain at least one agent. All of the cluster's agents monitor the
CIs specified in its assigned policy. No special configuration is necessary on the policy level to
enable proxy cluster monitoring.
The default CPU threshold value when working with proxy agent clusters is 80%. You can modify
this value in the proxy_cpu_percentage_limit property.

Procedure
1. Navigate to All > Agent Client Collector > Configuration > Proxy Agent Cluster.
2. Select New.
3. In the Name field, enter a descriptive name for the cluster.
4. Add an agent to the cluster.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4204


<!-- page 4205 -->
a. In the Agents in cluster section, locate the Agent column and select Insert a new row.
b. Select the search icon (

) and select an agent to add to the cluster.

c. Select the check icon ( ) to add the agent to the cluster.
Repeat this step for each agent that you want to add to the cluster.
5. Select Submit.

Result

The Proxy Agent Clusters page appears and displays the agent added to the cluster.

What to do next

Select this proxy cluster to monitor CIs specified in an agent policy. For details, see Configure an
agent on a proxy server.
Assign a proxy agent cluster to a policy
Assign a proxy agent cluster to a policy when monitoring services external to the host server,
such as URLs or external databases in the cloud. The agents in the cluster monitor all of the
policy's CIs.

Before you begin

Ensure that you have a policy containing the checks that monitor external services. For details on
these checks and policies, see Agent Client Collector Monitoring default checks and policies.
Role required: agent_client_collector_admin

About this task

Only one app should be run on a given proxy agent because running multiple apps is likely to
cause performance degradation.

Procedure
1. Navigate to All > Agent Client Collector > Agents > Policies.
2. Select the policy containing the checks that you want to run on a proxy server.
3. Select the Proxy Settings tab.
4. Select Edit in Sandbox to enable modifying fields on the form.
5. Indicate whether you are assigning a single proxy agent or a proxy agent cluster to monitor the
policy CIs.
◦ Assign a single proxy agent by selecting Single proxy agent and selecting an agent.
◦ Enable a proxy agent cluster by selecting Multi-proxy agents by cluster. Provide the name
of the cluster in the field that appears.
6. Determine whether to select multiple proxy agents from the agents list through a filter or a
script.
◦ To select agents through a filter, configure a filter or retain or modify an existing filter when
the Multi-proxy agents by filter option is selected.

Note:
▪ This field appears only when the Hide Multi Proxy Agent by filter, if its not selected
property (sys_ui_policy) has been set to active=false.
▪ If you remove the filter in an existing policy, the option disappears.
◦ To select agents through a script:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4205


<!-- page 4206 -->
a. Select Edit in Sandbox.
b. Clear any selected proxy options in the Proxy Settings tab.
c. Select Multi-proxy agents by script.
d. In the Proxy script field that appears, enter a script to assign services to different proxy
agents as a form of load balancing.
7. Determine whether to load-balance the selected multi-proxy agents that monitor the matching
CIs in the policy's Monitored CIs tab or have each agent monitor the matching CIs.
◦ To load balance the selected multi-proxy agents that monitor the matching CIs, clear the Run
checks on all proxy agents (No load balancing) option.
For example, if you have five agents in a cluster or five agents using the filter/script option
and 10 matching CIs in the policy, each agent would monitor two CIs.
You can also enable load balancing at a later time, as described in Enable load balancing
between proxy agents in a cluster.
◦ To have each agent monitor all matching CIs, select the Run checks on all proxy agents (No
load balancing) option.
If there are 10 matching CIs in the policy, each agent would monitor all 10. For example, you
might want to use this option for multiple proxy servers in different geographic locations.
If an agent is not functioning properly, the monitored CIs are redistributed to another agent.

Note: For existing or active policies, the Run checks on all proxy agents (No load

balancing) option is enabled by default. For new and inactive policies, this option is
turned off by default.
8. Select Activate.
Related topics
Enable load balancing between proxy agents in a cluster
Enable load balancing between proxy agents in a cluster
Enable load balancing between proxy agents in a cluster so that if an agent is not functioning
properly, monitored CIs are redistributed to another agent. After enabling load balancing, you
can view the CIs monitored by each proxy agent in a policy.

Before you begin

Ensure that you have upgraded to Tokyo patch 1 or San Diego patch 7.
Role required: agent_client_collector_user

Procedure
1. Navigate to All > Agent Client Collector > Configuration > Policies.
2. Select the policy containing the CIs you want the proxy agents to monitor.
3. Select the Proxy Settings tab.
4. Enable load balancing for the proxy agents by clearing the Run checks on all proxy agents (No
load balancing) check box.
Load balancing is enabled for the proxy agents monitoring the CIs. For example, if you have
five agents and 10 matching CIs in the policy, each agent monitors two CIs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4206


<!-- page 4207 -->
5. In the Related Links section, select Show distribution of proxy agent’s CIs.
A pop-up window displays the distribution of monitored CIs among agents within the policy.

Configure a MID Server to work with Agent Client Collector Monitoring
Connect agents to a MID Server to enable Agent Client Collector Monitoring functionality.

Before you begin

Role required: agent_client_collector_admin

About this task

For details on configuring Agent Client Collector for log monitoring, see Agent Client Collector
Log Analytics.

Procedure
1. Navigate to All > Agent Client Collector > Deployment > MID Servers.
2. Select the MID Server that you want to connect to the agent.
3. In the Related Links section, select Setup ACC Monitoring.

Result

A confirmation window appears, indicating that the MID Server is connected to the agent.

Related topics
Configure multiple MID Servers to work with Agent Client Collector Monitoring
Configure multiple MID Servers to work with Agent Client Collector Monitoring
Connect agents to multiple MID Servers to enable Agent Client Collector Monitoring
functionality. Multiple MID Servers can support each other with load balancing and domain
separation.

Before you begin

Role required: agent_client_collector_admin

About this task

When configuring multiple MID Servers, use the same port for all MID Servers. Using different
ports requires you to add each MID Server individually, as described in Configure a MID Server to
work with Agent Client Collector Monitoring.

Procedure
1. Navigate to All > Agent Client Collector > MID Servers.
2. Select the check boxes corresponding to the MID Servers you want to connect to your agent.
3. In the Actions on selected rows... window, select Setup ACC Monitoring.
The option includes the number of MID Servers selected out of the number of available MID
Servers. For example: Setup ACC Monitoring (7 of 8) indicates that 7 MID Servers were
selected out of 8 available MID Servers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4207


<!-- page 4208 -->
Result

A confirmation window appears, indicating that the selected MID Servers are connected to the
agent.

Enable log monitoring in a Linux environment
To enable monitoring logs in a Linux environment, select the relevant policy and assign specific
check parameters to the policy. When log monitoring is enabled and a specified string is
discovered in the log being monitored, the system creates an event.

Before you begin

Ensure that the servicenow user has access to the log file being monitored, or that the specified
user can run the sudo command.
Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Policies.
2. Select the Linux log monitoring policy.
3. On the Check Instances tab, select util.check-logs to enable monitoring log files not owned
by the root user.
Ensure that the Agent Client Collector servicenow user has read permissions for the log file
being monitored.
4. Specify the log file to be searched by the check:
a. In the Check Parameter Definitions tab at the bottom of the page, select the file entry in the
Name column.
b. In the Default value field, enter the path of the log file you want to search.
5. Specify the string you want to locate in the log:
a. In the Check Parameter Definitions tab at the bottom of the page, select the pattern entry
in the Name column.
b. In the Default value field, enter the search pattern strings that you want to search for
in the log file, such as 404, Error, and so forth. The default values are SEVERE and
Exception.
Ensure that you separate multiple patterns with a pipe (|) and pass it as a parameter inside
quotes. For example: "SEVERE|404".
6. Click Update to save your check instance and return to the Policy - Linux Log Monitoring
page.
7. Select the util.check-logs-sudo check to monitor logs owned by the root user.
8. Repeat steps 4 and 5 to monitor logs owned by the root user.
9. For the util.check-logs-sudo check, modify the /etc/sudoers file on the host or Linux
virtual machine, as follows:
When the agent is installed on the host's default location (/usr/share/servicenow/
agent-client-collector) or on a Linux virtual machine, add the following string to the
/etc/sudoers file:
servicenow ALL=
SETENV: /
var/cache/servicenow/agent-client-collector/monitoring-plugin-l
inux/bin/check-log.rb *
Defaults:servicenow !requiretty
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4208


<!-- page 4209 -->
Defaults exempt_group += servicenow
10. On the Policy page, click Save and then click Publish to activate the policy to monitor the log
file.

Enable log monitoring in a Windows environment
To enable monitoring logs in a Windows environment, select the relevant policy and assign
specific check parameters to the policy. When log monitoring is enabled and a specified string is
discovered in the log being monitored, the system creates an event.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Policies.
2. Select the Windows log monitoring policy.
3. On the Check Instances tab, select os.windows.check-log to enable monitoring Windows log
files.
4. On the Check Parameters tab, specify the log parameters to be monitored by the check, as
described in the following table:
Check parameters
Name

Value

warning

Number of times the specified pattern strings
are found in the log which generates a
warning event. Default = 1.
For example, if the pattern value is
Exception and one Exception event is
located in the log, a warning event is
generated.

critical

Number of times the specified pattern strings
are found in the log which generates a
critical event. Default = 2.
For example, if the pattern value is
Exception and two Exception events are
located in the log, a critical event is
generated.

file

Location of the log file.

pattern

Strings which are being searched for in the
log. Default values are Severe and Exception.
Other possible values include 404 and Error.
Ensure that you separate multiple patterns
with a pipe (|) and pass it as a parameter
inside quotes. For example: "SEVERE|
404".

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4209


<!-- page 4210 -->
Select the Azure policies to activate for metric collection
Activate the Azure policies that come with the Agent Client Collector base system so that Azure
virtual machines can collect metrics. These metrics help you monitor the configuration items
(CIs) in the CMDB.

Before you begin
• Prepare an instance with an active MID Server and metric base.
• Install Agent Client Collector Framework and Agent Client Collector Monitoring.
• Run Discovery on the Azure cloud account to populate the CMDB with CIs to be monitored.
Role required: agent_client_collector_admin

Procedure
1. Prepare and configure the proxy agent to be used by the policy.
For details on configuring a proxy agent, see Using proxy agents in Agent Client Collector.
2. Assign the credentials to the Azure policy.
a. Navigate to All > Agent Client Collector > Policies.
b. Select the relevant policy.
For details on the policies that are available with the base system, see Azure cloud metrics.
c. Select the Credentials tab.
d. In the Credential name field, select the credentials to be invoked for the policy.
To see the available credentials, go to the Credentials page by navigating to All > Discovery
> Credentials.
Ensure that you select the Type=Azure credentials. If you need to create credentials, select
New and select Azure Service Principal credentials.
e. In the Credential alias field, assign an alias to the credentials.
3. Navigate to All > Agent Client Collector > Configuration > Policies and select the relevant
policy to activate.
4. Select the application scope icon
Monitoring scope to edit the policy.

and verify that you are in the Agent Client Collector

5. Enable the policy in Edit mode by selecting Edit in Sandbox.
6. Enable the proxy agent to be used to execute the check.
a. Select the Proxy Settings tab.
b. Select Single proxy agent and select the proxy agent to be used to execute the check from
the Proxy agent field.
7. Select Save.
8. Republish the policy by selecting Republish.

Use the Agent Client Collector Health Dashboard
The Agent Client Collector Health Dashboard enables you to monitor the status of the agents in
your system.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4210


<!-- page 4211 -->
Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Agent Health Dashboard.
The Agent Health Dashboard page appears and displays information about the configured
agents in the dashboard widgets.

In the Agents by Data Collection Status widget, Off (manual) indicates agents manually
turned off (for maintenance or troubleshooting), and Off (auto) indicates agents automatically
turned off (after crossing the CPU usage threshold).
2. Click the refresh arrow icon
needed.

on the top right corner of a widget to refresh its data, as

You can refresh all widgets on the dashboard by selecting the form header icon
selecting Refresh.

and then

Agent Client Collector Discovery
Discover CIs in your environment by using Agent Client Collector for Visibility - Content (ACC-VC)
Discovery. ACC-VC works with both horizontal IP-based Discovery, and you can also use pushbased Discovery.
Using push-based Discovery and horizontal IP-based Discovery together
Discovery performed by Agent Client Collector for Visibility - Content (ACC-VC) is compatible
and can coexist with horizontal IP-based Discovery. You may have ACC installed on a given
target host and still have that host as part of a horizontal IP-based Discovery schedule as well.
To avoid conflicts, ACC-VC does not perform Discovery when the target host’s
IP already has a CI that has been discovered by horizontal IP-based Discovery
(discovery_source is ServiceNow). To override this behavior, set the system property
[sn_agent.disco_disable_ci_clobber_of_agentless_disco]
to false. This setting is ignored if horizontal IP-based Discovery was
not performed over a specific time. Update the system property

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4211


<!-- page 4212 -->
[sn_agent.disco_ci_clobber_of_agentless_disco_threshold_days] if
necessary. The default is 14 days. See System properties
for more details.
To enable Discovery using Agent Client Collector, enable the following Discovery properties on
the Discovery properties page (All > Discovery Definition > Properties):
Agent Client Collector Discovery properties
Field

Description

glide.discovery.domain.name.nbt

Set OS domain name by NBT or WMI. If set
to true, Windows domain name is set by NBT.
Otherwise it’s set by WMI.
• Type: true | false
• Default value: true

glide.discovery.enable.software_simplify

Enables cleanup for software’s name
and version. If set to true, it removes any
appended version or commonly found
phrases from the name and removes
leading 0s in the version. If set to false, raw
data is persisted in the table. Use with the
glide.discovery.enable.software_simplify_sccm
property to avoid software data discrepancy
between Discovery and SCCM.
• Type: true | false
• Default value: true

Note: Once the property is set to false,
to disable the cleanup, duplicate records
are generated for a given software. Name
and Version are the primary identifiers.
Using push-based Discovery and Intel Endpoint Management Assistant (EMA) together
Agent Client Collector for Visibility - Content (ACC-VC) can collect data for uses cases with the
®
®
Intel vPro platform when the Intel EMA application is installed on Windows endpoints. You
can install the Intel EMA application from the ServiceNow store. Attributes are stored in the
CMDB when enabled. Currently, data for Intel EMA can only be fetched for Windows endpoints.
The Intel EMA application enables customers to configure access to the Intel Instance from their
ServiceNow instance. For example, IT Support groups can open a remote console and perform
some actions like power cycle from a ServiceNow incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4212


<!-- page 4213 -->
Intel + ServiceNow platform

Using push-based Discovery and SAM together
Agent Client Collector for Visibility - Content (ACC-VC) collects installed software data for use
cases for Software Asset Management (SAM), when the SAM plugin is installed. Using pushbased Discovery and SAM together can help optimize software data collection with SAM basic
metering and SAM total usage metrics.
ACC-VC can capture the last accessed time for the software or applications that are installed on
the target via push-based Discovery. This information along with the target CI reference, is added
to the Software Update [samp_sw_usage] table.
SAM Basic metering and SAM total usage metrics are supported for both Windows and macOS.
The software usage records are domain separated. The records are populated with the domain of
the MID Server that is used for the agent-based Discovery for the target.

Note: For software installations (cmdb_sam_sw_install), to avoid insertion of duplicate
records, the same discovery source "ServiceNow" is being used for both push-based
Discovery and horizontal IP-based Discovery.

Requirements
SAM basic metering and SAM total usage metrics
For SAM basic metering and SAM total usage metrics, the non-privileged
servicenow user (which the agent service logs on as) must be configured with
READ only access in the registry. This access allows for successful execution
of the OSQuery against the UserAssist table to be successful. Go to regedit
and allow the servicenow user to read UserAssist for a user account on the
device (for example: HKEY_USERS\SID...\Software\\Microsoft\
\Windows\\CurrentVersion\\Explorer\\UserAssist for every user
in HKEY_USERS).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4213


<!-- page 4214 -->
Note: The UserAssist key does not inherit permissions from the

HKEY_USERS\SID... parent key. Therefore, you must navigate to the
UserAssist key and add permission directly on the key.
To apply SAM basic metering or SAM total usage metrics, you need the following:
• SAM plugin (com.snc.samp) enabled
• System property
[sn_acc_vis_content.persist_sam_usage_metrics] set to true. See
System properties
for more details.
For details on SAM metering setup with the Agent Client Collector, see the
Knowledge Base article KB1642676 .
Software edition information
To retrieve software edition information, you need the SAM plugin (com.snc.samp)
enabled.

SAM basic metering

Note: There is a configuration in the Windows operating system level that does not allow
the correct detection of the data. Update the configuration so that the data can successfully
be collected by the ACC-VC agent and brought to the ServiceNow platform correctly.
In the Registry Editor, create the following keys in the path: HKEY_CURRENT_USER

\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced.
• Name: Start_TrackProgs
◦ Base: Hexadecimal
◦ Value:1
• Name: Start_TrackProgsBase
◦ Base: Hexadecimal
◦ Value:1

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4214


<!-- page 4215 -->
SAM basic metering flowchart
For the list of software in the payload, query the Software Discovery Model
[cmdb_sam_sw_discovery_model] table to fetch the corresponding product and
publisher. Once the product is fetched, check if the reclamation rule is enabled
for that product to persist the last usage information in the Software Usage
[samp_sw_usage] table. See the flowchart for details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4215


<!-- page 4216 -->
Note: In the target, query the last accessed time from the UserAssist table via the
OSQuery by taking the application or software name as the input to the Query.
Use the

sn_acc_vis_content.disable_sam_reclamation_rules_for_licensable_softwares
property to define reclamation rules for licensable software, as follows:
• True: SAM usage is stored for all licensable software (with or without defined reclamation
rules), and for any non-licensable software that has a reclamation rule defined.
• False: Store SAM usage according to defined reclamation rules.
Common applications supported include:
• WinZip
• Google Chrome
• Sublime Text
• Notepad++
• Autodesk
• Microsoft Office 365
• Tableau

SAM total usage metrics
SAM total usage metrics allows you to measure total usage time and total usage count on any
application that has a software reclamation rule enabled.
Osquery provides a daemon executable which can run as a service, called Osqueryd. Osqueryd
needs to be manually deployed for SAM total usage metrics to work properly. Each Osqueryd
deployment requires the osquery.conf file, optional external packs, and initialization flags
(configured in osquery.flags file) provided when starting the service. In return, the daemon
service runs scheduled queries on the host and logs it into a local file system.

Note: Osquery supports filesystem-based logging by default. This configuration is
provided in the osquery.conf file on any fresh Osquery installation.
Domain information can be collected during the data collection. This can help large
organizations with multiple employee directories map software to the correct user.
Currently, this is supported for Windows only. To map the software usage/assigned_to
with the correct user in a domain separated environment, use the system property
[sn_acc_vis_content.column_name_for_user_mapping] with a valid field name. By default, the
value of this system property is empty which means it only validates the username and not
the domain. You can use either of the following formats to validate username and domain:
username@domain or domain\username.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4216


<!-- page 4217 -->
SAM total usage metrics flowchart
Using the list of processes, you can perform SAM normalization to map the
processes for the relevant installed software records. This provides flexibility
since installed software names and processes are not usually the same. For
the list of processes in the payload, query the Software Discovery Model
[cmdb_sam_sw_discovery_model] table and Software Product [samp_sw_product]
table to fetch the corresponding product and publisher. Once the product is
fetched, check if the reclamation rule is enabled for that product to persist the total
usage time in the Software Usage [samp_sw_usage] table. See the flowchart for
details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4217


<!-- page 4218 -->
install and configure Osqueryd for Windows using the following script.
# Install latest osquery
$msi = "osquery-5.7.0.msi"
$url = "https://pkg.osquery.io/windows/$msi"
$dst = "$PSScriptRoot\$msi"
Invoke-WebRequest -Uri $url -OutFile $dst
# msiexec /i "$dst" /quiet /qn /norestart
Start-Process msiexec.exe -Wait "/i $dst /quiet /qn /norestart"
# Configure osqueryd service
$flags = "--logger_rotate=true
--logger_rotate_size=26214400
--logger_rotate_max_files=1
--watchdog_level=-1
--config_path=C:\Program Files\osquery\osquery-sam.conf"
Set-Content -Path 'C:\Program
Files\osquery\osquery.flags.default' -Value "$flags"
$conf = @'
{
"options": {
"config_plugin": "filesystem",
"logger_plugin": "filesystem",
"utc": "true"
},
"schedule": {
"sam_process_info": {
"query": "SELECT name, pid, elapsed_time, start_time,
user_time, system_time, username FROM processes p JOIN users
u ON u.uid = p.uid WHERE p.elapsed_time != -1 AND u.type !=
'special';",
"snapshot" : true,
"interval": 300
},
"system_info": {
"query": "SELECT hostname, cpu_brand, physical_memory FROM
system_info;",
"interval": 3600
}
},
"decorators": {
"load": [
"SELECT uuid AS host_uuid FROM system_info;",
"SELECT user AS username FROM logged_in_users ORDER BY
time DESC LIMIT 1;"
]
},
"packs": {
}
}
'@
Set-Content -Path 'C:\Program Files\osquery\osquery-sam.conf'
-Value "$conf"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4218


<!-- page 4219 -->
cd 'C:\Program Files\osquery'
.\manage-osqueryd.ps1 -uninstall
.\manage-osqueryd.ps1 -install
Restart-Service osqueryd

For details on Windows and macOS see Configure Osqueryd schedule for SAM total usage
metrics and Configure Osqueryd logs for SAM total usage metrics.

Collecting SAM metrics without osqueryd
Optionally, you can enhance efficiency by using non-osqueryd data collection when using pushbased Discovery and Software Asset Management (SAM) together. When non-osqueryd data
collection is invoked, data collection is automatically performed on all available agents, instead
of invoking osqueryd on each agent individually.
To perform non-osqueryd data collection:
1. Ensure that the following permissions are configured for the relevant OS:
◦ Windows: Either NT AUTHORITY\SYSTEM or admin
◦ Linux and macOS: root
2. On the System Properties page (All > System properties > All properties), set the

sn_acc_vis_content.enable_sam_collection_without_osqueryd property
to true.

Note: Enable this property only when all agents are version 4.1.0 or later.
Software edition information
Starting in ACC-VC version 2.3.0, edition information is supported for Adobe Acrobat and
MS SQL server. With this feature, SAM admins can get clear visibility into the editions
of their installed software. Osquery commands are used to fetch the edition information
which then shows in the Software Installation [cmdb_sam_sw_install] table in the Edition
Override column. For more details, see the support KB: https://support.servicenow.com/kb?
id=kb_article_view&sysparm_article=KB0721360
Related topics
Configure Osqueryd schedule for SAM total usage metrics
Configure Osqueryd logs for SAM total usage metrics
Configure Osqueryd schedule for SAM total usage metrics
SAM total usage metrics works by relying on the Osqueryd service running on the target host.
Configure the Osqueryd service to run the required schedule Osquery on the host.

Before you begin

Role required: admin

Procedure
1. Navigate to Osqueryd installation folder.
2. Find and edit the osquery.conf file.
3. Add the below Osquery pack under the packs keyword.
For Windows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4219


<!-- page 4220 -->
"packs": {
"sam-metering":
"C:\\ProgramData\\ServiceNow\\agent-client-collector\\cache\
\acc-visibility-modules\\bin\\sam-metering.conf"
}
For macOS:
"packs": {
"sam-metering": "/Library/Application\
Support/servicenow/agent-client-collector/cache/acc-visibili
ty-modules/bin/sam-metering.conf"
}

Result

You can now Configure Osquery logs for SAM total usage metrics.
Configure Osqueryd logs for SAM total usage metrics
By default, Osquery supports log rotation based on size. To enable it for SAM total usage metrics
and to configure the log size and rotation, you need to add specific flags for Osqueryd service.

Before you begin

Role required: admin

Note: SAM with Osqueryd consumes memory and CPU cycles. For example, with the
Agent installed on a Windows Machine having 2 CPU core, 8 GB RAM, 1000 software
installations, and 500 running processes, the following was observed:
• Average CPU usage for the Agent and Osqueryd was less than 10 % CPU and maximum
of 30% CPU. This will only occur when the SAM background policy is triggered. By default,
the trigger happens every 480 seconds.
• Average Memory usage for Agent and Osqueryd was less than 10 MB and maximum of 26
MB was consumed.
To store the data for a single running process for two days, the log file size on an average
should be 52429 bytes. The log file size must be increased if the number of running
processes on the machine is higher. For example, with 500 running processes the log size
would be on average 25 MB which is 26214400 bytes.

Procedure
1. Navigate to Osqueryd installation folder.
2. Find and edit the osquery.flags file.
3. Add the below flags with these sizing guidelines:

Note: Modification of the log file size should be done as per the Osqueryd Log file sizing
guidelines.
For Windows:
◦ --logger_rotate=true
◦ --logger_rotate_size=26214400
◦ --logger_rotate_max_files=1
◦ --watchdog_level=1
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4220


<!-- page 4221 -->
For macOS:
◦ --logger_rotate=true
◦ --logger_rotate_size=26214400
◦ --logger_rotate_max_files=1
◦ --watchdog_level=1
◦ --logger_mode=0644
4. Save the file.

Result

Once the Osqueryd schedule and Osqueryd logs are configured the Osqueryd service can start.
The schedule runs the Osquery: Select name, pid, elapsed_time, start_time, user_time,
system_time, username from processes p JOIN users u ON u.uid = p.uid where p.elapsed_time !
= -1 AND u.type !='special';" runs every 5 minutes (300 seconds) on the target machine. This logs
the results into the log file. The log file contains snapshot entries of all the queries configured to
run by the Osqueryd . This query contains all the processes attributes.

Note:
A temporary file marker.json is created in a temporary local folder on your machine in
the directory:
For Windows : <userprofile>\\AppData\\Local\\AgentClientCollector
\\SAM.
For macOS: /Library/Application\ Support/servicenow/agentclient-collector.
This file has read/write permissions and contains the marker data: Data and Last
Read Unix Time stamp.
The Osqueryd can also be configured to write its logs to a custom directory path instead
of the default directory. If you choose a custom directory, modify the check definition
[samadvanced-background-log-check].
Application patterns for the Agent Client Collector
Application patterns gather details on the applications that run on the Agent Client Collector
(ACC) host. Application patterns are supported only for servers, and are triggered after the Agent
Client Collector host Discovery is complete.

Prerequisites for using application patterns
To enable application patterns on the Agent Client Collector, install the following:
• Agent Client Collector Framework
• Agent Client Collector for Visibility - Content
• Discovery
Set the sn_agent.appl_classification_behavior property to full, and restart any
MID Servers connected to the agent.
When working in a Windows environment, ensure that you're working with Powershell 3.0 or
higher.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4221


<!-- page 4222 -->
Role required (on the host device):
• In a Linux or macOS environment: ServiceNow user with sudoers; nopasswd enabled with
regular Discovery commands.
• In a Windows environment: Local System user, SYSTEM, or a local user account where the
local user account uses one of the following:
◦ Logon as a service
◦ Backup (SeBackupPrivilege)
◦ Debug Programs privileges

Viewing supported application patterns
To view the list of patterns supported for Agent Client Collector, navigate to All > Pattern
Designer > Supported Patterns for ACC. Application patterns are the only pattern types
supported for use with Agent Client Collector.

Viewing Application Patterns executed on Agent Client Collector
You can view the application patterns that were executed on a given agent.
1. Navigate to All > Agent Client Collector > Agents.
2. Select an agent.
3. Select View > Discovery from the context menu (hamburger).
4. Open the agent.
5. Select the Application Pattern logs tab on the bottom of the page.
The list of patterns executed on the agent appears. Executed patterns are indicated with the
value true in the Executed On Agent column.

Unsupported application pattern operations
Application patterns aren't supported in the following pattern operations:
• WMI method invocation
• Change/unchange user
• All custom operations
• SNMP query
• Put file

Agent Client Collector pattern execution properties
Configure the following properties (All > System Properties > All Properties) to maximize the use
of application patterns with Agent Client Collector:
Application pattern properties
Property

Description

sn_agent.appl_classification_behavior

Set value to full to enable working with
applications patterns and to access pattern
commands in the allow-list.
Default: simple

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4222


<!-- page 4223 -->
Application pattern properties (continued)
Property

Description

Note: To enable application pattern
execution with the allow-list, use the
allow-list template for application
patterns. For details, see the Pattern
execution on ACC: Sample Allowlist
for Pattern Content
article in the Now
Support Knowledge Base.

MID Server configuration parameter properties
mid.discovery.agent.command.mid.timeout

The maximum duration, in seconds, that the
MID Server waits for a response from the
agent before timing out.
Default: 60 seconds

mid.discovery.agent.command.timeout

The maximum amount of time, in seconds, that
the command is given to execute on the agent
host.
Default: 60 seconds

Using pattern designer debugging in ACC mode
You can debug application patterns that are configured in ACC mode.
1. Set the sn_agent.appl_classification_behavior property to full.
2. In the Pattern Designer, enable the debug option and select Use ACC connection in the
Debug identification section.
The pattern log indicates whether the pattern was successfully executed on the agent.
You can also receive pattern details in the following logs:
• MID Server logs: Set mid.log.level to DEBUG for the mid agent log to display details on
the pattern step, ACC check, and the pattern response.
• ACC logs: Search for the string PatternOnTheFlyCheck for details on pattern checks.

Oracle Global License Advisory Services (GLAS) data collection
Oracle Java process discovery works either with patterns (when using either a MID Server
or Agent Client Collector), or with file-based discovery (using Agent Client Collector with filebased discovery). If both the pattern and file-based discovery run the same Java installation, the
pattern-collected data takes precedence.
When performing Discovery with Agent Client Collector, ensure that you have the following
settings:
• All users must have the Oracle GLAS store app, starting with version 1.8.4.
• Agent Client Collector users:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4223


<!-- page 4224 -->
◦ Must have the Agent Client Collector Framework store plugin.
◦ Can have the Agent Client Collector for Visibility - Content store plugin, for extra data.
For information about privileged user access, see KB1705845

.

Note: Oracle Java discovery with ACC is applicable in all server environments.
However, currently, it's partially supported for different Desktop environments. For a
Windows Desktop update set, see the KB article KB1705845 .
For information on java installation Discovery using Agent Client Collector for Visibility - Content,
see Discover java installation data using Agent Client Collector for Visibility - Content file-based
discovery.
For information on the collected data, see Data collected during Agent Client Collector for
Visibility - Content file-based Discovery.
Application patterns support Oracle GLAS data collection in a Linux environment. For details
on using patterns, see Oracle Global License Advisory Services (GLAS) data collection using
patterns.
Although Oracle GLAS supports Put file operations, the related files are deployed using Agent
Client Collector plugins instead of SSH or WMI.
Related topics
Discovery patterns used by ITOM Visibility
Discover java installation data using Agent Client Collector for Visibility - Content file-based
discovery
Discovering java installation data using Agent Client Collector for Visibility - Content file-based
discovery enables you to discover file information in your system.

Before you begin
• Install the latest version of Agent Client Collector for Visibility - Content.
• Install file-based discovery.
• Enable the Oracle Global License Advisory Services (GLAS) hardware data collection policy.
Role required: discovery_admin

Procedure
1. Enable file-based discovery.
a. Navigate to All > Discovery Definition > Configuration Console.
b. Enable the File Discovery entry.
2. Enable the Java Discovery property.
a. Locate the sn_acc_vis_content.file_discovery.enable_java_discovery
property on the System Properties page (All > System Properties > All Properties).
b. Set the property value to true.
3. Grant elevated permissions to the acc user, enabling access to your java installation
directories, for example:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4224


<!-- page 4225 -->
◦ /usr/lib/jvm/*/bin/java
◦ /usr/lib/jvm/*/*/bin/java
You can add additional java directories during java installation, as needed.
◦ In a Linux environment, grant elevated permissions in the /etc/sudoers file to enable
access to the java installation directories.
◦ In a Windows environment, grant elevated permissions (read and execute) via the system
administrator to enable access to the java installation directories.

Result

When running Discovery for java installation, data is discovered through file-based discovery and
is stored in the ora_java_audit table. For details on the data stored in this table, see Data
collected during Agent Client Collector for Visibility - Content file-based Discovery.
Discovering DNS names using push-based discovery
CMDB owners need CIs to contain all domain system names (DNS) associated with their system.
Starting in Agent Client Collector for Visibility - Content (ACC-VC) version 2.3.0, ACC-VC can
discover DNS name lists for Windows and Linux CIs.
When discovering DNS names associated with systems, the following occurs.
• network_adapters.rb is used to populate the DNS name for all the IP addresses using OSquery.
(There is no limit.)
• Nslookupcommand is used to get the DNS name for all IP addresses.

Note: Nslookup must be configured on the target.
This creates a relationship of Owns::Owned by between the CI and the DNS names.
This information is then populated into the [cmdb_ci_dns_name] table.
Populating Assigned To attribute in Computer CI for Agent Client Collector for Visibility Content
To update the Assigned To attribute of the Computer CI, you need to collect information from the
logged in user.

Before you begin

Role required: admin
You can automatically populate Assigned to for Windows endpoint devices and macOS devices,
like workstations or employee laptops, as part of agent-based Discovery using ACC-VC with the
following system properties. See Available system properties
for more information.
• sn_acc_vis_content.set_assigned_to
• sn_acc_vis_content.assigned_to_user_order
• sn_acc_vis.column_name_for_user_mapping

Procedure
1. Create higher user privileges to fetch the logged in user details.
Use the default ServiceNow user for running the Agent Client Collector.
These commands are executed on the Windows machine:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4225


<!-- page 4226 -->
◦ wmic COMPUTERSYSTEM GET USERNAME
◦ From osquery: SELECT l.user FROM logged_in_users l JOIN users u ON l.sid = u.uuid WHERE
u.type != 'special'
This command is executed on the macOS machine: SELECT distinct(l.user) FROM
logged_in_users l JOIN users u ON l.user = u.username
2. User names match is performed on the user records in the sys_user table.
The Assigned To attribute is populated and then it creates a reference to the
user. Systems logs shows a warning if no user can be found in sys_user. The
user names sourced for Assigned To attribute is based on the system property:
sn_acc_vis_content.assigned_to_user_order.
3. Assigned_to attribute is set based on priorities.
If assigned_to is already there, keep it as is by default. However, you can update the
sn_acc_vis_content.set_assigned_to system property to override it. If there are any
Reconciliation Rules defined, then the IRE populates the field accordingly.

Result

No new user account is created in the sys_user table. Instead, the existing user is queryied and
the same is referenced as Assigned To user for a CI.
Populating users based on type for Agent Client Collector for Visibility - Content
You can persist the type of users that populate the CMDB depending on your particular interests.
Currently, local and system are supported for Windows, Linux, and macOS.
You can filter the types of users by using the system property:
sn_acc_visibility.persist_os_user_type. See Available system properties

for more information.

For Windows
You need to identify if a server is domain controller or not. Since domain controller
machines don’t have local accounts, local user information does not persist for
such machines and is not populated.
For non-domain controller Windows machines, use OSquery commands to get user
information through ACC-VC: select uid, username, directory, type from
users where type=local or type=special.
For Linux
The userID defines if a user is a local account or system account. This is defined by
UID_MIN and UID_MAX.
Use this command to get user information through ACC-VC to get UID_MIN and
UID_MAX value: grep -E '^UID_MIN|^UID_MAX' /etc/login.defs.
Use this command to get user names: cat /etc/passwd | awk -F':'
'{print $1,$3,$6.
For macOS
Use OSquery commands to get user information through ACC-VC: select uid,
username, directory from users. User names that are preceded by ‘_’ are
treated as system accounts. Others are local accounts.

Agent Client Collector Log Analytics setup
Configure Agent Client Collector Log Analytics on your ServiceNow instance either with or
without using guided setup.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4226


<!-- page 4227 -->
Agent Client Collector Log Analytics setup using guided setup
Agent Client Collector Log Analytics guided setup provides a sequence of tasks that help you
configure Agent Client Collector Log Analytics on your instance. Using guided setup ensures that
you have the minimum required setup to use the application. For more information, see Set up
Agent Client Collector Log Analytics using guided setup.
For more information about using the guided setup interface, see Using guided setup

.

Agent Client Collector Log Analytics setup without using guided setup
If you are not using guided setup, you must perform several configuration steps manually. For
more information, see Set up Agent Client Collector Log Analytics without using guided setup.
Set up Agent Client Collector Log Analytics using guided setup
Configure Agent Client Collector Log Analytics on your ServiceNow instance using guided setup.

Before you begin
®

• Agent Client Collector Log Analytics has a dependency on the ServiceNow Event
Management application. Set up Event Management before you configure Agent Client
Collector Log Analytics. For more information, see Event Management setup.
• ServiceNow Service Operations Workspace ITOM Apps must be installed. If it is not installed
already, install it manually. For more information, see Install Service Operations Workspace for
ITOM application.

Note: Currently, the ACC data input setup only supports basic authentication with MID
Server. mTLS is not supported.
Role required: agent_client_collector_admin

About this task

Agent Client Collector Log Analytics guided setup provides a sequence of tasks that help you
configure Agent Client Collector Log Analytics. Using guided setup ensures that you have the
minimum required setup to use the application.

Note: If you are not using guided setup, you must perform several configuration steps
manually. For more information, see Set up Agent Client Collector Log Analytics without
using guided setup.

Procedure
1. Navigate to All > Guided Setup > ITOM Guided Setup.
The IT Operations Management Guided Setup welcome screen appears.
2. Select Get Started.
3. In the Agent Client Collector Log Analytics pane, click Get Started.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4227


<!-- page 4228 -->
4. In the MID setup section, take the appropriate action:
◦ If you have already configured a MID Server, select Mark as Complete.
◦ If you have not configured a MID Server, select Configure and set up a MID Server, then
select Mark as Complete. For more information, see Use MID Server guided setup.

Note: To stream data into the system, you must have a MID Server with the Log
Ingestion capability enabled.
When the MID Server is configured, the status indicator for Agent Client Collector Log
Analytics guided setup shows that 64% of the configuration is complete. The progress
indicator shows the completion percentage for all the IT Operations Management tasks.

5. Configure Agent Client Collector Log Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4228


<!-- page 4229 -->
a. In the ACC Configuration section, select a setup task and read the instructions in the help
pane.

b. Select Configure and complete the task.
For detailed information about each setup task, consult the Agent Client Collector Log
Analytics product documentation.
c. Complete all required setup tasks in the task list.
d. Select Mark as Complete to complete the Agent Client Collector Log Analytics
configuration.
Set up Agent Client Collector Log Analytics without using guided setup
Configure the Agent Client Collector to stream log data from Linux and Windows hosts to a
ServiceNow instance without using guided setup.

Before you begin

Note: You can configure Agent Client Collector Log Analytics using guided setup. The
guided setup ensures that you have the minimum required setup for using the application.
For more information, see Set up Agent Client Collector Log Analytics using guided setup.
• The Agent Client Collector Log Analytics (ACC-L) plugin must be installed. The plugin comes
with the Agent Client Collector Framework (ACC-F) and Agent Client Collector Monitoring
(ACC-M) plugins. For more information, see Agent Client Collector installation.
• ServiceNow Service Operations Workspace ITOM Apps must be installed. If it is not installed
already, install it manually. For more information, see Install Service Operations Workspace for
ITOM application.
• Agent Client Collector Log Analytics has a dependency on the Health Log Analytics
application, Version 22.0.12 - December 2021 and later, available from the ServiceNow Store
Streaming log data from Windows hosts is supported in Agent Client Collector Log Analytics
Version 3.1.0 and later.

.

Important: Health Log Analytics does not support IPv6. To work with the application,
configure the MID Server to IPv4.
• The Agent Client Collector comes with the default servicenow user. Ensure that this
user has read access to enable Agent Client Collector to view all the configured log paths.
For example, the Agent Client Collector servicenow user that comes installed with the
base system does not have permissions to view the paths to /var/log/ in Linux and C:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4229


<!-- page 4230 -->
\Windows\System32 in Windows. For information about configuring permissions for the
servicenow user, see the ACC-L Permission Denied issues [KB1117271]
article in the Now
Support Knowledge Base.

Note: Currently, the ACC data input setup only supports basic authentication with MID
Server. mTLS is not supported.
Role required: agent_client_collector_admin

Procedure
1. Navigate to All > Agent Client Collector > Deployment > MID Servers.
2. On the MID Server page, select a MID Server that is validated and has a Status value of Up.
3. On the MID Server page for the selected server, select Setup ACC Log Analytics in the related
links section.
Agent Client Collector Log Analytics setup starts.
In addition, the system automatically creates an ACC data input. When it has been created, the
data input record is added to the ACC data inputs table and the data input is ready to stream
logs.

Note: It is important to configure an ACC data input for every MID Server to which Agent
Client Collectors can connect. For more information, see Set up additional ACC data
inputs.
The system also prompts you to set up the MID Web Server. For more information, see MID
Web Server.
4. In the ACC Log Analytics Setup dialog box, configure the ports.
a. In the MID Web Server Port and ACC data input Port fields, enter the appropriate port
numbers.
b. Select OK.
The URL with the configured endpoint appears in the dialog box.
c. Copy and save the endpoint URL for use when installing the ACC agent on the endpoint
machine.
5. Navigate to All > Agent Client Collector > MID Web Server API Key and copy and save the
MID Web Server API key for use when installing the ACC agent on the endpoint machine.
6. Install the ACC agent on the endpoint machine.

Note: If you have already installed the ACC agent, proceed to Agent Client Collector log
policies.
a. Navigate to All > Agent Client Collector > Deployment > Agent Downloads.
b. Download the ACC agent for the appropriate operating system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4230


<!-- page 4231 -->
For detailed instructions, select the documentation link for the operating system. For
example:

Result

Agent Client Collector Log Analytics and the ACC agent are installed. You can start using the
application.

What to do next

Review the Agent Client Collector log policies.
Identify and resolve log streaming issues
Make sure that your ACC data inputs are streaming data properly by identifying and resolving log
streaming issues.

Before you begin

Role required: agent_client_collector_admin

About this task

In the ACC data input record, the Streaming Sources related list shows the streaming data of that
data input's sources. This data enables you to identify streaming issues and their possible cause.
For example, if the last event time for a data input's endpoint server is yesterday, the server might
be down or configured incorrectly. A streaming issue might also be caused by the data input
configuration file not being installed on the endpoint.

Note: You can view the streaming data of all data inputs and the MID Servers that
receive logs from them in the Streaming Sources page. For more information, see Identify
and resolve a log streaming issue in Health Log Analytics in the ServiceNow Health Log
Analytics application documentation.

Procedure
1. Navigate to All > ACC Data Inputs and select a data input record.
2. On the data input form, select the Streaming Sources related list.
3. Review the streaming data of that data input's sources.
For a description of the filters, see ACC data input streaming sources.
4. Resolve any data streaming issues.
a. Navigate to All > ACC Log Analytics > ACC Log Alerts.
b. Open alerts and address the specified issues.

What to do next

Proceed to the next step in the Health Log Analytics data input setup flow. For more information,
see Set up additional ACC data inputs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4231


<!-- page 4232 -->
ACC data input streaming sources
In the ACC data input record, the Streaming Sources related list shows the streaming data of that
data input's sources.
Streaming Sources related list
Filter

Description

Status

The status of the source. A red bullet indicates
that this source has not streamed data in the
last hour.

Last event time

The last recorded time an event arrived at the
MID Server in the last one-minute interval.
Health Log Analytics continuously updates the
last event time. If the last event time is not up
to date, data is not streaming.

Raw log lines/sec

The average number of raw log lines that
streamed to the MID Server per second in the
last one-minute interval.

Note: This value represents the number
of raw log lines before preprocessing.
Preprocessed log lines/sec

The average number of preprocessed log lines
that streamed to the MID Server per second in
the last one-minute interval.

Note: This value can differ from the
number of raw log lines per second. For
example, the difference can be a result
of logs having been dropped during
preprocessing.
View log shipper alerts
View all log shipper check alerts for Agent Client Collector Log Analytics (ACC-L) agents.

Before you begin

Role required: agent_client_collector_admin

About this task

In the ACC Alerts list, you can see at a glance if any issues are preventing the log shipper from
collecting data. The list shows all log shipper-related alerts in one place and provides information
to help you resolve the issues.
The ACC Alerts list only includes alerts about the success or failure of log shipper execution on
a CI on a specific agent. These alerts are a subset of the alerts shown in the Event Management
Alerts list, which includes alerts of all types. For more information about the Event Management
Alerts list, see View alert information.
Log shipper alerts are generated from log shipper events with a severity of Major or Critical.
These alerts are typically related to log path issues or a lack of permissions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4232


<!-- page 4233 -->
Note: If an OK event on the log shipper is received on a CI where an open log shipper
alert exists, the open log shipper alert on that CI is closed.
Log shipper Alerts list

Procedure
1. Navigate to All > ACC Log Analytics > ACC Log Alerts.
2. Review the information provided in the Alerts list.
For details and a description of the columns, see Monitor incoming alerts.
Related topics
View log shipper events
View log shipper events
View all log shipper events with all severity levels for Agent Client Collector Log Analytics (ACCL) agents.

Before you begin

Role required: agent_client_collector_admin

About this task

The ACC Events list shows all log shipper-related events in one place. The list only includes
events about the success or failure of log shipper execution on a CI on a specific agent. These
events are a subset of the events shown in the Event Management Events list, which includes
events of all types.

Procedure
1. Navigate to All > ACC Log Analytics > ACC Log Events.
2. Review the information provided in the Events list.
For details and a description of the columns, see View events.
Related topics
View log shipper alerts
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4233


