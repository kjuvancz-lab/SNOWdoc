# Zurich IT Operations Management — ITOM Infra Services Workspace / ITOM Visibility reference

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 2836–2871 of 4823 | Part 3 of 3

Sections: ITOM Infra Services Workspace (p2536); ITOM Visibility reference (p2541)

---

<!-- page 2836 -->
Disk hierarchical schema

Storage Discovery tables and probes
Discovery uses the following tables and probes to gather information about storage devices that
are managed by a SMI-S provider.
Data Collected
Table

Probe

Disk [cmdb_ci_disk]

SMI 1.5 - Storage Server

Fibre Channel Export [cmdb_ci_fc_export]

SMI 1.5 - Storage Server

Fibre Channel Port [cmdb_ci_fc_port]

SMI 1.5 - Storage Server

SAN Export [cmdb_ci_san_export]

SMI 1.5 - Storage Server

Storage Controller [cmdb_ci_storage_controller]

SMI 1.5 - Storage Server

Storage Export [cmdb_ci_storage_export]

SMI 1.5 - Storage Server

Storage File Share [cmdb_ci_storage_fileshare]

SMI - Array - File Shares

Storage Pool [cmdb_ci_storage_pool]

SMI 1.5 - Storage Server

Storage Server [cmdb_ci_storage_server]

CIM - Identity

Storage Switch [cmdb_ci_storage_switch]

CIM - Identity

Storage Volume [cmdb_ci_storage_volume]

SMI 1.5 - Storage Server

Storage Device [cmdb_ci_storage_device]

SMI 1.5 - Storage Server

Storage Area Network [cmdb_ci_san]

SMI - Fabric

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2836


<!-- page 2837 -->
Data Collected (continued)
Table

Probe

SAN Connection [cmdb_ci_san_connection]

SMI - Fabric

SAN Endpoint [cmdb_ci_san_endpoint]

SMI - Fabric

SAN Fabric [cmdb_ci_san_fabric]

SMI - Fabric

SAN Zone [cmdb_ci_san_zone]

SMI - Fabric

SAN Zone Alias [cmdb_ci_san_zone_alias]

SMI - Fabric

SAN Zone Alias Member [cmdb_ci_san_zone_alias_member]

SMI - Fabric

SAN Zone Member [cmdb_ci_san_zone_member]

SMI - Fabric

SAN Zone Set [cmdb_ci_san_zone_set]

SMI - Fabric

These probes are available but not currently used:
• SMI - Storage Server
• SMI - Array - Controllers
• SMI - Array - Disks
• SMI - Array - Pools
• SMI - Array - Ports
• SMI - Array - Volumes
Discovery of storage area networks (SAN)
Discovery collects information about storage area networks from specialized devices, such as
storage arrays and Fibre Channel (FC) switches, and creates specific references between the
tables in the SAN schema.

ServiceNow SAN schema
This diagram shows the tables in the SAN schema and the default references defined between
them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2837


<!-- page 2838 -->
Multipath SAN storage example
This diagram shows the relationship of SAN storage volumes to a host computer. Storage
accessible to the Linux host consists of two physical fibre channel (FC) disks, mpatha and
mpathb, connected to the host via a multipath FC SAN. The two HBAs on the host interface
are connected with two fibre cables each to separate FC switches for failover capability. The
FC fabric switches are connected to two FC storage processors on the storage server. In this
example, each storage processor is connected to the storage volume's, LUN 1 and LUN 2.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2838


<!-- page 2839 -->
How CIM Discovery works
This is the processing flow for classifying Common Information Model (CIM) storage systems.

Processing flow
1. The Shazzam probe launches the wbem port probe as part of network discovery.
2. The wbem port probe detects activity on target ports SLP 427, CIM 5989 and 5988, and then
examines the Service Registry Queries related list, at Discovery Definition > Port Probes, for
the SLP query. The base system provides this query to detect the service:wbem service type,
which indicates the presence of an SLP server.
3. The Shazzam probe launches a scanner for the WBEM service type. The scanner retrieves:
◦ The attributes of the service from the SLP server.
◦ The interop namespaces of CIM servers in the network.
4. The scanner appends the namespace values it finds to the port probe results.
5. The wbem port probe appends the SLP data it carries to the CIM Classify probes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2839


<!-- page 2840 -->
6. The CIM Classify probe uses that information to explore the CIM servers.
CIM Shazzam Processing Diagram

The wbem port Probe
The wbem probe stores the data it retrieves in the CIM Classification
[discovery_classy_cim] table. To view the wbem port probe, navigate to Discovery
Definition > Port Probes.
wbem port probe record

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2840


<!-- page 2841 -->
SLP query
The SLP query detects the wbem service (service:wbem) on an SLP server and gathers the
attributes of the service. To view the SLP Query record, open the wbem port probe record and
select SLP Query from the Service Registry Queries related list.
SLP Query record

CIM - Classify probe
The wbem port probe appends the SLP data it carries, including namespaces, to the CIM Classify probe before launching it. The CIM classification probe extracts VMware ESX serial
numbers and connector relationships between the SAN and NAS components from CIM Servers
in the network.
To access the CIM classification probe, navigate to Discovery Definition > Probes and select
CIM - Classify from the list of probes.

Note:
The mid.cim.interop.namespace system property defines four default storage
namespaces:
• interop
• root/interop
• root/pg_interop
• pg_interop
If you’re using multiple storage vendors with custom namespaces not specified as one of
the defaults, add the new namespaces to the comma-separated list in this property. If you
intend to continue using any of the default namespaces, make sure to include them in the
property.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2841


