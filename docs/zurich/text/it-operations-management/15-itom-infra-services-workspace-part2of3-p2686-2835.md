# Zurich IT Operations Management — ITOM Infra Services Workspace / ITOM Visibility reference

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 2686–2835 of 4823 | Part 2 of 3

Sections: ITOM Infra Services Workspace (p2536); ITOM Visibility reference (p2541)

---

<!-- page 2686 -->
Field

Description

◦ Runs on::Runs: Defines the relationship of an application to the host on
which it runs. This relationship is expressed from the perspective of the
host and the application. For example: My database application runs on
server001::server001 runs my database application.
◦ Depends on::Used by: Defines the relationship of an application that
communicates with another application. This relationship is expressed from the
perspective of each application. For example: The Tomcat application depends
on the MySQL database:: The MySQL database is used by Tomcat.
◦ Virtualized by::Virtualizes: Defines the relationship of a virtual machine to its
host. This relationship is expressed from the perspective of the virtual machine
and of the host. For example: server001 is virtualized by ServerESX::Server ESX
virtualizes server001.
◦ Cluster of::Cluster: Defines the relationship of a cluster node to the cluster
to which it belongs. This relationship is expressed from the perspective of the
cluster node and of the cluster.
◦ Hosted on::Hosts: Defines the relationship of a cluster node and the Windows
host. This relationship is expressed from the perspective of the cluster node
and of the Windows host.
Active

Select this box to activate the process classification. Deselect to deactivate it.

Order

Enter the order in which Discovery should run this process classification when
there are multiple classifications available for a table. Discovery runs process
classifications from the lowest to the highest order.

Test with

Lists the host CI where an automatically generated process classification
conditions were met. Use this field to test changes to the process classification to
ensure that the updated classification behaves as expected.

Condition Configure the appropriate condition. The example screenshot triggers this
process classification when the process command contains the string MSFT
SQL Server 2000.
Relate the process classifier to Windows cluster resources
In the second step, relate the process classifier to the information that is in the Windows Cluster
resources table.

Before you begin

Role required: admin

About this task

The Windows Cluster resources table is cmdb_ci_win_cluster_resource. This relationship is built
through JavaScript.

Procedure
1. Navigate back to the process classification you just made.
2. Click the Parameters tab.
3. Click New.
4. Fill out the fields on the form as appropriate (see table).
5. Click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2686


<!-- page 2687 -->
Classifier parameter form

Classifier parameter form
Field

Description

Name

Select a unique name.

Application Select Global.
Type

Enter Cluster.

Value

This field defines two JavaScript objects, called resourceType and
isMatch. For more information, see Populate the Value field on the Classifier
Parameter form.

Populate the Value field on the Classifier Parameter form
The value field defines two JavaScript objects, called resourceType and isMatch.

Before you begin

Role required: admin

About this task
The resourceType value refers to the Resource Type column in the Windows Cluster
Resources table [cmdb_ci_win_cluster_resource]. The resourceType value can not be empty
or null.

Procedure
1. Navigate to a Windows cluster page to access the Windows Cluster Resources table.
2. Click the Windows Cluster Resources tab.

Example:

The isMatch value evaluates whether the process is a clustered process.
• An evaluation that returns true indicates the process is a clustered application, and the
process is classified as a clustered application in the cluster.
• An evaluation that returns false classifies the process as a regular application running on the
cluster node.
The isMatch value is a function that contains two input variables, process and resource:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2687


<!-- page 2688 -->
• process: Process is the GlideRecord of the process application. It is determined by the Table
field in the classifier. In this example, it is the GlideRecord entry of the Application table
(cmdb_ci_app) for the process that is being classified. You have access to any field values for
the CI type such as name or version.
• resource: Resource is the GlideRecord entry in the Windows Cluster Resource table after the
resourceType condition has been applied. In the example, it is the GlideRecord entry of the
sixth row.
Examples of JavaScript for the Value field.
In the following example code: resourceType: "SQL Server" the query filters the Windows Cluster
Resources table entry for the Resource Type field that has a value that is equal to SQL Server. In
the following example table, the sixth record would be returned.
The following script indicates that if there is a resource of type SQL Server, the process is
classified as a clustered application.
resourceType: "SQL Server"
isMatch: function(process, resource) {
return true;
}
The following script indicates that if if there is a resource of type SQL Server, and the application
name is equal to the resource name, then the process is classified as a clustered application.
resourceType: "SQL Server"
isMatch: function(process, resource) {
if (process.name == resource.name)
return true;
}
If there are multiple matches to the resourceType condition, the matching function is called
multiple times. For the following resourceType example, the matching function is called twice
because there are two entries that have Physical Disk in the Resource Type column in the
sample Windows Cluster Resources table.
resourceType: "Physical Disk"
Windows Cluster Resources tab

Discovery with Software Asset Management
The table structure for managing software installations behaves differently when the Software
Asset Management (SAM) application is activated.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2688


<!-- page 2689 -->
The presence of this application affects the way Discovery stores the software installation data it
returns from a scan and require additional configuration within configuration item (CI) records.
The following tables are created when the Software Asset Management plugin is activated:
• Software Discovery Model [cmdb_sam_sw_discovery_model]
• Software Model [cmdb_software_product_model]
• Software Installation [cmdb_sam_sw_install]

Note: The original schema used by previous versions is not affected when the Software
Asset Management plugin is not activated.
When it runs, Discovery populates the Software Installation [cmdb_sam_sw_install] table.
The appropriate configuration item (CI) references the software data. A business rule
on this table runs, searching for a matching record on the Software Discovery Model
[cmdb_sam_sw_discovery_model] table. If a record exists in the Software Discovery Model
table, then the Software Installation table updates the record. If no record exists in the
Software Discovery Model table, then one is created.
These tables are not used by Discovery with Software Asset Management:
◦ Software [cmdb_ci_spkg]
◦ Software Model [cmdb_software_product_model]

Important: When SAM is installed, the Software Installation [cmdb_sam_sw_install]
table is the appropriate source for all current software data. This means you need to
update any related lists or customized reference fields you added to CI records.
Starting with the Kingston release, the Discovery populates the VMWare
License Key [samp_vmware_license_key] and VMWare License Key Usage
[samp_vmware_license_key_usage] tables. See Data collected for VMware Cloud Discovery for
more information on where Discovery saves vCenter data.
Configure a CI to display Software Asset Management data
After you activate the Software Asset Management plugin, configure the form for any computer
CI that you want to discover to show data from the Software Installation [cmdb_sam_sw_install]
table.

Before you begin

Role required: admin

Procedure
1. Open any computer CI record.
2. Configure the form to add the Software Installation related list and remove theSoftware
Installed related list.
Microsoft Exchange Client Access Server discovery
Discovery creates or updates a CMDB record when it detects a running instance of Microsoft
Exchange Client Access Server (Microsoft Exchange CAS).
By default, Discovery uses the CAS On Windows pattern to discover the Exchange Client
Access Server.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2689


<!-- page 2690 -->
Data collected by Discovery on the Exchange Client Access Server
The following data is collected on the Exchange Client Access Server
[cmdb_ci_exchange_cas] table:

Label

Field Name

Name

name

Version

version

Class

sys_class_name

Fully qualified domain name

fqdn

IP Address

ip_address

Installation directory

install_directory

Type

type

Exchange Hub Transport Servers discovery
Discovery creates or updates a CMDB record when it detects a running instance of Exchange
Hub.
By default, Discovery uses the Hub Transport Server On Windows pattern to discover Exchange
Hub Transport Servers.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Hub Transport Server On Windows
pattern.
ExchangeHub [cmdb_ci_exchange_hub]
Label

Field Name

Name

name

Version

version

Class

sys_class_name

Fully qualified domain name

fqdn

IP Address

ip_address

Installation directory

install_directory

Type

type

CI relationships
The Hub Transport Server On Windows pattern doesn't discover any relationships.
Exchange MailBox discovery
Discovery creates or updates a CMDB record when it detects a running instance of Exchange
Mailbox.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2690


<!-- page 2691 -->
Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Prerequisites
The Microsoft.Exchange.Management.PowerShell module must be installed on the
server that you want to discover.
The service winRM must be running on the host machine. Run the following command
in the Powershell window to verify: New-PSSession -ConfigurationName
Microsoft.Exchange -ConnectionUri "http://$hostname/PowerShell/"
-Authentication Kerberos

Pattern
By default, Discovery uses the MailBox On Windows pattern to discover Exchange MailBox.

Credentials
Configure these credentials:

Credential type

Additional notes

Applicative credentials

The user must be able to run Powershell commands against the
Exchange hosts.
Use Exchange Mailbox as the CI type for the applicative
credential.

Important: Do not use the Exchange Mailbox server CI
type.
Windows credentials

The OS user must be a domain user, not a local user for the
server.

Data collected
The following data is collected on the Exchange Mailboxes [cmdb_ci_exchange_mailbox] table:

Label

Field Name

Name

name

Version

version

Class

sys_class_name

Fully qualified domain name

fqdn

IP Address

ip_address

Installation directory

install_directory

Type

type

General software package discovery
General software packages are collections of programs that work together, often with similar
user interfaces. Examples include Microsoft Office 365 (Word, Excel, PowerPoint), and Apple's
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2691


<!-- page 2692 -->
iWork (Pages, Numbers, Keynote). Discovery identifies and classifies information about general
software packages. Data it collects include, Name, Version, Install Count, License Count,
Installation Date, Software, and more.
Data collected by Discovery on General Software Packages
Label

Table name

Field name

Source

Name

cmdb_ci_spkg

name

Various

Version

cmdb_ci_spkg

version

Various

Install count

cmdb_ci_spkg

install_count

Various

License count

cmdb_ci_spkg

license_count

Various

Microsoft SMS ID

cmdb_ci_spkg

msft_sms_id

Various

Installed on

cmdb_software_instance

installed_on

Various

Software

cmdb_software_instance

software

Various

GlassFish Server discovery
Discovery creates or updates a CMDB record when it detects a running instance of GlassFish
Server.
By default, Discovery uses the following patterns to perform the discovery: GlassFish
Server and GlassFish WAR.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Data collected by Discovery for GlassFish
The following data is collected in the GlassFish [cmdb_ci_appl_glassfish] and GlassFish Wars
[cmdb_ci_appl_glassfish_war] tables:

Label

Field Name

Name

name

Version

version

Class

sys_class_name

Fully qualified domain name

fqdn

IP Address

ip_address

Installation directory

install_directory

TCP port(s)

tcp_port

Configuration directory

config_directory

Configuration file

config_file

HP Operations Manager discovery
Discovery creates or updates a CMDB record when it detects a running instance of HP
Operations Manager.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2692


<!-- page 2693 -->
By default, Discovery uses the HP Operations Manager for Windows pattern to
discover the HP Operations Manager.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Data collected by Discovery for HP Operations Manager
The following data is collected in the HP Operations Manager
[cmdb_ci_appl_hp_operations] table:

Label

Field Name

Name

name

HP Service Manager discovery
Discovery creates or updates a CMDB record when it detects a running instance of HP Service
Manager.
By default, Discovery uses the HP Service Manager Application Server pattern to
discover HP Service Manager.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Data collected by Discovery for HP Service Manager
The following data is collected on the HP Service Manager [cmdb_ci_appl_hp_service]
table.

Label

Field Name

Name

name

Vendor

vendor

IBM App Connect Enterprise and HTTP listener discovery
Discovery and Service Mapping Patterns application uses the WMB patterns to discover
Integration Bus (formerly WebSphere Message Broker and IBM Integration Bus) and HTTP
listeners running on both Linux and Windows. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
By default, Discovery uses the following patterns to perform the discovery:
• WMB On UNIX
• WMB On Windows
• WMB HTTP Listener On UNIX
• WMB HTTP Listener On Windows
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2693


<!-- page 2694 -->
For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

To learn about IBM WebSphere Message Broker (WMB) and WMB HTTP Listener components
and versions that you can discover, see Detailed information on products discovered by ITOM
Visibility.

Prerequisites
Verify the applications are up to date
• Discovery and Service Mapping Patterns
• Visibility Content

Data collected by Discovery during horizontal discovery
Resources discovered by the WMB On UNIX pattern
IBM WebSphere Message Broker [cmdb_ci_appl_ibm_wmb]
Field

Description

Name [name]

Name of the message broker

Installation directory [install_directory]

Install directory of the message broker

Version [version]

Version of the message broker

Resources discovered by the WMB On Windows pattern
IBM WebSphere Message Broker [cmdb_ci_appl_ibm_wmb]
Field

Description

Name [name]

Name of the message broker

Installation directory [install_directory]

Install directory of the message broker

Version [version]

Version of the message broker

Resources discovered by the WMB HTTP Listener On UNIX pattern
IBM WMB Http Listener [cmdb_ci_appl_ibm_wmb_listener]
Field

Description

Name [name]

Name of the HTTP listener

Installation directory [install_directory]

Install directory of the HTTP listener

Resources discovered by the WMB HTTP Listener On Windows pattern

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2694


<!-- page 2695 -->
IBM WMB Http Listener [cmdb_ci_appl_ibm_wmb_listener]
Field

Description

Name [name]

Name of the HTTP listener

Installation directory [install_directory]

Install directory of the HTTP listener

IBM MQ discovery
The ServiceNow Discovery application uses the WMQ On Unix and WMQ On Windows patterns
to find IBM MQ (formerly IBM WebSphere MQ) resources. Discovering some of these resources
may require updating to the latest version of the Discovery and Service Mapping Patterns
application from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Discovery uses the following patterns to perform horizontal discovery:
• WMQ On Unix
• WMQ On Windows
For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Data collected by Discovery for IBM MQ
Discovery populates the data in the CMDB when running the WMQ patterns.
IBM MQ Manager (formerly IBM WebSphere MQ) [cmdb_ci_appl_ibm_wmq]
Label

Field Name

Name

name

Version

version

Installation directory

install_directory

Class

sys_class_name

Microsoft IIS server discovery
Discovery identifies and classifies information about Microsoft IIS servers.

Prerequisites
Install IIS Management Scripts and Tools on a Microsoft IIS Server.

Credentials
Configure these credentials:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2695


<!-- page 2696 -->
• Applicative credentials
• Windows credentials

Classifier, pattern, and probe

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Discovery uses these classifiers, probes, and patterns for IIS discovery:

Classifier

Trigger probes

Microsoft IIS Server

Pattern

IIS

• Horizontal discovery probe: launches patterns
• Windows - Get IIS Information*

*Probes inactive on new instances.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Data collected by Discovery for IIS Web Server
The following data is collected in the IIS Web Server [cmdb_ci_microsoft_iis_web_server] table:

Label

Field name

Name

name

Version

version

Type*

type

Running process command

running_process_command

Running process key parameters

running_process_key_parameters

*The Type is always IIS.
The following data is collected in the Web site [cmdb_ci_web_site] table:

Label

Field name

Source

Name

name

wmi

TCP Port

tcp_port

wmi

Microsoft SharePoint discovery
Discovery creates or updates a CMDB record when it detects a running instance of Microsoft
SharePoint.
By default, Discovery uses the SharePoint pattern to discover Microsoft SharePoint. For
information on supported Microsoft SharePoint versions, see Detailed information on products
discovered by ITOM Visibility.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2696


<!-- page 2697 -->
Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Data collected by Discovery for Microsoft SharePoint
The following data is collected in the SharePoints [cmdb_ci_appl_sharepoint] table:

Label

Field Name

Name

name

Class

sys_class_name

Fully qualified domain name

fqdn

IP Address

ip_address

Version

version

NGINX web server discovery
NGINX is an open source web server with a load balancer. Discovery identifies the web server
and information related to the load balancer.
Discovery identifies NGINX server software using the following process:
1. The NGINX Process Classifier detects a running process that matches the following criteria
during the exploration of a Linux server:
◦ Name starts with nginx
◦ Name contains master
2. If there is a match:
◦ A record is created in the NGINX Web Server [cmdb_ci_nginx_web_server] table.
◦ A Runs on relationship is created in the CI Relationship [cmdb_rel_ci] table for a Linux server
(Linux Server [cmdb_ci_linux_server]) and for an NGINX web server (NGINX Web Server
[cmdb_ci_nginx_web_server]).
The following two probes are triggered:
▪ NGINX – Version: This probe contains a Bourne shell script. It determines the version of
NGINX and populates the NGINX Web Server [cmdb_ci_nginx_web_server] table.
▪ NGINX – Get Configuration: This probe contains a Bourne shell script and an argument
that determines the path of the NGINX configuration file. The probe identifies configuration
parameters based on keywords within the configuration file and returns them as a single
payload result.
The sensor on the ServiceNow instance parses the payload result and populates the CMDB.
You must have the following requirements to discover an NGINX webserver:
• NGINX is installed and running on the server.
• The MID Server has access to the NGINX configuration file, which is /etc/nginx/
nginx.conf by default.

Requirements
For NGINIX servers:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2697


<!-- page 2698 -->
• Ensure that the NGINX software is installed and running on the server.
• Grant the MID Server has access to the NGINX configuration file, which is /etc/nginx/
nginx.conf by default.
• Enable secure shell (SSH) commands to identify the following associated elements:
◦ NGINX Version
◦ NGINX Get Configuration
The following probes require execute privileges to run commands:
Commands
Probe

Commands

Nginx – Version

nginx

Nginx – Get Configuration

echo, sed, httpd, cut, grep, egrep (within the Bourne shell script)

Note: The Nginx pattern performs top-down discovery on both Windows and Linux
servers. For information on prerequisites for top-down discovery for NGINX web servers,
see Prerequisites for performing top-down discovery using Service Mapping.

Probes and Sensors
Discovery identifies NGINX server software using the following process:
1. The Nginx Process Classifier detects a running process that matches the following criteria
during the exploration of a UNIX server:
◦ The name of the process starts with nginx.
◦ The name of the process contains master.
2. If there is a match:
◦ A record is created in the Web Server [cmdb_ci_web_server] table.
◦ A Runs on relationship is created in the CI Relationship [cmdb_rel_ci] table for the Linux
Server [cmdb_ci_linux_server] table and the Web Server [cmdb_ci_web_server] table.
3. The following two probes are triggered:
◦ Nginx – Version: this probe contains a Bourne shell script. It determines the version of
NGINX and populates the Web Server [cmdb_ci_web_server] table.
◦ Nginx – Get Configuration: this probe contains a Bourne shell script and an argument that
determines the path of the NGINX configuration file. The probe identifies configuration
parameters based on keywords within the configuration file and returns them as a single
payload result.
4. The sensor on the ServiceNow instance processes the payload and populates the CMDB.

Data Collected
Discovery creates or updates CMDB records when it detects a running NGINX process. The
following data is collected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2698


<!-- page 2699 -->
Data Collected by Discovery for NGINX
Table Name

Field and Label Name

Probe

Name

cmdb_ci_lb_appl [name]

Nginx– Get
Configuration

IP Address

cmdb_ci_lb_appl [ip_address]

Nginx– Get
Configuration

Last Discovered

cmdb_ci_lb_appl [last_discovered]

Nginx– Get
Configuration

Version

cmdb_ci_lb_appl [version]

Nginx– Version

Name

cmdb_ci_lb_pool_member [name]

Nginx– Get
Configuration

Last Discovered

cmdb_ci_lb_pool_member
[last_discovered]

Nginx– Get
Configuration

IP Address

cmdb_ci_lb_pool_member [ip_address]

Nginx– Get
Configuration

Load Balancer

cmdb_ci_lb_pool_member
[load_balancer]

Nginx– Get
Configuration

Fully Qualified Domain
Name

cmdb_ci_lb_pool_member [fqdn]

Nginx– Get
Configuration

Port

cmdb_ci_lb_pool_member [port]

Nginx– Get
Configuration

Last Discovered

cmdb_ci_lb_service [last_discovered]

Nginx– Get
Configuration

IP Address

cmdb_ci_lb_service [ip_address]

Nginx– Get
Configuration

Name

cmdb_ci_lb_service [name]

Nginx– Get
Configuration

Load Balancer

cmdb_ci_lb_service [load_balancer]

Nginx– Get
Configuration

Input URL

cmdb_ci_lb_service [input_url]

NGINX – Get
Configuration

Relationships
In the table [cmdb_rel_ci] the following relationships are populated:
• The records in the cmdb_ci_lb_appl table run on the cmdb_ci_web_server table records.
• The records in the cmdb_ci_lb_service table use the cmdb_ci_lb_pool table records.
• The records in the cmdb_ci_pool table are used by the cmdb_ci_service table records.
• The records in the cmdb_ci_pool table are members of the cmdb_ci_pool_member table.
• The records in the cmdb_ci_pool_member table are members of cmdb_ci_pool table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2699


<!-- page 2700 -->
Oracle Tuxedo discovery
The ServiceNow Discovery application uses the Tuxedo pattern to find Oracle Tuxedo resources.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Discovery uses the Tuxedo pattern to run horizontal discovery.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Data collected by Discovery for Oracle Tuxedo
Discovery populates the data in the CMDB when running the Tuxedo pattern.
Tuxedo [cmdb_ci_appl_tuxedo]
Name

Description

Port [port]

The network communication port used by Oracle Tuxedo services and
processes for network communication.

Domain [domain] The logical grouping of Oracle Tuxedo components and services operating
within a defined environment.
Installation
The location that contains all binaries and configuration files necessary for
directory
running Oracle Tuxedo.
[install_directory]
Log dir [log_dir]

The directory that stores all log files generated by Oracle Tuxedo for
monitoring and troubleshooting.

Version [version] The specific release of Oracle Tuxedo that is installed and currently in use.
Mode [mode]

The definition of the interaction protocol between Oracle Tuxedo and
various clients or other domains, such as Jolt, Workstation, or Domain
Gateway, based on the operational configuration.

Puppet automation software discovery
Discovery identifies Puppet Masters running on UNIX servers.
Discovery uses secure shell (SSH) commands to collect information.
To access Puppet Master records, navigate to All > Configuration > Automation Servers >
Puppet Masters. You can view the resources in the related list of the Puppet Master record.

How the Puppet Master probe works
Discovery identifies the Puppet Master using the following process:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2700


<!-- page 2701 -->
1. The UNIX - Active Processes probe detects a running process that matches one of the
following criteria:
◦ The name of the process is pe-httpd.
◦ The name of the process is ruby and the parameters of the process contain puppet
master.
2. If there is a match on one of these criteria:
◦ A record is created in the Puppet Master table [cmdb_ci_puppet_master] if one does not
already exist for that running process.
◦ The Puppet - Master Info probe is triggered. The sensor of this probe populates additional
information in the Puppet Master [cmdb_ci_puppet_master] record.

Requirements to discover a Puppet master
By default, Discovery identifies Puppet Masters running on UNIX servers. Discovery uses secure
shell (SSH) commands to collect information.
The credentials used to discover the UNIX server must have privileges to execute the following
commands. The use of sudo is supported, but you must add the must_sudo parameter to the
probe.

Probe

Commands

Puppet – Master Info

puppet, echo, hostname (within the Borne
shell script)

Puppet – Certificate Requests

puppet

Puppet – Manifests

echo, sed, find (within the Bourne shell script)

Puppet – Modules

puppet

Data collected
Data collected by Discovery for Puppet automation software, by default
Name

Puppet Master
[cmdb_ci_puppet_master]

name

Puppet - Master
Info

Configuration directory Puppet Master
[cmdb_ci_puppet_master]

config_directory Puppet - Master
Info

Manifest directory

Puppet Master
[cmdb_ci_puppet_master]

manifestdir

Puppet - Master
Info

Module path

Puppet Master
[cmdb_ci_puppet_master]

modulepath

Puppet - Master
Info

Fully qualified domain
name

Puppet Master
[cmdb_ci_puppet_master]

fqdn

Puppet - Master
Info

IP Address

Puppet Master
[cmdb_ci_puppet_master]

ip_address

Puppet - Master
Info

Version

Puppet Master
[cmdb_ci_puppet_master]

version

Puppet - Master
Info

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2701


<!-- page 2702 -->
Add the must_sudo parameter to the Puppet probe
To use the Puppet probe with sudo, you must add the must_sudo parameter to each probe that
requires it.

Before you begin

Role required: admin

About this task

You add the must_sudo parameter for each Puppet probe.

Procedure
1. Navigate to All > Discovery > Probes.
2. In the Search field, search on the name Puppet.
3. Click the name of the probe.
For example, Puppet Master - Info.
4. In the Related Links pane, select the Probe parameters tab.
5. Click New.
6. In the Name field, enter must_sudo
7. In the Value field, enter true.
8. Click Submit.
SAP products discovery
ITOM Visibility can discover SAP applications, SAP HANA Database, and SAP HANA DB Catalog.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
To learn about the SAP components and their versions that you can discover, refer to Detailed
information on products discovered by ITOM Visibility.

Prerequisites
Verify that the applications are up to date
Discovery and Service Mapping Patterns
Visibility Content
CMDB CI Class Models
Verify the configuration of the credentials
• (If hosted on a UNIX server) On the ServiceNow AI Platform, configure applicative
credentials
and SSH credentials . The SSH credentials are used to create
connections from SAP Central Instance (CI) to other applications and devices. In
addition, provide the user elevated rights to be able to run commands requiring a
privileged user: Service Mapping commands requiring a privileged user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2702


<!-- page 2703 -->
• (If hosted on a Windows server) On the ServiceNow AI Platform, configure
Windows credentials
to create connections from SAP CI to other applications
and devices.
• (Optional) For discovering using the WinRM protocol, see Configure WinRM
trusted hosts on MID Server .
• (Optional for top-down discovery by Service Mapping) Provide a user with
permissions to run SOAP on RFC read table function.
• (Optional for top-down discovery by Service Mapping) If your organization
deploys SAP Digital Business Services using web services and you want to map
all connected services, perform the following actions:
◦ Configure applicative credentials for a user with permissions to access the
following tables: CVERS, DBCONS, and RFCDES.
◦ Ensure that you have the web service URL. For information on how to create
web services, see https://blogs.sap.com/2012/10/24/how-to-create-webservices-abap-based/ .
SAP HANA 2.0 DB Catalog on UNIX
Verify that the Applicative Credentials for SAP HANA DB App Creds are configured
with SAP Hana Db [cmdb_ci_appl_sap_hana_db] as CI type.
Verify the permissions to run Service Mapping commands
Service Mapping commands not requiring a privileged user
Verify the user has the permissions to run the Patterns queries
The following commands are executed when running the SAP HANA DB and SAP
HANA DB Catalog Patterns.
• select * from schemas;
• select * from M_HOST_INFORMATION where upper(KEY) like
'%TIMEZONE%';
• select SCHEMA_NAME, round(sum(TABLE_SIZE) /1024/1024)
from M_TABLES GROUP BY SCHEMA_NAME

The query type

Schemas Info

Fallback commands executed in order

1. $hdbsql_path + " -n " +
$entry_point.ip_address
+ ":" + $query_port +
" -i " + $digits + "
-u '$$username$$' -p '$
$password$$' \"select *
from schemas;\""
2. $hdbsql_path + " -n "
+ $ip_address + ":" +
$query_port + " -i " +
$digits + " -u '$$username
$$' -p '$$password$$'
\"select * from schemas;
\""

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2703


<!-- page 2704 -->
The query type

Fallback commands executed in order

3. $hdbsql_path + " -n "
+ $server_name + ":" +
$query_port + " -i " +
$digits + " -u '$$username
$$' -p '$$password$$'
\"select * from schemas;
\""
4. $hdbsql_path + " -n
localhost -i " + $digits
+ " -u '$$username$$' -p
'$$password$$' \"select *
from schemas;\""
Time Zone:

