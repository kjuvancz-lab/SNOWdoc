# Zurich IT Operations Management — Discovery

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 1048–1197 of 4823 | Part 3 of 5

Sections: Discovery (p748)

---

<!-- page 1048 -->
About this task

Whether you perform discovery using patterns or probes, the MID Server executes commands
to access configuration items (CIs). Most commands require credentials to run them. In addition,
you must assume a role of a user with elevated rights to run some of these commands. If the
necessary credentials are missing, discovery fails.
For pattern-based discovery, you can validate all commands used by a certain pattern
simultaneously.
You can also validate discovery commands to check that the IP addresses you’re using for
discovery are reachable. Sometimes IP addresses are incorrect or the servers using these IP
addresses are down.
If you validate commands that contain applicative credentials, the Command Validation Tool
checks the Connections and Credentials module and uses relevant applicative credentials
configured there.
Starting with Pattern Designer Enhancements version 3.9.0, the new pde_viewer role can view
the command validation task results through the Command Validation Tasks and Command
Validation Task Results modules but can't edit or modify them. For more information, see View
command validation task results in pattern-based discovery.

Procedure
1. Navigate to All > Pattern Designer > Command Validation Tool > Create New.
2. Optional: To validate all commands used by a pattern, select Validate All Pattern Commands.
3. Fill in the fields as described in Command Validation Tasks form for pattern-based discovery.
4. Select and hold (or right-click) the form header and select Save.
5. Optional: If the commands you selected contain temporary variables, add the values for these
variables before validating such commands.
a. Select Refresh Temporary Variable Mappings under Related Links.
The tool creates a list of all temporary variables for the chosen commands and IPs.
b. Select the Temporary Variable Mappings tab and enter the values for the temporary
variables.
Temporary Variable Mappings tab

6. Select Run Command Validation.
7. Check if FAILURE appears in the Result column in the Command Validation Task Results
section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1048


<!-- page 1049 -->
8. Select the link in the Command Validation Test column.
9. Review the description in the Results Details field.

What to do next
1. Select the Open suggestions to troubleshoot failure link.

2. Follow the instructions in the Steps to Remediate window.
Related topics
Discovery commands for probes and patterns
Getting started with credentials
Command List form for pattern-based discovery

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1049


<!-- page 1050 -->
View command validation task results in pattern-based discovery
View the results of command validation tasks to verify you have the correct credentials and
permissions to run pattern-based discovery successfully.

Before you begin
• Verify that Pattern Designer Enhancements (sn_itom_pde) is installed.
• Verify that a command validation task has been created. For more information, see Validate
commands used in pattern-based discovery.
Role required: One of the following.
• discovery_admin
• pde_viewer (starting with Pattern Designer Enhancements version 3.9.0)

About this task

Starting with Pattern Designer Enhancements version 3.9.0, the new pde_viewer role can view
the command validation task results through the Command Validation Tasks and Command
Validation Task Results modules but can't edit or modify them.

Procedure
1. Navigate to All > Pattern Designer > Command Validation Tool > Command Validation Tasks.
2. In the Number column, search for the relevant command validation task.
3. Select the relevant command validation task.
4. Verify that the Status field is set to Complete.
5. In the Command Validation Task Results tab, check if FAILURE appears in the Result column.
6. If any of the commands failed, select the link in the Command Type column.
7. Review the failure description in the Results Details column.

What to do next

If you're using the discovery_admin role and a command fails, follow the remediation
suggestions in the Open suggestions to troubleshoot failure related link.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1050


<!-- page 1051 -->
1. Select the Open suggestions to troubleshoot failure link.

2. Follow the instructions in the Steps to Remediate window.

Note: This functionality isn't available to users with the pde_viewer role.
Related topics
Command Validation Tasks form for pattern-based discovery
Discovery commands for probes and patterns
Command List form for pattern-based discovery
Advanced Discovery configuration
You can configure several additional components of Discovery such as Application Dependency
Mapping, the ECC queue, and extensions for the MID server.
gMSA configuration for Discovery
Group managed service accounts (gMSAs) are managed domain accounts that you use to help
secure services. gMSAs can be used for credential-less Discovery.

Benefits
After you configure Discovery to use gMSA, password management for that account is handled
by the Windows operating system. So, you can run Windows Discovery without sharing
credentials with the ServiceNow instance. Benefits include the following:
• You don’t have to handle gMSA passwords on your own.
• You can choose the cycle of gMSA password rotation for better security.
• You don't need to store the password on the ServiceNow instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1051


<!-- page 1052 -->
• The gMSA user doesn't need to be member of a domain admin group.
• The gMSA user used as the MID Server service account doesn't need to be on the local admin
group of the MID Server.
Configure gMSA for Discovery
Use Group Managed Service Accounts (gMSA) to securely run MID Servers and perform
Windows discovery without storing passwords locally. This configuration improves security and
simplifies credential management by leveraging Active Directory for automatic password rotation
and centralized control.

Before you begin
• Verify that the gMSA account is created and configured in Active Directory.
• Add the gMSA accounts to the MID Server host's local Administrator's group.
• For target servers, add the gMSA account to their local Administrator's group.
Role required: agent_admin, discovery_admin, or admin

Procedure
1. On the PowerShell command line, create a KDS Root key on a Domain Controller using the
following commands:
Add-KdsRootKey -EffectiveImmediately
or
Add-KdsRootKey –EffectiveTime ((Get-Date).AddHours(-10))
2. Set up your gMSA and security groups using the group managed services account information
https://docs.microsoft.com .

Note: It's not usually necessary to add discovered Windows servers to the GMSAGroup.
Member hosts obtain the current and previous password values directly from a domain
controller, and Discovery doesn't require this step.
3. Start the MID Server with the gMSA account following the directions here on using gMSA:
Install a MID Server on Windows
4. Create a Windows credential on the instance and select the check box Use MID Server
Service Account.
5. Launch a Discovery on the server hosting the MID Server and another computer.
Credential-less Discovery with Nmap
If the instance fails to identify a configuration item (CI) because of authentication failure,
Discovery or Service Mapping can run selected Network Mapper (Nmap) commands with a MID
Server to collect some basic information about the CI without using credentials.
A MID Server administrator can install Nmap
on individual MID Servers running on a Windows
host. Those MID Servers can then discover some basic information about CIs in your network
when normal authentication fails.

Important: Self-hosted customers whose network security does not permit downloads
from install.service-now.com must install and configure Nmap manually on their
system. Refer to Install Nmap on a self-hosted system
for instructions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1052


<!-- page 1053 -->
Credential-less Discovery can create or modify host and application CIs when credentials are
missing or misconfigured. If a credential-based Discovery is performed successfully after Nmap
creates a CI, the system reconciles the information gathered from each type of discovery.

What Nmap can discover
The Nmap commands executed during credential-less Discovery can:
• Perform reverse DNS name resolution to identify the host from the IPv4 address.
• Return the MAC address of the host if that host is on the same subnet as the host executing
the Nmap command.
• Detect applications installed on a target host.
• Detect the operating system of a target host and the OS version.

Note:
Credential-less Discovery classifies routers and switches as hardware. It does not create or
update CIs specifically for them.
Credential-less Discovery should only be used on known subnets where credentials are not
viable and should not be used long term.

Nmap credential-less Discovery scans in cloud computing platforms
It is often against the terms of service to run Nmap scans to or from any resource within a cloud
computing service such as Amazon Web Service, Microsoft Azure, IBM Cloud, or Google Cloud
Platform. For example, the Amazon Web Service (AWS) environment is tightly regulated and
requires the permission of AWS through the AWS Vulnerability/Penetration Testing Request
form. Unauthorized tests against AWS services or AWS-owned resources are prohibited. For
this reason, credential-less Discovery within a cloud computing service environment is not
appropriate, and if a violation of their policy occurs, could result in expulsion from the service.
Please contact your platform service provider for information on limitations or permission
requirements for running Nmap.

Components installed with Nmap
The Discovery - IP Based [com.snc.discovery.ip_based] plugin that provides the Nmap
functionality is activated automatically when either Discovery or Service Mapping is active.
These Nmap components are provided by the Discovery - IP Based plugin:

Component

Description

System property

The mid.discovery.credentialless.enable
property enables or disables Nmap for all
MID Servers on which Nmap is installed that
are connected to the instance. This property
is installed with the Discovery plugin and is
enabled by default. It is configurable by a
system administrator.

MID Server properties

These properties, from the MID Server
Property [ecc_agent_property] table, are not
intended to be configured:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1053


<!-- page 1054 -->
Component

Description

• mid.nmap.version: Version of Nmap
that is installed on MID Servers in your
environment. This field is visible on the
MID Server [ecc_agent] form after Nmap is
installed.
• nmap.safe.scripts: Defines the list of Nmap
scripts that are classified as safe for use
during execution of Nmap’s Application
Version Detection phase (-sV command
option).
• nmap.npcap.version: The version of Npcap
that is installed with Nmap. The Nmap
installer can only perform upgrades of
existing Npcap installations it encounters.
Fields

• Credentialless Discovery Port [cl_port]:
Optional field on the Application
[cmdb_ci_appl] table that displays the
number of a port scanned by credentialless Discovery. This port number is used to
determine whether an application returned
by Nmap has a matching CI in the CMDB or
if a new CI must be created.
• Discovery source [discovery_source]:
Optional field in the Configuration
Item [cmdb_ci] table to which the
CredentiallessDiscovery choice is added.
This option shows that credential-less
Discovery was used to create a CI.

Nmap MID Server capability

The Nmap MID Server capabilities
is
added to the MID Server when Nmap is
installed and removed automatically when
Nmap in uninstalled. Only MID Servers with
this capability can perform credential-less
Discovery. A system administrator cannot add
or remove this capability manually. Self-hosted
customers who have the maint role can modify
or delete the Nmap capability, but should not
do so.
Service Mapping doesn’t check for the
presence of the Nmap capability and selects
the MID Server based on the IP address
only. To ensure that Service Mapping doesn’t
select a MID Server without the Nmap
capability, install Nmap on all MID Servers
assigned to the IP address ranges for which
you want credential-less Discovery to be
available. If Service Mapping selects a MID
Server for credential-less Discovery that
doesn’t have Nmap capabilities, this error

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1054


<!-- page 1055 -->
Component

Description

message appears in the map, at the site of
the CI being discovered: Nmap is not
installed on MID Server. Verify
all MIDs configured to handle
selected IP Address have Nmap
Capability. Nmap root directory
path does not exist: <path>

Note: The ALL MID Server capability
does not include the Nmap capability.
Npcap

Npcap
is Nmap's packet capture library for
Windows. Npcap allows Nmap to perform port
scans quickly and to identify the family of the
operating system running on the target. Only
one copy of Npcap is installed per MID Server
host.
Because Npcap can be used by other
applications, uninstalling Nmap does not
automatically uninstall Npcap. You must
uninstall Npcap manually, after determining
that no other dependencies exist.

Patterns

• Credentialless Discovery Network Device:
Scans a host IP address using an Nmap
command to identify the host. This pattern
launches the Credentialless Discovery
Network Device – PreLaunch script to
retrieve the list of ports to explore from the
IP Service [cmdb_ip_service] table. Do not
modify this script.
• Credentialless Discovery Application:
Scans a port at an IP address using an
Nmap command to identify the application
service actively listening on that port.
Service Mapping launches this pattern
when all credential-based port classification
steps fail. Discovery creates a CI in the
Application [cmdb_ci_appl] table if the
port is open and it can identify the service
by name and product. If the service does
not respond to any of the scan attempts,
Nmap consults its nmap-services registry
and guesses at which service is most
likely running on that port. If Nmap has to
guess what application is running on a
scanned port, the Credentialless Discovery
Application pattern does not create an
application CI or update an existing CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1055


<!-- page 1056 -->
Component

MID Server script includes

Description

• SetCredentialLessDeviceClassName:
Determines which host CI to create or
update after the successful execution of the
Nmap command. Do not modify this script.
• CredentialLessApplicationClassNameMapper:
Maps the service product, service name,
and extra service information supplied by
Nmap for the scanned port to a supported
application table in the instance. System
administrators can modify this script.
• SetCredentialLessApplicationClassName:
Ensures that the

CredentialLessApplicationClassNameMapper
script is invoked only once. Do not modify
this script.
System script include

The CredentiallessDiscoveryAjax
script include runs on the instance and
handles the installation and uninstallation of
Nmap on Windows MID Servers, executed
from UI actions on the form. Do not modify this
script.

Credential-less host Discovery
Credential-less host discovery occurs when a scanned host is found to be alive, but not active, or
when all configured credential-based classification probes have failed.

How the host Discovery pattern is launched
If the Shazzam probe scans a host that is alive but not active, and if credential-based
classification probes fail, horizontal Discovery launches the Credentialless Discovery Network
Device pattern to gather host information. If the host being scanned does not have a CI defined,
Service Mapping launches the HorizontalDiscoveryProbe probe, which in turn launches the
Credentialless Discovery Network Device pattern. This pattern attempts to create a new CI if
one does not already exist for the scanned host or to update an existing CI in the Hardware
[cmdb_ci_hardware] table.

Important: To allow the Credentialless Discovery Network Device pattern to launch,

ensure that the mid.discovery.credentialless.enable system property is set
to true. To disable, ensure this property is set to false.
ECC Queue entries
The system creates these entries in the ECC queue during execution of the
HorizontalDiscoveryProbe.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1056


<!-- page 1057 -->
ECC Queue entries (continued)
Credential-less Discovery

Log messages
These log messages are published during execution of the HorizontalDiscoveryProbe.
Credential-less host identifier

The Nmap command
The Nmap command executed on the MID Server determines if the host is up. Using the IP
address and a list of ports passed to Nmap by the pattern, Nmap performs reverse DNS name
resolution to identify the host name associated with the IP address. If multiple host names are
configured, the first name returned by Nmap is used. If no host name is configured, then the
IP address of the remote host is used to create the host CI. The Npcap packet capture library,
included with the Nmap installation, identifies the host operating system family. If the scanned
host is located on the same subnet as the Windows MID Server host that executes Nmap, the
remote host's MAC address is returned.

Note: The list of ports that Nmap is configured to scan during credential-less host
Discovery is stored in the IP Service [cmdb_ip_service] table, which is editable. By default,
all ports are available for scanning. To block the use of any port for an Nmap scan, set the
value in the Credentialless Discovery [cl_discovery] column to false.
Credential-less port list

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1057


<!-- page 1058 -->
Creating or updating host CIs
After successful execution of the Credentialless Discovery Network Device pattern, the
SetCredentialLessDeviceClassName MID Server script runs to identify the operating
system family of the discovered host. The system class of the host CI is based on the operating
system family that is returned by Nmap. If the OS family matches one of the six supported
server operating systems, then the system uses a server class derived from the Hardware
[cmdb_ci_hardware] base class, such as Linux Server [cmdb_ci_linux_server]. If no match is
found, the system uses the base class.

Note: When the issue with the credentials is resolved and Discovery runs again, the
instance uses the serial number, host name, and system class provided by credentialbased discovery to update the host CI that was created by credential-less Discovery.
Supported OS families
OS family

CI table

AIX

cmdb_ci_aix_server

HP-UX

cmdb_ci_hpux_server

Linux

cmdb_ci_linux_server

Solaris

cmdb_ci_solaris_server

OS X or iOS

cmdb_ci_osx_server

Windows

cmdb_ci_win_server

Undefined

cmdb_ci_hardware

Hardware identification
The Discovery - IP Based [com.snc.discovery.ip_based] plugin adds an identifier to the Hardware
Rule for the Hardware [cmdb_ci_hardware] base table that matches on the host CI name for
Nmap scans. The Hardware Rule is used by both credential-based and credential-less Discovery.
Credential-less hardware rule

Credential-less Application Discovery
Credential-less Application Discovery attempts to identify an application service actively
listening on a specific port at a given IP address.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1058


<!-- page 1059 -->
The application discovery pattern
Service Mapping launches the Credentialless Discovery Application pattern when all credentialbased port classification steps fail. The pattern executes an Nmap command on a Windows MID
Server with Nmap installed, that is configured to perform application/version detection against a
specific remote host IP address and port. If the port being scanned by Nmap is open, the pattern
executes the CredentialLessApplicationClassNameMapper MID Server script
include, which maps the service product, service name, and any extra information supplied by
Nmap to a supported ServiceNow application table. If the script can map the returned product to
an appropriate table derived from the base Application [cmdb_ci_appl] table, the script passes
this information to the pattern. The pattern passes the match to the Discovery identifier for
eventual CI creation or reconciliation. If the information returned by Nmap does not match any
derived table, then the instance uses the base Application [cmdb_ci_appl] table to create the CI.

Important: To allow the Credentialless Discovery Application pattern to launch, ensure

that the mid.discovery.credentialless.enable system property is set to true.
To disable, ensure this property is set to false.

Example scan
This information was returned by an Nmap Application/Version Detection port scan on a Linux
test system and illustrates the type of application data Nmap scans can return.

Information

Port

Port state

open

Service name

ssh

Service product

OpenSSH

Extra service information

Protocol 2.0

Default application mappings
The CredentialLessApplicationClassNameMapper MID Server script include is
configured with a subset of the most common application tables available for Discovery and
Service Mapping. A user with the agent_admin role can edit this script include to add additional
CI tables that credential-less application Discovery can use for mapping to a derived application
CI class.
Shown in this table are examples of close matches returned by Nmap on a test system that
CMDB Identification and Reconciliation
was able to resolve into defined products. In many
cases, the service name returned by Nmap was not needed to determine a match. Service
names that appear in the table were required to determine a match.
Products returned by Nmap that cannot be resolved into defined Discovery products use the
following naming format: <serviceProduct>:<serviceExtrainfo>:<serviceName>. If any value in
this string is null, it is dropped from the name.
• serviceProduct: Service product information returned by Nmap.
• serviceExtrainfo: Any additional information that Nmap returns about the application that
might help identify it, such as protocol information.
• serviceName: The installed name of the service or daemon of the product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1059


<!-- page 1060 -->
Examples of close matches that were resolved
Nmap response

Script response - Identifier input

Service product

Service name

Service extra
information

Discovered
product

CI application
table

Apache Tomcat/
Coyote JSP
engine 1.1

N/A

NULL

Tomcat

cmdb_ci_app_server_tomcat

Apache httpd
2.2.10 ((Linux/
SUSE))

N/A

NULL

Apache Web
Server

cmdb_ci_apache_web_server

IBM HTTP Server

N/A

Derived from
Apache

Apache Web
Server

cmdb_ci_apache_web_server

IBM DB2
Database Server
(QDB2/LINUX)

N/A

NULL

DB2 Instance

cmdb_ci_db_db2_instance

Microsoft
Exchange smtpd

smtp

NULL

Exchange Client
Access Server

cmdb_ci_exchange_cas

Microsoft
Exchange 2010
log copier

msexchangelogcopier

NULL

Exchange
Mailbox

cmdb_ci_exchange_mailbox_serve

JBoss service
httpd

N/A

NULL

JBoss

cmdb_ci_app_server_jboss

Microsoft IIS
httpd 6.0

N/A

NULL

Microsoft iis Web cmdb_ci_microsoft_iis_web_server
Server

Microsoft SQL
Server 2005
9.00.4035; SP3

N/A

NULL

Microsoft SQL
Server

cmdb_ci_db_mssql_instance

MongoDB 2.5.1

N/A

NULL

MongoDB
Instance

cmdb_ci_db_mongodb_instance

MySQL 5.5.51

N/A

NULL

MySQL Instance

cmdb_ci_db_mysql_instance

nginx 1.4.6
(Ubuntu)

N/A

NULL

Nginx Web
Server

cmdb_ci_nginx_web_server

PostgreSQL DB

N/A

NULL

PostgreSQL
Instance

cmdb_ci_db_postgresql_instance

Oracle WebLogic N/A
Server

NULL

Weblogic

cmdb_ci_app_server_weblogic

IBM WebSphere
MQ 6.0

N/A

NULL

IBM WebSphere
MQ

cmdb_ci_appl_ibm_wmq

IBM WebSphere
Application
Server 6.1

N/A

NULL

IBM Websphere

cmdb_ci_app_server_websphere

OpenSSH : ssh

N/A

NULL

OpenSSH

cmdb_ci_appl

Oracle Instance

N/A

NULL

Oracle Database

cmdb_ci_db_ora_instance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1060


<!-- page 1061 -->
Examples of close matches that were resolved (continued)
Nmap response

Script response - Identifier input

Service product

Service name

Service extra
information

Discovered
product

CI application
table

Oracle Instance

N/A

NULL

Oracle TNS
Listener

cmdb_ci_db_ora_instance

product-A

service-B

NULL

productA:service-B

cmdb_ci_appl

product-A

service-B

extrainfo-C

productA:extrainfoC:service-B

cmdb_ci_appl

Examples of applications not uniquely matched
In this example, the information returned by Nmap does not match any derived table, and the
instance must use the base Application [cmdb_ci_appl] table to create the CI.

Scanned
application

Nmap response
Service
product

Service name

ExchangeHub Microsoft
msrpc
Windows RPC

HAProxy Load IBM HTTP
Balancer
Server
(Derived from
Apache)
SharePoint

SharePoint

Oracle
Database
Oracle
Instance

Script response - identifier input
Service extra
information

Discovered
product

CI application
table

null

Microsoft
Windows
RPC:msrpc

cmdb_ci_appl

http

null

http

null

N/A

null

IBM HTTP
Server
(Derived from
Apache):http
Oracle
Database:http
Oracle
Database

cmdb_ci_appl

cmdb_ci_appl

cmdb_ci_appl

Application identification
The Discovery - IP Based [com.snc.discovery.ip_based] plugin adds an identifier to the
Application Rule for the Application [cmdb_ci_appl] table that matches on sys_class_name and
cl_port for Nmap scans.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1061


<!-- page 1062 -->
Nmap identifier for the Application Rule

Nmap commands and data collected with credential-less Discovery
Nmap executes in phases when collecting data and runs a controlled set of safe commands with
two patterns for exploring applications and devices.

Data returned by Nmap from host Discovery
Nmap returns the following data for a host it determines is up:
• Operating system family: If the operating system family is one of the six supported server
operating system families, then a host CI associated with the appropriate server class is used
to create or update the host CI. If the operating system family returned by Nmap is not one of
the supported server operating systems, then a host CI is created or updated using the base
Hardware [cmdb_ci_hardware] class.
• MAC address: If the scanned host is located on the same subnet as the Windows MID Server
host that is executing the Nmap commands, then Nmap returns the remote host's MAC
address.

Commands run by Nmap during host Discovery
The MID Server passes the IP address of a remote host to the Nmap command and a set of ports,
taken from the IP Service table. The host must be reported by Nmap to be up. The host is up if the
port state returned by Nmap is open or open/filtered. If the host is reported to be up, then the
operating system family returned is examined to determine the class used to create or update
the host CI.

Command

Description

-PS

TCP SYN option determines if the host is online. This option that sends
an empty, raw TCP packet with the SYN flag set to all the specified
ports on the scan list. Nmap reports the host is online if a SYN/ACK
TCP packet is returned and if an RST is returned, indicating that
the port is closed. The Nmap host machine tears down the nascent
connection with an RST, instead of an ACK, since the SYN/ACK

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1062


<!-- page 1063 -->
Command

Description

response is unexpected from its perspective. If multiple port probes
are specified, they are sent in parallel.
Requirements:
• Raw packet privileges.
• Must run as root on UNIX.
• Administrator privileges on Windows.
-PA

Detects packet-filtering devices. This option is a TCP ACK host
Discovery, using a specified list of ports. If no list is defined, the default
port 80 is used.
Nmap sends an empty, raw TCP packet with the ACK flag set. This
action acknowledges data over an established TCP connection,
causing the remote host to respond with an RST packet. If the remote
host does respond with an RST packet, Nmap knows the host is
online. The ACK ping probe may get past packet filtering of TCP SYN
packets by stateless packet filtering, network entities, such as firewalls,
routers, and host routing tables/firewall software. Stateful firewalls drop
unexpected packets, causing the ACK packet to be dropped, which
increases the likelihood of the SYN TCP probe getting through.
Requirements:
• Raw packet privileges.
• Must run as root on UNIX.
• Administrator privileges on Windows .

Note: Both Ping SYN (-PS) and Ping ACK (-PA) packets types
can be configured together in the same scan attempt.
-O

Enables OS detection against a remote hostm providing the vendor
name, underlying OS, OS generation, and device type, such as a router
or a switch.
Nmap uses TCP/IP stack fingerprinting to determine the OS family
running on the host. Nmap sends a series of TCP and UPD packets
to the host and examines the responses. After testing the responses
thoroughly, Nmap compares results to its nmap-os-db database and
prints the OS details, if there is a match. If Nmap is not able to guess
the OS, and at least one open port and one closed port were found,
then it generates a fingerprint and a URL to submit to nmap.org.
OS detection does not use scripts from the Nmap Scripting Engine
(NSE). OS detection runs after Application/Service Version detection,
which helps the accuracy of OS Detection. However, the results of the
two scan types might be contradictory. OS Detection runs at the TCP
transport layer, while Application/Service Version Detection runs at a
higher level in the TCP stack.
Requirements:
• Raw packet privileges.
• Must run as root on UNIX.
• Administrator privileges on Windows .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1063


<!-- page 1064 -->
Command

Description

-p

List of ports to scan.

-T4

Nmap aggressive timing template.

-v

Enable verbose detail. This command is normally used to provide
progress indication to viewers of standard output. However, it can
cause the Nmap Scripting Engine (NSE) scripts to provide additional
detail.

-Pn

Disable the default ping. This command skips the initial Nmap host
discovery scan phase and treats all hosts as if they are online. Use this
command if you want a port scan even if the set of ports run by the
default Discovery probes will not find an open port.

-r

Scan ports consecutively, without randomizing.

--reason

Explains why Nmap classified a port with a specific state.

--system-dns

Use the DNS resolver of the operating system for reverse DNS lookup,
rather than the DNS name servers. This option is slower than using
DNS servers, since it can only resolve one IP address at a time, while
multiple rDNS requests are performed in parallel. However, the value
returned matches the value returned by the MID Server that is used to
create host CIs.

-X -

Redirects stdout to a XML file.

2> <file-path>

Redirects errors messages written by Nmap to stderr to the
specified file.

Data returned by Nmap during application Discovery
Nmap returns the following application data from a host it determines is up:
• Port state:
◦ open: An application is actively accepting TCP (or UDP) packets on the port.
◦ open|filtered: Nmap cannot determine if the port is open or filtered. An open port may not
return a response when using Nmap’s UDP, IP protocol, FIN, NULL and Xmas scans.
• Service name: Name of the service actively accepting TCP (or UDP) packets on the service
port.
• Service product: Name of the application running on the open port, as identified by Nmap.
• Extra service information: Any additional information returned by Nmap that Discovery can
use to identify the application.

Commands run by Nmap during application Discovery
The MID Server passes one IP address for a remote host to the Nmap command and one
port to scan. Nmap attempts to identify the application actively listening on the port and then
determines whether it should create a new CI or update an existing one. The host must be
reported by Nmap to be up.
Nmap uses this information to determine which course to take:
• Service product
• Service name
• Extra service information
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1064


<!-- page 1065 -->
• State of the scanned port

Note: The service product and service name values cannot be NULL, and the service
name cannot end with a question mark. Nmap appends a question mark to a service
name when it guesses at the application listening on the scanned port. The instance
does not create or update an application CI if Nmap cannot retrieve the application name
from its static nmap-services registry file.

Command

Description

-sS

TCP SYN (stealth) port scan. This is the default scan option and never
completes TCP connections. Scans can differentiate between ports
that are open, closed, or filtered.
TCP SYN scan implements a half-open reset that aborts the request
before the connection can be established. The port is open (the
application is listening) if a SYN/ACK is returned. The port is closed
if an RST is returned. If no response is received after multiple
retransmissions, the port is marked filtered. The port is also marked
filtered if an ICMP unreachable error (type 3, code 1,2,3,9,10,13) is
received.
Requirements:
• Raw packet privileges
• Must run as root
• Windows administrator privileges

-sV

Probes open ports to determine the service protocol, application
name, version number, hostname, device type, OS Family and
miscellaneous details such as the SSH protocol version.
When Nmap receives a response it cannot match to the database it
prints out a fingerprint and URL for submission to nmap.org. If looks
for the port number in its static nmap-services registry file to
determine the name of an application service that might be actively
listening on the port. The service name returned by Nmap is appended
with a question mark, indicating that Nmap had to guess at its identity.
The instance does not create or update an application CI when Nmap
guesses at the application running on an open port.

Note: This command does not require raw-packet privileges.
--datadir

Path to the directory containing the safe set of Nmap scripts to be run
during Application/Version detection.

-p

Single port to scan.

-T4

Nmap aggressive timing template.

-v

Enable verbose detail. This command is normally used to provide
progress indication to viewers of standard output. However, it can
cause the Nmap Scripting Engine (NSE) scripts to provide additional
detail.

-Pn

Disable the default ping. This command skips the initial Nmap host
discovery scan phase and treats all hosts as if they are online. Use this

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1065


<!-- page 1066 -->
Command

Description

command if you want a port scan even if the set of ports run by the
default Discovery probes will not find an open port.
-r

Scan ports consecutively, without randomizing.