<!-- page 2842 -->
CIM - Classify probe record

SMI-S and CIM probes and sensors
SMI-S and CIM probes and sensors
Probe/Sensor

Description

CIM - Identity

Identifies a system via CIM per SMI-S.

SMI - Array - Controllers

Retrieves controller information.

SMI - Array - Disks

Retrieves storage disk information.

SMI - Array - File Shares

Enumerates NAS file shares from a storage
server.

SMI - Array - Pools

Retrieves storage pools.

SMI - Array - Ports

Retrieves storage ports.

SMI - Array - Volumes

Retrieves storage volumes.

SMI - Fabric

Retrieves SANs, fabrics, zone sets, zones,
zone aliases, endpoints, and connections.

SMI - Fibre Channel Switch

Retrieves FC switches.

SMI - NAS Head - Component Systems

Retrieves all virtual file servers in a NAS head
profile.

SMI - NAS Head - File Server IPs

Retrieves IP addresses for each NAS file
server.

SMI - NAS Head - File Servers

Retrieves NAS file servers such as Common
Internet File System (CIFS) and Network File
System (NFS).

SMI - NAS Head - File Shares

Retrieves file shares for each NAS file server.

SMI - Storage Server

Retrieves SAN and NAS arrays and servers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2842


<!-- page 2843 -->
SMI-S and CIM probes and sensors (continued)
Probe/Sensor

Description

SMI - WBEM Service

Retrieves WBEM Service information such as
profiles and SMI-S version.

Configure SMI-S Provider for storage Discovery
Use this procedure for configuring a standalone storage device with the required SMI-S Provider
for Discovery.

Before you begin

Role required: admin

Procedure
1. On the storage device, if the SMI-S Provider is not present, install the SMI-S Provider software.
The SMI-S Provider software is often part of the device management software. For more
information, download the SMI-S Provider instructions from the storage provider manufacture.
2. For NetApp storage devices, install the SMI-S agent

on the storage device host.

Note: Discovery can also perform native discovery of NetApp servers without accessing
the SMI-S server. See NetApp Server and Cluster discovery for more information.
3. Start the SMI-S Provider service.
4. In the SMI-S Provider or agent, configure the Discovery Interval with a synchronization rate
that allows the wbem probe to receives the most current information during discovery.
For example, for EMC storage, set the Discovery Interval.
EMC provider example

5. On the ServiceNow instance, set up CIM credentials

.

6. Create a Discovery Schedule with the IP addresses of each SMI-S Provider.
7. Optional: Create a Discovery behavior that uses a functionality definition with a wbem port
probe to make the initial port-scanning phase (Shazzam) more efficient.
8. Run a basic IP address Discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2843


<!-- page 2844 -->
Data collected by Discovery on storage devices
Discovery identifies and classifies information about storage devices.
Resources discovered on the Storage Disks [cmdb_ci_storage_disk] table
Field

Description

Name

Name of the storage disk.

Computer

Reference to the host CI.

Interface

Interface type with which the storage disk is
connected to the host.

Size

Size of the storage disk.

Free disk space (GB)

Free space in GV available on the disk.

Manufacturer

Manufacturer of the storage disk.

Model ID

Model name of the disk.

Resources discovered on the Storage File Shares [cmdb_ci_storage_fileshare] table
Field

Description

Name

Name of the CI.

Path

Path to the file share.

Resources discovered on the Storage Pools [cmdb_ci_storage_pool] table
Field

Description

Name

Name of the storage pool.

Size

Size of the storage pool.

Free space

Free space available in the pool.

Hosted by

Reference to the CMDB CI.

Resources discovered on the Storage Ports [cmdb_ci_storage_port] table
Field

Description

Name

Name of the storage port.

WWPN

Unique Worldwide Port Name (WWPN) for the
storage port.

Speed

Speed of the storage port.

Resources discovered on the Storage HBAs [cmdb_ci_storage_hba] table
Field

Description

Name

Name of the Storage Host Bus Adapter (HBA).

Model ID

Model name of the HBA.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2844


<!-- page 2845 -->
Resources discovered on the Storage HBAs [cmdb_ci_storage_hba] table (continued)
Field

Description

Computer

Reference to the computer CI.

Resources discovered on the Storage Servers [cmdb_ci_storage_server] table
Field

Description

Name

Name of the CI.

Manufacturer

Manufacturer of the storage server.

Model ID

Model name of the storage server.

Operating System

Operating system (OS) of the storage server.

OS Version

OS version of the storage server.

Description

Short description of the storage server.

Resources discovered on the Storage Volumes [cmdb_ci_storage_volume] table
Field

Description

Name

Name of the storage volume.

Object ID

Unique ID for the storage volume.

State

State of the storage volume.

Size

Size of the storage volume.

Storage Type

Type of storage volume.

Storage relationships
Discovery establishes the correct relationships between Network-Attached Storage (NAS)
storage devices and remotely mounted client servers that consume the storage. Discovery maps
NAS file shares. It maps by taking the IP or hostname of a remote mounted disk on the client
computer. It then matches it to the IP or hostname of the storage server providing the exported
file system.
Discovery creates the following relationships for storage CIs running on Storage Area Networks.
SAN CI relationships
Parent Component

Relationship

Child Component

Storage Volume
[cmdb_ci_storage_volume]

Exports to::Imports
from

Fibre Channel Disk
[cmdb_ci_fc_disk]