1. $hdbsql_path + " -n " +
$entry_point.ip_address
+ ":" + $query_port +
" -i " + $digits + "
-u '$$username$$' -p '$
$password$$' \"select *
from M_HOST_INFORMATION
where upper(KEY) like
'%TIMEZONE%';\""
2. $hdbsql_path + " -n "
+ $ip_address + ":" +
$query_port + " -i " +
$digits + " -u '$$username
$$' -p '$$password$
$' \"select * from
M_HOST_INFORMATION where
upper(KEY) like '%TIMEZONE
%';\""
3. $hdbsql_path + " -n "
+ $server_name + ":" +
$query_port + " -i " +
$digits + " -u '$$username
$$' -p '$$password$
$' \"select * from
M_HOST_INFORMATION where
upper(KEY) like '%TIMEZONE
%';\""
4. $hdbsql_path + " -n
localhost -i " + $digits
+ " -u '$$username$$' -p
'$$password$$' \"select
* from M_HOST_INFORMATION
where upper(KEY) like
'%TIMEZONE%';\""

Disk Size

1. $hdbsql_path + " -n " +
$entry_point.ip_address
+ ":" + $query_port

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2704


<!-- page 2705 -->
The query type

Fallback commands executed in order

+ " -i " + $digits
+ " -u '$$username$
$' -p '$$password$$'
\"select SCHEMA_NAME,
round(sum(TABLE_SIZE) /1024/
1024) from M_TABLES GROUP
BY SCHEMA_NAME;\""
2. $hdbsql_path + " -n "
+ $ip_address + ":" +
$query_port + " -i " +
$digits + " -u '$$username
$$' -p '$$password$$'
\"select SCHEMA_NAME,
round(sum(TABLE_SIZE) /1024/
1024) from M_TABLES GROUP
BY SCHEMA_NAME;\""
3. $hdbsql_path + " -n "
+ $server_name + ":" +
$query_port + " -i " +
$digits + " -u '$$username
$$' -p '$$password$$'
\"select SCHEMA_NAME,
round(sum(TABLE_SIZE) /1024/
1024) from M_TABLES GROUP
BY SCHEMA_NAME;\""
4. $hdbsql_path + " -n
localhost -i " + $digits
+ " -u '$$username$
$' -p '$$password$$'
\"select SCHEMA_NAME,
round(sum(TABLE_SIZE) /1024/
1024) from M_TABLES GROUP
BY SCHEMA_NAME;\""

Verify the configuration of the Discovery schedule
For more information, see Running discoveries in your network

Data collected by Discovery during horizontal discovery
Table and field

Description

SAP ASCS [cmdb_ci_appl_sap_ascs]
Name [name]
Version [version]

Data collected for SAP ABAP Central Services
(ASCS)

Installation directory [install_directory]
Configuration directory [config_directory]
Configuration file [confi_file]
Instance name [instance_name]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2705


<!-- page 2706 -->
Table and field

Description

Instance number [instance_number]
System ID [sid]
System directory [system_directory ]
System type [system_type]
Transport domain [transport_domain]
SAP Business Objects CMS server [cmdb_ci_appl_sap_bo]
Name [name]
Server Name [server_name]

Data collected for SAP Business Objects CMS
Server

Version [version]
Installation directory [install_directory]
SAP SCS Application [cmdb_ci_appl_sap_scs]
Name [name]

Data collected for SAP Central Services (SCS)

Version [version]
Installation directory [install_directory]
Configuration directory [config_directory]
Configuration file [config_file]
Instance name [instance_name]
Instance number [instance_number]
System ID [sid]
System directory [system_directory]
System type [system_type]
Transport domain [transport_domain]
SAP CI Application [cmdb_ci_appl_sap_ci]
Name [name]

Data collected for SAP CI

Version [version]
Installation directory [install_directory]
Configuration directory [config_directory]
Configuration file [config_file]
Instance name [instance_name]
Instance number [instance_number]
System ID [sid]
System directory [system_directory]
System type [system_type]
Transport domain [transport_domain]
SAP DI Applications [cmdb_ci_appl_sap_di]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2706


<!-- page 2707 -->
Table and field

Description

Name [name]

Data collected for SAP Dialog Instance (DI)

Version [version]
Installation directory [install_directory]
Configuration directory [config_directory]
Configuration file [config_file]
Instance name [instance_name]
Instance number [instance_number]
System ID [sid]
System directory [system_directory]
System type [system_type]
Transport domain [transport_domain]
SAP ERS Application [cmdb_ci_appl_sap_ers]
Name [name]
Version [version]

Data collected for SAP Enqueue Replication
Server (ERS)

Installation directory [install_directory]
Configuration directory [config_directory]
Configuration file [config_file]
Instance name [instance_name]
Instance number [instance_number]
System ID [sid]
System directory [system_directory]
System type [system_type]
Transport domain [transport_domain]
HANA Database [cmdb_ci_appl_sap_hana_db]
Name [name]

Data collected for SAP HANA Database

IP Address [id_address]
Class [sys_class_name]
Fully qualified domain name [fqdn]
Version [version]
Installation directory [install_directory]
SAP SID [cmdb_ci_sap_sid]
Name [name]
Version [version]
Patch Level Info [sap_patch_info]

Data collected for the SAP System
Identification (SID) code is a unique
identification code for an SAP R/3 installation.
An SID is a three-character code like D10,
PRD, or E56. An R/3 installation consists of
a database server plus several application

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2707


<!-- page 2708 -->
Table and field

Description

servers. ITOM Visibility uses the SAP SID
shared library pattern to discover SIDs for SAP
applications.

Data collected by the SAP HANA DB Catalog on UNIX pattern during horizontal
discovery
SAP HANA Catalog [cmdb_ci_db_hana_catalog]
Field

Description

Catalog Owner [catalog_owner]

The user ID of the schema owner.

Catalog Create Time [catalog_create_time]

The catalog creation time.

Disk Allocated Size (MB)
[disk_allocated_size_mb]

The allocated Disk size in MB.

Database Reference [database_instance]

The reference to the SAP HANA DB.

CI Relationships
The SAP SID shared library pattern creates CI relationships between all major CI applications
and SAP System ID.

CI

Relationship

CI

SAP ERS Application
[cmdb_ci_appl_sap_ers]

Uses::Used by

SAP SID [cmdb_ci_sap_sid]

SAP DI Applications
[cmdb_ci_appl_sap_di]

Uses::Used by

SAP SID [cmdb_ci_sap_sid]

SAP ASCS
[cmdb_ci_appl_sap_ascs]

Uses::Used by

SAP SID [cmdb_ci_sap_sid]

SAP CI Application
[cmdb_ci_appl_sap_ci]

Uses::Used by

SAP SID [cmdb_ci_sap_sid]

SAP SCS Application
[cmdb_ci_appl_sap_scs]

Uses::Used by

SAP SID [cmdb_ci_sap_sid]

SAP JC Application
[cmdb_ci_appl_sap_jc]

Uses::Used by

SAP SID [cmdb_ci_sap_sid]

SAP HANA DB Catalog on UNIX CI relationships

CI

Relationship

SAP HANA DB
Contains::Contained by
[cmdb_ci_appl_sap_hana_db]

CI

SAP HANA DB Catalog
[cmdb_ci_db_hana_catalog]

Limitations
Service Mapping can map only one instance of ASCS per deployment.
The SAP HANA DB Catalog pattern can only run on UNIX.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2708


<!-- page 2709 -->
Map application services containing SAP applications
Map an service instance containing an SAP applications and verify that Service Mapping
discovered all SAP components correctly.

Before you begin

Role required: service_mapping_admin

Procedure
1. Create a service instance.
a. Navigate to All > Service Mapping > Service Instances.
b. Click New.
The Discoverable by Service Mapping option is selected by default.
c. In the Name field, enter a descriptive name for the service instance.
2. Define the entry point for this application service:
a. Select the SAP application tile.
The Discoverable by Service Mapping option is selected by default.
b. Define the entry point as follows:
▪ A URL to any SAP module
▪ A TCP connection to any SAP module
▪ To discover environments with connected services, provide the URL to the web service in
the following format:
http://<hostname>:<port>/sap/bc/srt/scs/sap/z_servicenow_re
ad?sap-client=003
c. Click Add.
d. Click Save.
3. Click Additional Info on the left and clear the Traffic based discovery check box.
4. Click Update.
5. Verify that the mapping result is satisfactory:
a. Click View Map and wait until the mapping is complete.
It may take a few minutes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2709


<!-- page 2710 -->
b. Review the application service map and make sure that the service layout is as in the
following examples.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2710


<!-- page 2711 -->
If the SAP environment integrates SAP components with Tibco services, you can expect this
mapping result:

Troubleshoot application services containing SAP applications
Fix basic discovery issues based on the symptoms and discovery messages.

Symptom
The application service map in Service Mapping displays the following message Failed to
discover <SAP component name>.

Cause
The CI failed to identify, and process detection retrieves the process attributes.

Solution
Perform the following steps:
1. Open the failed pattern step in Debug mode:
a. On the business service or service instance map, right-click the error message and select
Show discovery log.
The Discovery Log window opens.
b. In the right pane, locate the failed identification section and the failed step within this
section.
c. Select this failed identification section and click Debug.
The Debug Identification Section window opens.
d. If necessary, fill in the required details and click Connect.
2. Click the set variables step under Steps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2711


<!-- page 2712 -->
3. Make sure that the regular expression includes SYS as shown in the following figure.

4. Click the set install_dir step under Steps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2712


<!-- page 2713 -->
5. Make sure that the regular expression includes sap as shown in the following graphic.

Symptom
Service Mapping fails to discover the web service your organization uses to deploy SAP digital
business services.

Cause 1
The pattern fails at the EVAL function for identifying the web service.

Solution 1
1. Verify that the format of the entry point is the URL to the web service as described in the
mapping procedure.
2. Verify that you configured the necessary applicative credentials as described in the mapping
procedure.
3. Check that the discovery log contains the following message: GROOVE_CODE_FAILURE: No
such property: com for class: Script1.
4. Open the failed pattern step in Debug mode:
a. On the business service or service instance map, right-click the error message and select
Show discovery log.
The Discovery Log window opens.
b. In the right pane, locate the failed identification section and the failed step within this
section.
c. Select this failed identification section and click Debug.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2713


<!-- page 2714 -->
The Debug Identification Section window opens.
d. If necessary, fill in the required details and click Connect.
5. Pattern Designer opens showing the selected identification section.
6. Select the failed step on the right.
7. Verify that the function running on EVAL is
com.snc.sw.util.HttpInvokerUtil.post.

8. Try to map the application service again and check the result.

Cause 2
The pattern fails at the EVAL function for identifying the web service, because the web service
was configured incorrectly.

Solution 2
1. Verify that the format of the entry point is the URL to the web service as described in the
mapping procedure.
2. Verify that you configured the necessary applicative credentials as described in the mapping
procedure.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2714


<!-- page 2715 -->
3. Check that the discovery log contains the following message: "Debug run railed: Test step
failed. GROOVE_CODE_FAILURE: All command implementations (HTTP) failed on host 10.x.x.x.
Host must be down or unreachable. ()"
4. Recreate the web service as described in https://blogs.sap.com/2012/10/24/how-to-createweb-services-abap-based/ .
5. Try to map the application service again and check the result.

Cause 3
The pattern fails at the EVAL function for identifying the web service, because the URL
configured in the entry point is not correct or because the MID Server cannot access this URL.

Solution 3
1. Verify that the format of the entry point is the URL to the web service as described in the
mapping procedure.
2. Verify that you configured the necessary applicative credentials as described in the mapping
procedure.
3. Check that the discovery log contains the following message: "Debug run railed: Test step
failed. GROOVE_CODE_FAILURE: All command implementations (HTTP) failed on host 10.x.x.x.
Host must be down or unreachable. ()"
4. Verify that you used the correct URL for the service entry point:
a. In the TCode SOAMANAGER, navigate to Simplified Web Service Configuration.
b. On the Configuration tab of the Simplified Service Configuration window, search for the web
service that is part of the service instance.
c. Click the check box under User Name/Password (Basic) for this web service.
d. Click Show Details.
e. On the Details of the Service Definition window, verify the actual URL of the web service
under WSDL URLs.
f. If necessary, fix the URL you configure for the entry point and try to map the service instance
again.

Cause 4
MID Server cannot access this URL configured in the entry point of the service instance.

Solution 4
1. Verify that the format of the entry point is the URL to the web service as described in the
mapping procedure.
2. Verify that you configured the necessary applicative credentials as described in the mapping
procedure.
3. Check that the discovery log contains the following message: "Debug run failed: Test step
failed. GROOVE_CODE_FAILURE: All command implementations (HTTP) failed on host 10.x.x.x.
Host must be down or unreachable. ()"
4. Verify that you used the MID Server that can access the URL you configured in the service
entry point:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2715


<!-- page 2716 -->
a. Log into the MID Server host remotely.
b. Open a browser.
c. Paste the URL into the browser address bar and press Enter.
d. If the page does not open, it means that there is a network issue, for example, there is a
firewall that prevents the MID Server from accessing this URL.
5. Resolve the network issue and verify that the MID Server can access the URL as described in
step 4.

Cause 5
MID Server cannot access this URL configured in the entry point of the service instance.

Solution 5
1. Verify that the format of the entry point is the URL to the web service as described in the
mapping procedure.
2. Verify that you configured the necessary applicative credentials as described in the mapping
procedure.
3. Check that the discovery log contains the following message: "Debug run railed: Test step
failed. GROOVE_CODE_FAILURE: All command implementations (HTTP) failed on host 10.x.x.x.
Host must be down or unreachable. ()"
4. Verify that the applicative credentials you configured on the ServiceNow AI Platform for the
web service are valid:
a. Log into the MID Server host remotely.
b. Open a browser.
c. Paste the URL into the browser address bar and press Enter.
d. The browser page displays the credentials pop-up window.
e. Enter the credentials and check that the page opens.
The page does not open, it means that the configured applicative credentials are incorrect.
5. Find out the right credentials.
6. Verify the new credentials as described in step 4.
7. If the page opens after you use the new credentials, configure these credentials as applicative
credentials on the ServiceNow AI Platform.

Cause 6
MID Server cannot access this URL configured in the entry point of the service instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2716


<!-- page 2717 -->
Solution 6
1. Verify that the format of the entry point is the URL to the web service as described in the
mapping procedure.
2. Check that the discovery log contains the following message: "Debug run railed: Test step
failed. GROOVE_CODE_FAILURE: Missing applicative credentials for CI type <name of the CI
type>".
3. Verify that you defined applicative credentials for the relevant CI according as described in
Map application services containing SAP applications.
SQL Server Analysis Services (SSAS) discovery
The Discovery and Service Mapping application uses the SSAS pattern to find SQL Server
Analysis Services (SSAS) on your infrastructure. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store..
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify the applications are up to date.
Discovery and Service Mapping Patterns
CMDB CI Class Models
Visibility Content
Verify the configuration of credentials
®

On the ServiceNow AI Platform , verify the configuration of the Windows
credentials. For more information, see Windows credentials

Data collected during horizontal discovery
Discovery populates the following data when running the SSAS pattern.

SQL Server Analysis Services [cmdb_ci_db_mssql_analysis]
Label

Field

Description

Name

name

The SSAS on the Windows sever name

IP Address

ip_address

The SSAS IP address

Version

version

The SSAS version

Edition

edition

The SSAS edition

Installation directory

install_directory

The SSAS install directory

Instance Name

instance

The SSAS instance name

TCP port(s)

tcp_port

The SSAS TCP port

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2717


<!-- page 2718 -->
Microsoft SQL Server Integration Services (SSIS) discovery
The Discovery and Service Mapping application uses the SSIS pattern to find SQL Server
Integration Services (SSIS) on your infrastructure. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify the plugins setup
Discovery and Service Mapping Patterns
CMDB CI Class Models
Visibility Content
Verify the configuration of credentials
®

On the ServiceNow AI Platform , verify the configuration of the Windows
credentials. For more information, see Windows credentials

Data collected during horizontal discovery
Discovery populates the following data when running the SSIS pattern.

SQL Server Integration Services [cmdb_ci_db_mssql_integration_list]
Label

Field

Description

Name

name

The SSIS on the Windows sever name

IP Address

ip_address

The SSIS IP address

Version

version

The SSIS version

Edition

edition

The SSIS edition

Installation directory

install_directory

The SSIS install directory

Instance Name

instance

The SSIS instance name

Sun Java Enterprise System (JES) discovery
Discovery creates or updates a CMDB record when it detects a running instance of Sun Java
Enterprise System (JES).
By default, Discovery uses the Sun JES pattern pattern to discover Sun Java Enterprise
System.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Data collected by Discovery for Sun Java Enterprise System
The following data is collected in the JES [cmdb_ci_email_server_jes] table:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2718


<!-- page 2719 -->
Label

Field Name

Name

name

IP Address

ip_address

Class

sys_class_name

Fully qualified domain name

fqdn

Tomcat server discovery
Discovery identifies and classifies information about Tomcat server Web applications running on
UNIX machines.
Discovery can identify and classify Web applications present in either the CATALINA_BASE
directory or the CATALINA_HOME directory.
The classifier that finds Tomcat server processes uses the condition: [Parameters] [contains]
[org.apache.catalina.startup.Bootstrap].

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Credentials
Configure these credentials:
• Applicative credentials
• SSH credentials
For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.

Classifier, pattern, and probes
Classifier

Tomcat

Trigger probes

• Horizontal pattern: launches
patterns

Pattern

Tomcat

• SSHCommand-Tomcat - Find
web.xml List*
• SSHCommand-Tomcat - Get
server.xml*
• SSHCommand-Tomcat - Get
Version*

*Probes inactive on new instances.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2719


<!-- page 2720 -->
Data collected
Discovery collects the following data on the Tomcat [cmdb_ci_app_server_tomcat] table for both
Unix and Windows:

Label

Field name

Source

Name

name

server.info

Install Directory

install_directory

server.xml

Version

version

server.info

Server Port

server_port

server.xml

Attributes

attributes

server.xml

The following data is collected on the Tomcat Connector [cmdb_ci_tomcat_connector] table for
both Unix and Windows:

Label

Field name

Source

Tomcat

tomcat

server.xml

Port

port

server.xml

The following data is collected on the Web Application [cmdb_ci_web_application] table for both
Unix and Windows:

Label

Field name

Source

Description

description

web.xml

Document base

document_base

web.xml

App server

app_server

web.xml

Relationships
Parent class

Relationship

Child class

cmdb_ci_app_server_tomcat

Contains::Contained by

cmdb_ci_web_application

WebLogic application server discovery
Discovery creates or updates a CMDB record when it detects an instance of an Oracle or BEA
Weblogic application server running on a Windows or Linux system.

Requirements
For Windows
• PowerShell must be enabled on the MID Server.
• The WebLogic Administration Server instances that start via WebLogic
NodeManager must have the -Dweblogic.RootDirectory=<path>
parameter defined upon server startup. The Windows credential must also have
read permissions on the config.xml file.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2720


<!-- page 2721 -->
For Linux
• Discovery requires the use of these Bourne shell commands:
◦ find
◦ cat
◦ dirname
• WebLogic administration server instances started via NodeManager must have
the -Dweblogic.RootDirectory=<path> parameter defined and visible
through the Linux ps process stat command (for each AdminServer) for the
rest of the Linux WebLogic application server and web application information to
be populated in the CMDB.
• The following configuration must be set on the sudorers file:
User ALL=(root) NOPASSWD: /bin/sh *
User is the user name on the SSH credential that you create for this discovery.
• This command must be able to be run:
/bin/sh /tmp/snc-*-findcat.sh * *"
Do not make any changes to findcat.sh.
• If you are using probes, not patterns, for Weblogic discovery, the Linux Weblogic - Find config.xml probe must specify this parameter and
value: must_sudo = true

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Credentials
• Applicative credentials
• Windows credentials
• SSH credentials

Classifier, pattern, and probes
Classifier

Weblogic Server

Trigger probes

• Horizontal Pattern: launches
patterns

Pattern

WebLogic

• Windows - Weblogic - Get
web.xml*
• Windows - Weblogic - Find
config.xml*
• Linux - Weblogic - Find
config.xml*

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2721


<!-- page 2722 -->
*For new instances, these probes are inactive on the classifier. Discovery uses patterns for
discovery.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Data collected on Windows
Label

Table Name

Field Name

Source

Name

cmdb_ci_app_server_weblogic name

running process

Version

cmdb_ci_app_server_weblogic version

config.xml

Weblogic
domain

cmdb_ci_app_server_weblogic weblogic_domain config.xml

TCP port(s)

cmdb_ci_app_server_weblogic tcp_port

web.xml and running
process

Name

cmdb_ci_web_application

name

config.xml

Document
base

cmdb_ci_web_application

document_base

config.xml

Description

cmdb_ci_web_application

description

web.xml

Servlet class

cmdb_ci_web_application

servlet_class

web.xml

Servlet name

cmdb_ci_web_application

servlet_name

web.xml

App server

cmdb_ci_web_application

app_server

config.xml

TCP port(s)

cmdb_ci_web_application

tcp_port

web.xml

Data collected on Linux
Table

Field

Source

cmdb_ci_app_server_weblogic Name (name)

running process

cmdb_ci_app_server_weblogic TCP port (tcp_port)

running process

cmdb_ci_app_server_weblogic Version (version)

config.xml

cmdb_ci_app_server_weblogic Weblogic domain
(weblogic_domain)

config.xml

cmdb_ci_web_application

Name (name)

config.xml

cmdb_ci_web_application

Context path (context_path)

config.xml

cmdb_ci_web_application

App server (app_server)

config.xml

Relationship type

Child class

Relationship
Parent class

cmdb_ci_app_server_weblogic Runs on::Runs

cmdb_ci_windows_server or
cmdb_ci_linux_server

cmdb_ci_app_server_weblogic Contains::Contained by

cmdb_ci_web_application

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2722


<!-- page 2723 -->
Parent class

Relationship type

cmdb_ci_app_server_weblogic Depends on::Used by

Child class

cmdb_ci_app_server_weblogic
This relationship is made
between an AdminServer
and any managed servers it
encapsulates.

Example Weblogic relationships

Add sudo access for the Weblogic - Find config.xml probe
If you are not using the Weblogic pattern, you can add sudo privileges to the Linux, the Weblogic
- Find config.xml probe.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Discovery Definition > Probes.
2. Search for and select the Linux - Weblogic - Find config.xml probe.
3. In the Probe Parameters related list, clickNew
4. Use the following information to complete the form

Probe

Commands

Name

must_sudo

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2723


<!-- page 2724 -->
Probe

Commands

Value

true

5. Click Submit
Identifying Windows WebLogic application servers
If you are not using the Weblogic pattern, Discovery follows this process when it uses the
Windows - Active Processes or Linux - Active Processes probes.
This process describes the use of probes, which are active on your instance if you upgrade. For
new instances, Discovery uses the Weblogic pattern.
1. The Windows - Active Processes probe or Linux - Active Processes detects a running process
that matches one of the follow criteria:
◦ The parameters of the process contain weblogic.Server.
◦ The parameters of the process contain -Dweblogic.name.
2. If there is a match on one of the criteria:
◦ A record is created in the BEA Weblogic [cmdb_ci_app_server_weblogic] table. The record is
populated with the server name and TCP port, which is gathered from the running process.
◦ The Windows - Weblogic - Find config.xml probe or the Linux - Weblogic - Find
config.xml probe triggers. The sensor of this probe populates additional information
in the BEA Weblogic [cmdb_ci_app_server_weblogic] record and the Web Application
[cmdb_ci_web_application] record if applicable.
3. The Windows - Weblogic - Find config.xml probe or the Linux - Weblogic - Find config.xml
probe attempts to find the related config.xml file for the server by:
◦ Using the -Dweblogic.RootDirectory=<path> parameter defined in the running
process.
◦ [Windows] Searching for config.xml files under the –Dplatform.home=<path>
parameter defined in the running process (not as efficient using the parameters of the
process).
◦ [Linux] Searching for the parent process that started the WebLogic server (only viable if the
weblogic jvm was started via the startWeblogic.sh or related custom script and not the
init process).
4. If there are associated web applications found in the WebLogic config.xml file, the
Windows – Weblogic find web.xml probe triggers for each application. This probe reads
the WebLogic web.xml file for each web application and the sensor, and then populates
additional information.
IBM WebSphere server discovery using probes
The IBM WebSphere application server is a software framework with middleware that hosts
Java-based web applications. Discovery creates or updates a CMDB record when it detects an
instance of a WebSphere application server running on a Windows or Linux system.

Note: Starting with Visibility Content version 6.1.0, pattern-based discovery is the default
method for discovering IBM WebSphere Application Servers. The WebSphere probes
are disabled by default. For more information, see IBM WebSphere Application Server
discovery using patterns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2724


<!-- page 2725 -->
Websphere discovery on Windows
Requirements for discovery:
For WebSphere application servers running on Windows systems, enable PowerShell on the MID
Server.

Websphere discovery on Linux
Requirements for discovery:
• Enable SSH on the WebSphere Application Server.
• Set execute privileges to enable the following probes to run commands:
◦ WebSphere - Get serverindex.xml: cat/read permissions on the serverindex.xml file
◦ WebSphere - Get cell.xml: cat/read permissions on the cell.xml file
◦ WebSphere - Get server.xml: cat/read permissions on the server.xml file
For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.

Probes and sensors
Discovery uses this process to identify Linux WebSphere application servers:
1. The Unix - Active Processes probe detects a running process that
matches the com.ibm.ws.runtime.WsServer. For example, the

...com.ibm.ws.bootstrap.WSLauncher com.ibm.ws.runtime.WsServer
process output has a parameter of /opt/IBM/WPS/profiles/ccmdb/config
localhostNode01Cell ccmdb01 server1. The values are:
◦ last parameter = server_name = server1
◦ last parameter - 1 = node_name = ccmdb01
◦ last parameter - 2 = cell_name = localhostNode01Cell
◦ last parameter - 3 = config_path = ‘/opt/IBM/WPS/profiles/ccmdb/config’
2. If there is a match, a record is created in the IBM Websphere
[cmdb_ci_app_server_websphere] table. The following probes are triggered:
◦ WebSphere - Cell
◦ WebSphere - Web Applications
◦ WebSphere –Web Services
3. The WebSphere - Cell probe searches for the cell.xml file for the instance by using the
parameters in the running process, and then searching in the related <config_path>
\cells\<cell_name>\ directory.
4. If the probe successfully finds the cell.xml file, the sensor reads its contents and populates
additional Websphere Cell [cmdb_ci_websphere_cell] table records as necessary.
5. If the probe successfully finds the serverindex.xml file, the sensor reads its contents and
populates additional Web Application [cmdb_ci_web_application] table records as necessary.
6. If the probe successfully finds the server.xml file, the sensor reads its contents and
populates additional Web Service [cmdb_ci_web_service] table records as necessary.
Discovery uses this process to identify Windows WebSphere application servers:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2725


<!-- page 2726 -->
1. The Windows - Active Processes probe detects a running process that
matches the com.ibm.ws.runtime.WsServer. For example, the