--reason

Explains why Nmap classified a port with a specific state.

--system-dns

Use the DNS resolver of the operating system for reverse DNS lookup,
rather than the DNS name servers. This option is slower than using
DNS servers, since it can only resolve one IP address at a time, while
multiple rDNS requests are performed in parallel. However, the value
returned matches the value returned by the MID Server that is used to
create host CIs.

-X -

Redirects stdout to a XML file.

2> <file-path>

Redirects errors messages written by Nmap to stderr to the
specified file.

PowerShell for Discovery and Service Mapping
MID Servers use PowerShell and PowerShell Remoting for accessing configuration items (CIs)
during horizontal and top-down discovery. Review MID Server parameters and script includes,
probe parameters, and credentials for using PowerShell.
PowerShell is used to control and automate the administration of Windows servers and
applications.
MID Servers can use PowerShell to directly communicate with Windows servers using both WMI
and WinRM protocols. For Windows services using the WinRM protocol, the PowerShell process
establishes a secure PSSession (PowerShell Remoting session) that stays open until the MID
Server finishes querying a Windows server. For Windows servers using the WMI protocol, the
PowerShell process sends every PowerShell command with credentials.
PowerShell is also the preferred method for performing discovery over multiple Windows
domains. PowerShell allows a single MID Server to authenticate on servers on different domains
using credentials stored on the instance.
If you do not configure MID Servers to use PowerShell and PowerShell Remoting, MID Servers
use WMI.

How PowerShell Discovery works
The following descriptions explain how MID Servers use PowerShell to deploy probes.
Probe and sensor
When a Windows machine is classified with PowerShell, and an MSSQL instance is
detected, a probe called Windows - MSSQL is launched. The probe returns the
SQL database catalogs and version to a matching sensor.
Probe parameter
The WMI_ActiveConnections.ps1 probe parameter contains a script that
runs netstat.exe on a target server when PowerShell is enabled. This script
extracts the information on Windows server connections, such as process IDs,
ports, and IP addresses.
Credentials

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1066


<!-- page 1067 -->
Discovery uses Windows PowerShell credentials from the Credentials
[discovery_credentials] table or the domain administrator credentials of the MID
Server service. If Discovery cannot find PowerShell credentials in the Credentials
table of the type (Windows) it uses the login credentials of the MID Server service.
MID Server Script Includes
The following script includes were added for PowerShell discoveries. These scripts
run on the MID Server to generate the scripts that Discovery uses for WMIRunner
and PowerShell.
• GenerateWMIScriptJS: Generates a Javascript script for the WMIRunner probe.
• GenerateWMIScriptPS1: Generates a PowerShell script for PowerShell discovery.
MID Server parameters for PowerShell
Optional parameters for the MID Server can be found at MID Server parameters for
PowerShell. After changing the setting for any parameter, be sure to restart the MID
Server service.

PowerShell version requirements
MID Servers using PowerShell must be installed on a supported Windows operating system.
ServiceNow supports these PowerShell versions:
Version 3.0
• Regular Discovery
• Application Dependency Mapping (ADM)
• File-based Discovery
• PowerShell version 3.0 does not support Windows Server 2003.
Version 4.0
• Regular Discovery
• Application Dependency Mapping (ADM)
• File-based Discovery
Version 5.0
• Regular Discovery
• Application Dependency Mapping (ADM)
• File-based Discovery

Note: PowerShell version 6.0 is not supported. Many of the cmdlets that discovery relies
on have been removed from this version. For example, only cmdlets using WinRM are
available for remote operations.

Windows PowerShell execution policies
Windows PowerShell has four different execution policies. Customers can set the script
execution policies with their group policy settings. For more information, see the Microsoft
website for PowerShell
documentation.
• Restricted: No scripts can be run. Windows PowerShell can be used only in interactive mode.
• AllSigned: Only scripts signed by a trusted publisher can be run.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1067


<!-- page 1068 -->
• RemoteSigned: Downloaded scripts must be signed by a trusted publisher before they can be
run.
• Unrestricted: No restrictions; all scripts can be run.

Note: If you have any policy other than Unrestricted, the script needs to be signed.
Set up MID Servers to use PowerShell
Configure MID Servers in your organization to use PowerShell for horizontal and top-down
discovery of Windows servers.

Before you begin

Role required: agent_admin, discovery_admin, or admin

Note: This is enabled by default.
PowerShell version 2.0 is not supported, therefore it is recommended to upgrade to a
higher version. If the MID Server detects that it has version 2.0, it may work partially. The
MID Server creates a record in the mid_server issue table with the following message:
PowerShell version 2 is deprecated. Upgrading PowerShell to version 5 is recommended.

Procedure
1. Download PowerShell and install it on each MID Server configured to discover Windows
computers.
If a compatible PowerShell is available on the Host, you don’t need to do anything else.
2. Determine which credentials MID Servers use for PowerShell.
◦ To discover Windows computers using credentials from the credentials table, set the
mid.powershell.use_credentials parameter to true. Using credentials form the
credentials table is the default behavior when PowerShell is enabled.
◦ To force Discovery and Service Mapping to use the credentials of the MID Server service
user, set the mid.powershell.use_credentials parameter to false on the MID
Server. The MID Server service must have domain admin credentials to have access to the
Windows machines in the domain.
3. Optional: If necessary, configure advanced parameters for PowerShell and PowerShell
Remoting on each MID Server separately.
Although you can disable PowerShell by changing the mid.use_powershell and
mid.sa.prefer_powershell, this method is deprecated and should not be used.
PowerShell remoting for Discovery
Probe developers can use the PowerShell remote execution framework to automatically handle
remote execution of scripts on target devices. The unified framework removes inconsistencies in
remote execution, increases efficiency, and improves stability.

Requirements
To use PowerShell remote execution framework, the following requirements must be met:
• The MID Server must be able to write to and read from the network share of the target.
• The remote target must have PowerShell 3 or higher (up to 5.1).
• For MID Servers using WinRM or WMI which choose to copy the script to the remote target, the
MachinePolicy and UserPolicy scopes must be set to Undefined. If the script is not copied, the
execution policy can be any other setting up to Restrictive.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1068


<!-- page 1069 -->
See Set up MID Servers to use PowerShell for more information.

Application discovery
The PowerShell remote execution framework has options for copying files to the remote target
when executing a scan. Copying files to the target is important for probes like Windows — File
discovery because its script invokes itself on the remote target to spawn off a new process. MID
Servers using WMI to execute scripts remotely can experience an error with launchProcess if the
script is too long. Copying the script to the remote target resolves this error. Copying a script to
a remote target may result in anti-virus software on the target flagging the script. To avoid issues
with anti-virus software, add the scripts to the permitted list in the anti-virus app.

Probe configuration
The following is the configuration page for the Windows — Active Connections probe, which is
included in the Windows — ADM multiprobe.

The Execute script remotely check box is visible when the ECC queue topic is WMIRunner
or PowerShell. When checked, the script executes on the remote target. Otherwise the script
executes on the MID Server.
The Copy script to target check box is visible when Execute script remotely is checked. If Copy
script to target is checked, then the script is copied to, and run on, the target. If Copy script to
target is unchecked, then the script is executed on the target without copying it.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1069


<!-- page 1070 -->
PowerShell probe development
PowerShell remote execution framework is a unified method of executing PowerShell scripts,
contained in a probe parameter, on a remote target server. The framework removes the need for
probe developers to write their own remote execution code, which can cause inconsistencies
between developers. The probe developer writes the script as if the probe was collecting
information locally because the remote execution framework automatically handles remote script
execution.
The framework handles remote execution whether the MID Server is configured to use WMI
or WinRM. If the MID Server is configured for WMI, the probe uses launchProcess to execute
commands on the remote target. Using launchProcess complicates remote execution and can
cause failures. However, a MID Server configured for WinRM does not use launchProcess, and so
is more efficient and stable.
PowerShell commands run by Discovery
These are the PowerShell cmdlets and their parameters that Discovery runs to control and
automate the administration of Windows servers and applications. Included are the probe
parameters and MID Server scripts that contain the commands.

Cmdlet/Parameters

Description

Add-Content

Appends content to a specified item or file. You can specify the
content by typing the content in the command or by specifying an
object that contains the content.

• Path
• Encoding
• Value

Probe
Windows - File discovery (filebaseddiscovery.ps1)
MID Server script
CollectConnectionsAndProcessesInfo.ps1

Add-Member
• NotePropertyName
• NotePropertyValue
• MemberType
• Name
• Value

Lets you add properties and methods to an instance of a Windows
PowerShell object. For instance, you can add a NoteProperty member
that contains a description of the object or a ScriptMethod member
that runs a script to change the object.
Probe
Windows - File discovery (filebaseddiscovery.ps1)
MID Server script
CollectConnectionsAndProcessesInfo.ps1

Add-Type
• TypeDefinition
• AssemblyName
• MemberDefinition
• Name
• Namespace
• PassThru

Adds a Microsoft .NET Framework class in your Windows PowerShell
session. You can then use the New-Object cmdlet to instantiate
objects and use those objects, just as you would use any .NET
Framework object. If you add an Add-Type command to your Windows
PowerShell profile, the class is available in all Windows PowerShell
sessions.
Probes
• Windows - MSSQL (sqlinfo.ps1)
• Windows - Azure (is.azure.ps1)
MID Server script

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1070


<!-- page 1071 -->
Cmdlet/Parameters

Description

• Credentials.psm1
• RegistryAPI.psm1
• LaunchProc.psm1
Compare-Object
• Property
• PassThru

Compares two sets of objects. One set of objects is the reference set,
and the other set is the difference set. The result of the comparison
indicates whether a property value appeared only in the object from
the reference set or, if the IncludeEqual parameter is specified, in both
objects.
MID Server script
DiagnosticsUtil.psm1

ConvertToSecureString
• String
• AsPlainText
• Force

Converts encrypted standard strings into secure strings. It can also
convert plain text to secure strings. It is used with ConvertFromSecureString and Read-Host. The secure string created by the cmdlet
can be used with cmdlets or functions that require a parameter of type
SecureString.
Probes
Windows - Storage 2012 - PS (storage.2012.ps1)
MID Server script
Credentials.psm1

ConvertTo-Json

Converts any object to a string in JavaScript Object Notation (JSON)
format. The properties are converted to field names, the field values
are converted to property values, and the methods are removed.
MID Server script
CollectConnectionsAndProcessesInfo.ps1

Copy-Item
• Path
• Destination
• Force

Copies an item from one location to another location in the same
namespace. For instance, it can copy a file to a folder, but it cannot
copy a file to a certificate drive.
MID Server script

• Recurse

• ADMELauncherWMI.psm1

• PassThru

• ExecuteRemote.psm1
• LaunchProc.psm1
• NmapInstallation.ps1

ForEach-Object process

Performs an operation against each item in a collection of input
objects. The input objects can be piped to the cmdlet or specified by
using the InputObject parameter.
Probes
• Windows - JBoss Find web.xml List (indwebxml.ps1)
• Windows - MSSQL (sqlinfo.ps1)
MID Server script

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1071


<!-- page 1072 -->
Cmdlet/Parameters

Description

• CollectConnectionsAndProcessesInfo.ps1
• DiagnosticsUtil.psm1
• PSScript.ps1
Format-List

Formats the output of a command as a list of properties in which each
property is displayed on a separate line. You can use Format-List to
format and display all or selected properties of an object as a list.
MID Server script
RegistryAPI.psm1

Get-ChildItem
• Path
• File
• Recurse

Gets the items in one or more specified locations. If the item is a
container, it gets the items inside the container, known as child items.
You can use the Recurse parameter to get items in all child containers.
MID Server script

• Filter

• CollectConnectionsAndProcessesInfo.ps1

• Directory

• DiagnosticsUtil.psm1

• Include

• ExecuteRemote.psm1
• LaunchProc.psm1
• NmapInstallation.ps1
• PSScript.ps1
• RegistryAPI.psm1

Get-Content
• Raw
• Path

Gets the content of the item at the location specified by the path, such
as the text in a file. It reads the content one line at a time and returns a
collection of objects, each of which represents a line of content.
Probes
Windows - ADM Enhanced
MID Server script
• ADMELauncherWMI.psm1
• ADMELauncherWinRM.psm1
• ScriptAPI.psm1

Get-Date - Uformat

Gets a DateTime object that represents the current date or a date
that you specify. It can format the date and time in several Windows
and UNIX formats. You can use Get-Date to generate a date or
time character string, and then send the string to other cmdlets or
programs.
Probes
Windows - File Discovery (filebaseddiscovery.ps1 )
MID Server script
• DiagnosticsUtil.psm1
• LaunchProc.psm1

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1072


<!-- page 1073 -->
Cmdlet/Parameters

Description

Get-Item

Gets the item at the specified location. It does not get the contents
of the item at the location unless you use a wildcard character (*) to
request all the contents of the item.
Probes
Windows - ADM Enhanced
MID Server script
• ExecuteRemote.psm1
• ADMELauncherWinRM.psm1
• ADMELauncherWMI.psm1

Get-ItemProperty
• Path
• Name
• ErrorAction

Gets the properties of the specified items. For example, you can use
this cmdlet to get the value of the LastAccessTime property of a file
object. You can also use this cmdlet to view registry entries and their
values.
MID Server script
• RegistryAPI.psm1
• ScriptAPI.psm1
• NmapInstallation.psm1

Get-Member MemberType

Gets the members, the properties and methods, of objects. To specify
the object, use the InputObject parameter or pipe an object to GetMember. To get information about static members, the members of the
class, not of the instance, use the Static parameter. To get only certain
types of members, such as NoteProperties, use the MemberType
parameter.
Probes
Windows - ADM Enhanced
MID Server script
CollectConnectionsAndProcessesInfo.ps1

Get-Process
• Id
• ErrorVariable (alias
EV)
• PSProvider

Gets the processes on a local or remote computer. Without
parameters, this cmdlet gets all of the processes on the local
computer. You can also specify a particular process by process name
or process ID (PID) or pass a process object through the pipeline to
this cmdlet.
Probes
Windows - File Discovery (filebaseddiscovery.ps1 )
MID Server script
• CollectConnectionsAndProcessesInfo.ps1
• Get-PEB.psm1

Get-PSDrive

Gets the drives in the current session. You can get a particular drive or
all drives in the session.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1073


<!-- page 1074 -->
Cmdlet/Parameters

• Name
• ErrorAction
• PSProvider

Description

Probes
Windows - ADM Enhanced
MID Server script
• ADMELauncherWMI.psm1
• Credentials.psm1

Get-PSSession

Gets the user-managed Windows PowerShell sessions (PSSessions)
on local and remote computers.
MID Server script
Credentials.psm1

Get-Variable - Name

Gets the Windows PowerShell variables in the current console.
You can retrieve just the values of the variables by specifying the
ValueOnly parameter, and you can filter the variables returned by
name.
MID Server script
• ExecuteRemote.psm1
• PSScript.ps1
• DiagnosticsUtil.psm1

Get-WmiObject
• ComputerName
• Filter
• Credential
• Impersonation
• Authentication
• ErrorAction (alias
EA)
• List
• Namespace
• Class

Gets instances of Windows Management Instrumentation (WMI)
classes or information about the available WMI classes. To specify
a remote computer, use the ComputerName parameter. If the List
parameter is specified, the cmdlet gets information about the WMI
classes that are available in a specified namespace. If the Query
parameter is specified, the cmdlet runs a WMI query language (WQL)
statement.
Probes
• Windows - MSSQL (sqlinfo.ps1)
• Windows - Storage 2008 - PS (storage.ps1)
MID Server script
• ExecuteRemote.psm1
• ADMELauncherWinRM.psm1
• ADMELauncherWMI.psm1

Get-WSManInstance - Retrieves an instance of a managemenet resource that is specified by
ResourceURI
a resource Uniform Resource Identifier (URI). The information that is
retrieved can be a complex XML information set, which is an object, or
a simple value.
MID Server script
ScriptAPI.psm1
Group-Object NoElement

Displays objects in groups based on the value of a specified property.
Group-Object returns a table with one row for each property value and
a column that displays the number of items with that value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1074


<!-- page 1075 -->
Cmdlet/Parameters

Description

MID Server script
RegistryAPI.psm1
Import-Module

Adds one or more modules to the current session. The modules
that you import must be installed on the local computer or a remote
• Name
computer.
• DisableNameChecking
Probes
• Global
Windows - Storage 2012 - PS (storage.2012.ps1)
MID Server script
• Credentials.psm1
• PSScript.ps1

Invoke-Command
• Session
• ScriptBlock
• ErrorAction
• ErrorVariable
• ArgumentList (alias
is args)
• FilePath

Runs commands on a local or remote computer and returns all output
from the commands, including errors. By using a single InvokeCommand command, you can run commands on multiple computers.
Probes
Windows - Storage 2012 - PS (storage.2012.ps1)
MID Server script
• ADMELauncherWinRM.psm1
• Credentials.psm1
• ExecuteRemote.psm1
• LaunchProc.psm1
• Get-PEB.psm1
• WMIFetch.psm1

Invoke-Expression

Evaluates or runs a specified string as a command and returns the
results of the expression or command. Without Invoke-Expression,
a string submitted at the command line would be returned (echoed)
unchanged.
MID Server script
• NmapInstallation.ps1
• ScriptAPI.psm1

Invoke-WmiMethod
• Name
• ComputerName

Calls the methods of Windows Management Instrumentation (WMI)
objects.
MID Server script

• Argumentlist

• LaunchProc.psm1

• Credential

• ADMELauncherWinRM.psm1

• ErrorAction

• ADMELauncherWMI.psm1

Measure-Object Sum

Calculates the property values of certain types of object. MeasureObject performs three types of measurements, depending on the
parameters in the command.
MID Server script

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1075


<!-- page 1076 -->
Cmdlet/Parameters

Description

CollectConnectionsAndProcessesInfo.ps1
New-Item
• ItemType
• Path
• Force
• ErrorAction

Creates a new item and sets its value. The types of items that can be
created depend on the location of the item. For example, in the file
system, New-Item creates files and folders. In the registry, New-Item
creates registry keys and entries.
MID Server script
• CollectConnectionsAndProcessesInfo.ps1
• ExecuteRemote.psm1
• LaunchProc.psm1
• NmapInstallation.ps1
• ADMELauncherWinRM.psm1
• ADMELauncherWMI.psm1

New-Object
• TypeName

Creates an instance of a Microsoft .NET Framework or COM object.
Probes

• Property

• Windows - AWS Relationship (AWS_InstanceID.ps1)

• ArgumentList

• Windows - Azure (is.azure.ps1)
• Windows - MSSQL (sqlinfo.ps1)
• Windows - File Discovery (filebaseddiscovery.ps1)
• Windows - Storage 2012 - PS (storage.2012.ps1)
MID Server script
• ADMELauncherWMI.psm1
• CollectConnectionsAndProcessesInfo.ps1
• Credentials.psm1
• Get-PEB.psm1
• LaunchProc.psm1
• WMIFetch.psm1 XMLUtil.psm1
• ExecuteRemote.psm1

New-PSDrive
• PSProvider
• Root
• ErrorAction
• Credential

Creates temporary and persistent drives that are mapped to or
associated with a location in a data store, such as a network drive,
a directory on the local computer, or a registry key, and persistent
Windows mapped network drives that are associated with a file system
location on a remote computer.
MID Server script

• Name

• ADMELauncherWMI.psm1

• Scope

• ScriptAPI.psm1

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1076


<!-- page 1077 -->
Cmdlet/Parameters

Description

New-Variable

Creates a new variable in Windows PowerShell. You can assign a value
to the variable while creating it or assign or change the value after it is
created.

• Namer
• Value
• Force
New-PSSession
• Credential
• SessionOption

MID Server script
PSScript.ps1
Creates a Windows PowerShell session (PSSession) on a local or
remote computer. When you create a PSSession, Windows PowerShell
establishes a persistent connection to the remote computer.
MID Server script
PSRemoteSession.psm1

NewPSSessionOption

Creates an object that contains advanced options for a user-managed
session. You can use the object as the value of the SessionOption
parameter of cmdlets that create a PSSession, such as a NewPSSession, Enter-PSSession, and Invoke-Command.
MID Server script
PSRemoteSession.psm1

New-Timespan
• Start
• End
Out-File - FilePath

Creates a timespan object which represents an interval. You can use to
add or subtract time from a DateTime object.
Probes
Windows - File Discovery (filebaseddiscovery.ps1)
Sends output to a file. You can use this instead of > operator when you
need to use its parameters.
Probes
Windows - File Discovery (filebaseddiscovery.ps1)

Out-Null

Sends output to NULL, in effect, deleting it.
MID Server script
Get-PEB.psm1

Out-String

Converts the objects that Windows PowerShell manages into an array
of strings. By default, Out-String accumulates the strings and returns
them as a single string, but you can use the stream parameter to direct
Out-String to return one string at a time. This cmdlet lets you search
and manipulate string output as you would in traditional shells when
object manipulation is less convenient.
MID Server script
Get-PEB.psm1

Receive-Job

Gets the results of Windows PowerShell background jobs, such as
those started by using the Start-Job cmdlet or the AsJob parameter
of any cmdlet. You can get the results of all jobs or identify jobs by
their name, ID, instance ID, computer name, location, or session, or by
submitting a job object.
MID Server script
LaunchProc.psm1

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1077


<!-- page 1078 -->
Cmdlet/Parameters

Description

Remove-Item

Deletes one or more items. Because it is supported by many providers,
it can delete many different types of items, including files, folders,
registry keys, variables, aliases, and functions.

• Recurse
• Path
• Force

MID Server script
• ExecuteRemote.psm1
• NmapInstallation.ps1
• LaunchProc.psm1
• CollectConnectionsAndProcessesInfo.ps1

Remove-Job

Deletes Windows PowerShell background jobs. You can start jobs by
using the Start-Job or the AsJob parameter of any cmdlet. You can use
this cmdlet to delete all jobs or delete jobs based on their name, ID,
instance ID, command, or state, or by passing a job object to RemoveJob. Without parameters or parameter values, Remove-Job has no
effect.
MID Server script
LaunchProc.psm1

Remove-PSDrive Name

Deletes temporary Windows PowerShell drives that were created by
using the New-PSDrive cmdlet.
MID Server script
• ADMELauncherWMI.psm1
• ScriptAPI.psm1

Remove-PSSession Session

Closes Windows PowerShell sessions (PSSessions) in the current
session. It stops any commands that are running in the PSSessions,
ends the PSSession, and releases the resources that the PSSession
was using. If the PSSession is connected to a remote computer, this
cmdlet also closes the connection between the local and remote
computers.
Probes
Windows - Storage 2012 - PS (storage.2012.ps1)
MID Server script
Credentials.psm1

Remove-Variable
• Name
• Value

Deletes a variable and its value from the scope in which it is defined,
such as the current session. You cannot use this cmdlet to delete
variables that are set as constants or those that are owned by the
system.
MID Server script
PSScript.ps1

Rename-Item
• Path
• NewName

Changes the name of a specified item. This cmdlet does not affect
the content of the item being renamed. You cannot use Rename-Item
to move an item, such as by specifying a path together with the new
name. To move and rename an item, use the Move-Item cmdlet.
Probes
Windows - File Discovery (filebaseddiscovery.ps1 )

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1078


<!-- page 1079 -->
Cmdlet/Parameters

Description

Select-Object

Selects specified properties of an object or set of objects. It can also
select unique objects, a specified number of objects, or objects in a
specified position in an array. Alias is "Select".

• ExpandProperty
(alias Expand)
• Property
• ExcludeProperty

Probes
Windows - MSSQL (sqlinfo.ps1)
MID Server script
• CollectConnectionsAndProcessesInfo.ps1
• RegistryAPI.psm1

Select-String
• Pattern
• NotMatch

Searches for text and text patterns in input strings and files. You can
use it like Grep in UNIX and Findstr in Windows. You can type SelectString or its alias, sls.
MID Server script
CollectConnectionsAndProcessesInfo.ps1

Select-XML
• Xpath
• Content
• Namespace
Set-Content
• Path
• Value
• Force
• Encoding

Allows you to use XPath queries to search for text in XML strings and
documents. Enter an XPath query, and use the Content, Path, or Xml
parameter to specify the XML to be searched.
MID Server script
ScriptAPI.psm1
Writes or replaces the content in the specified item, such as a file. You
can type the content in the command or send content through the
pipeline to Set-Content.
MID Server script
• ADMELauncherWinRM.psm1
• CollectConnectionsAndProcessesInfo.ps1
• ExecuteRemote.psm1

Set-Location - Path

Sets the working location to a specified location. That location could
be a directory, a sub-directory, a registry location, or any provider path.
MID Server script
Credentials.psm1

Set-StrictMode Version

Configures strict mode for the current scope and all child scopes,
and turns it on and off. When strict mode is on, Windows PowerShell
generates a terminating error when the content of an expression,
script, or script block violates basic best-practice coding rules.
MID Server script
Get-PEB.psm1

Set-Variable
• Name
• Value

Assigns a value to a specified variable or changes the current value. If
the variable does not exist, the cmdlet creates it.
MID Server script

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1079


<!-- page 1080 -->
Cmdlet/Parameters

Description

• Option

• PSScript.ps1

• Scope

• CollectConnectionsAndProcessesInfo.ps1
• ExecuteRemote.psm1

Sort-Object - Property

Sorts objects in ascending or descending order based on the values of
properties of the object. You can specify a single property or multiple
properties (for a multi-key sort), and you can select a case-sensitive or
case-insensitive sort. You can also direct Sort-Object to display only
the objects with a unique value for a particular property.
Probes
Windows - MSSQL (sqlinfo.ps1)
MID Server script
DiagnosticsUtil.psm1

Split-Path
• Leaf
• Path
• Parent

Returns only the specified part of a path, such as the parent folder, a
subfolder, or a file name. It can also get items that are referenced by
the split path and tell whether the path is relative or absolute.
Probes
• Windows - Weblogic - Find (findconfig.ps1)
• Windows - Storage 2012 - PS (storage.2012.ps1)
MID Server script
• Credentials.psm1
• LaunchProc.psm1
• PSScript.ps1
• ExecuteRemote.psm1

Start-Sleep

Suspends the activity in a script or session for the specified period
of time. You can use it while waiting for an operation to complete or
• S (alias for seconds)
pausing before repeating an operation.
• M (alias for
Probes
millisecond)
Windows - Active Connections Multiple
(WMI_ActiveConnections.ps1)
MID Server script
• CollectConnectionsAndProcessesInfo.ps1
• LaunchProc.psm1
• NmapInstallation.ps1

Stop-Job

Stops Windows PowerShell background jobs that are in progress. You
can use this cmdlet to stop all jobs or stop selected jobs based on
their name, ID, instance ID, or state, or by passing a job object to StopJob.
MID Server script
LaunchProc.psm1

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1080


<!-- page 1081 -->
Cmdlet/Parameters

Description

Test-Path

Determines whether all elements of the path exist. It returns $True if all
elements exist and $False if any are missing. It can also tell whether
the path syntax is valid and whether the path leads to a container or a
terminal or leaf element.

• Path
• PathType

MID Server script
• ExecuteRemote.psm1
• LaunchProc.psm1
• NmapInstallation.ps1
• PSScript.ps1
• RegistryAPI.psm1
• ADMELauncherWinRM.psm1
• ADMELauncherWMI.psm1
• CollectConnectionsAndProcessesInfo.ps1
Test-WSMan
• Computer
• Port

Submits an identification request that determines whether the
WinRM service is running on a local or remote computer. If the
tested computer is running the service, the cmdlet displays the WSManagement identity schema, the protocol version, the product
vendor, and the product version of the tested service.
MID Server script
ScriptAPI.psm1

Where-Object

Selects objects that have particular property values from the collection
of objects that are passed to it. For example, you can use the WhereObject cmdlet to select files that were created after a certain date,
events with a particular ID, or computers that use a particular version of
Windows.
MID Server script
• CollectConnectionsAndProcessesInfo.ps1
• DiagnosticsUtil.psm1
• WMIFetch.psm1

Write-Error
• Message
• Category

Declares a non-terminating error. By default, errors are sent in the error
stream to the host program to be displayed, along with output.
Probes
• Windows - MySQL Configuration (mysqlconfig.ps1ps1)
• Windows - MySQL Version (mysqlinfo.ps1)
• Oracle - Instance Pfile (oraclepfile.ps1)
• Oracle - Instance Version (oracleversion.ps1)
• Windows - MSSQL (sqlinfo.ps1)
MID Server script
• ADMELauncherWinRM.psm1
• ADMELauncherWMI.psm1

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1081


<!-- page 1082 -->
Cmdlet/Parameters

Description

• ExecuteRemote.psm1
• LaunchProc.psm1
• NmapInstallation.ps1
Write-Host NoNewLine

