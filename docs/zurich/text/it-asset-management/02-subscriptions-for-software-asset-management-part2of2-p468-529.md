# Zurich IT Asset Management — Subscriptions for Software Asset Management / Supported software publisher licenses

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 468–529 of 2359 | Part 2 of 2

Sections: Subscriptions for Software Asset Management (p318); Supported software publisher licenses (p321)

---

<!-- page 468 -->
IBM LPAR
LPAR is a defined subset of processor hardware that supports the operating system. An LPAR
contains resources, such as processors, memory, and input or output devices, that operate as an
independent system. You can have multiple LPARs within each mainframe hardware system.
Discovering the LPARs and LPAR resources within your IBM LPAR infrastructure requires
ServiceNow Discovery patterns for the IBM Hardware Management Console (HMC), which is
the hardware appliance that enables you to manage and configure your LPARs. To access these
discovery patterns, you must request and install the Discovery and Service Mapping Patterns
application from the ServiceNow Store. For more information on how to configure a discovery on
your LPARs, see IBM Virtualization and Hardware Management Console discovery .

Note: The lparstat command pulls a report of LPAR-related information and usage. For
more information, see the IBM Knowledge Center

.

When you run a discovery, your discovered LPAR data is populated and stored in the following
Configuration Management Database (CMDB) tables on your ServiceNow instance:
• cmdb_ci_ibm_frame
• cmdb_ci_aix_server
• cmdb_ci_lpar_instance
• cmdb_ci_lpar_resource
• cmdb_rel_ci
• cmdb_sam_sw_install
To populate and store this data, you must request and install the CMDB CI Class Models
application from the ServiceNow Store. This application adds or updates CMDB classes for the
IBM HMC. For more information on IBM HMC CMDB classes, see IBM Hardware Management
Console (HMC) extension classes.
After your discovered LPAR data is populated in the appropriate CMDB tables, you can use
the samp_frame_to_lpar_resource database view to join the tables together and
consolidate all LPAR data into a single view. Based on this database view and the Oracle
Database and WebLogic Server licensing rules for IBM LPAR, you can identify and determine the
license compliance of all Oracle Database and WebLogic server installations across your IBM
LPAR infrastructure.
Oracle Database and WebLogic Server licensing rules for IBM LPAR
Processor
pool

Description

Licensing rule

Dedicated Processors are
assigned to only
one dedicated
LPAR, which is an
LPAR that is built
on dedicated CPU
resources.

You must license the dedicated processors on which you
install or run an Oracle database or WebLogic server.

Shared

You must license the shared processors on which you install
or run an Oracle Database or WebLogic server.

Processors are
shared across
micro-partitions,
which are LPARs

To determine the number of rights that are required for a
dedicated LPAR, multiply the total number of processor cores
that are running an Oracle Database or WebLogic server on
the LPAR by a core processor licensing factor, as specified on
the Oracle Processor Core Factor Table .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

468


<!-- page 469 -->
Oracle Database and WebLogic Server licensing rules for IBM LPAR (continued)
Processor
pool

Description

Licensing rule

that are built
on shared CPU
resources.

You can determine the number of rights that are required
across your micro-partitions based on the LPAR type:
• Capped LPAR: A capped LPAR is a logical partition that is
assigned a maximum entitled capacity, which is the number
of CPU resources that the LPAR is entitled to receive.
Capped LPARs can’t use more processor power than the
assigned entitled capacity.
To determine the number of rights that are required across
your capped micro-partitions, multiply the sum of all
assigned entitled capacities by a core processor licensing
factor, as specified on the Oracle Processor Core Factor
Table .
• Uncapped LPAR: An uncapped LPAR is a logical partition
that can use more processor power than the assigned
entitled capacity. Processor power usage is limited by the
number of virtual processors that are assigned to the LPAR
or by the maximum number of physical processor cores
that are available to the shared processor pool.
To determine the number of rights that are required
across your uncapped micro-partitions, add the sum of all
assigned virtual processors with the sum of all assigned
entitled capacities.
◦ If the resulting value is lower than the number of
physical processor cores that are available to the shared
processor pool, multiply the value by a core processor
licensing factor, as specified on the Oracle Processor
Core Factor Table .
◦ If the resulting value is greater than the number of
physical processor cores that are available to the
shared processor pool, multiply the number of physical
processor cores by a core processor licensing factor, as
specified on the Oracle Processor Core Factor Table .

For more information on database views, see Working with database views for reporting

.

Solaris LDOM or Oracle VM Server for SPARC
A logical domain (LDOM) is a distinct logical unit within a single computer system, complete with
its own operating system, resources, and identity. You can run different applications in separate
logical domains and maintain their independence for performance and security reasons. Solaris
LDOM is a virtualization technology that enables creating multiple virtual machines (VMs) on a
single physical server.
The ServiceNow Discovery application uses the Solaris LDOM infrastructure pattern and Solaris
LDOM shared library pattern to find all LDOM data. For information on Solaris LDOM discovery,
see Oracle Solaris LDOM discovery .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

469


<!-- page 470 -->
The Software Asset Management application supports licensing of Oracle Database Server
and WebLogic Server installed on the Solaris LDOM, version 2.0 and above, for Per Processor
and Named User Plus (NUP) license metrics. To license your Oracle Database or WebLogic
server installations, rights should be allocated to the physical server that runs the Solaris
LDOM configuration. For details on the licensing of Oracle products, see Software model metric
attributes.

Solaris zones
You can set up a global zone on a Solaris server and hard partition it with multiple local zones.
You can then run an Oracle Database or WebLogic server on one or more local zones. To license
your Oracle Database or WebLogic server installations, rights should be allocated to the physical
host that runs the entire Solaris zone configuration. For the Per Processor license metric, rights
must cover the cores for all local zones up to the maximum capacity of the physical host. For the
NUP license metric, rights must cover the clients that access the Database or WebLogic server
on the local zones. For information on Solaris zone discovery, see Solaris discovery .
Oracle Database and WebLogic Server licensing in cloud environments
The Software Asset Management application supports licensing rules for Oracle Database and
WebLogic Server in cloud environments.

Important: The Software Asset Management application supports Bring Your Own
License (BYOL) for Oracle Database and WebLogic servers across hybrid infrastructures.
With BYOL support, you can track licenses for your Oracle Database and WebLogic servers
in both on-premise and public cloud environments. For more information about Oracle
BYOL support, see Bring your own license or subscription to the public cloud.
When you install or run an Oracle database or WebLogic server in the cloud, you can license
it using either the Named User Plus or Per Processor license metric. The Named User Plus
license metric licenses all users and physical devices that access an Oracle cloud database or
WebLogic server. The Per Processor license metric licenses the virtual CPUs (vCPUs) on which
you install or run an Oracle cloud database or WebLogic server.

Note: The Oracle Processor Core Factor Table is not applicable in cloud environments.
Amazon Web Services (AWS)
Amazon Web Services (AWS) is a cloud computing platform on which you can install and run
Oracle databases and WebLogic servers. You can manage your Oracle databases on AWS using
either Amazon Elastic Compute Cloud (EC2) or Amazon Relational Database Service (RDS).
However, you can manage your Oracle WebLogic servers using only Amazon Elastic Compute
Cloud (EC2). For more information on Amazon EC2, refer to the Amazon Elastic Compute Cloud
documentation . For more information on Amazon RDS, refer to the Amazon Relational Database
Service documentation .
If you enable hyper-threading on your AWS virtual machine instance, the Software Asset
Management application provides one Per Processor license for every two vCPUs on which you
install or run an Oracle cloud database or WebLogic server. If you do not enable hyper-threading,
the Software Asset Management application provides one Per Processor license for every vCPU
on which you install or run an Oracle cloud database or WebLogic server.
For more information on Oracle databases and WebLogic servers in AWS, see Oracle Database
on the AWS Cloud: Quick Start Reference Deployment .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

470


<!-- page 471 -->
Microsoft Azure
Microsoft Azure is a cloud computing platform on which you can create and run Oracle
databases and WebLogic servers.
If you enable hyper-threading on your Microsoft Azure virtual machine instance, the Software
Asset Management application provides one Per Processor license for every two vCPUs on
which you install or run an Oracle cloud database or WebLogic server. If you do not enable
hyper-threading, the Software Asset Management application provides one Per Processor
license for every vCPU on which you install or run an Oracle cloud database or WebLogic server.
For more information on Oracle databases and WebLogic servers in Microsoft Azure, see
Accelerate your cloud adoption with Microsoft and Oracle .
Oracle Database licensing in multitenant architectures
The Software Asset Management application supports licensing rules for Oracle databases in
multitenant architectures.
The Oracle multitenant architecture simplifies database management by enabling you to
consolidate multiple pluggable databases (PDBs) into a single container database (CDB). With
a CDB, you can track, provision, clone, manage resources for, and upgrade multiple PDBs
simultaneously. This multitenant architecture is supported on Oracle Database version 12c
Release 1 (12.1) and later.
To run an Oracle database in a multitenant architecture, you must purchase and manage
licenses for both Oracle Database and the Oracle Multitenant option. In most cases, Oracle
Multitenant option licenses must be purchased and managed separately from Oracle Database
licenses. However, Oracle Database Cloud Service Enterprise Edition - High Performance (DBCS
EE-HP), Oracle Database Cloud Service Enterprise Edition - Extreme Performance (DBCS EE-EP),
and Oracle Database Exadata Cloud Service (ExaCS) do not require a separate license for the
Oracle Multitenant option, as it is already included in the database license. For more information
on Oracle Database licensing, see Software Asset Management publisher pack for Oracle.

Oracle Multitenant option licensing
The Oracle Multitenant option supports both the Named User Plus and Per Processor license
metrics. The Named User Plus license metric licenses all users and physical devices that
access a user-created PDB. The Per Processor license metric licenses the processor cores on
all physical hosts that are running a user-created PDB. For more information on these license
metrics, see Oracle license metrics.

Important: Oracle Multitenant option licensing accounts for user-created PDBs only. It
does not account for proxy PDBs or seed PDBs.
You can determine whether Oracle Multitenant option licensing is required for your database
deployment based on the following criteria:
• The Oracle Database version and edition of your PDBs and CDBs.
• The number of user-created PDBs within each database instance that is running on the
database installation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

471


<!-- page 472 -->
Oracle Multitenant option licensing requirements
Oracle
Oracle Database
Database
edition
version

12c
Oracle
Release Database
1 (12.1)
Standard
Edition (SE)

Licensing requirement

The Oracle Multitenant option is not supported.

Oracle
Database
Standard
Edition One
(SE1)
Oracle
Database
Standard
Edition 2 (SE2)
Oracle
Database
Enterprise
Edition (EE)

• If every database instance contains only one user-created PDB
each, licensing is not required since the Oracle Multitenant
option is not in use.
• If any database instance contains more than one user-created
PDB, licensing is required using either the Named User Plus or
Per Processor license metric.

Important: This version and edition of Oracle Database
supports up to 252 user-created PDBs per database
instance. If a database instance contains more than 252
user-created PDBs, Software Asset Management creates
removal candidates for the additional PDBs. You must
remove the additional PDBs to maintain compliance.
12c
Release
2 (12.2)
and 18c

Oracle
Database
Enterprise
Edition (EE)

• If every database instance contains only one user-created PDB
each, licensing is not required since the Oracle Multitenant
option is not in use.
• If any database instance contains more than one user-created
PDB, licensing is required using either the Named User Plus or
Per Processor license metric.

Important: This version and edition of Oracle Database
supports up to 252 user-created PDBs per database
instance. If a database instance contains more than 252
user-created PDBs, Software Asset Management creates
removal candidates for the additional PDBs. You must
remove the additional PDBs to maintain compliance.
Oracle
Database

The Oracle Multitenant option is supported only in deployments
where every database instance contains one user-created

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

472


<!-- page 473 -->
Oracle Multitenant option licensing requirements (continued)
Oracle
Oracle Database
Database
edition
version

Standard
Edition 2 (SE2)
Oracle
Database
Cloud Service
Enterprise
Edition - High
Performance
(DBCS EE-HP)
Oracle
Database
Cloud Service
Enterprise
Edition Extreme
Performance
(DBCS EE-EP)
Oracle
Database
Exadata Cloud
Service (ExaCS)
19c and
later

Oracle
Database
Enterprise
Edition (EE)

Licensing requirement

PDB each. However, licensing is not required since the Oracle
Multitenant option is not in use.
• If every database instance contains one user-created PDB each,
licensing is not required since the Oracle Multitenant option is
not in use.
• If any database instance contains more than one user-created
PDB, the Oracle Multitenant option is in use. However, separate
licensing is not required for this option since it is already
included in the Oracle Database license.

Important: These versions and editions of Oracle
Database support up to 4,096 user-created PDBs per
database instance. If a database instance contains
more than 4,096 user-created PDBs, Software Asset
Management creates removal candidates for the additional
PDBs. You must remove the additional PDBs to maintain
compliance.