Storage Volume
[cmdb_ci_storage_volume]

Exports to::Imports
from

iSCSI [cmdb_ci_iscsi_disk]

Discovery maps NAS file shares. It maps by resolving the hostname of a remote mounted disk
on the client computer to an IP address. It then matches it to the IP address of the storage
server that provides the exported file system. Discovery extracts the hostname or IP address
from the NAS path to determine the identity of the storage server. If the hostname is an actual
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2845


<!-- page 2846 -->
hostname, the system immediately resolves that value into an IP address. It also stores it in the
nas_ip_address field of the NAS File System [cmdb_ci_nas_file_system] table.
Discovery creates the following relationships for storage CIs running on Network Attached
Storage (NAS). These relationships are the same between Linux and Windows operating system
hosts.
NAS CI relationships
Parent Component

Relationship

Child Component

NAS File System
[cmdb_ci_nas_file_system]

Allocated
from::Allocated to

Storage File Share
[cmdb_ci_storage_fileshare]

Data collected for Veritas Volume Manager on Linux
Discovery collects disk and volume information for Veritas Volume Manager (VxVM) on Linux
hosts and maps file systems mounted on Veritas volumes to the upstream storage provider.

Note: Ensure that VxVM is correctly installed and configured. If you are using 3rd party
drivers, you must configure sudo permission for vxdmpadm.

Table schema
VxVM tables
Table

Extends table

Veritas Disk [cmdb_ci_veritas_disk]

Storage Pool [cmdb_ci_storage_pool]

Veritas Disk Group
[cmdb_ci_veritas_disk_group]

Configuration Item [cmdb_ci]

Veritas Plex [cmdb_ci_veritas_plex]

Storage Pool [cmdb_ci_storage_pool]

Veritas Subdisk [cmdb_ci_veritas_subdisk]

Storage Pool Member
[cmdb_ci_storage_pool_member]

Veritas Volume [cmdb_ci_veritas_volume]

Storage Pool [cmdb_ci_storage_pool]

Data collected
VxVM data collected
Table

Fields

Relationship

Veritas Disk
[cmdb_ci_veritas_disk]

• name

Provided by::Provides
relationship to the physical disk.

• size_bytes
• disk_group

Veritas Disk Group
name
[cmdb_ci_veritas_disk_group]

Contains::Contained by
relationship to Veritas Disks in
the group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2846


<!-- page 2847 -->
VxVM data collected (continued)
Table

Fields

Veritas Plex
[cmdb_ci_veritas_plex]

• name

Relationship

• size_bytes
• layout (CONCAT, STRIPE,
RAID)

Veritas Subdisk
[cmdb_ci_veritas_subdisk]

• partition_number
• source_start_offset: Offset
in the disk from which this
subdisk is partitioned.
• source_end_offset: Offset
in the disk from which this
subdisk is partitioned.
• start_offset: Offset of this
subdisk in the plex that is
using it.
• end_offset: Offset of this
subdisk in the plex that is
using it.
• size_bytes

Veritas Volume
[cmdb_ci_veritas_volume]

name

Stored on::Provides storage for
relationship to Veritas Disks on
which the volume is stored.

Displaying data
VxVM Discovery maps file systems to the disks that supply storage. By default this is the only
information displayed in the UI. The file system to disk relationship is shown as an upstream
Stored on relationship on the File System form. To see the remainder of the information that
Discovery captures for VxVM, you must add the appropriate related list to the Linux Server form.
The available lists are:
• Veritas Disk Group
• Veritas Disk
• Veritas Plex
• Veritas Subdisk (Computer)
• Veritas Subdisk (Storage)
• Veritas Volume
NetApp Server and Cluster discovery
Discovery and Service Mapping find NetApp servers and clusters using either CIM probes or
patterns. Discovering some of these resources may require updating to the latest version of the
Discovery and Service Mapping Patterns application from the ServiceNow Store.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2847


<!-- page 2848 -->
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
NetApp discovery is not supported for NetApp servers in the AWS cloud. To learn about the
components and versions of NetApp servers and clusters that you can discover, refer to Detailed
information on products discovered by ITOM Visibility.

NetApp Server and Cluster discovery methods
Method

Supported modes

Upgrades

Discovery with patterns using
ONTAP API.

• NetApp 7-mode

Active by default.

These patterns support
native discovery of NetApp
servers without requiring the
discovery of the SMI-S server.
Discovery with patterns using
HTTP REST API.

Discovery with probes and
sensors using SMI-S.

• NetApp cluster mode

NetApp cluster mode

• NetApp 7-mode

Available on Discovery and
Service Mapping Patterns
store application starting
August 2023.
Legacy

• NetApp cluster mode

NetApp discovery properties
To use discovery with patterns, navigate to Discovery Definition > Properties and enable these
properties:

Property label

Name

For 7-Mode NetApp storage servers use native glide.discovery.sensors.netapp_native_7mode
discovery instead of SMI-S.
For Cluster Mode NetApp storage servers use
native discovery instead of SMI-S.

glide.discovery.sensors.netapp_native_cluster_mode

Note: If you have already performed NetApp discovery with Probes and then enable these
properties, a migration script runs the next time you perform NetApp discovery. This script
could delete CIs for items like storage pools, which probes discover but the patterns do not.
It also creates relationships.

Prerequisites
General prerequisites
Verify the applications are up to date:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2848