...com.ibm.ws.bootstrap.WSLauncher com.ibm.ws.runtime.WsServer
process output has a parameter of /opt/IBM/WPS/profiles/ccmdb/config
localhostNode01Cell ccmdb01 server1. The values are:
◦ last parameter = server_name = server1
◦ last parameter - 1 = node_name = ccmdb01
◦ last parameter - 2 = cell_name = localhostNode01Cell
◦ last parameter - 3 = config_path = ‘/opt/IBM/WPS/profiles/ccmdb/config’
2. If there is a match, a record is created in the IBM Websphere
[cmdb_ci_app_server_websphere] table. The following probes are triggered:
◦ Windows - WebSphere - Cell
◦ Windows - WebSphere - Web Applications
◦ Windows - WebSphere –Web Services
3. The Windows - WebSphere - Cell probe searches for the cell.xml file for the instance
by using the parameters in the running process, and then searching in the related
<config_path>\cells\<cell_name>\ directory.
4. If the probe successfully finds the cell.xml file, the sensor reads its contents and populates
additional Websphere Cell [cmdb_ci_websphere_cell] table records as necessary.
5. The Windows - WebSphere - Web Applications probe searches the serverindex.xml file
for the instance by using the parameters in the running process, and then searching in the
related <config_path>\cells\<cell_name>\nodes\<node_name> directory.
6. If the probe successfully finds the serverindex.xml file, the sensor reads its contents and
populates additional Web Application [cmdb_ci_web_application] table records as necessary.
7. The Windows WebSphere - Web Services probe searches for the server.xml file for
the instance by using the parameters in the running process, and then searching in the
related <config_path>\cells\<cell_name>\nodes\<node_name>\servers
\<server_name> directory.
8. If the probe successfully finds the server.xml file, the sensor reads its contents and
populates additional Web Service [cmdb_ci_web_service] table records as necessary.

Data collected
Data collected on Windows Websphere servers
Table

Field

Source

cmdb_ci_app_server_websphere Name (name)

Running
process

cmdb_ci_websphere_cell

Name (name)

cell.xml

cmdb_ci_websphere_cell

Cell ID (cell_id)

cell.xml

cmdb_ci_websphere_cell

Cell type (cell_type)

cell.xml

cmdb_ci_websphere_cell

Cell discovery protocol
(cell_discovery_protocol)

cell.xml

cmdb_ci_web_service

Name (name)

server.xml

cmdb_ci_web_service

Service ID (service_id)

server.xml

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2726


<!-- page 2727 -->
Data collected on Windows Websphere servers (continued)
Table

Field

Source

cmdb_ci_web_application

Name (name)

serverindex.xml

Data collected on Linux Websphere servers
Label

Table Name

Field Name

Source

Name

cmdb_ci_websphere_cell

name

server.xml

App server

cmdb_ci_web_service

app_server

Internal reference

Name

cmdb_ci_web_service

name

server.xml

Name

cmdb_ci_web_application

name

serverindex.xml

App server

cmdb_ci_web_application

app_server

serverindex.xml

Relationships
These relationships are created in the CI Relationship [cmdb_rel_ci] table.

Parent class

Relationship type

Child class

cmdb_ci_app_server_websphere

Runs on::Runs

cmdb_ci_linux_server

cmdb_ci_win_server

Runs on::Runs

cmdb_ci_win_server

cmdb_ci_app_server_websphere

Contains::Contained by

cmdb_ci_web_application

cmdb_ci_web_service

Runs on::Runs

cmdb_ci_app_server_websphere

cmdb_ci_websphere_cell

Contains::Contained by

cmdb_ci_app_server_websphere

Database discovery
Discovery can find database applications, such as MySQL, Oracle, and MongoDB. Discovery can
also find database management system software, such as MSSQL Server.
Database catalog discovery
The database catalog lists all the catalog objects, or databases, discovered for an instance of a
database.

Databases vs. catalogs
Most database manufacturers use the term catalog to mean database, while Microsoft SQL uses
the term database. Database catalogs can be imported into your instance from a third-party
discovery tool, entered into the platform manually, or found by Discovery.

Important: Discovery does not support MySQL database catalog discovery in the base
system. The Oracle DB on Unix and Oracle DB on Windows patterns discover Oracle
catalog objects through the pattern extension Get Catalog info. The MSSql DB On Windows
and MSSql 2000 DB patterns discover both database instances and catalogs and store
them in the database instance records.
For more information about Oracle catalog discovery, see Oracle Catalog discovery.
For more information about Microsoft SQL database instances, see Microsoft SQL Server and
Cluster discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2727


<!-- page 2728 -->
If you discovered database catalogs using probes before migrating to patterns, you can view the
probe-based database catalogs by navigating to All > Configuration > Database Catalogs and
selecting a database.
Database Administrator (DBA) report discovery
Discovery and Service Mapping uses the Patterns extension sections to provide a Database
Administrator report (DBA report) for the Apache Cassandra, Microsoft SQL, MySQL, MongoDB,
and Oracle databases. The extension sections for each DB pattern populate the related entries
tables. Discovering some of these resources may require updating to the latest version of the
Discovery and Service Mapping Patterns application from the ServiceNow Store.
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify the plugins setup
• CMDB CI Class Models 1.49.0 (September 2023)
• Discovery and Service Mapping Patterns 1.8.0 (September 2023)
Verify the system properties are enabled
By default, the system properties for DBA reports are set to false. To enable the
report collection, verify that the system properties value for each pattern is set to
true.

Pattern

System property

Cassandra

cassandra_dba_report_enabled

MongoDB

mongo_dba_report_enabled

MSSQL DB On Windows

mssql_dba_report_enabled

My SQL server On Windows and Linux

mysql_dba_report_enabled

Oracle DB

oracle_dba_report_enabled

Verify the configuration of the credentials
For more information, see Applicative credentials

.

MongoDB execute command

Applicative credentials should have
read access to run “getSiblingDB
(databaseName)”

Apache Cassandra execute command

Discovery credentials should have read
access to “nodetool”

MySQL tables and execute commands

Discovery credentials should have read
access to:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2728


<!-- page 2729 -->
• “information_schema.tables”
table​
• run “show databases”
command
Microsoft SQL tables

Discovery credentials should have read
access to the following tables:
• master.sys.databases
• sys.sysprocesses
• sys.dm_os_sys_info
• sys.dm_os_ring_buffers
• msdb.dbo.backupset
• master.dbo.sysdatabases
• master..sysprocesses
• msdb..sysjobactivity
• sys.master_files
• sys.dm_tran_session_transactions
• sys.dm_os_sys_memory
• sys.database_files

Oracle DB tables and execute
commands

Discovery credentials should have read
access to:
• Run “lsnrctl services” and
“sqlplus” commands
• dba_data_files table
• dba_segments table
• v$database table
• gv$instance table
• dba_hist_osstat table
• dba_hist_snapshot table
• v$asm_disk table
• v$asm_diskgroup table
• dba_audit_session table
• gv$session_longops table
• gv$session table
• gv$sqlarea table
• gv$process table

Verify that a Discovery schedule is configured
For more information, see create a discovery schedule
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2729


<!-- page 2730 -->
Data collected by the extension section of the Apache Cassandra pattern
Discovery populates the following data when running the Apache Cassandra pattern.

Note: See the Prerequisites section for important information about enabling the system
property.

Table name

Table label

cassandra_health_report

Cassandra Health Report

Fields

• database_host
• local_write_latency
• read_latency
• snapshot_used_space
• space_used
• table
• keyspace
• ci

Data collected by the extension section of the MongoDB pattern
Discovery populates the following data when running the MongoDB pattern.

Note: See the Prerequisites section for important information about enabling the system
property.

Table name

Table label

mongo_db_statistics

Mongo DB Statistics

Fields

• database_host
• database_name​
• fs_total_size
• fs_used_size
• scale_factor
• index_size
• index_count
• extents_count
• storage_size
• data_size
• average_object_size
• objects_count
• collection_count
• view_count
• ci

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2730


<!-- page 2731 -->
Data collected by the extension section of the MSSQL pattern
Discovery populates the following data when running the MSSQL pattern.

Note: See the Prerequisites section for important information about enabling the system
property.

Table name

Table label

ms_sql_db_blocking_info

MSSQL DB Blocking Info

Fields

• database_host
• database_instance
• definition
• object_name
• blocking_spid
• spid
• ci

ms_sql_db_cpu_util

MSSQL DB CPU Util

• database_host
• database_instance
• load_date
• other_process_cpu_util
• other_process
• system_idle_process
• sql_server_cpu_util
• event_time
• server_name
• ci

ms_sql_db_not_backup

MSSQL DB Not BackUp

• database_host
• database_instance
• last_backup_date
• database_name
• ci

ms_sql_db_running_job

MSSQL DB Running Job

• database_host
• database_instance
• login_name
• nt_domain
• cmd
• hostname
• name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2731


<!-- page 2732 -->
Table name

Table label

Fields

• status
• open_tran
• Spid
• last_wait_type
• login_time
• ci
ms_sql_disk_info

MSSQL DB Disks Info

• database_host
• database_instance
• percentage_free_space
• volume_free_space
• volume_capacity
• volume_label
• volume_name
• ci

ms_sql_files_space

MSSQL DB Files Space

• database_host
• database_instance
• database_name
• free_space_mb
• file_size_mb
• file_type
• file_logic_name
• ci

ms_sql_fregment_info

MSSQL DB Fragmentation Info

• database_host
• database_instance
• index_status
• page_count
• avg_frag
• index_name
• object_name
• schema_name
• ci

ms_sql_last_restart

MSSQL DB Last Restart

• database_host
• database_instance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2732


<!-- page 2733 -->
Table name

Table label

Fields

• uptime_in_days
• current_date
• last_recycle
• ci
ms_sql_long_trans

MSSQL DB Long Transactions

• database_host
• database_instance
• blocked
• sql
• cmd
• program_name
• hostname
• login_name
• status
• last_batch
• duration
• login_time
• database_name
• user_tran
• trans_id
• spid
• ci

ms_sql_memory_info

MSSQL DB Memory Info

• database_host
• database_instance
• system_memory_state_desc
• percentage_used
• available_page_file_mb
• total_page_file_mb
• available_physical_memory_mb
• total_physical_memory_mb
• ci

ms_sql_temp_files_space

MSSQL DB Temp Files Space

• database_host
• database_instance
• percent_full
• available_space_mb

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2733


<!-- page 2734 -->
Table name

Table label

Fields

• file_physical_name
• file_logic_name
• database_name
• ci

Data collected by the extension section of the MySQL pattern
Discovery populates the following data when running the MySQL pattern.

Note: See the Prerequisites section for important information about enabling the system
property.

Table name

Table label

mysql_table_schemas

MySql Table Schemas

Fields

• database_host
• database_instance
• data_index_lengh
• table_schema
• ci

Data collected by the extension section of the Oracle DB pattern
Discovery populates the following data when running the Oracle DB pattern.

Note: See the Prerequisites section for important information about enabling the system
property.

Table name

Table label

oracle_active_session

Oracle Active Session

Fields

• database_host
• database_instance
• Key
• sql_id
• program
• module
• action
• status
• last_call_et_hrs
• sid
• spid

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2734


<!-- page 2735 -->
Table name

Table label

Fields

• inst
• ci
oracle_asm_info

Oracle, ASM Disk Info

• database_host
• database_instance
• used_gb
• free_gb
• total_gb
• state
• block_size
• asm
• ci

oracle_asm_nodes_info

Oracle ASM Nodes Disk Info

• database_host
• database_instance
• redundancy
• free_gb
• total_gb
• state
• asm_node
• ci

oracle_cpu_usage

Oracle CPU Usage

• database_host
• database_instance
• idle
• io
• sys
• nice
• user
• snapid
• Inst
• end_time
• begin_time
• ci

oracle_inactive_sessions

Oracle Inactive Sessions

• database_host
• database_instance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2735


<!-- page 2736 -->
Table name

Table label

Fields

• key
• status
• spid
• sid
• program
• Module
• last_call_et_hrs
• inst
• ci
oracle_instance_info

Oracle Instance Info

• database_host
• database_instance
• platform_name
• current_scn
• dbid
• db_unique_name
• log_mode
• db_name
• open_mode
• ci

oracle_nodes_info

Oracle Nodes Info

• database_host
• database_instance
• instance_mode
• instance_state
• instance_role
• instance_status
• instance_version
• hostname
• instance_name
• ci

oracle_table_space

Oracle Table Space

• database_host
• database_instance
• used_mb
• free_percent
• free_mb

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2736


<!-- page 2737 -->
Table name

Table label

Fields

• tablespace
• total_mb
• ci
oracle_top_10_queries

Oracle Top 10 Queries

• database_host
• database_instance
• unique
• status
• sql_id
• spid
• sid
• program
• Module
• last_call_et_hrs
• ci

Microsoft SQL Server and Cluster discovery
The Discovery and Service Mapping Patterns application uses the MSSql DB On Windows
pattern to find Microsoft SQL DB servers and clusters on your infrastructure. Discovering some of
these resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
For detailed information on SQL Server supported versions see: Detailed information on
products discovered by ITOM Visibility

Prerequisites
Verify that the following applications are up to date
• Discovery and Service Mapping Patterns starting with version 1.7.0 (August 2023)
• Visibility Content starting with version 6.12.1 (August 2023)
Create Windows credentials
After verifying that the MID Server is connected to the target Windows server, create
Windows credentials on the ServiceNow AI Platform. For more information, see
Windows credentials .
Create applicative credentials when using SQL authentication
For more information, see Applicative credentials

.

Verify the configuration of the MID Server
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2737


<!-- page 2738 -->
Verify that the MID Server has the necessary permissions to read the Windows
Registry on a remote mode. The MSSql DB On Windows pattern uses registry values
to discover SQL cluster details.
Verify SQL Server discovery report is active
Verify that the SQL Server discovery report is active on your server. Discovery uses
the SQL Server discovery report to discover Microsoft SQL Server components.
Verify the permissions to run WMI queries
Verify remote read-only access to the following WMI namespaces:
• Root\CIMv2
• Root\Microsoft\SqlServer\ComputerManagement*
Verify the SQL Server table permissions
The MSSql DB On Windows pattern requires read-only permissions to read the
following tables:
• @@version
• sys.configurations
• sys.dm_exec_sessions
• sys.dm_os_schedulers
• SERVERPROPERTY
Verify availability group table permissions
Verify the following table permissions to discover Microsoft SQL Server Always On
availability groups:
• VIEW SERVER STATE access to the
sys.dm_hadr_availability_group_states table
• Read access permission to the following tables:
◦ sys.availability_groups
◦ sys.availability_group_listeners
◦ sys.availability_group_listener_ip_addresses

SQL failover cluster instance (FCI)
®

Updating the version 1.6.1 set of Patterns available from the ServiceNow Store starting August
2023 enables an appropriate discovery of the Always On availability group details and the SQL
Failover Clusters. When the failover scenario is occurring, the MSSql DB On Windows pattern
discovers the failover cluster (Node 2). Then a new MSFT SQL instance and databases are
created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2738


<!-- page 2739 -->
The following procedure enables appropriate visibility of the SQL clusters.
1. Set the

sn_itom_pattern.discover_mssql_cluster.load_cluster_name_from_registry=true
MID Server property to true to enable the Collect MSSQL Cluster info- MSSQL Cluster
extension section.

2. Ensure that an sqlservr.exe process to trigger the MSSql DB On Windows pattern is
running on the server.
3. Run a CI discovery.
For more information, see Running discoveries in your network.
4. Either keep duplicate instances and databases or delete them.
◦ To keep the duplicate instances and databases, keep the default configuration.
▪ The install status of the nodes of the passive cluster changes to Absent.
▪ The install status of the nodes of the active cluster changes to Installed.
◦ To delete the passive instances and databases, set the

discovery.mssql.cluster.instance.postsensor.delete system property
to True.

Microsoft SQL Server Always On availability groups support
Starting from Discovery and Service Mapping Patterns version 1.27.0, the MSSql DB On Windows
pattern extension Collect MSSQL HADR - Availability Group Info supports the discovery of
Microsoft SQL Server Always On availability groups.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2739


<!-- page 2740 -->
Data model of Collect MSSQL HADR - Availability Group Info

Prerequisites
Verify availability group table permissions
Discovered resources
Resources discovered by the pattern extension: Collect MSSQL HADR - Availability
Group Info
Discovered relationships
Relationships discovered by the pattern extension: Collect MSSQL HADR Availability Group Info

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the MSSql DB On Windows pattern.
MSFT SQL instance [cmdb_ci_db_mssql_instance]
The data collected for the running processes of the database (the actual SQL
server) is referred to as the database instance

Field

Name [name]

Description

The field name.
For example: MSSQLSERVER@windows_server_name

Instance Name
[instance_name]

The SQL server instance name.
For example: MSSQLSERVER

Is clustered
[is_clustered]

Indicates the type of installation:
• If this value is set to true,the SQL server is a part of a cluster,
and the failover mechanism is enabled.
• If this value is set to false, the SQL server is a standalone
deployment and the failover mechanism is disabled.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2740


<!-- page 2741 -->
Field

Description

Comments
[comments]

The type of instance:
• standalone_instance
• failover_cluster
• always_on

Version [version]

The SQL server version number. For example: 16.0.1000.6

Version Name
[version_name]

The SQL server version by release dates. For example: The
value 2022 represents version 16.0.1000.6

Service Pack
[service_pack]

The service pack version. For example: SP2.

Edition [edition]

The type of the edition. For example: Enterprise Edition.

TCP Port
[tcp_port]

The TCP port that the MSSQL instance uses to accept
connections.

Install Status
[install_status]

The install status of the instance:
Installed- The instance is currently running.
Absent- The instance isn’t running and it’s the backup
instance for a failover scenario.

MSSQL database [cmdb_ci_db_mssql_database]

Field

Description

Name [name]

The name of the database. For example: msdb.

Install Status [install_status]

The install status of the database.

Instance Name [instance_name] The instance name.
MSSQL Cluster Node [cmdb_ci_mssql_cluster_node]

Field

Description

Name [name]

The server host name

IP Address [ip_address]

The hosting Windows server's IP address

Cluster [cluster]

Reference to the SQL cluster record.

Server [server]

Reference to the hosting Windows server record.

MSSQL Cluster [cmdb_ci_mssql_cluster]

Field

Description

Name [name]

The SQL cluster network name​

IP Address [ip_address]

The SQL cluster's virtual IP address.​

MSSQL Service Info [mssql_sqlservice_info]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2741


<!-- page 2742 -->
Field

Description

Description
[description]

Describes the MSSQL service. For example: "Provides storage,
processing, and controlled access of data and rapid transaction
processing."

The MSSQL service name as presented on the server. For
Service Name example: MSSQL$NAMEDMSSQL2016
[service_name]
Binary Path
[binary_path]

The file path of the service. For example: C:
\Program Files\Microsoft SQL Server
\MSSQL13.NAMEDMSSQL2016\MSSQL\Binn
\sqlservr.exe

CI [ci]

Reference to MSFT SQL instance record
[cmdb_ci_db_mssql_instance]

Installed On
[installed_on]

Reference to the Windows server record [cmdb_ci_win_server]

Note: This field isn’t populated for standalone
deployments.

MSSQL components Info [mssql_components_info]

Field

Description

Install Path
[install_path]

The install path of the component service. Foe example:
C:\Program Files\Microsoft SQL Server
\MSSQL16.SQLEXPRESS\MSSQL

The components service type of the server. For example:
Service Name Database Engine Services
[service_name]
SKU Name
[sku_name]
Version
[version]
CI [ci]
Installed On
[installed_on]

The MSSQL version of the component service. For example:
Express Edition (64-bit)
The MSSQL version number of the component service

Reference to the MSFT SQL instance record.
Reference to the Windows server record [cmdb_ci_win_server].

Note: This field is populated only for SQL Clusters and not
for standalone deployments.

MSSql DB On Windows pattern extension: Collect MSSQL HADR - Availability Group Info

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2742


<!-- page 2743 -->
MSSQL Availability Group [cmdb_ci_mssql_ag]
Field

Description

Cluster ID [cluster_id]

Globally unique identifier (GUID) of the availability group.

Name [name]

Cluster name.

IP Address [ip_address] IP address of the cluster.
MSSQL Availability Group Replica [cmdb_ci_mssql_ag_replica]
Field

Description

Replica ID [replica_id]

Unique ID of the replica.

Role [role]

Role of the replica.
Possible values are:
• Primary
• Secondary
• Resolving

Availability Mode
[availability_mode]

Availability mode of the replica.
Possible values are:
• Asynchronous Commit
• Synchronous Commit
• Configuration Only

Failover Mode
[failover_mode]

Failover mode of the availability replica.
Possible values are:
• Automatic
• Manual

Readable Secondary
[readable_secondary]

Whether an availability replica that’s performing the
secondary role can accept connections from clients.
Possible values are:
• true
• false

Availability Group
[availability_group]

References the MSSQL Availability Group
[cmdb_ci_mssql_ag] table.

Name [name]

Name of the replica server.

Serial number
[serial_number]

Unique ID of the replica.

State [state]

Failover state.
Possible values:
• Pending
• Online

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2743


<!-- page 2744 -->
MSSQL Availability Group Replica [cmdb_ci_mssql_ag_replica] (continued)
Field

Description

• Offline
• Failed
• Failed No Quorum
MSSQL Availability Group Listener [cmdb_ci_mssql_ag_listener]
Field

Description

Name [name]

Name of the availability group listener.

Listener ID
[listener_id]

Resource globally unique identifier (GUID) from Windows
Server Failover Clustering (WSFC) cluster.

IP Subnet Mask
[ip_subnet_mask]

IP subnet mark for the IPv4 address, if any, that’s
configured for the availability group listener.

Availability Group
[availability_group]

References the MSSQL Availability Group
[cmdb_ci_mssql_ag] table.

Primary Replica
[primary_replica]

References the MSSQL Availability Group Replica
[cmdb_ci_mssql_ag_replica] table.

CI relationships
The MSSql DB On Windows pattern creates CI relationships to support Microsoft SQL Server
and Cluster discovery.

CI

Windows Server

Relationship

Runs::Runs on

[cmdb_ci_win_server]
MSFT SQL instance​

CI

MSSQL Cluster
[cmdb_ci_mssql_cluster]

Runs::Runs on

[cmdb_ci_db_mssql_instance]​

MSSQL Cluster
[cmdb_ci_mssql_cluster]​

MSSQL Cluster Node​

Cluster::Cluster of​

MSSQL Cluster

[cmdb_ci_mssql_cluster_node]​

References [cluster]

[cmdb_ci_mssql_cluster]​

Windows Server​

Hosts::Hosted by​

MSSQL Cluster Node​

[cmdb_ci_win_server]​

Reference [server]

[cmdb_ci_mssql_cluster_node]​

MSFT SQL instance​
[cmdb_ci_db_mssql_instance]

Runs on::Runs

Windows Server​
[cmdb_ci_win_server]​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2744


<!-- page 2745 -->
CI

Relationship

CI

MSFT SQL instance​

Contains::Contained
MS SQL Database​
by​

[cmdb_ci_db_mssql_instance]

[cmdb_ci_db_mssql_database]​
References

MSSQL Service Info
[mssql_sqlservice_info]

MSFT SQL instance​
[cmdb_ci_db_mssql_instance]

Note: This relationship is created
only when the Pattern uses the
WMI queries.
The MSSql DB On Windows pattern creates CI relationships using the Collect MSSQL HADR Availability Group Info pattern extension.

CI

Relationship

CI

MSSQL Availability Group
[cmdb_ci_mssql_ag]

Extends from

Cluster [cmdb_ci_cluster]

MSFT SQL instance
[cmdb_ci_db_mssql_instance]​

Member
of::Members

MSSQL Availability Group Replica
[cmdb_ci_mssql_ag_replica]

MSSQL Availability Group Listener
[cmdb_ci_mssql_ag_listener]

Extends from

Endpoint [cmdb_ci_endpoint]

MSSQL Availability Group Listener
[cmdb_ci_mssql_ag_listener]

References

MSSQL Availability Group
[cmdb_ci_mssql_ag]

MSSQL Availability Group Listener
[cmdb_ci_mssql_ag_listener]

References

MSSQL Availability Group Replica
[cmdb_ci_mssql_ag_replica]

MSSQL Availability Group Listener
[cmdb_ci_mssql_ag_listener]

Used by::Uses

MSSQL Availability Group
[cmdb_ci_mssql_ag]

MSSQL Availability Group Replica
[cmdb_ci_mssql_ag_replica]

Contains::Contained MS SQL Database
by
[cmdb_ci_db_mssql_database]

MSSQL Availability Group Replica
[cmdb_ci_mssql_ag_replica]

Cluster of::Cluster

MSSQL Availability Group
[cmdb_ci_mssql_ag]

MSSQL Availability Group Replica
[cmdb_ci_mssql_ag_replica]

Extends from

MSSQL Cluster Node
[cmdb_ci_mssql_cluster_node]​

MSSQL Availability Group Replica
[cmdb_ci_mssql_ag_replica]

Hosted on::Hosts

Windows Servers
[cmdb_ci_win_server]​

MSSQL Availability Group Replica
[cmdb_ci_mssql_ag_replica]

References

MSSQL Availability Group
[cmdb_ci_mssql_ag]

Related topics
Add the Horizontal Pattern probe to a classifier
Horizontal Pattern probe
Database Administrator (DBA) report discovery

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2745


<!-- page 2746 -->
MySQL discovery
Discovery can identify an instance of MySQL that is running on UNIX or Windows operating
systems.

Requirements
Discovery searches for the MySQL configuration file location from the following areas:
• UNIX: Discovery searches for the MySQL configuration file location from the mysqld process,
or port 3306.
• Windows: Discovery searches for the MySQL configuration file location from the mysqld.exe
process, or port 3306.
For each process, the following process parameters are explored in the following order:

--defaults-extra-file
--defaults-file
If the MYSQL configuration file location is not found from that search, then the following occurs:
• UNIX: The configuration file location defaults to /etc/my.cnf.
• Windows: No default configuration file location exists, and the probe to read the configuration
file location is skipped.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Credentials
Configure these credentials:
• Windows credentials
• SSH credentials
(When applications require credentials in addition to the credentials
• Applicative credentials
the that host machine requires.)

Note: There’s no need to configure applicative credentials unless your Discovery
prerequisites mention them.
For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.

Classifiers, patterns, and probes
Discovery uses these classifiers, probes, and patterns for MySQL discovery:

Classifier

MySQL
Server

Trigger probes

• Horizontal Pattern: launches
patterns

Pattern

My SQL server On Windows and Linux
Pattern

• Windows - MySQL Configuration*
• Windows - MySQL Version*
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2746


<!-- page 2747 -->
Classifier

Trigger probes

Pattern

• MySQL - Configuration*
• MySQL - Version*

*For new instances, these probes are inactive on the classifier. Discovery uses patterns for
discovery.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Data collected
Discovery populates these fields in the MySQL Instance [cmdb_ci_db_mysql_instance] table:

Label

Field name

Source

MySQL configuration

myconf

my.cnf

TCP port(s)

tcp_port

running_process

Version

version

mysqld

Related topics
Database Administrator (DBA) report discovery
MongoDB discovery
Discovery creates or updates a CMDB record when it detects a running instance of MongoDB.

Credentials
Configure SSH credentials

.

For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

The following data is collected:
Data Collected by Discovery on MongoDB instances
Label

Table Name

Field Name

Source

Version

cmdb_ci_db_mongodb_instance version

Mongo
configuration