• If every database instance contains three or less user-created
PDBs each, licensing is not required since the Oracle Multitenant
option is not in use.
• If any database instance contains more than three user-created
PDBs, licensing is required using either the Named User Plus or
Per Processor license metric.

Important: This version and edition of Oracle Database
supports up to 252 user-created PDBs per database
instance. If a database instance contains more than 252
user-created PDBs, Software Asset Management creates
removal candidates for the additional PDBs. You must
remove the additional PDBs to maintain compliance.
Oracle
Database
Standard
Edition 2 (SE2)
Oracle
Database
Cloud Service
Enterprise
Edition - High

The Oracle Multitenant option is supported only in deployments
where every database instance contains three or less user-created
PDBs each. However, licensing is not required since the Oracle
Multitenant option is not in use.
• If every database instance contains three or less user-created
PDBs each, licensing is not required since the Oracle Multitenant
option is not in use.
• If any database instance contains more than three user-created
PDBs, the Oracle Multitenant option is in use. However, separate

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

473


<!-- page 474 -->
Oracle Multitenant option licensing requirements (continued)
Oracle
Oracle Database
Database
edition
version

Licensing requirement

Performance
(DBCS EE-HP)

licensing is not required for this option since it is already
included in the Oracle Database license.

Oracle
Database
Cloud Service
Enterprise
Edition Extreme
Performance
(DBCS EE-EP)

Important: These versions and editions of Oracle
Database support up to 4,096 user-created PDBs per
database instance. If a database instance contains
more than 4,096 user-created PDBs, Software Asset
Management creates removal candidates for the additional
PDBs. You must remove the additional PDBs to maintain
compliance.

Oracle
Database
Exadata Cloud
Service (ExaCS)
Oracle Multitenant option use cases
You can view the following use cases to better understand licensing requirements for the Oracle
Multitenant option.

The Oracle Multitenant option is not in use
Oracle Multitenant option not in use example

In this scenario, Database Instance 1 and Database Instance 2 are running Oracle Database
12.1 Enterprise Edition and contain one user-created PDB each. Database Instance 3 is running
Oracle Database 18c Enterprise Edition and also contains one user-created PDB. Since none of
the database instances meet or exceed the minimum number of user-created PDBs for which the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

474


<!-- page 475 -->
Oracle Multitenant option is required, the option is not in use on any of the database instances.
Additional licensing for the Oracle Multitenant option is not required on any hosts within the
cluster.

The Oracle Multitenant option is in use
Oracle Multitenant option in use example

In this scenario, Database Instance 1 and Database Instance 2 are running Oracle Database
12.1 Enterprise Edition. Database Instance 1 contains three user-created PDBs, while Database
Instance 2 contains one user-created PDB. Database Instance 3 is running Oracle Database
18c Enterprise Edition and contains five user-created PDBs. Since both Database Instance 1
and Database Instance 3 exceed the minimum number of user-created PDBs for which the
Oracle Multitenant option is required, the option is in use on both database instances. Additional
licensing for the Oracle Multitenant option is required on all hosts within the cluster.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

475


<!-- page 476 -->
The Oracle Multitenant option is in use but exceeds the maximum PDB amount
Oracle Multitenant option in use but exceedx maximum PDB amount example

In this scenario, Database Instance 1 and Database Instance 2 are running Oracle Database
12.1 Enterprise Edition. Database Instance 1 contains three user-created PDBs, while Database
Instance 2 contains one user-created PDB. Database Instance 3 is running Oracle Database
18c Enterprise Edition and contains 255 user-created PDBs. Since both Database Instance
1 and Database Instance 3 exceed the minimum number of user-created PDBs for which the
Oracle Multitenant option is required, the option is in use on both database instances. Additional
licensing for the Oracle Multitenant option is required on all hosts within the cluster.
However, Database Instance 3 is considered to be out of compliance. Based on licensing rules
for the Oracle Multitenant option, the maximum number of user-created PDBs that are supported
on database instances running Oracle Database 18c Enterprise Edition is 252. Since Database
Instance 3 contains 255 user-created PDBs, Software Asset Management creates removal
candidates for the three additional user-created PDBs. These additional PDBs must be removed
to maintain compliance.
Oracle Database licensing for Standard Editions
Oracle Database Standard Editions are licensed on servers having a value less than the
maximum capacity of sockets to help ensure risk-free license compliance.
Sockets are slots on which processors or CPUs are placed. You must manually
enter socket information under the non-discoverable field Socket count in the
cmdb_hardware_product_model hardware model table. ITOM Discovery discovers only the
occupied slots and Software Asset Management reconciles and provides compliance.
Oracle Database Standard Edition licensing rules
Edition

Max rule for NUP and processor

Oracle DB Standard Edition

4 sockets per server

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

476


<!-- page 477 -->
Oracle Database Standard Edition licensing rules (continued)
Edition

Max rule for NUP and processor

Oracle DB Standard Edition 1

2 sockets per server

Oracle DB Standard Edition 2

2 sockets per server

Example: Oracle Standard Edition 2 deployed on a server with more than 2
sockets
The following example shows the message that would appear for a reclamation or removal
candidate that doesn't follow the licensing rules.
Oracle DB Server Standard Edition 2 installed on <Server
Name> has been flagged as an unlicensed install. As per Oracle
Licensing Policy, Oracle Database Standard Edition 2 may only be
licensed on servers that have a maximum capacity of 2 sockets.
This Server is found to have <no. of socket> number of sockets
available. You are advised to uninstall the Oracle DB Server
Standard Edition 2 from this server or upgrade to Oracle DB
Enterprise Edition. We suggest working with your Oracle Database
Administrator to assess the impact before proceeding with this
action. Please note that the maximum number of sockets or slots
available on a server are part of the hardware specification.
Hence it is advised to update this information on the hardware
product model <hw model name>. If this information is not
present on the hardware model, it is assumed that all sockets are
occupied and discovered.
Oracle Database options and management packs
You can use the Software Asset Management publisher pack for Oracle to track licensing
positions for your Oracle Database options and management packs. The Licensable Oracle
Options [samp_oracle_option_set] table provides the complete list of database options and
management packs that you can create software models for.
You must manage licensing for your Oracle Database options and management packs separately
from your Oracle Database servers. Separate software models and entitlements are required for
each of your database servers, database options, and management packs, thereby providing a
more comprehensive view of your Oracle license compliance position.
For example, Oracle DB Server 12c R1 Enterprise with the Partitioning option requires two
separate software models and entitlements.
Oracle DB licensing example
Purpose

Track licensing for Oracle DB
Server 12c R1 Enterprise.

Software model

Software entitlement

Oracle DB Server 12c R1
Enterprise

Record your purchased rights
for Oracle DB Server 12c R1
Enterprise.

No value selected for the
Database option field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

477


<!-- page 478 -->
Oracle DB licensing example (continued)
Purpose

Track licensing for the
Partitioning option.

Software model

Oracle DB Server 12c R1
Enterprise Partitioning

Software entitlement

Record your purchased rights
for the Partitioning option.

Partitioning selected for the
Database option field.
To track and measure usage for your Oracle Database options and management packs, request
and install the Data Collection for Oracle Global Licensing and Advisory Services application
from the ServiceNow Store. See Request Data Collection for Oracle Global Licensing and
Advisory Services (GLAS) for detailed instructions.

Important: If you are activating the Software Asset Management application for the first
time in the San Diego and later releases, the Data Collection for Oracle Global Licensing
and Advisory Services application is required for discovering and measuring the usage of
your database options and management packs.
If you are activating the Software Asset Management application for the first time in the
Rome and earlier releases or you are upgrading an existing instance of the Software Asset
Management application from the Rome and earlier releases to the San Diego and later
releases, you can continue using the existing patterns for discovering and measuring
the usage of your database options and management packs. However, ServiceNow
recommends that you use the Data Collection for Oracle Global Licensing and Advisory
Services application instead, as the application provides enhanced capabilities that
address additional use cases.
After you install the application, the SAM - Evaluate database option usage from Oracle GLAS
data scheduled job runs weekly or on-demand to retrieve usage data for both the Oracle
database options and management packs that are installed in your Oracle environment and the
Oracle features that are associated with them. The Software Asset Management application can
then include this data in the Oracle reconciliation process to help you determine the license
compliance positions of your database options and management packs, which are reported
separately from the license compliance positions of your Oracle Database servers.

Note: For more information on how usage data for your Oracle features can help you
determine the license compliance of your database options and management packs, see
Feature mapping for Oracle Database options and management packs.
Oracle Database options and management packs follow the Oracle Database server lifecycle
and are displayed in the License usage view (Software Asset Workspace) or License Workbench
(Software Asset Management classic application). However, the following remediation options
are not available for database options and management packs:
• Remove Unallocated Installs
• Remove Unlicensed Installs

Supported Oracle Database options and management packs
The Software Asset Management publisher pack for Oracle supports the following database
options and management packs based on whether you are using the existing discovery and
usage measurement patterns or the Data Collection for Oracle Global Licensing and Advisory
Services application to track and measure usage for your database options and management
packs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

478


<!-- page 479 -->
Oracle Database option or management pack

Supported by existing
discovery and
usage measurement
patterns

Supported by the
Data Collection
for Oracle Global
Licensing and
Advisory Services
application

Active Data Guard

Yes

Yes

Advanced Compression

Yes

Yes

Advanced Security

Yes

Yes

Change Management Pack

Yes

Yes

Yes

Yes

No

Yes

Yes

No

Note: If your database is running
Oracle Database 12c or later, the Change
Management Pack, Configuration
Management Pack for Oracle Database,
and Provisioning and Patch Automation
Pack for Database are consolidated into the
Oracle Database Lifecycle Management
Pack for Oracle Database. To use the Change
Management Pack, you must license the
Oracle Database Lifecycle Management Pack
for Oracle Database.
Configuration Management Pack for Oracle
Database

Note: If your database is running
Oracle Database 12c or later, the Change
Management Pack, Configuration
Management Pack for Oracle Database, and
Provisioning and Patch Automation Pack for
Database are consolidated into the Oracle
Database Lifecycle Management Pack for
Oracle Database. To use the Configuration
Management Pack for Oracle Database, you
must license the Oracle Database Lifecycle
Management Pack for Oracle Database.
Content Database Suite

Note: Content Database Suite is available
only on databases that are running Oracle
Database 11g Release 1 and earlier.
Data Masking Pack

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

479


<!-- page 480 -->
Oracle Database option or management pack

Supported by existing
discovery and
usage measurement
patterns

Supported by the
Data Collection
for Oracle Global
Licensing and
Advisory Services
application

Note: If you
are using
the Data
Collection for
Oracle Global
Licensing
and Advisory
Services
application,
you can track
and measure
usage for
Oracle Data
Masking and
Sub-setting
Pack instead.
Data Mining

No

Yes

Database In-Memory

Yes

Yes

Database Vault

Yes

Yes

Diagnostics Pack

Yes

Yes

Label Security

Yes

Yes

Multitenant

Yes

Yes

OLAP

Yes

Yes

Oracle Cloud Management Pack for Oracle
Database

No

Yes

Oracle Data Masking and Sub-setting Pack

No

Yes

Note: Data Mining requires separate
licensing only if your database is running
Oracle Database 11g Release 1 or earlier. If
your database is running Oracle Database
11g Release 2 or later, Data Mining is already
included in the database license.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

480


<!-- page 481 -->
Oracle Database option or management pack

Supported by existing
discovery and
usage measurement
patterns

Supported by the
Data Collection
for Oracle Global
Licensing and
Advisory Services
application

Note: If you
are using
the existing
discovery
and usage
measurement
patterns for
your database
options and
management
packs, you
can track
and measure
usage for Data
Masking Pack
instead.
Oracle Database Lifecycle Management Pack for
Oracle Database

No

Yes

No

Yes

Note: If your database is running
Oracle Database 12c or later, the Change
Management Pack, Configuration
Management Pack for Oracle Database, and
Provisioning and Patch Automation Pack for
Database are consolidated into the Oracle
Database Lifecycle Management Pack for
Oracle Database. You can access all three
packs by licensing only the Oracle Database
Lifecycle Management Pack for Oracle
Database.
Oracle Spatial and Graph

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

481


<!-- page 482 -->
Oracle Database option or management pack

Supported by existing
discovery and
usage measurement
patterns

Note: Oracle Spatial and Graph requires

Supported by the
Data Collection
for Oracle Global
Licensing and
Advisory Services
application

Note: If you

separate licensing only if your database is
running Oracle Database 11g Release 1 or
earlier. If your database is running Oracle
Database 11g Release 2 or later, Oracle
Spatial and Graph is already included in the
database license.

are using
the existing
discovery
and usage
measurement
patterns for
your database
options and
management
packs, you
can track
and measure
usage for
Spatial and
Graph instead.

Partitioning

Yes

Yes

Provisioning and Patch Automation Pack for
Database

Yes

Yes

Real Application Clusters

Yes

Yes

Real Application Clusters One Node

Yes

Yes