<!-- page 2849 -->
• Discovery and Service Mapping Patterns
• Visibility Content
Disable SSLv3 and enable TLS for the target NetApp server, as the Java Runtime
used by the MID Server does not enable SSLv3 by default. The key to encrypt the
certificate must be at least 1024 bits.
SNMP-based discovery prerequisites
Configure SNMP community credentials to classify the NetApp server. For more
information, see SNMP community credentials .
Enable read-only access to the ONTAP API on the NetApp server.
• Cluster mode: the user can have a read-only role with default access.
• 7-mode: the user must have a custom role with the following capabilities:
◦ login-snmp, login-ndmp, login-sp, and login-http-admin
◦ Api-*
Configure basic authentication credentials for the read-only user. For more
information, see Basic authentication credentials .
REST-based discovery prerequisites
Disable SNMP-based discovery. For more information, see Disable SNMP-based
NetApp storage cluster discovery.
Verify the application user has a read-only role.
Configure basic authentication credentials for the read-only user. For more
information, see Basic authentication credentials .

Running Discovery
To run discovery using Patterns, create a discovery schedule that targets the management IP
address of the NetApp server.

Note: NetApp creates different storage volume identifiers when running with different
protocols. When running discovery with HTTP after running discovery with SNMP, duplicate
CIs are created for the same storage volume. One CI is created for the unique identifier
(UUID) NetApp ONTAP API provides, and one CI is created for the unique identifier (UUID)
NetApp HTTP REST API provides.

Data collected by the NetApp Cluster SNMP pattern
The following tables list the data that Discovery can find when you run the NetApp discovery
patterns.

Table

cmdb_ci_storage_server

Fields

name
firmware_version
serial_number

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2849


<!-- page 2850 -->
Table

Fields

manufacturermode
model_id
cim_object_path
short_description
ip_address
physical_capacity
free_physical_capacity
used_physical_capacity
cmdb_ci_storage_cluster

short_description
ip_address
manufacturer

cmdb_ci_storage_cluster_node

name
operational_status

cmdb_ci_storage_node_element

cluster
short_description
manufacturer
serial_number
model_id
ram
cpu_type
cpu_manufaturer
cpu_core_count

cmdb_ci_network_adapter

name
ip_address
netmask
cmdb_ci

cmdb_serial_number

serial_number
serial_number_type

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2850


<!-- page 2851 -->
Table

cmdb_ci_ip_address

Fields

ip_address
netmask
nic
ip_version (Storage-7 mode)
name

cmdb_ci_disk

name
device_id
serial_number
manufacturer
model_id
storage_type
device_interface
size_bytes
computer

cmdb_ci_storage_fileshare

path
name

cmdb_ci_storage_pool

name
short_description
free_space_bytes
pool_id
size_bytes

cmdb_ci_storage_volume

name
lun
volume_id

cmdb_ci_iscsi_export

name
lun
initiator_iqn
iqn

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2851


<!-- page 2852 -->
Table

Fields

export_id
cmdb_ci_storage_controller

name
device_id

cmdb_ci_fc_export

initiator_wwpn
export_id
name
lun

cmdb_ci_fc_port

speed
name
wwnn
wwpn

Note: For more information on NetApp discovery with CIM, see Storage Discovery via
SMI-S and CIM.

Data collected by NetApp Cluster HTTP pattern
The following data is discovered when disabling the NetApp Cluster SNMP Pattern.

Table

cmdb_ci_storage_server

Fields

ip_address
cluster_version
serial_number
physical_capacity
free_physical_capacity
used_physical_capacity

cmdb_ci_storage_node_element

cluster
ip_address_range

cmdb_ci_storage_cluster_node

name
operational_status
cluster

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2852


<!-- page 2853 -->
Table

cmdb_ci_storage_server

Fields

firmware_version
description
ip_address_range

cmdb_serial_number

serial_number
serial_number_type

cmdb_ci_ip_address

name
netmask
nic

cmdb_ci_disk

computer
interface
size_bytes

cmdb_ci_storage_pool

name
size_bytes
free_space_bytes

cmdb_ci_fc_port
cmdb_ci_storage_fileshare
cmdb_ci_storage_volume

speed
path
name
volume_id
size_bytes
free_space_bytes

cmdb_ci_iscsi_export

name
lun
export_id
initiator_iqn
iqn

cmdb_ci_storage_controller

name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2853


<!-- page 2854 -->
Table

Fields

device_id
cmdb_ci_fc_export

name
lun
export_id
initiator_wwpn

CI relationships
CI

Relationship type

CI

cmdb_ci_storage_node_elementManaged By::Manages

cmdb_ci_storage_cluster

cmdb_ci_storage_cluster_node Hosted On::Hosts

cmdb_ci_storage_node_element

cmdb_ci_storage_cluster_node Cluster Of:Clusters

cmdb_ci_storage_cluster

cmdb_ci_storage_server

Runs On:Runs

cmdb_ci_storage_cluster

cmdb_ci_storage_server

Allocated To:Allocated From

cmdb_ci_storage_node_element

cmdb_ci_storage_node_elementOwns:Owned By

cmdb_ci_network_adapter

cmdb_ci_storage_server

cmdb_ci_network_adapter

Owns:Owned By

cmdb_ci_storage_node_elementOwns:Owned By

cmdb_ci_ip_address

cmdb_ci_storage_server

cmdb_ci_ip_address

Owns:Owned By

cmdb_ci_storage_node_elementContains:Contained By

cmdb_ci_disk

cmdb_ci_storage_node_elementContains:Contained By

cmdb_ci_storage_pool