Writes customized output to a host. You can specify the color of text
by using the ForegroundColor parameter, and you can specify the
background color by using the BackgroundColor parameter. The
Separator parameter lets you specify a string to use to separate
displayed objects. The particular result depends on the program that is
hosting Windows PowerShell.
Probes
• Windows - Network ARP Table (arpTable.ps1)
• Windows - Weblogic - Find (findconfig.ps1)
• Windows - JBoss Get (findjbossservicexml.ps1)
• Windows - WebSphere - Web Services ()
• Windows - JBoss Find (findwebxml.ps1)
• Windows - Weblogic - Get ()
• Windows - WebSphere - Cell (getcellxml.ps1)
• Windows - WebSphere - Web Applications
(getserverindexxml.ps1)
• Oracle - Instance PFile (oraclepfile.ps1)
• Oracle - Instance Version (oracleversion.ps1)
• Windows - MSSQL (sqlinfo.ps1)
• Windows - Storage 2012 - PS (storage.2012.ps1)
• Windows - Storage 2008 - PS (storage.ps1)
• Windows - Active Connections Multiple
(WMI_ActiveConnections.ps1)
MID Server script
• ADMELauncherWinRM.psm1
• ADMELauncherWMI.psm1
• PSScript.ps1
• RegistryAPI.psm1
• ScriptAPI.psm1
• WMIFetch.psm1
• DiagnosticsUtil.psm1
• NmapInstallation.ps1

Write-Output

Sends the specified objects to the next command in the pipeline. If
the command is the last command in the pipeline, the objects are
displayed in the console.
Probes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1082


<!-- page 1083 -->
Cmdlet/Parameters

Description

• Windows - Azure (is.azure.ps1)
• ExecuteRemote (testExecuteRemote.ps1)
• Windows - File Discovery (filebaseddiscovery.ps1)
MID Server script
Get-PEB.psm1
Write-Verbose Message

Writes text to the verbose message stream in Windows PowerShell.
Typically, the verbose message stream is used to deliver information
about command processing that is used for debugging a command.
MID Server script
• Get-PEB.psm1
• LaunchProc.psm1
• ExecuteRemote.psm1

MID Server parameters for PowerShell
Parameters control the behavior of a particular MID Server and have lower precedence than MID
Server properties.
The following parameters are optional.

Note: After changing the setting for any parameter, be sure to restart the MID Server
service.

Name

mid.powershell_api.session_pool.max_size

Description

Specifies the maximum number of
sessions allowed in the session
pool.

Note: Setting or changing this
parameter requires restarting
the MID Server.
• Type: Integer
• Default value: 25
mid.powershell_api.session_pool.target.max_size

Specifies the maximum number of
sessions allowed in the pool per
target host.

Note: Setting or changing this
parameter requires restarting
the MID Server.
• Type: Integer
• Default value: 3
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1083


<!-- page 1084 -->
Name

Description

mid.powershell_api.winrm.use_ssl

Requires the use of SSL certificates
for HTTPS connections using
WinRM.
• Type: True | False
• Default value: false

mid.powershell_api.winrm.additional_pssesion_options

Controls advanced options for a
PSSession. For more information
about advanced PSSession options,
see https://docs.microsoft.com/
en-us/powershell/module/
microsoft.powershell.core/
new-pssessionoption?
view=powershell-6 .

mid.powershell_api.winrm.remote_https_port

Configures the port for connecting to
Windows servers using PowerShell
over HTTPS.
• Type: Integer
• Default value: 5986

mid.powershell_api.winrm.remote_port

Configures the port for connecting to
Windows servers using PowerShell
over HTTP.
• Type: Integer
• Default value: 5985

mid.powershell_api.winrm.skip_ssl_cert_check

Skips the SSL certificate check
when using WinRM for HTTPS
connections.
• Type: True | False
• Default value: false

mid.powershell_api.winrm.skip_ssl_cert_check_options

Skips specific SSL certificate checks
when using WinRM for HTTPS
connections. Configure the MID
Server to skip checks for certificates
from a Certification Authority (CA),
from the Common Name (CN) that
identifies the host associated with
the certificate, and for revoked
certificates.
• Type: String
• Default value: -SkipCACheck
-SkipCNCheck
-SkipRevocationCheck

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1084


<!-- page 1085 -->
Name

mid.powershell_api.wmi.use_reverse_dns_lookup

Description

Enable this property to utilize
Kerberos authentication when
employing the WMI protocol to
communicate with Windows target
devices. When activated, the system
performs a reverse DNS look-up of IP
addresses, enabling the use of Fully
Qualified Domain Names (FQDN)
instead of IP addresses. This can
facilitate Kerberos authentication.

Note: Note: If the reverse DNS
look-up fails, the system may
revert to using the IP address.
Additionally, performing
reverse DNS look-ups on
IP addresses may impact
performance.

• Type: True | False
• Default value: False
mid.powershell.use_credentials

Determines the credentials to use for
Discovery with PowerShell. A setting
of true directs the MID Server to run
probes with the Windows credentials
from the credentials table. To run
probes with the credentials of the
user for the MID Server service, set
this parameter to false.
• Type: true | false
• Default value: true

mid.use_powershell

Enables or disables PowerShell
for Discovery. Restart the MID
Server after changing the value.
If PowerShell is not installed or
the version installed is less than
version 2.0, Discovery reverts to
using WMIRunner.
• Type: true | false
• Default value: true

mid.powershell.path

Enables an administrator to point
to a specific PowerShell on a MID
Server in cases where more than
one PowerShell is installed. Supply

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1085


<!-- page 1086 -->
Name

Description

the path to the folder containing
the PowerShell executable, for
example, C:\mypowershell or
C:\mypowershell\. ServiceNow
automatically appends the string
powershell.exe to the path.
Configure this parameter when both
a 32-bit and 64-bit PowerShells are
active on the same MID Server, and
it becomes necessary to launch
the correct PowerShell for the
context. 64-bit Windows employs
file system redirection and the MID
Server runs as a 32-bit application. If
trying to specify a path in %WinDir%
\System32, Windows automatically
redirects to %WinDir%\SysWOW64.
To avoid redirection, specify the
path as %WinDir%\Sysnative. For
example, instead of C:\WINDOWS
\system32\WindowsPowerShell
\v1.0\, specify C:\WINDOWS
\sysnative\WindowsPowerShell
\v1.0\.

Note: On a 64-bit version of
Windows XP, a Microsoft hotfix
may be required to enable this.
To discover applications running on
a 64-bit Windows machine, the MID
Server must be running on a 64-bit
Windows host machine.
• Type: string (path)
• Default value: none
mid.powershell.enforce_utf8

Enable this parameter to force
commands on a target Windows
system to return UTF-8 encoded
output. Disabling it allows the target
system to use its default encoding.
This parameter is only valid when
PowerShell is enabled.
Setting this value to false may result
in incorrect values in the CMDB
when non-ASCII characters are
returned by a probe.
• Type: true | false
• Default value: true

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1086


<!-- page 1087 -->
Name

Description

mid.powershell.local_mid_service_credential_fallback

Specifies the login credentials
the MID Server uses if all other
credentials fail.
• Type: True | False
• Default value: true

mid.powershell_api.idle_session_timeout

Specifies the timeout value of idle
PowerShell sessions in seconds.

Note: Setting or changing this
parameter requires restarting
the MID Server.
• Type: Integer
• Default value: 60
mid.powershell.command.parameter_passing

Enable this parameter to allow
passing PowerShell parameters from
the command line.
• Type: True | False
• Default value: false

mid.powershell.command.script.parameter_passing

Enable this parameter to allow
passing PowerShell scripts from the
command line.
• Type: True | False
• Default value: false

mid.windows.management_protocol

Enables administrators to select
the Windows management protocol
used for device and process
classification. Options include:
• WMI
• WinRM
• Type: String
• Default value: WMI

mid.windows.probe_timeout

Sets the timeout interval for all
Windows probes on a specific MID
Server. This value is overridden by
the values configured for individual
probes with the wmi_timeout probe
parameter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1087


<!-- page 1088 -->
Name

Description

• Type: Integer
• Default value: 600

Application Dependency Mapping (ADM) for Discovery
Application Dependency Mapping (ADM) discovers CIs by detecting TCP connections between
devices.
When ADM discovery is enabled, Discovery always runs the ADM probes during the exploration
stage to find the TCP traffic on your network. Using these TCP connections, Discovery can find
additional CIs and create relationships between them.
IPv6 Is supported for ADM.

Note: Currently, ADM does not support multi-languages. If values returned are not in
English, the returned data cannot be parsed properly and the discovery will fail.

Standard and enhanced ADM discovery
Standard ADM discovery
Triggers an ADM probe to take a single snapshot of TCP connections on target
machines using netstat and lsof commands. However, it does not detect new
TCP connections that occur between these 24-hour intervals.
Standard ADM discovery is enabled by default.
Enhanced ADM (ADME) discovery
Triggers an enhanced ADM probe that installs a script on host machines on which
Discovery takes regular samples of active TCP connections. You can use a set of
properties and probe parameters that control several aspects of enhanced ADM
discovery.
ADME discovery is not enabled by default.
Service Mapping uses the ADM probes for traffic-based discovery. See Discovery based on
Predictive Intelligence for more information.

Requirements
Both standard and enhanced ADM discovery support the following operating systems:
• Windows
• Unix
• Solaris (On Solaris machines, enhanced ADM is available in global zones. Only standard ADM
is available for local zones.)
• AIX
• HP-UX
To use the WMI protocol, version 3.0 of PowerShell is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1088


<!-- page 1089 -->
Note:
If you set your Windows server Execution Policy to RemoteSigned or AllSigned, ADME can
run PowerShell scripts. You must import the ServiceNow certificate to the trusted publisher
in order for the scripts to execute properly.

TCP tracking file for enhanced ADM
The first time that Discovery launches the enhanced probe, no TCP information is gathered.
Rather, the enhanced probe only deploys the TCP tracking file, in which information about
detected TCP connections is saved. After Discovery runs again, the enhanced probe relays
the contents of the TCP tracking file back to the instance via the MID Server. The information is
saved in the CMDB.
The TCP tracking file is saved in these locations by default:
• Windows: admin$\temp\{your_instance_name}. While TCP connections are being
monitored, the information is stored in memory and then later saved to the file.
• Linux: /tmp/{your_instance_name}.
You can change the location and other aspects of the tracking file with ADM properties.
If you disable enhanced ADM, Discovery cleans up the folders from the host file system the next
time Discovery runs, but the TCP tracking file remains.

Requirements for Enhanced ADM on Linux machines
Modify the sudoers file to include these commands:
Windows
• Utility tool support: netstat
• Required sudoer commands: None
• Additional requirements: None
AIX
• Utility tool support:
◦ netstat
◦ lsof (if netstat does not work)
• Required sudoer commands:
◦ Cmnd_Alias ADME_CMDS=/usr/bin/netstat -Aan, /usr/sbin/
lsof -iTCP -n -P
◦ discoUser ALL=(root)NOPASSWD:ADME_CMDS
◦ Defaults:discoUser ! requiretty
• Additional requirements: None
Solaris
• Utility tool support:
◦ netstat (for Solaris version 11.2)
◦ lsof (for Solaris versions prior to 11.2)
• Required sudoer commands:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1089


<!-- page 1090 -->
◦ Cmnd_Alias ADME_CMDS = /usr/bin/netstat,/opt/csw/bin/
lsof -iTCP -n -P -zglobal
◦ discoUser ALL=(root) NOPASSWD:ADME_CMDS
◦ Defaults!ADME_CMDS !requiretty
◦ Cmnd_Alias ADME_PS = /usr/ucb/ps
◦ discoUser ALL=(root) NOPASSWD:ADME_PS
◦ Disco ALL=(root) /usr/bin/pfiles
◦ Disco ALL=(root) /usr/bin/pgrep
◦ Defaults!ADME_PS !requiretty

Note: You must add -zglobal for lsof to run.
• Additional requirements: Add the lsof path to the secure path. For example, if the
path to lsof is /opt/csw/bin, the secure path should be secure_path = /
usr/bin:/usr/sbin:/bin:/sbin:/opt/csw/bin

Note: The commands with PS apply to standard ADM as well as enhanced
ADM.
HP-UX
• Utility tool support: lsof
• Required sudoer commands:
◦ Cmnd_Alias ADME_CMDS = /usr/local/bin/lsof -iTCP -n -P
◦ discoUser ALL=(root) NOPASSWD:ADME_CMDS
◦ Defaults!ADME_CMDS !requiretty

Note: Netstat is not supported.
• Additional requirements: None
Centos and Ubuntu
• Utility tool support: None
• Required sudoer commands:
◦ Cmnd_Alias ADME_CMDS = /usr/sbin/lsof -iTCP -n -P, /
usr/bin/netstat -antp, /sbin/ss -tlnp, /sbin/ss -tenp
◦ discoUser ALL=(root) NOPASSWD:ADME_CMDS
◦ Defaults!ADME_CMDS !requiretty
• Additional requirements: None
Note the following for the sudo commands:
• ADME_CMDS is a variable referring to a list of commands.
• /usr/bin/ is the directory where your lsof and netstat resides.
• discoUser is a user that must have root access.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1090


<!-- page 1091 -->
Setup and use enhanced ADM
To set up and use enhanced ADM, perform these steps:
1. Enable enhanced ADM with the glide.discovery.enable_adme Discovery property.
2. Determine the base directory where the TCP tracking file is placed on the host computers. If
you want to change the location, specify it in these Discovery properties:
◦ glide.discovery.adme.base_dir_unix
◦ mid.powershell.target_base_dir
3. Do either of the following based on the operating systems of the host computers:
◦ Linux: modify the sudoers file to include the necessary commands.
◦ Windows: Set the mid.windows.management_protocol parameter on the MID
Server to use WinRM or WMI. This parameter sets the protocol that your MID Server uses to
communicate with remote Windows hosts.
4. Create a schedule and run Discovery.
5. View the results in the TCP tables.
6. Optionally control both the size of the TCP tracking file and the payload using parameters on
the enhanced ADM probes. See TCP connection discovery for the names of the probes and
parameters.
Configure ADM discovery parameters and properties
Using properties, you can enable or disable ADM discovery, and you can set the location of the
TCP tracking file for enhanced ADM.

Before you begin

Role required: discovery_admin or admin

About this task

You can also control both the size of the TCP tracking file and the payload using parameters on
the enhanced ADM probes. See TCP connection discovery for the names of the probes and
parameters.

Procedure
1. Navigate to All > System Properties > Discovery to set the system properties.
2. Navigate to Discovery Definition > Probes to set the probe parameters.
3. Configure the following properties and probe parameters.
See the knowledge article KB0822767
for more information.
ADM properties and probe parameters
Probe parameter

System property

Description

glide.discovery.enable_adme

ADME: Enable
enhanced ADM
probe. If "yes", the
ADM Enhanced
probe is triggered
and only fall back
to the ADM probe
as needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1091


<!-- page 1092 -->
Probe parameter

System property

Description

◦ Type: true | false
◦ Default value:
false
glide.discovery.application_mapping

Enable the
application
mapping feature.
When this
property is
set to true, all
discoveries trigger
the relevant ADM
probe during the
exploration phase
if Discovery finds a
server.

Important:
Disabling
this property
disables the
creation of
relationships
between
applications
but doesn’t
disable the
ADM probes
and sensors,
nor does
it prevent
process
classification.
◦ Type: true | false
◦ Default value:
true
sampling_interval

glide.discovery.adme.sampling_interval

ADME - Sampling
interval (sec): How
often to sample
process and
connection data
in seconds. Must
be a minimum of 5
seconds.
◦ Type: integer
◦ Default value:
120

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1092


<!-- page 1093 -->
Probe parameter

System property

Description

base_dir

glide.discovery.adme.base_dir_unix

ADME - Unix
Base Dir: An
existing directory
on the target
UNIX machines
to be used as
a workspace.
Must be an
absolute path
to the directory.
The UNIX and
Linux credentials
that you use to
connect to the
device must also
be able to access
this folder.
◦ Type: string
◦ Default value: /
tmp

powershell_param_base_dir

mid.powershell.target_base_dir

Powershell Target Base
Dir: A network
share on the
target Windows
machines to
be used as a
workspace. If
you change the
directory, it must
also be a network
shared folder.
◦ Type: string
◦ Default value:
admin$\temp

aggregation_interval (Unix)

glide.discovery.adme.aggregation_interval ADME Aggregation
powershell_param_aggregation_interval
interval (sec): How
(Windows)
often to aggregate
instantaneous
data into chunks
in seconds. It must
be a minimum of
60 seconds and it
must be a multiple
of ADME Sampling
interval.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1093


<!-- page 1094 -->
Probe parameter

System property

Description

◦ Type: integer
◦ Default value:
3600
rolling_window_size (Unix)

glide.discovery.adme.rolling_window_size

powershell_param_rolling_window_size
(Windows)

ADME - Rolling
window size: How
many recently
aggregated
chunks to keep.
An aggregated
chunk consists
of ADME
Aggregation
interval divided by
ADME Sampling
interval samples.
Only the newest
chunks are kept.
◦ Type: integer
◦ Default value:
24

max_total_samples (Unix)

glide.discovery.adme.max_total_samples

powershell_param_max_total_samples
(Windows)

ADME - Max total
samples: The limit
of samples being
taken by the script.
The script will
stop running after
this number of
samples are taken.
◦ Type: integer
◦ Default value:
100

4. Click Save.
Discovery behaviors
Discovery behaviors determine the probes that Shazzam launches, and from which MID Servers
these probes are launched.
Unlike a scan performed by a single MID Server on a designated IP address range, a behavior
can assign different tasks to multiple MID Servers on the same IP address segment or on
different network segments. Behaviors are available in Discovery schedules for discoveries in
which configuration items (CI) are updated in the CMDB.
Behaviors can be used in the following scenarios:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1094


<!-- page 1095 -->
• Load balancing: A behavior enables load balancing in systems that use multiple MID Servers
deployed across one or more domains.
• Multiple protocols in multiple domains: Configure one MID Server to scan for all protocols on
one domain and another MID Server to perform a WMI scan on a second domain.
• Access Control Lists (ACL): Discovery can scan SNMP devices protected by an ACL if the MID
Server host machine is granted access by that ACL. Use a behavior to configure a MID Server
to scan devices protected by an ACL.
• Devices running two protocols: Some devices might have two protocols running at the same
time. Examples of this are the SSH and SNMP protocols running concurrently on one device
(most common). A behavior can control which of the two protocols is explored for certain
devices. The behavior then prevents the other protocol from being explored.
Behaviors also enable the efficient Discovery of SSH and SNMP devices and WMI devices
running on multiple Windows domains, using multiple MID Servers.
For example, an organization has two Windows domains in its network and a variety of UNIX
computers and SNMP devices. The challenge is to discover all the devices efficiently, without
duplicating effort. Each domain contains a Windows MID Server which is used to scan the IP
addresses from the two domains specified in the Discovery Schedule, as well as the SSH and
SNMP devices. We need a Behavior that divides the work appropriately to avoid scanning
anything twice. In this example, we assume that both domains are in the same geographical
location, and that a single schedule is sufficient.

Note: The preferred method for running Discovery over multiple Windows domains is to
use PowerShell, which allows a single MID Server to authenticate on machines on different
domains using credentials stored on the instance.
Create a Discovery behavior
Create a Discovery behavior to determine which probes Shazzam launches and which MID
Server is used.

Before you begin

Role required: discovery_admin

Procedure
1. Navigate to All > Discovery Definition > Behavior and click New.
2. Enter a name.
3. Right-click the form header and select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1095


<!-- page 1096 -->
4. In the Discovery Functionality related list, click New.
Discovery Functionality defines what each MID Server in this behavior must do, specifically
which protocols to detect.
5. Fill out the form fields:

Field

Phase

Description

Enter an integer that represents an arbitrary
phase. The phase is used to group one
or more functionalities together. All the
functionalities within a specified phase
are executed together, and all phases
are executed in numerical order. All
functionalities in a behavior can have the
same phase.
The Shazzam probe runs once for each
phase in a behavior, which makes fewer
phases desirable. Run multiple phases for
behaviors only when devices in the network
are running multiple protocols, such as SSH
and SNMP. In that example, set one phase
for the SSH scan and another phase for the
SNMP scan.

Active

Keep this option selected to apply the
discovery functionality.

Functionality definition

Click the lookup icon, and then select a preconfigured functionality that defines the
protocol or list of protocols that each MID
Server scans.

Match criteria

Define criteria here for Windows MID Servers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1096


<!-- page 1097 -->
Field

Description

MID Servers

Select one or more MID Servers to perform
this functionality for the following Discovery
types:
◦ IP Scan
◦ CI Scan
Discovery automatically balances the load
when multiple MID Servers are selected.

6. Right-click the form header and select Save.
7. To add criteria that the functionality must meet in order to be triggered, click New in the
Functionality Criteria related list, fill out the form fields, and then click Submit.

Field

Input Value

Name

The name in the criteria is the variable that passes the following information:
◦ mid_server: MID Server that processes the results from the Shazzam probe.
◦ win_domain: Windows domain of the target device.

Operator Select a logical operator.
Value

Enter the actual name of the MID Server (mid_server) or domain
(win_domain) to pass to Discovery for this criteria. This field can also have a
value of mid_domain, which defines the Windows domain of the MID Server that
is processing the Shazzam results.

Note: Functionality criteria are required for Windows MID Servers only, and only when
the behavior controls Discovery across multiple domains. When the instance launches
the Shazzam probe for a Discovery in which a behavior defines multiple MID Servers to
scan multiple domains, the functionality criteria determine which MID Server process the
results of the probe.
The following graphic shows an example of functionality criteria.

What to do next

Schedule a horizontal discovery of type Configuration Item, and select Use Behavior for the
MID Server selection method.
Set up a load balancing behavior
When multiple MID Servers are configured to scan the same protocol, you can set up load
balancing behavior to automatically balance the work between MID Servers.

Before you begin

Role required: agent_admin, discovery_admin, or admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1097


<!-- page 1098 -->
About this task

Behaviors enable load balancing when multiple MID Servers are configured to scan the same
protocol.
For example, an organization has 50 remote locations, varying in size from 10 devices to
several hundred devices. All the satellite offices are part of the same Windows domain, which
is administered from a central location. There are three MID Servers installed at this central
location: Two to scan all the Windows devices and one to scan the remaining devices. Since
remote offices are in different time zones, you must create different schedules to run Discovery
at off-peak hours in each time zone. You can use the same behavior for each schedule, and the
behavior load balances the two Windows MID Servers automatically.

Procedure
1. Create the behavior record.
a. Create a Discovery behavior record and name it something descriptive, such as
LoadBalanced.
b. Select and hold (or right-click) the header bar and select Save from the pop-up menu.
You save the record and create the Discovery Functionality related list in the form.
2. Define the Windows functionality.
a. In the Discovery Functionality related list, select New.
b. Create a record using the fields described in the following table.
c. Select and hold (or right-click) the header bar and select Save from the pop-up menu.

Field

Input Value

Phase

Enter a phase number of 1 in this field.

Functionality Select Windows only (WMI) from the list. This functionality defines the
protocol that is scanned. Because you selected to scan WMI, you must select
Windows MID Servers for this functionality.
MID Servers Select the two MID Servers you want to share the load for the WMI probes. By
entering multiple MID Servers in this field, you tell Discovery to balance the
load between these servers automatically. If you create separate functionality
for each server, load balancing wouldn’t occur.
Active

Select this check box to enable this behavior.

Match
criteria

Leave the default criteria of Any.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1098


<!-- page 1099 -->
Discovery Functionality Form

3. Create Functionality Criteria.

Note: All Windows functionality requires criteria to identify the Windows domain and
define any special behavior for the MID Servers named.
a. In the related list, select New.
b. Enter the following values:

Field

Input Value

Name

Enter win_domain to name the Windows domain that Discovery scans with
the MID Servers you have defined.

Operator Select equals as the operator.
Value

The name of the Windows domain that these MID Servers scans for devices.

Active

Enable the criteria by selecting this check box (true).

4. Define the functionality for the remaining scans.
Create a second record to scan for all the remaining protocols (SSH, SNMP, and so on) using
the following settings:

Field

Input Value

Phase

Enter a phase number of 1 in this field. This phase runs concurrently with
WMI scans using the same Shazzam probe. The same phase number is used
because the target IP ranges don't include devices running multiple protocols
(such as SSH or SNMP). If any devices were running multiple protocols,
additional phases (second or third) should be specified to identify the correct
protocol for each device before proceeding.

Functionality Select All except Windows (no WMI) from the list. This functionality causes the
MID Server to scan all remaining protocols after Discovery has run the WMI
scans.
MID Servers Enter the name of the MID Server that scans all remaining devices. To enable
automatic load balancing, add an additional MID Server in this field.
5. Create a Discovery schedule for each time zone and name the behavior you created.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1099


<!-- page 1100 -->
a. Navigate to Discovery > Discovery Schedules and select New in the record list.
b. Select a Discover type of Configuration items.
c. In the MID Server selection method field, select Use Behavior.

Warning: If this option isn't selected, the required value for the next step may not be
available.
and choose the behavior to use.
d. Select the search icon
In this example, select LoadBalanced.
e. Select the appropriate time to run Discovery for this location.
f. Select Quick Ranges and define the IP address ranges, networks, or lists to scan for this
location.
g. Save the record.
h. Create additional schedules for each time zone or region in the network and select the same
behavior.
Discovery Schedule

Examples of Discovery behavior functionalities
This example of a Discovery behavior requires three functionalities for the behavior.
We will create three functionalities for this Behavior: one MID Server to scan Domain A for
Windows devices only; a second functionality for the same MID Server to scan for all SSH and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1100


<!-- page 1101 -->
SNMP devices; and a third functionality that names a second MID Server to scan Domain B for
Windows devices. The rationale for this is as follows:
• A Windows MID Server can only discover Windows machines on the Windows domain to
which it is joined. This is entirely due to the way Windows authentication works. For this
reason, we need a WMI functionality for each domain.
• A Windows MID Server, provided with the correct credentials, can discover SSH and SNMP
devices anywhere; however, we cannot combine WMI, SSH, and SNMP functionalities across
Windows domains. This is because the functionality criteria for the WMI scans locks in the
Discovery to one specific domain. For this reason, SSH and SNMP discoveries require a
separate functionality.
• We want to scan each machine only once.

Functionality 1: WMI Scanning on Domain A
We configure a MID Server to scan for the WMI protocol on Domain A. WMI scans authenticate
on Windows machines using the domain credentials of the Windows MID Server machine.
Windows MID Servers cannot scan for the WMI protocol outside their own domains.
Create the first functionality using the following values:

Field

Input Value

Phase

Type a phase number of 1 in this field. All functionalities in this example use
the same phase number, which launches a single Shazzam probe for all the
functionalities in that phase. A single phase, when feasible, is the most efficient
use of the Shazzam probe.

Functionality Select Windows, DNS, and WINS from the list. This functionality defines
the WMI protocol that will be scanned and resolves the domain. Because
we selected to scan for WMI, we must select a Windows MID Server for this
functionality.
MID Servers We select a Windows MID Server from Domain A - in this case sandb01-358.
Active

Make sure this check box is selected to enable this behavior.

Match
criteria

Change the criteria to All.

Create Functionality Criteria
All Windows functionality requires criteria to identify the domain and the MID Server. In our
example, we will create two criteria for this functionality. To create Functionality Criteria, click
New in the Related List and enter the following values for the MID Server doing the WMI
scanning on Domain A:

Field

Input Value

Name

Create the following criteria:
• Enter mid_server to name the MID Server that will execute the WMI scans on
Domain A.
• Enter win_domain to name the Windows domain that Discovery will scan with
the MID Server defined.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1101


<!-- page 1102 -->
Field

Input Value

Operator Select equals as the operator in this criteria.
Value

• For the mid_server value, enter the name of the MID Server that will scan Domain
A for Windows devices.
• For the win_domain value, enter the name of Domain A that this MID Server will
scan for Windows devices.

Active

Be sure to enable the criteria by selecting this check box (true).

The completed criteria appear in the Discovery Functionality form for this behavior.

Functionality 2: SSH and SNMP
In our network, we want to scan for UNIX computers and netgear, but we don't want to classify
these devices twice. One of our MID Servers will be configured to classify SSH and SNMP using a
different functionality than it does for WMI scans. We do not need to create criteria for non-WMI
functionality.
Create the second functionality using the following values:

Field

Input Value

Phase

Type a phase number of 1 in this field. All functionalities in this example use
the same phase number, which launches a single Shazzam probe for all the
functionalities in that phase. A single phase, when feasible, is the most efficient
use of the Shazzam probe.

Functionality Select All except Windows (no WMI) from the list. This functionality will scan
SSH and SNMP protocols only.
MID Servers We select the MID Server from Domain A - in this case sandb01-358.
Active

Make sure this check box is selected to enable this behavior.

Match
criteria

Leave the default criteria of Any. Criteria are not used for non-WMI
functionalities.

Functionality 3: WMI Scanning on Domain B
All that remains is to create a functionality for the WMI scans on Domain B. Because of the
Windows authentication mechanism, we must configure a Windows MID Server to scan Domain
B that is a member of that domain.
Create the third functionality using the following values:

Field

Input Value

Phase

Type a phase number of 1 in this field. All functionalities in this example use
the same phase number, which launches a single Shazzam probe for all the
functionalities in that phase. A single phase, when feasible, is the most efficient
use of the Shazzam probe.

Functionality Select Windows, DNS, and WINS from the list. This functionality defines
the WMI protocol that will be scanned and resolves the domain. Because
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1102


<!-- page 1103 -->
Field

Input Value

we selected to scan for WMI, we must select a Windows MID Server for this
functionality.
MID Servers We select a Windows MID Server from Domain B - in this case disco-win2003.
Active