Real Application Testing

Yes

Yes

Records Database

No

Yes

Yes

No

Note: If your database is running
Oracle Database 12c or later, the Change
Management Pack, Configuration
Management Pack for Oracle Database, and
Provisioning and Patch Automation Pack for
Database are consolidated into the Oracle
Database Lifecycle Management Pack for
Oracle Database. To use the Provisioning and
Patch Automation Pack for Database, you
must license the Oracle Database Lifecycle
Management Pack for Oracle Database.

Note: Records Database is available only on
databases that are running Oracle Database
10g Release 2 or earlier.
Spatial and Graph

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

482


<!-- page 483 -->
Oracle Database option or management pack

Supported by existing
discovery and
usage measurement
patterns

Supported by the
Data Collection
for Oracle Global
Licensing and
Advisory Services
application

Note: Spatial and Graph requires separate

Note: If you

licensing only if your database is running
Oracle Database 11g Release 1 or earlier. If
your database is running Oracle Database
11g Release 2 or later, Spatial and Graph is
already included in the database license.

are using
the Data
Collection for
Oracle Global
Licensing
and Advisory
Services
application,
you can track
and measure
usage for
Oracle Spatial
and Graph
instead.

Total Recall

No

Yes

Yes

Yes

Note: Total Recall is available only on
databases that are running Oracle Database
11g and earlier.
Tuning Pack

Note: Tuning Pack is supported only
on databases that are running Oracle
Database Enterprise Edition. If Tuning Pack is
discovered on any database that is running
Oracle Database Standard Edition or Express
Edition, the Software Asset Management
application generates a removal candidate
for that Tuning Pack installation. To maintain
compliance with Oracle, you must either
uninstall Tuning Pack from the database or
upgrade the database to Oracle Databse
Enterprise Edition.
Request Data Collection for Oracle Global Licensing and Advisory Services (GLAS)
Request the Data Collection for Oracle GLAS application from the ServiceNow Store so that you
can track and measure usage for your Oracle Database options and management packs.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

483


<!-- page 484 -->
Procedure
1. From a web browser, go to the ServiceNow Store

.

2. Log in using your HI credentials.
3. In the search bar, enter Data Collection for Oracle Global Licensing and
Advisory Services and then select Search.
4. Select the result called Data Collection for Oracle Global Licensing and Advisory Services.
5. On the Data Collection for Oracle Global Licensing and Advisory Services page, select
Request Install.
The ServiceNow Request for App Installation - Data Collection for Oracle Global Licensing and
Advisory Services dialog box opens.
6. In the dialog box, fill in the fields.
ServiceNow Request for App Installation - Data Collection for Oracle Global Licensing and
Advisory Services dialog box
Field

Description

Instance Name of the instance on which you want to install the application. After you enter
Name
the instance name, select Validate Instance to verify that the instance exists.
Reason
for
request

Reason for requesting the application.

7. Select Request.
8. Select Close.

Result

If your request is approved, you will receive an email with detailed instructions on how to install
the application.

What to do next

Install the application according to the instructions in the email.
Related topics
Oracle Global License Advisory Services (GLAS) data collection using patterns
Feature mapping for Oracle Database options and management packs
The Software Asset Management application automatically maps discovered Oracle features
to the Oracle Database options and management packs that they’re associated with. These
mappings can help you determine the usage and license compliance of your database options
and management packs.
Every Oracle Database option and management pack contains a set of features that enhance
the capabilities of the Oracle Database. For example, the Oracle Active Data Guard option
provides real-time data protection and availability for Oracle Database using features such as
automatic block repair, global data services, and application continuity. For more information
on the features that are supported by each database option and management pack, refer to the
Oracle documentation .
®

When you run a discovery, the ServiceNow Discovery application locates and identifies both
the database options and management packs that are installed in your Oracle environment
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

484


<!-- page 485 -->
and the features that are associated with them. This data is then sent to the Software Asset
Management application, where it can be normalized and reconciled.
After the data is normalized, the Software Asset Management application uses the Oracle
Feature Option Mapping [samp_feature_option_mapping] table to map your features to the
appropriate database options and management packs at the database instance level. Any
subsequent usage data that you retrieve for each feature via the SAM - Evaluate database
option usage from Oracle GLAS data scheduled job can then be applied to the mapped
database options and management packs. The Software Asset Management application uses
this data with predefined database option and management pack usage rules to determine
which database options and management packs are being used on each database instance.
The resulting usage information is included in the Oracle reconciliation process to help you
determine the license compliance of your database options and management packs.
Update the default mapping for a feature
If a discovered feature is associated with more than one Oracle Database option or management
pack, you can change the database option or management pack that the feature usage data is
applied to by updating the default mapping for that feature.

Before you begin

Role required: admin

About this task

Oracle features can be associated with multiple database options and management packs.
However, the Software Asset Management application can map each feature to only one
database option or management pack at a time.
The Software Asset Management application automatically maps each discovered feature to an
appropriate database option or management pack based on default mappings that have been
predefined for each feature. Usage data for each feature can then be applied to the mapped
database options and management packs to help you determine if they are in use.
If any of your discovered features are associated with more than one database option or
management pack, you can update the default mappings for those features based on how you
are using each feature and what entitlements you have purchased for the associated database
options and management packs. By updating the default mappings for those features, you can
change the database options and management packs that the corresponding feature usage data
is applied to, thereby enabling you to better optimize the license compliance positions of your
database options and management packs based on your organization's needs.

Note: You can update the default mappings only for features that are associated with
multiple database options and management packs.

Procedure
1. On the page header of your ServiceNow instance, select All.
2. In the menu navigation filter, enter samp_option_for_feature_inuse.list.
The Default option for feature in use list opens. This list displays the default mappings for all
discovered features that are currently in use and can be mapped to more than one database
option or management pack.
3. From the list of available features, select the feature that you want to change the default
mapping for.
4. From the Default database option in use drop-down on the Default option for feature in use
form, select the database option or management pack that you want to map the feature to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

485


<!-- page 486 -->
Note: The Default database option in use drop-down is automatically filtered to
display only the database options and management packs that the selected feature is
associated with.
5. Select Update.
You automatically return to the Default option for feature in use list, which displays the new
default mapping.

What to do next

To activate the new default mapping, you must run the SAM - Evaluate database option usage
from Oracle GLAS data scheduled job. You can either run the job on-demand or wait for the next
scheduled job. After the job completes successfully, usage data for the specified feature can
then be applied to the newly mapped database option or management pack.
Unreported Database Options Usage report
You can use the Unreported Database Options Usage report to gain visibility into the Oracle
Database options and management packs that are being used on undiscovered database
instances. Although you cannot track usage for these database options and management packs,
this report can help you determine any potential licensing implications that are associated with
them.

Note: This report is available only in the Software Asset Management classic application.
To view this report, navigate to All > Reports > View/Run. From the list of available reports,
search for and select Unreported Database Options Usage. When the corresponding Edit report
page opens, select Run.
Oracle Unreported Database Options Usage report
Field

Description

Database
name

Undiscovered database instance on which the database option or management
pack is being used.

Database
option

Database option or management pack that is being used on the undiscovered
database instance.

Host

Physical host on which the undiscovered database instance is running.

Server

Server on which the physical host is running.

Oracle reconciliation
Oracle reconciliation keeps your Oracle license positions accurate and up-to-date without
requiring manual calculations. Reconciliation runs weekly or on-demand.
When you run an Oracle reconciliation, Software Asset Management determines the Rights
Used By and Rights Needed By allocations for the named users, physical devices, and physical
hosts that are accessing or running an Oracle product. You can use this information to keep your
Oracle products in compliance.

Note: Any allocations that you make on a physical host are considered valid. Software

Asset Management marks these allocations as Allocated in use in the license workbench.
Any allocations that you make on a virtual host, such as a virtual machine (VM), are
considered invalid. Software Asset Management marks these allocations as Allocated not
in use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

486


<!-- page 487 -->
For Oracle database and WebLogic server licensing on VMware virtualization technology,
you can select the level of aggregation for your reconciliation calculation using the Select

the level of aggregation for reconciling licenses for Oracle
databases and WebLogic servers on VMware property. You can also enable
Software Asset Management to account for VM-Host affinity rules during Oracle reconciliation
using the Use host affinity for reconciling licenses for Oracle

databases and WebLogic servers on VMware at the vCenter(s)
aggregation level property. See Software Asset Management properties for information
on these properties.
Set up domain-specific reconciliation properties for Oracle
Use domain separation application properties for Software Asset Management to set up Oracle
reconciliation properties for specific domains.

Before you begin

To set up domain separation application properties for Software Asset
Management, you must activate the Domain Support - Domain Extensions Installer
(com.glide.domain.msp_extensions.installer) plugin on your ServiceNow instance.
Role required: sam_admin

About this task

Domain separation application properties are available for the Software Asset Management
application. These properties correspond directly to the existing Software Asset Management
properties and enable you to specify the domain that you want each property to apply to.
Domain separation is supported on the following Oracle reconciliation properties:
• Select the level of aggregation for reconciling licenses for Oracle databases and WebLogic
servers on VMware (com.snc.samp.oracle.reconlevel)
• Use host affinity for reconciling licenses for Oracle databases and
WebLogic servers on VMware at the vCenter(s) aggregation level
(com.snc.samp.oracle.hostaffinityenabled)
For more information on the existing Software Asset Management properties, see Software Asset
Management properties. For more information on domain separation application properties, see
Domain separation application properties .

Procedure
®

1. From your ServiceNow instance, navigate to All > Software Asset Management >
Administration > Application Properties.
2. From the list of available application properties, select the application property that you want
to modify.
3. In the Application Property Values related list, select the application property value that you
want to modify.
If you do not have any existing application property values or you want to add additional
application property values, select New.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

487


<!-- page 488 -->
Application Property Values form
Field

Description

Application Name of the application property that the application property value applies to.
Property
This field populates automatically.
Value

Value of the application property. This value must be equivalent to
one of the available values in the corresponding Software Asset
Management property. For example, you can set the value of the
com.snc.samp.oracle.reconlevel application property to esx,
cluster, or vcenter. See Software Asset Management properties for more
details on the available values in the Software Asset Management properties.

Domain

Domain that you want the application property value to apply to.

5. Depending on whether you are updating an existing application property value or adding a
new application property value, select either Update or Submit.
If you are updating an existing application property value, select Update. If you are adding a
new application property value, select Submit.
Oracle Infrastructure report
You can use the Oracle Infrastructure report to gain visibility into your Oracle infrastructure.
This report includes information about the Oracle databases that you are running and the
configuration items that are supporting these databases.

Note: The Oracle Infrastructure report is domain separated.
You can view the Oracle Infrastructure report in both the Software Asset Management classic
application and the Software Asset Workspace.
To view this report in the Software Asset Management classic application, navigate to All >
Reports > View/Run on your ServiceNow instance. At the top of the Reports page, select All.
From the list of all available reports, locate and select Oracle infrastructure report.
To view this report in the Software Asset Workspace, navigate to Workspaces > Software
Asset Workspace on your ServiceNow instance. After the Software Asset Workspace launches,
navigate to License usage > Reports > Oracle infrastructure report.
Oracle Infrastructure Report
Column

Description

Required by
(Device)

Configuration item, such as a server, cluster, vCenter, or datacenter, that the
Oracle database, database option, or management pack is installed on.
Select an entry to view additional information about the licensing requirements
for that configuration item. See Licenses Required By form for more details.

Database
option

Database option or management pack that is being used with the Oracle
database.

Version

Oracle Database version that is installed on your configuration item.

Edition

Oracle Database edition that is installed on your configuration item.

Software
model

Software model that is associated with the Oracle database, database option, or
management pack.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

488


<!-- page 489 -->
Oracle Infrastructure Report (continued)
Column

Description

License
metric result

License metric that the Oracle license is counted against when reconciliation
runs. The options are Named User Plus and Per Processor.

Licenses
required

Number of rights that are required for license compliance.

Model ID

Model ID of the configuration item that the Oracle database, database option, or
management pack is installed on.

CPU
Manufacturer of the CPU that is used by the configuration item.
manufacturer
CPU type

Type of CPU that is used by the configuration item.

CPU count

Number of CPUs within the configuration item.

CPU core
count

Number of cores within each CPU.

CPU core
thread

Number of threads that divide each core within a CPU.

Oracle core
factor

Oracle processor core factor that is used to determine the number of required
rights.

CPU speed
(MHz)

Clock speed (in megahertz) of the CPU that is used by the configuration item.

Purchased

Number of rights that you have purchased.

Operating
System

Operating system of the configuration item that the Oracle database, database
option, or management pack is installed on.

Socket
Count

Number of slots available on the motherboard.

Licenses Required By form
To view additional information about the licensing requirements for a specific configuration item,
select the configuration item from the Required by (Device) field of the Oracle Infrastructure
report. The corresponding Licenses Required By form opens, where you can view information
about the license consumption, Oracle Database software installations, Oracle Database
options and management packs, and database instances that are associated with the selected
configuration item.
Licenses Required By form
Field