cmdb_ci_storage_server

Contains:Contained By

cmdb_ci_storage_pool

cmdb_ci_storage_server

Owns:Owned By

cmdb_ci_fc_port

cmdb_ci_storage_fileshare

Provided By: Provides

cmdb_ci_storage_server

cmdb_ci_storage_server

Contains:Contained By

cmdb_ci_storage_volume

cmdb_ci_storage_controller

Controller For:Controlled By

cmdb_ci_fc_port

cmdb_ci_iscsi_export

Hosted On:Hosts

cmdb_ci_storage_server

cmdb_ci_fc_export

Hosted On:Hosts

cmdb_ci_storage_server

Disable SNMP-based NetApp storage cluster discovery
Disable the default SNMP-based NetApp storage cluster discovery and use REST-based
discovery instead for enhanced security.

Before you begin

Role required: discovery_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2854


<!-- page 2855 -->
Procedure
1. Navigate to All > Discovery Definition > CI Classification > SNMP.
2. In the Name field, search for NetApp Storage Server Cluster-Mode.
3. Select the NetApp Storage Server Cluster-Mode record.
4. Clear the Active check box.
5. Select Update.

What to do next

Configure basic authentication credentials for a user with a read-only role. For more information,
see Basic authentication credentials .
Related topics
NetApp Server and Cluster discovery
Manage large storage payloads in Linux and Solaris
Large payloads for Linux and Solaris direct attached storage can cause out of memory errors if
not configured to serialize the processing of the payload.

Before you begin

Role required: discovery_admin or admin

About this task

When Linux or Solaris storage sensors process payloads from large disk arrays, worker threads
run simultaneously and can run an instance node out of memory, requiring a restart. To prevent
this, the [discovery_sensor_yield] table controls the behavior of worker threads used to process
large payloads. When Discovery processes a sensor, it checks the [discovery_sensor_yield] table
for that sensor. If the sensor is listed in the table, and if the payload size exceeds the configured
limit in the table, then the worker attempts to secure a lock before processing the payload. If
the lock is not available because another worker is already processing a large payload, the
waiting worker re-schedules the next job for 30 seconds later and moves on to other tasks.
The job then waits in the Schedule Item [sys_trigger] table for an idle worker to pick it up. This
serialization occurs per node, enabling multiple nodes to process large payloads simultaneously.
The processing interval of 30 seconds is not configurable.

Important: These threshold values were created for Linux and Solaris storage sensors
only and, in most cases, should not be changed. If your instance is running out of memory
while simultaneously processing multiple, large storage payloads, consider scheduling
Discovery of these systems to times of lower activity. If this is not possible, examine
the ECC queue to determine which storage sensor might be causing the issue and
note the size of the payload. If the payload size is below that of the threshold in the
[discovery_sensor_yield] table, lower the threshold value enough to serialize that payload.
If a sensor other than the Linux or Solaris storage sensor is responsible, you can add that
sensor to the [discovery_sensor_yield] table. Make sure to set the threshold value correctly
for the payload size. Serializing sensor processing can slow Discovery.

Procedure
1. In the application navigator filter, enter discovery_sensor_yield.list.
The base Discovery system serializes these sensors when their payloads exceed 512 KB:
◦ Solaris - Storage
◦ Linux - Storage
2. To change the threshold, double-click in the Value column in the list and edit the size.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2855


<!-- page 2856 -->
Editing the sensor yield threshold

3. To add another sensor and configure it for payload serialization, click New and complete the
fields in the form.
◦ Sensor: Storage sensor to configure.
◦ Value: Threshold size for the sensor.
4. Click Submit.
Storage discovery examples
Discovery creates configuration items (CI) and CI relationships for physical and logical storage
components attached directly to application and database servers or by fibre channel switched
fabric in a multi-path configuration.

Direct attached storage
In this example of direct attached storage (DAS), a SCSI drive with two partitions, /dev/sda1
and /dev/sda2, is attached to a Linux host. The /dev/sda1 partition is bootable and
supports the system software. The /dev/sda2 partition contains a logical volume configured
as a storage pool and mounted to the Linux root file system by Logical Volume Management
(LVM). The storage pool uses only 1.5GB of the partition, leaving 13GB of storage available for
additional logical volumes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2856


<!-- page 2857 -->
Direct attached storage example

CIs and relationships created for direct attached storage (DAS)
Configuration item

Description

Tables

/dev/sda

SCSI physical storage
device

• [cmdb_ci_disk]

Key reference and
Relationships

[cmdb_rel_ci]

• Provides: /dev/sda
• [cmdb_ci_storage_device]
• Provided by:/dev/
• [cmdb_rel_ci]
sda1
[cmdb_rel_ci]
• Provides: /dev/sda
• Provided by:/dev/
mapper/lvmroot-333-0

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2857


<!-- page 2858 -->
CIs and relationships created for direct attached storage (DAS) (continued)
Configuration item

Description

Tables

/dev/sda1

Partition 1 on the SCSI
storage device

• [cmdb_ci_partition]

Key reference and
Relationships

[cmdb_ci_file_system]

• Mount point: /boot
• [cmdb_ci_storage_volume]
• File system: Ext4
• [cmdb_ci_file_system]
• [cmdb_rel_ci]

[cmdb_rel_ci]
• Provides: /dev/sda
• Provided by:/dev/
sda1

/dev/sda2

Partition 2 on the SCSI
storage device

• [cmdb_ci_partition]

[cmdb_ci_storage_pool_member]