cmdb_ci_db_mongodb_instance mongodb_conf mongod.conf

TCP port(s)

cmdb_ci_db_mongodb_instance tcp_port

mongod (UNIX) or
mongod.exe (Windows)

Process Classification or
mongod.conf

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2747


<!-- page 2748 -->
PostgreSQL discovery
Discovery can find running instances of PostgreSQL on Windows and Linux systems.

Credentials and other prerequisites
These credentials are required:
• SSH credentials
• [optional] Applicative credentials
For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.
The user must have root-level access to the database to access the postgresql.conf file.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Classifiers, patterns, and probes
Classifier

PostgreSQL Instance

Trigger probes

Patterns

• Horizontal Pattern: launches
patterns

PostgreSQL DB

• PostgreSQL - Configuration* (add
the must_sudo parameter to
this probe)
• PostgreSQL - Version*

*For new instances, these probes are inactive on the classifier. Discovery uses patterns for
discovery.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Data collected
The following gathers specified information from the target. If the source is not configured, it
brings back default information. For instance, for PostgreSQL Instance@hostname (default
name), the source needs to be modified. If not, all the "PostgreSQL Instance@hostname" will be
added in the source for the [cmdb_ci_db_postgresql_instance] table.

Label

Table Name

Field Name

Source

Name

cmdb_ci_db_postgresql_instance name

PostgreSQL
Instance@hostname

Data
Directory

cmdb_ci_db_postgresql_instance data_dir

running process

TCP port

cmdb_ci_db_postgresql_instance tcp_port

running process

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2748


<!-- page 2749 -->
Label

Table Name

Field Name

Source

SQL
cmdb_ci_db_postgresql_instance postgres_conf data_directory/postgresql.conf
Configuration
Version

cmdb_ci_db_postgresql_instance version

postmaster/postgres

Relationships
Parent class

Relationship

cmdb_ci_db_postgresql_instance
Runs on:Runs

Child class

cmdb_ci_windows_server or
cmdb_ci_linux_server

Oracle database discovery
Discovery can identify an Oracle database instance that is running on UNIX or Windows
operating systems. It can also find Oracle clusterware, which runs Real Application Clusters
(RAC).
Patterns perform the discovery of Oracle installations. These patterns replace several probes
for new instances. If you want to continue to use probes, you can deactivate the Horizontal
discovery probe, which launches the pattern, and then activate the necessary probes.

Note: Oracle DB on Unix and Oracle DB on Windows do not support RAC single-node
discovery.
The Oracle DB on Unix and Oracle DB on Windows patterns discover Oracle catalog objects
through the pattern extension Get Catalog info. For more information, see Oracle Catalog
discovery. For general information about database catalog discovery, see database catalogs.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Credentials
Configure these credentials:

Credential
type

Additional information

Applicative Applicative credentials are mandatory for two use cases:
credentials
• Executing SQL queries against the remote Oracle DB Instance
• Creating connections to database links
• Software Asset Management activated
You must add the database user you configured during Oracle database
installation. Specify Oracle instance [cmdb_ci_db_ora_instance]
as the CI type.
The user must also have access to the tnsnames.ora parameters file. Make
sure that the tnsnames.ora is configured correctly and exists in the Oracle path on
the target Windows host. Also, verify that the utilized Discovery Credentials can
read tnsnames.ora file.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2749


<!-- page 2750 -->
Credential
type

Additional information

The user needs permissions for the SQL*Plus command line tool and permissions
to execute SELECT queries against the following tables:
• PRODUCT_COMPONENT_VERSION
• V$VERSION
• V$DATABASE
• V$PARAMETER
Windows
You can also use Windows and SSH credentials in addition to applicative
credentials credentials. For Windows credentials, the user must have read permissions to the
tnsnames.ora file. SSH credentials, must allow read permission to the oratab
SSH
file and read permission to the System Parameter file.
credentials
For a list of privileged commands that you need for Discovery and Service
Mapping, see Service Mapping commands requiring a privileged user. This list
includes commands that require elevated rights to discover and map Unix-based
hosts in your organization.

Additional requirements
Discovery identifies a running instance of an Oracle database on UNIX from the process that
starts with ora_pmon_. Ensure this process is running in the IP range you designate for
Discovery. Discovery identifies a running instance of an Oracle database on Windows from the
oracle.exe process. Ensure this process is running in the IP range you designate.
For Oracle clusterware, you also need permissions to read the /etc/hosts/ file
associates host names with IP addresses.

, which

The following commands are run for Oracle clusterware:

Command

Description

ps -ef | grep 'crsd.bin' |grep -v grep

Verifies if Oracle CRS
process is running.

ps -ef |grep LISTENER | grep -v $$ | head -1 |
awk '{print $8}'
/u01/app/12.1.0.2/grid/bin/olsnodes -c | egrep
-v 'error|return code'
/u01/app/12.1.0.2/grid/bin/crsctl query crs
softwareversion| egrep -v 'error|return code'
/u01/app/12.1.0.2/grid/bin/crsctl query crs
softwareversion| egrep -v 'error|return code'
/u01/app/12.1.0.2/grid/bin/olsnodes | egrep -v
'error|return code'

Gets Oracle home.

Gets Oracle CRS
cluster name.
Gets Oracle CRS
cluster ID.
Gets Oracle CRS
version.
Gets Oracle CRS
nodes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2750


<!-- page 2751 -->
Command

Description

/u01/app/12.1.0.2/grid/bin/crsctl status server
| egrep -v 'error|return code'
/u01/app/12.1.0.2/grid/bin/crsctl stat res -f |
tr '\n' '#'

Gets Oracle CRS
node status.
Gets Oracle CRS
resources.

/u01/app/12.1.0.2/grid/bin/crsctl stat res -p |
grep -v CHECK_R |grep -v error |grep -v failed

Gets Oracle CRS VIP
resources.

/u01/app/12.1.0.2/grid/bin/srvctl config scan | tr '\n' ‘ '

Gets Oracle
RAC SCAN VIP
configurations.

/u01/app/12.1.0.2/grid/bin/srvctl config vip -node ol7-121-rac1| egrep '
Name' | awk '{print $3}'
/u01/app/12.1.0.2/grid/bin/srvctl config vip -node ol7-121-rac1| grep '
IPv4 Address:' | awk '{print $4}'

Gets Oracle CRS
VIPs name.
Get Oracle CRS VIPs
ip_address.

Sudo permission to run: sudo /u01/app/12.1.0.2/grid/bin/ocrcheck | egrep
-v 'error|return code'

Classifiers, patterns, and probes
Discovery uses these classifiers, probes, and patterns for Oracle database discovery:

Classifier Trigger probes

Pattern

Oracle
Instance

• Horizontal discovery
probe: launches
patterns

Application patterns:

• Powershell-Oracle
- Instance PFile (for
Windows)*

• Oracle DB on UNIX Pattern

• Powershell-Oracle Instance Version (for
Windows)*
• SSHCommand-Oracle
- Instance Details (for
Linux)*
Oracle
Listener

SSHCommand-Oracle Listener Details

• Oracle DB On Windows Pattern

This shared library pattern used by the Linux Server
pattern:
UNIX Cluster - ORACLE Clusterware

Note: This shared library pattern is triggered if
the crsd.bin process is running on the Oracle
database server.
none

*Probes inactive for new instances.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2751


<!-- page 2752 -->
Data collected
The following data is collected on the Oracle Instances [cmdb_ci_db_ora_instance] table for both
UNIX and Windows:
Data collected on UNIX machines
Label

Field name

Additional information

SID

sid

Obtained from the name of the process that starts with
ora_pmon_

Install
directory

install_directory Obtained from the path of ORA_HOME

Version

version

Obtained in this order:
• From the output of the ORA_HOME/bin/sqlplus /NOLOG
command
• From the output of the ORA_HOME/bin/lsnrctl status
command
• From the path of ORA_HOME

Parameter pfile
file

The following locations are explored for the location of the
System Parameter File. If this file does not exist in one of the
explored locations, Discovery does not find the file and reports an
error.
• oracle_home/dbs/spfileSID.ora
• oracle_home/dbs/spfile.ora
• oracle_home/dbs/initSID.ora

Oracle
Home

oracle_home

Obtained from the ORATAB file.

Edition

edition

Obtained from the context.xml file.

Name

name

Combination of SID name Host name in the format
SID@HOST_NAME.

TCP
port(s)

tcp_port

Obtained from the tnsnames.ora file, or lsnrctl status
command. If no valid information is retrieved, the default port 1521
is assigned.

Note: See Oracle options for pattern extensions and additional information collected.
Data collected on Windows machines
Label

Field name

Additional information

SID

sid

Obtained from the process parameter that is passed to the
oracle.exe process.

Install
directory

install_directory

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2752


<!-- page 2753 -->
Data collected on Windows machines (continued)
Label

Field name

Additional information

Version

version

Obtained from the output of the ORA_HOME/bin/
sqlplus.exe -V command.

Parameter pfile
file

The following locations are explored for the location of the
System Parameter File. If this file does not exist in one of the
explored locations, Discovery does not find the file and reports an
error.
• oracle_home\database\spfileSID.ora
• oracle_home\database\spfile.ora
• oracle_home\database\initSID.ora

Oracle
Home

oracle_home

Edition

edition

Parsed from the path of oracle.exe

Note: See Oracle options for pattern extensions and additional information collected.
Oracle options
For general information on Oracle options, see https://docs.oracle.com/en/

.

Discovery can also find the Oracle options that you enable on the instance using the legacy
pattern extension, Oracle option extension for Windows/Unix. Note that to discover Oracle
options, the Software Asset Management Professional for Oracle (com.snc.samp.oracle) plugin is
required.
Oracle Options [samp_oracle_options]
Label

Field name

Instance

instance

Option

option

Licensable

licensable

Currently used

currently_used

First usage date

first_usage

Last usage date

last_usage

Last sample date

last_sample

Detected usage

detected_usage

Sample interval

sample_interval

Table privileges needed

Additional information

The following tables are accessed as part
of the Oracle option extension for UNIX and
Windows:

The following pattern extensions
use the Oracle script:
options_packs_usage_statistics.sql. This

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2753


<!-- page 2754 -->
Table privileges needed

Additional information

• V$VERSION

sql script is for DB Server version 11.2 and
later. You need the Select any dictionary
privilege to execute the script. See the
support document ID13172651.1 on https://
support.oracle.com/portal/
for more
information about usage scripts.

• GV$PARAMETER

• Oracle option extensions for UNIX

• V$CONTAINERS

• Oracle option extensions for Windows

• DBA_FEATURE_USAGE_STATISTICS
• CDB_FEATURE_USAGE_STATISTICS
• V$DATABASE

• V$INSTANCE

Data collected on clusterware
Table

Unix Cluster [cmdb_ci_unix_cluster]

Labels and field names

Name [name]
Cluster status [cluster_status]
Cluster type [cluster_type]
IP address [ip_address]
Short description [short_description]
Cluster ID [cluster_id]
Cluster version [cluster_version]

cmdb_ci_unix_cluster_node

Name [name]
Node state [node_state]
IP address [ip_address]
Node status [node_status]

cmdb_ci_unix_cluster_resource

Name [name]
Resource type [resource_type]
Resource status [resource_status]
Properties [properties]

cmdb_ci_cluster_vip

Name [name]
IP address [ip_address]
Cluster name [cluster_name]
Cluster ID [cluster_id]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2754


<!-- page 2755 -->
On the dependency view, a +1 on an Oracle database server signifies that it is part of a cluster.

Extend Oracle instance extension

Note: Discovery can also find additional attributes for the instance using the Extend
Oracle instance extension. See the Oracle website for more information on options
https://docs.oracle.com/en/ . Discovery saves these attributes to the Oracle Instances
[cmdb_ci_db_ora_instance] table.

Label

Field name

Instance

instance

Host Name

host_name

IS_CDB

cdb_yn

DB Unique Name

db_unique_name

DB Name

database_name

Replication Enabled

replication_enabled

Table privileges needed

Additional information

The following tables are accessed as part of
The Extend Oracle Instance
the Extend Oracle Instance extension for UNIX extension needs to be installed.
and Windows:
This extension is included in the
Discovery and Service Mapping Patterns application,
• V$DATABASE
version 1.0.72 or higher, which can be
• V$INSTANCE
downloaded from the ServiceNow Store.

Oracle instances on virtual machines
When Oracle instances are hosted on virtual machines, the system creates relationships
between CIs.

CI

Relationship

CI

Oracle instance

Hosted on

Computer
[cmdb_ci_computer] or Server
[cmdb_ci_server]

Note: This is a virtual

machine. The Is virtual
field is true.
Computer
Virtualized by
[cmdb_ci_computer] or Server
[cmdb_ci_server]

Note: This is a virtual

machine. The Is virtual
field is true.

Computer
[cmdb_ci_computer] or Server
[cmdb_ci_server]

Note: This is not a
virtual machine.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2755


<!-- page 2756 -->
Oracle instances on virtual machines that are hosted on AWS or Azure clouds
Base class

Relationship

Dependent class

Oracle instance

Hosted on

Computer
[cmdb_ci_computer]

Note: This is a virtual

machine. The Is virtual
field is true.
Computer
[cmdb_ci_computer]

Virtualized by

Computer
[cmdb_ci_computer]

Note: This is a virtual

Note: This is not a

machine. The Is virtual
field is true.
Computer
[cmdb_ci_computer]

virtual machine.
Virtualized by

Virtual Machine Instance
[cmdb_ci_vm_instance]

Note: This is a virtual

Note: The vCPU count

machine. The Is virtual
field is true.
Virtual Machine Instance
[cmdb_ci_vm_instance]

is populated in this table.
Hosted on

AWS Datacenter
[cmdb_ci_aws_datacenter]
or Azure Datacenter
[cmdb_ci_azure_datacenter]

Relationships for clusterware
CI

Relationship

CI

Unix Cluster
[cmdb_ci_unix_cluster]

Virtualizes::Virtualized by

Cluster Virtual IP
[cmdb_ci_cluster_vip]

Unix Cluster Resource
Defines resources for::Gets
[cmdb_ci_unix_cluster_resource]resources from

Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Cluster Virtual IP
[cmdb_ci_cluster_vip]

Uses::Used by

Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Cluster of::Cluster

Unix Cluster
[cmdb_ci_unix_cluster]

Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Hosted on:Hosts

Unix Cluster
[cmdb_ci_unix_cluster]

Unix Cluster Resource
Defines resources for::Gets
[cmdb_ci_unix_cluster_resource]resources from
Unix Cluster
[cmdb_ci_unix_cluster]
Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Unix Cluster
[cmdb_ci_unix_cluster]

Hosts::Hosted on

Linux Server
[cmdb_ci_linux_server]

Hosted on::Hosts

Linux Server
[cmdb_ci_linux_server]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2756


<!-- page 2757 -->
Related topics
Add the Horizontal Pattern probe to a classifier
Horizontal Pattern probe
Database Administrator (DBA) report discovery
SAP Sybase ASE discovery
Discovery and Service Mapping uses the Sybase pattern to find SAP Sybase Adaptive Server
Enterprise (ASE) databases and catalogs in your infrastructure. Discovering some of these
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the applications are up to date.
Discovery and Service Mapping Patterns
CMDB CI Class Models
Visibility Content
For details on the product discovered see Detailed information on products
discovered by ITOM Visibility

Note: Discovery finds Sybase Catalog that run on Linux only.
Verify the configuration of OS server credentials.
Verify the configuration of the Applicative Credentials
When configuring the Applicative Credentials, make sure you specify Sybase
Instance [cmdb_ci_db_syb_instance] as the CI type.
For more information on Applicative Credentials, see Applicative credentials
Verify that the user have permission to run the following commands
Execute the isql command.
Have the Sybase environment run one of the commands:
• "echo -ne 'set nocount on select name from sysdatabases
\ngo\n' | " + $isql_path + " -U $$username$$ -P '$
$password$$' -S " + $instance + " -w 999 -b -y " +
$process.environmentVariables.SYBASE.value
• "export SYBASE=" +
$process.environmentVariables.SYBASE.value + "
&& . " + $process.environmentVariables.SYBASE.value
+ "/SYBASE.sh && echo -ne 'set nocount on
select name from sysdatabases\ngo\n' | " +
$isql_path + " -U $$username$$ -P '$$password
$$' -S " + $instance + " -w 999 -b -y " +
$process.environmentVariables.SYBASE.value
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2757


<!-- page 2758 -->
Verify the configuration of a Discovery schedule
For detailed information, see Running discoveries in your network

Data collected during Horizontal discovery
Discovery populates the following data in the CMDB when running the Sybase pattern.

Sybase instance [cmdb_ci_db_syb_instance]
Label

Field Name

Name

name

Version

version

Installation directory

install_directory

Instance name

Instance

Configuration file

config_file

Sybase Catalog [cmdb_ci_db_syb_catalog]
Label

Field Name

Name

name

CI relationships
These relationships are created to support the Sybase ASE discovery.

CI

Relationship

CI

[cmdb_ci_db_syb_instance]

Contains::Contained by

[cmdb_ci_db_syb_catalog]

Network device discovery
Discovery identifies several network devices, including load balancers, routers, TCP
connections, IP networks, and so on. It can find devices through traditional port probes, and then
through identifications and exploration probes, or through patterns. It also supports discovery by
identifying HTTP and TCP connections.

Note: See the knowledge article KB0687582

for information on model_id and

manufacturer.
Load balancer discovery
Discovery can collect data about network routers, switches, and applications.
Discovery supports data collection from the following applications and hardware:
• A10
• Apache mod_jk and Apache mod_proxy
• Big-IP F5 Traffic Manager
• Cisco
• Citrix NetScaler
• HAProxy
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2758


<!-- page 2759 -->
• NGINX
• Alteon
• ACE
• Radware

Important: Discovery treats load balancers as licensable entities and attempts to
discover them primarily using SNMP. If a load balancer in your system, running on a Linux
host, has SNMP and SSH ports open, Discovery might classify it based on the SSH port.
This classification has priority over SNMP. To ensure that Discovery properly classifies your
hardware load balancers, create a Discovery behavior for load balancers that includes
SNMP but not SSH. Software load balancers are treated as applications.

Load balancer patterns
Starting with the Jakarta release, Discovery uses out-of-box patterns to find some types load
balancers for new instances (see table).

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Load balancer

Pattern names and description

Main CI table populated

A10

A10 LoadBalancer

A10 Load Balancer
[cmdb_ci_lb_a10]

ACE

ACE Load Balancer by SSH
(formerly ACE Load Balancer)

ACE [cmdb_ci_lb_ace]

Alteon

Alteon Load Balancer

Alteon [cmdb_ci_lb_alteon]

F5 - HD, F5 Load Balancer

F5 BIG-IPs
[cmdb_ci_lb_bigip]

F5 BIG-IP
NetScaler

Netscaler Load Balancer

Citrix NetScalers
[cmdb_ci_lb_netscaler]

Radware - AppDirector

AppDirector Load Balancer

Radware Load Balancer
[cmdb_ci_lb_radware]

HAProxy load balancer
discovery with patterns

HA Proxy

HAProxy Load Balancer
[cmdb_ci_lb_haproxy]

To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Load balancer discovery, Service Mapping, and customized CI fields
Discovery collects information about the install status and operational status of load balancers.
If you are using Discovery with Service Mapping, do not customize the [operational_status]
or [install_status] fields. By default, Service Mapping ignores all host CIs for which the value
of the [operational_status] field is not 1 (Operational) or the value of the status
[install_status] field is 100 (absent). For additional information, see Preparing
customized ServiceNow deployments to work with Service Mapping
[KB0647574] in the HI
Knowledge Base.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2759


<!-- page 2760 -->
A10 load balancer discovery
Discovery and Service Mapping uses patterns to collect information about A10 load balancers.

Note: Probe-to-pattern migration is supported for the New York release and later. See the
knowledge article KB0694477

for more information.

The following patterns support the A10 load balancer discovery:
• A10 Load Balancer
• A10 Load Balancer SSH
• A10
The A10 IP Source NAT (Network Address Translator) is an extension of the A10 Load Balancer
Pattern. The IP Source NAT Pattern extension discovers IP Source NAT pools. This extension is
available on Store from the February 2023 release, Store version 1.0.98.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Credentials
Configure SNMP credentials

or (optionally) SSH credentials

.

Discovery and Service Mapping Patterns application
To discover A10 load balancer partitions, deploy Discovery and Service Mapping
Patterns application 1.0.98 release from the ServiceNow Store.

Data collected by Discovery during horizontal discovery
Table and field

Description

A10 Load Balancer [cmdb_ci_lb_a10]
Serial Number [serial_number]

Serial number of the load balancer, in the following format:
Object_ID=<LB_ARN>.

Operational Status
[operational_status]

Operational status of the load balancer.

Load Balancer Interface [cmdb_ci_lb_interface]
Name [name]

Name of the load balancer interface.

MAC Address [mac_address]

MAC address of the load balancer interface, in the
following format: 55:0d:f9:98:3i:ae.

Operational Status
[operational_status]

Operational status of the load balancer interface.

Load Balancer Pool [cmdb_ci_lb_pool]
Name [name]

Name of the load balancer pool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2760


<!-- page 2761 -->
Table and field

Description

Load Balancing Method
[load_balancing_method]

The method used by the load balancer.

Operational Status
[operational_status]

Operational status of the load balancer pool.

Load Balancer Pool Member [cmdb_ci_lb_pool_member]
Name [name]

Name of the pool member.

IP Address [ip_address]

IP address of the pool member host.

Service Port [service_port]

Port used by the pool member.

Operational Status
[operational_status]

Operational status of the load balancer pool members.

Pool [pool]

Pool member.

Load Balancer Services [cmdb_ci_lb_service]
Name [name]

Name of the load balancer, in the following format: <LB
name>:<LB port>.

IP Address [ip_address]

IP address of the FQDN.

Port [port]

Port of the load balancer.

Operational Status
[operational_status]

Operational status of the load balancer service.

Installation Status [install_status]

Installation status of the load balancer service.

Pool [pool]

Pool member of the load balancer service.

DNS [cmdb_ci_dns_name]
Name [name]

DNS name.

IP Address [ip_address]

DNS IP address.

A10 Load Balancer Partition [cmdb_ci_lb_a10_partition]
Name [name]

Name of the partition.

Index [index]

Partition ID. An admin assigns this ID in the process of
creating a partition.

Max Aflex [Max_aflex]

Maximum number of aFleX scripts that can belong to the
partition.

Admin Count [admin_count]

Number of admins assigned to the partition.

L3V [lev]

Value indicating whether Layer 2/3 virtualization is enabled
for the partition.

Network Adapter [cmdb_ci_network_adapter]
Operational Status
[operational_status]

Operational status of the network adapter.

Mac address [mad_address]

MAC address of the network adapter.

Alias [alias]

Alias of the network adapter.

IP Address [ip_address]

IP address of the network adapter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2761


<!-- page 2762 -->
Table and field

Description

Name [name]

Name of the network adapter.

Netmask [netmask]

Netmask of the network adapter.

PrimaryIP [primaryIP]

PrimaryIP address of the network adapter.

IP Address [cmdb_ci_ip_address]
IP Address [ip_address]

IP address.

Netmask [netmask]

Netmask to which the IP address belongs.

Version [version]

IP version.

Operational Status
[operational_status]

Operational status of the IP address.

Serial Number [cmdb_serial_number]
Serial number [serial_number]

Attributes of the serial number of the load balancer.

Serial number type
[serial_number_type]
Valid [valid]
Source NAT IP Pool [cmdb_ci_snat_ip_pool]
NAT Pool Failed [nat_pool_failed]

The total misses in the pool.

HA Group [ha_group]
NET Mask [net_mask]
NAT Pool Total Free
[nat_pool_total_free]

The total of free addresses in the pool.

NAT Pool Total Usage
[nat_pool_total_usage]

The total of used addresses in the pool.

NAT Pool Port Usage
[nat_pool_port_usage]

The total port usage in the pool.

NAT Pool End Address
[nat_pool_end_address]

The IP NAT pool end address (IPv4 or IPv6).

NAT Pool Start Address
[nat_pool_start_address]

The IP NAT pool start address (IPv4 or IPv6).

Configuration Item [cmdb_ci]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2762


<!-- page 2763 -->
Dependency Views showing A10 load balancer and connected components and
applications

CI relationships
These relationships are created to support A10 load balancer discovery:

CI

Relationship

CI

Router Interface
[dscy_router_interface]

Users::Userd by

Load Balancer Pool
[cmdb_ci_lb_a10]

Load Balancer Interface
[cmdb_ci_lb_interface]

Owns::Owned by

Load Balancer Pool
[cmdb_ci_lb_a10]

Load Balancer Pool Member
[cmdb_ci_lb_pool_member]

Owns::Owned by

Load Balancer Pool
[cmdb_ci_lb_pool]

Load Balancer Services
[cmdb_ci_lb_service]

Used by::Uses

Load Balancer Pool
[cmdb_ci_lb_pool]

Load Balancer Services
[cmdb_ci_lb_service]

Runs on::Runs

Load Balancer Pool
[cmdb_ci_lb_a10]

Load Balancer pool
[cmdb_ci_lb_pool]

Owns::Owned by

Load Balancer Pool
[cmdb_ci_lb_a10]

DNS
Name[cmdb_ci_dns_name]

Used by::Uses

IP Address
[cmdb_ci_ip_address]

Network Adapter
[cmdb_ci_network_adapter]

Owns::Owned by

Load Balancer Pool
[cmdb_ci_lb_a10]

Load Balancer Pool
[cmdb_ci_lb_a10]

Owns::Owned by

IP Address
[cmdb_ci_ip_address]

Load Balancer A10
[cmdb_ci_lb_a10]

Owns:Owned by

Source NAT IP Pool
[cmdb_ci_snat_ip_pool]

Data collected by Service Mapping during top-down discovery
Service Mapping discovers the connections between the A10 load balancers and applications in
the deployment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2763


<!-- page 2764 -->
A10 load balancer application service map

Cisco ACE load balancer discovery
Discovery identifies and classifies information about ACE load balancers.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Credentials
Configure SNMP credentials

and SSH credentials

.

Classifier, pattern, and probe
Classifier

Trigger probes

Pattern

ACE Load
Balancer

Horizontal discovery probe:
launches patterns

ACE Load Balancer by SSH (formerly ACE
Load Balancer)

Data collected
The following data is collected on the Ace Load Balancers [cmdb_ci_lb_ace] table.

Label

Field Name

Serial Number

serial_number

Operational Status

operational_status

The following data is collected on the Load Balancer Services [cmdb_ci_lb_service] table.

Label

Field Name

Name

name

IP address

ip_address

Port

port

Operational status

operational_status

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2764


<!-- page 2765 -->
Label

Field Name

Install status

install_status

Short description

short_description

The following data is collected on the DNS [cmdb_ci_dns_name] table.

Label

Field name

Name

name

IP address

ip_address

The following data is collected on the Load Balancer Pool [cmdb_ci_lb_pool] table.

Label

Field name

Name

name

Context

context

Load balancing method

load_balancing_method

The following data is collected on the Load Balancer Pool Members [cmdb_ci_lb_pool_member]
table.

Label

Field name

Name

name

IP address

ip_address

Service port

service_port

Pool

pool

Context

context

The following data is collected on the Serial Number [cmdb_serial_number] table.

Label

Field name

Serial number

serial_number

Serial number type

serial_number_type

Valid

valid

The following data is collected on the Load Balancer Interface table [cmdb_ci_lb_interface] table:

Label

Field name

Name

name

MAC address

mac_address

Operational status

operational_status

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2765


<!-- page 2766 -->
Cisco GSS load balancer discovery
Discovery of Cisco GSS load balancers is performed by both SNMP and SSH.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Classifiers
Discovery uses the Cisco GSS Load Balancer classifier, which contains the condition:
sysdescr contains Global Site Selector to classify the device.

Probes
Discovery uses several probes, including an SNMP probe to discover the specific GSS device
and a Serial Number probe to identify the serial number of the device. See the table below for
the list of related probes.

Warning: You must have SNMP and SSH credentials

configured correctly for the GSS

load balancers on your network.
The following probes are triggered after classification:

Probe

Description

Type

Cisco GSS - Identity

A multiprobe that identifies the GSS device and serial
number.

MultiProbe

Cisco GSS - Network

This is included in the Cisco GSS - Identify probe.

JavaSNMP

Cisco GSS - Serial
Number

This is included in the Cisco GSS - Identify probe.

JavaScript

Cisco GSS - Get
Domains

A probe that discovers global domain names
corresponding to the device.

JavaScript

Tables
Discovery creates a record for each GSS device in the Cisco GSS [cmdb_ci_lb_cisco_gss]
table. Domains are populated in the DNS Names [cmdb_ci_dns_name] table. Host names and
IP addresses are stored in the IP Address to DNS Name [cmdb_ip_address_dns_name] table.
Service Mapping uses this information. You can see the DNS name information on the DNS
Names for CIs related list of the Load Balancer form.

Note: The Cisco GSS pattern is available by default to use with the Pattern Designer.
Cisco CSS load balancer
Discovery of Cisco CSS load balancers is performed by SNMP.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Classifiers
Discovery uses the Cisco CSS Load Balancer classifier, which contains the OID Classification:
1.3.6.141.9.9.368.4.5.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2766


<!-- page 2767 -->
Probes
The following probes are triggered:

Probe

Description

Type

SNMP
- Load
Balancer
- Identity

A multiprobe that identifies load balancers.

JavaSNMP

Cisco
A Java probe that includes the Cisco CSS sensor to identify
CSS - Get services defined on the load balancer in the Load Balancer Services
Services [cmdb_ci_lb_service] table. For every service, Discovery populates Name,
ip_address, and port.

JavaSNMP

Tables
Discovery creates a record for each CSS device in the Cisco CSS [cmdb_ci_lb_cisco_css] table,
which includes the device's Name, Model, Serial Number, Manufacture, and NIC (ip_address).
It also creates a record for each service in the Load Balancer Services [cmdb_ci_lb_service]
table.
.
Citrix NetScaler load balancer discovery
Discovery and Service Mapping find Citrix NetScaler load balancers including Server Load
Balancing (GSLB).

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Requirements and support

Important: Discovery treats load balancers as licensable entities and attempts to
discover them primarily using SNMP. If a load balancer in your system, running on a Linux
host, has SNMP and SSH ports open, Discovery might classify it based on the SSH port.
This classification has priority over SNMP. To ensure that Discovery properly classifies your
hardware load balancers, create a Discovery behavior for load balancers that includes
SNMP but not SSH. Software load balancers are treated as applications.
Virtual NetScaler load balancers are not fully supported. Discovery supports local server load
balancers and GSLB.

Credentials
• Configure SNMP credentials

.

Note: You also have the option of using SSH credentials

. However, if the payload size
of the data that is returned to the instance is large, the discovery process can fail. In this
case, use SNMP credentials instead.
• (Optional) Provide a user with the read access to the NS.conf configuration file if you do not
want to provide SNMP or SSH credentials.
• Use basic authentication

credentials for discovery via REST.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2767


<!-- page 2768 -->
For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.

Classifier, pattern, and probes
Classifier

NetScaler Load
Balancer

Trigger probes

Patterns

• Horizontal discovery probe: launches
patterns (see the Patterns column)

• NetScaler Load Balancer

• NetScaler - Network Path Information
(multiprobe)
◦ NetScaler - ARP Information
◦ NetScaler - Route Information
• SNMP - NetScaler - Identity

• NetScaler Load Balancer
NS.CONF
• NetScaler Load Balancer
SSH
• Netscaler Loadbalancer
NITRO

• SNMP - NetScaler - Identity - Serial
• SNMP - NetScaler - Identity Info
• SNMP - NetScaler - System

To use probes for the horizontal discovery, make sure that the NetScaler - Network
Path Information multiprobe is active on the Trigger probes related list for the
NetScaler Load Balancer classifier. Then deactivate or remove the Horizontal
discovery probe from the Trigger probes related list.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Note: When using probes and sensors and the system properties

glide.discovery.hostname.snmp_trusted and/or
glide.discovery.hostname.dns_nbt_trusted are set to false, the system uses
dns_name as the load balancer name. When using the Netscaler Load Balancer pattern,
the system currently doesn’t recognize these system properties when they are set to false.

Connections discovered by Service Mapping during the top-down discovery
Service Mapping performs the top-down discovery of the NetScaler Global Server Load Balancer
in the context of application services. It discovers configured URLs of the NetScaler Global
Server Load Balancer.

Data collected by Discovery during horizontal discovery
Table and field

Description

DNS name [cmdb_ci_dns_name]
Name [name]

The name or the DNS name alias of the
NetScaler Global Server Load Balancing
(GSLB).

IP address [ip_addresses]

Management IP address of the NetScaler
Global Server Load Balancing (GSLB).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2768


<!-- page 2769 -->
Table and field

Description

Port [port]

The DNS port that Global Server Load
Balancer listens to.

Citrix NetScaler [cmdb_ci_lb_netscaler]
Serial Number [serial_number]
Operational Status [operational_status]

The serial number of the NetScaler device and
its current operational status.

Load Balancer Pool [cmdb_ci_lb_pool]
Name [name]

The name of the pool and the method of load
balancing it enables.

Load Balancing Method
[load_balancing_method]

Load Balancer Pool Member [cmdb_ci_lb_pool_member]
Name [name]

The name, IP address and service port that
each pool member uses.

IP Address [ip_address]
Service Port [service_port]
Load Balancer VLAN [cmdb_ci_lb_vlan]
Name [name]

The name of the VLAN and the tag that is
associated with this VLAN to identify it.

Tag [tag]

Load Balancer Services [cmdb_ci_lb_service]
Name [name]

Details about the service running on the load
balancer, including

IP Address [ip_address]
Port [port]
Operational Status [operational_status]
Install Status [install_status]
Hit count [hit_count]

Exit Interface Routing Rules [dscy_route_interface]
Router Interface [router_interface]
Configuration item [cmdb_ci]

Details about the routing rules for the exit
interface, including the interface on the router
that ...

Destination IP network [dest_ip_network]
Next Hop Routing Rules [dscy_route_next_hop]
Next hop IP address [router_interface]
Router Interface [router_interface]
Configuration item [cmdb_ci]
Destination IP network [dest_ip_network]

Details about the routing rules on the load
balancer, including the IP addresses of
the next hop router on the network. The
Configuration item field is the router which is
the next hop device.

cmdb_ci_lb_netscaler
Column name

Type

ip_address

IP Address (Validated IPV4, IPV6)

Reference

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2769


<!-- page 2770 -->
cmdb_ci_lb_netscaler (continued)
name

String

operational_status

Integer

serial_number

String

Data collected during Netscaler Loadbalancer NITRO.
cmdb_serial_number
Column label

Column name

Type

Reference

Configuration Item

cmdb_ci

Reference

Configuration Item (Load Balancer)

Serial Number

serial_number

String

Serial Number Type

serial_number_type

String

Valid

valid

True/False

cmdb_ci_lb_vlan
Column label

Column name

Type

Reference

Load balancer

load_balancer

Reference

Configuration Item (Load Balancer)

Name

name

String

Tag

tag

Integer

cmdb_ci_lb_interface
Column label

Column name

Type

Reference

Load balancer

load_balancer

Reference

Configuration Item (Load Balancer)

Name

name

String

Operational status

operational_status

Integer

MAC Address

mac_address

String

cmdb_ci_lb_service
Column label Column name Type
IP Address

ip_address

Load
balancer

load_balancer Reference

Name

name

String

Port

port

Integer

Reference

IP Address (Validated IPV4,
IPV6)
Configuration Item (Load
Balancer)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2770


<!-- page 2771 -->
cmdb_ci_lb_pool
Column label

Column name

Type

Reference

Load balancer

load_balancer

Reference

Configuration Item (Load Balancer)

Name

name

String

cmdb_ci_lb_pool_member
Column label Column name Type
IP Address

ip_address

Load
balancer

load_balancer Reference

Name

name

String

Pool

pool

Reference

Service port

service_port

Integer

Reference

IP Address (Validated IPV4,
IPV6)
Configuration Item (Load
Balancer)

Load Balancer Pool

To see the DNS names and alases for a NetScaler load balancer, you must configure the form and
add the DNS Names for CIs related list. DNS names also include aliases.

Note: Discovery populates load balancer interface information that is necessary to map
the network path in Service Mapping.

Configuration item (CI) Relationships
These relationships are created to support NetScaler Global Server Load Balancer discovery:

CI

Relationship

CI

DNS name

Uses:Used by

IP address

[cmdb_ci_dns_name]

[cmdb_ci_ip_addresses]

These relationships are created to support NetScaler Loadbalancer NITRO:

CI

Relationship

CI

Netscaler

Owns::Owned by

interfaces

[cmdb_ci_lb_netscaler]
Netscaler

[cmdb_ci_lb_interface]
Owns::Owned by

[cmdb_ci_lb_netscaler]
Netscaler

[cmdb_ci_lb_vlan]
Owns::Owned by

[cmdb_ci_lb_netscaler]
service groups

vlan

service groups
[cmdb_ci_lb_pool]

Owns::Owned by

lbvservers

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2771


<!-- page 2772 -->
CI

Relationship

[cmdb_ci_lb_pool]
services

CI

[cmdb_ci_lb_pool_member]
Runs on::Runs

[cmdb_ci_lb_service]

Netscaler
[cmdb_ci_lb_netscaler]

NetScaler device sysName
To verify the NetScaler device sysName, check the snmp mib and verify the sysName value by
running the command: show snmp mib.
To change the value of the sysName, run the command: set mib -name <DNS_NAME or
NAME_OF_THE_NETSCALER_LB> to set the name of the SNMP MIB.
F5 BIG-IP load balancer discovery
Discovery and Service Mapping can find F5 BIG-IP load balancers via SNMP, SSH, and through
the REST API.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Important: Discovery treats load balancers as licensable entities and attempts to
discover them primarily using SNMP. If a load balancer in your system, running on a Linux
host, has SNMP and SSH ports open, Discovery might classify it based on the SSH port.
This classification has priority over SNMP. To ensure that Discovery properly classifies your
hardware load balancers, create a Discovery behavior for load balancers that includes
SNMP but not SSH. Software load balancers are treated as applications.
You can download VMware images of BIG-IP with a free 90-day trial from https://www.f5.com/
trial .
For F5 Global Traffic Manager (GTM) BIG-IP load balancers, Discovery can resolve the DNS
name of the F5 GTM hardware as well as the DNS names of all the servers associated with the
load balancer that receive distributed traffic. To view this data, navigate to All > Configuration >
Load Balancers > LB Hardware and open the F5 load balancer record and then select the DNS
Names for CIs related list. Service Mapping uses this information to map F5 relationships.

Note: If your F5 BIG-IP device is part of a failover cluster, it can be associated with two

cluster nodes. In this case, one of the nodes appears as Operational in the Operational
Status field, and the other appears as Non-Operational.

Prerequisites
• To successfully discover the load balancer pool members, set the display service
names option (bigpipe.displayservicenames) of the load balancer to false on the F5
load balancer.
• For F5 Load Balancer pattern:
◦ Configure SNMP credentials

on the ServiceNow AI Platform.

◦ (Optional) If there are iRules or SNMP community credentials are not enough for discovering
outgoing connections, configure SSH credentials .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2772


<!-- page 2773 -->
Note: If you do not want to use SSH credentials, you can use the REST API to create a
connection to F5 BIG-IP devices.
Service Mapping uses the SSH credentials to retrieve connections that are not from CMDB.
Discovering connections using the SSH protocol is a failover mechanism for the SNMPbased discovery.
• For F5 Load Balancer SSH pattern:
◦ Configure SSH credentials

.