Description

Required by Configuration item, such as a server, cluster, vCenter, or datacenter, that the
Oracle database, database option, or management pack is installed on.
License
License metric that the Oracle license is counted against when reconciliation
metric result runs. The options are Named User Plus and Per Processor.
Licenses
required

Number of rights that are required for license compliance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

489


<!-- page 490 -->
Licenses Required By form (continued)
Field

Description

Licensing
status

Licensing status of the Oracle database, database option, or management pack.

License Consumption Details related list
Required by Configuration item that the Oracle database, database option, or management
pack is installed on.
Model ID

Model ID of the configuration item.

Processor
name

Name of the processors that are running on the configuration item.

Processors

Number of processors that are running on the configuration item.

Cores

Total number of cores within the configuration item.

CPU count

Number of CPUs within the configuration item.

CPU core
count

Number of cores within each CPU.

CPU core
thread

Number of threads that divide each core within a CPU.

Core Factor

Oracle processor core factor that is used to determine the number of required
rights.

Licenses
required

Number of rights that are required for license compliance.

CPU speed
(MHz)

Clock speed (in megahertz) of the CPU that is used by the configuration item.

Purchased

Number of rights that you have purchased.

Operating
System

Operating system of the configuration item.

Options related list

Note: This related list appears only when the software model for the required license is
associated with an Oracle Database option or management pack.
Instance

Database instance that accesses and manages data that is related to your
Oracle Database option or management pack.

Option

Oracle Database option or management pack that is installed on your
configuration item.

Licensable

Value that indicates whether the Oracle Database option or management
pack is licensable. If the option or management pack is licensable, the value is
automatically set to true. If the option or management pack is not licensable, the
value is automatically set to false.

Currently
used

Value that indicates whether the Oracle Database option or management pack
has current or past usage. If the option or management pack has any current or
past usage, the value is automatically set to In Use. If the option or management
pack does not have any current or past usage, the value is automatically set to
Not In Use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

490


<!-- page 491 -->
Licenses Required By form (continued)
Field

Description

First usage
date

Date on which you first started using the Oracle Database option or management
pack.

Last usage
date

Date on which you last used the Oracle Database option or management pack.

Installs related list

Note: This related list appears only when the software model for the required license is
associated with an Oracle Database software installation.
Display
name

Name of the Oracle Database software installation.

Publisher

Publisher of the installed software. This field is always set to Oracle.

Version

Oracle Database version that is installed on your configuration item.

Discovery
model

Discovery model that is associated with the Oracle Database software
installation.

Installed on

Configuration item that the Oracle Database software is installed on.

Assigned to

User that is associated with the Oracle Database software installation.

Instances related list

Note: This related list appears only when the software model for the required license is
associated with an Oracle Database software installation.
Name

Name of the database instance that accesses and manages the data in your
Oracle database.

Environment Environment that the database instance resides in.
Version

Version of the database that the database instance accesses and manages.

Vendor

Vendor of the database that the database instance accesses and manages. This
field is always set to Oracle.

Oracle DB Server Deployments per Agreement report
You can use the Oracle DB Server Deployments per Agreement report to gain visibility into your
Oracle Database server deployments across hybrid infrastructures, based on the agreement
type.

Note: The Oracle DB Server Deployments per Agreement report is available only in the
Software Asset Workspace. This report is not available in the Software Asset Management
classic application.
To view this report, launch the Software Asset Workspace by navigating to Workspaces >
Software Asset Workspace on your ServiceNow instance. From the Software Asset Workspace,
navigate to License usage > Reports > Oracle DB Server deployments per agreement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

491


<!-- page 492 -->
Oracle DB Server Deployments per Agreement report
Field

Description

Name

Name of the Oracle Database server deployment.

Product

Oracle product that is running within your deployment. This field is always set to
DB Server.

Version

Oracle Database version that is installed or running on your servers.

Edition

Oracle Database edition that is installed or running on your servers.

License
metric

License metric that the Oracle Database license is counted against when
reconciliation runs. The options are Named User Plus and Per Processor.

Agreement Agreement type for your Oracle Database server deployment. The options are
type
ULA (Unlimited License Agreement) and Generic.
Cloud
provider

Cloud provider through which your Oracle Database servers are deployed.

Cloud
service
type

Cloud service model through which your Oracle Database servers are deployed.
The options are PaaS and IaaS.

Software Publisher Analytics dashboard for Oracle in Software Asset Management classic
View compliance analysis results related to Oracle on the Software Publisher Analytics
dashboard in the Software Asset Management classic application.
Access the Software Publisher Analytics dashboard by navigating to All > Software Asset >
Publisher Overview.

Note: The add-on Oracle publisher pack (com.snc.samp.oracle) plugin must be installed
to view the Oracle dashboard tab.
Results are updated whenever a new reconciliation result is available. You can save charts in
PNG or JPG format.

Oracle dashboard
You can manage Oracle Server Software, such as Database Server, using the Oracle publisher
pack.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

492


<!-- page 493 -->
Oracle tab
Report

Source list

Description

Products out of Compliance

Product Results

Number of products that have
at least one software model
out of compliance.
Select the report to view
the results in the License
Workbench.

True-up Cost

Product Results

Cost to be compliant based
on the average prices for
entitlements for the rights.

Over-Licensed Amount

Product Results

Cost of licenses owned but
not being used.

Products by True-up Cost

Product Results

Greatest true-up costs by
product.

Oracle Options Usage

Oracle Options

Installed Oracle licenses
versus licenses in use (true
versus false).

Database Instances by Edition Oracle Instances

Total number of database
instances by database edition.

Top 10 Database Instances by
Client Access Users

Client Access

Database instances with the
greatest number of client
access users.

Oracle Software Lifecycle
Report

Software Lifecycle Report

Number of products in each
software lifecycle phase,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

493


<!-- page 494 -->
Oracle tab (continued)
Report

Source list

Description

including End of Extended
Support, End of Life, and End
of Support.
Publisher overview for Oracle in the Software Asset Workspace
View license usage information related to Oracle in the publisher overview for Oracle in the
Software Asset Workspace.
From the Software Asset Workspace, access the Oracle publisher overview by navigating
to License usage > Publishers and then selecting Oracle from the list of available software
publishers.
Results are updated whenever a new reconciliation result is available.

You can view a summary of your license usage information in the Summary section of the Oracle
publisher overview.
Oracle Summary
Report

Description

True-up
cost

Cost to be compliant based on the average price of rights in your Oracle software
entitlements.

Potential
savings

Potential cost savings for your Oracle licenses.

Actual
savings

Actual cost savings for your Oracle licenses.

Unlicensed Summary of your unlicensed entities.
entities
This summary includes the following information:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

494


<!-- page 495 -->
Oracle Summary (continued)
Report

Description

• Unlicensed installs: Total number of unlicensed Oracle software installations.
Select the number to view the complete list of unlicensed Oracle software
installations.
• Installs requiring action: Total number of Oracle software installations that you
must take action on. Select the number to view the complete list of these Oracle
software installations.
• Unlicensed subscriptions: Total number of unlicensed Oracle subscriptions.
Select the number to view the complete list of unlicensed Oracle subscriptions.
• Unlicensed client access: Total number of unlicensed Oracle client access
records. Select the number to view the complete list of unlicensed Oracle client
access records.
• Unlicensed options: Total number of unlicensed Oracle Database options and
management packs. Select the number to view the complete list of unlicensed
Oracle Database options and management packs.
Progress
indicators

Summary of your license compliance progress.
This summary includes the following indicators:
• Ignored installs: Total number of Oracle software installations that were ignored
during reclamation. Select the number to view the complete list of ignored
Oracle software installations.
• Removal candidates: Total number of Oracle removal candidates. Select the
number to view the list of all software removal candidates.
• Invalid configurations: Total number of Oracle removal candidates with invalid
configurations. Select the number to view the complete list of these Oracle
removal candidates.

License
types of
Oracle
Database
on MS
Azure

Number of software installations for each license type that you are using in
Microsoft Azure cloud environments. License types include BYOL and License
Included.

License
types of
Oracle
Database
on AWS

Number of software installations for each license type that you are using in AWS
cloud environments, based on the cloud service model through which your
Oracle Database servers are deployed. License types include BYOL and License
Included. Cloud service models include PaaS (Platform as a Service) and IaaS
(Infrastructure as a Service).

For more details on the license usage information that is provided in the publisher overview, see
License usage publisher fields in workspace.

Software Asset Management publisher pack for SAP
Use the Software Asset Management publisher pack for SAP to manage and optimize your SAP
licenses. Get comprehensive visibility into your SAP license compliance and uncover potential
savings.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

495


<!-- page 496 -->
Note: You can use the SAP publisher pack to manage and optimize licensing for SAP
NetWeaver 7.4, SAP_BASIS 740, and later versions.

Note: To use the publisher pack, install the Software Asset Management Professional for
SAP plugin (com.sn_samp_sap).

Supported license types
The SAP publisher pack supports licensing for named users, engine measurement, third-party
access, and full-usage equivalent.
Named Users
SAP named users are the members in your organization who use SAP applications.
You can purchase different types of named user licenses and then assign each
license to a named user.
The SAP publisher pack supports named user licenses for both SAP ERP Central
Component (ECC) applications and SAP S/4HANA applications. Different named
user license types are supported based on the application type. SAP ECC
applications support various named user license types, including Professional,
Limited Professional, and Employee Self Service. SAP S/4HANA applications
support only the Developer Access, Enterprise Management for Professional Use,
Enterprise Management for Functional Use, Enterprise Management for Productivity
Use, Technical SAP Engine User, and Technical Use named user license types.
The ServiceNow AI Platform supports all named user types for both SAP ECC
applications and SAP S/4HANA applications.
Engines (automated, calculated, and self-declared)
SAP engines, also known as packages, are optional applications that require
additional licenses. Every engine has a unique license metric that is used to
calculate the license usage for the engine. Examples of license metrics include the
number of employees or number of contracts.
License usage is calculated through either an automated SAP engine measurement,
calculation based on multiple engine measurements plus an indicator, or a manual
self-declaration process.
• If an engine is supported by the SAP engine measurement process, Software
Asset Management automatically calculates the license usage for that engine.
• If an engine is identified to be composed of multiple engine measurements,
Software Asset Management calculates this value if the indicator license metric is
also available.
• If an engine isn’t supported by the SAP engine measurement process, you must
manually enter the license usage information for that engine using the selfdeclaration process. For information on how to self-declare your SAP engine
license usage, see Self-declaring SAP engine license usage.
To view the complete list of engines that are supported by each process, see Engine
& Self-Declaration Product Measurement
in the SAP Support Portal.

Important: You must have an SAP Support Portal account to access the
SAP Support Portal.
The SAP publisher pack supports engine licenses for both SAP ERP Central
Component (ECC) applications and SAP S/4 HANA applications.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

496


<!-- page 497 -->
Note: Starting with the Zurich release, revenue-based licensing support
is enabled for SAP Engine products. You can use higher value revenuebased products for purchased rights and unit cost. For details on enabling
the support for revenue-based licensing, see the knowledge base article
KB1641524 .
Digital Access
The Digital Access license applies to indirect usage of SAP systems by people or
third-party applications without logging in to the system directly. A few examples for
indirect usage of SAP systems are as follows:
• Using a third-party application to perform actions in the SAP system
• Entering data into the SAP system from a third-party application
• Viewing data in the SAP system from a third-party application
When you have many third-party product integrations with SAP systems, you can
avoid unnecessary consumption of your named user license by purchasing Digital
Access licenses. In this licensing model, the usage of SAP applications is licensed
by the count of the predefined documents created by the third-party application.
The details of the predefined document types are stored in the SAP Document Type
[samp_sap_document] table that's installed with the Software Asset Management
Professional for SAP (com.sn_samp_sap) plugin.
SAP Document types
Document name

Document multiplier

Sales document

1

Purchase document

1

Invoice document

1

Manufacturing document

1

Material document

0.2

Quality Management document

1

Service and Maintenance document

1

Financial document

0.2

Time Management document

1

The SAP system stores the digital access data of the supported document types for
different users and client systems. Make sure you have any of the following tools to
pull the digital access data from the SAP system to your ServiceNow instance:
• SAP Passport tool
• SAP Estimation tool

Note: When you purchase an SAP Digital Access license, these tools are
available for installation without any additional cost. For details on the SAP
tools, see SAP Help Portal .
When any of the predefined document types are created in the SAP system through
a third-party application, the Digital Access licensing cost is applicable. However,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

497


<!-- page 498 -->
there are no additional charges associated with reading, updating, or deleting these
documents.
For the SAP Digital Access software model, digital access usage is calculated as
follows:
1. The total count of documents of a particular document type created on each SAP
system by all your users is calculated.
Consider a scenario where User A created 5 Material documents, and User B
created 5 Material and 10 Sales documents on an SAP system. The total count of
Material documents is 10 and Sales documents is 10.
2. The license consumption is calculated by multiplying the total count of a
particular document type by the Document multiplier.
Based on the scenario mentioned in the preceding step, licenses consumed by
Material documents is 2 (10*0.2) and by Sales documents is 10 (10*1). So, the total
Digital Access license consumed is 12.