• Pool: /dev/mapper/
• [cmdb_ci_storage_pool_member]
lvm-root-333-0
• Storage: /dev/sda2

/dev/mapper/lvmroot-333-0

Linux logical volume,
mapped with LVM to a
physical disk storage
partition.

[cmdb_ci_file_system]
• [cmdb_ci_storage_device]
• Mount point: /
• [cmdb_ci_storage_volume]
• File system: Ext4
• [cmdb_ci_file_system]
• [cmdb_ci_storage_pool]
[cmdb_rel_ci]
• [cmdb_ci_storage_pool_member]
• Provides: /dev/sda
• [cmdb_ci_lvm_pool]
• Provided by:/dev/
• [cmdb_ci_lvm_pool_member]
mapper/lvm[cmdb_rel_ci]
root-333-0
[cmdb_ci_storage_pool_member]
• Pool: /dev/mapper/
lvm-root-333-0
• Storage: /dev/sda2

Multipath fibre channel storage
In this example of a fibre channel storage area network (SAN), two physical storage devices,
mpatha and mpathb, are attached to a Linux host through fibre switches, which provide
failover capabilities. The mpatha drive contains two partitions, mpatha1 and mpatha2. The
first partition is mounted directly to /boot on the Linux host. Three logical volumes are mapped
to the mpatha2 partition and to the physical device mpathb. The logical volumes are mounted
as Ext4 file systems in folders on the Linux root structure. This example shows the CIs that
Discovery manages for each component and the mounting points for the logical volumes on the
Linux host.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2858


<!-- page 2859 -->
Multipath fibre channel storage example

Switched fibre fabric details
Discovery creates CIs for the logical sub-components in NAS and SAN environments, such as
fibre channel disks and pool components, as well as for host bus adapters (HBA) and physical
block storage. In multipath environments, Discovery creates CI relationships within the switched
fibre fabrics that connects the Linux host to the physical storage devices. In this diagram, the
fibre fabrics have redundant paths that the SAN environment can use for failover if connections
fail.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2859


<!-- page 2860 -->
Fibre fabric redundant paths

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2860


<!-- page 2861 -->
ITOM Visibility and CSDM reference
ITOM Visibility consists of two ServiceNow products: Discovery and Service Mapping. These
products are responsible for creating Configuration Items (CIs) in the CMDB and relating them.
The goal of this product view is to help you to understand how ITOM Visibility works with the core
CSDM framework.

Aspects of ITOM Visibility
Discovery
Discovery finds computers, servers, printers, a variety of IP-enabled devices, and
the applications that run on them. It can then update the CIs in your CMDB with the
collected data.
Service Mapping
Service Mapping discovers all application services in your organization and builds
a comprehensive map of all devices, applications, and configuration profiles that
support the associated business services.
Service Mapping maps dependencies based on the connections between devices
and applications. This method, called top-down mapping, helps you immediately
see the impact of a problematic object on the rest of the application services.

Implementing CMDB data
For details on implementing CMDB data to conform with the CSDM framework, see Implementing
the CSDM framework in stages .

For more information
Exploring the CSDM model

.

Implementing the CSDM framework in stages

.

Discovery basics.
Service Mapping.
ITOM Visibility and CMDB tables
ITOM Visibility manages and uses CMDB tables. Several ServiceNow products benefit from and
add value to ITOM Visibility.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2861


<!-- page 2862 -->
Tables that ITOM Visibility manages

Mapped application service tables
The tables that ITOM Visibility manages depend on the method used to map the
service instance (the label for the table was formerly application service) . You can
use the Application Service wizard to populate an application service.
• Map the Service instance using top-down discovery of CI connections. This
method requires Service Mapping, the sm_admin role, and the current domain
must be a leaf domain. This is the best option for accuracy and complete
mapping. ITOM Visibility manages the Mapped Application Service table
[cmdb_ci_service_discovered]
• Map the service instance using a tag list or tag family. This method requires
Service Mapping and is preferred for public or private cloud where tags
are typically used. ITOM Visibility manages the tag-based maps table
[cmdb_ci_service_by_tags].
• Manually map the service instance. This method requires that you select specific
CIs — no automation is used. ITOM Visibility manages the service maps table
[cmdb_ci_service_manual].
• Use Dynamic Service to synchronize manually-created CI relationships to a
Service Map view.
Configuration items (CIs) tables [cmdb_ci_*]
• Application table [cmdb_ci_appl]
• Server table [cmdb_ci_server]
• Virtual machines table [cmdb_ci_vm_instance]
• Load balancer table [cmdb_ci_lb]
• Network gear table [cmdb_ci_netgear]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2862


<!-- page 2863 -->
Tables that ITOM Visibility uses
1. Dynamic CI Group table [cmdb_ci_query_based_service]
2. Product model tables (for Technology Portfolio Management [TPM]) software and hardware
models

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2863


<!-- page 2864 -->
Products that benefit from ITOM Visibility
• IT Service Management
• Customer Service Management (CSM)
• Event Management
• Cloud Management
• Asset Management (Hardware Asset Management and Software Asset Management)
• Strategic Portfolio Management (Financial Management — Showback statements, Application
Portfolio Management [ APM ])
• Security Operations (Incident Response, software vulnerability management)

Implementing CMDB data
For details on implementing CMDB data to conform with the CSDM framework, see Implementing
the CSDM framework in stages .
ITOM Visibility use case
The ITOM Visibility use cases are described in this section.