Make sure this check box is selected to enable this behavior.

Match
criteria

Change the criteria to All.

Create Functionality Criteria
All Windows functionality requires criteria to identify the Windows domain and the MID Server.
In our example, we will create two criteria for this functionality. To create Functionality Criteria,
click New in the Related List and enter the following values for the MID Server doing the WMI
scanning on Domain B:

Field

Input Value

Name

Create the following criteria:
• Enter mid_server to name the MID Server that will execute the WMI scans on
Domain B.
• Enter win_domain to name the Windows domain that Discovery will scan with
the MID Server defined.

Operator Select equals as the operator in this criteria.
Value

• For the mid_server value, enter the name of the MID Server that will scan Domain
B for Windows devices.
• For the win_domain value, enter the name of Domain B that this MID Server will
scan for Windows devices.

Active

Be sure to enable the criteria by selecting this check box (true).

The completed criteria appear in the Discovery Functionality form for this behavior.
Discovery behavior example: access an ACL protected SNMP device
Access an SNMP device protected by an ACL using a Discovery behavior.

Before you begin

Role required: discovery_admin or admin

About this task

A specific type of Access Control List (ACL) on an SNMP device can prevent Discovery from
identifying that device. This list defines host machines by IP addresses that are permitted to run
agents on SNMP devices. In this example, we want to classify, identify, and update all the devices
in an IP range, including the SNMP devices protected by an ACL. To do this, we must install a MID
Server with access to the protected SNMP devices and then create a Behavior that allows us to
scan for all protocols without missing any devices or doing any extra work.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1103


<!-- page 1104 -->
Procedure
1. Install a MID Server on a host permitted by the ACL.
To scan the SNMP devices in a network protected by an ACL, a MID Server must be installed
on a host machine specified by IP address in the ACL as having access to the SNMP devices.
Because this MID Server is scanning SNMP devices only, it can be installed on any supported
operating system. The other MID Server, configured to discover WMI and SSH, can be installed
on any Windows host that has visibility to the specified IP ranges.
2. Install additional MID Servers if you intend to configure either functionality to load balance.
3. Create the behavior record.
a. Create a new Discovery Behavior record, and name it something descriptive, such as
Southwest-SNMP.
b. Right-click in the header bar and select Save from the pop-up menu.
This action saves the record and creates the Discovery Functionality related list in the form.
c. To complete this behavior (as shown in Figure 1) we must create functionalities using the
MID Servers we installed for that purpose.
For the functionality that scans for the WMI protocol, we must define criteria that specify the
Windows domain and MID Server being used. Because this Discovery is being performed on
one Windows domain, we can configure a functionality for WMI and SSH (All except SNMP)
using the same MID Server.
Completed Discovery Behavior

4. Define the functionalities.
For this behavior, we create two functionalities, one for SNMP on the MID Server installed on
the host specified in the ACL and another for WMI and SSH on a second MID Server.
a. Click New in the Discovery Functionality related list to add functionalities.

b.

Note: We configure the MID Server installed on the privileged host machine to scan
for the SNMP protocol only.
Create the first functionality using the following values:

Field

Input Value

Phase

Type a phase number of 1 in this field. Both functionalities in this example
use the same phase number, which launches a single Shazzam probe for all

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1104


<!-- page 1105 -->
Field

Input Value

the functionalities in that phase. A single phase, when feasible, is the most
efficient use of the Shazzam probe.
Functionality Select SNMP only from the list. This functionality defines the protocol that
will be scanned.
MID Servers We select a MID Server (sansol02_Solaris) installed on a Solaris host
that is granted access to the SNMP devices by the ACL. You can select
multiple MID Servers if you want Discovery to load balance this functionality
automatically.
Active

Make sure this check box is selected to enable this behavior.

Match
criteria

Leave the default criteria of Any. Criteria are not used for SNMP
functionalities.

Scan for SNMP Only

c.

Note: In the second functionality, Discovery will scan our domain for WMI and SSH
protocols. Because WMI is one of the protocols, the MID Server for this functionality
must be installed on a Windows machine and must have criteria.
Create the second functionality using the following values:

Field

Input Value

Phase

Type a phase number of 1 in this field. All functionalities in this example use
the same phase number, which launches a single Shazzam probe for all
protocol scans. A single phase, when feasible, is the most efficient use of
the Shazzam probe.

Functionality Select All except SNMP from the list. This functionality defines the protocols
for which scanning will occur. Because WMI is one of the protocols selected,
we must use a Windows MID Server for this functionality.
MID Servers We select a Windows MID Server from our domain. In this case we select
disco-win2003. You can select multiple MID Servers if you want Discovery to
load balance this functionality automatically.
Active

Make sure this check box is selected to enable this behavior.

Match
criteria

Change the criteria to All.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1105


<!-- page 1106 -->
Scan for All Except SNMP

d.

Note: Functionalities that scan for WMI require criteria to identify the domain and the
MID Server. In our example, we will create two criteria for this functionality.
To create functionality criteria for a WMI scan, click New in the related list.

e. Enter the following values for the MID Server doing the WMI scanning on our domain:

Field

Input Value

Name

Create the following criteria:
▪ Enter mid_server to name the MID Server that will execute the WMI scans.
▪ Enter win_domain to name the Windows domain that Discovery will scan
with the MID Server defined.

Operator Select equals as the operator in this criteria.
Value

▪ For the mid_server value, enter the name of the MID Server that will scan our
domain for Windows devices.
▪ For the win_domain value, enter the name of our Windows domain.

Active

Be sure to enable the criteria by selecting this check box (true).

The completed criteria appear as follows in the Discovery Functionality form for this
behavior.
Functionality Criteria for a WMI Scan

5. Create the schedule.
a. Create a Discovery Schedule record and name the behavior we just created.
b. Navigate to Discovery > Discovery Schedules and click New in the record list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1106


<!-- page 1107 -->
c. Select a Discover mode of Configuration items.
This action displays the Behavior field.
d. Click the magnifier icon and select the behavior to use.
In our example, we select Southwest-SNMP.
e. Select the appropriate time to run Discovery for this location.
f. Click Quick Ranges and define the IP address ranges, networks, or lists to scan for this
domain.
g. Save the record.
Discovery Schedule Record

CI deletion strategies for pattern discovery
When you perform discovery with a pattern, you can choose what to do with configuration items
(CIs) that are in the CMDB but Discovery can no longer find.

Note: Deletion strategies are available only with patterns, not probes/sensors.
When you use a pattern to perform discovery, you identify a CI Type, which is the main CI you
are trying to find, such as an IIS web server or Tomcat server. Discovery can also find related CIs
and populate the CMDB accordingly. For example, after Discovery finds an IIS server with the IIS
pattern, it can also find these related CIs:
• The Windows machine that hosts the web server
• The configuration files for the IIS server
• The web site that the IIS server hosts
The dependency map on the main CI also shows the related CIs, as illustrated by the following
graphic:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1107


<!-- page 1108 -->
An example of an IIS server main CI and its related CIs

After you discover the main CI and its related CIs for the first time using a pattern, you need to
manually configure an entry in the Related CI Types [sa_ci_to_pattern] table for each relation
between the main CI and a related CI type. These records are where you determine the deletion
strategy for each related CI based on its type. Note that you cannot set a deletion strategy for the
main CI for Infrastructure pattern type.
You can view a list of the relations as the following image illustrates:
Example CIs related to an IIS server

The deletion strategy on a related CI takes effect when both of these conditions occur:
• After you run Discovery with the pattern again.
• Discovery successfully finds the main CI but cannot find the related CI.
These deletion strategy options are available:

Value

Description

Keep

Preserves the configuration file CI record and makes no other changes to
the record. This option is the default setting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1108


<!-- page 1109 -->
Value

Description

Delete

Deletes the configuration file CI record from the CMDB, and the relationship
to the main CI.

Mark as absent

Marks the Status [install_status] field of the configuration file CI record
as Absent, meaning that Discovery cannot find the tracked configuration
file. This status does not instruct the system to delete the actual CI or the
relationship.

Note: There are two tables that do have their CIs deleted if marked as
absent: cmdb_ci_network_adapter and cmdb_ci_ip_address.
Delete relations

Deletes only the CI relationships between the related CI and the main CI.

Mark as retired

Marks the Status [install_status] field of the configuration file CI record
as Retired, meaning that Discovery no longer uses this configuration file.
This status does not instruct the system to delete the actual CI or the
relationship.

Note: Deletion strategies are not available for related entries, which are rules that are
based on related CIs. For more information, see Related entries

.

Set a deletion strategy
Set a deletion strategy when you want to take action on a related configuration item (CI) that
Discovery can no longer find through pattern discovery. You can delete the main CI only when it
is an Application or Cloud Resource pattern type.

Before you begin
• CIs: a main CI and related CIs that the discovery process found through pattern discovery
• Role required: cloud_admin, service_mapping_admin, discovery_admin, or admin

About this task

You can set a deletion strategy for all discovered CIs, including configuration file CIs. However,
the way you access the deletion strategy for tracked configuration files differs from the procedure
in this topic. See Set the deletion strategy for tracked configuration files for instructions.

Procedure
1. Open the list of related CI types by entering sa_ci_to_pattern.list in the application
filter.
2. Filter the list to find the CI type that is related to a main CI through pattern discovery.
If you want to set a deletion strategy for a cloud database, search the list for
cmdb_ci_cloud_database CI type.
Notice that the cmdb_ci_cloud_database CI types have the Is Main CI value set to true.
This indicates that you can set a deletion strategy for both AWS and Azure databases, even if
they are the main CI that cloud discovery finds.

3. From the list view, double click the value in the field in the Deletion Strategy column.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1109


<!-- page 1110 -->
4. Select a new value:

Value

Description

Keep

Preserves the configuration file CI record and makes no other changes to
the record. This option is the default setting.

Delete

Deletes the configuration file CI record from the CMDB, and the
relationship to the main CI.

Mark as absent

Marks the Status [install_status] field of the configuration file CI record
as Absent, meaning that Discovery cannot find the tracked configuration
file. This status does not instruct the system to delete the actual CI or the
relationship.

Note: There are two tables that do have their CIs deleted if marked
as absent: cmdb_ci_network_adapter and cmdb_ci_ip_address.
Delete relations

Deletes only the CI relationships between the related CI and the main CI.

Mark as retired

Marks the Status [install_status] field of the configuration file CI record
as Retired, meaning that Discovery no longer uses this configuration file.
This status does not instruct the system to delete the actual CI or the
relationship.

Configuration file tracking
The horizontal discovery process can find configuration files that belong to certain applications
and add those configuration files to the CMDB. You can track the changes to these files by
comparing them to previous versions.

Warning: Configuration files contain sensitive system information. To prevent
unauthorized access, ensure that access control lists (ACL) are placed on the Tracked
Configuration file table [cmdb_ci_config_file_tracked]. Only allow authorized users to view
this table or uncheck the Save Content setting.

Components for configuration file tracking
CI type
All applications and hosts in your organization must have a corresponding
configuration item (CI) type, which is necessary for discovering and processing
applications and hosts correctly. In a base system, many CI types have
configuration file paths defined for them. You can add new or modify existing
definitions for tracking configuration files. See Modify tracking changes in
configuration files for instructions.
Patterns
Configuration file tracking is available for patterns that discover applications. On
the pattern, you can create tracked file definitions that specify the CI type to which
the application CI belongs and the path of the configuration file. Specify as many
tracked file definitions as needed. You can also specify whether you want to save
the contents of configuration files so you can view and compare the contents of
different versions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1110


<!-- page 1111 -->
Note:
Configuration file tracking is not available for discoveries performed by
traditional probes and sensors.
The classifier that triggers the pattern must specify the Horizontal Pattern
probe, which in turn, must specify the pattern. If you upgrade your instance
to the current version, not all classifiers are configured to use patterns for
discovery by default.
CMDB
All configuration files are saved as a CI in the Tracked Configuration file
[cmdb_ci_config_file_tracked] table. If you enable the content to be saved, these CI
records provide the contents of the configuration files, including previous versions.
From the configuration file CI record, you can compare different versions.

Dependency maps and application service maps
Both dependency maps and service instance maps display tracked configuration files. The
relationship between a configuration file and its host is a contains relationship. The application
contains the configuration file.
For example, this IIS web server contains three tracked configuration files:

Sometimes you organize CI types as a main CI type and its related CI types. On a service
instance map, Service Mapping shows changes to configuration files of related CIs for the main
CIs in inclusions. In inclusions, the system treats applications hosted on a server as independent
objects. For example, the Tomcat WAR CI appears separate from its host, the Tomcat CIs. In this
case, Service Mapping shows changes to configuration files of Tomcat WAR when you select
Tomcat. In addition, Service Mapping displays changes to configuration files of the hardware
server hosting inclusions. In this example, it is a Linux server:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1111


<!-- page 1112 -->
Map showing an inclusion with a host

Deletion strategy
You can specify what you want to do with tracked configuration file CI records when discovery
can no longer find them. You can keep the configuration file CI record, automatically delete it,
delete only the CI relationships to it, or mark it absent.

Discovery patterns that support configuration file tracking by default
These patterns provide tracked file definitions by default:

Classifier

Pattern

CI Type

File path of tracked file

Apache
Server

Apache On Apache Web Server
$config_file
Unix Pattern [cmdb_ci_apache_web_server]
Apache On
Windows
Pattern

MySQL
Server

MySQL
server On
Windows
and Linux
Pattern

MySQL Instance
$config_file
[cmdb_ci_db_mysql_instance]

Microsoft
IIS Server

IIS