Note: The SAP Digital Access software model is installed with the Software
Asset Management Professional for SAP (com.sn_samp_sap) plugin.
Reconciliation for the SAP Digital Access software model is done by comparing the
Purchased rights with the licenses that you consumed.
Full Usage Equivalent (FUE)
The FUE license applies to the users of SAP S/4HANA Cloud applications. FUE is
granted to the number of users that are authorized to access specified solution
capabilities. A single FUE can be allocated to different use types with a specific
weighting factor.
The FUE framework for licensing provides the required level of access and flexibility
to different cloud use types. An FUE license can be distributed to any of the four
different cloud use types that have a specified weighting factor.
• Self-Service Use: This FUE applies to users that are using the SAP S/4HANA
Cloud application through self-service portals, providing access to basic business
processes, data viewing, and report generation. This use type is intended
for users who mainly access information or engage with the application via
predefined self-service features. Additionally, it’s used to display and manage use
rights, data consumption, and lightweight tasks.
• Core Use: This FUE includes all rights from the Self-Service use type and
is designed for users who need restricted access to the SAP S/4HANA
Cloud application. Core users can view data, run reports, and run basic
business processes. This use type is ideal for users who require access to
specific information or perform routine tasks without needing comprehensive
functionality.
• Advanced Use: This FUE includes all rights from the Core use type and grants
users full access to the SAP S/4HANA Cloud application. This type of access
enables users to create and edit data, run reports, and use all available business
processes. It’s assigned to users who need extensive functionality that is crucial
for managing key business operations.
• Development Use: This FUE grants authorized users the license to access the
development tools provided with the SAP S/4HANA Cloud ABAP Environment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

498


<!-- page 499 -->
The details of the predefined cloud use types are stored in the SAP Cloud Use
Types [samp_sap_cloud_use_type] table that's installed with the SAP S/4HANA
spoke plugin. For more information, see License calculation for SAP cloud use
types.
SAP S/4HANA cloud user types and weighing factors
Cloud user type

Weighing factor

Development User

One FUE = 0.5

Advanced User

One FUE = 1

Core User

One FUE = 5

Self-Service User

One FUE = 30

An example of FUE license allocation to different cloud user types:
40 SAP S/4HANA Cloud users for advanced use = 40 FUE licenses
75 SAP S/4HANA Cloud users for core use = 15 FUE licenses
270 SAP S/4HANA Cloud users for self-service use = 9 FUE licenses

SAP connection with the ServiceNow AI Platform
To start connecting your SAP systems and your ServiceNow instance, deploy the ABAP program
for SAP. Then, follow the steps to establish an SAP connection.
The Software Asset Management publisher pack for SAP uses a centralized design. When you
import transport files into an SAP client that is considered a central system, the client uses the
custom program-selected Remote Function Call (RFC) connection list to connect all other clients
through RFC from the central system. It then fetches data to store in central system custom
tables. To import the transport files, use either the SAP Solution Manager or another SAP client
that has RFC connections activated to fetch data into a central system.
After the connection is established, data is pulled into your ServiceNow instance from your SAP
system. For a list of all data that is pulled, see Tables installed with the SAP publisher pack.
SAP data is scheduled to be pulled weekly. User activity data, web activity data, and
engine usage data are pulled monthly. All user and web activity is deleted after 90 days.
Engine usage measurement records in the SAP License Metric Measurement table
[samp_sap_license_metric_measurement] are deleted after one year.
When SAP data enters the ServiceNow AI Platform, it’s initially stored in staging tables before it’s
transferred to the final SAP tables. To edit the tables where data transfer takes place or to view
the transfer logic, see transform maps .

Note: The user activity and web activity transform maps aren't enabled by default
because they may cause performance issues due to the large amount of data. However,
you can manually enable these transform maps. To enable the activity transform maps,
navigate to All > Software Asset > SAP Compliance and Optimization > SAP Connections
and select the connection. In the Configuration section, set the Fetch activity field to True
and then select Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

499


<!-- page 500 -->
View SAP license usage and compliance
View your SAP license costs, usage, and compliance using the Software Publisher Analytics
dashboard (Software Asset Management classic application) or publisher overview (Software
Asset Workspace). The dashboard and overview also show how you can optimize license
consumption by reassigning user roles in your SAP system. You can view the license optimization
details in the Software asset analytics view. For more details, see Publisher optimizations for
SAP.
Reconciliation runs weekly or on demand to determine your license compliance position for
all of your SAP products. Reconciliation compares your purchased rights recorded in software
entitlements with actual usage data pulled from your SAP systems. You can view reconciliation
results for SAP in the License usage view of the Software Asset Workspace. The License usage
view shows unlicensed users and engines, digital access licenses available and required, and
remediation options to make your license position compliant, potential savings, and more. For
more information on the License usage view, see License usage view.
To view Software license compliance position reports for SAP, navigate to License usage >
Reports > Software license compliance position in the Software Asset Workspace.
Tables installed with the SAP publisher pack
Tables are installed with the Software Asset Management Professional for SAP plugin. The tables
store data pulled from the SAP systems.

Note: Use the Application Files table to see all components installed with the SAP
publisher pack. For more information, see Find components installed with an application

.

Demo data is available for the SAP publisher pack.

Tables
Table

Description

Named User Type Role
[samp_named_user_type_has_role]

Roles assigned to each named user type.

SAP Client [samp_sap_client]

Remote Function Call (RFC) destination
connecting Advanced Business Application
Programming (ABAP) systems to external
systems.
To view the table, navigate to SAP Compliance
and Optimization > Administration > SAP
Clients.

SAP Connection [samp_sap_connection]

SAP system connections.
To view the table, navigate to SAP Compliance
and Optimization > Administration > SAP
Connections.

SAP Engine Usage
[samp_sap_sw_client_access]

Most recent engine usage measurements for
SAP clients based on the license metric for each
engine.

SAP License Metric
[samp_sap_license_metric]

This table is populated by the ServiceNow
Content Service. It’s a list of all license metrics
that are used by SAP engines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

500


<!-- page 501 -->
Table

Description

To view the table, navigate to SAP Compliance
and Optimization > Administration > Engines.

Note: The table is periodically updated
with new data from the Content Service.
New license metrics may be added,
and existing license metrics may be
deactivated to reflect current SAP licensing.
To view your software models that have
deactivated license metrics, navigate to
SAP Compliance and Optimization >
Administration > Software Models with
Deactivated SAP License Metrics.
SAP License Metric Measurement
[samp_sap_license_metric_measurement]

Monthly engine usage measurements for SAP
clients based on the license metric for each
engine.
To view the table, navigate to SAP Compliance
and Optimization > Licensing > All SAP Engines.

SAP Roles [samp_sap_role]

SAP roles pulled from the SAP systems.

SAP System User [samp_sap_system_user]

Discovered users pulled from the SAP systems.
To view the table, navigate to SAP Compliance
and Optimization > Licensing > All SAP Users.

Note: The Discovered Users table
[samp_discovered_user] maps the
discovered SAP users to system user
records in the Users table [sys_user].
SAP User Activity [samp_sap_user_activity]

Data related to a user’s activity on an SAP client,
such as the amount of time spent on an SAP
system or the number of database records
created or updated.

SAP User Roles [samp_sap_user_has_role]

SAP users and their assigned roles.

SAP Web Activity [samp_sap_web_activity]

Data related to web activity or RFC connections
performed in the SAP client, such as the number
of calls or amount of data received or sent by
each connection.

SAP User Active Transactions
Data related to a named user's transaction
[samp_named_user_type_has_transactions] activity on an SAP client. User transaction
activity is based on SAP transaction codes,
which are shortcuts for performing transactions
or tasks on an SAP client. For example, the
ME21N transaction code enables you to create a
purchase order in SAP.
SAP USMM Rules [samp_sap_usmm_rule]

USMM rules information from all connected SAP
applications.

Note: Staging tables for SAP data are also installed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

501


<!-- page 502 -->
Data from SAP is also stored in some additional tables that aren't part of the SAP publisher pack.
• Price list data is pulled and stored in the Price List table [samp_price_list].
To view the table, navigate to SAP Compliance and Optimization > Administration > Price
Lists.
• Named user types are pulled and stored in the Named User Type table
[samp_named_user_type].
To view the table, navigate to SAP Compliance and Optimization > Administration > Named
User Types.
• The Digital Access details such as Client, User name, Document type, Document type count,
and Measured by are pulled from the SAP systems and stored in the SAP Digital Access
[samp_sap_digital_access] table.
To view the data in the table, navigate to All > Software Asset Workspace > License
operations > Discovery > SAP Digital Access Data.
Deploy the ABAP program for SAP
To begin establishing a connection between your SAP system and your ServiceNow instance,
deploy the Advanced Business Application Programming (ABAP) program. Deploying the ABAP
program allows data to be shared between SAP and your ServiceNow instance.

Before you begin

To access the ABAP program, download the SAP ABAP for Software Asset Management
application from the ServiceNow Store . Make sure you download the application version that is
compatible with the Zurich release.
Role required: sam_admin

About this task

To deploy the ABAP program, import the transport files that are provided through the SAP ABAP
for Software Asset Management application and then configure a service provider with the
service-oriented architecture (SOA) Manager.

Note: If you upgrade your ServiceNow instance, you must download and deploy the
version of the ABAP program that is compatible with the new release. You must then
reconfigure a service provider with the SOA Manager.
For SAP setup information, see KB0813999

.

For more information on SAP and its related tools, refer to the SAP Help Portal

.

Procedure
1. In your SAP system, import the transport files using the SAP Transport Management System
(STMS).
a. Copy and extract the COFILE and DATA files to your directory.
b. Start STMS and select Import Overview.
c. Double-click the target system, select Extras > Other Requests > Add, and then enter the
transport request number.
d. Highlight the request and select Request > Import.
e. From the Import Transport Request window, enter the client number in the Target Client
field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

502


<!-- page 503 -->
f. Select the Options tab, and then select the Ignore Invalid Component Version check box.
g. Select OK.
2. In your SAP system, configure a service provider with the SOA Manager.
a. Start the SOA Manager and select Service Administration > Web Service Configuration.
b. Select Service Definition from the Search By field.
c. Enter the service definition location in the Search Pattern field.
d. Select Go.
e. From the Search Results pane, select the service definition row, and then select Apply
Selection.
f. From the Configurations tab, select Create.
g. Complete the following fields.
SOA Management dialog box
Field

Description

Service Name

Name of the service.

Description

Description of the service.

New Binding Name

Name of the binding.

h. Select Apply Settings.
i. Select Provider Security > Message Authentication, and then select the User ID/Password
check box.
j. Select Save.
k. Select Overview > Open Design time WSDL document.
A browser window opens and a new WSDL is generated.
l. Select Open Service WSDL Generation.
m. Copy the link from the WSDL URL for Binding field.
3. Verify the RFC connection.

What to do next

Return to your ServiceNow instance to establish your SAP connection.
Establish an SAP connection
After you have deployed the Advanced Business Application Programming (ABAP) program
in your SAP system, create a connection profile to establish a connection between your SAP
system and your ServiceNow instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

503


<!-- page 504 -->
Before you begin

Before establishing a connection between SAP and your ServiceNow instance, check if your SAP
system network is accessible to external applications like ServiceNow. If external connections
are blocked, you can install a MID Server. A MID Server enables communication and data
movement between a ServiceNow instance and external applications or data sources. For
instructions, see Installing the MID Server .
If you already have a MID Server installed in the network and connected to your ServiceNow
instance, this SAP connection automatically uses it.
Role required: admin

Procedure
1. Navigate to All > SAP Compliance and Optimization > Connection Setup and select New.
2. On the form, fill in the fields.
SAP Connection Setup form
Field

Description

Name

Name of connection profile.

Default
price list

Default price list that should be considered for reconciliation.

WSDL

Web Service Description Language (WSDL) URL from the SOA manager that
includes an IP address that is used to connect to the SAP system.

Note: Don’t change the SAP WSDL name. The WSDL service definition
name must be /NOW/SAMP and the service binding name must be
NOW_SAMP. The only WSDL name that can be changed is the WSDL
generation name.
User
name

User name used to connect to the SAP system.

Password Password used to connect to the SAP system.
3. Select Submit.
The initial connection is established.
4. Select the SAP connection and review the fields on the record.
SAP Connection record
Field

Description

Name

Name of the connection profile. The value is generated in the SAP Connection
Setup form.

Default price Default price list that should be considered for reconciliation. The value is
list
generated in the SAP Connection Setup form.
Use USMM Check box to specify USMM role-based optimization that must be applied
Role
during reconciliation.
Optimization
Last run

Date and time that data was last pulled for the SAP connection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

504