Discovery use case
• Gain increased visibility into your on-premises and cloud resources.
• Keep track of changes in your on-premises, cloud, and serverless infrastructure in the
Configuration Management Database (CMDB).
• Set a strong foundation with accurate data and relationship views for ServiceNow products,
including Change Management, Software Asset Management, Customer Service Management
(CSM), and Security Operations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2864


<!-- page 2865 -->
Key features of the Discovery use case
• Set up and manage Discovery jobs.
• See IT resources and dependencies at-a-glance.
• Build queries to validate discovered IT resources.
• Manage your public key infrastructure (PKI) certificates in one dashboard.

Results of the Discovery use case
The CSDM framework gives Discovery a prescribed model for how infrastructure and software
CIs relate to other areas, such as application services, business applications, and assets.

Service Mapping use case
You can create application services manually, using an API, or by having Service Mapping
discover them. Regardless of creation method, all application services are stored in the Mapped
Application Service table [cmdb_ci_service_discovered].

Results of the Service Mapping use case
Service Mapping automates a critical aspect of CSDM with a consistent, automated approach
to connect the logical layer of the CSDM model to the physical model CIs in the CMDB. This
approach lets you more effectively manage your business applications. The approach also
enables you to automate modeling of your business applications for impact assessment and
analysis. For impact assessments and analysis, you can use a number of ServiceNow products
including Change Management, Incident Management, or the CMDB Query Builder.
Application Services flow

Application services view in Operator Workspace
You can specify a life-cycle status for an application service. Application services with an
Operational life-cycle status can be used on service maps for the relevant workflows, such as
Artificial Intelligence for IT Operations (AIOPs) workflows.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2865


<!-- page 2866 -->
You can view information about the services, such as the criticality, in the Operator Workspace.
Operator Workspace

The Service Map tab displays a visual representation of the service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2866


<!-- page 2867 -->
Service map diagram

Related topics
Life cycle of document and contract entities
Life cycle of tangible/physical CIs
Life cycle of location entities
Life cycle of intangible/logical entities
Life cycle of product entities
ITOM Visibility considerations for CSDM framework
Consider these points while implementing the CSDM framework.
You can use Service Mapping to define application services.
Here are alternative methods for defining application services:
• Define manually.
• Use a Dynamic CI group, based on a query.
• Use a tag-based approach (commonly used for Cloud integrations).
For more information about creating application services, see Create an application service

.

Run options for discovery schedules
Both horizontal and top-down discovery use these run options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2867


<!-- page 2868 -->
Discovery schedule run options
Run option

On Demand

Description

Doesn’t run on a schedule. Select Discover now to run Discovery. This is the default

Daily

Runs every day. Use the Time field to specify the time of day.

Weekly

Runs on one designated day of each week. Use the Time field to specify the time of d

Monthly

Runs on one designated day of each month. Use the Day field to select the day of the
specify the time of day. If the designated day doesn’t occur in the month, the schedu
example, if you designate day 30, the schedule doesn’t run in February.

Periodically

Runs every designated time. Use the Repeat Interval field to define the time in days,
The first Discovery runs at the point in time defined in the Starting field. The subsequ
Repeat Interval period passes.

Note: For schedules configured as "Periodically", the "Time" column won't displ
time. To determine the next execution time for schedule that is configured to run
Schedule [sys_trigger] table and locate the corresponding schedule record. The
the next scheduled run.
Once

Run one time as designated by the date and time defined in the Starting field.

Weekdays

Runs every Monday, Tuesday, Wednesday, Thursday, and Friday. Use the Time field t

Weekends

Runs every Saturday and Sunday. Use the Time field to select the time of day.

Month Last Day

Run the last day of every month. Use the Time field to select the time of day.

Calendar Quarter End

Runs on March 31, June 30, September 30, and December 31. Use the Time field to s
the dates, modify the DiscoveryScheduleRunType script include.

After Discovery

Allows you to sequentially stagger the schedule. Use this option to run this schedule
in the Run after field finishes. Select the Even if canceled check box to designate tha
even if the Run after Discovery is canceled before it finishes.

• This option isn’t valid when Discovery is started via DiscoverNow, or when using th
• You can’t designate an inactive Discovery schedule.

• You can’t create a loop by designating the run after Discovery to be the same Disco

• This Discovery doesn’t run if the Run after Discovery doesn’t finish, with the excep
check box is selected and the Discovery is canceled.

Related topics
Schedule a top-down discovery by Service Mapping
Schedule a horizontal discovery

Plugins or applications installed with ITOM Visibility
Tables that list the plugins or applications that are installed with ITOM Visibility applications.
When you update your application, any newly required application dependencies are installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2868


<!-- page 2869 -->
Discovery
Plugins or applications installed with Discovery (com.snc.discovery)
Plugin or application name

Description

Cloud Provisioning
and Governance Core
(com.snc.cloud.core)

Contains resource blocks and cloud Application Programming
Interface (cloud API) mappings related to Cloud API-based
discovery and events processed by either response mapping or
calling patterns.

Service Watch Suite
commons (com.snc.servicewatch.commons)

Contains common UI components for Discovery and Service
Mapping.

Discovery - IP Based
Contains shared components of horizontal discovery used by
(com.snc.discovery.ip_based) Discovery and Service Mapping.

Discovery Admin Workspace
Plugin activated with Discovery Admin Workspace (sn_disco_workspace)
Plugin or application name

Description

Discovery
(com.snc.discovery)

Finds applications and devices on your network, and then
updates the CMDB with the information it finds.