Microsoft iis Web Server
EVAL(javascript: var
[cmdb_ci_microsoft_iis_web_server]
rtrn = '';var winDir =
CTX.getCommandManager().shellCommand("
%WinDir%", false,
null, null, CTX);rtrn
= winDir.trim() + '\
\System32\\Inetsrv\\Config
\\*.config';)
IIS Virtual Directory
[cmdb_ci_iisdirectory]

$install_directory +
"\*.config"

TIBCO
ActiveMatrix ActiveMatrix
$config_file
BusinessWorks
BusinessWorks
Business Works
and EMS
[cmdb_ci_appl_tibco_matrix]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1112


<!-- page 1113 -->
Classifier

Oracle

Tomcat

Pattern

CI Type

File path of tracked file

Enterprise
Message
Service

Tibco Enterprise
$config_file
Message Service
[cmdb_ci_appl_tibco_message]

Oracle
DB on
Windows
Pattern

Oracle Instance
$install_directory +
[cmdb_ci_db_ora_instance] "\network\admin\*.ora"

Oracle DB
on Unix
Pattern

Oracle Instance
$install_directory +
[cmdb_ci_db_ora_instance] "/dbs/*.ora"

Tomcat

Tomcat
$install_directory +
[cmdb_ci_app_server_tomcat]
"/conf/server.xml"

Oracle Instance
$install_directory + "\dbs
[cmdb_ci_db_ora_instance] \*.ora"

Oracle Instance
$install_directory +
[cmdb_ci_db_ora_instance] "/network/admin/*.ora"

Tomcat WAR
$install_directory +
[cmdb_ci_app_server_tomcat_war]
"/WEB-INF/web.xml"
WMB

WMQ

WMB On
IBM WebSphere
Unix Pattern Message Broker
[cmdb_ci_appl_ibm_wmb]

$install_directory + "/*/
etc/config/*/*.prop"

WMB On
Windows
Pattern

IBM WebSphere
Message Broker
[cmdb_ci_appl_ibm_wmb]

$install_directory + "\*
\etc\config\*\*.prop"

WMQ On
Windows
Pattern

IBM MQ Manager
(formerly IBM
WebSphere MQ)
[cmdb_ci_appl_ibm_wmq]

$install_directory + "\*
\config\*"

WMQ On
Windows
Pattern

IBM MQ Manager
[cmdb_ci_appl_ibm_wmq]

$install_directory +
"/bin/*.sh"

What to do
1. Enable configuration file tracking by setting the
glide.discovery.enable_file_tracking Discovery property to true.
You can also configure other properties to control the size and number of tracked configuration
files, the time window during which changes to configuration files are tracked for a given
version, and the number of changes allowed on a configuration file during that time window.
See Discovery properties for details.
2. To prevent unauthorized access to the sensitive information from configuration files, perform
the following steps:
a. Ensure that access control rules (ACL) are placed on the Tracked Configuration file table
[cmdb_ci_config_file_tracked]. Only allow authorized users to view this table or uncheck the
Save Content setting.
b. Ensuring that the tracked_file_reader role that controls access to configuration file
data is assigned to correct users and user groups. By default, the itil role contains the
tracked_file_reader role giving all users with the itil role access to the configuration file
information.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1113


<!-- page 1114 -->
3. Verify that the Horizontal Discovery probe is active on the classifier for the software that you
want to discovery. If not, you can enable it, specify the pattern, and then disable the other
probes. See Add the Horizontal Pattern probe to a classifier for instructions.
4. Add or modify tracked file definitions to change the CI type or file path.
5. Set the tracked files deletion strategy to specify what you want to do with tracked configuration
file CI records when pattern discovery can no longer find them.
6. Run horizontal discovery on the hosts that are running the applications you want to discover
with patterns, open the application CI record, and check the Tracked Configuration Files
related list.
7. Compare two versions of tracked CI configuration files to see the actual changes made to
them.
Modify tracking changes in configuration files
Configure the system to collect information about changes in configuration files belonging
to a configuration item (CI). Service Mapping uses this information to notify users that CI
configuration files changed and to view actual changes to configuration files directly in the
service instance maps.

Before you begin

To enable tracking configuration files for a CI for which the system does track files, configure
classification for the CI type to which this CI belongs:
• For CI types representing applications, create a Discovery process classification for the
relevant pattern. Add the Horizontal Pattern probe in the Probe column, and then specify your
pattern in the Pattern column.
• For CI types representing SNMP devices, perform configuration as described in Create a
Discovery CI classification.

Note: There is no need to create CI classifications for hosts because these classifications
are included in the base system.
Role required: cloud_admin, service_mapping_admin, or admin

About this task

The system tracks configuration files as part of horizontal discovery process of a CI to which
these files belong. Configuration files contain CI settings and parameters. Service Mapping uses
this information to notify users that CI configuration files changed and to view actual changes to
configuration files directly in the service instance maps. To learn about how the system tracks
configuration files, stores and updates information about these files, see Configuration file
tracking.
The system tracks configuration files for CI types with process classifiers that trigger patterns.
The patterns contain tracked file definitions, which specify the CI type that the application
belongs to and the path of the configuration file. Several patterns, such as the IIS pattern,
provide tracked file definitions by default. You can use these default definitions or create your
own for any pattern a process classifier triggers.

Procedure
1. Navigate to All > Pattern Designer > Discovery Patterns.
2. Click the pattern for the relevant CI.

Important: Enabling configuration file tracking does not modify the contents of a
pattern.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1114


<!-- page 1115 -->
3. Click the Tracked Files tab.
One or more tracked file definitions appear by default for Discovery patterns that support
configuration file tracking.
If you do not see the Tracked Files tab, verify that the pattern is specified process classier. See
Add the Horizontal Pattern probe to a classifier for instructions.
Tracked files on the IIS pattern

4. Click Edit to modify an existing definition or click New to create a new one.
5. Fill out or modify the form fields (see table):
Example tracked file definition for IIS Server discovery

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1115


<!-- page 1116 -->
Field

Description

CI Type

Select either the primary or related CI type to
which the configuration file belongs.

File Path

Define the path of the configuration file to
track. You can use pattern variables and
wildcards. For example, for the following
path: <the folder with the "install_directory"
parameter>/conf/<any xml file>, enter
$install_directory+"/conf/*.xml"

Save Content

Select this check box to make this file
available for viewing and comparing directly
the ServiceNow instance.

Active

Select this check box to enable tracking of
this configuration file.

6. Click Done.
7. If necessary, set the tracked files deletion strategy as described in Set the deletion strategy for
tracked configuration files

What to do next

Run discovery on the hosts that are running the applications you want to discover with patterns,
open the application CI record, and check the Tracked Configuration Files related list.
If you are using Service Mapping, verify that it started collecting information about changes to
configuration files:
1. Navigate to the service instance map containing the CIs.
2. On the Changes tab, check that the list includes a record of the change you made. For
example, that the configuration file was added, modified or deleted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1116


<!-- page 1117 -->
Compare versions of CI configuration files
You can compare two versions of tracked CI configuration files to see the actual changes made
to them.

Before you begin

If Discovery and Service Mapping don’t track a configuration file you want to track, perform
advanced configuration as described in Modify tracking changes in configuration files.
Role required: one of the following roles.
• admin
• service_mapping_admin (starting from Visibility Content version 6.29.0)

About this task

Discovery and Service Mapping check configuration files for changes during horizontal discovery
using patterns. If a configuration file is modified, the system saves the version of the file. You can
use the timestamp to differentiate between versions. For Discovery, you can compare any two
versions from the list of saved versions. For Service Mapping, you can compare the latest and
previous versions.
Changes to configuration files are associated with CIs to which these files belong. Maps show
configuration file changes as changes to related CIs.

Procedure
1. Compare two versions of the CI configuration file from Service Mapping or Discovery.
Product

Steps

a. Navigate to All > Service Mapping > Ser­
vices > Business Services.
b. Select View Map next to the required busi­
ness service.
c. On the Changes tab, locate the change
record for the modified CI configuration file.

Important: The name of the

change must be File Modified.

Service Mapping

d. Select and hold (or right-click) the change
record for the modified CI configuration file,
and select View Change in Tracked File
Content.
The Tracked Configuration File Comparison
tab opens, displaying the most recent and
the previous versions of the configuration
file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1117


<!-- page 1118 -->
Product

Steps

a. Navigate to the configuration files list in
Tracked Configuration Files.
▪ Navigate to All > Discovery > Tracked
Configuration Files and sort or filter the
list by criteria such as Related CI or Host.
▪ Open a CI record from the Configuration
module for the CI type to which the con­
figuration file belongs.
For example, to find a Tomcat server, nav­
igate to All > Configuration > Applica­
tions Servers > Tomcat, then select the
specific Tomcat server. The list of configu­
ration files appear in the Tracked Configu­
ration files related list.

Discovery

b. Select the configuration file from the list.
c. In the Content Versions related list, select
one of the versions in the Update time relat­
ed list.
d. Select Compare.
The Tracked Configuration File Comparison
tab opens, displaying the configuration file
versions you selected.
2. Review actual changes.
Highlight colors indicate the type of change:
◦ Purple — Updated line
◦ Pink — New line
◦ Gray — Deleted line
3. Navigate between the changes using the Next difference icon and the Previous difference
icon .
Related topics
Tracked Configuration file form
Set the deletion strategy for tracked configuration files
You can specify what you want to do with tracked configuration file CI records when pattern
discovery can no longer find them.

Before you begin

A pattern that specifies tracked configuration files.
Role required: discovery_admin, service_mapping_admin, or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1118


<!-- page 1119 -->
About this task

You can set a deletion strategy for all discovered CIs, not just configuration file CIs. However the
way you access the deletion strategy for standard CIs differs from configuration file CIs. See Set
a deletion strategy for instructions.

Procedure
1. Navigate to All > Pattern Designer > Discovery Patterns and open the desired pattern.
2. Click the Tracked Files tab.
3. Under Related Links, click Edit deletion strategy for the configuration files of this pattern.
The Related CI Types list appears showing you filtered records in the Related CI Type
[sa_ci_to_pattern] table. The filter shows you only records with the CI type of Tracked
Configuration files [cmdb_ci_config_file_tracked], which is the table where the system saves
configuration file CIs.
4. From the list view, double-click the value in the field in the Deletion Strategy column for the
tracked configuration file.
5. Select a new value:

Value

Description

Keep

Preserves the configuration file CI record and makes no other changes to
the record. This option is the default setting.

Delete

Deletes the configuration file CI record from the CMDB, and the
relationship to the main CI.

Mark as absent

Marks the Status [install_status] field of the configuration file CI record
as Absent, meaning that Discovery cannot find the tracked configuration
file. This status does not instruct the system to delete the actual CI or the
relationship.

Note: There are two tables that do have their CIs deleted if marked
as absent: cmdb_ci_network_adapter and cmdb_ci_ip_address.
Delete relations

Deletes only the CI relationships between the related CI and the main CI.

Mark as retired

Marks the Status [install_status] field of the configuration file CI record
as Retired, meaning that Discovery no longer uses this configuration file.
This status does not instruct the system to delete the actual CI or the
relationship.

Related topics
CI deletion strategies for pattern discovery
Set a deletion strategy
Change the source name of Discovery results
You have the option of changing the source name of discovery results. This might be desirable if
Discovery is running on your network together with another discovery product, and you want to
use customized identifiers.

Before you begin

Role required: discovery_admin or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1119


<!-- page 1120 -->
About this task

The Source [sys_object_source] table stores information identifying the source of a discovery,
the ID of that source, and the date/time of the last scan.
To view this information, configure a CI form and add the Sources related list. This table is
populated automatically when the Discovery plugin is enabled.
Sources List

To migrate your Discovery Source to ServiceNow:

Procedure
1. Update the glide.discovery.source_name system property to have a value of
ServiceNow.
2. Edit the dictionary entry for the Configuration Item [cmdb_ci] table.
3. Update the choice list for the discovery_source column to only have the value ServiceNow for a
discovery product.
4. Open a list for the Configuration Item [cmdb_ci] table and filter on a discovery source field
value you want to change.
5. Use the Update All option to change the value to ServiceNow.
6. Open a list for the Source [sys_object_source] table and filter on a name field value you want to
change.
7. Use the Update All option to change the value to ServiceNow.
Discovery API plugin
The Discovery API plugin provides APIs for scoped applications and is loaded when the
Discovery plugin is activated.
Details about these Discovery API methods
They are listed here by class.

®

are available on the ServiceNow Developer Site.

Note: Java API methods are not customizable.
DiscoveryAPI - Scoped
The methods in this class launch a quick Discovery of a single IPv4 address and
return summaries of previously launched Discovery statuses for a single CI or for
all scanned CIs. A MID Server is selected automatically, based on the IP address
provided or the application specified.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1120


<!-- page 1121 -->
• discoverIpAddress(): Discovers a single IPv4 address.
• reportCiIpAddressStatus(): Returns a summary of a configuration item's
Discovery status given the specific status sys_id and IPv4 address.
• reportCiStatus(): Returns a summary of a CI Discovery status given a
specific Discovery Status sys_id.
ReportCiStatusOutputJS
The methods are getters that return specific object properties for the DiscoveryAPI
reportCiIpAddressStatus method and then convert the information into a
JSON string.
• getCiOperationStatus(): Used to return the state of the scanned CI.
• getCmdbCI(): Used to return the value in the cmdb_ci field from the
discovery_device_history table for the CI being scanned.
• getDiscoveryState(): Used to return the value from the State field in the
Discovery Status [discovery_status] table.
• getIpAddress(): Used to return the value from the source field in the
discovery_device_history table for the CI being scanned.
• getIssues(): Used to return the value from the issues field in the
discovery_device_history table for the CI being scanned.
• getIssuesLink(): Used to return the value from the issues_link field in the
discovery_device_history table for the CI being scanned.
• toJson(): Used to serialized the ReportCiStatusOutputJS object.
Running process filters
Filter any processes, using combinations of name and key parameters, from coming back to
the instance. Out-of-the box, you can filter OS processes. Filtering processes helps reduce
the number of records created, updated, or deleted in the database which can improve overall
database performance.

Before you begin

Role required: discovery_admin, admin

About this task

To add processes to the filter, you need to setup configurations using the Running Process filter
record [running_process_filter]. These records make sure the filtered processes do not populate
the Running process [cmdb_running_process] table.

Procedure
1. Navigate to running_process_filter.list.
2. Click New to create a new record.
The form and descriptions are explained below.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1121


<!-- page 1122 -->
Field

Description

Active

Check the box to include or exclude.

Name

Name for the record.

Description

Short description of the record.

Group

A name for the configuration type. Running
process filters can be grouped however you
want so that it easier to identify and choose
in the table.

Probe

Mandatory field. Which probe will use
this filter. Often Linux or Windows active
processes or ADM enhanced.
When the probe executes, the instance
sends the running_process_filter records
as a probe parameter. The probe then uses
this to filter the results before sending the
information back to the instance.

Discovery Schedule

Filter

You can apply the filter on a specific
Discovery schedule. If you leave this field,
it applies to all schedules, even Quick
Discovery.
Any process matching the filter will not be
added to the cmdb_running_process table.
For example, if you wish to filter all
svchost.exe processes except the
svchost.exe process for IIS classification, the
filter definition would be:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1122


<!-- page 1123 -->
Field

Description

◦ name is svchost.exe
◦ parameters does not contain iissvcs
For information on setting filter conditions
see: Condition builder
Case sensitive

Applies to the Filter field. If case sensitive
is checked, the filter may pull more or less
information than you want. Default is off.

OOB filters

There are Linux and Windows filters to
choose from. See Out-of-the-box process
filters for more details.

3. Enter the details and click Submit.
Out-of-the-box process filters
There are a variety of Linux and Windows out-of-the-box running process filters that are turned
on and used for filtering processes.
Linux out-of-the-box filters
Name

Description

dhclient

dhclient is a system process in Linux that
is responsible for dynamically configuring
network interfaces using the Dynamic
Host Configuration Protocol (DHCP). It
communicates with a DHCP server to obtain
network configuration information, such as IP
address, subnet mask, default gateway, and
DNS servers. dhclient is commonly used in
environments where network addresses are
assigned dynamically, such as in home and
small business networks.

crond

crond is a system service in Linux that
provides support for the cron scheduling
utility. It is responsible for running scheduled
jobs at specified times and intervals. crond
is commonly used for automating system
maintenance tasks, such as backups and log
rotation, as well as for running user-defined
scripts and applications at specific times.

sleep

The sleep process is a command that is used
to pause the execution of a shell script or a
command for a specified amount of time. It is a
simple way to delay the execution of a script or
command for a specific duration.

agetty

agetty is a system service in Linux that
manages virtual console login sessions. It
provides a terminal interface for users to log in
to the system and access the command line

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1123


<!-- page 1124 -->
Linux out-of-the-box filters (continued)
Name

Description

interface. agetty is responsible for initializing
the terminal, displaying the login prompt, and
authenticating the user's credentials.
dbus-daemon

dbus-daemon is a system service in Linux that
implements the D-Bus message bus system.
It is responsible for enabling communication
between applications and system services on
the same host or on a network. dbus-daemon
manages the message bus and dispatches
messages between applications and services,
allowing them to exchange data and request
services from each other.

rsyslogd

rsyslogd is a system service in Linux
that manages system logs and provides
centralized logging capabilities. It is a powerful
and flexible logging system that allows
administrators to configure and manage log
messages generated by various applications
and services on a system or across a network.
rsyslogd provides advanced features such as
log filtering, log forwarding, and log rotation,
and supports a variety of output formats and
destinations, including files, databases, and
remote syslog servers. rsyslogd is commonly
used in server environments and can be
configured using a configuration file or a
graphical user interface.

auditd

auditd is a system service in Linux that
provides an auditing framework for tracking
security-relevant events on the system. It
collects and logs security events generated by
the kernel and user space applications, which
can be used for forensic analysis, compliance
monitoring, and intrusion detection. auditd can
be configured to generate alerts or take other
actions based on predefined rules or policies.

irqbalance

irqbalance is a system service in Linux that
balances interrupt requests (IRQs) among
processors in a multicore system to improve
performance and reduce latency. It detects
and monitors IRQ activity and redistributes
IRQs to the least busy processor, which can
help to reduce processing bottlenecks and
improve system responsiveness. irqbalance
is commonly used in high-performance
computing environments and other systems
with high levels of interrupt activity.

systemd-journald

systemd-journald is a system service in Linux
that provides a centralized logging system for
system and application logs. It is designed

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1124


<!-- page 1125 -->
Linux out-of-the-box filters (continued)
Name

Description

to collect and store log data in a structured
and efficient manner and allows for advanced
querying and filtering of log data. systemdjournald provides a unified interface for
accessing and managing logs across different
Linux distributions and can be configured
using a configuration file or a commandline interface. It is commonly used in server
and desktop environments to monitor and
troubleshoot system and application issues.
abrtd

abrtd is a system process that runs on Linux
systems and is responsible for detecting
and reporting application crashes to the
system administrator. The process collects
information about the crashed application,
such as core dumps, and stores them in a
report.

atd

atd is a system service in Linux that allows
for the scheduling of one-time jobs to be
executed at a specific time and date. It
is useful for running jobs that need to be
executed at a specific time or for automating
tasks that need to run once in the future.

lvmetad

lvmetad is a system service in Linux that
provides metadata caching for Logical Volume
Management (LVM). It caches metadata
information about LVM volumes and devices,
which can improve the performance of LVM
operations and reduce the time needed to
scan and initialize LVM devices. lvmetad is
commonly used in systems that rely heavily on
LVM, such as virtualization environments and
storage servers.

polkitd

polkitd is a system service in Linux that
provides an authorization framework for
controlling access to privileged actions and
resources. It enables non-privileged users
to perform specific tasks or access certain
resources that require elevated privileges,
such as installing software or configuring
network settings, by prompting them to
authenticate using their password or other
means. polkitd provides a policy engine that
can be configured by administrators to define
fine-grained access controls for specific users,
groups, or applications.

acpid

acpid is a system service in Linux that listens
for ACPI (Advanced Configuration and
Power Interface) events generated by the
hardware and notifies the operating system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1125


<!-- page 1126 -->
Linux out-of-the-box filters (continued)
Name

Description

It is responsible for managing power events,
such as power button presses, and executing
user-defined actions in response to them.
anacron

anacron is a system service in Linux that
allows for the scheduling of periodic jobs,
similar to cron, but with the added ability to
ensure that missed jobs are executed when
the system next becomes available. It is useful
for running periodic tasks that may be delayed
due to system downtime or user inactivity.

(sd-pam)

sd-pam is a system service in Linux
that provides support for the Pluggable
Authentication Modules (PAM) framework. It is
responsible for handling user authentication
and authorization requests from various
system services and applications.

NetworkManager

NetworkManager is a system service in
Linux that manages network connectivity
for desktops, laptops, and other devices. It
provides a unified interface for configuring and
managing wired, wireless, mobile broadband,
and other network connections, handling
IP addressing, DNS configuration, and
other network settings. NetworkManager is
commonly used in desktop environments
and graphical user interfaces and can be
configured using a graphical user interface or
command-line interface.

hcid

hcid is a system service in Linux that provides
support for Bluetooth connectivity. It is
responsible for managing Bluetooth devices,
connections, and services on the system.
hcid provides an interface for applications
and system services to interact with Bluetooth
devices and is used to configure and manage
Bluetooth-related settings, such as device
pairing, authentication, and authorization.

hidd

hidd is a system process in Linux that provides
support for Bluetooth human interface
devices (HID), such as keyboards and mice.
It is responsible for managing Bluetooth
connections and providing a common
interface for HID devices to communicate with
the system. hidd is commonly used in desktop
environments to enable wireless input devices
to be used with the system.

iscsid

iscsid is a system process in Linux that
provides support for the iSCSI protocol, which
is used to access storage devices over a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1126


<!-- page 1127 -->
Linux out-of-the-box filters (continued)
Name

Description

network. It is responsible for discovering
iSCSI targets, establishing and managing
iSCSI sessions, and providing access
to iSCSI devices as if they were locally
attached storage. iscsid is commonly used
in virtualization environments and other
systems that require remote access to storage
resources.
klogd

klogd is a system process in Linux that is
responsible for logging kernel messages
to the system log. It monitors the kernel log
buffer for new messages and writes them
to the system log file or sends them to a
remote logging server. klogd is commonly
used for troubleshooting kernel issues and
monitoring system activity, as well as for
collecting diagnostic information for system
administrators and developers.

mingetty tty1

mingetty tty is a system process in Linux
that provides a terminal login prompt on a
virtual console. It is responsible for initializing
the terminal device, displaying the login
prompt, and accepting user login credentials.
mingetty tty is used for each virtual console
in a Linux system and can be used for system
administration and debugging tasks, as well as
for running console-based applications.

ModemManager

ModemManager is a system service in
Linux that manages mobile broadband
(GSM/CDMA/UMTS/LTE) and other modem
connections. It provides a unified interface for
configuring and managing modem devices,
handling connections to the internet or other
networks, and monitoring modem activity.
ModemManager is commonly used on
laptops, tablets, and other mobile devices that
require wireless network connectivity.

pcscd

pcscd is a system service in Linux that
provides support for smart card readers and
smart cards. It enables applications to access
smart cards and their content using the PC/SC
(Personal Computer/Smart Card) interface
standard. pcscd provides a unified interface
for accessing various types of smart card
readers and can be used by applications
such as web browsers, email clients, and
authentication systems that require smart card
support.

power-profiles-daemon

power-profiles-daemon is a system service
in Linux that manages power profiles and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1127


<!-- page 1128 -->
Linux out-of-the-box filters (continued)
Name

Description

power management settings for laptops and
other mobile devices. It provides a unified
interface for configuring and managing powersaving features, such as screen brightness,
CPU frequency scaling, and suspend modes,
based on user preferences and system usage
patterns. power-profiles-daemon is commonly
used in desktop environments and graphical
user interfaces and can be configured using
a graphical user interface or command-line
interface.
pulseaudio

pulseaudio is a system service in Linux
that manages audio devices, streams, and
applications. It provides a unified audio
interface for both input and output audio
streams and supports advanced features such
as volume control, mixing, and audio effects.
pulseaudio is commonly used in desktop
environments and graphical user interfaces
and can be configured using a graphical
user interface or command-line interface.
It supports a variety of audio hardware and
software configurations, including multiple
audio devices and network audio streaming.

chronyd

chronyd is a system service in Linux that is
responsible for synchronizing the system
clock with a reference time source. It
implements the Network Time Protocol (NTP)
and can be used to synchronize the system
clock with a variety of time sources, including
GPS clocks and atomic clocks. chronyd is
commonly used in environments where
accurate time synchronization is important,
such as in financial trading or scientific
research.

rtkit-daemon

rtkit-daemon is a system service in Linux
that provides real-time scheduling and
priority management for audio and other
time-sensitive applications. It is designed to
ensure that these applications get access
to the CPU and other system resources
they need to function properly and avoid
audio glitches, latency, or other performance
issues. rtkit-daemon uses the Linux real-time
capabilities and provides a simple interface for
applications to request real-time scheduling
and priority. It is commonly used in desktop
environments and audio applications and can
be configured using a configuration file or a
graphical user interface.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1128


<!-- page 1129 -->
Linux out-of-the-box filters (continued)
Name

Description

sssd

sssd is a system service in Linux that
provides centralized authentication, identity,
and access management for a variety of
services and applications. It is designed to
simplify the management of user accounts
and credentials in large, multi-domain
environments and provides a unified interface
for authentication, authorization, and
identity resolution. sssd supports a variety of
identity sources, including local files, LDAP
directories, and Active Directory domains, and
provides advanced features such as offline
authentication, caching, and failover. It is
commonly used in enterprise environments
and can be configured using a configuration
file or a graphical user interface.

sssd_kcm

sssd_kcm is a system service in Linux that
provides a Kerberos Credential Cache
Manager for the System Security Services
Daemon (SSSD). It is designed to improve
the security and performance of Kerberosbased authentication and authorization by
caching Kerberos credentials and tickets
locally and providing a unified interface for
accessing them. sssd_kcm is commonly
used in enterprise environments that rely on
Kerberos for centralized authentication and
access control and can be configured using a
configuration file or a graphical user interface.

systemd-hostnamed

systemd-hostnamed is a system service
in Linux that provides hostname and DNS
resolution configuration. It is designed to
simplify the configuration of network-related
settings such as hostname, domain name, and
DNS servers. systemd-hostnamed provides a
unified interface for configuring these settings
across different Linux distributions and can
be configured using a configuration file or
a command-line interface. It is commonly
used in server and desktop environments
to configure network settings during system
startup or runtime.

systemd-timesyncd

systemd-timesyncd is a system service in
Linux that provides time synchronization
for the system clock. It synchronizes the
system clock with a remote time server
over the network and can be configured to
use multiple time sources for redundancy.
systemd-timesyncd is commonly used in
server and desktop environments to ensure

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1129


<!-- page 1130 -->
Linux out-of-the-box filters (continued)
Name

Description

accurate timekeeping for various system and
application functions.
hald

hald is a system service in Linux that is
responsible for detecting and handling
hardware events, such as the insertion
and removal of storage devices and other
hardware components. It provides a common
interface for applications and system services
to interact with the hardware and is used to
configure and manage system resources, such
as input devices and storage volumes. hald
is commonly used in desktop environments
to provide plug-and-play functionality for
hardware devices.

xfs

xfs is a high-performance, journaling
file system for Linux that is optimized for
scalability and large files. It was originally
developed by Silicon Graphics, Inc. for use
in their IRIX operating system and was later
ported to Linux. xfs supports features such
as snapshots, online resizing, and advanced
file permissions. It is commonly used in
high-performance computing, media and
entertainment, and other industries where
handling large files and data sets is critical.

audispd

audispd is a system service in Linux that
is responsible for processing audit events
generated by the kernel's auditing subsystem.
It is part of the Audit framework and is used to
provide secure logging of system events for
auditing and forensic purposes. audispd can
be configured to send audit events to various
targets, such as syslog or a centralized log
server.

automount

automount is a system service in Linux
that provides automatic mounting of file
systems when they are accessed by users
or applications. It allows for on-demand
mounting of file systems, reducing the amount
of time and system resources spent on
unnecessary file system mounts. Automount
is particularly useful in environments with
large numbers of networked file systems or
removable storage devices.

avahi-daemon: chroot helper

avahi-daemon is a system service in Linux that
implements the zeroconf protocol for service
discovery on local networks. The chroot
helper is a component of avahi-daemon
that is responsible for setting up a chroot
environment for the service, which helps to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1130


<!-- page 1131 -->
Linux out-of-the-box filters (continued)
Name

Description

increase security by limiting the access that
avahi-daemon has to the system.
Windows out-of-the-box filters
Name

Description

System Idle Process

In Windows operating system, "System
Idle Process" is not actually a process, but
rather a system idle task that runs when the
CPU has nothing else to do. It represents
the percentage of time the CPU is idle and
available to handle other processes. So,
it is an important system component that
shows the current CPU usage when no other
processes are running.

svchost.exe

svchost.exe is a Windows process that is
responsible for hosting multiple Windows
services. It acts as a host process for several
system services and enables the efficient
sharing of system resources among them.
The services running under svchost.exe can
include Windows Update, Windows Defender,
Remote Procedure Call (RPC), and many
others. By hosting these services under a
single process, svchost.exe helps to reduce
the memory footprint of the system and
improve overall system performance.

wmiprvse.exe

wmiPrvSE.exe is a Windows system process
that provides management information and
control through the Windows Management
Instrumentation (WMI) framework. It
runs as a service in the background and
allows applications and scripts to access
system management information, perform
administrative tasks, and monitor system
performance. WmiPrvSE.exe can be run in
both local and remote modes and can be used
to manage a wide range of system resources,
including hardware, software, and network
components. It is an essential component
of the Windows operating system and is
typically used by system administrators and IT
professionals.

conhost.exe

conhost.exe is a Windows process that
serves as a host for console applications.
It was introduced in Windows 7 and is
responsible for managing the command
prompt windows and other console-based
applications. conhost.exe provides improved
compatibility and security features compared

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1131


<!-- page 1132 -->
Windows out-of-the-box filters (continued)
Name

Description

to its predecessor, the csrss.exe process,
which was used for the same purpose in older
versions of Windows.
WUDFHost.exe

WUDFHost.exe is a Windows User-Mode
Driver Framework (UMDF) Host Process that
manages user-mode drivers running in the
context of the Windows Driver Foundation
(WDF). It provides a framework for developing
and executing drivers in user mode rather
than kernel mode, improving stability and
reliability of the system. WUDFHost.exe is
used for Plug and Play devices and other
driver-based hardware components. It runs in
the background and typically consumes low
system resources.

LogonUI.exe

LogonUI.exe is a Windows system process
that manages the Windows logon screen and
user authentication. When a user attempts to
log in to a Windows computer, LogonUI.exe
displays the logon screen and prompts the
user to enter their login credentials. Once the
user's credentials are entered, LogonUI.exe
verifies them and grants the user access
to the system. LogonUI.exe is an essential
component of the Windows operating system
and should not be terminated or disabled.

csrss.exe

The csrss.exe process is a critical component
of the Windows operating system. It is
responsible for handling certain functions
related to the graphical user interface (GUI),
such as managing windows and consoles. The
process runs in a separate session from the
user's session to ensure stability and security
of the operating system. It is an essential
system process and should not be terminated
unless there is a specific and valid reason to
do so.

dllhost.exe

dllhost.exe is a Windows system process
responsible for running and managing COM
(Component Object Model) components.
COM components are reusable software
modules that can be accessed by other
programs, and they are often used to facilitate
inter-process communication between
different applications. The dllhost.exe process
hosts these COM components and ensures
their proper execution and management. It
is commonly used by a variety of Windows
applications and services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1132


<!-- page 1133 -->
Windows out-of-the-box filters (continued)
Name

Description

Fontdrvhost.exe

Fontdrvhost.exe is a Windows system process
that manages the installation, removal, and
enumeration of font files. It is responsible for
loading and rendering fonts in applications
that use the Windows Font Cache Service.
Fontdrvhost.exe runs in the background
and does not have a visible interface. It is
important for maintaining the system's font
library and ensuring that fonts are available to
applications when needed.

wlanext.exe

wlanext.exe is a Windows system process
that provides support for wireless LAN
(WLAN) configurations and operations. It is
responsible for managing the wireless network
adapters and implementing the functionality of
the WLAN AutoConfig service, which enables
automatic configuration of wireless networks
and supports the Wi-Fi Protected Setup (WPS)
protocol. The process runs in the background
and can be managed through the Services
console or the Command Prompt.

winlogon.exe

winlogon.exe is a system process in Windows
that manages the login and logout of user
sessions. It is responsible for authenticating
users and loading their user profile upon login,
as well as closing down any open applications
and saving user data when a user logs off or
shuts down the system. Winlogon.exe runs as
a service in the background and is essential
for the proper functioning of the Windows
operating system.

unsecapp.exe

unsecapp.exe is a Windows system
process that is related to the Distributed
Component Object Model (DCOM). It runs
in the background and acts as a mediator
between a client and a server application that
communicate using DCOM. When a client
sends a request to a server using DCOM,
unsecapp.exe is responsible for handling the
security aspects of the communication and
ensuring that the request is authorized. It is
a legitimate system process and is typically
located in the C:\Windows\System32 folder.

w3wp.exe

w3wp.exe is a Windows process that stands
for Windows Process Activation Service
Worker Process. It is used by the Internet
Information Services (IIS) web server to host
and manage ASP.NET web applications.
w3wp.exe allows multiple web applications to
run simultaneously on the same server, and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1133


<!-- page 1134 -->
Windows out-of-the-box filters (continued)
Name

Description

it provides a secure, isolated environment for
each application. It is a critical component of
the IIS server and is often monitored closely to
ensure the stability and performance of web
applications.
dwm.exe

dwm.exe is a Windows system process
that stands for Desktop Windows Manager.
It is responsible for managing graphical
effects, such as transparent windows and
window animations, in the Windows operating
system. The process is also responsible for
rendering the desktop, managing windows,
and providing visual effects such as Aero
Glass. It was introduced with Windows Vista
and has since been included in all subsequent
versions of Windows.

lsass.exe

lsass.exe is a critical system process in
Windows that handles authentication and
security-related functions such as local and
remote logon, password changes, and security
policy enforcement. It is a core component of
the Windows operating system and is required
for the proper functioning of the system.

System

System is not a Windows process in the
traditional sense. Instead, it refers to a
collection of processes and services that are
critical to the functioning of the operating
system. These processes and services are
responsible for managing hardware resources,
handling system events, and providing
essential functions like memory management,
process scheduling, and security. In other
words, System is the core of the Windows
operating system.

smss.exe

smss.exe, or Session Manager Subsystem,
is a critical system process in Windows that
is responsible for launching user-mode
applications during system startup. It also
creates system threads, initializes systemwide data structures, and handles system
shutdown and reboot requests. It is one of the
first processes to start during the Windows
boot process.

services.exe

services.exe is a system process in Windows
responsible for managing system services,
including starting and stopping them, and
controlling their configuration settings. It runs
in the background and provides essential
functionality for the operating system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1134


<!-- page 1135 -->
Windows out-of-the-box filters (continued)
Name

Description

wininit.exe

wininit.exe is a system process in Windows
that runs during the startup process of
the operating system. Its main function is
to initialize critical system services and
processes that are required for the system to
function properly. It is responsible for running
the Windows startup sequence, including
launching the Session Manager (smss.exe)
process.

spoolsv.exe

spoolsv.exe is a system service process in
Windows that manages the printing process.
It is responsible for queuing and spooling
print jobs, communicating with the printer, and
ensuring that each job is printed correctly. The
process runs in the background and is critical
for the proper functioning of the printing
subsystem in Windows. If the spoolsv.exe
process encounters errors, it can result in
printing problems and errors.

taskhostw.exe

taskhostw.exe is a Windows system process
that serves as a host for various background
tasks that run on the system. It manages and
executes tasks such as Windows updates,
maintenance tasks, and user-defined tasks. It
is a critical system process and terminating it
can cause system instability.

SearchProtocolHost.exe

SearchProtocolHost.exe is a Windows process
that is responsible for indexing and performing
search operations on the system. It is a part
of the Windows Search service, which allows
users to quickly search for files and folders on
their computer. The SearchProtocolHost.exe
process runs in the background and indexes
files and folders based on user-defined search
criteria. When a search query is performed,
the process is activated and retrieves the
relevant search results.

SearchIndexer.exe

SearchIndexer.exe is a Windows system
process that indexes files and folders on
local and networked drives to enable faster
searching. It runs in the background and
continuously indexes new or changed files
to maintain an up-to-date index database.
The process is essential for Windows Search
functionality and can be found on most
Windows operating systems.

Explorer.exe

Explorer.exe is a core process in Windows
operating systems responsible for providing
the user interface, desktop, and file
management functions. It is commonly

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1135


<!-- page 1136 -->
Windows out-of-the-box filters (continued)
Name

Description

referred to as the Windows Explorer or File
Explorer, and allows users to navigate and
manage files, folders, and applications on their
computer.
SearchFilterHost.exe

SearchFilterHost.exe is a Windows system
process that is responsible for indexing
and searching files on the computer. It is a
component of the Microsoft Windows Search
service, which allows users to quickly search
for files and documents on their computer. The
process runs in the background and can use a
significant amount of system resources while
indexing files.

SCNotification.exe

SCNotification.exe is a Windows system
process that is responsible for showing
system notifications, such as alerts
and messages, to the user. It is part of
the Windows Shell Experience Host
(ShellExperienceHost.exe) process, which
manages the user interface for the Start menu,
taskbar, and Action Center in Windows 10.

sihost.exe

sihost.exe is a system process in Windows that
is responsible for launching the Start menu
and handling its interactions. It is an essential
part of the user interface and provides a
graphical interface to interact with the system.

MonitoringHost.exe

MonitoringHost.exe is a legitimate system
process that is a part of the Windows
operating system. It is used by the Windows
Error Reporting (WER) infrastructure to collect
and send telemetry and diagnostic data to
Microsoft, which is then used to improve the
stability and performance of Windows.

Configure Discovery to use Event Framework
Configure Discovery to process jobs using the Event Framework method, which enables you
to manage discovery throttling effectively and prioritize tasks based on their importance in the
queue.

Before you begin

Confirm the following:
• Discovery Admin Workspace is using version 1.9.0 or later.
• ServiceNow AI Platform is using version XP9, YP4, or later than YP4.
Role required: discovery_admin

About this task

When not using the Event Framework method, Discovery creates a one-time Schedule Item
[sys_trigger] record for each External Communication Channel (ECC) queue sensor or pattern
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1136


<!-- page 1137 -->
input record. After the task is processed, the system scheduler deletes the sys_trigger. This
approach introduces additional overhead and can lead to significant database churn, while
offering limited control over how sensors are processed.
The Event Framework reduces database churn by cycling through multiple event tables over
time. Instead of deleting old records one by one, it clears out entire tables when they’re no longer
needed and reuses them. This approach is much more efficient and helps keep the system
running smoothly.

Procedure
1. Navigate to All > System Properties > All Properties.
2. In the System Properties [sys_properties] table, select the
discovery.use.event.processing property.
3. Set the Value field to true.
4. Select Update.

Result

When an input record is added to the ECC Queue, a business rule is triggered, which fires an
event. The system processes these events at regular intervals with a default priority of 100.

Note: To update a job priority, configure the

com.glide.queue.discovery.sensors.processing_jobs.priority and
com.glide.queue.discovery.cloud.sensors.processing_jobs.priority
system properties. For more information, see Configure the job priority of background
workers for Event Framework.
Optimizing Discovery load for Event Framework
You can optimize Discovery properties to adjust throughput and enhance safety when pinning
jobs.
Event Framework Discovery tuning
Issue

Action

Related task

Your instance is slow

Decrease the scale factor

Adjust the scale factor for
Event Framework jobs

Discovery is slow

Increase the scale factor

Adjust the scale factor for
Event Framework jobs

Discovery is slow when both
Cloud and IP Discovery are
running

Use a single queue for both
Cloud and IP-based events

Configure a single queue for
Cloud-based and IP-based
events

Discovery is preempting other Reduce the worker priority of
work
the background job

Configure the job priority of
background workers for Event
Framework

Nodes are executing too many Configure event processors to Configure event processors to
Discovery jobs simultaneously execute on specific nodes
execute on specific nodes
Adjust the scale factor for Event Framework jobs
Adjust the scale factor to modify the number of worker threads per app node, which increases or
decreases throughput.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1137


<!-- page 1138 -->
Before you begin

Confirm the following:
• Discovery Admin Workspace is using version 1.9.0 or later.
®

• ServiceNow AI Platform is using version XP9, YP4, or later than YP4.
• The discovery.use.event.processing system property is turned on. For more
information, see Configure Discovery to use Event Framework.
• The Job configuration type field of the Queue Registration form is set to Scale with nodes. For
more information, see Queue Registration form reference.
Role required: discovery_admin

About this task

If your instance becomes slow while Discovery is running, you can adjust the scale factor to
modify the number of worker threads per app node. The default scale factor is set to 2, which
corresponds to two worker threads per app node.
For example, if you increase the scale factor to 3, Discovery uses three worker threads per app
node, increasing throughput. Conversely, reducing the scale factor to 1 limits Discovery to a
single worker thread per app node, which decreases throughput.

Procedure
1. Navigate to All > System Policy > Queue Registry.
2. Choose one or more job types for which you want to adjust the scale factor.
Job type

Action

IP-based

Select discovery.sensors from the
Queue Registry [queue_registry] table.

Cloud-based

Select discovery.cloud.sensors from
the Queue Registry [queue_registry] table.

3. In the Scale factor field, set a value.

Note: The default maximum value is 3. To increase the scale factor beyond 3, configure
the

com.glide.processing.framework.max_thread_utilization_percentage
property. For more information about this property, see Discovery properties. For
instructions on how to create a property, see Add a system property .
4. Select Update.
Configure a single queue for Cloud-based and IP-based events
Configure Cloud-based and IP-based events to share a single queue, which helps reduce the
impact of Discovery on app nodes.

Before you begin

Confirm the following:
• Discovery Admin Workspace is using version 1.9.0 or later.
®

• ServiceNow AI Platform is using XP9, YP4, or later than YP4.
• The discovery.use.event.processing system property is turned on. For more
information, see Configure Discovery to use Event Framework.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1138


<!-- page 1139 -->
Role required: discovery_admin

About this task

When using a single queue, Cloud Discovery jobs frequently have higher priority than IP-based
Discovery jobs. Separating Cloud-based and IP-based job queues helps avoid interference
between Discovery types. However, balancing Discovery throughput and instance impact
involves trade-offs.
Instance impact based on queue configuration
Separate queues

Single queue

More worker threads, which means more
database activity

Fewer worker threads, which means less
database activity

More impact on jobs unrelated to Discovery

Less impact on jobs unrelated to Discovery

Cloud Discovery doesn't impact IP Discovery

Cloud Discovery can preempt IP Discovery

Procedure
1. Navigate to All > System Properties > All Properties.
2. In the System Properties [sys_properties] table, select the
discovery.event.separate.cloud.events property.
3. Set the Value field to false.
4. Select Update.
Configure the job priority of background workers for Event Framework
Configure the job priority of background workers to help prevent noncritical tasks from
preempting important work, which promotes system efficiency and stability.

Before you begin

Confirm the following:
• Discovery Admin Workspace is using version 1.9.0 or later.
®

• ServiceNow AI Platform is using version XP9, YP4, or later than YP4.
• The discovery.use.event.processing system property is turned on. For more
information, see Configure Discovery to use Event Framework.
• The com.glide.queue.discovery.sensors.processing_jobs.priority and

com.glide.queue.discovery.cloud.sensors.processing_jobs.priority
system properties are configured. For more information, see Add a system property

.

Role required: discovery_admin

About this task

By default, Event Framework jobs have a priority of 100. If
Discovery is preempting more important work, you can use the

com.glide.queue.<queue_name>.processing_jobs.priority property to adjust
the priority.

Procedure
1. Navigate to All > System Properties > All Properties.
2. Choose one or more job types for which you want to adjust the priority.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1139


<!-- page 1140 -->
Job type

Action

Select

com.glide.queue.discovery.sensors.processin

IP-based

from the System Properties [sys_properties]
table.
Select

com.glide.queue.discovery.cloud.sensors.pro

Cloud-based

from the System Properties [sys_properties]
table.

3. In the Value field, enter 110.

Note: Increasing the number in the Value field lowers the job's priority, while decreasing
the number raises it.
4. Select Update.
Configure event processors to execute on specific nodes
Configure the discovery.event.pin.jobs system property to enable event processors to
execute on specific nodes and distribute the work evenly. The scale factor calculates the number
of nodes but doesn't pin jobs to specific nodes.

Before you begin

Confirm the following:
• Discovery Admin Workspace is using version 1.9.0 or later.
®

• ServiceNow AI Platform is using version XP9, YP4, or later than YP4.
• The discovery.use.event.processing system property is turned on. For more
information, see Configure Discovery to use Event Framework.
Role required: discovery_admin

About this task
The discovery.event.pin.jobs system property determines how jobs are assigned to
nodes. When that property is set to true, jobs are evenly distributed across specific nodes, but
scheduling flexibility is limited. When the property is set to false, jobs are randomly assigned,
which can increase Discovery throughput.

Procedure
1. Navigate to All > System Properties > All Properties.
2. In the System Properties [sys_properties] table, select the discovery.event.pin.jobs
property.
3. Set the Value field to true.
4. Select Update.
Post-clone Discovery configuration
When a clone occurs, Discovery schedules are copied from the source instance to the target
instance. Additional configuration is necessary for these schedules to function correctly on the
target instance, helping you properly configure Cloud-based and IP-based Discovery schedules
and maintain optimal performance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1140


<!-- page 1141 -->
Note:
For general information about instance cloning, see the Clone FAQS-Frequently Asked
Questions [KB0715621]
article in the Now Support Knowledge Base.
For instructions on how to deactivate or cancel a Discovery schedule after creating a clone,
see the A Post-Clone script to Deactivate and Cancel Discovery Schedules [KB0789119]
article in the Now Support Knowledge Base.

Post-clone target configuration for IP-based Discovery schedules
After completing the Request a clone
process, post-clone configuration is determined by the
MID Server selection method you chose in the Discovery schedule on the source instance.
Target instance configuration for IP-based Discovery schedules
MID Server selection method

Next steps

Specific MID

Update the MID Server record for each
Discovery schedule.

Cluster

Create the cluster, attach the MID Server to
the cluster, and then update the cluster name
in the Discovery schedule.
Alternatively, remove the MID cluster
[ecc_agent_cluster] record from the Clone
Exclude Tables [clone_data_exclude]. For more
information, see Exclude a table from cloning
(legacy) .

Use Behavior

Create the behaviors, create a functionality
or attach an existing functionality, then go
back to the Discovery schedule and attach the
behavior to the Discovery schedule.

Note: Discovery functionalities aren’t
cloned with an instance.
Auto-select

Verify all MID Servers on the target instance
are set up with target IP ranges, supported
applications, and capabilities.

Post-clone target configuration for Cloud Discovery schedules
After completing the Request a clone
process, you must access the Cloud Service Account
[cmdb_ci_cloud_service_account] table and update the service accounts with the proper
reference to the Discovery credentials. You must also update the MID Servers for the Discovery
schedule. Additional post-clone configuration is determined by the MID Server selection method
that you chose in the original Discovery schedule.
Target instance configuration for Cloud Discovery schedules
MID Server selection method

Next steps

Specific MID

Update the MID Server record for each
Discovery schedule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1141


<!-- page 1142 -->
Target instance configuration for Cloud Discovery schedules (continued)
MID Server selection method

Next steps

Cluster

Create the cluster, attach the MID Server to
the cluster, and then update the cluster name
in the Discovery schedule.
Alternatively, remove the MID cluster
[ecc_agent_cluster] record from the Clone
Exclude Tables [clone_data_exclude]. For more
information, see Exclude a table from cloning
(legacy) .

Use Behavior

Create the behaviors, create a functionality
or attach an existing functionality, then go
back to the Discovery schedule and attach the
behavior on the target instance.

Note: Discovery functionalities aren’t
cloned with an instance.
Auto-select

Verify that all MID Servers are set up with
target IP ranges, supported applications, and
capabilities.

For more information, see the Cloud discovery schedules fail after the instance clone
[KB1759363]
article in the Now Support Knowledge Base.

Clone Exclusions
Credential aliases are cloned but their credentials aren’t cloned. If Discovery schedules have
credential aliases, you must go to the Connection & Credential Aliases [sys_alias] table and
confirm the alias points to the correct credentials. After cloning, update the Discovery schedules
and add credentials within the target instance.
Additionally, no MID Server related tables are cloned. For more details, see the MID Servers and
Clones [KBKB0786475]
article in the Now Support Knowledge Base.
Related topics
Managing Instance Clone
Sensitive data filters
The Discovery Sensitive Data Filters [discovery_sensitive_data_filter] table provides a way to help
prevent sensitive information from being exposed in the Configuration Management Database
(CMDB) by applying redaction rules during data collection.
Discovery collects configuration and operational data from servers and applications to populate
the CMDB. Some of this data may include sensitive information such as passwords, tokens, or
credentials. Storing these values in CMDB can create security and compliance risks. Sensitive
data filters enable administrators to define regex filters that identify sensitive information in
probe results. When Discovery runs, the probe collects data and processes it on the MID Server.
Before the ECC Queue input payload is sent to the instance, the Post Processor script applies
transformations and checks for regex filters defined in the Discovery Sensitive Data Filters
[discovery_sensitive_data_filter] table. If a match is found, the script redacts the sensitive value
in the payload so that only redacted data is transmitted to the instance and stored in CMDB.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1142


<!-- page 1143 -->
For example, if the regex is (?i)(?:pwd|password|passwd|secret)=(\S+) and the
original content is:
user=admin password=MySecret123 host=localhost
After redaction, it becomes:
user=admin password=REDACTED host=localhost

Requirements
Discovery must be using version XP11, YP10, ZP4 or later.
Visibility Content must be using version 6.29.0.

Benefits
Benefits of implementing sensitive data filters include:
• Protect confidential information: Prevent credentials or other sensitive values from appearing
in logs or output.
• Compliance: Support organizational security and privacy standards by meeting requirements.
• Flexibility: Customize filters to your environment and data sources.

Examples
Examples of data you can protect with sensitive data filters include:
• Tracked configuration files: A MySQL configuration file may contain a password. A regex filter
can detect the password and redact it.
• Process parameters: Linux server process arguments may include sensitive tokens. Filters can
identify and redact these values.

Using Discovery
Run Discovery schedules and execute Discovery probes, sensors and patterns to find your IT
resources and add them to the CMDB.
• Running discoveries in your network
• Discovery probes and sensors
• Patterns and horizontal discovery
• Discovery resource utilization
• Discovery monitoring and issue resolution
Running discoveries in your network
You can run discoveries from schedules or scripts to create configuration items, define subnets,
or to find resources in AWS and Azure clouds.

MID Server configuration prerequisites
Ensure that your MID Servers are properly configured prior to creating a Discovery schedule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1143


<!-- page 1144 -->
• Supported applications: Select the applications that are allowed to use the MID Server. You
can use the ALL application option to allow any application to use the MID Server.
• IP ranges: Define the ranges of IP address the MID Server can scan. To find a MID Server
match, the IP range you configure on the Discovery schedule must fall into the ranges that one
or more MID Servers can support.

Note: To improve security, limit the range to IP address you control and exclude
unnecessary ranges.
• Capabilities: Create the capabilities that the MID Server supports. You can use the ALL
capability option to allow any application to use the MID Server.

Discovery configuration prerequisites
Ensure that your MID Servers can authenticate on the devices they find and classify
configuration items (CI) properly.
• Credentials: Configure the MID Servers with the login credentials they need to query the
devices in the network. The MID Server tries all available credentials on each discovered
device, then creates an affinity for any successful credentials. For more information, see
Credential affinity for Discovery and Orchestration .
• Classifications: The device and process classifications provided in the base platform
are normally sufficient. Create classifications as needed for the devices, processes, and
applications in the network not covered by the default classifiers.

Get started running a discovery
1. Use the Discovery Configuration Console to get started with Discovery. The console provides
configuration options which let you choose the types of devices, applications, software files,
and software CIs you want Discovery to find. If you select a CI to exclude from scanning, the
instance disables the related probe or classifier that Discovery uses to identify the CI. See
Discovery Configuration Console to get started.
2. Determine what type of discovery to run:
◦ Run a Configuration item (CI) discovery to find the devices, computers, and applications
on your network. This is the most common type of discovery. Run CI discovery from the
Discovery Schedule, where you to set up a recurring schedule or run a discovery on
demand. The Discovery Schedule also provides configuration options for MID Servers and
the Shazzam port probe.
◦ Run a Network Discovery to find the internal IP networks within your organization. If you
already know the IP address ranges in your network, it is not necessary to run Network
Discovery. It is intended for organizations that do not have complete knowledge of the IP
addresses available for Discovery in their networks.
◦ Run a Serverless Discovery to find applications on host machines without the need to
discover the host first. Serverless Discovery relies on infrastructure patterns to explore CIs
on a host. This kind of discovery skips the scanning and classification phases of discovery.
You need an advanced knowledge of patterns to use this type of discovery. Refer to Patterns
and horizontal discovery to get started with patterns.
3. After you run a discovery, monitor the results of the discovery and resolve errors if they
occurred:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1144


<!-- page 1145 -->
◦ Use the Discovery status to see a summary of a Discovery and to access the ECC queue,
which shows probe and sensor activity, as well as the actual XML payload that is sent to or
from an instance.
◦ Use the Discovery Admin Workspace to monitor ongoing Discovery operations.
◦ Use the Discovery Home page to access details for all schedules, cloud resources (virtual
machines), discovered devices, and related errors that might have occurred. Error details
include possible remediation steps.
Related topics
Discovery resource utilization
Discovery Configuration Console
Use the Discovery Configuration Console to manage what kind of CIs and CI information you
want to discover.
By default, Discovery finds all the information on your network that is specified in probes and
patterns. Use the controls in this console to select the data Discovery adds to the CMDB that
your organization needs. You can control these aspects of Discovery:
• The discovery of entire CI types, such as Windows servers.
• The discovery of specific CI details, such as OS information on Windows servers.
• The discovery of ARP data for Networks, UNIX, and Windows devices.
• The discovery of software packages containing keyword terms that you add, such as Hotfix or
Security Update.
• File-based Discovery of software on UNIX and Windows by particular extension or folder, such
as .cert or .ext.

Note: Discovery returns all data from the target to the instance before applying console
settings. The instance ignores any excluded data when it updates the CMDB.

Requirements and accessibility
If you use Internet Explorer, you must use version 8 or later. The configuration console supports
keyboard navigation and screen readers.

Console overview
To open the configuration console, navigate to Discovery Definition > Configuration Console.
The console is divided into these sections. Use the toggle buttons to enable various options
(right to enable, left to disable).
• Devices: network devices such as printers, storage devices such as storage switches, and
Unix and Windows computers
• Applications: automation applications such as Puppet, databases such as MSSQL, and web
servers such as Tomcat
• Software Filter: UNIX and Windows applications that include or exclude keywords that you
enter
• File-based Discovery: software files by path, folder, and extensions to scan or ignore

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1145


<!-- page 1146 -->
Device Discovery
Disabling the discovery of device data at the top level disables the related port probes and
pattern libraries. For example, blocking Network Devices disables the SNMP port probe. Blocking
devices at the second level of the hierarchy has the following effects:
• Device class categories disable classifiers.
• Device info categories disable probes and pattern libraries.

You can enable or disable discover ARP data. This option is disabled by default. After upgrading,
ARP data is not be discovered unless you enable it in the Discovery Configuration Console. ARP
data can be controlled in three device classes: Network, UNIX, and Windows.
Potential impacts include the following:
• Without ARP data, the network path might not be explored if you are using Service Mapping
with L2 or L3 Discovery.
• After upgrading and rerunning Discovery, ARP data does not populate for existing customers.
Old data is auto-flushed per the deletion strategy of the out-of-the box (OOB) behavior. This is
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1146


<!-- page 1147 -->
a one-time activity unless you change the OOB configuration. Therefore, you need to run your
Discovery schedule based on the device volume.
• If you have disabled the Network Device Exploration for network devices, you should also keep
ARP disabled to retain the old behavior before upgrading.

Application Discovery
Disabling the discovery of application data affects all host devices on which the application runs.
For example, if you configure Discovery to ignore databases, no information is gathered for either
Linux or Windows databases. Conversely, if you configure the system to ignore a device type,
such as a Windows server, no databases running on that server are explored, even if they are
configured to be discovered. The instance cannot identify the applications running on a server
until it first discovers that server.
When you exclude an item from the Applications section, the system disables the relevant
process classifier. The probes that belong to this classifier, including the Horizontal Pattern probe
that launches patterns, never launch.

Software Discovery
You can filter the discovery of software packages based on the keywords they contain for
Windows and UNIX computers. A keyword can be any term that is present in a software package
name. Keywords for filtering software are stored in the Software Filter Keys [discovery_spkg_keys]
table. The system does not provide default filtering keywords for UNIX software.

Important: Keyword software filtering occurs after the probe returns its payload to the
instance and not on the target host.
The following default keywords are provided for Windows and are filtered out by default:
• Hotfix
• Language Pack
• Security Update

File-based Discovery
You can configure Discovery to either scan or ignore paths, folders, and extensions for Filebased Discovery. Discovery then scans a Windows or UNIX file system with these settings to
identify file fingerprints. Installed software products detected with these attributes are matched
to products in a comprehensive software normalization library.

Effects on Discovery tables
This table shows you what is disabled in Discovery tables when you use the Discovery
Configuration Console.

When you disable

Top-level device categories, such as:
• Network Devices
• Windows Servers & Computers
• Unix Servers & Computers

Field disabled

The CIs field is disabled on the Port probes
[discovery_port_probe] table.
The Port probes [discovery_port_probe] table
is referred to from the Protocol Category
[discovery_category_protocol] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1147


<!-- page 1148 -->
When you disable

Device classes, such as:
• Windows 2008 Servers
• Linux Servers

Device info, such as:
• Network Device Exploration
• Windows Storage
• ARP Data

Field disabled

The Active field is disabled on the Classifiers
[discovery_classy] table for the related classifier.
The Classifiers [discovery_classy] table is referred
to from the Device Classification Category
[discovery_category_device_class] table.
The Active field is disabled on both the Classifier
Probes [discovery_classifier_probe] and the Discovery
Patterns [sa_pattern] tables for the related probe or
pattern that performs the identification and exploration
of the CI.
These tables are referred to from the Device Info
Category [discovery_category_device_info] table.

Applications

The Active field is disabled on the Process Classifiers
[discovery_classy_proc] table for the related process
classifier.
The Process Classifiers [discovery_classy_proc]
table is referred to from the Application Category
[discovery_category_appl] table.

Note: If you use patterns for discovery, and you disable the discovery of device classes
or device information, the system disables the pattern libraries that collect the device
information. For example, if you have a Windows pattern in which you create a shared
library that collects OS information, and then you disable the collection of OS data, the
shared library that collects OS data is disabled. For more information about the shared
library operation, see KB1698521: Create or customize patterns .
Exclude CIs from discovery
Use the Discovery Configuration Console to determine which devices and applications to
exclude from discovery.

Before you begin

Role required: discovery_admin or admin

Procedure
1. Navigate to All > Discovery > Discovery Definition > Configuration Console.
2. If you want to exclude specific devices and device information, expand the category for the
device types.
3. To see what applications can be disabled, hover your cursor over the application type.
4. Click the toggle button to turn off the CIs you do not want to discover.
The instance creates an update set record for any change you make to the console.
Customize Applications and Devices to Discover
You can toggle on and off Applications and Devices using the Discovery Configuration Console.
Some are listed out-of-the-box, but you may also customize which specific Applications and
Devices you want to Discover according to your specific requirements.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1148


<!-- page 1149 -->
Before you begin

Role required: admin

Procedure
1. Customize Applications.
a. Navigate to Discovery Definition > Application Categories.
b. Click Automation, Databases, or Web & Application Servers.
c. Unlock the Process classifier list.
d. To delete from the list, select and application then click the X to remove.
e. To add to the list, type in the box and click Enter.
f. Click the lock icon.
g. Click Update.
The next time Discovery runs, it will process those types of specific applications that you
configured.
2. Customize Devices.
a. Navigate to Discovery Definition > Device Info Categories.
b. To create a new record, click New.
c. Enter the details and click Submit.
d. To update an existing device, click on a device listed.
e. Make any changes and click Update or Delete.
Filter software to discover
Use the Discovery configuration console to filter the software you add to the CMDB.

Before you begin

Role required: discovery_admin or admin

About this task

The instance creates an update set record for any change you make to the console.

Procedure
1. Navigate to All > Discovery > Discovery Definition > Configuration Console.
2. In the Software Filter panel, select the tab for the operating system you want, either Unix or
Windows.
3. Add or delete keywords for filtering software packages.
a. To add a keyword, enter it in the field provided and click New Key.
b. To delete a keyword, click the red x icon to the right of the keyword.
Discovery looks for software packages containing these terms in the selected operating
system and either includes or excludes them from the CMDB. The system does not provide
default keywords for filtering UNIX software packages, but provides these default keywords for
Windows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1149


<!-- page 1150 -->
◦ Hotfix
◦ Language Pack
◦ Security Update
These default keywords exclude patch-related software by default. To enable Security OS
Patch Discovery, remove Hotfix and Security Update from the exclusion list. This
allows Discovery to include patch and hotfix data in the CMDB.
4. Select whether to Include or Exclude software packages with the keywords in their names.
◦ Include: Only add software packages that match the keywords.
◦ Exclude: Add all software packages except those matching the keywords.
5. Disable software filtering for either UNIX or Windows.
When the filter is disabled for an operating system, all discovered software packages for that
operating system are added to the CMDB, with no filtering applied.
The instance creates an update set record for any change you make to the console.
Configure File-based Discovery
Use the Discovery configuration console to configure several settings to find and manage all of
your installed software.

Before you begin

Role required: admin or admin

Procedure
1. Navigate to All > Discovery > Discovery Definition > Configuration Console.
2. Enable File-based Discovery.
This is disabled by default.
3. Select customizable options specifically for Windows and UNIX machines as well as options
common to both types.
Some options have default values and others, such as folders to ignore or extensions, are
blank until you add in values.
4. For Windows and/or UNIX, click the arrow to expand the target path options.
5. Configure basic selections.
Folders to Scan
Indicates which folders to scan for Windows and/or UNIX. Default values are
listed. You can also add additional paths to scan.

Folders to Ignore

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1150


<!-- page 1151 -->
Indicates which folders and child folders/files to ignore from within the list of
Window or UNIX folders that you want to scan. For example, if you have specified
“C:\Program Files” as a folder to scan, you could additionally specify “C:\Program
Files\Temp” as an ignore folder. When File-based Discovery scans a Windows
server, it will scan all files and sub folders under C:\Program Files, excluding C:
\Program Files\Temp.

Extensions Exclusion List
Indicate extensions (.txt, .war, .exe, etc.) that you want to ignore for Windows.

Extensions Wildcards
Indicate extensions (.cert, .crt, etc.) that you always want to scan for Windows.
This allows you to scan for extensions such as *.cert where the file name itself
might not be known ahead of time. You should be able to find certificates (.cert
or .crt) and java keystore files (.jks) in this way.

6. Configure Advanced Windows settings.

Sleep Time
Sets the length of time in milliseconds to sleep during each throttling interval
while scanning for Windows files. The default value is 10000. Do not change this

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1151


<!-- page 1152 -->
value unless you are an advanced user. If you are an advanced user and need to
make a change, make sure to set to a non-zero value.
File Throttle
Sets the number of files to scan on Windows before sleeping. The default value
is 500. Do not change this value unless you are an advanced user. If you are an
advanced user and need to make a change, make sure to set to a non-zero value.
Skip Hidden Folders
Skips hidden folders on target computers when scanning for file signatures. For
Windows devices, the visibility of a folder is based on a hidden attribute that can
be set for each folder.
Scan Running Process Paths
Enables the use of running process paths in the list of targeted paths to scan. This
automatically adds paths that we know contain running processes and therefore
most likely contain files of interest for use in determining software installations.
Scan SWID Tags
Scans for and analyzes the software identification (SWID) tags. This option is only
visible if SAMP is enabled. When Scan SWID Tags is enabled, this returns the
software product, publisher, and version in the payload to be directly inserted
into software installs table, by-passing the software match API. This is disabled by
default.
7. Configure Advanced UNIX settings.

Skip Hidden Folders
Skips hidden folders when scanning for file signatures. For Unix-based devices
these are folders prefixed by a “.” in their name.
Scan Running Process Paths
Enables the use of running process paths in the list of targeted paths to scan. This
automatically adds paths that we know contain running processes and therefore
most likely contain files of interest for use in determining software installations.
Scan SWID Tags
Scans for and analyzes the software identification (SWID) tags. This option is only
visible if SAMP is enabled. When Scan SWID Tags is enabled, this returns the
software product, publisher, and version in the payload to be directly inserted
into software installs table, by-passing the software match API. This is disabled by
default.
8. Configure Common settings for either Windows or UNIX.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1152


<!-- page 1153 -->
Maximum Files
Sets the maximum number of files that you want to discover. This is the number of
files scanned per CI/IP.
Frequency
Sets the frequency that File-based Discovery runs on the CI.

Result

File-based Discovery is now enabled, configured, and ready for you to run. See Run File-based
Discovery for more information.
Create Basic Auth credentials
®

Create credentials to access a ServiceNow instance.

Before you begin

Role required: system_admin

Procedure
1. Navigate to All > Connections & Credentials > Credentials.
2. Select New.
3. Select Basic Auth Credential.
4. On the form, fill in the fields.
Basic Auth Credentials form
Field

Description

Name

Enter a unique and descriptive name for this credential.

User name

Name to identify the user.

Password

Password to use this credential.

Active

Option to enable the use of this credential.

Order

The order (sequence) in which the platform tries this
credential while it attempts to log in to devices. The smaller
the number, the higher in the list this credential appears.
Establish credential order when using large numbers of
credentials or when security locks out users after three
failed login attempts. If all the credentials have the same
order number (or none), the instance tries the credentials
in a random order. Default value: 100

5. Select Submit.

Result

The Basic Auth credentials for use with the server instance are created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1153


<!-- page 1154 -->
Schedule a horizontal discovery
A discovery schedule determines what horizontal discovery searches for, when it runs, and
which MID Servers are used. Create a discovery schedule for your local environment or a
schedule for discovering the resources in your cloud service account.

Before you begin

Ensure that your discovery schedule conforms to security best practices, such as limiting the
range of discovery targets and using the most secure credentials.
Make sure to test your credentials
cause of failed discoveries.

before you run a schedule. Bad credentials are a leading

Roles required: discovery_admin or admin

About this task

You can use a discovery schedule to launch horizontal discovery, which uses probes, sensors,
and pattern operations to scan your network for CIs. Use this procedure to create a schedule
manually from the Discovery Schedules form.
Service Mapping also provides a discovery schedule for top-down discovery. See Schedule a
top-down discovery by Service Mapping for more information.
Use the Discovery Schedules module in the Discovery application to:
• Configure a schedule to discover resources in your cloud service account.
• Configure a schedule to discover certificates from URL scans.
• Configure device identification by IP address or other identifiers.
• Determine if credentials are used in device probes.
• Name the MID Server to use for a particular type of discovery.
• Create or disable a schedule that controls when the discovery runs in your network.
• Configure the use of multiple Shazzam probes for load balancing.
• Configure the use of multiple MID Servers for load balancing.
• Run a discovery schedule manually.
• Run a discovery on a single IP address.

Note: To view the run-results of your schedules for both IP-based and Cloud Discovery,
use the summaries on the Discovery Home page. The Home page publishes the details
of any errors that might have occurred and displays possible actions to take to remediate
problems.

Procedure
1. Navigate to All > Discovery > Discovery Schedules to create a new record.
2. Select the type of schedule to open:
◦ New: Creates a new horizontal schedule for discovering components in your network.
◦ Quick Discovery: Runs a horizontal discovery on a single IP address without requiring a
schedule.
◦ Create a Cloud Discovery schedule: Creates a schedule, using the Discovery Manager
wizard, for discovering resources in a cloud service account.
3. Complete the discovery schedule form, using the fields in the table.
For more information, see Discovery Schedule form reference.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1154


<!-- page 1155 -->
4. Right-click in the header of the record and select Save from the context menu.
5. To create a range of IP addresses to discover, click Quick Ranges under Related Links.

Note: To improve security, limit the range of discovery targets to exclude unnecessary
networks and devices.
6. Define the frequency of schedule running as described in Run options for discovery
schedules.
Run a Quick Discovery
Quick Discovery, or DiscoverNow, allows an administrator to run a CI Configuration discovery on
a single IP address without requiring a schedule.

Before you begin

Role required: discovery_admin

About this task

The platform automatically selects the correct MID Server to use for the discovery if one is
associated with the IP address selected. If no MID Server is configured for the network in which
that address appears, you can select a MID Server. Use this feature to discover new devices in
the network as soon as they are connected to the network, rather than waiting for a regularly
scheduled discovery.
To configure the system to automatically determine which MID Server to use, set up the IP range
capabilities for each MID Server in your system.
You can run DiscoverNow from a Discovery schedule form or from a script.

Note: Quick Discovery using a IPv6 target address is supported.
Procedure
1. Open Quick Discovery from one of these locations:
◦ Navigate to Discovery > Discovery Schedules and click Quick Discovery in the header bar.
◦ Navigate to Discovery > Home and click Discovery Quick Start under the Schedules tile.
A dialog box appears asking for an IP address and the name of the MID Server to use. Only Up
and Validated MID Servers are available.
2. Enter the target IP address for a discovery in the Target IP field.

Note: DiscoverNow does not currently support IP network discovery. Make sure that you
enter a single IP address only and not an entire network, such as 10.105.37.0/24.
When a MID Server is assigned to the subnet containing the target IP address and currently in
an operational status of Up, the name appears automatically in the MID Server field. If multiple
MID servers are found, the system selects one for you. The value in the MID Server field can
be overwritten if you want to select a different MID Server.

Important: If the selected MID Server is part of a load balanced cluster and becomes
unavailable for any reason, the instance does not assign another MID Server from
that cluster to the quick Discovery. You must select another MID Server from the list of
appropriate MID Servers.
3. If no MID Server is defined for that network, select one from the list of available MID Servers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1155


<!-- page 1156 -->
Quick Discovery Dialog

4. Click OK to run discovery.
The status record for that discovery appears. The Schedule column is empty because no
schedule is associated with this discovery.
Quick Discovery Status List

Run DiscoverNow from a script
You can run DiscoverNow from a script, such as a background job, a business rule, or web
services.

Before you begin

Role required: admin

Procedure
1. Create the following script:
var d = new Discovery();
var statusID = d.discoveryFromIP(TARGET_IP, TARGET_MIDSERVER);
The discoveryFromIP method takes two arguments: IP and MID Server. The IP
argument is mandatory, but the MID Server argument is optional.
2. To choose the MID Server, supply either the sys_id or name of the MID Server as the
argument.
If you do not name a MID Server, the system attempts to find a valid one automatically. A valid
MID Server has a status of Up and can discover the given IP address. If the system finds a valid
MID Server and runs a Discovery, the discoveryFromIP method returns the sys_id of
the Discovery status record. If no MID Server can discover this IP address, the method returns
the value undefined.
If you manually specify the TARGET_MIDSERVER, the system validates the given value and
ensures that the MID Server table contains the specified MID Server record. If the validation
passes, the discoveryFromIP method returns the sys_id of the discovery status record. If the
validation fails, the method return the value undefined.
Validate discovery results
Validate the results of your discovery by accessing the ECC queue, analyzing the XML payload,
and checking the Discovery log.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1156


<!-- page 1157 -->
Before you begin

Role required: discovery_admin

About this task

Initial discoveries often reveal unexpected results, such as previously unknown devices and
processes or failed authentication. Results should also accurately identify known devices and
update the CMDB appropriately. Become familiar with the network that is being discovered
and the types of data returned for the different types of discoveries. Use the Discovery Log and
the ECC Queue to monitor the Discovery process as data is returned from probes or pattern
operations.

Procedure
1. To view the actual payload of a probe, click the XML icon in a record in the ECC Queue.
ECC Queue

2. To view the actual payload of a probe, click the XML icon in a record in the ECC Queue.
3. Use the Discovery Log form for a quick look at how the probes are doing.
To display the Discovery Log, navigate to Discovery > Discovery Log.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1157


<!-- page 1158 -->
Discovery Log

The Discovery Log provides this information:

Column

Information

Created

Displays the timestamp for the probe launched. Click this link to view the record
for the probe launched in this list.

Level

Displays the type of data returned by this probe. The possible levels are:
◦ Debug
◦ Error
◦ Information
◦ Warning

Message Message describing the action taken on the information returned by the probe.
ECC
queue
input

Displays the ECC queue name associated with the log message.

CI

The CI discovered. Click this link to display the record from the CMDB for this CI.

Source

Displays the probe name that generated the log message.

Device

Displays the IP address explored by the probe. Click this link to examine all the log
entries for the action taken on this IP address by this Discovery.

Note: If you cancel an active discovery, note the following information:
◦ Existing sensor jobs that have started processing are immediately terminated.
◦ The existing sensor jobs that are in a Ready state, but have not started processing, are
deleted from the system.
4. View the Discovery Home page for details about all schedules, cloud resources (virtual
machines), discovered devices, and related errors that might have occurred.
Error details include possible remediation steps.
MID Server selection sequence for Discovery schedules
The Discovery application follows this sequence to find a MID Server.

MID Server auto-selection
Discovery follows this sequence when you select Auto-Select MID Server for the MID Server
selection method on the Discovery Schedule form.

Note: MID Server auto-select is not supported with IPv6.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1158


<!-- page 1159 -->
1. Discovery looks for a MID Server that also has an appropriate IP range configured.
2. If no MID Servers meet these criteria, it looks for a MID Server that has the ALL application that
also has an appropriate IP range configured.
3. If more than one MID Server meet the criteria, Discovery chooses the first MID Server with the
status of Up. If more than one MID Server is up, it randomly picks one.
4. If none are up, it uses the default MID Server specified for the Discovery application, assuming
it is up.
5. If no default MID Server is specified, it uses the default MID Server specified for the ALL
application, assuming it is up.
6. If no default MID Server is specified, Discovery cycles through the previous steps and looks for
MID Servers with the status of Paused or Upgrading.

Note: When a MID Server is paused or upgrading, it does not actually process
commands until it returns to the status of Up.

MID Server clusters
These steps are followed when you select Specific MID Cluster for the MID Server selection
method on the Discovery form, and the cluster is a load balancing cluster:
1. Discovery uses the first MID Server in the cluster that it finds with the status of Up.
2. If more than one MID Server is up, it randomly picks one. If it cannot find any MID Servers, it
looks for MID Servers in the cluster with the status of Paused or Upgrading.
These steps are followed when the cluster is a failover cluster:
1. Discovery uses the MID Server with the lowest Order value that also has the status of Up.
2. If no MID Servers are found, it looks for MID Servers in the cluster with the status of Paused or
Upgrading, choosing the one with the lowest Order value.

Note: Discovery ignores the default MID Server for it and ALL applications when
selecting a MID Server from the cluster.

Port scan (Shazzam) phase
During the port scan phase, Discovery collects all the target IP addresses. It splits them equally
between MID Servers matching the criteria (MID Servers are qualified to do the port scan). The
Shazzam batch size, which you configured on the Discovery schedule, determines the number
of IP addresses that each Shazzam probe can scan. This phase helps determine how much work
each MID Server does during the port scan phase.
For example, you have 16,000 IP addresses to scan among three qualified MID Servers, and you
use the default Shazzam batch size of 5000. Two of the MID Servers handle 5000 IP address
scans (one Shazzam probe each). The other MID Server handles 6000 IP address scans by
launching two Shazzam probes.

Note:
Shazzam can process IP lists containing up to of 5000 addresses that include both IPv4
and IPv6 types. If your schedule contains an IP list with more than 5000 IPv6 IP addresses,
the Discovery gets cancelled. If you are using only IPv6 addresses, you must use a list and
not an IP address range. IPv6 address ranges and networks are not supported and will be
ignored.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1159


<!-- page 1160 -->
Related topics
MID Server pause
MID Server cluster configuration
Create an IP-based Discovery schedule in Discovery Admin Workspace
Use the Discovery Admin Workspace dashboard to create IP-based Discovery schedules.

Before you begin

Store version: 1.8.0.
Role required: discovery_admin

Procedure
1. Navigate to Workspaces > Discovery Admin Workspace > Schedules.
2. Select New Discovery from the header of any tab on the Schedules page.
3. Select IP-based discovery and select Continue.

Note: This schedule is only for IP-based Discovery. For Cloud Discovery, see Create a
discovery schedule in Cloud Discovery Workspace.
4. Enter a name for the Discovery schedule.
5. Choose from available Discovery locations.
6. Choose IP ranges by either selecting from existing sets or by manually entering the ranges.
◦ To select from existing IP range sets, select Use existing IP range set (recommended). See
Discovery IP address configuration for more information on IP range sets.
◦ To manually enter comma-separated IPv4 address ranges, IPv4 networks, or individual
IPs that describe the ranges you want to add, select Enter new IP ranges and enter the IP
ranges.
7. Select next.
8. Choose your MID Server.
Option

Description

Cluster of MID servers

Select an existing MID Server or create one.
Clusters provide failover protection and load
balancing between MID Servers. See Config­
for more informa­
tion.

Auto-select MID server

An available MID Server is automatically se­
lected when the Discovery schedule runs.
See Automatic MID Server selection for more
information.

MID server

Choose a MID Server to run the Discovery
schedule. All MID Server are shown, but only
ones that are up and validated can success­
fully run a Discovery schedule.

9. Select next.
10. Configure the Discovery schedule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1160


<!-- page 1161 -->
Option

Description

Run on demand

The schedule only runs when triggered man­
ually. Trigger the schedule by selecting Fin­
ish and run at the end of this setup, or by navi­
gating to the schedule in the Schedules table
and selecting Discover Now.

Run at a scheduled time

The schedule runs at a scheduled date and
time. Use the fields to define when the sched­
ule runs.

Run after series

The schedule runs after another existing Dis­
covery schedule completes, staggering or
chaining them together. Selecting an existing
schedule displays a relationship map of all
the other associated schedules.

Cancel discovery if longer than maximum
runtime

If the schedule exceeds the maximum run­
time, it's canceled. After toggled, configure
the runtime threshold.

Finish and run

After being selected, all the information pro­
vided is validated. Then, a Discovery sched­
ule is created in the background, a Discov­
ery status is created, and the schedule is run.
You're redirected to the Status Details page
for the schedule.

Finish

After being selected, all the information pro­
vided is validated. A Discovery schedule is
created and you're redirected to its entry in
the Discovery Schedules [discovery_sched­
ule] table. You can edit the schedule informa­
tion or run it by selecting Discover Now.

File-based Discovery
File-based Discovery helps you identify what software is running on your Windows and UNIX
servers and devices, even if there is no registration information available. You can then manage
and maintain records of your software licenses, check for unlicensed files, detect forbidden or
damaged files, and help evaluate any threats from unwanted files.

Required plugins
The File-based Discovery [com.snc.discovery.file_based_discovery] plugin is required for file
signature filtering. Your Discovery subscription includes this plugin, but you must request
activation . Once the File-based Discovery plugin is active, the Software Asset Management File Signature Normalization [com.snc.file_signature_normalization] plugin is also activated. For
more information on the File Signature Normalization plugin, see File Signature Normalization .

How File-based Discovery works
File-based Discovery enhances the pre-existing discovery of installed software. It scans target
servers for a known list of file signatures and processes those files with an established set
of rules. The resulting data enhances the identification of installed software and identifies
unregistered software products. For information about using Agent Client Collector for Visibility
- Content to perform file-based discovery, see Discover java installation data using Agent Client
Collector for Visibility - Content file-based discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1161


<!-- page 1162 -->
File-based Discovery is triggered in the exploration phase of normal Discovery. File-based
Discovery probes execute a scan searching for specific file extensions or file names in paths
that you configure. The resulting file information is returned in the probe payload. The sensor
attempts to match the discovered files with installed software, using the file name, size, and
version returned by the probe. File-based Discovery uses file signatures to detect software
that might not have been registered. This information is then stored in the File Information
[cmdb_file_information] table with a reference to the CI of the server. You can view the files
found from each CI in a related list on this table. For more information, see Related list of CI
components
When Software Asset Management
(SAM) is active, if any file matches a
software product, Discovery populates the Product and Publisher information for that file. Use
this information to understand what software is running on your server and to help evaluate
any threats from unwanted files. Discovery uses lists of known file signatures for Windows and
UNIX to constrain the scope of the search. The filtering process for Windows and UNIX hosts
is executed differently because their signature lists differ greatly in size. The much smaller
UNIX signature list is included with the Unix - File Discovery probe and processed directly on
the target. The Windows signature list is much larger and cannot be processed on the target.
The Windows - File Discovery probe scans the target for specific file extensions and paths and
returns these results to the MID Server. The MID Server performs file signature filtering using
the entire Windows list. The MID Server then sends all file information back to the instance for
normalization and matching.
If SAMP is active on the instance, File-based Discovery creates or updates identified software
products in the Software Installation [cmdb_sam_sw_install] table and updates the licenses of
matched software packages. Without SAMP, no software records are created and only the file
information goes into the File Information [cmdb_file_information] table.
You can enable SWID tags in the Discovery Configuration Console. With SWID tag enabled, when
running File-based Discovery, the SWID tag information then populates the [cmdb_swid_tag]
table. Information about the software installed on a particular machine includes name, file
information, publisher, version, installed on, and content. The software_installation column in the
[cmdb_swid_tag] is a reference to the [cmdb_sam_sw_install] table.

Note: Base64 package is a prerequisite for any UNIX or Linux servers to scan SWID tag
files using File-based Discovery.
File-based Discovery filtering flow

File-based Discovery inserts any file not matched by the normalization process into the
Unidentified File Set [cmdb_unidentified_file_set] table. You can update the records in this
table and provide additional details for previously unidentified files. If you provide values for the
Product and Publisher fields for a file, settings in SAMP can enable File-based Discovery to use
that file for installed software matching in future discoveries.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1162


<!-- page 1163 -->
Note: You can disable File-based Discovery at any time by changing the setting in the
Discovery Configuration Console. If you disable File-based Discovery before scan results
are returned, the file data is ignored.
File-based Discovery table schema

Note:
File-based Discovery supports Windows, UNIX, and macOS devices. The UNIX probe
is POSIX-compliant and should run on any Linux/Solaris server. We support Windows
versions 2008, 2008R2, 2012R2, 2016, 2019, and above with PowerShell 3.0 to 5.1. We also
support AIX versions 5.3, 6.1, and 7.1 and HP/UX 8.11.
If you are running File-based Discovery on Ubuntu version 20, modify the default Bourne
shell (sh) to point to Bourne Again shell (bash).
Version information is populated only for the files with version information returned from
probes. Not all files will have versions. Files with extensions such as exe, jar, etc, will have
versions.

1. File-based Discovery reference information
Run File-based Discovery
Run File-based Discovery to find all of your installed software whether it is registered or not. You
can enable and configure File-based Discovery at any time using the Discovery Configuration
Console.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1163


<!-- page 1164 -->
Procedure
1. Set up the PowerShell script.
By default, the filebaseddiscovery.ps1 script has a ServiceNow signature. Its certificate chain
resolves up to the VeriSign Universal Root Certification Authority which is trusted by Windows
by default. Since PowerShell scripts are signed by ServiceNow publisher, add ServiceNow
publisher to your trusted publisher repository.

If your Execution Policy requires you to use your own certificate or if you need to make any
changes to the script, re-sign the script.
a. Navigate to the probe “Windows - File discovery.”
b. Open the filebaseddiscovey.ps1 probe parameter.
c. Copy the contents of the value field into a file.
d. Make the necessary changes to the file and then remove the (old) signature block at the end
of the file.
e. Re-sign the script: https://docs.microsoft.com/en-us/powershell/module/
microsoft.powershell.security/set-authenticodesignature?view=powershell-6

.

After re-signing, the file should have a new signature block at the end of it.
f. Copy the entire file contents and replace the old value in the filebaseddiscovery.ps1 probe
parameter from step b.
Windows File-based Discovery should now run using the updated signed script.
If you are using anti-virus software, make sure to include all of the ServiceNow Windows
PowerShell scripts so the anti-virus software does not see it as a threat.
2. Activate

the File-based Discovery plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1164


<!-- page 1165 -->
3. Enable and configure File-based Discovery.
Using the Discovery Configuration Console, you can enable File-based Discovery as well as
configure several components to find and manage all of your installed software.
To avoid impacting performance for existing customers, File-based Discovery is disabled by
default.
4. Configure File-based Discovery scans.
After Discovery runs and returns file information for a CI, it will not execute File-based
Discovery again on that target until the interval has expired. Since there is a performance cost
when File-based Discovery performs scans, it is important to determine how frequently to
scan. However, choosing a more frequent interval than Monthly is not recommended due to
performance considerations.
a. Using the Discovery Configuration Console, expand Common and then enter the maximum
number of files that you want to discover.

Note: Increasing this value can impact performance.
b. Select the Frequency that File-based Discovery runs on the CI.
The default is set to Monthly.

Note: File-based Discovery does not trigger until initial Content Data Service (CDS)
synchronization occurs. CDS synchronization could take approximately 24 hours for the
initial set of data to be synchronized from CDS. For more information see, File Signature
Normalization .

Result

Your File-based Discovery should run based on the configurations set. .

1. File-based Discovery reference information
File-based Discovery issue resolution
If you have any issues while setting up or running File-based Discovery, follow the actions listed
here to help resolve them.

Issue

Error message: File Discovery data not yet
synced...

Cause/Action

• Allow CDS time to sync the samp_file_*
tables.
• Check cds_client_schedule table and
see if timestamp has been updated for
“samp_file_*” tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1165


<!-- page 1166 -->
Issue

File-based Discovery is not triggered during
Discovery.

Cause/Action

• Feature has not been enabled. Check the
Discovery Definition Configuration Console
and ensure that File-based Discovery is
enabled.
• Interval between scans is too long. Check
the interval setting on the Discovery
Definition Configuration Console.

File-based Discovery is not triggered during
Discovery.

Check the Internal properties managed by
the Discovery [discovery_private_properties]
table for the following items. To view this table,
enter discovery_private_properties.list in the
navigation filter and press Enter.
• File_discovery.file_extensions_windows
should contain a list of Windows file
extensions to be scanned.
• File_discovery.unix_filename_timestamp
should be something other than 1970
timestamp.
• File_discovery_windows_filename.timestamp
should be something other than 1970
timestamp.

Errors in MID Server log from
FileDiscoveryFilter or MID Server issue
created.

• Look to see if the File-based discovery
inclusion list exists. The inclusion list is
in the MID Server installation folder in /
agent/work. If it does not exist, the sync
did not succeed.
• Look at the MID Server record on the
instance to see if a MID Server issue was
created.
• MID Server uses the GetMIDInfo scripted
soap service to synchronize the inclusion
list. See if errors are generated from this
script.
• Click the File discovery filter refresh
Related Link in the MID Server record to
synchronize the file names to this MID
Server.

PowerShell errors

• Include the script in your anti-virus software.
• Add ServiceNow publisher to your trusted
publisher repository.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1166


<!-- page 1167 -->
1. File-based Discovery reference information
File-based Discovery references
Review this reference material for further details on File-based Discovery.

How File-based Discovery minimizes performance impact
Scanning large networks, particularly for Windows computers, can extend scan time
considerably. Moreover, file scanning can create heavy CPU demands on target machines and
produce large payloads that greatly increase processing time. To avoid performance issues, Filebased Discovery allows you to optimize processing with many of the settings configured using
the Discovery Configuration Console.
• Multi-phase scan: Probes are triggered in multiple phases to reduce long scan times. The first
probe creates the scanning process on the target, which runs in the background. Subsequent
probes check the progress of this scan each time Discovery runs and return the results when
the scan is complete. For example, if a file scan is initiated via Quick Discovery or from a
Discovery schedule, no information is returned if a background scan is still running. If the scan
is finished the next time the server is discovered, the probe returns the data.

Important: The multi-phase scan that File-based Discovery uses does not return
results immediately. Do not expect any results from a file-based scan until Discovery runs
again on those targets and fetches the list of files discovered by the previous scan.
• Scan folders: You can limit the scope of the scan to particular folders as well as scan hidden
folders.
• Scan extensions: You can retrieve all files for a given list of extensions as well as ignore
specific file extensions when scanning.
• Scan UNIX file names: Because the number of unique file names used to identify installed
software on UNIX is relatively small, the complete list of file names is included in the UNIX
probe. This enables the probe to filter the files it discovers against the signature list on the
target. No additional filtering is required until the results are returned to the instance.
• Scan Windows file names: For Windows File-based Discovery, the probe does not initiate a
scan on target for full signature list. Instead, Discovery generates a list of file extensions that
the probe attempts to match on the target. This reduced list is then filtered on the MID Server
against the entire Windows signature list.
• Reduced payloads: By filtering the scan results with the file signature list before the results get
to the instance, Discovery reduces the size of the payload from target servers. Only those files
from the targets that match the files specified in this list are returned to the instance.
• Scan throttling: To reduce the impact on Windows CPU and I/O performance on remote
targets, Windows File-based Discovery is configured to sleep occasionally during scans. You
can fine-tune this behavior with Discovery properties. Throttling Windows scans can make
those scans take longer.

File-based Discovery tables
Descriptions of the tables provided by the File-based Discovery
[com.snc.discovery.file_based_discovery] plugin for storing data:
File Information [cmdb_file_information]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1167


<!-- page 1168 -->
This table stores all the files, matched or unmatched, that were discovered on a
particular CI. The files are available in a related list on CI computer records. The
following columns are provided in the default view:
• Path: Path in which the file was found on the target.
• Product: Software product name. This field is populated when SAMP is activated
and a match exists.
• Publisher: Name of the publisher of the file, such as Oracle or Microsoft. This is
a reference to the Company [core_company] table. This field is populated when
SAMP is activated and a match exists.
• Size: Size of the file.
• Software installation: Name of the installed software associated with this file,
from the Software Installation [cmdb_sam_sw_install] table. This field is populated
when SAMP is activated and a match exists.
• Version: Version of the file. Currently, for Windows only.
Unidentified File Set [cmdb_unidentified_file_set]
This table stores all the files returned by Discovery that cannot be matched to a
software product, with or without SAMP. Discovery populates the name, size, and
version of each unmatched file in the record. These optional fields can be used to
further identify the file and make it available for future file matching:
• Publisher
• Product
• Version
• Edition
• Platform
• Language

Note: A feature in Software Asset Management Professional (SAMP) allows signature
data in this table to be shared with Content Data Services (CDS). When you enable
data sharing, the system automatically uploads records from the Unidentified File Set
[cmdb_unidentified_file_set] table to CDS when you provide the missing information.
Uploading the identified files makes them available to improve future file matching. For
details, see Add a custom software product .

File-based Discovery troubleshooting
If you are experiencing any issues when setting up or running File-based Discovery, see Filebased Discovery issue resolution.
Related topics
File-based Discovery
Discover applications based on fingerprints
Discover applications based on suggestions based on ServiceNow Predictive Intelligence.
Predictive Intelligence automatically classifies and categorizes the discovered running
processes, as application fingerprints, and provides suggestions. ITOM Visibility uses
Predictive Intelligence to perform initial analysis of discovered processes and suggest
applications that you might want to discover. When using this method, ITOM Visibility
automatically creates a Configuration Management Database (CMDB) configuration item (CI)
class, a classifier, or a pattern for the new application CI class.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1168


<!-- page 1169 -->
Before you begin

Perform horizontal discovery on all relevant IP ranges as described in Convert IP networks
into Discovery range sets. Provide all the relevant credentials for ITOM Visibility access to the
applications and devices that you want to discover.
Role required: discovery_admin

About this task

Discovering applications using fingerprints is especially useful when you can't use patterns
available by default or from the ServiceNow Store. For example, when you want to discover nonstandard, home-grown applications or brand new applications.
The Discovery feature of ITOM Visibility uses application dependency-mapping (ADM) to detect
processes running on TCP ports and discover applications that run these processes. When you
discover applications based on fingerprints, you take it a step further. The fingerprint-based
discovery method analyzes processes that ADM hasn't used for discovery.
Fingerprint-based discovery uses algorithms to identify running processes and organizes them
into groups. These process groups become suggested applications or candidates. You review
suggested applications and choose which ones to discover. The list of suggested applications is
refreshed every hour.
Patterns created during the fingerprint discovery are used for both horizontal and top-down
discovery. For Service Mapping to run such a pattern correctly, define when to run this pattern.
You do that by defining before or after which other pattern Service Mapping should run this new
pattern.
When you discover an application based on an application suggestion, the fingerprint-based
discovery performs the following steps:
1. The fingerprint-based discovery creates a CMDB CI class for the new application. The new CI
class extends the Application [cmdb_ci_appl] CI class and by default uses the process group
name for the suggested CI class display name.
2. The fingerprint-based discovery creates a process classifier for the application group you
chose to discover. ADM uses the new process classifier to trigger the new pattern created for
the CI class. The priority of the classifier is lower to ensure that the system first uses the default
patterns available with ITOM Visibility or custom patterns.
3. The fingerprint-based discovery creates a discovery pattern of the application type for the new
CI class. Enforce Process Classification is enabled to make sure that the MID Server runs this
pattern only if the process identified on a CI matches the classification criteria for this pattern.

Note: The Service Mapping user interface refers to CI classes as CI types.
4. ADM uses the classifier to trigger the horizontal discovery of the application CI.
5. ADM triggers discovery using the new pattern.
6. After the pattern completes discovery, it writes the discovered application CI into the relevant
CMDB table.
By default, the fingerprint-based discovery is enabled.

Procedure
1. Navigate to All > Discovery > Home.
2. Click Application Fingerprints.
The Application Fingerprints dashboard opens.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1169


<!-- page 1170 -->
3. Review suggested applications in one of the following ways:
◦ On the Top Suggestions pie chart, view the top suggestions arranged by the number of
processes making up these suggestions. The process count is reflected by the size of the
chart segment. Click the segment to see its corresponding suggestions in a filtered list. To
remove a suggestion from the chart, click the suggestion name in the chart legend.
◦ To view only suggestions for application servers, click the Suggested Application Servers
tile. The filtered list of suggestions for application servers is displayed.
◦ Alternatively, click All suggestions. The unfiltered list of all suggestions is displayed.
4. Click the relevant suggestion in the Suggested Group Name, for example python.
The suggestion details open in the Application Suggestion form.
5. Review the suggestion details, paying attention to the following parameters:

Field

Suggested Group Name

Extended Group Name

Suggested CMDB CI class

Process Count

View Processes

Accuracy

Description

The name ITOM Visibility generates for the
suggestion. This field is pre-populated, but
you can modify it if necessary.
The top 10 key words that provide more
information about the process. Predictive
Intelligence extracts these key words from
the process.
The name of the CMDB CI class that the
ADM creates, if you choose to discover the
suggested application.
The number of discovered processes that
this suggestion is based on.
Click to view sample processes that this
suggestion is based on. The overall number
of processes may be larger and starts
from one thousand. The number of sample
processes you can view by default is one
hundred.
A validation algorithm checks the quality
of the prediction. The algorithm analyzes
the regular expression (ReGex) parameter
of the processes in this suggestion and
other suggestions (application groups).
Pick suggestions with higher rule accuracy.
If the accuracy is low, you may adjust the
process ReGex definition manually, as
described in Adjust regular expression used
for fingerprint-based discovery.

Note: Do not modify the accuracy
value manually.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1170


<!-- page 1171 -->
Field

Description

Process Classifier

The suggested regular expression used in the
classifier. If defined, ADM uses this regular
expression during horizontal discovery.

Ignore Rule

The name of the process that was excluded
from discovery using the Ignore action.

6. Optional: If this suggestion is not relevant and you do not want to use it for discovery, perform
one of the following actions:
◦ To exclude processes from horizontal discovery, click Ignore.
This process is added to the Process Handlers [discovery_proc_handler] table with the
Classify parameter set to false. Discovery stops checking the classifier for the
excluded process and does not discover the CI on which these processes run.
◦ To remove this suggestion from the suggestion list, click Delete.
The suggestion disappears from the list. If Predictive Intelligence adds new processes to a
deleted suggestion, it reappears in this list.
7. Click Discover Application.
The fingerprint-based discovery discovers an application CI for the selected suggestion.
8. On the Application Fingerprints dashboard, check that the discovered application appears
under Created Applications.

9. Configure the running order for the automatically created pattern:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1171


<!-- page 1172 -->
a. Click the process classifier next to the new application.
The Process Classification form opens.
b. On the Triggers probes tab, click the pattern link.

The pattern form opens.
c. Select the order in which this pattern always runs:
▪ Before
▪ After
d. Then select the other applicable pattern.

Note: If you are not sure what the right order is or you are not planning on using this
automatically generated pattern for top-down discovery, configure the run order to
After All.
e. Click Save.
10. Optional: Click the process classifier next to the new application to see the classifier and the
pattern that the fingerprint-based discovery creates for this application CI.
11. Optional: If the discovery result is not satisfactory, calibrate the fingerprint-based discovery
feature.
Related topics
Predictive Intelligence
Application Fingerprints dashboard
Application Fingerprints dashboard
ITOM Visibility uses Predictive Intelligence to perform initial analysis of discovered processes
and suggest applications that you might want to discover. When using this method, ITOM
Visibility automatically creates a Configuration Management Database (CMDB) configuration
item (CI) class, a classifier, or a pattern for the new application CI class. Use the Application
Fingerprints dashboard to review suggested applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1172


<!-- page 1173 -->
Required ServiceNow AI Platform roles
The discovery_admin, who runs horizontal discovery using Discovery.

Use cases
For examples of how different people in your organization would use this dashboard, see these
use cases.

User

Dashboard use

Administrator performing horizontal discovery
of the organization IT network.

Review application suggestions and decide
which applications to discover based on
fingerprints. Performing this action enhances
the results of the basic horizontal discovery.

Indicators
Suggested application servers
The filtered list of suggestions for application servers.
Suggested applications
The complete list of suggestions for applications.
Created applications
The list of applications that the system discovered based on fingerprints.

Data visualizations
Title

Type

Source table

Description

Top Suggestions

Pie Chart

Application
A pie chart report
Suggestion
that shows the top
[cmdb_process_groups]suggestions arranged

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1173


<!-- page 1174 -->
Title

Type

Source table

Description

by the number of
processes making up
these suggestions.
The process count is
reflected by the size
of the chart segment.
Click the segment to
see its corresponding
suggestions in a
filtered list. To remove
a suggestion from
the chart, click the
suggestion name in
the chart legend.
Discover applications using application fingerprints or ITOM Content Service
Discover applications using suggestions based on ServiceNow Predictive Intelligence or
ServiceNow ITOM Content Service to create configuration items.

Before you begin

Role required: discovery_admin

About this task

Review application suggestions based on application fingerprints or ITOM Content Service and
add them to discovery.
• Fingerprint-based discovery uses algorithms to identify running processes and organizes them
into groups. These process groups become suggested applications or candidates. You review
suggested applications and choose which ones to discover. The list of suggested applications
is refreshed every hour. To learn more, see Discover applications based on fingerprints.
• ITOM Content Service identifies the products that you’re currently using and delivers new
product suggestions every week. To learn more, see ITOM Content Service.

Procedure
1. Navigate to Workspaces > Discovery Admin Workspace > Content 360.
2. Select an application suggestion to add to discovery based on either application fingerprints
or ITOM Content Service.
Suggestion source

Actions

a. Select the AI suggested application finger­
prints widget.
b. Select the suggestion under Suggested
Group Name.
Application fingerprints

c. On the Application fingerprints suggestion
form that is displayed, verify the informa­
tion.
For information about the form fields, see
Application fingerprint suggestion form.
d. Determine whether to add the suggestion
to discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1174


<!-- page 1175 -->
Suggestion source

Actions

▪ If the suggestion isn't relevant and you
don't want to add it, select Ignore.
▪ If you want to add it, select Add to discov­
ery.
a. Confirm that you’ve opted in to ITOM Con­
tent Service.

Note: If the Opt-in option is dis­
played, you have not yet opted in. For
more information, see Share data on
ITOM Content Service.
b. Select the Content service suggestions
widget.
c. Manually sync with suggestions from your
system by selecting Sync candidates.

Note: If a message appears about

the application scope, select OK to
exit the message. Then, change the
scope by selecting the application
scope icon and selecting Global.

ITOM Content Service

d. In the Sync candidates confirmation win­
dow, select Yes.
e. Review the list and select the name of the
relevant suggestion to see more detailed in­
formation.

Note: You can select multiple sug­
gestions to add to discovery at the
same time. Select the check box next
to each suggestion and then select
Activate.
f. Determine whether to add the suggestion
to discovery.
▪ If the suggestion isn't relevant and you
don't want to add it, return to the list of
suggested applications.
▪ If you have made changes to the sugges­
tion but do not want to add it to discov­
ery, select Save.
▪ To add the suggestion to discovery select
Activate.
Calibrate fingerprint-based discovery
Fine-tune discovering applications based on processes, if the discovery results are not
satisfactory.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1175


<!-- page 1176 -->
Modify default settings for fingerprint-based discovery if this feature does not generate any
suggestions or does not generate. In addition, you may also fine-tune the generated suggestions
to make them relevant and useful.
Ensure that the fingerprint-based discovery generates suggestions
Fingerprint-based discovery relies on Predictive Intelligence for generating suggestions for
discovery. If the Application Fingerprints dashboard does not display any suggestions, ensure
that the Predictive Intelligence is configured correctly.

Before you begin

Confirm that fingerprint-based discovery remains enabled, since it is enabled by default. To
verify, navigate to All > System Properties > All Properties. Check that the sys_property
process.clustering.appfingerprint.enabled property does not appear on the
list.
Role required: discovery_admin

About this task

If the Application Fingerprints dashboard does not display any suggestions, perform the
following steps. After every action, check if the issue persists.

Procedure
1. Ensure that Predictive Intelligence is installed and active.
a. Navigate to System Definition > Plugins.
b. Search for Predictive Intelligence.
c. Verify that the Predictive Intelligence plugin is installed.

If Predictive Intelligence is not installed, click the Install button.
d. Click the Predictive Intelligence tile.
e. On the Predictive Intelligence form, verify that the Status is Active.
If the status is Inactive, click the Activate/Repair link under Related Links.
2. Ensure that the scheduled job controlling the fingerprint-based discovery, is enabled and
configured correctly.
a. Navigate to System Definition > Scheduled Jobs.
b. Select the Applications suggestion - ITOM Autodisco scheduled job from
the list.
c. Ensure that the Active check box is selected.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1176


<!-- page 1177 -->
d. Check that the discovery frequency is set to one hour as shown in the following example:

3. Check that the clustering solution responsible for grouping processes into suggestions is
active.
a. Enter ml_solution.list in the Filter navigator field of the Navigation panel.
The ML Solutions tab displays all solutions, including clustering solutions.
b. Identify clustering solutions by checking the Table column.
The system saves clustering solutions in the Virtual running processes
[v_cmdb_running_process] table.
c. If there are several clustering solutions, identify the latest solution by the timestamp in the
Update column.
Alternatively, you can use the number that the system
appends to the solution name to identify the latest

solution.
d. Verify that the State value is Solution Complete and Progress is at 100%.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1177


<!-- page 1178 -->
e. If the State value is not Solution Complete, configure Predictive Intelligence as described in
Configuration tips for Predictive Intelligence .
4. Check that the clustering solution created enough process groups, which become
suggestions.
a. Navigate to System Definition > Tables and locate the Virtual running processes
[v_cmdb_running_process] table.
b. Check that there are more than 1000 records in this table.
c. If there are less than 1000 processes, discover more processes by running horizontal
discovery on additional IP ranges or subnets.
d. If there are still less than 1000 processes after discovering additional IP ranges or subnets,
disable the fingerprint-based discovery.
5. Check that the Application suggestion - ITOM Autodisco transaction is not slow-loading, as
described in View and kill active transaction .
If this transaction is running for a long time, kill it.
Fine-tune suggestions for fingerprint-based discovery
Adjust definitions of process-based suggestions before starting discovery. Typically, you need
to fine-tune automatically generated suggestions if the accuracy is less than 100%. Predictive
Intelligence creates suggestions and provides the accuracy estimate for each suggestion. The
lack of accuracy may result in the failure to discover required applications or the discovery of
wrong applications in addition to the correctly discovered applications.

Before you begin

Role required: discovery_admin

Procedure
1. Navigate to All > Discovery > Home.
2. Click Application Fingerprints.
The Application Fingerprints dashboard opens.
3. Navigate to the list of suggestions by one of the following methods:
◦ On the Top Suggestions pie chart, view the top suggestions arranged by the number of
processes making up these suggestions.
◦ To view only suggestions for application servers, click the Suggested Application Servers
tile. The filtered list of suggestions for application servers is displayed. This list is also filtered
to display only suggestions whose accuracy is 100%.
◦ Alternatively, click All suggestions. The unfiltered list of all suggestions is displayed.
4. In the Application Suggestions list, click the relevant suggestion in the Suggested Group
Name column.
The Application Suggestion form opens.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1178


<!-- page 1179 -->
5. To change the name used for the fingerprint-based application, enter the preferred name in
the Name field.
For example, many applications run java processes and the suggested group name for these
groups is java. You may want to assign a name that better describes the application that you
want to discover using this suggestion (for example, java_myweblogic).
6. To change the name used for the CI class, enter the preferred CI class name in the Suggested
CMDB CI Class field.
7. To fine-tune the classifier rule, change the regular expressions in the Suggested Classifier
Rule field.
For example, add version information to the regular expression for discovering a Tomcat
application: .*tomcat.* -Dopss.*version=12.1.3.*
8. Click Update.
9. If you are not sure how to change the classifier rule, fine-tune it after performing the initial
discovery as described in Adjust regular expression used for fingerprint-based discovery.
Adjust regular expression used for fingerprint-based discovery
Fine-tune the regular expression in the classifier rule to make discovery results more precise.
Predictive Intelligence extracts regular expressions from processes and assigns them to
classifier rules as part of creating suggestions. If you are not satisfied with the discovery results
or the suggestion accuracy is lower than 100%, modify the regular expression.

Before you begin

Role required: discovery_admin

Procedure
1. Navigate to All > Application > Module.
2. Click Discover Application.
The fingerprint-based discovery finds the application and creates a CI class, a classifier, and a
pattern.
3. On the Application Suggestions list, click the newly created process classifier.
The Process Classification form opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1179


<!-- page 1180 -->
4. In the Parameters value field under Condition, notice the regular expression automatically
selected by Predictive Intelligence.
In this example, it is ."-DweblogicName=."
5. Click Padlock icon

next to Test with.

to select the server on which you want to test additional regular
6. Click the Look up icon
expressions.
The list of all discovered servers opens.
7. Select the sever that runs the application that you want to discover using the customized
classifier.
The selected server appears in the Test with field.
8. Right-click the header of the Process Classification form and select Save.
The system runs a test and displays the results on the Test results tab at the bottom of the
page.

9. On the Test results tab, check the processes that were discovered using the regular
expressions configured for this classifier.
10. Adjust the regular expression in the Parameters value field under Conditions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1180


<!-- page 1181 -->
For example, make it more generic: "weblogic."
11. Right-click the header of the Process Classification form and select Save.
The system runs the test again and displays the results on the Test results tab at the bottom of
the page.
12. On the Test results tab, verify that the fingerprint discovery found the applications as you
expected.
Disable fingerprint-based discovery
By default, the fingerprint-based discovery is enabled. Disable application discovery based on
processes, if Predictive Intelligence does not generate enough processes.

Before you begin

Role required: discovery_admin

Procedure
1. Add the system property sys_property

process.clustering.appfingerprint.enabled as described in Add a system
property

.

2. To disable, enter false in the Value field.
3. To enable the fingerprint-based discovery again, change the Value field to true.
Related topics
KB0826261: Advanced configuration and troubleshooting of fingerprint-based discovery
Troubleshooting Guide for ML Connection Suggestions
Network discovery
Network Discovery discovers the internal IP networks and subnets within your organization.

Note: If you already know the IP address ranges in your network, it's not necessary to run
Network Discovery. It is intended for organizations that don't have complete knowledge of
the IP addresses available for Discovery in their networks.

How network discovery works
Discovery uses the information it gathers to update routers and Layer 3 switches in the
Configuration Management Database (CMDB). A single MID Server begins its scan on a
configurable list of starting (or seed) routers performs network Discovery. The starting routers
are the default routers used by all the MID Server host machines in the network, but can be any
designated routers. The MID Server uses the router tables on the starting routers to discover
other routers in the network. The MID Server then spreads out through the network, using router
tables it finds to discover other routers. It continues until the MID Server explored all the routers
and switches.
After running Network Discovery, convert the IP networks it finds into IP address Range Sets
that you use in Discovery schedules to discover configuration items (CI). Configure SNMP
credentials . Port 161 must be open for SNMP access.

Network Discovery properties
The default values are correct for most discoveries. Navigate to Discovery Definitions >
Properties to edit the properties.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1181


<!-- page 1182 -->
Field

glide.discovery.bgp_router_disable

Description

BGP router exploration disable: Disables
running the SNMP – Routing probe or
pattern when discovering a router running
the BGP protocol. Normally such exploration
IS inactive because of the huge size of BGP
routing tables, and because generally such
routers are only operating at the edge of large
networks where further network discovery
would be irrelevant. This value could be set
to false if your organization only uses BGP
routers as edge routers between relatively
small networks (such as between buildings on
a single campus).
If you must populate the
[discovery_device_neighbors] table during
horizontal layer 2 discovery of the bgpenabled devices, set the BGP router
exploration disable property to No. Notice that
enabling this property can cause performance
issues including out-of-memory issues on the
MID Server.
• Type: true | false
• Default value true

glide.discovery.debug.network_discovery

Network discovery debugging: Enables
extensive logging of all Network Discovery
activities on the instance.
• Type: true | false
• Default value true
• Learn More: Discovery monitoring and issue
resolution

glide.discovery.discoverable.network.max.netmask.bits
Maximum netmask size for discoverable
networks (bits): The maximum number of
bits in a regular netmask for networks that
are discovered by Network Discovery. A
regular netmask is a netmask that can be
expressed in binary as a string of ones
followed by a string of zeroes. For example,
255.255.255.0 is regular and 255.255.255.64
is irregular. Regular networks are commonly
expressed like: 10.0.0.0/24, which means a
network address of 10.0.0.0 with a netmask
of 255.255.255.0. Larger bit numbers mean
networks with smaller numbers of addresses
in them. For example, the network 10.128.0.128/
30 has four addresses in it: one network
address (10.128.0.128), one broadcast address
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1182


<!-- page 1183 -->
Field

Description

(10.128.0.131), and two usable addresses
(10.128.0.129 and 10.128.0.130). Small networks
are commonly configured in network gear
to provide loopback addresses or networks
used strictly by point-to-point connections.
Since these sorts of networks generally
don't need to be discovered by Network
Discovery, it would be useful to filter them out.
By setting this property to a value of 1 through
32, you can limit the sizes of regular networks
that are discovered. Setting it to any other
value causes all networks to be discovered.
Irregular networks are always discovered. The
default value is 28, which means that regular
networks with 8 or fewer addresses cannot be
discovered.
• Type: integer
• Default value: 28
glide.discovery.network_owner_method

Network router selection method: This
property controls the method used to decide
(during Network Discovery) which router
should be selected as the router to be
associated with a given IP Network. The
possible values are:
• First Router: The first router that discovers
the network is associated
• Last Router: The last router that discovers
the network is associated
• Most Networks: The router with the most
attached networks is associated
• Least Networks: The router with the least
attached networks is associated
• Type: choice list
• Default value: Most Networks
• Additional options: First Router, Last Router,
Least Networks

glide.discovery.physical_interface_types

Physical interface types: A comma-separated
list of interface types that are considered
physical for the purposes of network
discovery. If a router (or device capable of
routing) has an interface of this type, the
networks connected to that interface are
considered locally connected to that device.
The default interface types include Ethernet,
802.11, and Token Ring types. Interface type

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1183


<!-- page 1184 -->
Field

Description

numbers are defined in the SNMP MIB-2,
specifically in OID 1.3.6.1.2.1.2.2.1.3.
• Type: string
• Default value 6,117,9,71,209
glide.discovery.switch_interface_types

Switch interface types: A comma-separated
list of interface types that are considered.
Interface type numbers are defined in
the SNMP MIB-2, specifically in OID
1.3.6.1.2.1.2.2.1.3. Devices with any interface
types that do NOT appear in this list are
classified as routers, when they have routing.
A complete list of the interface type numbers
may be found on the IANA web site , in the
section "ifType definitions".
• Type: string
• Default value:
7,8,9,26,53,62,69,71,78,115,117,209

Learn
What is network discovery?
Run network Discovery
Configure network Discovery from a Discovery schedule.

Before you begin
Configure SNMP credentials

, and keep port 161 open for SNMP access.

Role required: none

Procedure
1. Navigate to All > Discovery > Discovery Schedules.
2. Click New and select Networks from the list in the Discover field.
3. Select a MID Server.
This field is mandatory.
4. Complete the form, including the scheduling fields.
5. Right-click in the header bar and select Save from the pop-up menu.
The Related Links and related lists appear.
6. Click Network Discovery Private IPs in Related Links to view the list of default private IP
networks in the Discovery IP Ranges Related List.
The default IP networks in this list are available to every Network Discovery you conduct and
are sufficient for most discoveries.
7. If your organization has additional private IP addresses, click New to add them.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1184


<!-- page 1185 -->
Private IP addresses

8. Add starting routers to the schedule in the Discovery Range Sets list.
a. Click the Network Discovery Auto Starting Routers link to populate the list with the starting
router for each MID Server in your network.
b. Click Edit to add or delete routers from the list.
Network Discovery schedule

9. Run Discovery manually, or through the scheduler.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1185


<!-- page 1186 -->
Convert IP networks into Discovery range sets
After you conduct a network Discovery, you must convert the IP networks that were found into
range sets for use in discovering other devices.

Before you begin

Role required: agent_admin or admin

Procedure
1. Navigate to All > Discovery > Output and Artifacts > IP Networks.
2. Click New to add an IP network.
3. Ensure that the following field values are provided:
◦ State: Ready
◦ Discover: selected (true)
◦ Router: Select a router from the list. This field must not be empty.
If your IP Networks were created through network Discovery, then these fields are populated
automatically in the IP Networks related list. However, if you entered the IP Networks
manually, and you want to convert your IP Networks into range sets manually, you must edit
these fields accordingly.
IP network form

4. Click Update to return to the list of IP Networks.
5. In Related Links, click Create Range Sets.
Use this feature to convert all the IP networks in the list into range sets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1186


<!-- page 1187 -->
IP network list

The Discovery Status page appears, displaying the progress of the conversion. The system
increments the Started and Completed count of IP networks, until all the networks are
converted.

What to do next

Add discovery range sets to Discovery schedules.
Add a Discovery range set to a Discovery schedule
After creating discovery range sets from a network discovery, add the sets to a discovery
schedule. This process narrows down the range of IP addresses that Shazzam probes can scan.
You can also add a behavior.

Before you begin

Role required: agent_admin or admin

Procedure
1. Open a Discovery schedule.
2. In the Discovery Range Sets related list, click Edit to add an existing range set and use the
slushbucket to add the range set.
3. On the Discovery schedule form, click the name of the range set under the Range column in
the Discovery Range Sets related list.
4. On the Discovery Range Set form, add a Discovery behavior if necessary.
You can also activate or deactivate the range set for this schedule.
5. Right-click the header, and then click Save.
Serverless Discovery
Discovery can find applications on host machines without the need to discover the host first. This
type of Discovery is referred to as serverless Discovery.
Serverless Discovery relies on infrastructure patterns to explore CIs on a host. This kind of
Discovery skips the scanning and classification phases of Discovery. There are two types of
serverless Discovery: standard and host-based. Both types require an infrastructure pattern.

Standard serverless Discovery
Standard serverless Discovery finds remote application CIs that reside on an unknown host.
This type of serverless Discovery uses protocols, such as REST or HTTP, to find the CIs. The IP
address of the host machine is not required. You define input parameters in an infrastructure
pattern to connect to a remote resource. Use this type of Discovery when you want to discover
web-based applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1187


<!-- page 1188 -->
Host-based serverless Discovery
Host-based serverless Discovery finds CIs that reside on a host machine that you already
discovered. The host acts as a proxy through which you find other CIs. You do not actually run
Discovery on the host. Use this type of Discovery when:
• You do not know the IP address of the CIs you want to discover, or the CIs do not actually have
IP addresses.
• The CIs reside on an already discovered host CI.
For this type of Discovery, you also need an infrastructure pattern, but you do not need to
define input parameters like you do for standard serverless Discovery. The pattern can specify
operations, such as a WMI Query, which executes queries on a host. After Discovery connects to
the host, it uses the credentials of the host to perform the Discovery of CIs you are exploring in
the pattern. You do not need to specify additional credentials. When you run debug mode on the
pattern, you can see the details under Temporary Variables on the pattern. You can then create
pattern operations that make API calls from the host to the CIs you are trying to discover.

Serverless Discovery schedules
The infrastructure patterns that serverless Discovery uses are triggered from a Discovery
schedule, rather than from a classifier. Serverless Discovery ignores classifiers. Use a serverless
schedule type for both types of serverless Discovery. The serverless schedule allows you to
specify:
• Values for input parameters in the pattern if you are using standard serverless Discovery. See
Create a schedule for standard serverless Discovery for instructions.
• A host CI if you are using proxy-host based Discovery. See Create a schedule for host-based
serverless Discovery for more information.
Create a pattern and a schedule for standard serverless Discovery
To find application CIs that reside on an unknown host, create an infrastructure pattern for
standard serverless discovery. After creating the pattern, create a Discovery schedule that
triggers the pattern.

Before you begin

Role required: cloud_admin, service_mapping_admin, or admin

About this task

In the pattern, you must specify input parameters to explore the CI.

Procedure
1. Navigate to All > Pattern Designer > Discovery Patterns.
2. Click New.
3. Specify an Infrastructure type pattern with the correct CI type that applies to the CIs you want
to discover.
See Create or customize patterns for an explanation of all form fields.
4. Create an identification section and save the pattern.
5. Click the Input Parameters tab, and then click New.
6. Enter the parameters that are required to reach the serverless CIs.
For example, you could enter url to reach a remote resource via an HTTP request.

Note: You specify the actual URL in a serverless discovery schedule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1188


<!-- page 1189 -->
7. Save the pattern.
8. Click the Basic tab, and then click the identification section name to open the pattern
designer.
9. Create the steps you need to explore serverless CIs.
For example, create an Http Get Call operation to reach a remote resource through a URL. In
this case, you would specify the $url parameter in the URL field.
10. To test the pattern, click Debug Mode and fill in values for the input parameters.
You do not need to enter a value for Proxy Host. In the this example, we are connecting to a
website that serves up an XML file. The XML file parsing method is already defined in the Http
Get Call operation. To test the pattern operation, click Debug Mode, enter the URL, and click
Connect.
Example debugging of an HTTP Get Call

11. After you connect and run the operation, the Output field displays the content.
Create a schedule for standard serverless Discovery
After you create a pattern for standard serverless discovery, create a Discovery schedule and
specify the pattern. Discovery triggers the pattern from the schedule rather than from a classifier.

Before you begin
Ensure you have basic authentication credentials

for HTTP calls in the pattern.

Role required: cloud_admin, service_mapping_admin, or admin

About this task

You can reuse this schedule to run the same pattern using different parameters.

Procedure
1. Navigate to All > Discovery > Schedules.
2. Click New.
3. Select Serverless in the Discovery field.
See Schedule a horizontal discovery for explanation of other fields.
4. Right-click the form header and select Save.
5. In the Serverless Execution Pattern related list, click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1189


<!-- page 1190 -->
6. Fill out the form fields (see table):

Field

Description

Name

Provide a descriptive name.

Pattern

Select the pattern you created for standard serverless discovery or for proxy hostbased discovery.

Proxy
Host

Leave this field empty. This field applies to the host proxy-based scenario.

Active

Keep this check box selected to use the pattern execution definition.

7. Right-click the form header and select Save.
8. In the Discovery Pattern Launcher Parameters related list, add the parameters required by
the pattern and provide a value for each one in the Value column.
9. Click Submit.
10. Define as many serverless execution pattern records as needed.
You can launch the same pattern, but they should have different parameters.
11. Execute discovery by clicking Discover Now or wait until the schedule triggers the discovery.

Result

Check the Discovery status to see the Discovery log, the devices list, which holds the discovered
CIs, and the ECC queue records. Note that the Shazzam probe did not launch and Discovery did
not trigger any classification probes.
Related topics
Discovery status
Create a pattern and a schedule for host-based serverless Discovery
To find application CIs that reside on a known host in your CMDB, create an infrastructure pattern
for host-based serverless discovery. After creating the pattern, create a Discovery schedule that
triggers the pattern.

Before you begin

Role required: cloud_admin, service_mapping_admin, or admin

Procedure
1. Navigate to All > Pattern Designer > Discovery Patterns.
2. Click New.
3. Specify an Infrastructure type pattern with the correct CI type that applies to the CIs you want
to discover.
See Create or customize patterns for an explanation of all form fields.
4. Create an identification section and save the pattern.
5. Add operations to the pattern to discover the CI that you can access via the host.
6. To test the pattern, click Debug Mode and enter the IP address of the host.
Create a schedule for host-based serverless Discovery
Discovery triggers the pattern for host-based, serverless Discovery from the schedule rather than
from a classifier.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1190


<!-- page 1191 -->
Before you begin

Ensure you have credentials for the host device that acts as the proxy.
Role required: cloud_admin, service_mapping_admin, or admin

Procedure
1. Navigate to All > Discovery > Schedules.
2. Click New.
3. Select the Serverless in the Discovery field.
See Schedule a horizontal discovery for explanation of other fields.
4. Right-click the form header and select Save.
5. In the Serverless Execution Pattern related list, click New.
6. Fill out the form fields (see table):

Field

Description

Name

Provide a descriptive name.

Pattern Select the pattern you created for host-based discovery.
Proxy
Host

If you are using host-based discovery, specify an existing CMDB CI. Discovery uses
the credentials of this CI when exploring the CIs on the host.

Active

Keep this check box selected to use the pattern execution definition.

7. Right-click the form header and select Save.
Define as many serverless execution pattern records as needed. You can launch the same
pattern, but they should have different parameters.

Note: You do not need to create entries in the Discovery Pattern Launcher Parameters
related list.
8. Execute discovery by clicking Discover Now or wait until the schedule triggers the discovery.

Result

Check the Discovery status to see the Discovery log, the devices list, which holds the discovered
CIs, and the ECC queue records. Note that the Shazzam probe did not launch and Discovery did
not trigger any classification probes.
Discovery probes and sensors
Discovery probes and sensors perform data collection and update the CMDB.
With each release, patterns are replacing many probes and sensors for Discovery. Consider
creating new patterns or editing existing ones if you want to customize what Discovery can find.
The information on probes and sensors is intended for customers who are not using patterns
yet and for customers who already have customized probes that are retained upon upgrade. See
Patterns and horizontal discovery for more information on patterns.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1191


<!-- page 1192 -->
Discovery phases
Discovery always uses probes and sensors during the first two phases of discovery: scanning
and classification. For the last two phases, identification and exploration, Discovery can use
probes and sensors or patterns. This topic refers to probes and sensors only. See Exploring
Discovery for an explanation of these phases. See Patterns and horizontal discovery for more
information on patterns.

Probes, sensors, and the ECC queue
The probe collects the information and the sensor processes it. Both get their instructions from
the ECC queue. There is a worker job on the MID Server that monitors the queue for work. The
monitor checks for any entries where the Queue is output and the State is ready.

The MID Server then processes all the output ECC messages, runs the necessary probes, and
returns the probes results to the ECC queue. These results are put in the ECC Queue as input
entries.
ECC queue input

After an entry is inserted in the ECC Queue table, a business rule fires (on insert) that takes that
information and runs it through a sensor processor. The sensor processor's job is to take the
input data, find any sensors interested in that data, and pass it along to be processed. Those
sensors ultimately update the CMDB.

How probes and sensors work together
The MID Server launches probes to collect information about a device. The probe sends back
information to the sensor to be processed. If the probe has a post-processing script defined, the
post-processing script does some data processing on the MID Server before data is sent back to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1192


<!-- page 1193 -->
the sensor on the ServiceNow instance. Otherwise the probes sends back all the data collected
and the sensor performs this data processing. In both cases, the sensor updates the CMDB.
A multi-probe is a probe that contains probes. A multi-sensor processes the data from a multiprobe. To process the data from the multi-probe, the multi-sensor contains individual scripts to
process the data returned by each probe contained in the Multiprobe, as well as a main multisensor script. The individual scripts pass their processed data to the main multi-sensor script.

Probe types
Device

Windows

Probe Type

Remote WMI queries, shell commands

computers and servers
UNIX and Linux servers

Shell command (via SSH protocol, version 2). Discovery supports
any Bourne-compatible shell.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1193


<!-- page 1194 -->
Device

Probe Type

Storage

CIM/WBEM queries

Printers

SNMP queries

Network gear (switches,
routers, etc.)

SNMP queries

Web servers

HTTP header examination

Uninterruptible Power
Supplies (UPS)

SNMP queries

List of Discovery probes
A wide variety of probes exist for the Discovery application to detect elements on your network.
These probes are included with the Discovery application.
The PPP script designation in the table indicates whether the probe includes a probe postprocessing (PPP) script that runs on the MID Server. The PPP script transforms probe results into
a JSON string and returns the string to the ServiceNow instance for sensor processing.
To view probes and their descriptions, navigate to Discovery Definition > Probes.
CIM probe
The CIM probe uses WBEM protocols to query a particular CIM server, the CIM Object Manager,
for a set of data objects and properties.
For instructions on configuring probe parameters, see Set probe parameters.
The following parameters may be passed to the CIM probe:
CIM Probe
Parameter

Description

Default
Value

source

[Required] The initial host to connect to.

None

port

The port to connect to. If empty, the value is determined by the
"schema" parameter: http = 5988, https = 5989.

5988
or
5989

schema

[Required] The schema to use: '"http"' or '"https"'.

http

namespace

[Required] The CIM namespace. May be overridden by a query.

None

queries

[Required] A semicolon-delimited list of CIM probe queries to
process and return results for.

None

retries

The number of times to retry a query if it fails due to network
connectivity issues.

2

connection_timeout The number of milliseconds the probe has to connect to a
server.

5000

socket_timeout

5000

The number of milliseconds the probe has to read data.

The CIM Intermediate Query Language (CimIQL) uses keys, filters, and dot-walking to traverse
the CIM schema.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1194


<!-- page 1195 -->
Parameter Expansion
The CIM query language supports standard SNC preprocessed probe parameter expansion.
Place variables in queries by encapsulating their names like this:
${foobar}.CIM_RunningOS[0].Name
CIM_ComputerSystem.${barfoo}
The text ${foobar} is replaced with the contents of the foobarprobe parameter passed to the CIM
probe; likewise for barfoo.

CIMIQL
The CIM Intermediate Query Language (CimIQL) is an intermediate language designed to
simplify the process of querying CIM providers.
CimIQL currently supports the standard Web-Based Enterprise Management (WBEM) protocol
stack, but others, such as Web Services-Management (WS-MAN), may be added in the future.
The query language syntax borrows from elements of Microsoft's WMI query language and
UNIX's wbemcli command. The CimIQL library is a pure Java implementation.

Note: CimIQL is pronounced "simicle".
CimIQL syntax
CimIQL syntax consists of several elements, including a query and different tokens.
CimIQL Syntax Element Descriptions
Description

Statement

The most basic element of CimIQL is a valid . A statement contains multiple
queries delimited by a period . character.

Query

A represents a single high-level protocol-independent request. Each query is
comprised of nested language components and sub-components known as
tokens.

Token

A describes a specific lexical aspect of the CimIQL syntax.

Operation
Token

The first token of each query must be an , which represents the overall logical
operation to be performed.
token

operation

token

query

statement

Element

token

component

Component A is a sub-component of an operation token.
Token
Each query is paired with a result, which is then provided as input to the next
query in the statement. A is comprised of a set of objects and their properties.
result

Result

CimIQL operation tokens
The CimIQL probe requires operation tokens.
Each of the following core operations has a counterpart in the CIM Operations over HTTP
standard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1195


<!-- page 1196 -->
CimIQL Operation Token Summary
Return
Value

Details

Equivalent CIM
Operation over HTTP

class
object

Get Object

GetInstance

class
object

Enumerate Objects

class
object

Enumerate Associated Objects

Retrieves a single object of a specific class by specifying all
of its unique keys (as key tokens) and any optional parameter
tokens, separated by commas.
EnumerateInstances

Retrieves objects that match a set of condition tokens and
parameter tokens.
Associators

Retrieves objects associated with each result from the
preceding query.

statement Substitution
results
A no-op token that feeds the results of a previous named
statement as input into the next query of its own statement.

Reference the
results of a named
statement

Get Object Token
<classname>{<key token>,<parameter token>,...}

token

identity

• Retrieves a single object of a specific class by specifying all of its unique keys (as key tokens
key tokens) and any optional parameter tokens, separated by commas. This token is also
known as the .
• The <classname> is the case-sensitive CIM class name of the desired object. By default,
objects of the specified class and of any extended classes are retrieved.
• The key and parameter tokens are enclosed by a single pair of curly brackets { ... }.
• This token must only be used as the first query in a statement.
• Returns: class object
• Example:
CIM_ComputerSystem{CreationClassName='Linux_ComputerSystem',Nam
e='runtime'}.*

Enumerate Objects Token
<classname>{{<condition token>,<parameter token>,...}}<array index token> OR
<classname><array index token>
token

filter

• Retrieves objects that match a set of condition tokens and parameter tokens. This token is also
known as the .
• The condition tokens and parameter tokens are enclosed by two pairs of curly brackets {{ ... }}.
The curly brackets are optional if there are no conditions or parameters necessary.
• The <classname> is the case-sensitive CIM class name of the desired objects. By default,
objects of the specified class and of any extended classes are retrieved.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1196


<!-- page 1197 -->
• The index token is optional.
• This token must only be used as the first query in a statement.
• Returns: class object
• Example:
CIM_ComputerSystem{{Name!='runtime'}}.*

Enumerate Associated Objects Token
<association classname>{{<property filter token>,<parameter token>,...}}<array index token> OR
<association classname><array index token>
• Retrieves objects associated with each result from the preceding query.
• The condition tokens and parameter tokens are enclosed by two pairs of curly brackets {{ ... }}.
The curly brackets are optional if there are no properties filters or parameters necessary.
• The <association classname> is the name of the many-to-many or one-to-many class that
associates two objects together. By default, objects of the specified class and of any extended
classes are retrieved.
• The <parameter token>, ResultClass, may be specified to filter results based on the resulting
object's classname.
• The index token is optional.
• This token must not be used as the first query in a statement.
• Returns: class object
• Example:
CIM_ComputerSystem{{Name='runtime'}}[2].*

Substitution Token
${<statement name>}
• A no-op token that feeds the results of a previous named statement as input into the next
query of its own statement.
• Returns: void
• Example:
$(lastComputer).ElementName
CimIQL component tokens
The CimIQL probe requires component tokens, which are sub-components of operational
tokens.
The following tokens are sub-components of operation tokens.
CimIQL Component Token Summary
Token

Details

Token

Properties

Properties * OR <property name>,<property name>,...
token
Specifies which properties are to be returned for each object of the final result set.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1197