<!-- page 505 -->
Field

Description

SOAP
message

SOAP message that has the SAP WSDL information.

Credential
alias

Connection alias that contains the credentials for the connection. The
connection alias resolves your connection and credentials at runtime.

Active

Option that indicates that the SAP connection is active.

User Mapping
SAP user
field

SAP users across different clients that are mapped to a corresponding
ServiceNow user.

User field

ServiceNow user field.

Note: Changing the values in the User Mapping fields after data is
pulled causes the mapping between discovered users and system users
to be lost. The mapping between discovered users and the Rights used
by and Rights needed by fields is also lost.
Configuration
Fetch roles

Controls the data pull from SAP for roles data.

Fetch
engine
usage

Controls the data pull from SAP for engine usage data.

Fetch digital Controls the data pull from SAP for digital access usage data.
access
usage
Fetch
activity

Controls the data pull from SAP for user activity and web activity data.

Fetch user
Controls the data pull from SAP for user transaction activity data.
transactions
5. In the SAP Credentials related list, view the credentials you used to create the connection.

Note: Only one credential record should be active for a given SAP connection.
To determine the roles associated with your credentials, contact your SAP Basis
administrator. Your administrator assigns respective roles to your SAP user ID credentials.
6. To test your SAP connection and if you're running the latest version of the ABAP program,
select the Test SAP Connection and Version related link.

Note: If you upgrade your ServiceNow instance, you must download and deploy the
new version of the ABAP program and reconfigure a service provider with the SOA
Manager.
7. To send a request to the custom ABAP program to collect the SAP data into the custom tables
again, select the Refresh data in SAP related link.
8. If the SAP data you pulled is corrupted and you want to see current data, select the Pull all
SAP Data to ServiceNow related link.
SAP data is scheduled to be pulled regularly.
9. View SAP clients in the SAP Clients related list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

505


<!-- page 506 -->
The SAP clients are generated when SAP data is pulled during the scheduled job.
10. Select Update.

Result

You can start creating software models and entitlements.
Create entitlements for SAP
Create software entitlements to record your license information for SAP products. You can create
entitlements individually or import them from a spreadsheet.

Before you begin

Role required: sam_user or sam_admin

Note: The sam_admin role is required to import entitlements.
Important: You can create and import entitlements in both the Software Asset
Management classic application and the Software Asset Workspace. The following steps
provide details on creating entitlements in the Software Asset Management classic
application. For details on creating entitlements in the Software Asset Workspace, see
Create entitlements in workspace. For details on importing entitlements in the Software
Asset Workspace, see Import bulk entitlements in workspace.

About this task

The following steps describe information specific to SAP. For general instructions on creating
software entitlements, see Create entitlements in Software Asset Management classic.

Procedure
1. Navigate to All > Asset > Portfolios > Software Entitlement and select New.
2. On the form, fill in the fields.

Note: Only information specific to SAP software entitlements is shown in the following
table. For a detailed description of all software entitlement fields, see Software
entitlement fields.
Software Entitlement form
Field

Value

Metric group

SAP

License metric

Select any of the following values:
◦ Named User: To license the number of
named users that can be assigned a given
Named User Type. The Named User Type is
defined by the software model linked to the
entitlement.
◦ Engine Measurement: To license the
amount of usage for an SAP engine.
◦ Digital Access: To license the indirect
usage of SAP applications through a
third-party application or a non-SAP
intermediary software based on the count

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

506


<!-- page 507 -->
Field

Value

of documents created by the third-party
application
◦ Full Usage Equivalent: To license the
number of users that are authorized to
access specified solution capabilities of
SAP S/4HANA Cloud Public Edition. Full
Usage Equivalent (FUE) can be allocated
to different user types with a specific
weighing factor.
When you select Full Usage Equivalent in
the License metric field, the license type is
automatically set to Subscription.
The type of usage is defined by the SAP
license metric field on the software model.
For more information about license metrics,
see Software license metrics.
The following fields appear when you select Engine measurement in the License metric
field.
Rights per license pack

Number of rights associated with each pack
that is purchased for SAP Engine product.

Number of packs

Number of packs for SAP Engine
measurement licenses.

3. Select Save.
4. After the form reloads, select Publish.
Create software models for SAP
Create software models to record SAP product information.

Before you begin

Role required: sam_user

Important: You can create software models in both the Software Asset Management
classic application and the Software Asset Workspace. The following steps provide details
on creating software models in the Software Asset Management classic application.
For details on creating software models in the Software Asset Workspace, see Create a
software model in the Software Asset Workspace.

About this task

Software models are automatically created for engines and license metrics that are pulled from
your SAP systems. You can manually create additional software models for SAP products as
needed.
The following steps describe information that is specific to SAP. For general instructions on
creating software models, see Create software models in Software Asset Management classic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

507


<!-- page 508 -->
Procedure
1. Navigate to All > Product Catalog > Product Models > Software Models and select New.
2. On the form, fill in the fields.

Note: Only the fields that are specific to SAP software models are shown below. For
detailed descriptions of all software model fields, see Software model fields.
Software Model form
Field

Description

Named
user type

SAP named user type.

Note: This field appears only when Named Users is selected from the
Product field.

Price List

Software group that corresponds to the named user type.

Note: This field appears only when Named Users is selected from the
Product field.
SAP
license
metric

License metric that is used to calculate license consumption for an engine.
Examples of license metrics are number of employees or number of contracts.

Note: This field appears only when an SAP engine is selected from the
Product field.

Is
relevant

Some SAP engines don't require additional licensing. Select the check box if the
engine requires additional licensing. Software models with Is relevant set to false
will always be considered compliant by reconciliation.

Note: This field appears only when an SAP engine is selected from the
Product field.

Threshold Some SAP engines allow a certain amount of unlicensed usage before your
licence position becomes not compliant. The threshold defines the allowed
usage and is specific to each engine and license metric. If your engine usage
exceeds your licensed amount but is less than the threshold value, the software
model is still considered compliant by reconciliation.

Note: This field appears only when an SAP engine is selected from the
Product field.

3. Select Submit.

What to do next

Create a software entitlement to record your licenses for the software model.
Create a custom SAP named user type
Create a custom SAP named user type so that you can track and manage your SAP licenses
based on the named user type that is specific to your SAP system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

508


<!-- page 509 -->
Before you begin

Role required: sam_admin

Important: You can create custom SAP named user types in both the Software Asset
Management classic application and the Software Asset Workspace. Use the following
steps to create custom named SAP user types in the Software Asset Management classic
application. For details on how to create custom named user types in the Software Asset
Workspace, see Create a custom named user type in workspace.

About this task

Note: The custom SAP named user types that you create directly on your ServiceNow
instance are not reflected in your SAP system. You must make the same changes in your
SAP system.

Procedure
®

1. On the page header of your ServiceNow instance, select All.
2. In the menu navigation filter, enter samp_named_user_type_list.do.
The Named User Types [samp_named_user_type] table opens.
3. Select New.
4. On the form, fill in the fields.
Custom Named User Type form
Field

Description

Name

Name of custom named user.

Price list

Default price list.

Is developer

Option that indicates the user has a developer role.

Grants access Grant access to a named user type.
to
Value

Value associated with the named user type. This value can be either
numbers or letters.

Rank

Priority of the named user type during reconciliation. Lower rank values take
precedence.

Is licensable

Option that indicates the named user type license status.

Active

Option that indicates if the named user type is active.

5. Select Submit.

Result

The named user type is added to the Named User Types [samp_named_user_type] table.

What to do next

After you have added the custom named user, create a software model designating the custom
named user in the form.
Map a role to a named user type
You can optimize your SAP licenses by mapping roles to a named user type. During
reconciliation, discovered user roles and their assigned named user types are compared against
these roles to identify user that can be given a lower named user type.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

509


<!-- page 510 -->
Before you begin

Role required: sam_admin

About this task
Procedure
®

1. On the page header of your ServiceNow instance, select All.
2. In the menu navigation filter, enter samp_named_user_type_list.do.
The Named User Types [samp_named_user_type] table opens.
3. Select the named user type that you want to map a role to.
4. In the SAP Roles related list, select Edit....
5. In the Collection list on the Edit Members form, search for and select the role that you want to
map to the named user type.
6. Select the Add icon (

) to move the selected role to the SAP Roles List.

7. Repeat steps 5 and 6 for each role that you want to map to the named user type.
8. Select Save.
Create custom SAP price lists
Create custom SAP price lists so that you can track and manage SAP licenses based on the
contracts that are specific to your SAP system.

Before you begin

Role required: sam_admin

Note: The custom SAP named user types that you create directly on your ServiceNow
instance aren’t reflected in your SAP system. You must make the same changes in your SAP
system.

Important: You can create custom SAP price lists in both the Software Asset
Management classic application and the Software Asset Workspace. Use the following
steps to create custom SAP price lists in the Software Asset Management classic
application. For details on how to create custom SAP price lists in the Software Asset
Workspace, see Create custom SAP price lists in workspace.

Procedure
1. On the page header of your ServiceNow instance, select All.
2. In the menu navigation filter, enter samp_price_list_list.do.
The Price Lists [samp_price_list] table opens.
3. Select New.
4. On the form, fill in the fields.
Custom Price List form
Field

Description

Name

Name of the price list.

Id

Unique identifier for the price list.

Default named user type

Default named user type for the price list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

510


<!-- page 511 -->
Field

Description

Active

Option that indicates if the price list is active.

5. Select Submit.
You automatically return to the Price Lists [samp_price_list] table.
6. Optional: Associate SAP named user types with the custom SAP price list.
a. From the Price Lists [samp_price_list] table, select the custom SAP price list that you created.
The Custom Price List record opens.
b. In the Named User Types related list, select New.
c. On the form, fill in the fields.
Create Custom Named User Type form
Field

Description

Name

Name of the named user type.

Price List

Price list that you want to associate the named user type with. This field
populates automatically.

Is
Option that indicates if users with this named user type have a developer role.
developer
Grants
access to

Applications that the named user type has access to.

Value

Alphanumerical value that identifies the named user type.

Rank

Priority of the named user type during reconciliation. Lower rank values
correlate with a higher priority during reconciliation.

Is
Option that indicates if the named user type can be licensed.
licensable
Active

Option that indicates if the named user type is active.

d. Select Submit.
e. Repeat steps a to c for each custom named user type that you want to add.
Import custom SAP named user types
®

Import custom SAP named user types into your ServiceNow instance so that you can track and
manage SAP licenses based on the named user types that are specific to your SAP system.

Before you begin

Role required: admin

Procedure
1. Go to KB1299127
to download the Microsoft Excel spreadsheet template
(imp_samp_sap_custom_nut.xlsx) that you can use to import custom SAP named user types
into your ServiceNow instance.
2. Fill in the spreadsheet with all the custom SAP named user types that you want to import.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

511


<!-- page 512 -->
The Client, System, Named user type value, and Named user type name fields are required
for every entry on the spreadsheet.
3. From your ServiceNow instance, open the SAP Custom Named User Types
[imp_samp_sap_custom_nut] table.

Note: The Application Scope of your ServiceNow instance must be set to Software
Asset Management Professional for SAP.
®

a. On the page header of your ServiceNow instance, select All.
b. In the menu navigation filter, enter imp_samp_sap_custom_nut_list.do.
The SAP Custom Named User Types [imp_samp_sap_custom_nut] table opens.
4. Right-click the table header and then select Import.
5. On the form, fill in the fields.
Import external data into SAP Custom Named User Type form
Field

Description

Do you want
to insert or
update data?

Option that indicates whether you’re inserting new data or updating existing
data in the SAP Custom Named User Types [imp_samp_sap_custom_nut]
table.

Do you want
to create an
Excel template
to enter data?

Option to generate the Microsoft Excel spreadsheet template that you
can use to insert or update data in the SAP Custom Named User Types
[imp_samp_sap_custom_nut] table. Enable this option only if didn’t already
download the spreadsheet template in step 1.

Step 1: Create an Excel template file to enter data

Note: This form section appears only when you enable the Do you want to create an
Excel template to enter data? option.
Include all
fields in the
template

Option to include all available fields in the Microsoft Excel spreadsheet
template.

Create Excel
Template

Option to generate the Microsoft Excel spreadsheet template.

Step 2: Upload the template file
Excel template Microsoft Excel spreadsheet that contains the named user types that
file
you want to insert or update in the SAP Custom Named User Types
[imp_samp_sap_custom_nut] table.
6. Select Upload.
7. On successful upload, select Preview Imported Data.
The Imp Tmpl Samp Sap Custom Nuts page opens.
8. Verify that the correct number of custom SAP named user types were uploaded and then
select Complete Import.
®
The custom SAP named user types are imported into your ServiceNow instance. The named
user types are then added to the Named User Types [samp_named_user_type] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

512


<!-- page 513 -->
Import custom SAP price lists
®

Import custom SAP price lists into your ServiceNow instance so that you can track and manage
SAP licenses based on the contracts that are specific to your SAP system.

Before you begin