◦ Verify permissions for the following SSH commands:
▪ list auth partition all
▪ list sys global-settings
▪ show sys hardware
▪ list sys db failover.state
▪ list net self one-line
▪ show sys mac-address | grep interface
▪ show net interface field-fmt
▪ show net self | grep -e 'Mac Address' 'IP:'
▪ list ltm pool | grep -e 'pool' 'mode'
▪ list ltm pool /<partition_name>/* | grep -e 'pool' 'mode'
▪ show ltm pool | grep -e 'Ltm::' 'Total Connections'
▪ show ltm pool /<partition_name>/* |grep -e 'Ltm::' 'Total
Connections'
▪ list sys db bigpipe.displayservicenames | grep value
▪ show /net vlan | grep -e 'Interface Name' 'Mac' 'Tag'
▪ show ltm virtual detail | grep -e 'Server:' 'State' 'Pool:'
'Destination' 'Total Connections'
▪ show ltm virtual detail /<partition_name>/* | grep -e
'Server:' 'State' 'Pool:' 'Destination' 'Total Connections'
▪ show gtm wideip | grep -e 'WideIp' 'State'
▪ list wideip a /<partition_name>/* | grep -e 'WideIp' 'State'
▪ show gtm wideip all | grep -e 'WideIp' 'State'
▪ list gtm wideip
▪ list gtm wideip all
• For F5REST pattern:
◦ For horizontal discovery using Discovery, provide read-only permissions to run the following
APIs:
▪ "https://" + $ipAddress + "/mgmt/tm/ltm/pool"
▪ "https://" + $ipAddress + "/mgmt/tm/sys/global-settings"
▪ "https://" + $ipAddress + "/mgmt/tm/sys/hardware"
▪ "https://" + $ipAddress + "/mgmt/tm/sys/failover"

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2773


<!-- page 2774 -->
▪ "https://" + $ipAddress + "/mgmt/tm/net/self"
▪ "https://" + $ipAddress + "/mgmt/tm/ltm/virtual?
$select=destination,mask,vlans"
▪ "https://" + $ipAddress + "/mgmt/tm/net/interface"
▪ "https://" + $ipAddress + "/mgmt/tm/net/interface/stats"
▪ "https://" + $ipAddress + "/mgmt/tm/net/trunk"
▪ "https://" + $ipAddress + "/mgmt/tm/net/vlan"
▪ "https://" + $ipAddress + "/mgmt/tm/net/vlan/"+<vlan id>
+"/interfaces"
▪ "https://" + $ipAddress + "/mgmt/tm/gtm/wideip"
▪ "https://" + $ipAddress + "/mgmt/tm/cm/traffic-group/"
▪ "https://" + $ipAddress + "/mgmt/tm/cm/device"
◦ Create basic authentication

credentials.

• For F5 REST OAuth 2.0 authentication pattern:
◦ Verify read-only permission for the following APIs:
▪ "https://" + $ipAddress + "/mgmt/shared/authn/login"
▪ "https://" + $ipAddress + "/mgmt/tm/ltm/pool"
▪ "https://" + $ipAddress + "/mgmt/tm/sys/global-settings"
▪ "https://" + $ipAddress + "/mgmt/tm/sys/hardware"
▪ "https://" + $ipAddress + "/mgmt/tm/sys/failover"
▪ "https://" + $ipAddress + "/mgmt/tm/net/self"
▪ "https://" + $ipAddress + "/mgmt/tm/ltm/virtual?
$select=destination,mask,vlans"
▪ "https://" + $ipAddress + "/mgmt/tm/net/interface"
▪ "https://" + $ipAddress + "/mgmt/tm/net/interface/stats"
▪ "https://" + $ipAddress + "/mgmt/tm/net/trunk"
▪ "https://" + $ip_address + "/mgmt/tm/net/vlan"
▪ "https://" + $ipAddress + "/mgmt/tm/net/vlan/"+<vlan id>
+"/interfaces"
▪ "https://" + $ipAddress + "/mgmt/tm/gtm/wideip"
▪ "https://" + $ipAddress + "/mgmt/tm/cm/traffic-group/"
▪ "https://" + $ipAddress + "/mgmt/tm/cm/device"
◦ Create basic authentication
◦ Create a credential alias

credentials.

for the basic authentication credential.

◦ Create a serverless discovery schedule.
• For top-down discovery using Service Mapping, provide permissions to run the following APIs:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2774


<!-- page 2775 -->
◦ https://" get_attr {"managementIP"}"/mgmt/tm/ltm/"get_attr
{"irule"}
◦ https://" get_attr {"managementIP"}"/mgmt/tm/ltm/virtual/
~Common~"get_attr {"vip_name"}
◦ https://" get_attr {"computer_system.managementIP"}"/mgmt/
tm/ltm/pool/"get_attr {"pool_name"}"/members?
• (Optional) For top-down discovery with Service Mapping, configure applicative credentials

.

• (Optional) For top-down discovery with Service Mapping, provide a user with permissions to
run the following commands:
◦ bigpipe commands (for BIG-IP LTM F5 or BIG-IP GTM F5 version 9)
◦ bigpipe and Traffic Management Shell (TMSH) commands (for BIG-IP LTM F5 or BIG-IP GTM
F5 version 10)
◦ Traffic Management Shell (TMSH) commands (for BIG-IP LTM F5 or BIG-IP GTM F5 version
11)
◦ Traffic Management Shell (TMSH) advanced commands (for BIG-IP LTM F5 or BIG-IP GTM F5
version 10, 11, and 12)
◦ The show cm traffic-group – get command for discovering F5 BIG-IP Device
Service Clustering
• (Optional) For top-down discovery with Service Mapping, give the user elevated rights to be
able to run Service Mapping commands requiring a privileged user.

F5 cluster discovery
The horizontal discovery process can find F5 clusters. To discover clusters, the credentials must
have read permission to traffic groups. For SNMP, this is the regular read permission. For SSH,
you need to have Traffic Management Shell (TMSH shell) enabled and accessible.

Note: Because F5 clusters share the same virtual IPs and addresses for all devices, the
horizontal discovery process cannot find specific IP addresses for each device.

Classifier, patterns, and probes
Discovery uses these classifiers, probes, and pattern for F5 discovery:

Classifiers Trigger probes

F5 BIGIP Load
Balancer

Horizontal discovery probe: launches
patterns

Patterns

These patterns are used for standard
horizontal discovery including
identifying clusters:
• F5 Load Balancer
• F5 Load Balancer SSH
• F5REST
• F5 REST OAuth 2.0 authentication

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2775


<!-- page 2776 -->
Classifiers Trigger probes

Patterns

Note: The F5 Load Balancer and
F5 Load Balancer SSH patterns
include the extension section that
discovers F5 certificates.

F5 HTTP

The F5 HTTP classifier does not use
a trigger probe. It triggers the F5 Load
Balancer REST pattern to perform data
collection via REST.

These patterns use iRules to get
information via REST. Service Mapping
uses these patterns for top-down
discovery:
• F5 Load Balancer REST
• F5 BigIP GTM
• F5 BigIP LTM

To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Connections discovered by Service Mapping during the top-down discovery
Service Mapping performs the top-down discovery of the GTM BIG-IP load balancer in the
context of application services. It discovers configured URLs of the GTM BIG-IP load balancers.

Data collected by Discovery during horizontal discovery
The following data is collected on the F5 Big-IP [cmdb_ci_lb_bigip] table.

Table and field

Description

F5 Big-IP [cmdb_ci_lb_bigip]
Name [name]
Serial Number
[serial_number]

Details about the load balancer. View a record in this table to see
the upstream and downstream relationships with the load balancer.

Operational Status
[operational_status]
Load Balancer Interface [cmdb_ci_lb_interface]
Name [name]

Details about each interface for the load balancer.

MAC Address
[mac_address]
Operational Status
[operational_status]
Load Balancer Pool [cmdb_ci_lb_pool]
Name [name]

The name of the pool and the method of load balancing it enables.

Load balancing method
[load_balancing_method]
Load Balancer Pool Member [cmdb_ci_lb_pool_member]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2776


<!-- page 2777 -->
Table and field

Description

Name [name]

The name, IP address, and service port that each pool member
uses.

IP Address [ip_address]
Service Port
[service_port]
Pool [pool]

Load Balancer VLAN [cmdb_ci_lb_vlan]
Name [name]
Tag [tag]

The name of the VLAN and the tag that is associated with this VLAN
to identify it.

MAC Address
[mac_address]
Load Balancer Services [cmdb_ci_lb_service]
Name [name]
IP Address [ip_address]

Details about the load balancer service that distributes the
workload to other servers, such as web servers.

Port [port]
Operational Status
[operational_status]
Hit count [hit_count]
DNS [cmdb_ci_dns_name]
Name [name]
IP Address [ip_address]

The name and IP address of the Domain Name Server for the
network adapters.

Network Adapter [cmdb_ci_network_adapter]
Name [name]

Details about the network adapters on the load balancer.

IP Address [ip_address]
Netmask [netmask]
Mac address
[mac_address]
Cluster [cmdb_ci_cluster]
Name [name]

Details about the load balancer cluster.

Cluster status
[cluster_status]
Cluster ID [cluster_id]
IP address [ip_address]
Cluster Node [cmdb_ci_cluster_node]
Name [name]

Details about each node in a cluster.

Cluster ID [cluster_id]
Cluster status
[cluster_status]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2777


<!-- page 2778 -->
Configuration item (CI) relationships for clusters
These relationships are created for clusters:

CI

Relationship

CI

cmdb_ci_cluster

Hosts::Hosted on

cmdb_ci_lb_bigip

cmdb_ci_cluster_node

Hosted on::Hosts

cmdb_ci_lb_bigip

cmdb_ci_cluster_node

Cluster of::Cluster

cmdb_ci_cluster

Create a serverless schedule for F5 BIG-IP REST OAuth 2.0 authentication-based discovery
Create a serverless discovery schedule to discover F5 BIG-IP load balancers through REST
OAuth 2.0 authentication (tokens).

Before you begin
• Verify you have the IP address for the F5 BIG-IP load balancer.
• Create a basic authentication credential. For more information, see Basic authentication
credentials .
• Create a alias for the basic authentication credential. For more information, see Credential
aliases for Discovery .
Role required: discovery_admin

Procedure
1. Navigate to All > Discovery > Discovery Schedules.
2. Create the discovery schedule record.
a. Select New.
b. On the form, fill in the fields.
Discovery Schedule New record form
Field

Description

Name

Unique name for this discovery schedule.

Discover

Scan type, which should be Serverless.

MID server

Name of the MID Server to use for this schedule.

Active

Enables this schedule for discovery.

c. Select Submit.
3. Create the execution pattern.
a. In the Discovery Schedules page, select the record you created.
b. In the Serverless Execution Patterns tab, select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2778


<!-- page 2779 -->
c. On the form, fill in the fields.
Serverless Execution Pattern New record form
Field

Description

Name

Descriptive name for this record.

Pattern Pattern to be used for this schedule, which should be the F5 REST OAuth 2.0
authentication pattern.
Proxy
Host

Fully qualified domain name of the machine on which you’re installing the proxy
server, which should be Global.

Active

Enables this schedule for discovery.

d. Select Submit.
4. Set the pattern launcher parameters.
a. In the Discovery Pattern Launcher Parameters tab, select the record you created.
b. On the form, fill in the fields.

Parameter

Value

ip_address

IP address of the F5 BIG-IP load balancer.

credential_alias

Name of the credential alias you created.

c. Select Submit.

What to do next

Either execute discovery immediately by selecting Discover now or wait until the predefined
schedule triggers the discovery.
HAProxy load balancer discovery using probes
Discovery of HAProxy Community edition load balancers is performed by SSH.

Note: Starting with Discovery and Service Mapping Patterns 1.15.0 version, pattern-based
discovery is the default method for discovering HAProxy load balancers.
• For information about enabling probe-based discovery, see Enable HAProxy load
balancer discovery with probes.
• For information about the HA Proxy pattern, see HAProxy load balancer discovery with
patterns.
• For information about Probe to Pattern migration see the knowledge article KB0694477

.

HAProxy is an open-source load balancer that can manage any TCP service. It is particularly
suited for HTTP load balancing because it supports session persistence and Layer 7 processing.
Discovery supports HAProxy for HTTP load balancing. TCP load-balancing is not supported.
Consider the following requirements for discovering the HAProxy:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2779


<!-- page 2780 -->
• The HAProxy software is installed and running on a Linux server.
• The MID Server is deployed to explore the server and the MID Server has access to the server
HAProxy configuration file.
• The configuration probe checks for the haproxy.cfg file using one of the following
methods:
◦ Using the f parameter for the HAProxy process output.
◦ Using the default /etc/haproxy/haproxy.cfg path.
• The HAProxy probes require credentials and execute privileges to run commands.
Discovery uses the Unix - Active Processes probe to identify an HAProxy load balancer when
the name of the process is haproxy. If this criterion matches, a record is created in the HAProxy
Load Balancers [cmdb_ci_lb_haproxy] table if one does not already exist for that running
process.
The following probes are triggered after classification:
HAProxy probes
Probe

Description

Commands

HAProxy –
Version

The sensor of this probe populates the HAProxy version in the
HAProxy Load Balancers [cmdb_ci_lb_haproxy] table.

haproxy

HAProxy
The sensor of this probe populates additional information in
– Get
the HAProxy Load Balancers [cmdb_ci_lb_haproxy] table. The
Configuration probe also populates information in the Load Balancer Service
[cmdb_ci_lb_service], Load Balancer Pool [cmdb_ci_lb_pool], Load
Balancer Pool Member [cmdb_ci_lb_pool_member], Load Balancer
Interface [cmdb_ci_lb_interface], and Load Balancer Application
[cmdb_ci_lb_appl] tables.

echo, sed,
cut, grep,
egrep
(within
the Borne
shell
script)

In addition to populating the data, the following relationships records are created in CI
Relationships [cmdb_rel_ci] table:
• The records in the cmdb_ci_lb_appl table run on the cmdb_ci_web_server table records.
• The records in the cmdb_ci_lb_service table use the cmdb_ci_lb_pool table records.
• The records in the cmdb_ci_pool table are used by the cmdb_ci_service table records.
• The records in the cmdb_ci_pool table are members of the cmdb_ci_pool_member table
records.
• The records in the cmdb_ci_pool_member table are members of the cmdb_ci_pool table
records.
Enable HAProxy load balancer discovery with probes
If you prefer not to start using the default HAProxy pattern-based discovery, enable probe-based
HAProxy discovery to continue using it instead.

Before you begin

Role required: discovery_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2780


<!-- page 2781 -->
Procedure
1. Navigate to All > Discovery Definition > CI Classification > Processes.
2. In the Name field, search for HAProxy.
3. Select the HAProxy classifier.
4. In the Triggers probe related list, select Edit.
5. Remove Horizontal Pattern from the Triggers probes List.
6. From the Collection list, add HAProxy - Get Configuration and HAProxy - Version to the
Triggers probe list.
7. Select Save.

What to do next

Schedule a horizontal discovery to discover HAProxy load balancer with probes. For more
information, see Schedule a horizontal discovery.
Related topics
HAProxy load balancer discovery using probes
NGINX load balancer discovery
Discovery of NGINX load balancers is performed by SSH.
NGINX is an open source web server with a load balancer. Discovery identifies the web server
and information related to the load balancer.
Consider the following requirements for discovering NGINIX servers:
• Ensure that the NGINX software is installed and running on the server.
• Grant the MID Server has access to the NGINX configuration file, which is /etc/nginx/
nginx.conf by default.
• Enable secure shell (SSH) commands.
• The NGINX probes require credentials and execute privileges to run commands.
For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.
The Nginx Process Classifier detects a running process that matches the following criteria during
the exploration of a UNIX server:
• The name of the process starts with nginx.
• The name of the process contains master.
Both of these conditions must match:
• A record is created in the Web Server [cmdb_ci_web_server] table.
• A Runs on relationship is created in the CI Relationship [cmdb_rel_ci] table for the Linux Server
[cmdb_ci_linux_server] table and the Web Server [cmdb_ci_web_server] table.
The following probes are triggered after classification:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2781


<!-- page 2782 -->
NGINX probes
Probe

Description

Commands

Nginx –
Version

This probe contains a Bourne shell script. It determines
the version of NGINX and populates the Web Server
[cmdb_ci_web_server] table.

nginx

Nginx – Get
This probe contains a Bourne shell script and an argument that
Configuration determines the path of the NGINX configuration file. The probe
identifies configuration parameters based on keywords within
the configuration file and returns them as a single payload result.

echo, sed,
cut, grep,
egrep (within
the Bourne
shell script)

In addition to populating the data, the following relationships records are created in CI
Relationships [cmdb_rel_ci] table:
• The records in the cmdb_ci_web_server table run on the cmdb_ci_linux_server table records.
• The records in the cmdb_ci_lb_service table use the cmdb_ci_lb_pool table records.
• The records in the cmdb_ci_pool table are used by the cmdb_ci_service table records.
• The records in the cmdb_ci_pool table are members of the cmdb_ci_pool_member table
records.
• The records in the cmdb_ci_pool_member table are members of the cmdb_ci_pool table
records.
Radware Alteon load balancer discovery
Discovery identifies and classifies information about Alteon load balancers.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Credentials
Configure SNMP credentials

.

Classifier, pattern, and probe
Classifier

Trigger probe

Pattern

Alteon Load Balancer

Horizontal pattern

Alteon Load Balancer by
SNMP (formerly Alteon Load
Balancer)

Data collected
The following data is collected on the Alteon [cmdb_ci_lb_alteon] table.

Label

Field Name

Serial Number

serial_number

Operational Status

operational_status

The following data is collected on the Load Balancer Interface table [cmdb_ci_lb_interface] table:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2782


<!-- page 2783 -->
Label

Field name

Name

nam

MAC address

mac_address

Operational status

operational_status

Index

index

The following data is collected on the Load Balancer Pool [cmdb_ci_lb_pool] table.

Label

Field name

Name

name

Index

index

Load balancing method

load_balancing_method

The following data is collected on the Load Balancer Pool Member [cmdb_ci_pool_member]
table:

Label

Field name

IP address

ip_address

Service port

service_port

The following data is collected on the Load Balancer Services [cmdb_ci_lb_service] table.

Label

Field Name

Name

name

IP address

ip_address

Port

port

Operational status

operational_status

Install status

install_status

Hit count

hit_count

The following data is collected on the DNS [cmdb_ci_dns_name] table.

Label

Field name

Name

name

IP address

ip_address

Radware-appDirector load balancer discovery
Discovery of Radware load balancers is performed by SNMP.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2783


<!-- page 2784 -->
Requirements

Important: Discovery treats load balancers as licensable entities and attempts to
discover them primarily using SNMP. If a load balancer in your system, running on a Linux
host, has SNMP and SSH ports open, Discovery might classify it based on the SSH port.
This classification has priority over SNMP. To ensure that Discovery properly classifies your
hardware load balancers, create a Discovery behavior for load balancers that includes
SNMP but not SSH. Software load balancers are treated as applications.

Credentials
Configure SNMP credentials

.

Classifier, pattern, and probes
Classifier

Probe

Pattern

Radware - AppDirector - Load
Balancer

Horizontal discovery probe:
launches patterns

AppDirector Load Balancer

Data discovery
The following data is collected on the Radware Load Balancers [cmdb_ci_lb_radware]
table.

Label

Field name

Serial number

serial_number

The following data is collected on the DNS Name [cmdb_ci_dns_name] table.

Label

Field name

Name

name

IP address

ip_address

The following data is collected on the Load Balancer Services [cmdb_ci_lb_service]
table.

Label

Field Name

Name

name

IP Address

ip_address

Port

port

Operational Status

operational_status

Install Status

install_status

Load balancer fields and probes
Discovery stores load balancer information in several tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2784


<!-- page 2785 -->
The information in this topic pertains to discovery with probes and sensors only. If you are using
patterns, such as to discover F5 Big-IP load balancers, see the relevant topic for that type of load
balancer.

Note: By default, the system uses the discovered IP address of a load balancer for the CI
record. This can be the management IP created for the device that is used in the Discovery
schedule. For instructions on how to force Discovery to use the IP address of the load
balancer's NIC rather than that of a management IP, see IP address selection properties.
Fields on the Citrix Netscalers [cmdb_ci_lb_netscaler] table
Field label and name

Probes that gather data

Serial Number [serial_number]

SNMP - Netscaler - Identity - Serial

Asset tag [asset_tag]

SNMP - Netscaler - Identity

Model ID [model_id]

SNMP - Netscaler - Identity

Fields on the Cisco GSS [cmdb_ci_lb_cisco_gss] table
Field label and name

Probes that gather data

Serial Number [serial_number]

Cisco GSS - Serial Number

Model ID [model_id]

Cisco GSS - Identity

IP Address [ip_address]

Cisco GSS - Network

Manufacturer [manufacturer]

Cisco GSS - Identity

Fields on the Cisco CSS [cmdb_ci_lb_cisco_css] table
Field label and name

Probes that gather data

Serial Number [serial_number]

SNMP - Load Balancer – Identity

Model ID [model_id]
IP Address [ip_address]
Manufacturer [manufacturer]
Fields on the F5 BIG-IP [cmdb_ci_lb_bigip] table
Field label and name

Probes that gather data

Active modules [active_modules]*

SNMP - F5 BIG-IP - System

Asset tag [asset_tag]
Model ID [model_id]
Failover mode [failover_mode]*
Failover peer [failover_peer]*
Serial Number [serial_number]

Cisco GSS - Serial Number

*not visible on the form by default. Customize the form to add this field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2785


<!-- page 2786 -->
Fields on the Load Balancer [cmdb_ci_lb] table
Field label and name

Operational status [operational_status]
Name [name]

Probes that gather data

• Apache - Get JK Module
• Apache - Get Proxy Module
• HAProxy - Get Configuration
• SNMP - F5 BIG-IP - System
• SNMP - Netscaler - System
• SNMP - Load Balancer - Identity

Fields on the Load Balancer Application [cmdb_ci_lb_appl] table
Field label and name

Probes that gather data

Configuration file [config_file]*

Nginx - Get Configuration

Name [name]

• Apache - Get JK Module

IP Address [ip_address]*

• Apache - Get Proxy Module

Most recent discovery [last_discovered]*

• HAProxy - Get Configuration
• Nginx - Get Configuration

Version [version]

• Apache - Version
• HAProxy - Version
• Nginx - Version

Fields on the Load Balancer Interface [cmdb_ci_lb_interface] table
Field label and name

Status [install_status]*

Probes that gather data

• Apache - Get JK Module

Load Balancer [load_balancer]

• Apache - Get Proxy Module

Name [name]

• HAProxy - Get Configuration
• SNMP - F5 BIG-IP - System
• SNMP - Netscaler - System

*not visible on the form by default. Customize the form to add this field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2786


<!-- page 2787 -->
Fields on the Load Balancer Pool [cmdb_ci_lb_pool] table
Field label and name

Load Balancing Method [load_balance_method]

Probes that gather data

• Apache - Get JK Module

Load Balancer [load_balancer]

• Apache - Get Proxy Module

Most recent discovery [last_discovered]*

• HAProxy - Get Configuration

Name [name]

• SNMP - F5 BIG-IP - System
• SNMP - Netscaler - System

*not visible on the form by default. Customize the form to add this field.
Fields for Load Balancer Pool Member [cmdb_ci_lb_pool_member] data
Field label and name

Fully qualified domain name [fqdn]*

Probes that gather data

• HAProxy - Get Configuration
• Nginx - Get Configuration
• SNMP - F5 BIG-IP - System
• SNMP - Netscaler - System

IP Address [ip_address]

• Apache - Get JK Module

Load balancer [load_balancer]

• Apache - Get Proxy Module

Most recent discovery [last_discovery]*

• HAProxy - Get Configuration

Name [name]

• Nginx- Get Configuration

Pool [pool]*

• SNMP - F5 BIG-IP - System

Service Port [service_port]

• SNMP - Netscaler - System

*not visible on the form by default. Customize the form to add this field.
Fields for Load Balancer Service [cmdb_ci_lb_service] data
Field label and name

Input URL [input_url]

Probes that gather data

• Apache - Get JK Module
• Apache - Get Proxy Module
• Nginx - Get Configuration

IP Address [ip_address]

• Apache - Get JK Module
• Apache - Get Proxy Module
• Cisco GSS - Identity
• HAProxy - Get Configuration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2787


<!-- page 2788 -->
Fields for Load Balancer Service [cmdb_ci_lb_service] data (continued)
Field label and name

Probes that gather data

• Nginx - Get Configuration
• SNMP - F5 BIG-IP - System
• SNMP - Netscaler - System
Last port [last_port]*
Load Balancer [load_balancer]

HAProxy - Get Configuration
• Apache - Get JK Module

Most recent discovery [last_discovery]*

• Apache - Get Proxy Module

Service Port [service_port]*

• Cisco GSS - Identity
• HAProxy - Get Configuration
• Nginx - Get Configuration
• SNMP - F5 BIG-IP - System
• SNMP - Netscaler - System

*not visible on the form by default. Customize the form to add this field.
Fields for Load Balancer VLAN [cmdb_ci_lb_vlan] data
Field label and name

Load Balancer [load_balancer]
Name [name]

Probes that gather data

• Apache - Get JK Module
• Apache - Get Proxy Module
• HAProxy - Get Configuration
• Nginx - Get Configuration
• SNMP - F5 BIG-IP - System
• SNMP - Netscaler - System

Tag [tag]

• SNMP - F5 BIG-IP - System
• SNMP - Netscaler - System

Apache web server data
Discovery also collects data on Apache web serer load balancing modules using SSH. See
Apache mod_jk and mod_proxy discovery for more information on probes for Apache web server
data. For information on the tables, fields, and data sources that discovery populates for Apache
web servers, see Apache web server discovery.
Layer 2 discovery
Discovery can detect the physical connections, known as layer 2, between network devices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2788


<!-- page 2789 -->
Layer 2 discovery process
Discovery uses multiple probes to gather information about network adapters and their Layer
2 connections. The following diagram shows the probes that Discovery launches for network
Discovery, including those used for Layer 2 Discovery.

For example, if Discovery finds a switch in a network, it triggers the SNMP - Switch Vlan probe and the SNMP - Network - ARPTable probe. For every Vlan that Discovery
finds, it triggers various switch probes. If a switch has routing capabilities, Discovery triggers
the SNMP - Routing probe to collect network adapter information in the Network Adapter
[cmdb_ci_network_adapter] table. If Discovery finds a server, it triggers the appropriate Address
Resolution Protocol (ARP) probe for that operating system. Discovery also supports the use of
patterns, such as the Network Switch and Network Router patterns, which are available
by default in Discovery. See Network switch and router discovery for more information.
During the discovery of a network device, Discovery creates records in the Router Interface
[dscy_router_interface] table and the Switchport [dscy_switchport] table. This information
contains network adapter information for that device. For SNMP-enabled devices, Discovery
gathers the information from a routing probe during the exploration phase. The Layer 2 protocol
cache probe runs next to collect neighbor data from the device.

Retrieving neighbor data
As Discovery gathers network information from the probes on a device, the SNMP - Layer 2
Protocol Caches identifies device neighbors via CDP and LLDP. This probe updates the Device
Neighbors [discovery_device_neighbors] table, which contains the Layer 2 connections between
switches. Sometimes, the neighbors of this device might not yet be known to the instance.
The neighbor's interface cannot be resolved to a record until Discovery eventually finds the
neighbor's side of the relationship. When Discovery runs on the neighboring device, Discovery
completes the information for the neighbor's interface for the original reporting device.
Discovery can retrieve neighbor data from these caches on a network device:
• Cisco Discovery Protocol (CDP) : Cache on Cisco devices that contains device neighbor
information in the form of a protocol specific neighbor ID. Cisco Discovery Protocol (CDP).
• Link Layer Discovery Protocol (LLDP) : Generic cache that contains device neighbor
information in the form of a protocol specific neighbor ID.
• Address Resolution Protocol (ARP)
connecting devices and servers.

: Cache that contains the IP and MAC addresses of all

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2789


<!-- page 2790 -->
How Layer 2 Discovery works
When device discovery is complete, the system runs the Service Discovery - Device Complete
business rule on the Device [discovery_device_history] table. This business rule uses several
strategies, together with information from various tables to create Connects to:Connected
by relationships in the CMDB. Relationships can be created between:
• A server and a switch
• Two switches
• A device and the port of another device
• The ports of two devices
In the following example, Discovery found a server running AIX, and was also able to find two IP
switches on the network. These relationships were created:
• A Connects to relationship between the AIX Server and the two IP switches A and B.
• A reference between the AIX server and its own network adapter.
• A Connects to relationship between the adapters on the two IP switches (not shown in the
following image).
• A Connects to relationship between the network adapter of the AIX server and the switch
port of IP switch A (highlighted in red). This kind of relationship is created by default.

To view these relationships, open the dependency view for the server. To view the relationship
between the two IP switches, open the dependency view from one of the switches and select the
Physical Network Connections option for the Dependency Type in the map settings.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2790


<!-- page 2791 -->
Layer 2 connection strategies
Layer 2 Discovery uses the following strategies to create relationships between devices in a
network:
PhysicalHostConnectionStrategy
This strategy creates a connection between a discovered server, which is not a
network device, and a network device. This strategy can only create a Layer 2
connection if there is a single MAC address on the port in the switch's forwarding
table. If the port has multiple MAC addresses, Discovery does not create a
connection between the server and the switch.
If the switch's port is identified, Discovery creates a Connects to::Connected by
relationship between the server adapter and the switch port. Otherwise, Discovery
creates a Connects to::Connected by relationship between the server adapter and
the switch itself.
VMLayer2ConnectionStrategy
This strategy creates a connection between a VM and a network device. If the
number of exceptional MAC addresses is very low (less than 3 and less than 15%
of all MAC address of the ESX server and its VMs), Discovery creates a Layer 2
connection.
NetworkDeviceLayer2ConnnectionStrategy
This strategy creates a connection between a network device and its neighbors.
Discovery creates a Layer 2 connection if there is a single neighbor with a neighbor
address, a neighbor interface, or both. If the neighbor's interface exists, Discovery
creates a Connects to::Connected by relationship between the origin interface and
the neighbor's interface. Otherwise, Discovery creates a Connects to::Connected
by relationship between the origin interface and the switch with the neighbor's
address.
SpanningTreeLayer2ConnectionStrategy
This strategy creates a connection between a network device and the parent of the
network device in the spanning tree.
JavaScriptLayer2ConnectionStrategy
This strategy calls a Javascript function with empty implementation. This allows for
the creation of an additional strategy.

Address Resolution Protocol (ARP) in Layer 2 discovery
The probes for Address Resolution Protocol (ARP) map the IP address of a computer or network
device to a MAC address. These probes retrieve the IP address and MAC address for a CI from
the Network Infrastructure Item [dscy_net_base] table. Devices that support SNMP, such as Linux
computers and network devices, cache two types of address information:
• Static: Manually added address resolutions.
• Dynamic: Hardware name and IP address pairs added to the cache by previous, successful
ARP resolutions.
When the ARP table Discovery completes, the system collects all static and dynamic table
entries from devices via SNMP. If a new ARP entry is available, it is added to the Network ARP
Table [discovery_net_arp_table]. If any previously discovered ARP entries are no longer cached
in the device ARP table, the system removes the corresponding records from the CMDB using
the reconciliation process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2791


<!-- page 2792 -->
Note: If new ARP entries are created after Discovery runs, they are not discovered until
the next Discovery schedule. If ARP entries are removed from the device after Discovery
runs, the CMDB ARP table is not updated until Discovery runs again.
Discovery provides these probes for extracting IP and MAC address resolution information:

Probe

ECC queue topic

Command

Description

Linux - Network ARP
Tables

SSHCommand

sh ${file:linux_arp.sh}

SSH command probe
that retrieves the
network information
from the ARP table on
a Linux server.

Solaris - Network ARP
Tables

SSHCommand

arp -an

SSH command probe
that retrieves the
network information
from the ARP table on
a Solaris server.

Windows - Network
ARP Table

Powershell

arp -a

Powershell probe
that retrieves the
network information
from the ARP table on
a Windows server.

SNMP - Network ArpTable

SNMP

Table

This runs a script
file to try the nettools command (arp
-n) first. If that fails,
it will then try the
iproute2 command (ip
neighbor).

SNMP probe that
collects information
The SNMP probe
from the ARP table on
uses this OID first:
a switch or router.
iso.org.dod.internet.mgmt.mib-2.ip.ipNetToMe
ipNetToMediaPhysAddress,ipNetToMediaNetAddre

If the probe fails
to return results,
it uses this OID:
iso.org.dod.internet.mgmt.mib-2.ip.ipNetToPh
ipNetToPhysicalNetAddress,ipNetToPhysicalPhy

SNMP switch probes
These probes return bridging information from VLANs connected across network switches,
including port selection, forwarding tables, and the use of the spanning tree protocol.
SNMP - Switch - BridgePortTable
This probe returns all the ports from a switch that are used to create a bridge
between network segments.
Bridging data returned
Table

Switch Bridge Port Table
[discovery_switch_bridge_port_table] This table

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2792


<!-- page 2793 -->
Bridging data returned (continued)
is used to map between a port number in the
discovery_switch_fwd_table and an interface index.
OID
Fields populated

iso.org.dod.internet.mgmt.mib-2.dot1dBridge.dot1dBase.dot1dBasePortTable
dot1dBasePort,dot1dBasePortIfIndex
• cmdb_ci
• port
• interface_index

SNMP - Switch - SpanningTreeTable
This probe returns the active path between any two network nodes bridged by a
switch.
Spanning tree data returned
Table

Switch Spanning Tree Table
[discovery_switch_spanning_tree_table]. This table is used to
find Layer 2 connections between switches.

OID

iso.org.dod.internet.mgmt.mib-2.dot1dBridge.dot1dStp.dot1dStpPortTable
dot1dStpPort,dot1dStpPortState,dot1dStpPortEnable,dot1dStpPortDesignatedRoot,do

Fields populated

• cmdb_ci
• port
• port_state
• port_enable
• designated_root
• designated_bridge_mac

SNMP - Switch - ForwardingTable
This probe returns information from a switch's forwarding table.
Forwarding table data returned
Table

Switch Forwarding Table [discovery_switch_fwd_table] This is
the forwarding table for the switches.

OIDs

These OIDs are built as needed by the

DiscoveryVlanSwitchProcessor script include.
• Non-Cisco:

◦ Q-BRIDGE MIB: oid_spec_list = 'table
iso.org.dod.internet.mgmt.mib-2.dot1dBridge.qBridgeMIB.
dot1qTpFdbAddress.' + vlanIndex +

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2793


<!-- page 2794 -->
Forwarding table data returned (continued)
',dot1qTpFdbPort.' + vlanIndex +
',dot1qTpFdbStatus.' + vlanIndex;
◦ BRIDGE MIB: oid_spec_list = 'table
iso.org.dod.internet.mgmt.mib-2.dot1dBridge.dot1dTp.dot1dTpFdbTable
dot1dTpFdbAddress,dot1dTpFdbPort,dot1dTpFdbStatus’;

• Cisco BRIDGE MIB: oid_spec_list = 'table
iso.org.dod.internet.mgmt.mib-2.dot1dBridge.dot1dTp.dot1
dot1dTpFdbAddress,dot1dTpFdbPort,dot1dTpFdbStatus’;
Additional probe
called

The SSH probe Switch - MAC Table can be triggered
by the DiscoveryVlanSwitchProcessor script
include to populate additional Layer 2 data. If you are missing
Layer 2 data after you run discovery on multiple VLANs,
you should enable the triggering of the Switch - MAC
Table probe and run discovery again.
To do this, add this property to the
System Property [sys_properties] table:
glide.discovery.sensors.forwardingtable.ssh.
Set the value of the property to true. By default this property
is false.

Command
Fields populated

show mac address-table
• cmdb_ci
• vlan_id
• port
• status
• mac_address (from the cmdb_ci field in the Network
Infrastructure Item [discovery_net_base] table)

SNMP - Switch - Vlan
This probe returns VLAN IDs from a network switch and these OIDs:

iso.org.dod.internet.private.enterprises.cisco.ciscoMgm
t.ciscoVtpMIB.vtpMIBObjects.vlanInfo.vtpVlanTable vtpVl
anState
iso.org.dod.internet.private.enterprises.cisco.ciscoMgm
t.ciscoVlanMembershipMIB.ciscoVlanMembershipMIBObjects.
vmMembership.vmMembershipSummaryTable vmMembershipSumma
ryVlanIndex,vmMembershipSummaryMemberPorts,vmMembership
SummaryMember2kPorts
iso.org.dod.internet.private.enterprises.juniperMIB.jnx
Mibs.jnxExMibRoot.jnxExSwitching.jnxExVlan.jnxVlanMIBOb
jects.jnxExVlanTable jnxExVlanTag
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2794


<!-- page 2795 -->
iso.org.dod.internet.mgmt.mib-2.system.sysDescr
Other switch types are not supported.

Port tables
These port tables are populated during horizontal Discovery of a device:
• Network Adapter [cmdb_ci_network_adapter]
• Switchport [dscy_switchport]
• Router Interface [dscy_router_interface]
• Load Balancer Interface [cmdb_ci_lb_interface]
TCP connection discovery
Discovery identifies and classifies information about TCP connections using the ADM and ADME
probes.
Discovery populates this data in the TCP Connections [cmdb_tcp] table.

Label

Table
Name

Field
Name

Absent

cmdb_tcp absent

Description

If the process is no longer running on this device. The first
time the process is detected, the value is not selected
(meaning that it is not absent). If Discovery runs again and
does not detect the process, it is selected.

Computer cmdb_tcp computer The device that is connected to or is listening on the TCP
port.
IP

cmdb_tcp ip

The IP address that this device or process is listening on
or is connected to. If the IP address is 127.0.0.1, it is the host
computer itself.

PID

cmdb_tcp pid

The ID of the process that is connecting to or listening on
this device (IP address).

Port

cmdb_tcp port

The port number through which TCP traffic was detected.

Process

cmdb_tcp process

The process that is connecting to or listening on the port.

Type

cmdb_tcp type

• Listening on: the process is listening to the device via TCP.
• Connecting to: if the process is connected to this device
via TCP.

count

cmdb_tcp count

The number of times that Discovery detects a specific TCP
connection. This field is used by ADM enhanced probes.

Discovery populates this data in the Running Process [cmdb_running_process] table.

Label

Field Name

Description

Name

name

The name of the running process.

Computer

computer

The device that the process is running on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2795


<!-- page 2796 -->
Label

Field Name

Description

Parent

parent

The parent process of this process, if any.

Listening
on

listening_on

The ports that the processes is listening on.

Connected connected_to
to

The ports that the processes is connected to.

Command

command

The command for this process, including the path.

PID

pid

The ID for the process.

PPID

ppid

The ID for the parent process.

Absent

absent

If the process is no longer running on this device. The first time
the process is detected, the value is not selected (meaning that
it is not absent). If Discovery runs again and does not detect the
process, it is selected.

Classify

classify

If the running process should be classified.

Key
key_parameters The key parameters for the command.
parameters
Parameters parameters

The parameters for the command.

Count

The number of times that Discovery detects a specific TCP
connection. This field is used by ADM enhanced probes.

count

Standard ADM probes
Discovery launches these probes with standard ADM discovery:

Name

Description

Includes these sub-probes

AIX ADM

Queries for information about active (running) AIX
processes and active connections - the information
required to perform application dependency mapping.

• AIX - Active
Connections

Queries for information about active (running) HP-UX
processes and active connections - the information
required to perform application dependency mapping.

• UNIX - Active
Connections

HP-UX ADM

This probe requires that lsof be installed and the UNIX
- Active Connections probe be activated, which is
inactive by default.
Solaris ADM

Queries for information about active (running) Solaris
processes and active connections - the information
required to perform application dependency mapping.
This probe is triggered by the Solaris Zones probe.
The system triggers an ADM probe for each local zone
contained in a global zone.

• AIX - Active Processes

• HP-UX - Active
Processes

• Solaris - Active
Processes
• Solaris - Active
Connections

This probe requires that lsof be installed on the global
zone.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2796


<!-- page 2797 -->
Name

Description

Includes these sub-probes

UNIX ADM

Queries for information about active (running) UNIX
processes and active connections - the information
required to perform application dependency mapping.

• UNIX - Active
Connections

Windows Queries for information about active (running) Windows
- ADM
processes and active connections - the information
required to perform application dependency mapping.

UNIX
- ADM
netstat

Performs the same functions as the UNIX ADM probe
relying on netstat to support continuous TCP-based
discovery. Service Mapping uses this probe for trafficbased discovery.

• UNIX - Active Processes

• Windows - Active
Connections
• Windows - Active
Processes

• UNIX - Active
Connections
with Netstat. This
probe retrieves
TCP connections
to populate the
cmdb_tcp and
cmdb_tcp_connection
tables.
• UNIX - Active
Processes. This
probe retrieves
TCP processes
and populates the
cmdb_running_process
table.

Enhanced ADM probes
Discovery launches these probes when enhanced ADM is activated:

Probe

Description

Windows Performs the same functions as the Windows ADM probe with additional
- ADM
parameters to control continuous TCP-based discovery. This probe is compatible
Enhanced with WinRM and non-WinRM supported MID Servers. Configure your MID Server
using the mid.windows.management_protocol parameter. See MID Server
parameters
for the values you can use for this parameter.
UNIX
Performs the same functions as the UNIX ADM probe with additional parameters to
- ADM
control continuous TCP-based discovery.
Enhanced
Use these probe parameters with the enhanced ADM probes:

Parameter

Description

mid.adme.max_result_size

Control the size of the TCP tracking file.

max.adme_result_payload_size Controls the size of the result, including the payload.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2797


<!-- page 2798 -->
Parameter

Description

Note: If this is greater than the MID Server properties
mid.discovery.max_payload_size, a configuration error
can occur.

Related topics
Application Dependency Mapping (ADM) for Discovery
IP address discovery
Discovery identifies and classifies information about IP addresses.
Data Collected by Discovery on IP Addresses
Label

Table Name

Field Name

Source

IP Address

cmdb_ci_ip_address

ip_address

Various internal

IP version

cmdb_ci_ip_address

ip_version

Various internal

Netmask

cmdb_ci_ip_address

netmask

Various internal

Nic

cmdb_ci_ip_address

nic

Various internal

Related topics
Discovery IP address configuration
IP network discovery
Discovery identifies and classifies information about IP networks.
Data collected by Discovery on IP networks
Label

Table Name

Field Name

Source

Discover

cmdb_ci_ip_network

discover

Various internal

Subnet

cmdb_ci_ip_network

subnet

Various internal

Network discovery

cmdb_ci_ip_network

network_discovery

Various internal

Last discovered

cmdb_ci_ip_network

last_discovered

Various internal

MID server

cmdb_ci_ip_network

mid_server

Various internal

Router

cmdb_ci_ip_network

router

Various internal

State

cmdb_ci_ip_network

state

Various internal

Related topics
Network discovery
Network printer discovery
Discovery identifies and classifies information about network printers.
Discovery can identify and classify Network Printers. For more information, see Network
discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2798


<!-- page 2799 -->
Data collected by Discovery on network printers
Label

Table name

Field name

Source

Serial number

cmdb_ci

serial_number

SNMP, various MIBs

Start date

cmdb_ci

start_date

SNMP, RFC1213 MIB

Manufacturer

cmdb_ci

manufacturer

SNMP, RFC1213 MIB

Model ID

cmdb_ci

model_id

SNMP, RFC1213 MIB

IP address

cmdb_ci_network_adapter ip_address

SNMP, IP MIB

MAC address

cmdb_ci_network_adapter mac_address

SNMP, IF MIB

Printer type

cmdb_ci_printer

print_type

SNMP, PRINT MIB

Use count

cmdb_ci_printer

use_count

SNMP, PRINT MIB

Use count units

cmdb_ci_printer

use_units

SNMP, PRINT MIB

Colors

cmdb_ci_printer

colors

SNMP, PRINT MIB

Horizontal
resolution

cmdb_ci_printer

horizontal_resolution SNMP, PRINT MIB

Vertical
resolution

cmdb_ci_printer

vertical_resolution

SNMP, PRINT MIB

Resolution units

cmdb_ci_printer

resolution_units

SNMP, PRINT MIB

Description

discovery_printer_supplies description

SNMP, PRINT MIB

Supply type

discovery_printer_supplies supply_type

SNMP, PRINT MIB

Supply class

discovery_printer_supplies supply_class

SNMP, PRINT MIB

Current level

discovery_printer_supplies current_level

SNMP, PRINT MIB

Max capacity

discovery_printer_supplies max_capacity

SNMP, PRINT MIB

Name

cmdb_ci

Shazzam, SNMP, various
MIBs

name

Network switch and router discovery
Discovery identifies and classifies information about network switches and routers.
Network switches and routers often have very similar capabilities. It is very common for some
switches known as Layer 3 switches to have IP routing. Larger routers with optional modules
might accept switching modules. Because of these overlaps and the resulting ambiguity of a
particular device's classification, Discovery collects the same data for both routers and switches,
if it is available in any given device. For details on how Discovery collects data about connections
between network devices and other components, see Layer 2 discovery.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Prerequisites
• The router or switch needs to have IP Address information.
• The system property glide.discovery.L3_mapping is set to true to discover routers and
switches.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2799


<!-- page 2800 -->
• The router or Layer 3 switch that provides the IP Address needs to have been successfully
discovered with populated Exit Interface Routing Rules.
• If you must populate the [discovery_device_neighbors] table during horizontal layer 2
discovery of the bgp-enabled devices, set the BGP router exploration disable property to No.
Notice that enabling this property can cause performance issues including out-of-memory
issues on the MID Server.

System properties
You can configure many aspects of Discovery to work according to your personal preferences.
The following properties apply to network routers and switches. To view the properties, navigate
to Discovery Definition > Properties unless indicated otherwise.

Property

Description

glide.discovery.L3_mapping

This creates IP Connecton::IP
Connection relation between
servers and network devices.
• Type: string
• Default value: true
• Location: System Property
[sys_properties] table

glide.discovery.max_concurrent_invocations_per_schedule Sets a maximum number of
scheduled invocations of the
same Discovery schedule. It
prevents a backlog of scheduled
runs if Discovery does not finish
before the next invocation is
scheduled to run. The value is an
integer that represents the max
number of automated invocations
of the same schedule that may
proceed at one time. If the limit
has been reached, subsequent
scheduled invocations are
canceled. A value of 0 or any
negative number disables this
property.
• Type: integer
• Default value: 3
• Location: Discovery Definition
> Properties

Note: This property does
not apply to schedules
that have a 'Run after'
configuration set to 'Even if
canceled'.
For a list of properties used in discovery in general, see Discovery properties.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2800


<!-- page 2801 -->
Credentials
Discovery explores many kinds of devices, such as switches, routers, and printers, using the
SNMP protocol. SNMP Community Credentials do not include a user name, just a password,
which is the community string. The default read-only community string for many SNMP devices is
public, and Discovery will try that automatically. SNMPv3 credentials require a user name and a
key, depending on the protocol selected. Enter the appropriate SNMP credentials
if they differ
from the public community string.

Note: SSH is not supported for routers and switches, but is supported for load balancers.
Classifier, pattern, and probes
Classifiers

Standard Network Router
Standard Network Switch

Trigger probes

• Horizontal Pattern: launches
patterns

Pattern

Network Router
Network Switch

• SNMP-Routing^
• DNS*
• SNMP-Identity*
• SNMP-Switch-Vlan*
• SNMP-Switching*
• SNMP - Network - ArpTable*
(Standard Network Switch only)

*For new instances, these probes are inactive on the classifier. Discovery uses patterns for
discovery.
^This probe remains active by default for the Standard Network Router classifier, even when
Discovery uses pattern discovery.
To use patterns, verify that the correct pattern is specified in the horizontal pattern probe on the
classifier. See Add the Horizontal Pattern probe to a classifier for instructions.

Discovering stacked switches
The Network Switch shared library supports Cisco stacked switches. The CI table for this is
IP Switch [cmdb_ci_ip_switch]. Multiple switches in the stack are identified by the primary IP
address. Each member of the stack is identified by a combination of elements, including the
primary IP address, a name associated with the switch, and the stack mode. The relationship is
created between a primary and all of the secondaries. The primary switch has all the fields listed
in the table below. The secondary switch has name, serial_number, model_id, manufacturer,
stack, and stack_mode.

Note: If all the ports on a switch are open for port 161, that switch will have multiple IPs
(one for each port) but the serial number for all the ports is the same. The CI identification
is performed based on the serial number, therefore the same record is updated every time
instead of creating a new record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2801


<!-- page 2802 -->
Router and switch data
Table name

cmdb_ci

Label/Field name

Serial Number

Source

SNMP, various MIBs

serial_number
cmdb_ci

Manufacturer

SNMP, RFC1213 MIB

manufacturer
cmdb_ci

Model ID

SNMP, RFC1213 MIB

model id
cmdb_ci_ip_router

Name
name

cmdb_ci_ip_router

Model ID

SNMP, RFC1213 MIB

model ID
cmdb_ci_ip_router

Manufacturer

SNMP, RFC1213 MIB

manufacturer
cmdb_ci_ip_router

Serial Number

SNMP, various MIBs

serial_number
cmdb_ci_ip_router

IP Address

SNMP, IP MIB

ip_address
cmdb_ci_ip_router

Description
short_description

cmdb_ci_ip_router

Can route IP

SNMP, IP MIB, BGP MIB

can_route
cmdb_ci_ip_router

Can switch IP

SNMP, dot1dBridge MIB

can_switch
cmdb_ci_ip_router

Port

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2802


<!-- page 2803 -->
Table name

Label/Field name

Source

port
cmdb_ci_ip_switch

Name
name

cmdb_ci_ip_switch

Model ID

SNMP, RFC1213 MIB

model ID
cmdb_ci_ip_switch

Manufacturer

SNMP, RFC1213 MIB

manufacturer
cmdb_ci_ip_switch

Serial Number

SNMP, various MIBs

serial_number
cmdb_ci_ip_switch

IP Address

SNMP, IP MIB

ip_address
cmdb_ci_ip_switch

Description
short_description

cmdb_ci_ip_switch

Can route IP

SNMP, IP MIB, BGP MIB

can_route
cmdb_ci_ip_switch

Ports

SNMP, dot1dBridge MIB

ports
cmdb_ci_ip_switch

Can switch IP

SNMP, dot1dBridge MIB

can_switch
cmdb_ci_ip_switch

Can partition VLANs

SNMP, dot1dBridge MIB

can_partitionvlans
cmdb_ci_ip_switch

Stack

SNMP, entPhysicalTable

stack
cmdb_ci_ip_switch

Stack Mode

SNMP, entPhysicalTable

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2803


<!-- page 2804 -->
Table name

Label/Field name

Source

stack_mode
cmdb_ci_netgear

Can route IP

SNMP, IP MIB, BGP MIB

can_route
cmdb_ci_netgear

Can switch IP

SNMP, dot1dBridge MIB

can_switch
cmdb_ci_netgear

Can partition VLANs

SNMP, dot1dBridge MIB

cdscy_router_interface
cmdb_ci_netgear

Can Hub

SNMP, IP MIB

can_hub
cmdb_ci_network_adapter

IP Address

SNMP, IP MIB

ip_address
cmdb_ci_network_adapter

MAC Address

SNMP, IF MIB

mac_address
discovery_device_neighbors

Neighbor Address

ciscoCdpMIB

neighbor_address
discovery_device_neighbors

Neighbor ID

ciscoCdpMIB, lldpMIB

neighbor_ID
discovery_device_neighbors

Neighbor Interface

ciscoCdpMIB, lldpMIB

neighbor_interface
discovery_device_neighbors

Neighbor Source

ciscoCdpMIB, lldpMIB

neighbor_source
discovery_device_neighbors

Origin Interface

ciscoCdpMIB, lldpMIB

origin_interface
discovery_net_arp_table

IP Address

SNMP, IP MIB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2804


<!-- page 2805 -->
Table name

Label/Field name

Source

IP_address
discovery_net_arp_table

MAC Address

SNMP, IP MIB

mac_address
discovery_switch_bridge_port_table

Interface Index

SNMP, dot1dBridge MIB

interface_index
discovery_switch_bridge_port_table

Port

SNMP, dot1dBridge MIB

port
discovery_switch_fwd_table

MAC Address

SNMP, dot1dBridge MIB

mac_address
discovery_switch_fwd_table

Port

SNMP, dot1dBridge MIB

port
discovery_switch_fwd_table

Status

SNMP, dot1dBridge MIB

status
discovery_switch_fwd_table

VLAN ID

SNMP, dot1dBridge MIB

vlan_id
discovery_switch_spanning_tree_table

Designated Bridge MAC

SNMP, dot1dBridge MIB

designated_bridge_mac
discovery_switch_spanning_tree_table

Designated Root

SNMP, dot1dBridge MIB

designated_root
discovery_switch_spanning_tree_table

Port

SNMP, dot1dBridge MIB

port
discovery_switch_spanning_tree_table

Port Enable

SNMP, dot1dBridge MIB

port_enable
discovery_switch_spanning_tree_table

Port State

SNMP, dot1dBridge MIB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2805


<!-- page 2806 -->
Table name

Label/Field name

Source

port_state
dscy_router_interface

Name

SNMP, IP MIB

name
dscy_router_interface

Type

SNMP, IP MIB

type
dscy_router_interface

Number

SNMP, IP MIB

number
dscy_router_interface

IP Address

SNMP, IP MIB

ip_address
dscy_router_interface

MAC Address

SNMP, IP MIB

mac_address
dscy_route_interface

Destination Network

SNMP, IP MIB

dest_ip_network
dscy_route_interface

Type

SNMP, IP MIB

type
dscy_route_next_hop

Destination Network

SNMP, IP MIB

dest_ip_network
dscy_route_next_hop

Type

SNMP, IP MIB

type
dscy_route_next_hop

Next Hop

SNMP, IP MIB

next_hop_ip_address
dscy_switchport

Type

SNMP, dot1dBridge MIB

type
dscy_switchport

Status

SNMP, dot1dBridge MIB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2806


<!-- page 2807 -->
Table name

Label/Field name

Source

status
dscy_switchport

MAC Address

SNMP, dot1dBridge MIB

mac_address
dscy_switchport

Port Number

SNMP, dot1dBridge MIB

port_number
dscy_switchport

Interface Name

SNMP, dot1dBridge MIB

interface_name
dscy_switchport

Interface Number

SNMP, dot1dBridge MIB

interface_number
dscy_swtch_fwd_rule

MAC Address

SNMP, dot1dBridge MIB

mac_address
dscy_swtch_fwd_rule

MAC Manufacturer

SNMP, dot1dBridge MIB

mac_mfr
dscy_swtch_fwd_rule

Status

SNMP, dot1dBridge MIB

status
dscy_swtch_fwd_rule

IP address

SNMP, dot1dBridge MIB

ip_address
dscy_swtch_fwd_rule

Netmask

SNMP, dot1dBridge MIB

netmask
dscy_swtch_partition

Base IP Address

SNMP, dot1dBridge MIB

base_ip_address
dscy_swtch_partition

Base MAC Address

SNMP, dot1dBridge MIB

base_mac_address
dscy_swtch_partition

Base Netmask

SNMP, dot1dBridge MIB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2807


<!-- page 2808 -->
Table name

Label/Field name

Source

base_netmask
dscy_swtch_partition

Type

SNMP, dot1dBridge MIB

type
dscy_swtch_partition

Transparent

SNMP, dot1dBridge MIB

transparent
dscy_swtch_partition

Source Route

SNMP, dot1dBridge MIB

sourceroute
dscy_swtch_partition

Name

SNMP, dot1dBridge MIB

name
dscy_swtch_partition

Status

SNMP, dot1dBridge MIB

status
dscy_swtch_partition

Interface Number

SNMP, dot1dBridge MIB

interface_number
Turn off collection of port data for SNMP network devices
In some environments you may not want to collect the port data for SNMP network devices.

Before you begin

Role required: admin

About this task

If the network devices contain an extremely large number of ports and each individual port's
information is not critical to the overall management of the devices, you may not want to collect
the port data for SNMP network devices. This would affect records from being created in the
Switchports table (dscy_switchport). This process only impacts probe discovery.

Procedure
1. Navigate to Discovery Definition > Probes.
2. Go to the SNMP - Switching probe.
3. In the SNMP Fields tab, find the field named ports, double-click the value in the Active
column, and change the value to false.
The collection and processing of ports information for switches is then disabled. The ports
field for the switch CI should have the correct ports count even though the related list
switchports is empty.
4. Click the check mark to save the change.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2808


<!-- page 2809 -->
IP service and daemon discovery
Discovery identifies and classifies information about services and daemons.
Data Collected by Discovery on Services and Daemons
Label

Table Name

Field Name

Source

Name

cmdb_ip_service

name

Various

Port

cmdb_ip_service

port

Various

Description

cmdb_ip_service_ci

description

Various

CI

cmdb_ip_service_ci

ci

Internal reference

Service

cmdb_ip_service_ci

service

Internal reference

Uninterruptible power supply (UPS) discovery
Discovery identifies and classifies information about an uninterruptible power supply (UPS).
Discovery can identify and classify uninterruptible power supplies.
Data collected by Discovery on uninterruptible power supplies
Label

Table name

Field name

Source

Serial number

cmdb_ci

serial_number

SNMP,
various
MIBs

Start date

cmdb_ci

start_date

SNMP,
RFC1213
MIB

Manufacturer

cmdb_ci

manufacturer

SNMP,
RFC1213
MIB

Model ID

cmdb_ci

model_id

SNMP,
RFC1213
MIB

IP address

cmdb_ci_network_adapter ip_address

SNMP, IP
MIB

MAC address

cmdb_ci_network_adapter mac_address

SNMP, IF
MIB

UPS software version

cmdb_ci_ups

ups_software_version

SNMP, UPS
MIB

Agent software version

cmdb_ci_ups

agent_software_version

SNMP, UPS
MIB

Attached devices

cmdb_ci_ups

attached_devices

SNMP, UPS
MIB

Battery status

cmdb_ci_ups

battery_status

SNMP, UPS
MIB

Seconds remaining on
battery

cmdb_ci_ups

seconds_on_battery

SNMP, UPS
MIB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2809


<!-- page 2810 -->
Data collected by Discovery on uninterruptible power supplies (continued)
Label

Table name

Field name

Source

Estimated minutes
remaining on battery

cmdb_ci_ups

est_mins_remaining

SNMP, UPS
MIB

Estimated charge %
remaining

cmdb_ci_ups

est_charge_remaining

SNMP, UPS
MIB

Battery voltage

cmdb_ci_ups

battery_voltage

SNMP, UPS
MIB

Battery current

cmdb_ci_ups

battery_current

SNMP, UPS
MIB

Battery temperature (C) cmdb_ci_ups

battery_temperature

SNMP, UPS
MIB

Input line bads

cmdb_ci_ups

input_line_bads

SNMP, UPS
MIB

Output source

cmdb_ci_ups

output_source

SNMP, UPS
MIB

Output frequency

cmdb_ci_ups

output_freq

SNMP, UPS
MIB

Bypass frequency

cmdb_ci_ups

bypass_freq

SNMP, UPS
MIB

Nominal input voltage

cmdb_ci_ups

nom_input_volt

SNMP, UPS
MIB

Nominal input
frequency

cmdb_ci_ups

nom_input_freq

SNMP, UPS
MIB

Nominal output voltage

cmdb_ci_ups

nom_output_volt

SNMP, UPS
MIB

Nominal output
frequency

cmdb_ci_ups

nom_output_freq

SNMP, UPS
MIB

Rated output VA

cmdb_ci_ups

rated_output_va

SNMP, UPS
MIB

Rated output power

cmdb_ci_ups

rated_output_power

SNMP, UPS
MIB

Low battery threshold
minutes

cmdb_ci_ups

low_battery_threshold_mins SNMP, UPS
MIB

Audible alarm status

cmdb_ci_ups

audible_alarm_status

SNMP, UPS
MIB

Low voltage transfer
point

cmdb_ci_ups

low_voltage_transfer_point

SNMP, UPS
MIB

High voltage transfer
point

cmdb_ci_ups

high_voltage_transfer_point SNMP, UPS
MIB

Input index

cmdb_ci_ups_input

input_index

SNMP, UPS
MIB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2810


<!-- page 2811 -->
Data collected by Discovery on uninterruptible power supplies (continued)
Label

Table name

Field name

Source

Input frequency (Hz)

cmdb_ci_ups_input

input_freq

SNMP, UPS
MIB

Input voltage (RMS
VAC)

cmdb_ci_ups_input

input_volt

SNMP, UPS
MIB

Input current (RMS
AAC)

cmdb_ci_ups_input

input_current

SNMP, UPS
MIB

Input power (Watts)

cmdb_ci_ups_input

input_power

SNMP, UPS
MIB

Output index

cmdb_ci_ups_output

output_index

SNMP, UPS
MIB

Output load (%)

cmdb_ci_ups_output

output_load

SNMP, UPS
MIB

Output voltage (RMS
VAC)

cmdb_ci_ups_output

output_volt

SNMP, UPS
MIB

Output current (RMS
AAC)

cmdb_ci_ups_output

output_current

SNMP, UPS
MIB

Output power (Watts)

cmdb_ci_ups_output

output_power

SNMP, UPS
MIB

Bypass index

cmdb_ci_ups_bypass

bypass_index

SNMP, UPS
MIB

Bypass voltage (RMS
VAC)

cmdb_ci_ups_bypass

bypass_volt

SNMP, UPS
MIB

Bypass current (RMS
AAC)

cmdb_ci_ups_bypass

bypass_current

SNMP, UPS
MIB

Bypass power (Watts)

cmdb_ci_ups_bypass

bypass_power

SNMP, UPS
MIB

Alarm index

cmdb_ci_ups_alarm

alarm_index

SNMP, UPS
MIB

Alarm type

cmdb_ci_ups_alarm

alarm_type

SNMP, UPS
MIB

Alarm time

cmdb_ci_ups_alarm

alarm_time

SNMP, UPS
MIB

IBM WebSphere DataPower discovery
ITOM Visibility discovers IBM WebSphere DataPower. The Discovery feature uses the DataPower
Server pattern for horizontal discovery. The Service Mapping feature uses the DataPower pattern
for top-down discovery.

Prerequisites
Configure the following credentials before discovering the IBM WebSphere DataPower devices:
SNMP credentials
SNMP credentials are necessary for using the following SNMP queries:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2811


<!-- page 2812 -->
• For horizontal discovery of the Data Power Hosting Server
[cmdb_ci_datapower_server]:
◦ 1.3.6.1.2.1.1.1
◦ 1.3.6.1.2.1.1.5
◦ 1.3.6.1.2.1.4.20.1
◦ 1.3.6.1.2.1.2.2.1
◦ 1.3.6.1.4.1.14685.3.1.196.1
◦ 1.3.6.1.4.1.14685.3.1.11.1
◦ 1.3.6.1.4.1.14685.3.1.112.1
• For top-down discovery of the Data Power [cmdb_ci_datapower_server]:
◦ 1.3.6.1.2.1.1.1
◦ 1.3.6.1.2.1.1.5
◦ 1.3.6.1.4.1.14685.3.1.11.1
Applicative credentials
Together with SNMP credentials, applicative credentials are required to discover
DataPower application domains, otherwise known as logical CIs.
In addition, SNMP and applicative credentials are used for top-down discovery of
applicative relationships (corresponding application DataPower domain).
User with permissions to run SOAP
Permissions to run SOAP queries are necessary for top-down discovery of the
DataPower Web Service and MQ connection.

Data collected by Discovery during horizontal discovery
By default, Discovery uses the DataPower Server pattern to perform the discovery.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Table and field

Description

Data Power Hosting Server [cmdb_ci_datapower_server]
Model number [model_number]

The model of the server hosting the
WebSphere DataPower.

Host name [host_name]

The host name of the server hosting the
WebSphere DataPower.

Serial number [serial_number]

The serial number of the server hosting the
WebSphere DataPower.

IP Address [cmdb_ci_ip_address]
IP Address [ip_address]

The IP address of the server hosting the
WebSphere DataPower.

Netmask [netmask]

The netmask of the server hosting the
WebSphere DataPower.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2812


<!-- page 2813 -->
Table and field

Description

Network Adapters [cmdb_ci_network_adapter]
MAC address [mac_address]

The MAC address of the network adapter.

Name [name]

The name of the network adapter.

CI Relationships
CI

Relationship/Reference

CI

Data Power Hosting Server
[cmdb_ci_datapower_server]

Owns::Owned by

IP Address
[cmdb_ci_ip_address]

Network Adapters
[cmdb_ci_network_adapter]

Owns::Owned by

Data Power Hosting Server
[cmdb_ci_datapower_server]

Data collected by Service Mapping during top-down discovery
Table and field

Description

Data Power [cmdb_ci_app_server_datapower]
Host name [host_name]

The attributes of the DataPower application.

SOAP URL [soap_url]
Version [version]
IP address [ip_address]
Name [name]
Domain [domain]
Cisco Unified Computing System (UCS)-HD device discovery
Discovery and Service Mapping Patterns application uses the to find Cisco UCS equipment,
including chassis and blades. Discovering some of these resources may require updating to the
latest version of the Discovery and Service Mapping Patterns application from the ServiceNow
Store.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Create SNMP credentials
For more information, see SNMP credentials

.

Create applicative credentials

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2813


<!-- page 2814 -->
Create applicative credentials for the Cisco UCS Equipment
[cmdb_ci_ucs_equipment] CI type. For more information, see Applicative
credentials .
Classifier, pattern, and OIDs
The UCS classifier uses HorzontalDiscoveryProbe to launch the UCS - HD pattern.
The classifier also uses these SNMP OIDs, which specify the Cisco UCS Equipment
[cmdb_ci_ucs_equipment] table:

OID

Manufacturer

Model

Table

1.3.6.1.4.1.9.12.3.1.3.847

Unified Computing Cisco
UCS 6120XP 20-Port Fabric
Interconnect

1.4(3u)(NX-OS) Cisco UCS
5.0 Aggregation Equipment
Switch

1.3.6.1.4.1.9.12.3.1.3.899

Unified Computing Cisco
1.4(3u)(NX-OS) Cisco UCS
UCS 6140XP 40-Port Fabric 5.0 Aggregation Equipment
Interconnect
Switch

1.3.6.1.4.1.9.12.3.1.3.1062 Unified Computing Cisco
2.0(1t)(NXUCS 6248UP 48-Port Fabric OS) 5.0.2
Interconnect
Aggregation
Switch

Cisco UCS
Equipment

1.3.6.1.4.1.9.12.3.1.3.1063 Unified Computing Cisco
2.0(1t)(NXUCS 6296UP 96-Port Fabric OS) 5.0.2
Interconnect
Aggregation
Switch

Cisco UCS
Equipment

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the UCS - HD pattern pattern. Only Bseries devices are discovered. The UCS - HD pattern does not find C, S, or E series devices.
Cisco UCS Equipment [cmdb_ci_ucs_equipment]
Label

Field Name

Name

name

IP address

ip_address

Model

model_id

Distinguished name

dn

UCS Manager Version

version

Cisco UCS Chassis [cmdb_ci_ucs_chassis]
Label

Field Name

Name

name

Model number

model_number

Serial number

serial_number

Chassis ID

chassis_id

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2814


<!-- page 2815 -->
Cisco UCS Chassis [cmdb_ci_ucs_chassis] (continued)
Label

Field Name

Operational status

operational_status

Distinguished name

dn

Cisco UCS Blade [cmdb_ci_ucs_blade]
Label

Field Name

Name

name

Model number

model_number

Serial number

serial_number

CPU count

cpu_count

CPU core count

cpu_core_count

Ram

ram

Number of Adapters

number_of_adapters

Chassis ID

chassis_id

Slot ID

slot_id

Description

short_description

Distinguished name

dn

Blade Serial Number

blade_serial_number

Operational status

operational_status

Cisco UCS Rack Mount Units [cmdb_ci_ucs_rack_unit]
Label

Field Name

Name

name

Vendor

vendor

Server ID

server_id

Availability

availability

UUID

uuid

Rack serial

rack_serial

Number of CPUs

num_of_cpus

Number of cores

num_of_cores

Model ID

model_id

Total Memory

total_memory

Distinguished name

dn

State

state

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2815


<!-- page 2816 -->
Relationships
These relationships are created to support UCS - HD discovery.

CI

Relationship

CI

cmdb_ci_ucs_chassis

Contains::Contained by

cmdb_ci_ucs_blade

cmdb_ci_ucs_equipment

Contains::Contained by

cmdb_ci_ucs_rack_unit

cmdb_ci_ucs_equipment

Contains::Contained by

cmdb_ci_ucs_chassis

cmdb_ci_server

Runs on::Runs

cmdb_ci_ucs_blade

Dell Remote Assistant Card discovery
™

The Dell Remote Assistant Card (DRAC) and Integrated Remote Assistance Card (iDRAC)
provide users with tools and functionality to monitor, troubleshoot, and repair servers. You
can generate DNS URLs to access out-of-band devices when security prevents access from IP
addresses.
To identify the DRAC, Discovery uses the SNMP – DRAC probe. This probe uses SNMPv1
and SMNPv2c. Out-of-band devices have a dedicated management channel for device
maintenance. System administrators can remotely monitor and manage devices with the
dedicated management channel, including hardware sensor monitoring, access to local media
drives, or adjusting BIOS settings. DNS URLs can be generated for out-of-band devices to access
the out-of-band device page when the SSL certificate forbids navigating through the IP address.

Data collected
Data collected by Discovery for Dell DRAC
Label

Table

Name

Command

Firmware cmdb_ci_outofband_device firmware_version SNMP walk: drsFirmwareVersion
version
(racFirmwareVersion for iDRAC7)
Host *

cmdb_ci_outofband_device host

SNMP walk: drsSystemServiceTag
(systemServiceTag for iDRAC7)

IP
Address

cmdb_ci_outofband_device ip_address

DNS probe

Name

cmdb_ci_outofband_device name

SNMP Identity probe

Product
version

cmdb_ci_outofband_device product_version SNMP walk: drsProductVersion
(racVersion for iDRAC7)

Type

cmdb_ci_outofband_device type

SNMP walk: drsProductType
(racType for iDRAC7)

URL

cmdb_ci_outofband_device url

SNMP walk: drsProductURL (racURL
for iDRAC7)

* Host is a reference to the cmdb_ci_computer table via the serial number. For the
cmdb_ci_outofband_device.host field to be populated correctly, the host machine must be
discoverable or exist within the CMDB with the appropriate serial number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2816


<!-- page 2817 -->
Out-of-band devices
A DNS URL is generated for configuration items in the Out-Of-Band Device list if the
configuration item has a Name and DNS Domain. The DNS URL enables you to access the outof-band device page when the SSL certificate forbids navigating through the IP URL. The DNS
URL has the format https://Name.DNS_Domain. If either the Name or DNS Domain field is
empty, the DNS URL contains the value in the URL field.
HTTP device discovery
Discovery can find devices that use the HTTP protocol.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Classifier, probes, and patterns
HTTP discovery relies on a the HTTP port probe, which Discovery runs after trying to run SSH
and SNMP port probes. This port probe launches the HTTP - Classify probe which runs an
HTTP GET request for every entry in the HTTP classification table. You should configure your own
classifications that the HTTP - Classify probe can access.
The HTTP port probe uses mappings between a protocol and port number in the IP Service
[cmdb_ip_service] table. You can add additional port-to-protocol definitions in this table, or you
can override the protocol used for a specific HTTP classifier.

Classifier Probes

Pattern

HTTP (port probe): this probe launches the HTTP - Classify probe, which
runs an HTTP GET request for every entry in the HTTP classification table.
Run discovery through an HTTP or HTTPS REST call
Discovery can classify devices using the HTTP(S) protocol. You can create your own HTTP
classifier to find devices and access them with Basic Auth credentials, rather than using SNMP or
SSH credentials.

Before you begin

Role required: discovery_admin

Procedure
1. Navigate to All > Discovery > Credentials.
2. Select New.
3. Select Basic Auth Credentials.
In most cases, you can use Basic Auth Credentials to access a device through an HTTP or
HTTPS REST call.

Important: The HTTP Classify probe no longer attempts credentials over
the HTTP protocol by default. To override this behavior, you can enable
mid.http_classy.allow_credentials_over_http. However, enabling
this setting can expose credentials to man-in-the-middle (MitM) attacks. Therefore,
it’s strongly recommended to keep this property set to false and use HTTPS whenever
possible.
4. Add the user name and password that you need to access the device.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2817


<!-- page 2818 -->
5. Select Submit.
6. Set up an HTTP classifier by navigating to Discovery Definition > CI Classification > HTTP.
7. Select New.
8. Fill out the form fields (see table):
The F5 HTTP classification

Field

Description

Name

Enter a name for the classifier.

Path

Enter the path for the HTTP GET request.

Headers

Add an option header with a value. You can use a variable in the
format ${variable} instead of a static value.
Supported headers depend on the REST web service provider
that you want to connect to. See the documentation for your web
service provider to identify which headers are valid or required.

Port (IP Service)

If you want this classifier to use a custom port that is not already
a default value in the IP Service [cmdb_ip_service] table, do the
following:
a. Select the lookup icon to see the list of IP Services.
b. Select New and create a port-to-protocol mapping.
c. Select that port-to-protocol mapping for this Port field.
Many commonly used protocols are already mapped to ports by
default, such as http to port 80 and the https to port 443.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2818


<!-- page 2819 -->
Field

Description

If you want to use one of these default port-to-protocol mappings,
don’t enter any values in the Port field. The HTTP port probe uses
the correct one by default.
Order

Enter a number that represents the priority of this classifier. If
Discovery finds more than one classifier that applies, it uses the
classifier with lower Order number.

Protocol
[optional]
This field isn’t visible
by default. You must
configure the form to
add it.

If you configure a unique port-to-protocol mapping for the Port
field, enter an optional protocol override that Discovery uses with
this classifier.
For example, if you want to use port 5000 and the HTTP protocol,
add the 5000/HTTP port-to-protocol mapping to the Port field, and
then choose http in the Protocol field.

9. Right-click the header and select Save.
The HTTP Classification Match related list appears. This related list shows criteria that you can
configure to match against the body of the response to the GET Request that Discovery sent.
10. In the HTTP Classification Match related list, define the match criteria and specify the pattern
to launch for this classifier:
a. Select New.
b. On the HTTP Classification Match form, fill in the form fields (see table).

Field

Description

Operator Choose the operator that the system uses to evaluate the condition:
▪ Contains
▪ Equals
▪ Regex

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2819


<!-- page 2820 -->
Field

Order

Description

Enter a number that represents the priority of this condition. If Discovery finds
more than one condition that applies, it uses the condition with lower Order
number.

Pattern

Specify the pattern to launch upon a correct match. This pattern must use HTTP
to discover the device.

Value

Enter the value that the body of the returned REST method must have.

c. Select Submit.
d. Define as many HTTP Classification Matches as necessary.
You might want to do this if there are different patterns for different versions of the device
you’re trying to discover.

Example:

In this example, HTTP classification is configured to use the F5 load balancer API:

What to do next

If you don’t have other types of credentials that can find devices, such as Linux credentials or
SNMP credentials, you can see how the Discovery application processes HTTP discovery:
1. Navigate to Discovery > Discovery Schedules and run a discovery.
2. After the discovery process completes, check the ECC Queue to see the results of the HTTP
discovery.
You should see that after the Shazzam probe was launched, and that UNIX and SNMP
classification probes failed. Both the HTTP - Classify probe and the pattern that you specify in
the HTTP classification record should launch.

Storage discovery
Discovery collects information on Direct Attached Storage (DAS), Storage Area Networks (SAN),
and Network Attached Storage (NAS).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2820


<!-- page 2821 -->
Storage can be located on specialized devices, such as Storage Arrays, Fibre Channel Switches,
iSCSI disks, or on host operating systems, including Windows, Linux, and Solaris.
Discovery finds and maps dependencies for the following types of storage:
• Direct-attached storage (DAS), network-attached storage (NAS), or storage area network (SAN).
• NAS or SAN storage that is discovered via a Storage Management Initiative Specification (SMIS) and Common Information Model (CIM).
• Virtual storage for VMware ESX servers and Linux Kernel-based Virtual Machines (KVM).
Discovery maps this storage to the underlying physical storage.
Discovery of storage via a host reconciles data and creates relationships between the host's file
systems and associated local storage devices. The local storage devices represent the storage
available to the host, whether it's directly attached or provided by Fibre Channel or iSCSI. This
reconciliation assumes that the storage server has been discovered first.

Note: Tape storage drivers are not discovered.
Discovery collects and creates CIs in the CMDB for the following information:
• File systems (local and NAS).
• Disks (both SAN disks and DAS drives).
• Fibre Channel (FC) HBAs and ports.
• Linux Volume Manager (LVM) volumes. LVM volume data resides in the Storage Pool
[cmdb_ci_storage_pool] table.
• Veritas Volume Manager disks, subdisks, disk groups, plexes, and volumes.

Note: For details about the discovery of direct attached or multipath block storage
provisioned on a Linux host, see KB0622583

.

Probes, sensors, and patterns
• KVM - Storage Pools: identifies storage attached to KVM virtual machines.
• Linux - Storage: identifies storage attached to systems running the Linux operating system.
• Solaris - Storage: identifies storage attached to systems running the Solaris operating system.
• Windows - Storage 2008: identifies storage attached to systems running Windows 2008.
◦ Windows - Storage 2008 - PS: identifies storage attached to systems running Windows
2008, using the PowerShell.
◦ Windows - Storage 2008 - WMI: identifies storage attached to systems running Windows
2008, using WMI Runner.
• Windows - Storage 2012: identifies storage attached to systems running Windows 2012 and
later.
◦ Windows - Storage 2012 - PS: identifies storage attached to Windows systems, using
PowerShell.
◦ Windows - Storage 2012 - WMI: identifies storage attached to Windows systems, using WMI
Runner.
• VMWare - vCenter ESX Hosts Storage: collects information about ESX servers and creates
relationships from datastores to underlying disks.
• Patterns for NetApp storage discovery:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2821


<!-- page 2822 -->
◦ NetApp 7-mode: finds NetApp servers via REST with two nodes.
◦ NetApp cluster mode: finds NetApp servers via REST when more than two nodes are
connected through a cluster interconnect switch.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Requirements
Windows
• Supports the following configurations:
◦ Windows Server 2012, DAS or NAS with Fibre Channel (FC) or Internet Small
Computer System Interface (iSCSI).
◦ Windows Server 2008, DAS or NAS with FC or iSCSI.
• Install the fcinfo.exe tool on Windows 2008 and 2012 servers that attach to
storage via FC.
• Install Windows Management Instrumentation (WMI).
• Enable Powershell on the MID Server host server.
• Provide the instance with the necessary credentials to the host server.
• Put the MID Server and the target machine in the same domain or add the target
machine to the trusted host list on the MID Server machine.
• Optionally, install Windows Remote Management (WinRM)
on the host server
to discover Fibre Channel information. WinRM is on by default for Windows 2012
and Windows 2016 machines, but not for Windows 2008.
Linux
• Supports the following configurations:
◦ Solaris, DAS, NAS, or SAN with iSCSI
◦ CentOS, DAS, NAS, or SAN with FC or iSCSI
◦ Ubuntu Server, DAS, NAS, or SAN with iSCSI
• Provide the device with SSH credentials that have root or sudo access.
• Provide the MID Server with the necessary credentials to the host server.

Relationships
Discovery creates the following relationships for storage CIs:

Parent Component

Relationship

Child Component

Storage Export
[cmdb_ci_storage_export]

Exports to::Imports
from

Storage Device
[cmdb_ci_storage_device]

Fibre Channel Disk
[cmdb_ci_fc_disk]

Provides::Provided
by

File System [cmdb_ci_file_system]

iSCSI Disk [cmdb_ci_iscsi_disk]

Provides::Provided
by

File System [cmdb_ci_file_system]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2822


<!-- page 2823 -->
Configure discovery of hosts with attached storage
Discovery can find information about UNIX, Linux, and Windows hosts with attached storage.
Configure Discovery for UNIX or Linux hosts with attached storage
Discovery can find information about a UNIX or Linux host and attached storage.

Before you begin

Role required: discovery_admin

Procedure
1. Optional: On the host, assign elevated privileges to the account that Discovery will use.
2. On the ServiceNow instance, add credentials

to the Discovery Credentials table.

3. Create a Discovery Schedule for each host IP address.
4. Optional: Create a behavior that uses a functionality definition with a wbem port probe to
make the initial port-scanning phase (Shazzam) more efficient.
5. Run network discovery.

Note: If the host also connects to a NAS or SAN storage array, set up the SMI-S Provider
and CIM credentials

.

Configure Discovery for Windows hosts with attached storage
Discovery can find information about a Windows host and attached storage.

Before you begin

Role required: discovery_admin

Procedure
1. Follow the steps if you're using the Windows 2008 servers that is attached to storage:
a. Download and install the Microsoft Fibre Channel Information Tool from http://
www.microsoft.com and search the website for Microsoft Fibre Channel Information Tool.
b. Set the environment path for the fcinfo executable and run the fcinfo.exe file.

Note: For servers that are using newer operating systems, similar functionality is
present with the operating system; this step is not required.
2. For all Windows hosts including Windows 2008, add Windows credentials
Credentials table.

to the Discovery

3. On the ServiceNow instance, create a Discovery Schedule for each host IP address.
4. Optional: Create a behavior that uses a functionality definition with a wbem port probe to
make the initial port-scanning phase (Shazzam) more efficient.
5. Run network discovery.

Note: If the host also connects to a NAS or SAN storage array, set up the SMI-S Provider
and CIM credentials

.

Discovery data collected for storage via a host
Discovery gathers information about storage units that connect to Linux, Solaris, and Windows
hosts via a local I/O port or Host Bus Adapter (HBA).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2823


<!-- page 2824 -->
Probes used to discover storage from a host
Table

Disk [cmdb_ci_disk]

Probes

• KVM
• Linux - Storage
• Solaris - Storage
• Windows - Storage 2008
• Windows - Storage 2012

Disk Partition [cmdb_ci_disk_partition]

• KVM
• Linux - Storage
• Solaris - Storage
• Windows - Storage 2008
• Windows - Storage 2012

Fibre Channel Disk [cmdb_ci_fc_disk]

• Linux - Storage
• Solaris - Storage
• Windows - Storage 2008

Fibre Channel Port [cmdb_ci_fc_port]

• Linux - Storage
• Solaris - Storage
• Windows - Storage 2008

File System [cmdb_ci_file_system]

• KVM
• Linux - Storage
• Solaris - Storage
• Windows - Storage 2008
• Windows - Storage 2012

iSCSI Disk [cmdb_ci_iscsi_disk]

• KVM
• Linux - Storage
• Solaris - Storage
• Windows - Storage 2008
• Windows - Storage 2012

NAS File System [cmdb_ci_nas_file_system]

• KVM
• Linux - Storage
• Solaris - Storage

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2824


<!-- page 2825 -->
Table

Probes

• Windows - Storage 2008
• Windows - Storage 2012
Storage HBA [cmdb_ci_storage_hba]

• Linux - Storage
• Solaris - Storage
• Windows - Storage 2008

Storage Pool [cmdb_ci_storage_pool]

Linux - Storage

Storage Pool Member [cmdb_ci_storage_pool_member]

Linux - Storage

VMware vCenter Datastore [cmdb_ci_vcenter_datastore]

VMware - vCenter Datastores

Storage references discovered
Discovery maps these references for storage units that connect to a host via a local I/O port or
Host Bus Adapter (HBA).

Table and column

Reference Target data element

cmdb_ci_storage_device.computer

refers to
the

cmdb_ci_computer

cmdb_ci_storage_device.provided_by

refers to
the

cmdb_ci_fc_port (for FC only)

cmdb_ci_disk_partition.disk

is a
partition
of

cmdb_ci_disk

cmdb_ci_storage_hba.computer

is the

cmdb_ci_computer

cmdb_ci_fc_port.controller

contains
the

cmdb_ci_storage_hba

cmdb_ci_fc_port.computer

is the
same

cmdb_ci_computer as
cmdb_ci_storage_hba.computer

cmdb_ci_storage_volume.computer

is the

cmdb_ci_computer

cmdb_ci_storage_volume.provided_by is the

cmdb_ci_storage_pool or
cmdb_ci_storage_pool or
cmdb_ci_storage_device (providing
storage)

cmdb_ci_storage_pool.hosted_by

is the

cmdb_ci_computer

cmdb_ci_computer

the pool
is on

cmdb_ci_storage_pool.container

cmdb_ci_storage_pool.container

is the

cmdb_ci_storage_pool or
cmdb_ci_storage_pool_member containing
the pool (if the pool is present)

cmdb_ci_storage_pool_member.pool

is the

cmdb_ci_storage_pool

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2825


<!-- page 2826 -->
Table and column

Reference Target data element

cmdb_ci_storge_pool_member.storage is the

cmdb_ci_storage_pool,
cmdb_ci_disk_partition or
cmdb_ci_storage_device providing storage

Data collected for HBAs on Linux and ESX servers
Discovery collects information on host bus adapters (HBA) for fiber channel enabled devices
connected to Linux and ESX servers.
HBA tables and fields
Label

Table

Name

Storage HBA
[cmdb_ci_storage_hba]

Field
name

name

Source

• VMWare - vCenter ESX Hosts
Storage probe
• Linux - Storage

WWNN

Storage HBA
[cmdb_ci_storage_hba]

wwnn

• VMWare - vCenter ESX Hosts
Storage probe
• Linux - Storage

Model ID

Storage HBA
[cmdb_ci_storage_hba]

model_id

• VMWare - vCenter ESX Hosts
Storage probe
• Linux - Storage

Computer Storage HBA
[cmdb_ci_storage_hba]

computer

• VMWare - vCenter ESX Hosts
Storage probe
• Linux - Storage

Fibre Channel ports
Label

Table

WWPN

Fibre Channel Port
[cmdb_ci_fc_port]

Field
name

Source

wwpn

VMWare - vCenter ESX Hosts Storage
• probe
• Linux - Storage

WWNN

Fibre Channel Port
[cmdb_ci_fc_port]

wwnn

• VMWare - vCenter ESX Hosts
Storage probe
• Linux - Storage

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2826


<!-- page 2827 -->
Fibre Channel ports (continued)
Label

Table

Port type

Fibre Channel Port
[cmdb_ci_fc_port]

Field
name

Source

port_type

• VMWare - vCenter ESX Hosts
Storage probe
• Linux - Storage

Speed

Fibre Channel Port
[cmdb_ci_fc_port]

speed

• VMWare - vCenter ESX Hosts
Storage probe
• Linux - Storage

Controller Fibre Channel Port
[cmdb_ci_fc_port]

controller

• VMWare - vCenter ESX Hosts
Storage probe
• Linux - Storage

Computer Fibre Channel Port
[cmdb_ci_fc_port]

computer

• VMWare - vCenter ESX Hosts
Storage probe
• Linux - Storage

Fibre Channel targets
Label

Table

Field name

FC Disk

Fibre Channel Targets
[cmdb_fc_target]

fc_disk

Source

• Linux - Storage
• Solaris - Storage
• Windows - Storage
2008
• Windows - Storage
2012

Created
by

Fibre Channel Targets
[cmdb_fc_target]

sys_created_by

• Linux - Storage
• Solaris - Storage
• Windows - Storage
2008
• Windows - Storage
2012

Created

Fibre Channel Targets
[cmdb_fc_target]

sys_created_on

• Linux - Storage
• Solaris - Storage

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2827


<!-- page 2828 -->
Fibre Channel targets (continued)
Label

Table

Field name

Source

• Windows - Storage
2008
• Windows - Storage
2012
SysID

Fibre Channel Targets
[cmdb_fc_target]

sys_id

• Linux - Storage
• Solaris - Storage
• Windows - Storage
2008
• Windows - Storage
2012

Updates

Fibre Channel Targets
[cmdb_fc_target]

sys_mod_count

• Linux - Storage
• Solaris - Storage
• Windows - Storage
2008
• Windows - Storage
2012

Updated
by

Fibre Channel Targets
[cmdb_fc_target]

sys_updated_by

• Linux - Storage
• Solaris - Storage
• Windows - Storage
2008
• Windows - Storage
2012

Updated

Fibre Channel Targets
[cmdb_fc_target]

sys_updated_on

• Linux - Storage
• Solaris - Storage
• Windows - Storage
2008
• Windows - Storage
2012

WWNN

Fibre Channel Targets
[cmdb_fc_target]

wwnn

• Linux - Storage
• Solaris - Storage

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2828


<!-- page 2829 -->
Fibre Channel targets (continued)
Label

Table

Field name

Source

• Windows - Storage
2008
• Windows - Storage
2012
WWPN

Fibre Channel Targets
[cmdb_fc_target]

wwpn

• Linux - Storage
• Solaris - Storage
• Windows - Storage
2008
• Windows - Storage
2012

Data collected for HBAs on Solaris servers
Discovery on Solaris supports HBAs manufactured by:
• Emulex
• QLogic
Discovery populates these fields in the Storage HBA [cmdb_ci_storage_hba] table, using the
Solaris - Storage probe and sensor.

Label

Field name

Name

name

Computer

computer

Device ID

device_id

Manufacturer

manufacturer

Model ID

model_id

Serial number

serial_number

Discovery populates these fields in the Fibre Channel Port [cmdb_ci_fc_port] table.

Label

Field name

Name

name

Computer

computer

Controller

controller

WWPN

wwpn

WWNN

wwnn

Port type

port_type

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2829


<!-- page 2830 -->
Label

Field name

Speed

speed

Operational status

operational_status

Discovery populates these fields in the Fibre Channel Disk [cmdb_ci_fc_disk] table.

Label

Name

Name

name

Storage type

storage_type

Device interface

device_interface

Device LUN

device_lun

Discovery populates these fields in the Fibre Channel Targets [cmdb_fc_target] table.

Label

Name

FC Disk

fc_disk

WWNN

wwnn

WWPN

wwpn

Data collected for HBAs on Windows servers
Discovery on Windows supports HBAs on any operating system.
HBA tables and fields
Label

Table

Name

Storage HBA
[cmdb_ci_storage_hba]

Field
Name

name

Source

• VMWare - vCenter ESX Hosts
Storage probe
• Windows - Storage 2008
• Windows - Storage 2012

WWNN

Storage HBA
[cmdb_ci_storage_hba]

wwnn

• VMWare - vCenter ESX Hosts
Storage probe
• Windows - Storage 2008
• Windows - Storage 2012

Model ID

Storage HBA
[cmdb_ci_storage_hba]

model_id

• VMWare - vCenter ESX Hosts
Storage probe
• Windows - Storage 2008
• Windows - Storage 2012

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2830


<!-- page 2831 -->
HBA tables and fields (continued)
Label

Table

Computer Storage HBA
[cmdb_ci_storage_hba]

Field
Name

computer

Source

• VMWare - vCenter ESX Hosts
Storage probe
• Windows - Storage 2008
• Windows - Storage 2012

Fibre Channel ports
Label

Table

WWPN

Fibre Channel Port
[cmdb_ci_fc_port]

Field
Name

wwpn

Source

• VMWare - vCenter ESX Hosts
Storage probe
• Windows - Storage 2008
• Windows - Storage 2012

WWNN

Fibre Channel Port
[cmdb_ci_fc_port]

wwnn

• VMWare - vCenter ESX Hosts
Storage probe
• Windows - Storage 2008
• Windows - Storage 2012

Port type

Fibre Channel Port
[cmdb_ci_fc_port]

port_type

• VMWare - vCenter ESX Hosts
Storage probe
• Windows - Storage 2008
• Windows - Storage 2012

Speed

Fibre Channel Port
[cmdb_ci_fc_port]

speed

• VMWare - vCenter ESX Hosts
Storage probe
• Windows - Storage 2008
• Windows - Storage 2012

Controller Fibre Channel Port
[cmdb_ci_fc_port]

controller

• VMWare - vCenter ESX Hosts
Storage probe
• Windows - Storage 2008
• Windows - Storage 2012

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2831


<!-- page 2832 -->
Fibre Channel ports (continued)
Label

Table

Computer Fibre Channel Port
[cmdb_ci_fc_port]

Field
Name

computer

Source

• VMWare - vCenter ESX Hosts
Storage probe
• Windows - Storage 2008
• Windows - Storage 2012

Storage Discovery via SMI-S and CIM
Discovery can explore storage devices that contain a Storage Management Initiative
Specification (SMI-S) provider that is a specialized Common Information Model (CIM) server.
To see the current list of vendors and products conforming to SMI-S as tested by SNIA, see the
SNIA website .
Other types of storage, such as storage that is attached via a host, VM storage that is available
on VMware ESX servers, and storage for Kernel VM (KVM), use a separate set of probes and
sensors.
Discovery collects information about storage area networks (SAN) and network-attached storage
(NAS) from specialized devices, such as storage arrays and Fibre Channel (FC) switches.
Discovery collects and creates CIs in the CMDB for the following information items:
• Array disks, pools, and volumes
• Fibre Channel HBAs, ports, and controllers
• FC exports
• Fabrics, including endpoints, zoning, and switches
• Dependencies between storage sub-components

Note: For more information on storage discovery and using the CIM Query tool for
troubleshooting, see the knowledge article KB0782305

.

Requirements
• A CIM server using SMI-S 1.4 or later.
• One or more CIM server per storage vendor.
• NAS and SAN systems from major vendors such as EMC, Hitachi, HP, and NetApp. SAN storage
devices must use FC.
• FC switches from major vendors such as Brocade and Cisco.
• The CIM credentials
must be available for SMI-S configuration. The CIM credentials can be
different than the credentials for the system hosting the CIM server.
• Ensure that SMI-S is enabled for your storage product.
• Ensure the connectivity between the MID Server and CIM server.
• New CIM credentials need to be configured in the instance. CIM server credentials could be
different from the system hosting the prerequisite CIM server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2832


<!-- page 2833 -->
Note: Because the SMI-S Provider caches storage device information, the Discovery
query to the provider does not affect storage device performance.

SMI-S Discovery architecture

CIM architecture
CIM probes can explore any device based on the Common Information Model (CIM) by querying
a CIM server, also referred to as a CIMOM - Common Information Model Object Manager. By
default, Discovery uses CIM probes to explore storage systems as well as to get the serial
numbers of ESX servers.
Discovery queries SMI-S compliant storage devices using CIMIQL queries.
The following components are part of CIM:
• Common Information Model (CIM): CIM allows multiple parties to exchange information
about managed elements. CIM represents these managed elements and the management
information, while providing the mechanism to actively control and manage the elements.
• Storage Management Initiative Specification (SMI-S): SMI-S is a standard of use that describes
methods for storage discovery on the vendor's side. ServiceNow uses SMI-S to determine
how to discover CIM. SMI-S is based on the Common Information Model (CIM) and the WebBased Enterprise Management (WBEM) standards, which define management functionality
via HTTP. The main objective of SMI-S is to enable management of dissimilar storage products.
ServiceNow supports SMI-S version 1.4 or higher.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2833


<!-- page 2834 -->
CIM SMI-S Standard Diagram

• Web-Based Enterprise Management (WBEM): WBEM defines a particular implementation of
CIM, including protocols for discovering and accessing each CIM implementation.
• Service Location Protocol (SLP): SLP is an ad hoc protocol for retrieving and associating
configuration information about CIM servers, such as default paths, capabilities, and the exact
interop namespace. Discovery retrieves the interop namespace of a CIM server via SLP and
passes that information to the CIM Classify probe. SLP, referred to here as the SLP server, uses
service agents (SA) to gather and disseminate information about a CIM server on a subnet. A
subnet can have multiple service agents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2834


<!-- page 2835 -->
Note:
The mid.cim.interop.namespace system property defines four default storage
namespaces:
◦ interop
◦ root/interop
◦ root/pg_interop
◦ pg_interop
If you’re using multiple storage vendors with custom namespaces not specified as one of
the defaults, add the new namespaces to the comma-separated list in this property. If you
intend to continue using any of the default namespaces, make sure to include them in the
property.
CIM Agents Diagram

SLP and WBEM support
SLP is required for CIM Discovery as it is part of the Storage Management Initiative Specification
(SMI-S) stack. Some storage devices may support the WBEM protocol, but may not support SLP.
You can manually register the WBEM services on SLP using a common Linux tool like slptool.
This tool has a command line interface that you can use to make SLPv2 User Agent (UA)
requests, which usually come with the SLP daemon package. To register a service, provide a URL
and list of attributes. An example can be extracted from a working SLP server by using the same
tool.

Storage Discovery table schema
This diagram displays the disk hierarchical schema for storage Discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2835