Service Mapping
Plugins or applications installed with Service Mapping (com.snc.service-mapping)
Plugin or application name

Description

Service Mapping – Map
(com.itom-map-app)

A dependent internal plugin necessary to support the core
components of the Service Mapping, Event Management, and
Service Operations Workspace ITOM applications.

Discovery
(com.snc.discovery)

Finds applications and devices on your network, and then
updates the CMDB with the information it finds.

Event Management and
Service Mapping Core
(com.snc.service-watch)

Comprises the common components of Event Management
and Service Mapping.

Cloud Provisioning
and Governance Core
(com.snc.cloud.core)

Contains resource blocks and cloud Application Programming
Interface (cloud API) mappings related to Cloud API-based
discovery and events processed by either response mapping
or calling patterns.

Pattern Designer (NG version) The next generation (NG) version of the Pattern Designer
(com.snc.ng.pattern.designer) that enables you to create, edit, and debug patterns used by
horizontal and top-down discovery.
Service Mapping Plus
(sn_sm_scoped_app)

Offers extended features for Service Mapping, and if related
®
ServiceNow Store applications and plugins aren't already
installed, it installs them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2869


<!-- page 2870 -->
Tag Governance
Plugins or applications installed with Tag Governance (sn_itom_tag)
Plugin or application name

Description

Cloud Access Interface (sn_cai)

Provides easy access to the cloud through scripting.
You can use this ServiceNow Store application to
perform actions on virtual machines provisioned on
Amazon Web Services (AWS) and Microsoft Azure.

Certification Core
(com.snc.certification_core)

Contains core certification structures such as filters
and templates, and provides compliance functionality.

ITOM Visibility License
(com.snc.itom.vis.license)

Enables the activation of any ServiceNow Store
application that requires ITOM Visibility licensing.

ITOM/OT SU Licensing
(sn_itom_licensing)

Calculates and displays how many subscriptions for
ITOM applications your organization purchases and
consumes.

Discovery (com.snc.discovery)

Finds applications and devices on your network, and
then updates the CMDB with the information it finds.

Flow Designer Action
Provides an action step to execute custom JavaScript
Step - Script on MID
within a reusable action on a MID Server.
(com.glide.hub.action_step.script_mid)

Cloud Discovery Workspace
Plugins or applications installed with Cloud Discovery Workspace (sn_cloud_ops_ws)
Plugin or application name

Description

Discovery and Service
Mapping Patterns
(sn_itom_pattern)

Provides the latest versions of the Discovery and Service
Mapping Patterns released on the ServiceNow Store.
®
ServiceNow releases new patterns on the ServiceNow Store
on a monthly basis, enabling your organization to discover the
latest industry-standard devices and applications.

Cloud Provisioning
and Governance Core
(com.snc.cloud.core)

Contains resource blocks and cloud Application Programming
Interface (cloud API) mappings related to Cloud API-based
discovery and events processed by either response mapping
or calling patterns.

Performance Analytics
Content Pack for Cloud
Resources (sn_disco_cd)

Displays the aggregated view of all your Cloud Resources.
It also provides analytics tables and views that associate
tags with resources, enabling you to build your own custom
dashboards and reports.

Pattern Designer (NG version) The next generation (NG) version of the Pattern Designer
(com.snc.ng.pattern.designer) that enables you to create, edit, and debug patterns used by
horizontal and top-down discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2870


<!-- page 2871 -->
Agent Client Collector for Visibility - Content
Plugins or applications installed with Agent Client Collector for Visibility - Content
(sn_acc_visibility)
Plugin or application name

Description

Agent Client Collector for
Provides agent-based infrastructure discovery and collects
Visibility - Content Content Software Asset Management (SAM) metrics to support Discovery
(sn_acc_vis_content)
and Digital End-User Experience (DEX) applications.
Discovery
(com.snc.discovery)

Finds applications and devices on your network, and then
updates the CMDB with the information it finds.

Agent Client Collector
Framework (sn_agent)

Manages Agent Client Collector on the ServiceNow instance and
the MID Server.

CMDB CI Class Models
(sn_cmdb_ci_class)

Adds class models that extend the CMDB class hierarchy,
including class descriptions, identification rules, identifier entries,
and dependent relationships if applicable. Applications such as
Discovery and Service Mapping can use these class extensions
to populate configuration items (CIs) and discover various
technologies and software.

Agent Client Collector for Visibility - Content Content
Plugins or applications installed with Agent Client Collector for Visibility - Content Content
(sn_acc_vis_content)
Plugin or application name

Description

Expanded Model and Asset Classes (sn_ent)

Provides new, expanded model classes,
asset classes, and model categories that
come with the base system, defined by
ServiceNow. Install the Asset Management
(com.snc.asset_management) plugin as a
prerequisite for using this application.

Discovery – IP Based
(com.snc.discovery.ip_based)

Contains shared components of horizontal
discovery used by Discovery and Service
Mapping.

Agent Client Collector Framework (sn_agent)

Manages Agent Client Collector on the
ServiceNow instance and the MID Server.

CMDB CI Class Models (sn_cmdb_ci_class)

Adds class models that extend the CMDB
class hierarchy, including class descriptions,
identification rules, identifier entries, and
dependent relationships if applicable.
Applications such as Discovery and Service
Mapping can use these class extensions
to populate configuration items (CIs) and
discover various technologies and software.

Related topics
Plugins or applications installed with ITOM Cloud Accelerate
Plugins or applications installed with ITOM AIOps
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2871