Role required: admin

Procedure
1. Go to KB1299127
to download the Microsoft Excel spreadsheet template
(imp_samp_sap_custom_price_list.xlsx) that you can use to import custom SAP price list data
into your ServiceNow instance.
2. Fill in the spreadsheet with all the custom SAP price list data that you want to import.
The Client, System, and Price list value fields are required for every entry on the spreadsheet.

Note: You must fill in a separate spreadsheet for each custom SAP price list that you
want to import data for.
3. From your ServiceNow instance, open the SAP Custom Price List Data
[imp_samp_sap_custom_price_list] table.

Note: The Application Scope of your ServiceNow instance must be set to Software
Asset Management Professional for SAP.

a. On the page header of your ServiceNow instance, select All.
b. In the menu navigation filter, enter imp_samp_sap_custom_price_list_list.do.
The SAP Custom Price List Data [imp_samp_sap_custom_price_list] table opens.
4. Right-click the table header and then select Import.
5. On the form, fill in the fields.
Import external data into SAP Custom Price List Data form
Field

Description

Do you want
to insert or
update data?

Option that indicates whether you’re inserting new data or updating existing
data in the SAP Custom Price List Data [imp_samp_sap_custom_price_list]
table.

Do you want
to create an
Excel template
to enter data?

Option to generate the Microsoft Excel spreadsheet template that you
can use to insert or update data in the SAP Custom Price List Data
[imp_samp_sap_custom_price_list] table. Enable this option only if you didn’t
already download the spreadsheet template in step 1.

Step 1: Create an Excel template file to enter data

Note: This form section appears only when you enable the Do you want to create an
Excel template to enter data? option.
Include all
fields in the
template

Option to include all available fields in the Microsoft Excel spreadsheet
template.

Create Excel
Template

Option to generate the Microsoft Excel spreadsheet template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

513


<!-- page 514 -->
Field

Description

Step 2: Upload the template file
Excel template Microsoft Excel spreadsheet that contains the data that you want to insert or
file
update in the SAP Custom Price List Data [imp_samp_sap_custom_price_list]
table.
6. Select Upload.
7. On successful upload, select Preview Imported Data.
The Imp Tmpl Imp Samp Sap Custom Price Lists page opens.
8. Verify that the correct number of entries were uploaded for your custom SAP price list and then
select Complete Import.
The data for your custom SAP price list is imported into your ServiceNow instance. The price
list is then added to the Price Lists [samp_price_list] table.
9. Optional: Associate your custom SAP price list with additional SAP named user types.
By default, the Software Asset Management application automatically associates your custom
SAP price list with the SAP named user types that you specified in the imported Microsoft
Excel spreadsheet. However, you can associate your price list with additional SAP named user
types by adding custom named user types to it.
a. On the page header of your ServiceNow instance, select All.
b. In the menu navigation filter, enter samp_price_list_list.do.
The Price Lists [samp_price_list] table opens.
c. Select your custom SAP price list.
The Price List record opens.
d. In the Named User Types related list, select New.
e. On the form, fill in the fields.
Custom Named User Type form
Field

Description

Name

Name of the named user type.

Price List

Price list that you want to associate the named user type with. This field
populates automatically.

Is
Option that indicates if users with this named user type have a developer role.
developer
Grants
access to

Applications that the named user type has access to.

Value

Alphanumerical value that identifies the named user type.

Rank

Priority of the named user type during reconciliation. Lower rank values
correlate with a higher priority during reconciliation.

Is
Option that indicates if the named user type can be licensed.
licensable
Active

Option that indicates if the named user type is active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

514


<!-- page 515 -->
f. Select Submit.
g. Repeat steps d to f for each custom named user type that you want to add.
SAP USMM-based optimization
Optimize licensing through SAP User License Measurement (USMM) rules that map roles to the
Named User Type for an SAP client.
The rules in the SAP USMM map roles to a Named User Type on a system client basis. If you
want to apply these rules for named user licensing, ServiceNow AI Platform pulls the USMM
rules and stores all information in the SAP USMM Rules [samp_sap_usmm_rule] table. A
scheduled job, SAM - SAP USMM Based Optimization, runs weekly to maximize
licensing according to the USMM rules of a system client for the discovered user. This optimized
Named User Type is populated in the USMM Named user type column in the SAP System Users
[samp_sap_system_user] table. For more information, see Tables installed with the SAP publisher
pack.
If you opt in for the USMM rules by selecting the Use USMM Role Optimization check box in
the SAP Connection record, the Software Asset Management application prefers the optimized
USMM Named User Type during reconciliation. For more information about creating a connection
profile to establish a connection between your SAP system and your ServiceNow instance, see
Establish an SAP connection.
User transaction activity for named user types
Determine license optimizations for your SAP named user types based on your SAP user
transaction activity.
User transaction activities are the transactions or tasks that users perform on an SAP client.
These activities are based on SAP transaction codes (t-codes), which are the shortcuts that
enable you to identify and perform these transactions or tasks. When you run scheduled jobs for
SAP, the Software Asset Management application retrieves the SAP transaction codes that were
actively used by your SAP users.
When you create a reclamation rule for an SAP named user type, you can specify the transaction
codes and the minimum number of those transaction codes that must be active for a user to
keep their assigned named user license. During reconciliation, the Software Asset Management
application compares these transaction codes against the discovered user transaction codes for
the named user type. You can view the resulting data in the Users for Transaction Based License
Optimization report on the Software Publisher Analytics dashboard for SAP. Use this information
to optimize your named user license position by downgrading licenses or reclaiming unused
licenses. See Software Publisher Analytics dashboard for SAP in Software Asset Management
classic for more information on this report.
View active transaction codes for your SAP users
View the SAP transaction codes (t-codes) that were actively used by your SAP users. This list
is compared against your reclamation rules to determine whether the user is assigned an
optimized license.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

515


<!-- page 516 -->
Important: You can view these SAP transaction codes in both the Software Asset
Management classic application and the Software Asset Workspace. The following steps
provide details on viewing these transaction codes in the Software Asset Management
classic application. For details on viewing these transaction codes in the Software Asset
Workspace, see View SAP users in workspace.

Procedure
®

1. On the page header of your ServiceNow instance, select All.
2. In the menu navigation filter, enter samp_sap_system_user_list.do.
The SAP System Users [samp_sap_system_user] table opens.
3. Select the SAP user that you want to view active SAP transaction codes for.
4. On the SAP System User record, select the SAP User Active Transactions related tab to view
the complete list of SAP transaction codes that were discovered for the given user.
Self-declaring SAP engine license usage
You can self-declare the license usage for any SAP engines that cannot be measured by the
automated SAP engine measurement process. Use this information to gain more comprehensive
visibility into your SAP license compliance position so that you can optimize your licensing costs.
Self-declare SAP engine license usage in the Software Asset Management classic application
Use the Software Asset Management classic application to self-declare the license usage for any
SAP engines that cannot be measured by the automated SAP engine measurement process.

Before you begin

Role required: admin or sam_user

About this task

To determine if you must self-declare the license usage for a given engine, see Engine & SelfDeclaration Product Measurement
in the SAP Support Portal. You must self-declare the license
usage for any engine that is included in the list of Self-Declaration Products.

Important: You must have an SAP Support Portal account to access the SAP Support
Portal.

Procedure
1. Create a software model for the SAP engine.
Refer to Create software models for SAP for detailed instructions.

Note:
On the Software Model form, you must set the Publisher field to SAP. The form then
reloads with only the software model fields that are applicable to SAP.
In addition, you must set the Product field to the SAP engine that you want to self-declare
the license usage for.
2. Create entitlements for your software model.
Refer to Create entitlements for SAP for detailed instructions.

Note: On the Software Entitlement form, you must set the Software model field to the
same software model that you created in step 1.
3. Create a client access record to specify the license usage of the SAP engine.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

516


<!-- page 517 -->
a. On the page header of your ServiceNow instance, select All.
b. In the menu navigation filter, enter samp_sw_client_access_list.do.
The Client Access [samp_sw_client_access] table opens.
c. Select New.
d. In the Name field of the Client Access form, enter a name for the client access record.
e. Select the Lookup using list icon ( ) next in the Software model field to locate and select
the software model for the SAP engine.

Note: Select the same software model that you created in step 1.
f. Enter an engine license usage value in the Usage field.
This license usage value is based on the license metric that is associated with the engine.
For example, the license metric for the SAP E-Recruiting engine is Employees. If 200
employees are using an SAP E-Recruiting license, you must enter a license usage value of
200 in the Usage field.
Refer to Engine & Self-Declaration Product Measurement
license metrics that are associated with each SAP engine.

for more information on the

g. Select Submit.

Result

After you self-declare the license usage for the SAP engine, it is automatically included in the
next SAP reconciliation that runs on your ServiceNow instance. Reconciliation runs weekly or ondemand.
Self-declare SAP engine license usage in the Software Asset Workspace
Use the Software Asset Workspace to self-declare the license usage for any SAP engines that
cannot be measured by the automated SAP engine measurement process.

Before you begin

Role required: admin or sam_user

About this task

To determine if you must self-declare the license usage for a given engine, see Engine & SelfDeclaration Product Measurement
in the SAP Support Portal. You must self-declare the license
usage for any engine that is included in the list of Self-Declaration Products.

Important: You must have an SAP Support Portal account to access the SAP Support
Portal.

Procedure
1. Create a software model for the SAP engine.
Refer to Create a software model in the Software Asset Workspace for detailed instructions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

517


<!-- page 518 -->
Note:
On the Create New Software Model form, you must set the Publisher field to SAP. The
form then reloads with only the software model fields that are applicable to SAP.
In addition, you must set the Product field to the SAP engine that you want to self-declare
the license usage for.
2. Create entitlements for your software model.
You can create entitlements using either of the following options:
◦ The Create entitlement button on the Software asset overview.
Refer to Create entitlements in workspace for detailed instructions on how to create
entitlements using this option.

Note: On the Create New Software Entitlement form, you must set the Software
model field to the same software model that you created in step 1.
◦ The Software Entitlements tab on the software model record.
To create entitlements using this option, open the record for the software model that you
created in step 1. On the Software Entitlements tab of the software model record, select
New and then fill in the fields on the corresponding Create New Software Entitlement form.
Refer to Software entitlement fields for detailed descriptions of each field.

Note: The Software model field populates automatically.
3. Specify the license usage of the SAP engine.
a. Open the record for the software model that you created in step 1.
b. On the SAP Engine Usages tab, select New.
c. On the Create new SAP Engine Usage form, fill in the fields.
Create New SAP Engine Usage form
Field

Description

Name

Name that is used to identify and track your SAP engine license usage.

Software Software model that the SAP engine is associated with. This field populates
model
automatically.
SAP
client
Usage

SAP client that the SAP engine is installed or running on.

License usage of the SAP engine.
This value is based on the license metric that is associated with the engine.
For example, the license metric for the SAP E-Recruiting engine is Employees.
If 200 employees are using an SAP E-Recruiting license, you must enter a
license usage value of 200 in the Usage field. Refer to Engine & Self-Declaration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

518


<!-- page 519 -->
Field

Description

Product Measurement
for more information on the license metrics that are
associated with each SAP engine.
d. Select Save.

Result

After you self-declare the license usage for the SAP engine, it is automatically included in the
next SAP reconciliation that runs on your ServiceNow instance. Reconciliation runs weekly or ondemand.
Software Publisher Analytics dashboard for SAP in Software Asset Management classic
View your license compliance position for SAP on the Software Publisher Analytics dashboard in
the Software Asset Management classic application.
Access the dashboard by navigating to All > Software Asset > SAP Compliance and
Optimization > Overview.
The dashboard is updated whenever a new reconciliation result is available.

End users and roles
End user and goal

Required role

SAM user: Can view the dashboard to track
sam_user
SAP license compliance and potential savings.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

519


<!-- page 520 -->
SAP dashboard

SAP tab
Report

Source list

Description

Products Out of Compliance

Software Model Result

Number of software models
that are out of compliance.

True-up Cost

Software Model Result

Cost to be compliant based
on the average prices for
entitlements. The cost covers
Named User Types and
Engines.

Potential Savings

Software Model Result

Amount saved if removal
candidates are reclaimed. The
savings covers Named User
Types and Engines.

Over-licensed Amount

Software Model Result

Cost of licenses that are
owned but not used. The cost
covers Named User Types and
Engines.

Inactive Users

SAP System Users

SAP users who logged in over
90 days ago.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

520


<!-- page 521 -->
SAP tab (continued)
Report

Source list

Description

System Users Without a
Named User Assignment

SAP System Users

SAP users who do not have a
named user assignment.

Un-used Engines

License Metric Results

Number of SAP engines that
have not been used but have
active software entitlements.

Engines Usage Reached 90%
and Above

License Metric Results

Number of SAP engines that
reached 90% usage or higher.

Locked Out Licensed SAP
Users

SAP System Users

Locked SAP users consuming
a license.

Licensed Non-Dialog Users

SAP System Users

SAP non-dialog users
that have a named user
assignment.

Users For Roles Based
License Optimization

SAP System Users

Number of SAP users
that could have their role
changed to optimize license
consumption.

Users for Transaction Based
License Optimization

SAP System Users

Number of SAP users for
which Software Asset
Management has detected
user transaction-based
license optimizations.
Select the report to view
the list of users that can be
optimized.

Potential Indirect Access
(Transaction Activity)

SAP System Users

Number of SAP users with
indirect access to the SAP
system based on user
transaction activity.
Users are given a score
based on the amount of data
received or sent by each
connection.

Potential Indirect Access
(User Activity)

SAP System Users

Number of SAP users that
have indirect access to the
SAP system.
Users are given a score based
on total CPU time, peak count,
and steps.

Publisher overview for SAP in the Software Asset Workspace
View license usage information related to SAP in the publisher overview for SAP in the Software
Asset Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

521


<!-- page 522 -->
From the Software Asset Workspace, access the SAP publisher overview by navigating
to License usage > Publishers and then selecting SAP from the list of available software
publishers.
Results are updated whenever a new reconciliation result is available.

You can view a summary of your license usage information in the Summary section of the SAP
publisher overview.
SAP Summary
Report

Description

True-up cost

Cost to be compliant based on the average price of rights in your SAP
software entitlements.

Potential savings

Potential cost savings for your SAP licenses.

Actual savings

Actual cost savings for your SAP licenses.

Unlicensed
entities

Summary of your unlicensed entities.
This summary includes the following information:
• Unlicensed client access: Total number of unlicensed SAP client access
records. Select the number to view the complete list of unlicensed SAP
client access records.
• Unlicensed engines: Total number of unlicensed SAP engines. Select the
number to view the complete list of unlicensed SAP engines.
• Unlicensed users: Total number of unlicensed SAP users. Select the
number to view the complete list of unlicensed SAP users.

Progress
indicators

Summary of your license compliance progress.

Engines usage
reached 90%
and above

Total number of SAP engines that have reached 90% usage or higher.

This summary includes the Removal candidates indicator, which displays
the total number of SAP removal candidates. Select the number to view the
list of all software removal candidates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

522


<!-- page 523 -->
SAP Summary (continued)
Report

Description

Potential indirect
access (user
activity)

Total number of SAP users that have indirect access to the SAP system.

Potential
indirect access
(transaction
activity)

Total number of SAP users with indirect access to the SAP system based on
user transaction activity.

Users are given a score based on total CPU time, peak count, and steps.

Users are given a score based on the amount of data received or sent by
each connection.

For more details on the license usage information that is provided in the publisher overview, see
License usage publisher fields in workspace.

Software Asset Management publisher pack for VMware
Use the Software Asset Management publisher pack for VMware to track and optimize licensing
for your VMware software products.
To use the VMware publisher pack, activate the Software Asset Management Professional for
VMware (com.sn_samp_vmware) plugin.
VMware offers virtualization and cloud computing technologies that enable you to run software
products and applications on virtual machines (VMs). The main component of VMware
virtualization is the VMware hypervisor, which is a virtual machine monitor (VMM) that allows
you to create and run VMs on your physical hosts. You can use either a Type 1 (bare metal) or
Type 2 (hosted) hypervisor. A Type 1 hypervisor runs directly on the hardware of the underlying
physical host, while a Type 2 hypervisor runs as a software layer on the operating system (OS) of
the underlying physical host.
You can collect and identify data for your VMware software installations by using a discovery tool,
®
such as the ServiceNow Discovery application. For more information on the discovery process,
see Data collected by ITOM Visibility .
View your VMware license compliance position in the License usage view of the Software Asset
Workspace. If any of your VMware software products are out of compliance, the License usage
view provides corresponding remediation suggestions. For more information, see License usage
view.
View compliance analysis results for VMware in either the Software Publisher Analytics
dashboard for VMware (Software Asset Management classic application) or the publisher
overview for VMware, Inc. (Software Asset Workspace). For more information on the Software
Publisher Analytics dashboard for VMware, see Software Publisher Analytics dashboard for
VMware in Software Asset Management classic. For more information on the publisher overview
for VMware, Inc., see Publisher overview for VMware, Inc. in the Software Asset Workspace.

VMware licensing
The VMware publisher pack supports licensing for both subscription-based VMware vSphere
software suites and individual perpetual-based VMware software products.
Licensing for VMware vSphere software suites
The VMware publisher pack supports licensing for both VMware vSphere Standard
(VVS) and VMware vSphere Essentials Plus (VVEP), which are suite-based product
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

523


<!-- page 524 -->
offerings for VMware vSphere. VVS includes VMware vSphere Standard and
VMware vCenter Standard. VVEP includes VMware vSphere Essentials Plus
and VMware vCenter Essentials. Both software suites are available through the
subscription licensing model.
You can calculate licensing requirements for VVS and VVEP by using the Per Core
license metric. With this license metric, you must license the processor cores on the
underlying physical hosts of the VMs that are running VMware vSphere Standard
or VMware vSphere Essentials Plus. Each core requires one right, and you must
license a minimum of 16 cores per processor. If you're using VVEP, each license
can be used on a maximum of three physical hosts with up to two processors each,
and each processor can have a maximum of 32 cores. Any additional cores remain
unlicensed.

Note: vCenters are inferred as suite components of VVS and VVEP. They
therefore don't require or consume any rights.
For example, you have purchased a subscription to VVS. You have deployed
VMware vSphere Standard on ESXHost1, which has two processors with 20 cores
each, and on ESXHost2, which has two processors with eight cores each. You can
determine your licensing requirements based on the following calculations:

Number of
processors

Number of cores
Number of required rights
per processor

ESXHost1 VMware
vSphere
Standard

2

20

2 processors x 20 cores
= 40 rights

ESXHost2 VMware
vSphere
Standard

2

8

2 processors x 16 cores
(minimum) = 32 rights

Host

Product

In this example, you must have a total of 72 rights (40 rights for ESXHost1 + 32 rights
for ESXHost2).
Licensing for individual VMware software products
The VMware publisher pack supports licensing for individual VMware software
products. These products are available through the perpetual licensing model using
license keys, which are the unique serial numbers that unlock and activate the
features and capabilities of each product.

Important: As of December 11, 2023, VMware no longer offers new
perpetual licenses for individual VMware software products. All VMware
software products are now available through subscription-based software
suites. If you still have any existing perpetual licenses, you can continue to
manage them through the VMware publisher pack.
You can calculate licensing requirements for these software products by using the following
license metrics:
• Per Application Instance: You must license the instances of an application. Each instance
requires one right.
• Per Device: You must license the underlying physical hosts on which you access the software
product. Each host requires one right.
• Per Named User: You must license the named users that access the software product. Each
named user requires one right.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

524


<!-- page 525 -->
• Per OSI: You must license the underlying physical and virtual servers on which you access the
software product. Each server requires one right.
• Per Processor: You must license the processors on the underlying physical hosts. Each
processor requires one right for every 32 cores.
Software Publisher Analytics dashboard for VMware in Software Asset Management classic
View compliance analysis results related to VMware on the Software Publisher Analytics
dashboard in the Software Asset Management classic application.
Access the Software Publisher Analytics dashboard by navigating to All > Software Asset >
Publisher Overview.

Note: The add-on VMware publisher pack (com.sn_samp_vmware) plugin must be
installed to view the VMware dashboard tab.
The dashboard is updated whenever a new reconciliation result is available. You can save charts
in PNG or JPG format.

VMware dashboard
Information from VMware vCenter software is discovered and used for VMware reconciliation.
Discovery uses these probes and populates these tables:
• vCenter probe

VMware — vCenter ESX Hosts License

• VMware Discovered License Key [samp_vmware_license_key] and VMware Discovered
License Key Consumption [samp_vmware_license_key_usage] tables
For more information, see vCenter discovery with Software Asset Management.

Note: The add-on VMware publisher pack (com.sn_samp_vmware) plugin must be
installed to view the VMware dashboard tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

525


<!-- page 526 -->
VMware tab
Report

Source list

Description

Products out of Compliance

Product Results

Number of products that have
at least one software model
out of compliance.
Select the report to view the
results in the Software license
usage.

Over-licensed Amount

Product Results

Cost of licenses owned but
not being used.

True-up Cost

Product Results

Cost to be compliant based
on the average prices for
entitlements for the rights.

Top 5 Installed Products

Software Installations

Count of top 5 VMware
products installed.

vSphere Territorial Noncompliance

VMware Discovered License
Key Consumptions

Compliance of VMware
vCenter deployments. Drill
down on the location to filter.

ESX Servers by Region

ESX Servers

Location, ESX count, CPU
count, and cores count.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

526


<!-- page 527 -->
VMware tab (continued)
Report

Source list

Description

Audit View

VMware Discovered License
Key Consumptions

VMware vSphere
deployments: Product,
License Key, Used By,
Assigned To, Location, CPU
core count, CPU count,
vCenter reference, evaluation
expiration date, and software
install.

VMware Software Lifecycle
Report

Software Lifecycle Report

Number of products in each
software lifecycle phase,
including End of Extended
Support, End of Life, and End
of Support.

The vSphere Deployment related link shows the VMware Discovered License Key Consumptions
list.
Publisher overview for VMware, Inc. in the Software Asset Workspace
View license usage information related to VMware in the publisher overview for VMware, Inc. in
the Software Asset Workspace.
From the Software Asset Workspace, access the VMware, Inc. publisher overview by navigating
to License usage > Publishers and then selecting VMware, Inc. from the list of available
software publishers.
Results are updated whenever a new reconciliation result is available.

You can view a summary of your license usage information in the Summary section of the
VMware, Inc. publisher overview.
VMware, Inc. Summary
Report

Description

True-up
cost

Cost to be compliant based on the average price of rights in your VMware
software entitlements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

527


<!-- page 528 -->
VMware, Inc. Summary (continued)
Report

Description

Potential
savings

Potential cost savings for your VMware licenses.

Actual
savings

Actual cost savings for your VMware licenses.

Unlicensed Summary of your unlicensed entities.
entities
This summary includes the following information:
• Unlicensed installs: Total number of unlicensed VMware software installations.
Select the number to view the complete list of unlicensed VMware software
installations.
• Installs requiring action: Total number of VMware software installations that
you must take action on. Select the number to view the complete list of these
VMware software installations.
• Unlicensed client access: Total number of unlicensed VMware client access
records. Select the number to view the complete list of unlicensed VMware
client access records.
• Unlicensed users: Total number of unlicensed VMware users. Select the
number to view the complete list of unlicensed VMware users.
Progress
indicators

Summary of your license compliance progress.
This summary includes the following indicators:
• Ignored installs: Total number of VMware software installations that were
ignored during reclamation. Select the number to view the complete list of
ignored VMware software installations.
• Removal candidates: Total number of VMware removal candidates. Select the
number to view the list of all software removal candidates.

For more details on the license usage information that is provided in the publisher overview, see
License usage publisher fields in workspace.

Engineering license management
Get visibility into your license position and usage of your engineering applications to eliminate
audit risks, inefficient usage of licenses, inaccurate forecasting, and to help prevent denials.
Watch this short video for an introduction to engineering license management.
https://player.vimeo.com/video/1011366881?
badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Note: To access all the benefits of the Software Asset Management Professional for
engineering applications, request the Software Asset Management Professional for
Engineering Applications plugin (com.sn_samp_eng_app). For more information, see
Request Software Asset Management.
Engineering applications refer to categorizing software products in industries such as aerospace,
oil and gas, and construction.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

528


<!-- page 529 -->
A concurrent license enables multiple users to share access to software applications from any
computer on a network or from a virtual machine. License management servers that are installed
on the network manage the distribution of a pool of shared licenses.
You can have multiple license management servers; one for each engineering application. The
number of concurrent licenses in the shared pool determines the number of users who can use
the software application at a given time. When you want to use an application, that application
sends a request to the appropriate license management server to determine if a license is
available. If a license is available, the application starts and the number of available licenses
decreases by one. When the user exits the application, the license returns to the pool.
The following graphic illustrates the way OpenLM and Open iT work with the ServiceNow
instance.

The Software Asset Management application supports three types of licenses: floating, network,
and token licenses. For information on these licenses, see Software license metrics.
The ServiceNow instance integrates with OpenLM and Open iT to collect data from license
management servers. OpenLM and Open iT are software license monitoring and management
tools that integrate with a wide variety of license management servers such as IBM License Use
Management (LUM), Sentinel Technologies, and Bentley Systems, Inc. Both OpenLM and Open
iT connect with each license management server, consolidate the data, and get the data into
your ServiceNow instance via the ServiceNow Store
application.
After you download the ServiceNow Store application and configure the application via Guided
Setup, both OpenLM and Open iT trigger data collection from all the license management
servers that are connected to either of these. Data such as license usage, denials, user activity,
and alerts are collected from the license management servers by OpenLM and Open iT, and
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

529


