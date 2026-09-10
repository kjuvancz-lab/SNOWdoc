# Zurich IT Operations Management — Discovery patterns used by ITOM Visibility

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 2012–2161 of 4823 | Part 2 of 5

Sections: Discovery patterns used by ITOM Visibility (p1862)

---

<!-- page 2012 -->
CI

Relationship

CI

Network ARP Table
[discovery_net_arp_table]

References

IP Router [cmdb_ci_ip_router]

Next Hop Routing Rule
[dscy_route_next_hop]

References

IP Router [cmdb_ci_ip_router]

Router Interface [dscy_router_interface]

References

IP Router [cmdb_ci_ip_router]

Serial Number [cmdb_serial_number]

References

IP Router [cmdb_ci_ip_router]

Switch Bridge Port Table
[discovery_switch_bridge_port_table]

References

IP Router [cmdb_ci_ip_router]

Switch Forwarding Rule
[dscy_swtch_fwd_rule]

References

IP Router [cmdb_ci_ip_router]

Switch Forwarding Table
[discovery_switch_fwd_table]

References

IP Router [cmdb_ci_ip_router]

Switch Partition [sdcy_swtch_partition]

References

IP Router [cmdb_ci_ip_router]

Switch Spanning Tree Table
[discovery_switch_spanning_tree_table]

References

IP Router [cmdb_ci_ip_router]

Switchport [dscy_switchport]

References

IP Router [cmdb_ci_ip_router]

Network switch discovery using patterns
The Discovery and Service Mapping Patterns application uses the Network Switch pattern to
find network switches in your environment. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
To learn about network switches and their versions that you can discover, refer to Detailed
information on products discovered by ITOM Visibility.
For information on probe-based network switch and router discovery, see Network switch and
router discovery.

Prerequisites
Verify that the applications are up to date
• Discovery and Service Mapping Patterns
• Visibility Content
Verify IP address information
The switch must contain IP address information for successful discovery.
Verify that exit interface routing rules are configured and reachable
The switch that provides the IP address must have exit interface routing rules
configured and be reachable for successful discovery.
Create SNMP credentials
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2012


<!-- page 2013 -->
Create SNMP Community Credentials or SNMPv3 credentials. For more information,
see SNMP credentials .
Configure properties for switch discovery
Navigate to sys_properties.list and verify that the
glide.discovery.L3_mapping system property is set to true.
You can configure these additional properties for network switch discovery.

Property

Description

glide.discovery.max_concurrent_invocations_per_schedule Sets a maximum number of
scheduled invocations for the
same Discovery schedule.
It prevents a backlog of
scheduled runs if Discovery
does not finish before the
next one starts.
The value is an integer that
represents the max number
of automated invocations
that can run concurrently for
the same schedule. If the
limit is reached, subsequent
scheduled invocations are
canceled. A value of 0 or any
negative number disables
this property.
• Type: integer
• Default value: 3
• Location: Discovery
Definition > Properties

Note: This property
does not apply to
schedules that have a
'Run after' configuration
set to 'Even if canceled'.
glide.discovery.bgp_router_disable

Disables running the SNMP
– Routing pattern when
discovering a router running
the BGP protocol.
If you must populate
the Device Neighbors
[discovery_device_neighbors]
table during horizontal layer
2 discovery of the BGPenabled devices, set the BGP
router exploration disable
property to No. Notice that
enabling this property can

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2013


<!-- page 2014 -->
Property

Description

cause performance issues
including out-of-memory
issues on the MID Server.
• Type: true | false
• Default value: true
• Location: Discovery
Definition > Properties

Discovering stacked switches
Network switch discovery supports Cisco stacked switches. Multiple switches in the stack are
identified by the primary IP address. Discovery identifies each member of the stack by elements
such as the primary IP address, a name associated with the switch, and the stack mode. The
relationship is created between a primary switch and the secondary switches.
The primary switch has all the fields listed in the IP Switch [cmdb_ci_ip_switch] table. The
secondary switch has name, serial_number, model_id, manufacturer, stack, and stack_mode.

Note: If all ports on a switch are open for port 161, the switch has an IP per port, but the
same serial number is used across all ports. The configuration item (CI) identification is
based on the serial number, therefore, discovery updates the existing record every time
instead of creating a new one.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Network Switch pattern.
IP Switch [cmdb_ci_ip_switch]
Field

Description

Name [name]

Name of the switch.

Model ID [model_id]

Hardware model ID of the switch.

Manufacturer
[manufacturer]

Switch manufacturer.

Install Status
[install_status]

Install status of the device. Default value is Installed.

Serial number
[serial_number]

Unique hardware serial number of the router.

IP Address [ip_address]

IP addresses assigned to interfaces.

Description
[short_description]

Device description.

Can route IP [can_route]

Indicates whether the IP pockets can be routed between networks.
Possible values are true or false.

Can partition VLANs
[can_partitionvlans]

Indicates whether the local area network (LAN) can be partitioned.
Possible values are true or false.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2014


<!-- page 2015 -->
IP Switch [cmdb_ci_ip_switch] (continued)
Field

Description

Can switch IP
[can_switch]

Indicates whether a network device has Layer 2 switching
capabilities. Possible values are true or false.

Physical interface count
Number of physical interfaces.
[physical_interface_count]
Ports [ports]

Individual network interface (physical or logical) used to connect
devices such as computers, servers, access points, or uplinks to
switches or routers.

Discovery Protocol ID
[discovery_proto_id]

Unique identifier of the device participating in the Cisco Discovery
Protocol (CDP) or Link Layer Discovery Protocol (LLDP) protocol.

Discovery Protocol Type
[discovery_proto_type]

Protocol type. Possible values are CDP or LLDP.

Stack [stack]

Indicates whether a network device is part of a stacked group of
switches operating as one unit. Possible values are true or false.

Stack Mode [stack_mode] Stacking architecture or role of a network device within a stack. For
example: standalone, stack_master, or stack_member.
Location [location]

Location where the switch is installed.

IP Address [cmdb_ci_ip_address]
Field

Description

IP Address [ip_address]

IP address of the network switch.

Netmask [netmask]

Netmask of the network switch.

Nic [nic]

References the Network Adapter [cmdb_ci_network_adapter] table.

Network Adapter [cmdb_ci_network_adapter]
Field

Description

Name [name]

Name of the network adapter.

IP Address [ip_address]

IP address of the network adapter.

Netmask [netmask]

Netmask of the network adapter.

MAC Address [mac_address]

MAC address of the network adapter.

Alias [alias]

User-assigned name for the network adapter.

Configuration Item [cmdb_ci]

References the IP Switch [cmdb_ci_ip_switch] table.

DNS Name [cmdb_ci_dns_name]
Field

Description

Name [name]

Name of the Domain Name System (DNS).

IP Address [ip_address]

IP address of the DNS.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2015


<!-- page 2016 -->
CI relationships
Discovery creates these relationships to support the network switch discovery.

CI

Relationship

CI

Exit Interface Routing Rule
[dscy_route_interface]

References

IP Switch
[cmdb_ci_ip_switch]

IP Address [cmdb_ci_ip_address]

References

Network Adapter
[cmdb_ci_network_adapter]

IP Switch [cmdb_ci_ip_switch]

Contains::Contained Switch Forwarding Rule
by
[dscy_swtch_fwd_rule]

IP Switch [cmdb_ci_ip_switch]

Contains::Contained Switch Partition
by
[dscy_swtch_partition]

IP Switch [cmdb_ci_ip_switch]

Contains::Contained Switchport [dscy_switchport]
by

IP Switch [cmdb_ci_ip_switch]

Owns::Owned by

IP Address
[cmdb_ci_ip_address]

IP Switch [cmdb_ci_ip_switch]

Owns::Owned by

Network Adapter
[cmdb_ci_network_adapter]

IP Switch [cmdb_ci_ip_switch]

Uses::Used by

Exit Interface Routing Rule
[dscy_route_interface]

IP Switch [cmdb_ci_ip_switch]

Uses::Used by

Next Hop Routing Rule
[dscy_route_next_hop]

IP Switch [cmdb_ci_ip_switch]

Uses::Used by

Router Interface
[dscy_router_interface]

Network Adapter
[cmdb_ci_network_adapter]

Owns::Owned by

IP Address
[cmdb_ci_ip_address]

Network Adapter
[cmdb_ci_network_adapter]

References

IP Switch
[cmdb_ci_ip_switch]

Network ARP Table
[discovery_net_arp_table]

References

IP Switch
[cmdb_ci_ip_switch]

Next Hop Routing Rule
[dscy_route_next_hop]

References

IP Switch
[cmdb_ci_ip_switch]

Router Interface [dscy_router_interface]

References

IP Switch
[cmdb_ci_ip_switch]

Serial Number [cmdb_serial_number]

References

IP Switch
[cmdb_ci_ip_switch]

Switch Bridge Port Table
[discovery_switch_bridge_port_table]

References

IP Switch
[cmdb_ci_ip_switch]

Switch Forwarding Rule
[dscy_swtch_fwd_rule]

References

IP Switch
[cmdb_ci_ip_switch]

Switch Forwarding Table
[discovery_switch_fwd_table]

References

IP Switch
[cmdb_ci_ip_switch]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2016


<!-- page 2017 -->
CI

Relationship

CI

Switch Partition [sdcy_swtch_partition]

References

IP Switch
[cmdb_ci_ip_switch]

Switch Spanning Tree Table
[discovery_switch_spanning_tree_table]

References

IP Switch
[cmdb_ci_ip_switch]

Switchport [dscy_switchport]

References

IP Switch
[cmdb_ci_ip_switch]

Nutanix Acropolis discovery
The ServiceNow Discovery application uses the Nutanix Components pattern to find
components of the Nutanix Acropolis solution containing Nutanix Prism Central version
2024.3.1.8 or Nutanix Prism Element 7.0.1.6. The Nutanix VM Event pattern finds events created
for virtual machines (VMs) in the Nutanix deployment. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.
The Nutanix Components pattern uses REST APIs to collect information about the Acropolis
deployment components.
The Nutanix VM Event pattern runs every five minutes. If there are events that indicate the
change of state in one of the Nutanix components, it triggers rediscovery of Nutanix components
using the Nutanix Components Pattern.
Starting with version 1.29.0, Discovery and Service Mapping Patterns supports Nutanix v4
discovery. When you switch to v4, Discovery creates new pool and container records, while
existing records stop being updated.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the following applications are up to date
• Discovery and Service Mapping Patterns
• Visibility Content
• CMDB CI Class Models
Verify MID Server requirements
Deploy and connect a dedicated MID Server with network access to Prism Element
and Prism Central.
To discover events related to VMs in the Nutanix deployment, set the MID Server
capability to All or to Nutanix.
Install Nutanix end-point SSL certificates for the MID Server JRE
1. Collect the certificates by browsing the Nutanix Prism console on internet
Explorer.
2. Add SSL certificates for the MID Server, as described in Add SSL certificates for
the MID Server .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2017


<!-- page 2018 -->
3. Use the following JRE keytool command to import the SSL certificates in the MID
Server's keystore: <MID Installation>/jre/bin/keytool -import
-v -keystore <MID Installation>jre/lib/security/cacerts.
If you must enter a password, enter the custom password or the default
password- "changeit".
4. Install Nutanix end-point SSL certificates for the MID Server JRE.
Verify API permissions for v1-3
Verify that the user has read-only access to the following API requests:
• /PrismGateway/services/rest/v1/vms
• /PrismGateway/services/rest/v1/storage_pools
• /PrismGateway/services/rest/v2.0/tasks/list
• /PrismGateway/services/rest/v2.0/hosts
• /PrismGateway/services/rest/v2.0/clusters
• /PrismGateway/services/rest/v2.0/vms
• /PrismGateway/services/rest/v2.0/storage_containers
• /api/nutanix/v3/clusters/list
• /api/nutanix/v3/categories/list
• /api/nutanix/v3/categories/{category_keys}/list
• /api/nutanix/v3/category/query
Verify API permissions for v4
Verify that the user has read-only access to the following GET APIs. Note that the
API call referencing /PrismGateway/services/rest/v1/vms uses a
legacy endpoint because it's not available yet in the newer API.
• /api/clustermgmt/v4/config/clusters
• /api/clustermgmt/v4/config/clusters/{clusters_ID}/hosts
• /api/clustermgmt/v4/config/storage-containers
• /api/vmm/v4/ahv/config/vms
• /PrismGateway/services/rest/v1/vms
• /api/prism/v4/config/categories?$expand=associations
• /api/prism/v4/config/categories/{categories_ID}?
$limit=extId&$expand=detailedAssociations
Verify Prism Central version for v4 API
Ensure that Prism Central is at least version 7.3 to use the v4 API.
Set MID Server property to discover v4
Enable Nutanix v4 discovery by setting MID Server property value to the exact v4
version. For more information, see Enable Nutanix v4 discovery.
Configure basic authentication credentials
For more information, see Basic authentication credentials

.

Create a serverless discovery schedule
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2018


<!-- page 2019 -->
Create a discovery schedule to perform targeted discovery of Nutanix components.
For more information, see Create a serverless schedule for Nutanix Acropolis
discovery.
Link Nutanix components to ESX clusters
The Nutanix Components pattern can discover Nutanix components hosted on
ESX clusters, like storage pools, storage containers, and Controller Virtual Machine
(CVM), but not ESX clusters themselves. Run VMware probe discovery before the
Nutanix pattern discovery to link the Nutanix components to their ESX clusters. If
you don't, the Nutanix components are linked to Nutanix Prism instead. For more
information on VMware probe discovery, see Discovery for VMware virtualization.
(Optional) Disable CI tag discovery
The Nutanix Components pattern discovers tags for Nutanix hosts and virtual
machines. If you have dozens of tags in your deployment, it might slow down the
discovery causing performance issues. You can disable the CI tag discovery by
performing the following steps:
1. Navigate to Pattern Designer > Discovery Patterns.
2. Select the Nutanix Components pattern.
3. Under Extension Section, select the check box for Categories (Tags) and select
Remove.
4. Select Save.
Adjust the batch size for removing redundant relationship data
The sn_itom_pattern.nutanix_relations_deletion_batch_size
property sets the batch size for deleting relations between Nutanix Virtual Machine
Instance and Nutanix Host. The default value is 1000; you can adjust this batch size
as needed.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Nutanix Components pattern.

Note: API v4 calls might retrieve or populate different values compared to v1-3. For more
information, search the Nutanix documentation
article.

for the "API Reference v4 Introduction"

Nutanix Controller VM [cmdb_ci_nutanix_controller_vm]
Field

Description

Name [name]

The name of the Nutanix Controller VM.

VM ID [vm_id]

The universally unique identifier (UUID) of the Nutanix Controller VM.

Object ID [object_id]

The ID of the Nutanix Controller VM.

Memory (MB)
[memory]

The memory size of the Nutanix Controller VM in Megabytes (MB).

State [state]

The power state of the Nutanix Controller VM (on/off).

Hypervisor Type
[hypervisor_type]

The type of the hypervisor used for the Nutanix Controller VM.

Description
[short_description]

The description defined for the virtual machine in the Nutanix console:
Prism Central or Prism Element.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2019


<!-- page 2020 -->
Nutanix Cluster [cmdb_ci_nutanix_cluster]
Field

Description

Name [name]

The name of the Nutanix Cluster.

IP Address [ip_address]

The IP address of the Nutanix Cluster.

Cluster ID [cluster_id]

The ID of the Nutanix Cluster.

Object ID [object_id]

The object ID of the Nutanix Cluster.

Version [version]

The Nutanix Cluster version.

Full Version [full_version]

The full version of the Nutanix Cluster.

Internal Subnet [internal_subnet]

The subnet of the internal IP address of the Nutanix Cluster.

External Subnet [external_subnet] The subnet of the external IP address of the Nutanix
Cluster.
Timezone [timezone]

The time zone of the Nutanix Cluster.

Hypervisor Types
[hypervisor_types]

The type of the hypervisor used for the Nutanix Cluster.

NTP Servers [ntp_servers]

The Network Time Protocol (NTP) servers that are related to
the Nutanix Cluster.

Number of Nodes [num_nodes]

The number of nodes connected to the Nutanix Cluster.

NCC Version [ncc_version]

The Nutanix Cluster Check (NCC) version.

Block Serial Numbers
[block_serial_numbers]

The serial numbers of blocks of data connected to the
Nutanix Cluster.

Nutanix Host [cmdb_ci_nutanix_host]
Field

Description

Name [name]

The name of the Nutanix host.

Object ID [object_id]

The ID of the Nutanix host.

CPU core count [cpu_core_count]

The number of Nutanix host cores.

CPU core thread [cpu_core_thread]

The number of threads of the Nutanix host.

CPU speed (MHz) [cpu_speed]

The CPU speed of the Nutanix host in MHz.

CPU count [cpu_count]

The number of CPU sockets of the Nutanix host.

RAM (MB) [ram]

The memory of the host in Megabites (MB).

Serial number [serial_number]

Serial number of the Nutanix host.
This field is not applicable for v4.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2020


<!-- page 2021 -->
Nutanix Storage Pool [cmdb_ci_nutanix_storage_pool]
Field

Name [name]

Description

• v1-3: The name of the Nutanix storage pool.
• v4: Cluster name.

Pool ID [pool_id]

• v1-3: The UUID of the Nutanix storage pool.
• v4: The external ID (extId) of the pool retrieved from the Nutanix Storage
Container.

Object ID
[object_id]

• v1-3: The ID of the Nutanix storage pool.

Size [size]

The size of the Nutanix storage pool.

• v4: The external ID (extId) of the pool retrieved from the Nutanix Storage
Container.

This field is not applicable for v4.

Nutanix Storage Container [cmdb_ci_nutanix_storage_container]
Field

Description

Object ID [object_id]

The ID of the Nutanix container.

Container ID [container_id]

The UUID of the Nutanix container.

Name [name]

The name of the Nutanix container.

Replication Factor
[replication_factor]

The number of copies created for the data stored on this Nutanix
storage container.

Deduplication
[deduplication]

The deduplication is enabled or disabled for the Nutanix
container.

Compression [compression]

The compression is enabled or disabled for the Nutanix
container.

Erasure Code [erasure_code] The erasure of code is enabled or disabled for the Nutanix
container.
Size [size]

The Nutanix container size calculated dynamically during
discovery.

Nutanix Virtual Machine Instance [cmdb_ci_nutanix_vm_instance]
Field

Description

Name [name]

The name of the Nutanix Controller VM.

VM Instance ID
[vm_inst_id]

The universally unique identifier (UUID) of the Nutanix Controller VM.

Object ID [object_id]

The ID of the Nutanix Controller VM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2021


<!-- page 2022 -->
Nutanix Virtual Machine Instance [cmdb_ci_nutanix_vm_instance] (continued)
Field

Description

CPUs [cpus]

The number of CPUs that the VM has.

Memory (MB)
[memory]

The memory size of the Nutanix Controller VM in Megabytes (MB).

State [state]

The power state of the Nutanix Controller VM (on/off).

Description
[short_description]

The description defined for the virtual machine in the Nutanix console:
Prism Central or Prism Element.

Nutanix Prism Central [cmdb_ci_nutanix_prism_central]
Field

Description

Name
[name]

The name of the Nutanix Prism Central multi-cluster manager.
• PrismCentral@<IP_ADDRESS>: When the IP address is associated with the
Prism Central instance, in the following scenarios:
◦ During quick discovery using HTTP classification.
◦ During serverless discovery if IP address was entered in PRISM_Address
parameter value.
• PrismCentral@<DNS_NAME>: When the DNS name is associated with the
Prism Central instance and was entered in PRISM_Address parameter value
during serverless discovery.

Object ID The ID of the Nutanix Prism Central. This field has the same value as the Name
[object_id] field.
• PrismCentral@<IP_ADDRESS>: When the IP address is associated with the
Prism Central instance, in the following scenarios:
◦ During quick discovery using HTTP classification.
◦ During serverless discovery if IP address was entered in PRISM_Address
parameter value.
• PrismCentral@<DNS_NAME>: When the DNS name is associated with the
Prism Central instance and was entered in PRISM_Address parameter value
during serverless discovery.

The graphic illustrates CIs that are part of the Acropolis discovery in deployments that use
Nutanix AHV for virtualization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2022


<!-- page 2023 -->
Nutanix components

The graphic illustrates CIs that are part of the Acropolis discovery in deployments that use
VMware software for virtualization.
Nutanix components in deployments using VMware software

The graphic illustrates the Server and Nutanix VM Instance relationship.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2023


<!-- page 2024 -->
CI relationships
These relationships are created to support all Nutanix discovery, regardless of hypervisor.

CI

Relationship

CI

Nutanix Cluster
[cmdb_ci_nutanix_cluster]

Members::Member of

Nutanix Host [cmdb_ci_nutanix_host]

Nutanix Virtual
Registered::Has
Machine Instance
registered
[cmdb_ci_nutanix_vm_instance]

Nutanix Host [cmdb_ci_nutanix_host]

Nutanix Virtual
Hosted on::Hosts
Machine Instance
[cmdb_ci_nutanix_vm_instance]

Nutanix Cluster
[cmdb_ci_nutanix_cluster]

Nutanix Storage Pool
Contains::Contained by
[cmdb_ci_nutanix_storage_pool]

Nutanix Storage Container
[cmdb_ci_nutanix_storage_container]

Servers [cmdb_ci_server]

Instantiates::Instantiated Nutanix Virtual Machine Instance
by
[cmdb_ci_nutanix_vm_instance]

Nutanix Cluster
[cmdb_ci_nutanix_cluster]

Managed by::Manages

Nutanix Prism Central
[cmdb_ci_nutanix_prism_central]

These relationships are created to support Nutanix discovery for components hosted on AHV
clusters.

CI

Relationship

Nutanix Controller VM
Runs on::Runs
[cmdb_ci_nutanix_controller_vm]

CI

Nutanix Virtual
Machine Instance
[cmdb_ci_nutanix_vm_instance]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2024


<!-- page 2025 -->
CI

Relationship

CI

Nutanix Cluster
[cmdb_ci_nutanix_cluster]

Defines resources for::Gets
resources from

Nutanix Storage Pool
[cmdb_ci_nutanix_storage_pool]

These relationships are created to support Nutanix discovery for components hosted on ESX
clusters if you ran a VMware discovery.

CI

Relationship

CI

Nutanix Controller VM
Runs on::Runs
[cmdb_ci_nutanix_controller_vm]

VMware Virtual Machine Instance
[cmdb_ci_vmware_instance]

VMware Cluster
[cmdb_ci_vmware_cluster]

Nutanix Storage Pool
[cmdb_ci_nutanix_storage_pool]

Defines resources
for::Gets resources
from

These relationships are created to support Nutanix discovery for components hosted on ESX
clusters if you didn't run a VMware discovery.

CI

Relationship CI

Nutanix Controller VM
[cmdb_ci_nutanix_controller_vm]

Hosted
on::Hosts

Nutanix Prism Central
[cmdb_ci_nutanix_prism_central]

Nutanix Storage Pool
[cmdb_ci_nutanix_storage_pool]

Hosted
on::Hosts

Nutanix Prism Central
[cmdb_ci_nutanix_prism_central]

Tag discovery
The Nutanix Components pattern collects tags and populates them in the Key Value
[cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

The category key.

Value [value]

The category value.

Configuration item
[configuration_item]

References the Nutanix Host [cmdb_ci_nutanix_host]
table.

Dashboard
The dashboard contains reports that query the Configuration Management Database (CMDB)
and display the results. The information is displayed only after the pattern has discovered the
infrastructure.
To display the dashboard, navigate to Self-Service > Dashboards > All > Nutanix.
After upgrading to Discovery Admin Workspace version 1.3.1 (August 2024 Store), you can
navigate to Workspaces > Discovery Admin Workspace > Insights and use the enhanced
dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2025


<!-- page 2026 -->
Create a serverless schedule for Nutanix Acropolis discovery
Create a serverless schedule to discover Nutanix Acropolis using REST API.

Before you begin

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

Name of the MID Server with access to the Nutanix environment.

Active

Enables this schedule for discovery.

Run

Determines the run schedule of the discovery.

c. Select Submit.
3. Create the execution pattern.
a. In the Discovery Schedules page, select the record you created.
b. In the Serverless Execution Patterns tab, select New.
c. On the form, fill in the fields.
Serverless Execution Pattern New record form
Field

Description

Name

Descriptive name for this record.

Pattern Pattern to be used for this schedule, which should be Nutanix Components.
Proxy
Host

Fully qualified domain name (FQDN) of the machine where the proxy server is
installed, which should be Global. This field is optional.

Active

Enables this schedule for discovery.

d. Select Submit.
4. Set the pattern launcher parameters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2026


<!-- page 2027 -->
a. In the Discovery Pattern Launcher Parameters tab, select the record you created.
b. On the form, fill in the fields.

Parameter

Value

PRISM_Address

IP Address or the FQDN associated with the Prism Central instance.

c. Select Submit.

What to do next

Either execute discovery immediately by selecting Discover now or wait until the predefined
schedule triggers the discovery.
Related topics
Nutanix Acropolis discovery
Enable Nutanix v4 discovery
Enable Nutanix v4 discovery by setting the MID Server property value to the exact v4 version.

Before you begin

Verify that you have Discovery and Service Mapping Patterns installed (starting with version
1.29.0).
Role required: discovery_admin

Procedure
1. Navigate to All > MID Server > Properties.
2. In the Name column, search for the sn_itom_pattern.nutanix_prism_version
property.
3. Select the sn_itom_pattern.nutanix_prism_version property.
4. In the Value field, enter the exact v4 version to discover.
For example: v4.0.b1.
5. Select Update.
NVIDIA GPU discovery using patterns
The Discovery and Service Mapping Patterns application uses the Linux Server pattern
extension Discover Nvidia GPU to find NVIDIA graphics processing units (GPUs). Discovering
some of these resources may require updating to the latest version of the Discovery and Service
Mapping Patterns application from the ServiceNow Store.
The Discover Nvidia GPU pattern is an extension of the Linux Server pattern. For more
information, see Linux discovery.
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2027


<!-- page 2028 -->
Prerequisites
Verify that the following applications are up to date
• Discovery and Service Mapping Patterns
• CMDB CI Class Models
Verify permissions for the following SSH command
Verify that you have read access permission for the SSH command: nvidia-smi
-q.
Create SSH credentials
For more information, see SSH credentials

.

Schedule a horizontal discovery
For more information, see Schedule a horizontal discovery.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Discover Nvidia GPU Pattern.
Graphics Processing Unit [cmdb_ci_gpu]
Field

Description

Name [name]

Model name of the GPU.

Manufacturer [manufacturer]

Vendor of the GPU.

Model ID [model_id]

Product name of the GPU.

Serial number [serial_number]

Serial number of the GPU.

Additionally, Discovery populates the data in a non-CMDB table when running the Discover
Nvidia GPU Pattern.
GPU Details [gpu_details]
Field

Description

Board ID [board_id]

Identifier for the GPU board, which can be used for diagnostic
purposes.

Board Part Number
[board_part_number]

The part number of the GPU board.

Bus ID [bus_id]

Identifier for the peripheral component interconnect (PCI) bus on
which the GPU is located.

CUDA Version
[cuda_version]

Version of the CUDA Toolkit supported by the installed NVIDIA
driver.

Driver version
[driver_version]

Version of the NVIDIA driver installed on the system.

GSP Firmware Version
[gsp_firmware_version]

Version of the GPU System Processor (GSP) firmware.

Index [index]

Index number of the GPU as reported by the system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2028


<!-- page 2029 -->
GPU Details [gpu_details] (continued)
Field

Description

Inforom ECC [inforom_ecc] Version of the error-correcting code (ECC) used to record data in
the InfoROM.
Inforom IMG [inforom_img] Global version of the infoROM image.
Inforom OEM
[inforom_oem]

Version of the original equipment manufacturer (OEM)
configuration data in the InfoROM.

Inforom PWR
[inforom_pwr]

Version of the power management data in the InfoROM.

Memory Free Usage
[memory_free_usage]

Amount of GPU memory currently free.​

Memory Total Usage
[memory_total_usage]

Total amount of GPU memory installed.

Memory Used Usage
[memory_used_usage]

Amount of GPU memory currently in use.

Name [name]

Official product name of the GPU.

PCIE Current Link
[pcie_current_link]

Current peripheral component interconnect express (PCIe) link
generation.​

Performance State
[performance_state]

Power and performance levels of the GPU. Possible values run
from P0 to P15, with lower numbers indicating higher performance.

Persistence Mode Status
Indicates whether persistence mode is enabled for the GPU.
[persistence_mode_status] Possible values are Enabled or Disabled.
Serial Number
[serial_number]

Serial number of the GPU.

UUID [uuid]

Universally unique identifier (UUID) of the GPU.

Vbios Version
[vbios_version]

Basic Input/Output System (BIOS) of the GPU board.

CI relationships
Discovery creates these relationships to support the NVIDIA GPU discovery.

CI

Relationship

CI

Graphics Processing Unit [cmdb_ci_gpu] Used by::Uses Linux Server [cmdb_ci_linux_server]
Oracle Analytics Server pattern-based discovery
Discovery and Service Mapping Patterns finds Oracle Analytics Server (formerly Oracle Business
Intelligence Enterprise Edition) components on Windows and Linux servers in your environment.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2029


<!-- page 2030 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Oracle Analytics Server consists of integrated components that provide business intelligence
capabilities. The Discovery patterns discover three core components:
• Oracle BI Server: Core analytics engine that processes queries and manages metadata
• Oracle BI Presentation Service: Web-based user interface component that delivers
visualizations and dashboards
• Oracle BI Scheduler: Component that manages scheduled report generation and distribution

Prerequisites
Verify that the applications are up to date
Verify that the following applications are up to date:
• Discovery and Service Mapping Patterns
• Visibility Content
• CMDB CI Class Models
Verify that the Oracle Analytics Server processes are running on target systems
Verify that the following Oracle Analytics Server processes are active on target
systems:
• Windows:
◦ sawserver.exe
◦ NQScheduler.exe
◦ nqsserver.exe
• Linux:
◦ sawserver
◦ nqscheduler
◦ nqsserver
Verify file system access permissions
Verify that the credentials used for discovery have read access to the following
locations:
• Oracle BI installation directories
• BI_ORACLE_HOME environment variable location
• bifoundation/version.txt file within the Oracle BI installation
Create credentials on the ServiceNow AI Platform
• Windows: Configure Windows credentials. For more information, see Windows
credentials .
• Linux: Configure SSH credentials. For more information, see SSH credentials

.

Schedule a horizontal discovery
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2030


<!-- page 2031 -->
For more information, see Schedule a horizontal discovery.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Oracle Analytics Server patterns.
Resources discovered by the Oracle BI Server pattern
Oracle BI Server [cmdb_ci_oracle_bi_server]
Field

Description

Name [name]

Name of the Oracle BI Server instance.

Version [version]

Version of the Oracle BI Server software.

Installation directory
[install_directory]

File system path where the Oracle BI Server is
installed.

Resources discovered by the Oracle BI Presentation Service pattern
Oracle BI Presentation Service [cmdb_ci_oracle_bi_presentation_service]
Field

Description

Name [name]

Name of the Oracle BI Presentation Service
instance.

Version [version]

Version of the Oracle BI Presentation Service
software.

Installation directory
[install_directory]

File system path where the Oracle BI Presentation
Service is installed.

Resources discovered by the Oracle BI Scheduler pattern
Oracle BI Scheduler [cmdb_ci_oracle_bi_scheduler]
Field

Description

Name [name]

Name of the Oracle BI Scheduler instance.

Version [version]

Version of the Oracle BI Scheduler software.

Installation directory
[install_directory]

File system path where the Oracle BI Scheduler
is installed.

CI relationships
The Oracle Analytics Server patterns create these relationships to support Oracle Analytics
Server discovery.
Relationship created by the Oracle BI Server pattern

CI

Relationship CI

Oracle BI Server
Runs
[cmdb_ci_oracle_bi_server] on::Runs

Windows Server [cmdb_ci_win_server]
or Linux Server [cmdb_ci_linux_server]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2031


<!-- page 2032 -->
Relationships created by the Oracle BI Presentation Service pattern

CI

Relationship CI

Oracle BI Presentation Service
Runs
[cmdb_ci_oracle_bi_presentation_service] on::Runs

Windows Server
[cmdb_ci_win_server]
or Linux Server
[cmdb_ci_linux_server]

Relationships created by the Oracle BI Scheduler pattern

CI

Relationship CI

Oracle BI Scheduler
Runs
[cmdb_ci_oracle_bi_scheduler] on::Runs

Windows Server
[cmdb_ci_win_server] or Linux
Server [cmdb_ci_linux_server]

Oracle Catalog discovery
The Discovery and Service Mapping Patterns application uses the Get Catalog info pattern
extension of the Oracle DB on Unix and Oracle DB on Windows patterns to find Oracle Catalog
objects. Discovering some of these resources may require updating to the latest version of the
Discovery and Service Mapping Patterns application from the ServiceNow Store.
Discovery uses the Oracle DB on Unix and Oracle DB on Windows patterns and the Get Catalog
info pattern extension to run horizontal discovery.
®

You can use this pattern on the ServiceNow AI Platform using the Madrid release or later.
For information on Oracle database discovery, see Oracle database discovery.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Provide a user with permissions to run queries on ALL_TABLES
Provide a user with permissions to run queries on ALL_TABLES.
To view other users' tables in ALL_TABLES, a user must have any of the following
permissions:
• Object-level privileges, for example: SELECT.
• Higher-level role, for example: SELECT ANY TABLE.
Configure applicative credentials
Configure applicative credentials for the Oracle instance
[cmdb_ci_db_ora_instance] CI type. For more information, see Applicative
credentials .
Configure Windows credentials for Windows operating system (OS)
For more information, see Windows credentials

.

Configure UNIX credentials for UNIX OS
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2032


<!-- page 2033 -->
For more information, see SSH credentials

.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Get Catalog info Pattern extension.

Table and field

Description

Oracle Catalog [cmdb_ci_db_ora_catalog]
database_instance

The name of the database instance (SID).

name

The name of the CI in the CMDB; schema and
SID.

schema

The name of the catalog object.

The following is a dependency view of the relationship between an Oracle Catalog and an Oracle
instance.

CI relationships
This relationship is created to support Oracle Catalog discovery.

CI

Relationship

CI

Oracle Catalog
[cmdb_ci_db_ora_catalog]

Contains::Contained by

Oracle Instance
[cmdb_ci_db_ora_instance]

Oracle Database 12c discovery
The ServiceNow Discovery application can discover pluggable databases (PDBs) and container
databases (CDBs), which are features of Oracle Database 12c. Discovering some of these
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
A PDB is a portable collection of schemas, schema objects, and non-schema objects that
appear to an Oracle Net client as a separate database. A collection of PDBs is called a container
database (CDB).
For more information about PDBs and CDBs, see What are CDBs, PDBs and Containers?

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2033


<!-- page 2034 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Set the user credentials and grant permissions:
• Configure Applicative credentials

.

• For Windows, configure Windows credentials
• For Unix, configure SSH credentials
• For the Oracle database, configure Oracle database discovery
• Provide a user with permissions to run queries on the following tables:
◦ V$DATAFILE
◦ V$TEMPFILE​
◦ V$LOG
◦ DBA_FREE_SPACE
◦ V$DATABASE
◦ V$PDBS
◦ V$PARAMETER

Note: Set applicative credentials at the CDB level to discover relationships for PDBs and
the CDB size only. Alternatively, set applicative credentials at the CDB/PDB level to discover
relationships for PDBs and the CDB/PDB size. If you do not set applicative credentials at
the CDB level, no PDB attributes are discovered.

Data collected during Discovery
Discovery collects the following data:

Table and field

Description

cmdb_ci_db_ora_pdb_instance: Relation Type : Managed By​
sid

Name of the PDB instance​

name

Name of the CI in CMDB. This is a combination
of sid and the hostname.

version

Version of the PDB as taken from the CDB
instance​

edition

Edition of the PDB as taken from the CDB
instance​

install_directory

Install directory of the PDB as taken from the
CDB instance

oracle_home​

Oracle home of the PDB as taken from the
CDB instance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2034


<!-- page 2035 -->
Table and field

Description

cdb_name

Name of the cdb sid that contains the PDB.
This refers to the Oracle database instance
configuration item (CI)

cmdb_ci_db_instance_size: Relation Type : Contained By​
sid

Name of the Oracle database CDB/PDB
instance​

name

Name of the CI in CMDB. This is a combination
of the sid and the hostname.

db_size

Total size allocated to the database instance

used_size

Size used by the database instance

free_size

Size of the free space on the database
instance

The following is a dependency view of the relationship between PDBs, CDBs, and containers.

Oracle Global License Advisory Services (GLAS) data collection using patterns
The ServiceNow Discovery application uses the Oracle verified GLAS Data Collection pattern to
discover Oracle GLAS data. This data includes discovered Oracle Database, Middleware, and
Java configuration items.
The Oracle GLAS Data Collection pattern is an extension of the following patterns:
• Oracle Database on UNIX and Windows patterns
• Oracle Middleware on Linux for the following patterns:
◦ Oracle Tuxedo
◦ WebLogic
◦ Linux
• Oracle Java on Java installation pattern
The Oracle Database and Middleware patterns execute the pattern extensions, and the data
collected is stored in the ServiceNow tables for GLAS data. The Oracle GLAS Data Collection
Database pattern can be used on the ServiceNow AI Platform beginning with the Paris release.
The Oracle GLAS Data Collection Middleware pattern can be used on the ServiceNow AI
Platform beginning with the Rome release. The Oracle Java pattern can be used on the
ServiceNow AI Platform beginning with the Washington DC release.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2035


<!-- page 2036 -->
For details on how to view and download the collected Oracle GLAS data, see Download Oracle
Global License Advisory Services (GLAS) data.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
To learn about the supported versions of Oracle, refer to Detailed information on products
discovered by ITOM Visibility.

Prerequisites
Install the Data Collection for Oracle Global Licensing and Advisory Services store app
Navigate to System Definition > Plugins and install the Data Collection for Oracle
Global Licensing and Advisory Services app.
• The minimum version for Database collection is 1.4.0
• The minimum version for Middleware collection is 1.7.1
• The minimum version for Java collection is 1.8.4

Note: The Data Collection for Oracle Global Licensing and Advisory Services
app requires the Discovery (com.snc.discovery) plugin to work correctly.
Verify the following applications are installed
• Discovery and Service Mapping Patterns
• CMDB CI Class Models
Verify operating system privileges
Verify that your Windows or UNIX user can write temporary files under /tmp.
Verify that you can run the following operating system commands:
• ls
• cat
• ps
Create operating system credentials
Verify that you have the following credentials for your operating system, and then
create credentials for them on the ServiceNow AI Platform:
• UNIX credentials using SSH. For more information, see SSH credentials

.

• Windows credentials using PowerShell/WMI. For more information, see Windows
credentials .

Note: PowerShell and WMI credentials are required only for Database
collection.
Verify the following Oracle privileges
Verify that you have applicative credentials for the Oracle instance
(cmdb_ci_db_ora_instance) that have the following privileges:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2036


<!-- page 2037 -->
• Read permissions on the tnsnames.ora file.
• Permissions to execute the sqlplus command.
• (For middleware collection) Sudo permissions to run the following command:
sudo su - oracle -c "$ORACLE_INSTANCE/bin/opmnctl
status"
Verify you have the user name and password for the relevant Oracle Database, with
read permissions on the following tables:

DBA_ADVISOR_TASKS

DBA_USERS

SYS.MODEL$

DBA_CPU_USAGE_STATISTICS
DMSYS.DM$MODEL

SYS.REGISTRY$HISTORY

DBA_ENCRYPTED_COLUMNS
DMSYS.DM$OBJECT

SYSMAN.MGMT_INV_CONTAINER

DBA_FEATURE_USAGE_STATISTICS
DMSYS.DM$P_MODEL

SYSMAN.MGMT_LICENSES

DBA_FLASHBACK_ARCHIVE_TABLES
DVSYS.DBA_DV_REALM

SYSMAN.MGMT_LICENSE_DEFINITIONS

DBA_INDEXES

GV$IM_SEGMENTS

SYSMAN.MGMT_TARGETS

DBA_LOBS

GV$INSTANCE

SYSMAN.MGMT_VERSIONS

DBA_LOB_PARTITIONS

GV$PARAMETER

V
$ARCHIVE_DEST_STATUS

DBA_LOB_SUBPARTITIONSMDSYS.SDO_FEATURE_USAGE
V
$BLOCK_CHANGE_TRACKING
DBA_OBJECTS

MDSYS.SDO_GEOM_METADATA_TABLE
V$CONTAINERS

DBA_RECYCLEBIN

MGMT$TARGET

DBA_REGISTRY

ODM.ODM_MINING_MODELV$DATAGUARD_CONFIG

DBA_SQLSET

ODM_DOCUMENT

V$DATABASE

V$LICENSE

DBA_SQLSET_REFERENCESODM_RECORD

V$OPTION

DBA_SQL_PROFILES

REDACTION_POLICIES

V$PARAMETER

DBA_TABLES

SCHEMA_VERSION_REGISTRY
V$VERSION

DBA_TABLESPACES

SYS.CDC_CHANGE_SETS
$

DBA_TAB_PARTITIONS

SYS.CDC_CHANGE_TABLES
$

dba_aws

DBA_TAB_SUBPARTITIONS SYS.DBA_MINING_MODELS
Create applicative credentials for Oracle Instance
Create applicative credentials on the ServiceNow AI Platform. For more information,
see Applicative credentials .
For virtual machines: Verify virtual machine credentials
For virtual machines, verify you have the relevant credentials to collect hardware
data for machines hosted on the following virtual providers:
• VMware
• Nutanix

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2037


<!-- page 2038 -->
• IBM
• Hyper-V

Database CI relationships
CI

Relationship/Reference

CI

cmdb_ci_orcl_vsession

Contains::Contained By

cmdb_ci_db_ora_instance

cmdb_ci_ora_lms_detail

Contains::Contained By

cmdb_ci_db_ora_instance

cmdb_ci_ora_lms_overview

Contains::Contained By

cmdb_ci_db_ora_instance

cmdb_ci_orcl_options

Contains::Contained By

cmdb_ci_db_ora_instance

cmdb_ci_orcl_dba_users

Contains::Contained By

cmdb_ci_db_ora_instance

cmdb_ci_orcl_vlicense

Contains::Contained By

cmdb_ci_db_ora_instance

Tuxedo middleware extension
Tuxedo license configuration and log files collected:
• *_InstallLog.log
• *ubbc*
• bdmconfig*
• comps.xml
• dmconfig*
• JSconfig.xml
• lic.txt
• registry.xml
• tuxconfig*
• tuxwsvr.ini

Note: The asterisk represents one or more characters in the file name.
Processes collected:
• BBL
• DBBL
• GWWS
• JSH
• JSL
• TMJAVASVR
• TMMETADATA

WebLogic middleware extension
Files collected:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2038


<!-- page 2039 -->
• beahomelist
• biee-domain.xml
• cluster.properties
• comps.xml
• config.xml
• domain-registry.xml
• opmn.xml
• portalconfig.xml
• pthome.xml
• registry.xml
• server.xml
• sessions.xml
• setupinfo.txt
WebLogic processes and files collected for the following middleware products:
• WebLogic
• OAS
• SOA
• OBI
• WebCenter
• FormsReports
Processes
WebLogic

OAS

OBI

startWebLogichttpd

f90

iooomgrrmi

r30rbe32

rwrqm60

nqsserver

java

apache

frmweb

javaw

r30rqm32

rwrqm

sawserver

startWLS

java

ifbld60

java

r30run32

rwrun60

coreapplication_obijh1

nodemanageropmn

ifbld90

jre

r30sxc32

rwserver

nqscheduler

beasvc

dis3

ifcgi60

oad

r30sxu32

rwsxc60

nqsclustercontroller

beasvc64

dis4

ifcmp60

odisrv

rwbld60

rwsxu60

essbase

beasvcX64

dis51pr

ifcmp90

ofcguard

rwbuilder

vdeserver

essvr

oraclesvc

dis51ws

ifctrl60

oidrepld

rwcgi60

webcachea

essbasestudio

opmn

dis51

ifdbg60

oidmon

rwcli60

webcached hyperion

wlsvc

dwfde61

ifrun60

oidldapd

rwcon60

webcache

wlsvc64

f45des

ifsrv60

opmn

rwconverter

wlsvcX64

f45run

ifwdb60

r30cli32

rwisv60

jmc

f50dbg32

ifweb60

r30con32

rwmts60

httpd

f50run32

ifweb90

r30isv32

rwqmu60

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2039


<!-- page 2040 -->
Processes (continued)
WebLogic

jrmc

OAS

f60

imapds

r30qmu32

OBI

rwrbe60

Middleware CI relationships
CI

Relationship/Reference

CI

cmdb_ci_ora_lms_overview

Contains::Contained by

cmdb_ci_linux_server

cmdb_ci_config_file_tracked

Contains::Contained by

cmdb_ci_linux_server

These relationships are created by a containment rule that describes the valid objects that the
Linux CIs can contain.

Properties installed with the Middleware data collection application
To access the installed application properties, navigate to All > System Properties > All
Properties. You must have the admin role to modify these properties.

System property

Default value

Description

sn_itom_oracleglas.isMaskingIp
true

Determines whether to mask
the IP Address in Oracle
middleware tracked files
by replacing the value with
"text_removed."

sn_itom_oracleglas.isMaskingUserName
true

Determines whether to mask
the user name in Oracle
middleware tracked files
by replacing the value with
"text_removed."

sn_itom_oracleglas.isMaskingPort
true

Determines whether to mask
the port in Oracle middleware
tracked files by replacing the
value with "text_removed."

Control GLAS data collection
The following MID Server property controls the GLAS data collection:

sn_itom_oracleglas.disable_glas_data_collection
The property is set to False by default.

Note: In Data Collection for Oracle Global Licensing and
Advisory Services versions earlier than 1.10.2, the property name is
sn_itom_pattern.disable_glas_data_collection.

Oracle Java process discovery
ITOM Visibility can discover Java-running processes in your infrastructure, allowing you to
comply with Oracle licensing agreements and prepare for GLAS Audits. You can perform the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2040


<!-- page 2041 -->
discovery using the Java Installation pattern (IP-based), Agent Client Collector with application
patterns, or Agent Client Collector with file-based discovery.
In the pattern flow, the Java processes are discovered by Application Dependency Mapping
(ADM). When the processes are discovered, the Java Installation pattern triggers and collects
the data.
For information about privileged user access, see KB1705845

.

For more information about Agent Client Collector with patterns, see Application patterns for the
Agent Client Collector.
For more information about Agent Client Collector with file-based discovery, see Discover java
installation data using Agent Client Collector for Visibility - Content file-based discovery.
Data collected
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

Operating system in which the java is
run

Environment Type

Production or Development or QA
environment

Java Release/Version/Build

Java Version

Installation Path

Absolute installation path of the java
binary

Installation Date (DateTime)

The date and time of the java binary file
created on the filesystem

Release File (Y / N)

Indicates if a release.md file exists in
the installation

Processor Make/Model

Processor model name

Sockets (Integer)

Number of CPU sockets

Cores (Integer)

Number of CPU cores

V6 and earlier

Indicates if you have a 6 or earlier java
version

Open Source

Indicates if you have an open-source
java installation

Unlock Commercial features

Indicates if you have the commercial
features (like JFR) enabled

Mission Control

Indicates if the mission control plugin is
enabled

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2041


<!-- page 2042 -->
Java Audit [ora_java_audit] (continued)
Field

Description

AMC Agent

Indicates if the AMC agent plugin is
enabled

Usage Tracker

Indicates if the Usage Tracker feature is
enabled

Virtual Machine Object ID

Object ID of the Virtual machine
instance

PID

Running process PID

IP Address

IP address of the host/VM

First Discovered

The date of the first discovery

Most recent discovery

The date of the most recent discovery

Discovery Source

The discovery method.

Application

Reference to the [cmdb_ci_appl] table

Software installation

Reference to the [cmdb_sam_sw_install]
table

Java evidence

Reference to the
[cmdb_ora_java_evidence] table

Host

Reference to the [cmdb_ci] table

Java Evidence [ora_java_evidence]

Field

Description

Running process

Reference to the
[cmdb_running_process] table

Host CI

Reference to the [cmdb_ci_computer]
table

File information

Provides a reference to the
[cmdb_file_information] table. Relevant
only for file-based discovery (FBD);
in pattern-based discovery, this field
remains empty.

Download the Oracle GLAS report in the Discovery Admin Workspace. For more information, see
Download Oracle Global License Advisory Services (GLAS) data.

Oracle GLAS Data Collection
After Discovery finishes discovering the components of your database or middleware
deployment, you can view the relevant statistics in the Oracle GLAS Data Collection.
After upgrading to Discovery Admin Workspace version 1.3.1 (August 2024 Store), you can
navigate to Workspaces > Discovery Admin Workspace > Insights to view and access the
Oracle GLAS Data Collection.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2042


<!-- page 2043 -->
Download Oracle Global License Advisory Services (GLAS) data
Download Oracle GLAS data in CSV format to get detailed information on patterns and
configuration items. You can also download reports for Oracle Database, Middleware, Oracle
Java, VM, and vCenter hardware information.

Before you begin

Role required: admin or glas_admin

About this task

ServiceNow maintains regular verification with Oracle GLAS to provide you with insights on
licensing data for your Oracle estate. The following Oracle GLAS reporting versions are currently
verified:
• Database: 25.2
• Middleware: 23.2
• Java: 24.4

Procedure
1. Navigate to All > Oracle GLAS Data Collection > Download GLAS Data

Collection.
2. Download the following reports for Oracle GLAS data:
◦ For downloading Oracle Database, Middleware, and Java reports, navigate to Step 1:
Download GLAS Data Collection and select your data collection options.
◦ For downloading vCenter hardware information based on your environment setup, navigate
to Step 2: Download vCenter Hardware Information.
◦ For downloading VM information, navigate to Step 3: Download VM Information.
3. Select the download icon (

).

4. In the Enter email address dialog box, enter the email address where you want to receive a
notification when the report is ready.
5. Select OK.
After the report creation status message appears, you can check the status of the download
job by selecting the link provided in the message.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2043


<!-- page 2044 -->
The Oracle GLAS Report Job Log [sn_itom_oracleglas_job_log] table opens in a new window.
After your report is successfully created, the status of the report changes to Complete in the
Oracle GLAS Report Job Logs table.
6. Select a job log record to view its details including the unique number, name, status,
description, and the date and time when the job log is created and updated.
7. On the Oracle GLAS Report Job Log form that opens, download your report by navigating to
Manage Attachments and selecting download.
◦ Depending on your selection in Step 1: Download GLAS Data Collection, the following
folders are downloaded:
Oracle Database
▪ DB folder – contains the following CSV files:
▪ ORCL_V$SESSION.csv
▪ ORCL_OPTIONS.csv
▪ ORCL_DBA_USERS.csv
▪ ORCL_DETAIL.csv
▪ ORCL_V$LICENSE.csv
▪ ORCL_OVERVIEW.csv
▪ CPUQ folder – contains CPUQ files, vCenter Hardware, and VM information
Oracle Middleware
The following files are exported, where the file name reflects your server name
and Oracle product:
▪ ORCL_OVERVIEW.csv
▪ Collection-<Server Name>_<Oracle Product>.tar.bz with
the files and directories of the format FMW/u01/app/oracle/config/domains/
soa_domain/config/config.xml in it
Oracle Java
▪ Java folder – contains Java installation information
▪ CPUQ folder – contains CPUQ files, vCenter Hardware, and VM information
◦ If you selected Step 2: Download vCenter Hardware Information, one hardware inventory
CSV file is downloaded per vCenter in your environment.
◦ If you selected Step 3: Download VM Information, one VM information CSV file is
downloaded per vCenter in your environment.

Note: You can also download the CSV files for Oracle Database by navigating to Oracle

GLAS Data Collection > Oracle GLAS Data. From the list that opens, select the table that
you want to download and then select Download GLAS Report.

Result

The downloaded files appear in the location that you select.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2044


<!-- page 2045 -->
Trouble?
If the files are empty or contain an error message, check their sizes to verify that they haven't
exceeded the limits set in the following properties. Navigate to All > System Properties > All
Properties to find the following properties.

Important: Consult with ServiceNow support before changing these properties.
Property

Description

glide.discovery.file_tracking.max_file_size

The maximum file size for tracked
configuration file content.
Type: integer
Default value: 500000

glide.discovery.file_tracking.max_files_per_ci

The maximum number of tracked configuration
files per CI.
Type: integer
Default value: 50

glide.discovery.file_tracking.change_limit_count

Number of changes permitted on a tracked
configuration file in the defined time window.
Type: integer
Default value: 4

glide.discovery.file_tracking.change_limit_days

Time window (in days) that limits the number
of changes on a tracked configuration file.
Type: integer
Default value: 7

If you receive an error Error: Skipped sensor for Horizontal Pattern
because of error in payload: Payload length 5056040 exceeded the
limit of 300000, verify that the payload hasn't exceeded the system limit. Navigate to All >
MID Server > Properties to find the following properties.

Property

mid.discovery.max_payload_size

Description

Defines the maximum overall payload size for
the payload of results that come from patterns.
Type: integer (bytes)
Default value: 300000

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2045


<!-- page 2046 -->
If you receive an SSH timeout error, you must create and set the following properties. See "Create
a MID Server property" in MID Server Properties
for details.

Property

mid.ssh.command_timeout_ms

Description

Number of milliseconds an SSH command is
permitted to run before timing out (default is
configurable per MID Server).
Type: integer

mid.sa.ssh.timeout

The SSH timeout in milliseconds.
Type: integer

channel_timeout_ms

The amount of time, in milliseconds, that a
MID Server waits for activity when processing
an SSH command. If the MID Server doesn’t
detect activity within the specified window, the
system terminates the command.
Type: integer

Oracle GoldenGate discovery
The ServiceNow Discovery and Service Mapping applications find Oracle GoldenGate version
12c components using the Oracle Golden Gate pattern. Discovering some of these resources
may require updating to the latest version of the Discovery and Service Mapping Patterns
application from the ServiceNow Store.
Discovery uses the Oracle Golden Gate pattern to perform horizontal discovery to collect
data into the $report_file file. Service Mapping performs top-down discovery on the
$report_file file to find outgoing Oracle Golden Gate connections.
The Oracle Golden Gate pattern supports the following platforms: AIX, Linux Hewlett Packard,
and Solaris.
You can use this pattern on the ServiceNow AI Platform using Kingston, London, or Madrid.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Credentials
Configure the SSH credentials, for the operating system of the server that hosts the
Oracle Golden Gate Server.
User access
Give the UNIX OS user permissions to read the $report_file. The
$report_file is the report file that is extracted from the Oracle Golden Gate
manager/replicat/extract process, with the extension .rpt. For example:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2046


<!-- page 2047 -->
Configuration file:
/base/ggs_beta/oracle/bt01pims/ggs/dirprm/mgr.prm
REPORTFILE
Report file:
/base/ggs_beta/oracle/bt01pims/ggs/dirrpt/MGR.rpt
PROCESSID MGR
Permissions to run commands
The OS user must have permissions to run the relevant OS commands for each
supported platform.
Give the UNIX OS user permissions to run the following commands against the
Oracle Golden Gate Server:

Command

$sudo + " ls -d "
+ $rpt_base_dir +
"*.rpt | sort "
$sudo + " ls -d "
+ $prm_base_dir +
"*.prm| sort "

Mandatory/Optional

Description

Mandatory

List all report files under
the Oracle Golden Gate
report base directory.

Mandatory

List all parameter files
under the Oracle Golden
Gate parameter base
directory.

Retrieve data
Retrieve data by parsing:
• The Oracle Golden Gate manager report file (report_file) to retrieve related
configuration item (CI) names and counter information.
• Variables in the process command line to retrieve the install folder, manager
process name, configuration file, and parameters file.
• Variables in the Oracle Golden Gate installation folder to retrieve a list of
parameter and configuration files.
EVAL closure functions
Use the following EVAL closure functions to remove duplicate entries from the
extract process and the replicat process.
• var tableWithoutDuplicates = '';tableWithoutDuplicates
= DuplicateRemover.removeDuplicates(${extracts},
["name"]);CTX.setAttribute("extracts", tableWithoutDuplicates);
• var tableWithoutDuplicates = '';tableWithoutDuplicates
= DuplicateRemover.removeDuplicates(${replicats},
["name"]);CTX.setAttribute("replicats", tableWithoutDuplicates);
Use the following EVAL closure functions to count the number of extract processes
and replicat processes.
return
${cmdb_ci_appl_ora_gg_replicat[*].config_file}.size()
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2047


<!-- page 2048 -->
return
${cmdb_ci_appl_ora_gg_extract[*].config_file}.size()
Use the following EVAL closure function to return the privileged command.
return
${ctx}.getDiscoveryProvider(com.snc.sw.dto.ProviderTyp
e.SSH).getPrivilegedCommand();
Use the following EVAL closure function to return the discovery type.
ctx.getWork().getDiscoveryType();
Use the following EVAL closure function to extract the version from the installation
directory path if it is empty.
inst_dir =
${install_directory}if(inst_dir.isEmpty()){return
${version}}if(inst_dir.startsWith('/')){return
inst_dir.replaceAll('/.*/','')}if(!inst_dir.startsWith
('/') && !inst_dir.isEmpty()){return
inst_dir.replaceAll('.*\\\\',’’)}
Applicative credentials
1. Navigate to Discovery > Credentials.
2. Click New.
3. Click Applicative Credentials.
4. On the form, fill in the fields.
Applicative Credentials form
Field

Description

Name

Credential name. An example is oracle_db_user.

Active

Option for enabling this credential for discovery. Select this check
box to enable discovery.

Applies
to

Credentials that you may or may not want to apply to All MID servers
in your network, or to one or more Specific MID servers. Select
Specific MID servers.

MID
Servers

MID Servers that the credentials apply to. Select the required MID
Server. This field appears when Specific MID servers is selected
from the Applies to field.

Order

Order in which the platform tries this credential as it attempts to
log on to devices. A smaller number indicates that the credential
appears higher in the list. Establish the credential order when using
large numbers of credentials or when security locks out users after
three failed login attempts. If all the credentials have the same order
number, or none, the instance tries the credentials in a random
order. The default value is 100.

User
name

Name of the user of this applicative credential. An example is
oracle_db_user. You can use any user for the credential for this
pattern, because the information is extracted from a local cache.

Password Not required. You can leave this field blank or enter any value.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2048


<!-- page 2049 -->
Field

Description

CI type

CI type for which this credential is used: Storage Server
[cmdb_ci_storage_server].

Note: ServiceNow applications refer to devices and
applications that comprise a service instance as configuration
items (CIs).

5. Click Submit.
Entry point
For top-down discovery, use the Oracle Golden Gate IP address and specify the
MID Server.

Data collected by Discovery during horizontal discovery
Discovery uses the Oracle Golden Gate pattern to collect the data described in the following
table.

Table and field

Description

Main CI cmdb_ci_appl_oracle_golden_gate
Name
[name]
Version

Name of the CI in the CMDB (<process
name>@<source db>).
Version of the Oracle Golden Gate installation.

[version]
Source DB
[source_db]
Replicats count
[count_replicat]
Extracts count
[count_extract]
Configuration file
[config_file]
Report File
[report_file]
Type
[type]

Manager process source database system
identifier (SID).
Counter of replicat processes that are
managed by the Oracle Golden Gate manager
instance.
Counter of extract processes that are
managed by the Oracle Golden Gate manager
instance.
Parameter file of the Oracle Golden Gate
process. Specify the path to the configuration
file and the file name, <name>.prm
Report file of the Oracle Golden Gate process.
Specify the path to the report file and the file
name, <name>.rpt
Type of the Oracle Golden Gate installation.
Specify the Oracle Golden Gate for Oracle
technologies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2049


<!-- page 2050 -->
Table and field

Description

Installation directory

Folder that contains all the Oracle Golden
Gate setup, configuration, libraries, and
executable files.

[install_directory]
Related CI cmdb_ci_appl_ora_gg_replicat
Name
[name]
Report file
[report_file]
Configuration file
[config_file]
Installation directory

Name of the CI in the CMDB (<process
name>@<source db>).
Replicat process report file. Specify the path to
the report file and the file name <name>.rpt
Parameter file of the replicat process. Specify
the path to the configuration file and the file
name <name>.prm

[install_directory]

Folder that contains all the Oracle Golden
Gate setup, configuration, libraries, and
executable files.

Version

Version of the Oracle Golden Gate installation.

[version]
Source DB

Manager process source database SID.

[source_db]
Operational status
[operational_status]

Operational status of the CI. Select
Operational.

Related CI cmdb_ci_appl_ora_gg_extract
Name
[name]
Report File

Name of the CI in the CMDB (<process
name>@<source db>).
Report file of the replicat process.

[report_file]
Configuration file

Parameter file of the extract process.

[config_file]
Version

Version of the Oracle Golden Gate installation.

[version]
Installation directory
[install_directory]

Folder that contains all the Oracle Golden
Gate setup, configuration, libraries, and
executable files.

Source DB

Manager process source database SID.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2050


<!-- page 2051 -->
Table and field

Description

[source_db]
Operation status

Operational status of the CI. Select
Operational.

[operational_status]

The Dependency Views map shows discovered load balancer CIs and the relationships between
them.

CI relationships
These relationships are created to support Oracle Golden Gate discovery.

CI

Relationship

CI

Main cmdb_ci_appl_oracle_golden_gate
cmdb_ci_appl_oracle_golden_gate Manages::Managed
by

cmdb_ci_appl_ora_gg_replicat

cmdb_ci_appl_oracle_golden_gate Runs on::Runs

cmdb_ci_hardware

cmdb_ci_appl_oracle_golden_gate Extends from

cmdb_ci_appl

cmdb_ci_appl_ora_gg_extract

Related CI cmdb_ci_appl_ora_gg_replicat
cmdb_ci_appl_ora_gg_replicat

Managed
by::Manages

cmdb_ci_appl_oracle_golden_gate

cmdb_ci_appl_ora_gg_replicat

Runs on::Runs

cmdb_ci_hardware

cmdb_ci_appl_ora_gg_replicat

Extends from

cmdb_ci_appl

Related CI cmdb_ci_appl_ora_gg_extract
cmdb_ci_appl_ora_gg_extract

Managed
by::Manages

cmdb_ci_appl_oracle_golden_gate

cmdb_ci_appl_ora_gg_extract

Runs on::Runs

cmdb_ci_hardware

cmdb_ci_appl_ora_gg_extract

Extends from

cmdb_ci_appl

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2051


<!-- page 2052 -->
Data collected by Service Mapping during top-down discovery
To discover the Oracle Golden Gate process, use the TCP entry point with the proper host and
port of the Oracle Golden Gate process.

Table and field

Description

Main CI cmdb_ci_appl_oracle_golden_gate
Name
[name]
Version

Name of the CI in the CMDB (<process
name>@<source db>).
Version of the Oracle Golden Gate installation.

[version]
Installation directory
[install_directory]
Configuration file
[config_file]
Report file
[report_file]
Source database

Folder that contains all the Oracle Golden
Gate setup, configuration, libraries, and
executable files.
Parameter file of the Oracle Golden Gate
process.
Report file of the Oracle Golden Gate replicat
process.
Manager process source database SID.

[source_db]
Extract process count
[count_extract]
Replicat process count
[count_replicat]

Counter of extract processes that are
managed by the Oracle Golden Gate manager
instance.
Counter of replicat processes that are
managed by the Oracle Golden Gate manager
instance.

Oracle Linux Virtualization Manager and Red Hat Virtualization discovery
The ServiceNow Discovery application uses patterns to find Oracle Linux Virtualization Manager
(OLVM) and Red Hat Virtualization (RHV) components. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.
Starting with version 1.28.0, Discovery and Service Mapping Patterns supports both OLVM and
RHV discovery. Note that the RHV patterns, tables, and related items have been renamed to oVirt.
For a full list of name changes, see the Zurich release ITOM Visibility release notes .
Discovery uses the following patterns for OLVM and RHV discovery:
• oVirt Clusters and Hosts
• oVirt Discover Logical Datacenters
• oVirt Discover Manager Instance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2052


<!-- page 2053 -->
• oVirt Virtual Machines
• oVirt Templates (starting with Discovery and Service Mapping Patterns version 1.29.0)

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Deploy the MID Server
Deploy and connect the dedicated MID Server to access either the OLVM or Red
Hat Virtualization Manager (RHV-M) instances.
Create oVirt credentials
Configure the following credentials:
1. Navigate to Discovery > Credentials.
2. Select New.
3. Select oVirt Credentials, fill in the form, and then select Submit.

Field

Description

Name

Credential name.

User name

Name of the user for performing this discovery.

Password

Password for this user.

Active

Option to select to enable this credential for discovery.

Bearer Token

Option to select to enable use of a bearer token.

Verify API permissions
Verify that the user has read-only permissions to send the following queries.
• /ovirt-engine/api/
• /ovirt-engine/api/datacenters
• /ovirt-engine/api/clusters
• /ovirt-engine/api/hosts
• /ovirt-engine/api/vms
• /ovirt-engine/api/disks
• /ovirt-engine/api/templates
• /ovirt-engine/api/networks
Add CMDB CI Class Models
Add class models that extend the CMDB class hierarchy, using the CMDB CI Class
Models application. The app is available from the ServiceNow Store. Discovery
patterns use these class extensions to populate CIs. For more information, see Red
Hat Virtualization (RHV) extension classes.
Create a cloud service account
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2053


<!-- page 2054 -->
Create an OLVM or RHV cloud service account on the ServiceNow instance.

Note: Confirm that Discovery Admin Workspace is using at least

version 1.10.0. The Discovery > Cloud Service Accounts navigation
module isn't available with earlier versions. To access Cloud Service
Accounts with an earlier version, enter in the navigation filter:
cmdb_ci_cloud_service_account.list.
1. Navigate to All > Discovery > Cloud Service Accounts
2. Select New.
3. On the form, fill in the fields.

Field

Description

Name

A unique name for the service account.

Account Id

The account ID to which this credential belongs.
The API url of the instance should be specified,
including the port.
For example: https://my-managerinstance.com:443.

Discovery credentials

The discovery credentials that were created
previously.

Datacenter Type

The datacenter type, which should be oVirt LDC
[cmdb_ci_rhv_ldc].

Create a discovery schedule
Create a discovery schedule to perform full discovery of OLVM or RHV components.
1. Open the cloud service account created previously.
2. Under Related Links, select Create Discovery Schedule.
A new schedule is created under the Discovery Schedule menu item.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the patterns.
oVirt LDC [cmdb_ci_rhv_ldc]
Field

Description

Name [name]

Name of the datacenter.

Object ID [object_id]

Unique object identifier.

Description
[short_description]

Description of the datacenter that you provide for easy
identification.

Quota Mode [quota_mode]

Quota mode policy.

URL [url]

API URL to access the datacenter.

Href ID [href_id]

Href ID.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2054


<!-- page 2055 -->
oVirt Cluster [cmdb_ci_rhv_cluster]
Field

Description

Name [name]

Name of the cluster.

Object ID [object_id]

Unique object identifier.

Description [short_description]

Description of the cluster that you provide for easy
identification.

CPU Type [cpu_type]

CPU type. For example, x86_64.

CPU Architecture [cpu_architecture] CPU architecture. For example, Intel Broadwell IBRS
SSBD MDS Family.
KSM [ksm]

Enabled state of kernel same-page merging (KSM)
memory policy.

Fencing Policy [fencing_policy]

Fencing policy.

Memory Overcommit
[memory_overcommit]

Amount of over-commitment memory allowed on the
cluster.

Transparent Huge Pages [thp]

Transparent huge memory pages policy.

Ballooning [ballooning]

Memory ballooning for guests.

Compatability Version
[compatibility_version]

Compatibility version.

URL [url]

API URL to access the cluster.

Href ID [href_id]

Href ID.

oVirt Server [cmdb_ci_rhv_server]
Field

Description

Name [name]

Name of the server.

Serial number [serial_number]

Serial number.

Object ID [object_id]

Unique object identifier.

CPU core count [cpu_core_count]

Total number of cores.

CPU count [cpu_count]

Total number of CPUs.

CPU type [cpu_type]

CPU type.

CPU speed (MHz) [cpu_speed]

CPU speed (MHz).

Host name [host_name]

Hostname.

IP Address [ip_address]

IP address of the server.

Model ID [model_id]

Model ID.

Operating System [os]

OS family.

OS Version [os_version]

OS version.

RAM (MB) [ram]

Amount of RAM (MB).

URL [url]

API URL used access the server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2055


<!-- page 2056 -->
oVirt Virtual Machine Instance [cmdb_ci_rhv_vm_instance]
Field

Description

Name [name]

Name of the instance.

State [state]

State of the instance.

Object ID [object_id]

Unique object identifier.

IP Address [ip_address]

IP address of the instance.

Disks [disks]

Number of disks.

MAC Address [mac_address]

MAC address of the instance.

Management URL [mgmt_url]

Management API URL.

Description [short_description]

Description of the instance that you provide for easy
identification.

Fully qualified domain name
[fqdn]

Fully Qualified Domain Name (FQDN) of the instance.

CPU Architecture
[cpu_architecture]

CPU architecture. For example: Intel Broadwell IBRS SSBD
MDS Family.

Delete Protected
[delete_protected]

Delete protected, possible values: true or false.

CPUs [cpus]

Number of CPUs.

HA Priority [ha_priority]

High availability (HA) priority.

High Availability [high_availability] High availability, possible values: true or false.
Memory MAX
[memory_policy_max]

Maximum memory in the dynamic memory allocation
policy for the virtual machine (VM).

Memory Guarantee (MB)
[memory_policy_guaranteed]

Amount of memory guaranteed for the VM (MB).

Multi Queues [multi_queues]

Multi queues.

Placement Policy
[placement_policy]

Placement policy.

Stateless [stateless]

Stateless, possible values: true or false.

On Storage Error
Behavior of a VM that is paused due to storage I/O error.
[storage_error_resume_behaviour] For example: AUTO_RESUME, LEAVE_PAUSED, and KILL.
Start Time [start_time]

Start time of the VM.

Stop Time [stop_time]

Stop time of the VM.

Threads [threads]

Number of threads.

Time Zone [time_zone]

Time zone of the VM.

USB [usb]

USB enabled state.

Run Once [run_once]

Run once.

RHV Type [rhv_type]

OLVM or RHV type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2056


<!-- page 2057 -->
Cloud Service Account [cmdb_ci_cloud_service_account]
Field

Description

Account Id [account_id]

Account ID for this cloud service account.

Object ID [object_id]

Account ID for this cloud service account.

Datacenter Type [datacenter_type]

Type of datacenter: oVirt LDC
[cmdb_ci_rhv_ldc].

Discovery credentials
[discovery_credentials]

Credentials for this cloud service account.

IP Address [cmdb_ci_ip_address]
Field

Description

Name [name]

The IP address of the network interface card (NIC) assigned to the
VM.

IP Address
[ip_address]

The IP address of the NIC assigned to the VM.

IP version [ip_version]

IP version: IPv4 or IPv6.

VNIC Endpoint [cmdb_ci_endpoint_vnic]
Field

Description

Object ID [object_id]

Unique identifier for this resource.

Name [name]

Name for the virtual network interface card (vNIC) endpoint.

IP Address [ip_address]

IP address bound to the network interface.

Cloud Mgmt Network Interface [cmdb_ci_nic]
Field

Description

Object ID [object_id]

ID of the network interface.

Name [name]

Name of the network interface.

IP Address [ip_address]

IP address bound to the network interface.

Public IP [public_ip]

Public IP address bound to the network interface.

Private IP [private_ip]

Private IP address bound to the network interface.

Storage Volume [cmdb_ci_storage_volume]
Field

Description

Name [name]

Name of the disk.

Object ID [object_id]

Unique ID of the disk.

Size [size]

Storage capacity of the disk.

Storage type [storage_type]

Type of storage backend the disk is using.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2057


<!-- page 2058 -->
Cloud Network [cmdb_ci_network]
Field

Description

Name [name]

Name of the network.

Object ID [object_id]

Unique ID of the network.

Cloud Hardware Type [cmdb_ci_cloud_hardware_type]
Field

Description

Name [name]

Name of the template.

Object ID [object_id]

Unique ID of the template.

Cores [cores]

Number of CPU cores.

Install Status [install_status]

Install status of the template. Default value is Installed.

Memory MB [memory_mb]

Memory in megabytes (MB).

On the Dependency Views map, you can view all discovered OLVM or RHV resources in your
organization and the relationships between them.
OLVM or RHV dependency view

CI relationships
The following relationships are created to support OLVM or RHV discovery.

CI

Relationship

CI

Cloud Hardware Type
Hosted on::Hosts
[cmdb_ci_cloud_hardware_type]

oVirt LDC [cmdb_ci_rhv_ldc]

Cloud Mgmt Network Interface Hosted on::Hosts
[cmdb_ci_nic]

oVirt LDC [cmdb_ci_rhv_ldc]

Cloud Mgmt Network Interface Owns::Owned by
[cmdb_ci_nic]

IP Address
[cmdb_ci_ip_address]

Cloud Mgmt Network Interface Extends from
[cmdb_ci_nic]

Network Adapter
[cmdb_ci_network_adapter]

Cloud Network
[cmdb_ci_network]

oVirt LDC [cmdb_ci_rhv_ldc]

Hosted on::Hosts

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2058


<!-- page 2059 -->
CI

Relationship

CI

Cloud Service Account
Extends from
[cmdb_ci_cloud_service_account]

Virtual Machine Object
[cmdb_ci_vm_object]

IP Address
[cmdb_ci_ip_address]

Extends from

Configuration Item [cmdb_ci]

oVirt Cluster
[cmdb_ci_rhv_cluster]

Members::Member of

oVirt Server
[cmdb_ci_rhv_server]

oVirt Cluster
[cmdb_ci_rhv_cluster]

Extends from

oVirt Object
[cmdb_ci_rhv_object]

oVirt LDC [cmdb_ci_rhv_ldc]

Contains::Contained by

oVirt Cluster
[cmdb_ci_rhv_cluster]

oVirt LDC [cmdb_ci_rhv_ldc]

Hosted on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

oVirt LDC [cmdb_ci_rhv_ldc]

Extends from

Logical Datacenter
[cmdb_ci_logical_datacenter]

oVirt Server
[cmdb_ci_rhv_server]

Runs on::Runs

Linux Server
[cmdb_ci_linux_server]

oVirt Server
[cmdb_ci_rhv_server]

Extends from

Virtualization Server
[cmdb_ci_virtualization_server]

oVirt Virtual Machine Instance
[cmdb_ci_rhv_vm_instance]

Contains::Contained by

Storage Volume
[cmdb_ci_storage_volume]

oVirt Virtual Machine Instance
[cmdb_ci_rhv_vm_instance]

Hosted on::Hosts

oVirt Cluster
[cmdb_ci_rhv_cluster]

oVirt Virtual Machine Instance
[cmdb_ci_rhv_vm_instance]

Hosted on::Hosts

oVirt LDC [cmdb_ci_rhv_ldc]

oVirt Virtual Machine Instance
[cmdb_ci_rhv_vm_instance]

Owns::Owned by

IP Address
[cmdb_ci_ip_address]

oVirt Virtual Machine Instance
[cmdb_ci_rhv_vm_instance]

Registered on::Registers

oVirt Server
[cmdb_ci_rhv_server]

oVirt Virtual Machine Instance
[cmdb_ci_rhv_vm_instance]

Use End Point To::Use End
Point From

VNIC Endpoint
[cmdb_ci_endpoint_vnic]

oVirt Virtual Machine Instance
[cmdb_ci_rhv_vm_instance]

Extends from

Virtual Machine Instance
[cmdb_ci_vm_instance]

Storage Volume
[cmdb_ci_storage_volume]

Hosted on::Hosts

oVirt LDC [cmdb_ci_rhv_ldc]

VNIC Endpoint
[cmdb_ci_endpoint_vnic]

Implement End Point
To::Implement End Point From

Cloud Mgmt Network Interface
[cmdb_ci_nic]

VNIC Endpoint
[cmdb_ci_endpoint_vnic]

Extends from

Endpoint [cmdb_ci_endpoint]

Oracle Listener HD discovery
ServiceNow Discovery uses the Oracle Listener HD pattern to find and map Oracle real
application cluster components. To discover these resources, install the CMDB CI Class Models
and the Discovery and Service Mapping Patterns from the ServiceNow Store.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2059


<!-- page 2060 -->
Oracle RAC enables you to cluster an Oracle database. Oracle RAC uses Oracle Clusterware for
the infrastructure to bind multiple servers so they operate as a single system. Oracle Clusterware
enables you to create a clustered pool of storage that can be used by any combination of noncluster and Oracle RAC databases. Discovery uses Oracle Listener HD patterns to discover
information about the Oracle Database Listener and the components in the Oracle RAC
infrastructure, when such a setup is configured.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
• Ensure that the following plugins are installed:
◦ CMDB CI Class Models plugin (Version 1.29.0 or later).
◦ Discovery and Service Mapping Patterns plugin (Version 1.0.82 or later).​
• Ensure that the Discovery User is in the Oracle DBA group or has the correct Permissions.
• Ensure that the MID Server has access to the target device.
• Ensure that the Oracle Clusterware/Grid infrastructure is installed and the Oracle RAC
Database is configured. If there is an Oracle Clusterware setup.
• Ensure that the Oracle Listener process is running on a UNIX OS host.​
• Use Oracle Clusterware minimum version 12.2.X.X (Oracle Database 12c Release 2) or higher, If
there is an Oracle Clusterware setup.

Note: This pattern is supported from the Paris release on. More UNIX OS types (AIX,
Solaris, HP-UX) are supported from version 1.0.87 of the Discovery and Service Mapping
Patterns plugins.
The following commands are executed during the pattern execution. Executing the commands
enables the pattern to populate allthe relevant CMDB classes with the necessary information:
◦ export TNS_ADMIN=<oracle_home_directory>/network/admin: Sets the ORACLE_HOME
to the TNS_ADMIN environment variable.
◦ export ORACLE_BASE==<oracle_home_directory>: Sets the ORACLE_HOME to the
ORACLE_BASE environment variable.
◦ lsnrctl status LISTENER_NAME: Checks the Database Listener status.
◦ ps -ef | grep 'd.bin’: Searches for the GRID_HOME path.
◦ crsctl query cluster site -all: Lists the nodes and disks that the sites contain.
◦ lsnrctl services LISTENER_NAME: Lists the services that the listener identifies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2060


<!-- page 2061 -->
◦ crsctl stat res -f -w '((TYPE = ora.database.type))’: Lists the database name, associated
node, type, and active status.​

Note: If no output is obtained from the lsnrctl status LISTENER_NAME, then the
Oracle Listener HD pattern is terminated.

Limitations
The Oracle Clusterware setup is only supported for the UNIX Operating Systems. The base
system SSH Command-Oracle - Listener Details classifier probe is inactive (Active is set to
False), when installing the CMDB CI Class Models version 1.29.0 or higher.
Classifier Probes- Oracle Listener Details

The Oracle Listener process classification triggers the Oracle Listener HD pattern.
Classifier Probes- Horizontal Pattern

Data collected by Discovery during horizontal discovery
The Oracle Listener HD pattern populates the following CIs:
Main CI (Oracle Database Listener) [cmdb_ci_db_ora_listener]
Field

Description

name

The name of the Oracle Database Listener.

oracle_home

The Oracle home directory where software is
installed.

configuration

The listener.ora network configuration file.

scan_listener_name

The name of the SCAN LISTENER.

version

The version of the Oracle product.

tcp_port

The listening port for Oracle client
connections.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2061


<!-- page 2062 -->
Oracle Database Listener Form​

Oracle Database Listener View Map​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2062


<!-- page 2063 -->
(Oracle Instance) cmdb_ci_db_ora_instance
Field

Description

sid

The specific name that specifically identifies
the instance.​
The name of the Oracle instance combination
of SID@HOST_NAME​

name
Oracle Instance Form

Oracle Instance View Map

(Oracle Database) cmdb_ci_oracle_database
Field

Description

name

The Oracle database unique name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2063


<!-- page 2064 -->
(Oracle Database) cmdb_ci_oracle_database (continued)
Field

Description

type

The Oracle database type.

operational_status

The active status of the Oracle database.

node

The host name of the node hosting the Oracle
database.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2064


<!-- page 2065 -->
Oracle Database Form

Oracle Database View Map

(Oracle Cluster) cmdb_ci_oracle_cluster
Field

Description

name

The name of the Oracle database cluster.

cluster_id

The GUID of the Oracle database cluster.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2065


<!-- page 2066 -->
(Oracle Cluster) cmdb_ci_oracle_cluster (continued)
Field

Description

cluster_status

The active state of the Oracle database
cluster.

ip_address

The IP addresses of the nodes participating in
the cluster.

Oracle Cluster Form

Oracle Cluster View Map

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2066


<!-- page 2067 -->
(Oracle Cluster Node) cmdb_ci_oracle_cluster_node​
Field

Description

name

The hostname of the cluster
node combination of
HOSTNAME@CLUSTER_NAME.​

ip_address

The IP address of the cluster node, if
resolvable by DNS.​

server

The hostname of the host hosting the cluster
node.​

cluster

The name of the cluster to which the cluster
node is associated.

Oracle Cluster Node Form​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2067


<!-- page 2068 -->
Oracle Cluster Node View Map​

(Linux Server) cmdb_ci_linux_server​
Field

Description

name

The hostname of the Linux server that is
hosting the Oracle Listener process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2068


<!-- page 2069 -->
Linux Server Form

Linux Server View Map​

(AIX Server) cmdb_ci_aix_server​
Field

Description

name

The hostname of the AIX server that is
hosting the Oracle Listener process.

(HPUX Server) cmdb_ci_hpux_server
Field

Description

name

The hostname of the HP-UX server that
is hosting the Oracle Listener process.

(Solaris Server) cmdb_ci_solaris_server
Field

Description

name

The hostname of the Solaris server that
is hosting the Oracle Listener process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2069


<!-- page 2070 -->
Oracle DB Service (cmdb_ci_db_ora_service)
Field

Description

name

The name of the service.

tcp_port

The port of the service.

listener_name

The name of the Listener managing the
service.

version

The version of the service.

CI Relationships
Relationships created by the Oracle Listener HD Pattern
CI

Relationship

CI

cmdb_ci_oracle_cluster

“Cluster of :: Cluster”

cmdb_ci_oracle_cluster_node

cmdb_ci_oracle_cluster_node

“Hosted on :: Hosts”

cmdb_ci_linux_server

cmdb_ci_db_ora_instance

“Runs on :: Runs”

cmdb_ci_linux_server

cmdb_ci_db_ora_listener

“Depends on :: Used by”

cmdb_ci_db_ora_instance

cmdb_ci_db_ora_instance

“Uses :: Used by”

cmdb_ci_db_oracle_database​

cmdb_ci_oracle_database

"Hosted on :: Hosts”

cmdb_ci_oracle_cluster_node

cmdb_ci_oracle_cluster_node

“Hosted on :: Hosts”

cmdb_ci_aix_server

cmdb_ci_db_ora_instance

Runs on :: Runs”

cmdb_ci_aix_server

cmdb_ci_oracle_cluster_node

“Hosted on :: Hosts”

cmdb_ci_solaris_server

cmdb_ci_db_ora_instance

Runs on :: Runs”

cmdb_ci_solaris_server

cmdb_ci_oracle_cluster_node

“Hosted on :: Hosts”

cmdb_ci_hpux_server

cmdb_ci_db_ora_instance

Runs on :: Runs”

cmdb_ci_hpux_server

cmdb_ci_db_ora_service

Managed by::Manages

cmdb_ci_db_ora_listener

cmdb_ci_db_ora_instance

Uses::Used by

cmdb_ci_db_ora_service

Oracle Solaris LDOM discovery
Discovery uses the Solaris Logical Domain (LDOM) infrastructure pattern and Solaris LDOM
shared library pattern to find all LDOM data. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.
Discovery uses these patterns to run horizontal discovery. You can use the patterns on the
ServiceNow AI Platform using the Zurich release or later.
The Solaris LDOM infrastructure pattern is triggered automatically on Solaris Server discovery.
The pattern verifies if there is an LDOM controller, and stops running if it doesn't find a controller.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2070


<!-- page 2071 -->
The Solaris LDOM shared library pattern is run as an Extension Section to the Solaris Server
pattern. The pattern modifies the Serial Number (SN) on LDOM machines so that it matches the
SN populated by the Solaris LDOM infrastructure pattern. For further information about Solaris
Server, see Solaris discovery.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
LDOM commands when running the Solaris LDOM infrastructure pattern
Ensure the relevant users have permissions to execute the following used
commands for the Solaris LDOM infrastructure pattern:
• "sudo /usr/sbin/virtinfo -a”
• "sudo /usr/sbin/ldm -V”
• "hostname”
• "svcs ldmd”
• "sudo /usr/sbin/ldm list-rsrc-group -a”
• "sudo /usr/sbin/sneep -T | grep ChassisSerialNumber

2> /dev/null”

• "/usr/sbin/prtdiag -v | awk '/Chassis Serial/{getline;

getline; print}'"

• "sudo /usr/sbin/ldm list"

Note: Some of these commands are used with conditions, and will not be
executed on each discovery. For example, the main way to get the SN for
servers is by using the ‘sneep’ command. However, this is not available
by default on Solaris servers, so ‘prtdiag’ is used as an alternative
method to get the SN.​
Important LDOM commands when running the Solaris LDOM shared library pattern
Ensure the relevant users have permissions to execute the following used
commands for the Solaris LDOM shared library pattern:
• "sudo /usr/sbin/virtinfo -a”
• "sudo /usr/sbin/sneep -T | grep ChassisSerialNumber

2> /dev/null”

• "hostname”
Ensure the relevant users have the permissions to execute the LDOM virtinfo
command. This command ensures the proper LDOM role can be established.
Ensure the relevant users have the permissions to execute the LDOM "sudo /
usr/sbin/ldm list” command for listing Guest VMs on the LDOM controller.
This is required in order to set relations between the LDOM controller and the
LDOM Guest VMs.
One of the ‘sneep’ or ‘prtdiag’ Serial Number commands has to return a
correct response in order to correctly set the SN.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2071


<!-- page 2072 -->
Data collected by Discovery during horizontal discovery
The data discovered by both patterns includes the following tables and fields.

Table and field

Description

Solaris Server [cmdb_ci_solaris_server]
ldom_version

The LDOM version installed on the LDOM controller.

ldom_role

The LDOM role; "controller” or "guest”.​

ldom_state

The state of the LDOM implementation on the LDOM controller.

serial_number

The serial number of the machines.

virtual

Whether or not a virtual machine (for Guest VMs) is used for the LDOM
controller.​

ram

The memory available on the LDOM controller.​

cpu_core_count The number of CPU cores on the LDOM controller.

CI relationships
CI

Relationship

CI

LDOM controller

Hosted on::Hosts

LDOM Guest VM

Palo Alto Networks firewall discovery
The ServiceNow Discovery application uses the Next-Generation Palo Alto Firewall pattern to find
Palo Alto Networks firewalls. Discovering some of these resources may require updating to the
latest version of the Discovery and Service Mapping Patterns application from the ServiceNow
Store.
The discovery pattern uses a set of SNMP calls to find the Palo Alto Networks firewalls. Discovery
uses the pattern to run horizontal discovery.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
• Ensure that your network firewall device has SNMP access.
• On the ServiceNow instance, configure SNMP credentials. For more information, see SNMP
credentials .
• Add the SNMP system OID record for the Palo Alto Networks device to the ServiceNow
instance. Update the following:
◦ Classifier: Palo Alto Firewall
◦ Class: Palo Alto Firewall Device
• Deploy the pattern as follows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2072


<!-- page 2073 -->
1. Download and install Firewall extension classes
from the ServiceNow Store. The app adds
the new CMDB classes required for network firewall discovery.
2. Download and install the discovery pattern from the ServiceNow Store.
3. Sync the pattern with the appropriate MID Server.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Next-Generation Palo Alto Firewall
Pattern.
Palo Alto Firewall Device [cmdb_ci_firewall_device_palo_alto]
Field

Description

IP Address [ip_address]

IP address of the Palo Alto device.

Serial number [serial_number]

Serial number of the Palo Alto device.

Fully qualified domain name [fqdn]

Fully qualified domain name (FQDN) of the Palo Alto
device.

Manufacturer [manufacturer]

Palo Alto device manufacturer.

Model ID [model_id]

Model ID of the Palo Alto device.

Operational status [operational_status]

Indicates whether the Palo Alto device is in active
state.

Hardware OS [hardware_os]

OS running on the hardware.

Hardware OS Version
[hardware_os_version]

OS version running on the hardware.

Description [short_description]

Short description of the Palo Alto device.

Firmware version [firmware_version]

Palo Alto device firmware version.

Network Adapter [cmdb_ci_network_adapter]
Field

Description

IP Address [ip_address] IP address of the network adapter.
Alias [alias]

The user-assigned name for the network adapter.

Netmask [netmask]

Netmask of the network adapter.

MAC address
[mac_address]

MAC address of the network adapter.

Name [name]

Name of the network adapter.

Configuration Item
[cmdb_ci]

References the Palo Alto Firewall Device
[cmdb_ci_firewall_device_palo_alto] table.

IP Address [cmdb_ci_ip_address]
Field

Description

IP Address [ip_address]

IP address of the Palo Alto firewall.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2073


<!-- page 2074 -->
IP Address [cmdb_ci_ip_address] (continued)
Field

Description

Netmask [netmask]

Netmask of the Palo Alto firewall.

Nic [nic]

References the Network Adapter [cmdb_ci_network_adapter] table.

DNS Name [cmdb_ci_dns_name]
Field

Description

Name [name]

Domain Name System (DNS) name of the Palo Alto firewall device.

IP Address [ip_address]

Host IP address.

CI relationships
These relationships are created to support Palo Alto Networks firewall discovery:

CI

Relationship

CI

IP Address [cmdb_ci_ip_address]

References

Netwrk Adapter
[cmdb_ci_network_adapter]

Network Adapter
[cmdb_ci_network_adapter]

Owns::Owned IP Address [cmdb_ci_ip_address]
by

Netwrk Adapter
[cmdb_ci_network_adapter]

References

Palo Alto Firewall Device
[cmdb_ci_firewall_device_palo_alto]

Palo Alto Firewall Device
[cmdb_ci_firewall_device_palo_alto]

Extends from

Firewall Device
[cmdb_ci_firewall_device]

Palo Alto Firewall Device
[cmdb_ci_firewall_device_palo_alto]

Owns::Owned Netwrk Adapter
by
[cmdb_ci_network_adapter]

Palo Alto Firewall Device
[cmdb_ci_firewall_device_palo_alto]

Owns::Owned IP Address [cmdb_ci_ip_address]
by

Palo Alto Firewall Device
[cmdb_ci_firewall_device_palo_alto]

Uses::Used by Router Interface
[dscy_router_interface]

Router Interface
[dscy_router_interface]

References

Palo Alto Firewall Device
[cmdb_ci_firewall_device_palo_alto]

Serial Number [cmdb_serial_number]

References

Palo Alto Firewall Device
[cmdb_ci_firewall_device_palo_alto]

Pivotal Cloud Foundry discovery
The ServiceNow Discovery application finds Pivotal Cloud Foundry (PCF) version 3 components
using the Pivotal Cloud Foundry pattern. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.
You can use this pattern on the ServiceNow AI Platform starting Kingston version.
The discovery of PCF V3 components is supported when the Discovery and Service Mapping
Patterns plugin Version 1.0.99, March 2023 is installed. The Pattern continues to support the
discovery of PCF V2 components.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2074


<!-- page 2075 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Pivotal Cloud Foundry credentials
Create the Pivotal Cloud Foundry credentials.
1. Navigate to Discovery > Credentials.
2. Select New.
3. Select CloudFoundry Credentials.
4. On the form, fill in the fields:

Field

Description

Name

Credential name. As an example,
pcf_user credentials

Active

Option for enabling this credential for
discovery. Select this check box to
enable discovery.

Applies to

Credentials that you may or may not
want to apply to All MID servers
in your network, or to one or more
Specific MID servers. Select Specific
MID servers.

Order

Order in which the platform tries
this credential as it tries to log in to
devices. A smaller number indicates
that the credential seems higher
in the list. Establish the credential
order when using large numbers of
credentials or when security locks out
users after three failed logins tries. If
all the credentials have the same order
number, or none, the instance tries
the credentials in a random order. The
default value is 100.

User name

Name of the user of these credentials.
Avoid leading or trailing spaces in
user names. A warning seems if the
platform detects leading or trailing
spaces in the user name. An example
is pcf_user. Use the client_id
that is used to generate the JWT token.

Password

Password for the user of
these credentials. Use the
client_secret that is used to
generate the JWT token.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2075


<!-- page 2076 -->
Field

Description

Credential alias

Alternate name for these credentials.
As an example, cf
If this field is closed, select the unlock
icon to unlock the field.

5. Select Update.
JSON web token credentials
To verify the JSON web token (JWT), perform the following token validation steps.
The format of the JWT token is: https://docs.cloudfoundry.org/api/uaa/
version/4.27.0/index.html jwt-bearer-token-grant
1. Run the following cURL script against the User Account and Authentication (UAA)
server API and verify the results:

curl -s -k https://ip_address:port/oauth/token
-X; POST -H ”Content-Type: application/x-wwwform-urlencoded” -H “Accept: application/json” -d
“client_id=<INSERT_USER_HERE>&client_secret=<INSERT_PASS_HERE>&grant_ty
If this command doesn’t generate a token, verify that the credentials in the
ServiceNow repository are correct, otherwise go to step 2.
2. Run the following cURL script against Pivotal Cloud Foundry API:
curl https://ip_address:port/v3/spaces -k -v -H
“Accept: application/json” -H “Authorization:
bearer<INSERT TOKEN HERE>”
If this command doesn’t retrieve the PCF spaces information, verify the
credentials on the ServiceNow credentials repository.
Credentials for V3 API elements
Provide a read-only user with permission to use the following API elements:
• –/v3/organizations
• –/v3/spaces
• –/v3/domains
• –/v3/routes
• –/v3/organization_quotas
• –/v3/space_quotas
• –/v3/apps
• -/v3/service_offerings
• -/v3/service_plans
• -/v3/service_instances
• -/v3/droplets

Note: The Pivotal Cloud Foundry Pattern also supports the PCF V2 APIs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2076


<!-- page 2077 -->
Create a serverless Discovery schedule
1. Navigate to Discovery > Discovery Schedules.
2. Select New.
3. On the form, fill in the fields:
Discovery Schedule form
Field

Description

Name

Enter a unique and descriptive name
for this Discovery schedule, for
example, pcf

Discover

For the Discover type, select
Serverlesss

MID Server

MID Servers that the credentials apply
to. Specify the required MID Server, for
example, Discovery_Server

Active

Option for enabling this credential for
discovery. Select this check box to
enable discovery.

Credential alias

Alternate name for these credentials.
Use the alias related with the Pivotal
Cloud Foundry credentials that you
created earlier.

4. Right-click the header of the Discovery Schedule form and select Save.

5. Select the Serverless Execution Patterns tab.
6. Select New.
7. On the form, fill in the fields:
Serverless Execution Pattern form
Field

Description

Name

Enter a unique and descriptive name
for this Serverless Execution Pattern,
for example, pcf1

Pattern

Select CloudFoundry.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2077


<!-- page 2078 -->
Field

Description

Proxy Host

Fully qualified domain name of the
machine on which you’re installing the
proxy server. Specify Global.

Active

Check box to enable this schedule for
discovery. Select this check box.

8. Right-click the header of the Serverless Execution Patterns form and select Save.
9. Select the Serverless Execution Patterns tab
10. Create and define the serverless execution pattern as described in the product
documentation.
Configure the parameters required by the Pivotal Cloud Foundry Pattern as
follows:
Discovery Pattern Launcher parameters
Parameter

Description

Organization

Name of the organization that is required to be discovered, or
all where the input is “*”.

CredentialAlias Alternate name for these credentials. Use the alias related with
the Pivotal Cloud Foundry credentials that you created earlier.
URL_CF

API URL of the Cloud Controller that is used to retrieve the
information from Pivotal Cloud Foundry.

URL_CF_AUTH

UAA server APIthat is used to generate the token. Enter the
value in the format: https://uaa.sys.dev.phx.pcf.example.com/
oauth/token

11. Update.
12. To start discovery, navigate to the Serverless Discovery definition and select
Discover Now.
EVAL closure functions
Use the following EVAL closure functions to concatenate all organizations with “,” as
a separator.
var rtrn = ’’;
var organizations = ${organizations[*].name};
var beforeReturn = ’’;
var separator = ’’;
for (var i = 0; i < organizations.size(); i++)
{
beforeReturn += separator + organizations.get(i);
separator = ',';
}
rtrn = beforeReturn;
Use the following EVAL closure functions to return 1 if the operational status is active
and 2 if it isn’t active.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2078


<!-- page 2079 -->
var rtrn = '';
var currentOrgStatus =
${organizations[].operational_status};
var status = currentOrgStatus.toLowerCase();
if(status == "active"){
rtrn = "1";
}
else {
rtrn = "2";
}
Use the following EVAL closure function to return 1 if the operational status is started
and 2 if it isn’t started.
var rtrn = '';
var currentAppStatus = ${apps[].state};
var status = currentAppStatus.toLowerCase();
if(status == "started"){
rtrn = "1";
}
else {
rtrn = "2";
}
CloudFoundry Get Call
The CloudFoundry Get Call custom operation handles the generation of tokens. It
uses the credentials and URL_CF_AUTH context variable to generate a token that is
used to create API calls.
When a token is generated, the URL_CF is used to create the API calls defined in the
Resource field. The custom operation also handles pagination where the response
has more than one page.
CloudFoundry Get Call parses the input JSON to populate the tables and variables.

Pivotal Cloud Foundry BOSH extension section
The Pivotal Cloud Foundry BOSH is an extension section of the Pivotal Cloud Foundry Pattern.
®

The extension is available on the ServiceNow Store for the June 2023 release of Discovery and
Service Mapping Patterns 1.6.0.
Requirements for Pivotal Cloud Foundry BOSH
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2079


<!-- page 2080 -->
Note: The following requirements are relevant only to the BOSH extension
section.
The Opsman authentication URL has to be provided as a pattern parameter with
the name URL_OPSMAN_AUTH. For example: https://<opsman entry
point>/uaa/oauth/token
The added credentials must have permission to execute the following APIs:
• /uaa/oauth/token
• /api/v0/deployed/products

Note: Custom APIs are added as Tanzu Opsman Get API step to the
Pattern.

Data collected by Discovery during horizontal discovery
Collected information
Field

Description

Main CI: PCF Foundation [cmdb_ci_pcf_foundation]
Name

Pivotal Cloud Foundry cluster entry name
<name>-<hostCf:<portCf>

ip_address

Pivotal Cloud Foundry host IP.

port

Pivotal Cloud Foundry service port.

short_description

Pivotal Cloud Foundry service build number.

Organization

Organization list, managed by PCF cluster. The entries are separated using
a “,” comma separator.

PCF Organization [cmdb_ci_pcf_organization]
Name

Organization name

URL

Organization unique URL

pcf_guid

Organization UID in CF

operational_status Organization status
PCF Space [cmdb_ci_pcf_space]
Name

Space name

URL

Space unique URL

pcf_guid

Space UID in CF

PCF Application [cmdb_ci_pcf_appl]
Name

Application name

URL

Application unique URL

pcf_guid

Application UID in CF

PCF Route [cmdb_ci_pcf_route]
Name

Route name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2080


<!-- page 2081 -->
Collected information (continued)
Field

Description

URL

Route unique URL

pcf_guid

Route UID in CF

port

Route port

type

Route type

PCF Quota [cmdb_ci_pcf_quota]
Name

Quota name

URL

Quota unique URL

pcf_guid

Quota UID in CF

PCF Domain [cmdb_ci_pcf_domain]
name

Domain name

url

Domain unique URL

pcf_guid

Domain UID in CF

PCF Space instance [cmdb_ci_pcf_space_instance]
name

Space service instance name

url

Space service instance unique URL

pcf_guid

Space service instance UID in CF

PCF Service Plan [cmdb_ci_pcf_service_plan]
name

Service plan instance name

url

Service plan unique URL

pcf_guid

Space service instance UID in CF

PCF Service [cmdb_ci_pcf_service]
name

Service name

url

Service unique URL

pcf_guid

Service UID in CF

PCF Droplet [cmdb_ci_pcf_droplet]
name

Resource URL

pcf_guid

Droplet ID

url

Droplet URL

install_status

Installation status: 1, "installed"

operational_status Operational status: 1, "operational"
Key Value [cmdb_key_value]
key

Resource Tag key

Note: This data is only collected for V3 API calls.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2081


<!-- page 2082 -->
Collected information (continued)
Field

Description

value

Resource Tag value.

Note: This data is only collected for V3 API calls.

Data discovered by the Pivotal Cloud Foundry BOSH extension section
Field

Description

BOSH Deployment (cmdb_ci_bosh_deployment)
Name

The installation name of the resource.

object_id

The ID of the deployed product.

install_status

Hard-coded to the value: 1= installed.

operational_status

Hard-coded to the value: 1= operational.

deployment_version

The version of the deployed product.

deployment_type

The type of the deployed product.

CI relationships
These relationships are created to support Pivotal Cloud Foundry discovery.

CI

Relationship

CI

PCF Space [cmdb_ci_pcf_space]
cmdb_ci_pcf_space

Contains::Contained by

cmdb_ci_pcf_organization

PCF Application [cmdb_ci_pcf_appl]
cmdb_ci_pcf_appl

Contains::Contained by

cmdb_ci_pcf_space

PCF Route [cmdb_ci_pcf_route]
cmdb_ci_pcf_route

Contains::Contained by

cmdb_ci_pcf_foundation

PCF Quota [cmdb_ci_pcf_quota]
cmdb_ci_pcf_quota

Uses::Used by

cmdb_ci_pcf_space
cmdb_ci_pcf_organization

PCF Domain [cmdb_ci_pcf_domain]
cmdb_ci_pcf_domain

Uses::Used by

cmdb_ci_pcf_route

Owns::Owned by

cmdb_ci_pcf_organization

Contains::Contained by

cmdb_ci_pcf_foundation

PCF Space instance [cmdb_ci_pcf_space_instance]
cmdb_ci_pcf_space_instance Contains::Contained by

cmdb_ci_pcf_space

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2082


<!-- page 2083 -->
CI

Relationship

CI

PCF Service Plan [cmdb_ci_pcf_service_plan]
cmdb_ci_pcf_service_plan

Uses::Used by

cmdb_ci_pcf_space_instance

PCF Service [cmdb_ci_pcf_service]
cmdb_ci_pcf_service

Uses::Used by

cmdb_ci_pcf_service_plan

PCF Droplet [cmdb_ci_pcf_droplet]
cmdb_ci_pcf_appl

Contains::Contained by

cmdb_ci_pcf_droplet

Reference only.

cmdb_ci_pcf_droplet

Key Value [cmdb_key_value]
cmdb_key_value

For example: configuration_item
cmdb_key_value

Reference only.

cmdb_ci_pcf_organization

For example: configuration_item
cmdb_key_value

Reference only.

cmdb_ci_pcf_space

For example: configuration_item
cmdb_key_value

Reference only.

cmdb_ci_pcf_domain

For example: configuration_item
cmdb_key_value

Reference only.

cmdb_ci_pcf_route

For example: configuration_item
cmdb_key_value

Reference only.

cmdb_ci_pcf_appl

For example: configuration_item
cmdb_key_value

Reference only.

cmdb_ci_pcf_service

For example: configuration_item
cmdb_key_value

Reference only.

cmdb_ci_pcf_service_plan

For example: configuration_item
cmdb_key_value

Reference only.

cmdb_ci_pcf_space_instance

For example: configuration_item

Pivotal Cloud Foundry BOSH relationships
These relationships are created to support Pivotal Cloud Foundry BOSH extension section
discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2083


<!-- page 2084 -->
CI

Relationship

CI

Cloud Foundry Cluster
[cmdb_ci_pcf_foundation]

Contains::Contained
BOSH Deployment
by
[cmdb_ci_bosh_deployment]

Pure Storage FlashArray discovery
The Discovery and Service Mapping Patterns application uses the Pure Storage Flash Array
pattern to find Pure Storage FlashArray on your infrastructure. Discovering some of these
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.

Note: Starting March 2024, the pattern execution is disabled by default. To create a CI for
Pure Storage FlashArray, synchronize the pattern to the MID Server.
®

Request new or enhanced Patterns on the ServiceNow Store
Visit the ServiceNow Store
to view all the available updates and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the applications are up to date
• Discovery and Service Mapping Patterns
• Visibility Content
Verify the configuration of the credentials
Configure basic authentication credentials to classify FlashArray. For more
information, see basic authentication .
Verify the permissions to run REST API calls
The Pure Storage Flash Array pattern supports the API 2.17 version.
• /api/1.17/auth/apitoken
• /api/2.17/auth/session
• /api/2.17/arrays
• /api/2.17/volumes
• /api/2.17/volume-groups
• /api/2.17/host-groups
• /api/2.17/hardware
• /api/2.17/dns
• /api/2.17/ports

Note: The February 2024 Pure Storage pattern version supports only iSCSI protocol
discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2084


<!-- page 2085 -->
Running Discovery
To run discovery using Patterns, create a discovery schedule that targets the management
IP address of the FlashArray storage. For more information, see Running discoveries in your
network.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Pure Storage Flash Array Pattern.
Storage Server [cmdb_ci_storage_server]
Field

Description

Name [name]

The user-assigned identifier or label for the FlashArray storage.

Serial number
[serial_number]

Serial number that uniquely identifies each individual FlashArray
storage.

Operating System [os]

Operating system running on the FlashArray storage.

OS Version [os_version]

Software version that is installed on the FlashArray storage.

IP Address [ip_address]

IP Address of the FlashArray storage.

Manufacturer
[manufacturer]

Manufacturer name: Pure Storage.

Object ID [object_id]

Credential affinity assigned during discovery to the FlashArray
storage. For more information about credential affinity, see
Credential affinity for Discovery and Orchestration .

Model ID [model_id]

Model ID of the FlashArray storage.

Encryption at rest
[encryption_at_rest]

Encrypted data stored on a physical device or in a database.
Possible values are:
• active
• disable

Encryption algorithm
[encryption_algorithm]

Type of algorithm the storage server employs. Possible values are:
• AES-256: Advanced Encryption Standard (AES) 256 Encryption
• multiple methods: Pure Storage doesn't currently support multiple
methods
• Unknown: If during a previous discovery an algorithm type was
discovered but during the next discovery it isn't discovered, the
value is unknown

Total Free Capacity (GB)
[total_free_capacity]

Total amount of storage space that is currently available for use on
the FlashArray storage system, which is measured in gigabytes (GB).

Physical Capacity (GB)
[physical_capacity]

Total amount of physical storage space available within the
FlashArray system, measured in GB. This capacity includes both
allocated and unallocated storage resources.

Free Physical
Capacity (GB)
[free_physical_capacity]

Available physical storage space within the FlashArray system,
measured in GB.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2085


<!-- page 2086 -->
Storage Server [cmdb_ci_storage_server] (continued)
Field

Description

Used Physical
Used physical storage space within the FlashArray system,
Capacity (GB)
measured in GB.
[used_physical_capacity]
Virtual Capacity (GB)
[virtual_capacity]

Total virtual storage capacity provisioned within the FlashArray
system, measured in GB.

Free Virtual
Capacity (GB)
[free_virtual_capacity]

Available virtual storage capacity within the FlashArray system,
measured in GB.

Used Virtual
Capacity (GB)
[used_virtual_capcity]

Used virtual storage capacity within the FlashArray system,
measured in GB.

Storage Cluster Node [cmdb_ci_storage_cluster_node]
Field

Description

Name [name]

Cluster node name.

Cluster [cluster]

Host group associated with this cluster node in the FlashArray
environment.

Change Group
[assignment_group]

iSCSI or Fibre Channel initiator connections between the
storage and the host.

Manufacturer [manufacturer] Manufacturer name: Pure Storage.
Comments [comments]

All the logical unit numbers (LUN) connected to the cluster node.

Storage Cluster [cmdb_ci_storage_cluster]
Field

Description

Name [name]

Storage cluster name.

Correlation ID
[correlation_id]

Combines the cluster name and the storage's serial number to create a
unique identifier (UID).

Manufacturer
[manufacturer]

Manufacturer name: Pure Storage.

Storage Volume [cmdb_ci_storage_volume]
Field

Description

Name [name]

Volume name.

Serial number [serial_number]

Serial number of the volume.

Volume ID [volume_id]

Volume ID.

Installed [install_date]

Date the volume was installed.

Size bytes [size_bytes]

Volume size in bytes.

Pool ID [pool_id]

ID of the pool containing the volumes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2086


<!-- page 2087 -->
Storage Volume [cmdb_ci_storage_volume] (continued)
Field

Description

Attributes [attributes]

Names of the hosts connected to the volumes.

Manufacturer [manufacturer]

Manufacturer name: Pure Storage.

Storage Pool [cmdb_ci_storage_pool]
Field

Description

Name [name]

Name of the storage pool.

Object ID [object_id]

ID of the storage pool.

Manufacturer [manufacturer]

Manufacturer name: Pure Storage.

Storage Controller [cmdb_ci_storage_controller]
Field

Description

Name [name]

Combination of asset and asset tag.

Model ID [model_id]

Model ID of the controller.

Assigned [assigned]

Availability status.

Device ID [device_id]

A unique label for the controller.

Manufacturer [manufacturer]

Manufacturer name: Pure Storage.

Disk [cmdb_ci_disk]
Field

Description

Name [name]

Spindle ID.

Size bytes
[size_bytes]

Disk size in bytes.

Drive type
[drive_type]

Type of drive installed on the disk.

Device ID
[device_id]

Combination of the storage system serial number with the disk name that
uniquely identifies each disk within the FlashArray environment.

Manufacturer
[manufacturer]

Disk manufacturer.

Network Adapter [cmdb_ci_network_adapter]
Field

Description

Name [name]

Name of the network adapter.

IP Address [ip_address]

IP address of the network adapter.

MAC Address [mac_address]

MAC address of the network adapter.

IP default gateway [ip_default_gateway]

IP address of the default gateway.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2087


<!-- page 2088 -->
Network Adapter [cmdb_ci_network_adapter] (continued)
Field

Description

Alias [alias]

The user-assigned name for the network adapter.

Netmask [netmask]

Netmask of the network adapter.

Fibre Channel Export [cmdb_ci_fc_export]
Field

Description

Initiator WWPN [initiator_wwpn]

UID combining the Director ID, port number, and Initiator ID.

iSCSI Export [cmdb_ci_iscsi_export]
Field

Description

Name [name]

Initiator ID in FlashArray systems, which serves as a UID for the initiator in
the context of iSCSI exports.

Export ID
[export_id]

UID for an iSCSI export within FlashArray systems, facilitating the
management and tracking of iSCSI connections.

Initiator IQN
[initiator_iqn]

iSCSI Qualified Name (IQN) assigned to an initiator in the iSCSI network.

CI relationships
CI

Relationship type

CI

[cmdb_ci_disk]

Contains::Contained by

[cmdb_ci_storage_server]

[cmdb_ci_iscsi_export]

Hosted on::Hosts

[cmdb_ci_storage_server]

[cmdb_ci_iscsi_export]

Reference

[cmdb_ci_storage_cluster_node]

[cmdb_ci_network_adapter]

Owns::Owned by

[cmdb_ci_storage_server]

[cmdb_ci_storage_cluster_node]Cluster of::Cluster

[cmdb_ci_storage_cluster]

[cmdb_ci_storage_controller]

Controller for::Controlled by

[cmdb_ci_storage_server]

[cmdb_ci_storage_server]

Allocated to::Allocated from

[cmdb_ci_storage_cluster_node]

[cmdb_ci_storage_server]

Contains::Contained by

[cmdb_ci_storage_pool]

[cmdb_ci_storage_server]

Runs on::Runs

[cmdb_ci_storage_cluster]

[cmdb_ci_storage_volume]

Contains::Contained by

[cmdb_ci_cluster_node]

[cmdb_ci_storage_volume]

Contains::Contained by

[cmdb_ci_storage_server]

[cmdb_ci_storage_volume]

Reference

[cmdb_ci_storage_pool]

Pure Storage FlashBlade discovery
The ServiceNow Discovery application uses the FlashBlade Pure Storage pattern to find
FlashBlade components. Discovering some of these resources may require updating to the latest
version of the Discovery and Service Mapping Patterns application from the ServiceNow Store.
Discovery can find Pure Storage FlashBlade version 4.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2088


<!-- page 2089 -->
Note:
Only Linux MID Servers are supported for Pure Storage FlashBlade discovery. Windows
MID Servers are not supported.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Configure user permissions for UNIX OS
Configure a user for accessing the UNIX OS.
• Define the OS user with permissions to run the following commands.

Command

Parameter

Mandatory/
Optional

Pureman

-

Mandatory

Accesses the list
of pure storage
commands and
uses them for
classification.

Echo

$$username$$

Mandatory

Fills in the
username for
the temporary
variable.

"pureadmin list "

+ $usr + " --apitoken --expose -csv"

Mandatory

Gets the user API
token to generate
the x-auth for
the REST call
commands.

Description

• Define the OS user with the required permissions to run the following REST API
calls.
◦ /api/login – Gets the x-auth token reader from the response in Groovy.
◦ /api/1.2/file –systems – Retrieves information about the file systems.
◦ /api/1.2/blades – Retrieves information about blades.
◦ /api/1.2/dns – Retrieves information about DNS.
◦ /api/1.2/hardware – Retrieves information about the storage hardware.
◦ /api/1.4/network-interfaces – Retrieves information about network
interfaces.
Configure SSH credentials
On the ServiceNow AI Platform, configure SSH credentials for the OS user. For more
information, see SSH credentials .
Configure applicative credentials
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2089


<!-- page 2090 -->
On the ServiceNow AI Platform, configure applicative credentials for the OS user.
The password field is not relevant; you can enter any value for the password or
leave it empty. For more information, see Applicative credentials .
Access to the port used for REST calls
On relevant Linux MID Servers, provide a user with access to the port used for REST
calls.

Data collected by Discovery for Pure Storage FlashBlade
Discovery populates the data in the CMDB when running the FlashBlade Pure Storage pattern.

Table and field

Description

Storage Server [cmdb_ci_storage_server]

The attributes of the storage server provided
by FileShare for PureBlade.

IP address [ip_address]
Serial number [serial_number]
Name [name]
Pure Storage Processor
[cmdb_ci_storage_processor_pure]

The attributes of the PureBlade storage
processor.

Name [name]
Serial number [serial_number]
Device ID [device_id]
Model number [model_number]
Serial [serial]
Slot [slot]
Type [type]
Status [status]
Pure Storage File Share
[cmdb_ci_storage_fileshare_pure]

The attributes of the storage FileShare.

Name [name]
Path [path]
Protocols [protocols]
Provisioned Space [provisioned_space]
Unique Space [unique_space]
Snapshots Space [snapshots_space]
Total Physical Space [total_physical_space]
Shared space [shared_space]
Data Reduction [data_reduction]
System Space [system_space]
Storage Device [cmdb_ci_storage_device]
Device ID [device_id]

The attributes of the storage device contained
by the storage server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2090


<!-- page 2091 -->
Table and field

Description

Name [name]
Serial number [serial_number]
Model number [model_number]
Storage type [storage_type]
The graphic illustrates CIs that are part of FlashBlade discovery.

CI relationships
Discovery creates these relationships to support the Pure Storage FlashBlade discovery.

CI

Relationship

CI

Pure Storage File Share
Provided By::Provides
[cmdb_ci_storage_fileshare_pure]

Storage Server
[cmdb_ci_storage_server]

Storage Device
[cmdb_ci_storage_device]

Contains::Contained by

Storage Server
[cmdb_ci_storage_server]

Storage Server
[cmdb_ci_storage_server]

Contains::Contained by

Pure Storage Processor
[cmdb_ci_storage_processor_pure]

Red Hat JBoss Fuse discovery
The ServiceNow Discovery and Service Mapping applications can find and map the Fuse
application server using the JBoss Fuse pattern. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Credentials
Configure SSH credentials in the Credentials module of the ServiceNow platform for
accessing the server hosting the Fuse server.
User
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2091


<!-- page 2092 -->
Provide a user with the read rights for accessing the following directories:
• $install_directory + "/readme.txt"
Access to this directory allows getting version information.
• /etc/services
Access to this directory allows reading the hosts service definition.

Data collected by Discovery during horizontal discovery
Table and Field

Description

Jboss Fuse [cmdb_ci_appl_jboss_fuse]
config_directory

The configuration directory of the Fuse server.

config_file

The configuration file of the Fuse server.

install_folder

The installation folder of the Fuse server.

version

The version of the Fuse server.

name

The name configured for the Fuse server
during installation.

Data collected by Service Mapping during top-down discovery
Service Mapping discovers the connection between the JBoss Fuse server and the IBM Informix
Dynamic server.
Rubrik Cluster discovery
Discovery uses multiple patterns to find all Rubrik cluster data. Discovering these resources
requires installing the Discovery and Service Mapping Patterns and the CMDB CI Class Models
applications from the ServiceNow Store, as each application is dependent on the other.
You can use the patterns for discovering the Rubrik components on the ServiceNow AI Platform
using the Paris release or later.

Note: The update applied in version 1.0.78 of the Discovery and Service Mapping Patterns
application resolves an issue of duplicate CI types in the CMDB. If you are using Rubrik
discovery patterns and already installed versions 1.21.0, 1.23.0, 1.24.0 or 1.25.0 of the CMDB
CI Class Models store app (sn_cmdb_ci_class), or versions 1.0.73, 1.0.74, 1.0.75 or 1.0.76 of
the Discovery and Service Mapping Patterns application (sn_itom_pattern), you should
follow the instructions in KB0957523 .
All of the information for the main CI (Rubrik Cluster) and its corresponding CI types is returned
by REST API calls.
Take note of the following limitations:
• Reference fields are not supported due to the Large Payload mechanism limitations in the
Paris and Quebec releases.
• All the entities returned from the Rubrik REST API for Hosts (Servers) with IP addresses not
resolved to hostnames are filtered out (excluded) from the Rubrik discovery. This is done to
prevent the creation of duplicates across the CMDB.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2092


<!-- page 2093 -->
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Discovery and Service Mapping Patterns store app
Deploy the 1.0.73 release or later from the ServiceNow Store.
CMDB CI Class Models store app
Deploy the 1.21.0 release or later from the ServiceNow Store.
Basic Auth permissions
Ensure Basic Auth credentials are configured for authenticating the REST API calls.
Credential aliases associated with the Rubrik credentials of type Basic Auth must
also be created. These aliases serve as input parameters, along with the IP address.
These are used for discovery of all the CI types associated with the Rubrik cluster.
• Security Scheme Type: HTTP
• HTTP Authorization Scheme: basic
MID server
Ensure that the MID server can access the target appliance device.
Create a serverless discovery schedule
Create a serverless discovery schedule to perform targeted discovery of Rubrik
cluster resources.

Note: The Discovery schedule that triggers all the Rubrik related patterns
supports only the serverless discovery type. In addition, for each different
Rubrik cluster (Brik), a different serverless discovery schedule should be
created. The schedule should include the IP address of any of the Rubrik
nodes associated with the Rubrik cluster, and the credential alias associated
with the Rubrik Basic Authentication credential record.
1. Navigate to Discovery > Discovery Schedules.
2. Click New and then fill in the form.
Discovery Schedule form
Field

Description

Name

Name for the Discovery schedule. For
example, Discover Rubrik.

Discover

Discover type.
Select Serverless.

MID Server

Name of the MID Server.

Active

Option for enabling this schedule for
discovery. Select this check box to enable
discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2093


<!-- page 2094 -->
3. Right-click the header of the Discovery Schedule form and select Save.
4. Navigate to Connections & Credential Aliases and create a new Credential
record type. In the Credentials related list form, create a new Basic Auth
credential record type.

Note: The credential alias can be associated with existing credentials.
When creating a credential record you can also associate to it the credential
alias. Click the Credential alias padlock icon in the Connections &
Credential Aliases record type you created above, and associate as
required.

5. Click the Serverless Execution Patterns tab.

6. Ensure the Run Child Patterns column for the Rubrik discovery pattern is set
to true. This triggers all the child patterns associated with the Rubrik discovery
pattern. This is needed due to the Large Payload (LP) mechanism, used for
discovery of the Rubrik cluster and all corresponding CI types.
7. Under Discovery Pattern Launcher Parameters, set the credential_alias and
ip_address parameters, which serve as input parameters for triggering the
Discovery schedule and the associated Rubrik discovery pattern.
Set the ip_address with one of the IP addresses of any of the Rubrik nodes
associated with the Rubrik cluster. Set the credential_alias with the ID of the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2094


<!-- page 2095 -->
Credential record type created in Connections & Credential Aliases, which is
related with the Rubrik credential Basic Auth record type.

Data collected by Discovery during horizontal discovery
Resources discovered by the Rubrik AIX Host (LP) pattern

Field

Description

Rubrik AIX Host [cmdb_ci_aix_server]
name

The name of the host.

host_name

The host name of the host.​

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

os

The operating system type configured on the host.​

os_version

The operating system version, edition or distribution
configured on the host.

operational_status The current operational status of the host.​
Resources discovered by the Rubrik Cluster (LP) pattern

Field

Description

Rubrik Cluster [cmdb_ci_rubrik_cluster]
cluster_id

Unique ID of the Rubrik cluster.

name

The name of the Rubrik cluster.

cluster_version

The current version of the Rubrik cluster.

api_version

The API version of the Rubrik cluster.

timezone

The timezone used by the Rubrik cluster.

The Dependency Views map shows discovered cluster resources and the
relationships between them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2095


<!-- page 2096 -->
Resources discovered by the Rubrik EC2 Instance (LP) pattern

Field

Description

Rubrik EC2 Instance [cmdb_ci_rubrik_vm_instance]
object_id

The ID of the EC2 instance in the Rubrik context.

name

The name of the EC2 instance in the AWS context.​

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

effective_sla_domain

The ID of the Rubrik SLA Domain.​

effective_sla_domain_name The name of the Rubrik SLA Domain. See also:
[cmdb_ci_rubrik_sla_domain]
account_id

The ID of the AWS account associated with the EC2
instance.​

account_name

The name of the AWS account associated with the
EC2 instance.​

instance_id

The ID of the EC2 instance in the AWS context.

instance_name

The name of the EC2 instance in the Rubrik context.​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2096


<!-- page 2097 -->
Field

Description

instance_type

The template type of the EC2 instance.​

region

The geographical region where the EC2 instance is
located, in the AWS context.

The Dependency Views map shows discovered EC2 instances and the relationships
between them.

Resources discovered by the Rubrik Fileset (LP) pattern

Field

Description

Rubrik Fileset [cmdb_ci_rubrik_fileset]
object_id

The ID of the Rubrik Fileset.

name

The name of the Rubrik Fileset.

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

effective_sla_domain

The ID of the Rubrik SLA Domain.​

effective_sla_domain_name The name of the Rubrik SLA Domain. See also:
[cmdb_ci_rubrik_sla_domain]
host_id

The ID of the host with which the Rubrik Fileset is
associated.​

template_id

The ID of the Rubrik Fileset Template, where the
Rubrik Fileset defines resources from.​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2097


<!-- page 2098 -->
Field

Description

share_id

The ID of the Rubrik Share owning the Rubrik Fileset.

The Dependency Views map shows discovered filesets and the relationships
between them.

Resources discovered by the Rubrik Fileset Template (LP) pattern

Field

Description

Rubrik Fileset Template [cmdb_ci_rubrik_fileset_template]
object_id

The ID of the Rubrik Fileset Template.

name

The name of the Rubrik Fileset Template.

cluster_id

The ID of the Rubrik cluster.​

cluster_name The name of the Rubrik cluster. See also: [cmdb_ci_rubrik_cluster]
share_count

The count of shares associated with the Rubrik Fileset Template.​

share_type

The type of shares associated with the Rubrik Fileset Template.

host_count

The host count associated with the Rubrik Fileset Template.

os_type

The operating system type associated with the Rubrik Fileset
Template.

The Dependency Views map shows discovered fileset templates and the
relationships between them.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2098


<!-- page 2099 -->
Resources discovered by the Rubrik Hyper-V Instance (LP) pattern

Note: Discovery of Hyper-V instances only updates existing CIs. This is due
to a limitation in the Rubrik REST API not returning the GUID (object_id) of the
Hyper-V instance. If there is no match between the data from the REST API and
the CMDB, no CIs are updated. In addition, when there is no match, the Rubrik
Hyper-V Instance (LP) pattern completes in an ‘Error’ state, which is expected
behavior.

Field

Description

Rubrik Hyper-V Instance [cmdb_ci_hyper_v_instance]
name

The name of the Hyper-V instance.​

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

effective_sla_domain

The ID of the Rubrik SLA Domain.​

effective_sla_domain_name The name of the Rubrik SLA Domain. See also:
[cmdb_ci_rubrik_sla_domain]
host_id

The ID of the host to which the Hyper-V instance is
associated.​

The Dependency Views map shows discovered Hyper-V instances and the
relationships between them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2099


<!-- page 2100 -->
Resources discovered by the Rubrik Linux Host (LP) pattern

Field

Description

Rubrik Linux Host [cmdb_ci_linux_server]
name

The name of the host.

host_name

The host name of the host.​

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

os

The operating system type configured on the host.​

os_version

The operating system version, edition or distribution
configured on the host.

operational_status The current operational status of the host.​
The Dependency Views map shows discovered hosts and the relationships
between them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2100


<!-- page 2101 -->
Resources discovered by the Rubrik Managed Volume (LP) pattern

Field

Description

Rubrik Managed Volume [cmdb_ci_storage_volume]
object_id

The ID of the managed storage volume.

volume_id

The volume ID of the managed storage volume.

name

The name of the managed storage volume.

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

effective_sla_domain

The ID of the Rubrik SLA Domain.​

effective_sla_domain_name The name of the Rubrik SLA Domain. See also:
[cmdb_ci_rubrik_sla_domain]
size_bytes

The total capacity size in bytes of the storage
volume.​

used_size_bytes

The total used capacity size in bytes.

snapshot_count

The snapshot count of the managed storage volume.​

share_type

The shared type of the managed storage volume.

state

The state of the managed storage volume.

The Dependency Views map shows discovered managed storage instances and the
relationships between them.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2101


<!-- page 2102 -->
Resources discovered by the Rubrik MS SQL DB (LP) pattern

Note: Relationships between MS SQL instances hosted on Windows clusters
and the associated MS SQL databases are not supported from the 1.0.79
release onwards of the Discovery and Service Mapping Patterns application.
This is due to insufficient information returned from the Rubrik REST API for
Windows clusters. The MS SQL Instances and MS SQL databases associated
to Windows clusters are filtered out from the Rubrik discovery associated
patterns.

Field

Description

Rubrik MS SQL DB [cmdb_ci_db_mssql_database]
database

The ID of the MS SQL database.

name

The name of the MS SQL database.​

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

effective_sla_domain

The ID of the Rubrik SLA Domain.​

effective_sla_domain_name The name of the Rubrik SLA Domain. See also:
[cmdb_ci_rubrik_sla_domain]
host_id

The ID of the host where the MS SQL database is
running.

instance_id

The ID of the database instance, to which the MS
SQL database is associated.​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2102


<!-- page 2103 -->
Field

Description

state

The state of the MS SQL database.​

recovery_model

The recovery model type of the MS SQL database.

last_snapshot

The last snapshot of the MS SQL database, in the
format YY-MM-DD HH-MM-SS.

missed_snapshot_count

The missed snapshot count of the MS SQL
database.

The Dependency Views map shows discovered MS SQL DBs and the relationships
between them.

Resources discovered by the Rubrik MS SQL Instance (LP) pattern

Note: Relationships between MS SQL instances hosted on Windows clusters
and the associated MS SQL databases are not supported from the 1.0.79
release onwards of the Discovery and Service Mapping Patterns application.
This is due to insufficient information returned from the Rubrik REST API for
Windows clusters. The MS SQL Instances and MS SQL databases associated
to Windows clusters are filtered out from the Rubrik discovery associated
patterns.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2103


<!-- page 2104 -->
Field

Description

Rubrik MS SQL Instance [cmdb_ci_db_mssql_instance]
instance_name The ID of the MS SQL instance.​
name

The name of the MS SQL instance.

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

host_id

The ID of the host with which the MS SQL instance is associated.​

version

The version of the MS SQL instance.

The Dependency Views map shows discovered MS SQL instances and the
relationships between them.

Resources discovered by the Rubrik NAS Host (LP) pattern

Field

Description

Rubrik NAS Host [cmdb_ci_nas_storage]
name

The name of the host.

host_name

The host name of the host.​

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

short_description

The vendor type of the NAS storage.​

operational_status The current operational status of the host.​
The Dependency Views map shows discovered hosts and the relationships
between them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2104


<!-- page 2105 -->
Resources discovered by the Rubrik Node (LP) pattern

Field

Description

Rubrik Node [cmdb_ci_rubrik_node]
brik_id

The Chassis ID of the Rubrik node.

name

The unique name of the Rubrik node, serving as the ID of
the Rubrik node.

cluster_id

The ID of the Rubrik cluster.

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

unavailable_disks

True / False. Indicates any unavailable disks on the
Rubrik node,

ip_address

The IP address of the Rubrik node associated with the
Rubrik cluster.

tunnel_enabled

True / False. Indicates if tunneling is enabled for the
Rubrik node.

cpu_core_count

The CPU cores count of the Rubrik node.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2105


<!-- page 2106 -->
Field

Description

ram

The amount of RAM memory (in MB) allocated for the
Rubrik node.

[cmdb_ci_rubrik_node_disk]
node_name

The name of the Rubrik node to which the disk is
associated.

device_id

The ID of the Rubrik node disk, concatenated with the
Rubrik node name in the format ID@NODE_NAME.

name

The name of the disk associated with the Rubrik node.
The name includes the concatenation of the Rubrik node
name, the ID of the disk and the type of the disk, in the
format NODE_NAME@DISK_ID@DISK_TYPE.

size_bytes

The total capacity size in bytes.​

unallocated_size_bytes The total unallocated capacity size in bytes.​
usable_size_bytes

The total available capacity size in bytes.

storage_type

The type of the storage disk: SSD or HDD.

storage_path

The location path of the storage disk.​

operational_status

The operational status of the storage disk.​

The Dependency Views map shows discovered nodes and node disks, and the
relationships between them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2106


<!-- page 2107 -->
Resources discovered by the Rubrik Nutanix Instance (LP) pattern

Field

Description

Rubrik Nutanix Instance [cmdb_ci_nutanix_vm_instance]
object_id

The ID of the Nutanix VM instance.

vm_inst_id

The ID of the Nutanix VM instance.

name

The name of the Nutanix VM instance.​

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

effective_sla_domain

The ID of the Rubrik SLA Domain.​

effective_sla_domain_name The name of the Rubrik SLA Domain. See also:
[cmdb_ci_rubrik_sla_domain]
vm_cluster_id

The cluster ID to which the Nutanix VM instance
belongs.

vm_cluster_name

The cluster name to which the Nutanix VM instance
belongs.

os_type

The operating system type configured on the
Nutanix VM instance.

The Dependency Views map shows discovered Nutanix instances and the
relationships between them.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2107


<!-- page 2108 -->
Resources discovered by the Rubrik Oracle DB (LP) pattern

Field

Description

Rubrik Oracle DB [cmdb_ci_db_ora_instance]
sid

The Oracle system ID of the database.​

name

The ID of the Oracle database in the Rubrik context.

database_name

The name of the Oracle database.

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

effective_sla_domain

The ID of the Rubrik SLA Domain.​

effective_sla_domain_name The name of the Rubrik SLA Domain. See also:
[cmdb_ci_rubrik_sla_domain]
rac_id

The ID of the Oracle RAC (Real Application Cluster),
to which the database is part of.​

host_id

The ID of the host, where the Oracle database is
running.​

instance

The Oracle instance ID managing the database
associated data.

Instance_count

The Oracle instances count managing the database
associated data.​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2108


<!-- page 2109 -->
Field

Description

last_snapshot

The last snapshot of the Oracle database, in the
format YY-MM-DD HH-MM-SS.

missed_snapshot_count

The missed snapshot count of the Oracle database.​

tablespaces_count

The count of the logical storage units associated
with the Oracle database.

The Dependency Views map shows discovered Oracle DBs and the relationships
between them.

Resources discovered by the Rubrik Oracle RAC (Real Application Cluster) (LP) pattern

Field

Description

Rubrik Oracle RAC [cmdb_ci_rubrik_db_ora_rac]
object_id

The ID of the Rubrik Oracle RAC.​

name

The name of the Rubrik Oracle RAC.

cluster_id

The ID of the Rubrik cluster.​

cluster_name The name of the Rubrik cluster. See also: [cmdb_ci_rubrik_cluster]
db_count

The count of databases associated with the Rubrik Oracle RAC.

node_count

The count of the nodes participating in the Rubrik Oracle RAC.

state

The state of the Rubrik Oracle RAC.​

The Dependency Views map shows discovered Oracle RACs and the relationships
between them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2109


<!-- page 2110 -->
Resources discovered by the Rubrik Share (LP) pattern

Field

Description

Rubrik Share [cmdb_ci_storage_fileshare]
name

The ID of the host share.

path

The export point of the host share.

cluster_id

The ID of the Rubrik cluster.​

cluster_name The name of the Rubrik cluster. See also: [cmdb_ci_rubrik_cluster]
host_id

The ID of the host with which the host share is associated.​

share_type

The share type of the host share.​

vendor_type

The vendor type of the host share.​

status

The current state of the host share.​

The Dependency Views map shows discovered host shares and the relationships
between them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2110


<!-- page 2111 -->
Resources discovered by the Rubrik SLA Domain (LP) pattern

Field

Description

Rubrik SLA Domain [cmdb_ci_rubrik_sla_domain]
object_id

The ID of the Rubrik SLA domain policy.​

name

The name of the Rubrik SLA domain policy.​

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

max_local_retention_limit The maximum local retention limit of the SLA domain
policy.​
The Dependency Views map shows discovered SLA domains and the relationships
between them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2111


<!-- page 2112 -->
Resources discovered by the Rubrik Solaris Host (LP) pattern

Field

Description

Rubrik Solaris Host [cmdb_ci_solaris_server]
name

The name of the host.

host_name

The host name of the host.​

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

os

The operating system type configured on the host.​

os_version

The operating system version, edition or distribution
configured on the host.

operational_status The current operational status of the host.​
Resources discovered by the Rubrik VMware Instance (LP) pattern

Note: Discovery of VMware instances only updates existing CIs. This is
because the regular vCenter discovery does not use the IRE (Identification
and Reconciliation Engine) and the Rubrik VMware pattern will create
duplicates. If there is no match between the data from the REST API and the
CMDB, no CIs are updated. In addition, when there is no match, the Rubrik
VMware Instance (LP) pattern completes in an ‘Error’ state, which is expected
behavior.

Field

Description

Rubrik VMware Instance [cmdb_ci_vmware_instance]
object_id

The ID of the VMware instance.

name

The name of the VMware instance.​

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

effective_sla_domain

The ID of the Rubrik SLA Domain.​

effective_sla_domain_name The name of the Rubrik SLA Domain. See also:
[cmdb_ci_rubrik_sla_domain]
host_id

The ID of the VMware host.​

host_name

The name of the VMware host.​

vm_cluster_name

The cluster name to which the virtual machine
instance belongs.​

ip_address

The IP address of the VMware instance, if assigned.​

guest_os_fullname

The guest operating system type.​

state

The state of the VMware instance.​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2112


<!-- page 2113 -->
The Dependency Views map shows discovered VMware instances and the
relationships between them.

Resources discovered by the Rubrik Volume Group (LP) pattern

Field

Description

Rubrik Volume Group [cmdb_ci_rubrik_volume_group]
object_id

The ID of the volume group.

volume_id

The volume ID of the volume group.​

name

The name of the volume group.

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

effective_sla_domain

The ID of the Rubrik SLA Domain.​

effective_sla_domain_name The name of the Rubrik SLA Domain. See also:
[cmdb_ci_rubrik_sla_domain]
host_id

The ID of the host with which the volume group is
associated.​

The Dependency Views map shows discovered volume groups and the
relationships between them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2113


<!-- page 2114 -->
Resources discovered by the Rubrik Windows Host (LP) pattern

Field

Description

Rubrik Windows Host [cmdb_ci_win_server]
name

The name of the host.

host_name

The host name of the host.​

cluster_id

The ID of the Rubrik cluster.​

cluster_name

The name of the Rubrik cluster. See also:
[cmdb_ci_rubrik_cluster]

os

The operating system type configured on the host.​

os_version

The operating system version, edition or distribution
configured on the host.

operational_status The current operational status of the host.​
The Dependency Views map shows discovered hosts and the relationships
between them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2114


<!-- page 2115 -->
CI relationships
Relationships discovered using the Rubrik AIX Host (LP) pattern

CI

Relationship

CI

cmdb_ci_aix_server

Managed by::Manages

cmdb_ci_rubrik_cluster

Relationships discovered using the Rubrik EC2 Instance (LP) pattern

CI

Relationship

CI

cmdb_ci_rubrik_vm_instance Managed
by::Manages

cmdb_ci_rubrik_cluster

cmdb_ci_rubrik_vm_instance Protected
by::Protects

cmdb_ci_rubrik_sla_domain

Relationships discovered using the Rubrik Fileset (LP) pattern
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2115


<!-- page 2116 -->
CI

Relationship

CI

cmdb_ci_server

Owns::Owned by

cmdb_ci_rubrik_fileset

cmdb_ci_storage_fileshare

Owns::Owned by

cmdb_ci_rubrik_fileset

cmdb_ci_rubrik_fileset_template Defines resources cmdb_ci_rubrik_fileset
for::Gets
resources from
cmdb_ci_rubrik_fileset

Managed
by::Manages

cmdb_ci_rubrik_cluster

cmdb_ci_rubrik_fileset

Protected
by::Protects

cmdb_ci_rubrik_sla_domain

cmdb_ci_nas_storage

Owns::Owned by

cmdb_ci_rubrik_fileset

Relationships discovered using the Rubrik Fileset Template (LP) pattern

CI

Relationship

CI

cmdb_ci_rubrik_fileset_template Managed by::Manages cmdb_ci_rubrik_cluster
Relationships discovered using the Rubrik Hyper-V Instance (LP) pattern

CI

Relationship

CI

cmdb_ci_hyper_v_instance Managed by::Manages cmdb_ci_rubrik_cluster
cmdb_ci_hyper_v_instance Protected by::Protects

cmdb_ci_rubrik_sla_domain

Relationships discovered using the Rubrik Linux Host (LP) pattern

CI

Relationship

CI

cmdb_ci_linux_server

Managed by::Manages

cmdb_ci_rubrik_cluster

Relationships discovered using the Rubrik Managed Volume (LP) pattern

CI

Relationship

CI

cmdb_ci_storage_volume

Managed by::Manages

cmdb_ci_rubrik_cluster

cmdb_ci_storage_volume

Protected by::Protects

cmdb_ci_rubrik_sla_domain

Relationships discovered using the Rubrik MS SQL DB (LP) pattern

CI

Relationship

CI

cmdb_ci_db_mssql_database Managed
by::Manages

cmdb_ci_rubrik_cluster

cmdb_ci_db_mssql_database Protected
by::Protects

cmdb_ci_rubrik_sla_domain

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2116


<!-- page 2117 -->
CI

Relationship

CI

cmdb_ci_db_mssql_instance

Contains::Contained cmdb_ci_db_mssql_database
by

Relationships discovered using the Rubrik MS SQL Instance (LP) pattern

CI

Relationship

CI

cmdb_ci_db_mssql_instance

Managed by::Manages

cmdb_ci_rubrik_cluster

cmdb_ci_db_mssql_instance

Runs on::Runs

cmdb_ci_server

Relationships discovered using the Rubrik NAS Host (LP) pattern

CI

Relationship

CI

cmdb_ci_nas_storage

Managed by::Manages

cmdb_ci_rubrik_cluster

Relationships discovered using the Rubrik Node (LP) pattern

CI

Relationship

CI

cmdb_ci_rubrik_node

Cluster of::Cluster

cmdb_ci_rubrik_cluster

cmdb_ci_rubrik_node

Uses::Used by

cmdb_ci_rubrik_node_disk

Relationships discovered using the Rubrik Nutanix Instance (LP) pattern

CI

Relationship

CI

cmdb_ci_nutanix_vm_instance Managed
by::Manages

cmdb_ci_rubrik_cluster

cmdb_ci_nutanix_vm_instance Protected
by::Protects

cmdb_ci_rubrik_sla_domain

Relationships discovered using the Rubrik Oracle DB (LP) pattern

CI

Relationship

CI

cmdb_ci_db_ora_instance Managed by::Manages cmdb_ci_rubrik_cluster
cmdb_ci_db_ora_instance Protected by::Protects

cmdb_ci_rubrik_sla_domain

cmdb_ci_db_ora_instance Runs on::Runs

cmdb_ci_server

cmdb_ci_db_ora_instance Cluster of::Cluster

cmdb_ci_rubrik_db_ora_rac

Relationships discovered using the Rubrik Oracle RAC (LP) pattern

CI

Relationship

CI

cmdb_ci_rubrik_db_ora_rac

Managed by::Manages

cmdb_ci_rubrik_cluster

Relationships discovered using the Rubrik Share (LP) pattern
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2117


<!-- page 2118 -->
CI

Relationship

CI

cmdb_ci_storage_fileshare

Managed by::Manages

cmdb_ci_nas_storage

cmdb_ci_storage_fileshare

Managed by::Manages

cmdb_ci_rubrik_cluster

Relationships discovered using the Rubrik SLA Domain (LP) pattern

CI

Relationship

CI

cmdb_ci_rubrik_sla_domain

Managed by::Manages

cmdb_ci_rubrik_cluster

Relationships discovered using the Rubrik Solaris Host (LP) pattern

CI

Relationship

CI

cmdb_ci_solaris_server

Managed by::Manages

cmdb_ci_rubrik_cluster

Relationships discovered using the Rubrik VMware Instance (LP) pattern

CI

Relationship

CI

cmdb_ci_vmware_instance Managed by::Manages cmdb_ci_rubrik_cluster
cmdb_ci_vmware_instance Protected by::Protects

cmdb_ci_rubrik_sla_domain

Relationships discovered using the Rubrik Volume Group (LP) pattern

CI

Relationship

CI

cmdb_ci_rubrik_volume_group Managed
by::Manages

cmdb_ci_rubrik_cluster

cmdb_ci_rubrik_volume_group Protected
by::Protects

cmdb_ci_rubrik_sla_domain

cmdb_ci_server

Owns::Owned by cmdb_ci_rubrik_volume_group

Relationships discovered using the Rubrik Windows Host (LP) pattern

CI

Relationship

CI

cmdb_ci_win_server

Managed by::Manages

cmdb_ci_rubrik_cluster

Veritas Cluster Server discovery
The ServiceNow Discovery application uses the Unix Cluster – VERITAS Cluster pattern to
find Veritas Cluster Server components. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.
You can use this pattern on the ServiceNow AI Platform using Kingston Patch 8, London, or
Madrid.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2118


<!-- page 2119 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
SSH credentials
®

On the ServiceNow AI Platform , configure the SSH credentials for a user with
elevated rights for running the cat command. For more information about
commands, see Service Mapping commands requiring a privileged user under
Service Mapping documentation.
Permissions to read the Veritas Cluster Server configuration file
Give the Unix OS user permissions to read the following configuration file: /etc/
VRTSvcs/conf/config/main.cf.
Permissions to run Veritas Cluster commands
Give the Unix OS user permissions to run the following commands against the
Veritas Cluster Server:

Command

Parameter

Mandatory/Optional Description

“privilege user” +
cat /etc/VRTSvcs/
conf/config/
main.cf

-

Mandatory

Read the Veritas
Cluster Server
configuration file.

“privilege user”
+ /opt/VRTSvcs/
bin/haclus -value
ClusterUUID
2>/dev/null

-

Mandatory

Get the Veritas
Cluster Server
cluster UUID.

“privilege user”
+ /opt/VRTSvcs/
bin/haclus -value
ClusterName
2>/dev/null

-

Mandatory

Get the Veritas
Cluster Server
cluster name.

“privilege user”
+ /opt/VRTSvcs/
bin/haclus -value
EngineVersion

-

Mandatory

Get the Veritas
Cluster Server
cluster version.

“privilege user”
+ /opt/VRTSvcs/
bin/haclus -value
ClusterAddress

-

Mandatory

Get the Veritas
Cluster Server
cluster address.

“privilege user”
+ /opt/VRTSvcs/
bin/haclus -value
ClusState

-

Mandatory

Get the Veritas
Cluster Server
cluster status.

“privilege user” + /
opt/VRTSvcs/bin/
hasys -state

-

Mandatory

Get the Veritas
Cluster Server
cluster nodes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2119


<!-- page 2120 -->
Command

Parameter

Mandatory/Optional Description

“privilege user” + /
opt/VRTSvcs/bin/
hares -state

-

Mandatory

Get the cluster
resources of the
Veritas Cluster
Server.

“privilege user”
+ /opt/VRTSvcs/
bin/hares -display |
grep -w 'Type' |grep
'global' 2>/dev/null

Mandatory

Get the cluster
resource type of
the Veritas Cluster
Server.

“privilege user”
+ /opt/VRTSvcs/
bin/hares -display
| grep Group
2>/dev/null

-

Mandatory

Get the cluster
resource group of
the Veritas Cluster
Server.

“privilege user”
+ /opt/VRTSvcs/
bin/hagrp -state
2>/dev/null

-

Mandatory

Get the resource
group name and
status of the
Veritas Cluster
Server.

Classification probe for triggering the UNIX Cluster – VERITAS Cluster pattern
Verify that the classification probe is set to trigger the UNIX Cluster – VERITAS
Cluster pattern:
1. Navigate to Discovery Definition > CI Classification > CI Classification > UNIX.
2. In the UNIX Classification list, click Solaris or Linux.
3. On the Triggers probes tab, check that the HorizontalDiscoveryProbeHorizontalPatt probe is assigned to the UNIX Cluster – VERITAS
Cluster pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2120


<!-- page 2121 -->
Note: The discovery log shows the error for OS discovery step even if the
discovery finished successfully.
System property for the new host class
Add a system property [sys_property] sa.host_classes and set the value to
cmdb_ci_unix_cluster. Creating a new host class for Veritas Cluster servers helps to
identify this type of hosts correctly.

Limitations
You cannot customize the Unix Cluster – VERITAS Cluster pattern in the Debug mode in the
Pattern Designer.

Data collected by Discovery during horizontal discovery
Table and field

Description

Unix Cluster [cmdb_ci_unix_cluster]

The attributes of the Unix Cluster.

IP address [ip_address]
Cluster type [cluster_type]
Name [name]
Cluster version [cluster_version]
Cluster status [cluster_status]
Unix Cluster Node
[cmdb_ci_unix_cluster_node]

The attributes of the Unix Cluster Node.

Name [name]
Cluster [cluster]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2121


<!-- page 2122 -->
Table and field

Description

Server [server]
Node state [node_status]
IP address [ip_address]
UNIX Cluster Resource Group
[cmdb_ci_unix_cluster_resource_group]

The attributes of the UNIX Cluster Resource
Group.

Name [name]
Node [node]
Server [server]
Cluster [cluster]
Resource group status
[resource_group_status]
UNIX Cluster Resource
[cmdb_ci_unix_cluster_resource]

The attributes of the UNIX Cluster Resource.

Resource type [resource_type]
Name [name]
Resource status [resource_status]
Cluster Virtual IPs [cmdb_ci_cluster_vip]
IP address [ip_address]

The attributes of the Cluster Virtual IP
addresses.

name [name]
Cluster [cluster]
Cluster status [cluster_status]
Node [node]
The graphic illustrates CIs that are part of Veritas Cluster Server discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2122


<!-- page 2123 -->
CI relationships
The Unix Cluster – VERITAS Cluster pattern creates the following CI relationships:

CI

Relationship

CI

Unix Cluster [cmdb_ci_unix_cluster]

Hosts: Hosted on

Linux Server
[cmdb_ci_linux_server]

Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Hosts: Hosted on

Linux Server
[cmdb_ci_linux_server]

Cluster Virtual IPs
[cmdb_ci_cluster_vip]

Virtualized by:
Virtualized

Unix Cluster
[cmdb_ci_unix_cluster]

Cluster Virtual IPs
[cmdb_ci_cluster_vip]

Uses: Used by

Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Cluster of: Cluster

Unix Cluster
[cmdb_ci_unix_cluster]

Unix Cluster resource
[cmdb_ci_unix_cluster_resource]

Defines resources
for: Gets resources
from

Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Unix Cluster resource
[cmdb_ci_unix_cluster_resource]

Defines resources
for: Gets resources
from

The Cluster field on
[cmdb_ci_unix_cluster]

Unix Cluster resource group
Contains:
[cmdb_ci_unix_cluster_resource_group ] Contained by

The Cluster field on UNIX Cluster
[cmdb_ci_unix_cluster]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2123


<!-- page 2124 -->
CI

Relationship

CI

Unix Cluster resource group
Contains:
[cmdb_ci_unix_cluster_resource_group ] Contained by

The Node field on
Unix Cluster Node
[cmdb_ci_unix_cluster_node]

Unix Cluster resource group
Contains:
[cmdb_ci_unix_cluster_resource_group ] Contained by

Unix Cluster resource
[cmdb_ci_unix_cluster_resource]

VMware NSX Advanced load balancer discovery
The ServiceNow Discovery application uses the VMware NSX Advanced load balancer discovery
pattern to find VMware NSX load balancers. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.
The pattern uses a set of REST APIs to find the load balancers. It is triggered by the NSX HTTP
classifier that responds to the HTTP - Classify probe. For more information, see HTTP device
discovery.

Note: There are two patterns available. The legacy VMware NSX Load Balancer pattern
is for the S series. The new VMware NSX-T Load Balancer pattern is for the T series. The
functionality and collected information remain the same.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Enable NSX Basic Authentication
In VMware NSX, enable NSX Basic Authentication.
Verify that the applications are up to date
• CMDB CI Class Models
• Visibility Content
• Discovery and Service Mapping Patterns
Configure basic authentication credentials
On the ServiceNow AI Platform, configure basic authentication credentials. The
credentials must have the following API permissions:
• NSX:
◦ /api/4.0/edges
◦ /api/4.0/edges/<edge_id>loadbalancer/config
• NSX-T: /api/v1/edge-clusters
For more information about basic authentication credentials, see Basic
authentication credentials .
Verify HTTP discovery is triggered against the NSX Main Controller IP
The HTTP discovery is triggered only if SSH or SNMP discovery is unsuccessful.
Create a discovery schedule
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2124


<!-- page 2125 -->
Create the discovery schedule for VMware NSX load balancer discovery or run a
quick discovery on the IP address of the NSX Main Controller. For more information
about running a quick discovery, see Run a Quick Discovery.

Data collected by Discovery for VMware NSX Advanced load balancer
Discovery populates the data in the CMDB when running the VMware NSX Advanced load
balancer patterns.
NSX Load Balancer [cmdb_ci_nsx_lb]
Field

Description

Name [name]

Edge name.

Object ID [object_id]

Edge ID.

IP Address [ip_address]

IP address of the NSX Main Controller.

Operational status [operational_status]

Load balancer status: Active or inactive.

Load Balancer Service [cmdb_ci_lb_service]
Field

Description

Name [name]

Virtual server name.

IP Address [ip_address]

Virtual server IP address.

Object ID [object_id]

Virtual server object ID.

Port [port]

Virtual server port with which to communicate.

Listener Protocol [listener_protocol]

Listener protocol. For example: HTTP, HTTPS.

Load Balancer Pool [cmdb_ci_lb_pool]
Field

Description

Name [name]

Pool name.

Object ID [object_id]

Pool object ID.

Load Balancer Pool Member [cmdb_ci_lb_pool_member]
Field

Description

Name [name]

Pool member name.

IP Address [ip_address]

Pool member IP address.

Object ID [object_id]

Pool member object ID.

Service port [service_port]

Pool member port with which to communicate.

Cloud Load Balancer Health Service [cmdb_ci_lb_health_service]
Field

Description

Name [name]

Monitor name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2125


<!-- page 2126 -->
Cloud Load Balancer Health Service [cmdb_ci_lb_health_service] (continued)
Field

Description

Object ID [object_id]

Monitor object ID.

Timeout in seconds
[timeout_sec]

Time in seconds to wait for a response.

Interval in seconds
[check_interval_sec]

Interval in seconds after which the monitor sends the request
again.

Monitor type protocol
[monitor_type]

Monitor type. For example: HTTP, HTTPS, TCP.

Request path [request_path]

Path where the monitor sends the request.

Max retries [max_retries]

The maximum number of times the resource is tested before it
is declared "Down".

The Dependency Views map shows all discovered load balancer CIs and the relationships
between them.

CI relationships
Discovery creates these relationships to support the VMware NSX load balancer discovery.

CI

Relationship

CI

Load Balancer Service
[cmdb_ci_lb_service]

Runs on::Runs

NSX Load Balancer
[cmdb_ci_nsx_lb]

Load Balancer Service
[cmdb_ci_lb_service]

Uses::Used by

Load Balancer Pool
[cmdb_ci_lb_pool]

Load Balancer Pool
[cmdb_ci_lb_pool]

Hosted on::Hosts

NSX Load Balancer
[cmdb_ci_nsx_lb]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2126


<!-- page 2127 -->
CI

Relationship

CI

Load Balancer Pool
[cmdb_ci_lb_pool]

Owns::Owned by

Load Balancer Pool Member
[cmdb_ci_lb_pool_member]

Cloud Load Balancer
Health Service
[cmdb_ci_lb_health_service]

Hosted on::Hosts

NSX Load Balancer
[cmdb_ci_nsx_lb]

Cloud Load Balancer
Health Service
[cmdb_ci_lb_health_service]

Used by::Uses

Load Balancer Pool
[cmdb_ci_lb_pool]

Troubleshooting
If the mapping process does not proceed as you expected, follow the following suggestions.

Symptom

Cause

Solution

Discovery fails. The discovery
message contains the
information about an error
caused by the REST timeout.

There are many CIs sending
the REST call response in the
deployment. The MID Server
cannot process the REST call
response without exceeding
the time limit controlled by the

By default, the

mid.sa.cloud.request_timeout
parameter is set to 30000
milliseconds.

Increase the value of this
parameter on the relevant
mid.sa.cloud.request_timeout
MID Server and run discovery
parameter.
again.

Note: If the

Configuration
Parameters related list
for the relevant MID
Server does not show
this parameter, you may
need to add it.
Pattern Designer fails during
a debug session. The Pattern
Designer message contains
information about an error
caused by a timeout.

The Pattern Designer fails
because of a timeout during
pattern debugging (and not
during discovery).

By default, the

sa.debugger.max_timeoutparameter
is set to 240 seconds.
Increase the value of this
parameter on the relevant MID
Server.

Available cloud discovery patterns
ITOM Visibility comes with an extensive library of patterns that can discover your cloud
environment: AWS, Azure, GCP, IBM, and OCI.
ServiceNow releases new discovery patterns on the ServiceNow Store
on a monthly basis to
ensure that your organization can discover the latest industry-standard devices and applications.
Major ServiceNow versions incorporate patterns previously released on the ServiceNow Store.
For a complete list of devices and applications that ITOM Visibility can discover, see Detailed
information on products discovered by ITOM Visibility.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2127


<!-- page 2128 -->
Alibaba Cloud discovery using patterns
Discovery and Service Mapping Patterns uses patterns to discover components of the Alibaba
Cloud deployment during horizontal discovery. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the applications are up to date
• Discovery and Service Mapping Patterns
• CMDB CI Class Models
• Visibility Content
Create Alibaba Cloud credentials
For more information, see Create Alibaba Cloud API Credentials.
Create an Alibaba Cloud service account
For more information, see Set up Alibaba Cloud service accounts.
Schedule an Alibaba Cloud discovery
For more information, see Create a Discovery Schedule for Alibaba Cloud.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.
Related topics
Discovery for Alibaba Cloud
Alibaba Cloud availability zone pattern-based discovery
Discovery and Service Mapping Patterns uses the Alibaba - Availability Zone (LP) pattern to
discover availability zones during horizontal discovery. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Alibaba Cloud discovery prerequisites section in Alibaba Cloud discovery using
patterns.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Alibaba - Availability Zone (LP)
pattern.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2128


<!-- page 2129 -->
Availability Zone [cmdb_ci_availability_zone]
Field

Description

Name [name]

Zone ID of the Alibaba Cloud availability zone.

Object ID [object_id]

Zone ID of the Alibaba Cloud availability zone.

Install Status [install_status]

Install status of the availability zone. Default value is Installed.

CI relationships
Discovery creates these relationships to support the availability zone discovery.

CI

Relationship

CI

Alibaba Datacenter
[cmdb_ci_alibaba_datacenter]

Contains::Contained Availability Zone
by
[cmdb_ci_availability_zone]

Alibaba Cloud cloud hardware type pattern-based discovery
Discovery and Service Mapping Patterns uses the Alibaba - Cloud Hardware Type (LP) pattern to
discover cloud hardware types during horizontal discovery. Discovering some of these resources
may require updating to the latest version of the Discovery and Service Mapping Patterns
application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Alibaba Cloud discovery prerequisites section in Alibaba Cloud discovery using
patterns.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Alibaba - Cloud Hardware Type (LP)
pattern.
Cloud Hardware Type [cmdb_ci_cloud_hardware_type]
Field

Description

Object ID [object_id]

ID of the instance type.

vCPUs [vcpus]

Number of virtual central processing units (vCPUs).

Memory MB [memory_mb]

Memory size in megabytes (MB).

Local Storage GB [local_storage_gb]

Capacity of each local disk in gigabytes (GB).

Name [name]

Image name.

Provider [provider]

Image cloud provider: Alibaba.

Cores [cores]

Number of CPU cores.

CI relationships
Discovery creates these relationships to support the cloud hardware type discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2129


<!-- page 2130 -->
CI

Relationship

CI

Availability Zone
[cmdb_ci_availability_zone]

Contains::Contained Cloud Hardware Type
by
[cmdb_ci_cloud_hardware_type]

Cloud Hardware Type
[cmdb_ci_cloud_hardware_type]

Hosted on::Hosts

Alibaba Datacenter
[cmdb_ci_alibaba_datacenter]

Alibaba Cloud cloud OS image pattern-based discovery
Discovery and Service Mapping Patterns uses the Alibaba - Cloud OS Image (LP) pattern to
discover cloud OS images during horizontal discovery. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Alibaba Cloud discovery prerequisites section in Alibaba Cloud discovery using
patterns.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Alibaba - Cloud OS Image (LP)
pattern.
Cloud Image [cmdb_ci_cloud_os_image]
Field

Description

Name [name]

Image name.

Object ID [object_id]

ID of the image.
• IDs of public images contain the operating system version,
architecture, language, and release date.
For example: win2008r2_64_ent_sp1_enus_40G_alibase_20190318.vhd.
• IDs of custom, shared, and community images start with m.
For example: m-0a1b2c3defghijklm4n5o.

Guest OS [guest_os]

Operating system (OS) type of the image. Possible values are
Windows or Linux.

OS Status [status]

Status of the image. The default value is Available and this field can
contain multiple values separated with a comma.
For example: Creating, Available, or Unavailable.
If you don’t specify a parameter, only Available status images are
returned.

Image Type
[image_type]

Architecture of the image.
Possible values:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2130


<!-- page 2131 -->
Cloud Image [cmdb_ci_cloud_os_image] (continued)
Field

Description

• i386
• x86_64
• arm64
Install Status
[install_status]

Install status of the image. Default value is Installed.

Operational status
[operational_status]

Operational status of the image. Default value is Operational.

Provider [provider]

Image cloud provider: Alibaba.

CI relationships
Discovery creates these relationships to support the Alibaba Cloud cloud OS image discovery.

CI

Relationship

CI

Cloud Image
[cmdb_ci_cloud_os_image]

Hosted
on::Hosts

Alibaba Datacenter
[cmdb_ci_alibaba_datacenter]

Key Value [cmdb_key_value]

References

Cloud Image [cmdb_ci_cloud_os_image]

Tag discovery
The Alibaba - Cloud OS Image (LP) pattern collects tags and populates them in the Key Value
[cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag key.

Value [value]

Tag value.

Configuration item
[configuration_item]

References the Cloud Image [cmdb_ci_cloud_os_image]
table.

Alibaba Cloud datacenter pattern-based discovery
Discovery and Service Mapping Patterns uses the Alibaba - Datacenter (LP) pattern to discover
datacenters during horizontal discovery. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Alibaba Cloud discovery prerequisites section in Alibaba Cloud discovery using
patterns.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Alibaba - Datacenter (LP) pattern.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2131


<!-- page 2132 -->
Alibaba Datacenter [cmdb_ci_alibaba_datacenter]
Field

Description

Name [name]

LocalName field value of the Alibaba Cloud region.

Object ID [object_id]

RegionId field value of the Alibaba Cloud region.

Install Status [install_status]

Install status of the datacenter. Default value is Installed.

Operational status
[operational_status]

Operational status of the datacenter. Default value is
Operational.

Region [region]

RegionId field value of the Alibaba Cloud region.

Datacenter URL [datacenter_url]

Datacenter URL.
Example URLs:
• For GovCloud: https://ecs.aliyun-inc.com
• For commercial cloud: htpps://ecs.aliyuncs.com

CI relationships
Discovery creates these relationships to support the Alibaba Cloud datacenter discovery.

CI

Relationship

CI

Alibaba Datacenter
[cmdb_ci_alibaba_datacenter]

Hosted
on::Hosts

Cloud Service Account
[cmdb_ci_cloud_service_account]

Alibaba Cloud service account pattern-based discovery
Discovery and Service Mapping Patterns uses the Alibaba - Service Account Validation pattern
to discover service accounts during horizontal discovery. Discovering some of these resources
may require updating to the latest version of the Discovery and Service Mapping Patterns
application from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Alibaba Cloud discovery prerequisites section in Alibaba Cloud discovery using
patterns.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Alibaba - Service Account
Validation pattern.
Cloud Service Account [cmdb_ci_cloud_service_account]
Field

Description

Name [name]

Alibaba Cloud Resource Name (ARN) of the current requester.

Object ID [object_id]

The ID of the Alibaba Cloud account to which the current
requester belongs.

Datacenter Type
[datacenter_type]

Type of the datacenter where the account is hosted: Alibaba
Datacenter [cmdb_ci_alibaba_datacenter].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2132


<!-- page 2133 -->
Cloud Service Account [cmdb_ci_cloud_service_account] (continued)
Field

Description

Account Id [account_id]

The ID of the Alibaba Cloud account to which the current
requester belongs.

Discovery credentials
[discovery_credentials]

Alibaba Cloud API credentials.

Datacenter URL
[datacenter_url]

Datacenter URL.
Example URLs:
• For GovCloud: https://ecs.aliyun-inc.com
• For commercial cloud: htpps://ecs.aliyuncs.com

CI relationships
Discovery creates this reference to support the Alibaba Cloud service account discovery.

CI

Relationship CI

Key Value
[cmdb_key_value]

References Cloud Service Account
[cmdb_ci_cloud_service_account]

Tag discovery
The Alibaba - Service Account Validation pattern collects tags and populates them in the Key
Value [cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag key.

Value [value]

Tag value.

Configuration item
[configuration_item]

References the Cloud Service Account
[cmdb_ci_cloud_service_account] table.

Alibaba Cloud storage volume pattern-based discovery
Discovery and Service Mapping Patterns uses the Alibaba - Storage Volume (LP) pattern to
discover storage volumes during horizontal discovery. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Alibaba Cloud discovery prerequisites section in Alibaba Cloud discovery using
patterns.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Alibaba - Storage Volume (LP)
pattern.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2133


<!-- page 2134 -->
Storage Volume [cmdb_ci_storage_volume]
Field

Description

Name [name]

Name of the disk.

Object ID [object_id]

ID of the disk.

State [state]

Status of the disk. Default value is All.
For example: In_use, Available, or Attaching.

Size bytes [size_bytes]

Disk size in bytes.

Storage type [storage_type]

Type of the disk.
Possible values are system or data.

Install Status [install_status]

Install status of the disk. Default value is Installed.

Operational status
[operational_status]

Operational status of the disk. Default value is
Operational.

CI relationships
Discovery creates these relationships to support the Alibaba Cloud storage volume discovery.

CI

Relationship

CI

Storage Volume
[cmdb_ci_storage_volume]

Hosted on::Hosts

Alibaba Datacenter
[cmdb_ci_alibaba_datacenter]

Availability Zone
[cmdb_ci_availability_zone]

Contains::Contained Storage Volume
by
[cmdb_ci_storage_volume]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Uses::Used by

Storage Volume
[cmdb_ci_storage_volume]

Key Value [cmdb_key_value]

References

Storage Volume
[cmdb_ci_storage_volume]

Tag discovery
The Alibaba - Storage Volume (LP) pattern collects tags and populates them in the Key Value
[cmdb_key_value] table.
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag key.

Value [value]

Tag value.

Configuration item
[configuration_item]

References the Storage Volume
[cmdb_ci_storage_volume] table.

Alibaba Cloud virtual machine (VM) pattern-based discovery
Discovery and Service Mapping Patterns uses the Alibaba - Virtual Machine (LP) pattern to
discover VMs during horizontal discovery. Discovering some of these resources may require
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2134


<!-- page 2135 -->
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.

Pattern-based discovery and mapping requirements
Verify the Alibaba Cloud discovery prerequisites section in Alibaba Cloud discovery using
patterns.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Alibaba - Virtual Machine (LP)
pattern.
Virtual Machine Instance [cmdb_ci_vm_instance]
Field

Description

Name [name]

Name of the instance.

Object ID [object_id]

Instance ID.

State [state]

Status of the instance.
For example: Running or Stopped.

CPUs [cpus]

Number of Virtual Central Processing Units (vCPUs).

Memory (MB) [memory]

Memory size in megabytes (MB).

Disks [disks]

Number of local disks attached to the instance.

Guest OS Name
[guest_os_fullname]

Type of the operating system (OS) of the instance.

Install Status [install_status]

Install status of the instance. Default value is Installed.

Operational status
[operational_status]

Operational status of the instance. Default value is
Operational.

Network adapters [nics]

Elastic Network Interfaces (ENIs) attached to the instance.

Possible values are Windows or Linux.

Cloud Mgmt Network Interface [cmdb_ci_nic]
Field

Description

Name [name]

Name of the ENI.

Object ID [object_id]

ID of the ENI.

MAC Address
[mac_address]

MAC address of the ENI.

Private IP [private_ip]

Private IP address of the ENI.

IP Address [ip_address]

Public IP addresses of instances.

Primary [primary]

A Boolean indicating whether a network interface is primary or
secondary.

Node ID [node_id]

Instance ID.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2135


<!-- page 2136 -->
Cloud Image [cmdb_ci_cloud_os_image]
Field

Description

Object ID
[object_id]

ID of the image.
• IDs of public images contain the operating system version, architecture,
language, and release date.
For example: win2008r2_64_ent_sp1_en-us_40G_alibase_20190318.vhd.
• IDs of custom, shared, and community images start with m.
For example: m-0a1b2c3defghijklm4n5o.

Provider
[provider]

Image cloud provider: Alibaba.

Cloud Hardware Type [cmdb_ci_cloud_hardware_type]
Field

Description

Object ID [object_id]

ID of the instance type.

Provider [provider]

Image cloud provider: Alibaba.

CI relationships
Discovery creates these relationships to support the Alibaba Cloud virtual machine discovery.

CI

Relationship

CI

Virtual Machine Instance
[cmdb_ci_vm_instance]

Implement End Point
Cloud Mgmt Network Interface
To::Implement End Point From [cmdb_ci_nic]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Hosted on::Hosts

Alibaba Datacenter
[cmdb_ci_alibaba_datacenter]

Availability Zone
[cmdb_ci_availability_zone]

Contains::Contained by

Virtual Machine Instance
[cmdb_ci_vm_instance]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Provisioned
From::Provisioned

Cloud Image
[cmdb_ci_cloud_os_image]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Provisioned
From::Provisioned

Cloud Hardware Type
[cmdb_ci_cloud_hardware_type]

Cloud Image
[cmdb_ci_cloud_os_image]

Hosted on::Hosts

Alibaba Datacenter
[cmdb_ci_alibaba_datacenter]

Key Value [cmdb_key_value]

References

Virtual Machine Instance
[cmdb_ci_vm_instance]

Tag discovery
The Alibaba - Virtual Machine (LP) pattern collects tags and populates them in the Key Value
[cmdb_key_value] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2136


<!-- page 2137 -->
Key Value [cmdb_key_value]
Field

Description

Key [key]

Tag key.

Value [value]

Tag value.

Configuration item
[configuration_item]

References the Virtual Machine Instance
[cmdb_ci_vm_instance] table.

AWS discovery using patterns
Discovery and Service Mapping Patterns uses patterns to discover components of the Amazon
AWS Cloud deployment during horizontal discovery. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the applications are up to date:
• Discovery and Service Mapping Patterns
• CMDB CI Class Models
• Visibility Content
Update the method used for pointed discovery for the AWS CloudFormation Template
(CFT) stack
If you use Cloud Provisioning and Governance, you must update the
getOperationGR(type) method. This update enables the pointed discovery
to list the resources correctly for the AWS CFT stack after provisioning. For further
information about the steps required to update this method, see the Knowledge
Base article KB0858437 .
Service account on the AWS Management Console
An AWS organization is a collection of AWS accounts under a single account. Cloud
Discovery refers to AWS organizations in the wizard as management accounts. The
member accounts that belong to a management account are called sub-accounts.

Note: Cloud Discovery for AWS Organizations isn’t fully supported in a
GovCloud

isolated region.

The advantages of using management accounts are:
Easy population of sub-accounts
After you configure the management account and supply the
necessary credentials, you can test the connection to the account. If
the test succeeds, Discovery returns a list of the member accounts in
that management account. From this list, you can choose one or more
sub-accounts to include in the Discovery of the management account.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2137


<!-- page 2138 -->
(Optional for discovering the entire AWS organization) Discovery of subaccount resources using dynamically acquired credentials
When you run Discovery on your cloud resources, you don’t need
separate credentials for each sub-account. The Cloud Discovery
process handles credentials automatically by acquiring a temporary
credential for each sub-account via an AWS API. You can elect to use
the default configuration or customize the MID Server to assume other
roles for additional controls and security.
IAM user policy on the AWS Management Console
To use the IAM user policy instead of credentials during discovery, configure the
MID Server for AWS IAM roles. For more information, see configure the MID Server
for AWS IAM roles.
Typically, you create the IAM user policy for provisioning AWS resources in
Cloud Provisioning and Governance, as described in Control AWS access and
permissions using policies. Ensure that the IAM user policy covers the following
AWS resources:
{
"Version": "2012-10-17",
"Statement": [
{
"Action": [
"elasticloadbalancing:DescribeLoadBalancerPolicyType
s",
"elasticloadbalancing:DescribeLoadBalancers",
"elasticloadbalancing:DescribeLoadBalancerPolicies",
"elasticloadbalancing:DescribeInstanceHealth",
"elasticloadbalancing:DescribeTags",
"elasticloadbalancing:DescribeLoadBalancerAttributes",
"account:ListRegions",
"elasticloadbalancing:Describe*",
"ec2:Describe*",
"ec2:DescribeNetworkInterfaceAttribute",
"ec2:DescribeInstanceStatus",
"ec2:DescribeCustomerGateways",
"ec2:DescribeSecurityGroups",
"ec2:DescribeHosts",
"ec2:DescribeImages",
"ec2:DescribeVpcs",
"ec2:DescribeAccountAttributes",
"ec2:DescribeInstanceAttribute",
"ec2:DescribeInstanceCreditSpecifications",
],
"Effect": "Allow",
"Resource": "*"
}
]
}
Configure access to the AWS resources
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2138


<!-- page 2139 -->
To discover a single account, create an IAM account in the AWS Management
Console, and ensure that it has the "ReadOnlyAccess" policy applied. To discover
several member or child accounts, configure the credentials as described in Access
setup for AWS service accounts.
Activate the cloud-related CI relationships
To include discovered components into service instances, enable CI relationships
used in tag-based discovery by Service Mapping. These CI relationships are
available from the 1.0.68 release on the ServiceNow Store. For operational steps,
see Tag-based discovery configuration.
Configure a discovery schedule
Create a discovery schedule in Cloud Discovery Workspace.
(Optional) Discover datacenters only for new members
Starting with Zurich Patch 2, you can discover datacenters only for new members
added since the last discovery. For more information, see Discover datacenters only
for new cloud accounts.
(optional) Optimize discovery by including only datacenters with resources
Starting with Discovery and Service Mapping Patterns version 1.29.0, you can
optimize discovery by limiting it to only AWS datacenters with resources. For more
information, see the AWS resources discovery by datacenters section.
• Verify your service account has the following role permissions to access Config
API:
◦ config:GetDiscoveredResourceCounts
◦ config:DescribeConfigurationRecorderStatus
• Verify AWS Config recorder is enabled and configured to record the all resource
types.
For instructions on configuring AWS Config recorder, go to the AWS
Documentation
and search for the "Recording resources in the AWS Config
console" article.
• Enable discovery of only datacenters with resources by setting the

mid.cloud.discovery.sonar.discover_all_aws_datacenters
MID Server property to false. For more information, see Limit AWS discovery to
datacenters with resources.

Verify the REST API Permissions
Download the Cloud Discovery patterns spreadsheet
so you can grant user permissions
required for running the Discovery patterns. In addition to permissions, the spreadsheet also
includes useful information such as pattern names, types, CI Classes, and links to vendor
documentation. New patterns are available quarterly, so check periodically to be sure you have
the latest version of the spreadsheet.

Note: You can test the AWS REST APIs using Postman API platform. For more information,
see the How to test AWS REST API using POSTMAN [KB0782183]
Support Knowledge Base.

article in the Now

Support for AWS services in the China region
The latest version of Discovery and Service Mapping Patterns supports discovering AWS
services in the China region. You can discover these services on the ServiceNow AI Platform,
starting from Xanadu Patch 3 and Washington DC Patch 9 instances.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2139


<!-- page 2140 -->
Discovering AWS services in the China region requires using a datacenter URL when
setting up an AWS service account. For example: https://organizations.cnnorthwest-1.amazonaws.com.cn.
• To learn more about AWS master account and sub-account support in the China region, see
KB1704526 .
• To identify AWS patterns supported in the China region, refer to the Cloud Discovery patterns
spreadsheet. The AWS China Region Support column has a Yes value for supported patterns.

AWS resources discovery by datacenters
Starting with version 1.29.0, Discovery and Service Mapping Patterns introduces a new AWS
datacenter discovery model. The previous model discovered all datacenters, regardless of
whether they contained relevant resources. The new model improves the AWS discovery
performance by focusing on only datacenters that contain resources.
AWS has multiple datacenters around the world, but resources like load balancers and virtual
machines are typically deployed in only some of them. The Amazon AWS Datacenter Discovery
pattern runs before all other AWS patterns to identify datacenters with resources related to your
service account ("active") and those without ("passive"). A datacenter can also be classified as
"empty" due to API call errors, AWS Config service not being enabled, or permission issues. You
can check the discovery log for the exact cause of the error. For more information, see Logs for
horizontal discovery.
After identifying "active", "passive", or "empty" datacenters, the discovery schedule continues to
execute all AWS patterns only for "active" or "empty" datacenters, to discover your AWS cloud
resources. "Passive" datacenters are ignored during the schedule. The Refresh Datacenters flow
continues to display all regions, not just active ones. You don’t need to create another schedule
when a resource is added or a datacenter switches from passive to active.
You might notice differences in the AWS discovery log, in discovery time and in the CMDB,
depending on the service account and MID Server property settings.
Datacenters that have already been discovered before upgrading to Discovery and Service
Mapping Patterns version 1.29.0 remain in the Amazon AWS Datacenters table. The
mid.cloud.discovery.sonar.discover_all_aws_datacenters MID Server
property is set to true by default, which discovers all datacenters. To limit discovery to the
"active" or "empty" datacenters, set this property to false. For information on setting up active
datacenter discovery, see the (optional) Optimize discovery by including only datacenters with
resources prerequisite.
Differences in datacenter discovery by
mid.cloud.discovery.sonar.discover_all_aws_datacenters MID Server property setting
MID Server property setting

Flow

Discovered/displayed datacenters

False

New schedule

All datacenters except passive

False

Refresh Datacenters

All datacenters

True (default)

New schedule

All datacenters

True (default)

Refresh Datacenters

All datacenters

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2140


<!-- page 2141 -->
AWS datacenter model flow by
mid.cloud.discovery.sonar.discover_all_aws_datacenters MID Server property
setting

Data collected by Discovery during horizontal discovery
Resources discovered using the Amazon AWS - ACL (LP) pattern
Network ACL [cmdb_ci_network_acl]
Field

Description

Name [name]

Name of the network access control list (ACL).

Object ID
[object_id]

Unique identifier, allocated by Amazon AWS Cloud for this
resource.

ACL Endpoint [cmdb_ci_endpoint_acl]
Field

Description

Name [name]

Name of the endpoint.

Object ID
[object_id]

Unique identifier, allocated by Amazon AWS Cloud for this
resource.

Resources discovered using the Amazon AWS - Application and Network LB (LP) pattern
Cloud Load Balancer [cmdb_ci_cloud_load_balancer]
Field

Description

Name [name]

Name of the load balancer.

Fully Qualified Domain Name
[fqdn]

IP address of the fully qualified domain name of
the load balancer.

Object ID [object_id]

The Amazon Resource Name (ARN) of the load
balancer.

DNS Name [dns_name]

The public DNS name of the load balancer.

Canonical Hosted Zone Name
The name of the Amazon Route 53 hosted zone
[canonical_hosted_zone_name] associated with the load balancer.
Canonical Hosted Zone ID
[canonical_hosted_zone_id]

The ID of the Amazon Route 53 hosted zone
associated with the load balancer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2141


<!-- page 2142 -->
Cloud Load Balancer [cmdb_ci_cloud_load_balancer] (continued)
Field

Description

State [state]

The state of the load balancer.

Short Description
[short_description]

A concatenation of the series of attributes for
the load balancers like LB ARN, VPC ID, Type,
and Zone.

Comments [comments]

Identifier for internal usage (deletion strategy).

DNS Name [cmdb_ci_dns_name]
Field

Description

Name [name]

Name of the Domain Name System (DNS).

Object ID [object_id]

Name of the DNS.

IP Address [ip_address]

IP address of the DNS.

Comments [comments]

Identifier for internal usage (deletion strategy).

Resources discovered using the Amazon AWS - Availability Zone (LP) pattern
Availability Zone [cmdb_ci_availability_zone]
Field

Description

Name
[name]

Name of the Availability Zone.

Object ID
[object_id]

Unique identifier, allocated by Amazon AWS Cloud for this resource.

State [state]

The state of the Availability Zone. The possible values are: available,
information, impaired, and unavailable.

Resources discovered using the Amazon AWS - Classic LB (LP) pattern
Cloud Load Balancer [cmdb_ci_cloud_load_balancer]
Field

Description

Name [name]

The name of the load balancer.

Fully Qualified Domain Name [fqdn]

The DNS name of the load balancer.

Object ID [object_id]

Unique identifier, allocated by Amazon
AWS Cloud for this resource.

DNS Name [dns_name]

The DNS name of the load balancer.

Canonical Hosted Zone Name
[canonical_hosted_zone_name]

The DNS name of the load balancer.

Canonical Hosted Zone ID
[canonical_hosted_zone_id]

The ID of the Amazon Route 53 hosted
zone for the load balancer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2142


<!-- page 2143 -->
Cloud LB IPAddress [cmdb_ci_cloud_lb_ipaddress]
Field

Description

Name [name]

IP address of the Load Balancer.

Object ID [object_id]

IP address of the Load Balancer.

IP Address [ip_address]

IP address of the Load Balancer.

Comments [comments]

Comments related to the Configuration Item (CI).

DNS Name [cmdb_ci_dns_name]
Field

Description

Name [name]

Name of the Domain Name System (DNS).

IP Address [ip_address]

IP address of the DNS.

Comments [comments]

Comments related to the CI.

Load Balancer Pool [cmdb_ci_lb_pool]
Field

Description

Name [name]

The name of the load balancer pool.

Object ID
[object_id]

Unique identifier, allocated by Amazon AWS Cloud for this
resource.

Comments
[comments]

Comments related to the CI.

Load Balancer Pool Member [cmdb_ci_lb_pool_member]
Field

Description

Name [name]

The name of the load balancer pool member (known in AWS
as a target).

Object ID
[object_id]

Unique identifier, allocated by Amazon AWS Cloud for this
resource.

Load Balancer Service [cmdb_ci_lb_service]
Field

Description

Name [name]

Name of the load balancer service.

Object ID [object_id]

Unique identifier, allocated by Amazon AWS Cloud for
this resource.

Port [port]

The port on which the load balancer is listening.

Service Port
[service_port]

The port on which the instance is listening.

Server Protocol
[service_protocol]

The protocol to use for routing traffic to instances: HTTP,
HTTPS, TCP, or SSL.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2143


<!-- page 2144 -->
Load Balancer Service [cmdb_ci_lb_service] (continued)
Field

Description

Listener Protocol
[service_protocol]

The load balancer transport protocol to use for routing:
HTTP, HTTPS, TCP, or SSL.

Comments [comments]

Comments related to the CI.

Resources discovered using the Amazon AWS - LB Pool Member(LP) pattern
Load Balancer Pool Member [cmdb_ci_lb_pool_member]
Field

Description

Name [name]

Target ID, depending on the target type.
For example: Instance ID, IP address, Lambda ARN, or
Application Load Balancer ARN.

Service port
[service_port]

The port on which the target is listening, if available.

Object ID [object_id]

Possible values are:
• Target ID
• Target ID and target port, if available, in the following
format: <target ID>#<target port>.
For example: i-0123456789abcdef0#8080

Comments
[comments]

Comments related to the CI.

Operational status
[operational_status]

Operational status of the target.

Install Status
[install_status]

Installation status of the target.

Pool [pool]

References the Load Balancer Pool [cmdb_ci_lb_pool]
table.

Possible values are Operational or Non-Operational.

Possible values are Installed or Retired.

Note: By default, the Amazon AWS - LB Pool Member(LP)
pattern doesn't execute discovery. To enable the discovery
of AWS Application Load Balancer targets, set the

sn_itom_pattern.discover_aws_app_pool_members MID Server
property to true. For more information, see Enable AWS Application Load
Balancer target discovery.
Resources discovered using the Amazon AWS - Customer Gateway (LP) pattern

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2144


<!-- page 2145 -->
Customer Gateway [cmdb_ci_customer_gateway]
Field

Description

Name [name]

Name or ID if no Name is specified of the
customer gateway.

Object ID [object_id]

ID of the customer gateway.

Connection Type
[connection_type]

Type of VPN connection the customer gateway
supports.

Customer Gateway Endpoint [cmdb_ci_endpoint_cust_gateway]
Field

Description

Name [name]

Name or ID if no Name is specified of the customer gateway.

Object ID [object_id] ID of the customer gateway.
Resources discovered using the Amazon AWS - discover Organization pattern
Cloud Organizations [cmdb_ci_cloud_org]
Field

Description

Name [name]

The unique identifier (ID) of the management account of an
organization.

Object ID
[object_id]

The unique identifier (ID) of the management account of an
organization.

Root ID [root_id]

The unique identifier (ID) of an organization.

Master Email
[master_email]

The email address associated with the AWS account that is
designated as the management account for the organization.

Install Status
[install_status]

The install status of the Organization based on the
AvailablePolicyTypes status.

Operational status The operational status of the Organization based on the
[operational_status] AvailablePolicyTypes status.
Resources discovered using the Amazon AWS - Executable Template (LP) pattern
Image [cmdb_ci_os_template]
Field

Description

Name [name]

Name of the image. For example, CentOS 7.0-64
Minimal for VSI.

Object ID [object_id]

Unique identifier, allocated by Amazon AWS Cloud
for this resource.

Image Type [image_type]

Type of the OS image.

Root Device Type
[root_device_type]

The device name of the root device volume (for
example, /dev/sda1).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2145


<!-- page 2146 -->
Image [cmdb_ci_os_template] (continued)
Field

Description

Image Source
[image_source]

Source of the OS image.

Guest OS [guest_os]

Operating system that is secondary to the OS.

Comments [comments]

Comments related to the CI.

Note: When using the Image [cmdb_ci_os_template] table to store Cloud
OS Images, you may notice an unusually large number of records. To avoid
this issue, you can store the discovered OS images in the Cloud Image
[cmdb_ci_cloud_os_image] table. For more information, see Enable Cloud OS
Image discovery.
The pattern extension section discovers Bring Your Own License (BYOL) or the
included licenses for Windows virtual machines (VMs) and RHEL VMs.
Key value [cmdb_key_value]
Field

Description

Key [key]

The key is one of the options:
• Windows_OS_License_Type_automatic
• RHEL_OS_License_Type_automatic

Value [value]

The value is one of the options:
• BYOL
• License Included

CI [ci]

Reference to the Virtual Machine Instance record.

Class

The Class is Image or Cloud Image.

Resources discovered the using the Amazon AWS - Hardware Type (LP) pattern
Hardware Type [cmdb_ci_compute_template]
Field

Description

Name [name]

Name of this image.

Object ID [object_id]

Unique identifier, allocated by Amazon AWS Cloud
for this resource.

Core [core]

The default number of cores for the instance type.

Memory MB [memory_mb]

Memory size assigned to this template.

vCPIs [vCPUs]

Number of CPU cores assigned to this template.

Local Storage GB
[local_storage_gb]

Storage assigned to this template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2146


<!-- page 2147 -->
Note: When using the Hardware Type [cmdb_ci_compute_template] table
to store the hardware types, you may notice an unusually large number of
records. To avoid this issue, you can store the discovered hardware types in
the Cloud Hardware Type [cmdb_ci_cloud_hardware_type] table. For more
information, see Enable the Cloud Hardware Type class extension.
Resources discovered the using the Amazon AWS - Host (LP) pattern
Cloud Host [cmdb_ci_cloud_host]
Field

Description

Name [name]

Name of this host.

Object ID [object_id]

Unique identifier, allocated by Amazon AWS Cloud for
this resource.

CPU Core Count
[cpu_core_count]

The number of host cores.

State [state]

The current state of the host.

Host Type [host_type]

The host type (instanceFamily).

Cloud Vendor
[cloud_vendor]

The cloud vendor: AWS.

Virtual [virtual]

Virtual host: False.

Resources discovered using the Amazon AWS - Internet Gateway (LP) pattern
Internet Gateway [cmdb_ci_internet_gateway]
Field

Description

Name [name]

Name or ID if no Name is specified for the internet gateway.

Object ID [object_id] ID of the internet gateway.
Internet Gateway Endpoint [cmdb_ci_endpoint_intgateway]
Field

Description

Name [name]

Name or ID if no Name is specified for the internet gateway.

Object ID [object_id] ID of the internet gateway.
Resources discovered using the Amazon AWS - IP Address (LP) pattern
IP Address [cmdb_ci_cloud_ip_address]
Field

Description

Name [name]

The name or ID if no Name is specified for the Network
Interface.

IP Address
[ip_address]

If available, the address of the Elastic IP address bound to the
network interface. If not available, the Private IP.

Object ID
[object_id]

The ID of the Network Interface.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2147


<!-- page 2148 -->
IP Address [cmdb_ci_cloud_ip_address] (continued)
Field

Description

Public DNS
[public_dns]

The public DNS name if available.

Private IP
Address
[private_ip]

The IPv4 address of the network interface within the subnet.

Instance ID
[instance_id]

The ID of the instance.

Resources discovered the using the Amazon AWS - Key Pair (LP) pattern
Cloud Key Pair [cmdb_ci_cloud_key_pair]
Field

Description

Name
[name]

The name of the key pair.

Object ID
[object_id]

The ID of the key pair.

Finger Print If you used CreateKeyPair
to create the key pair, this value is
[finger_print] the SHA-1 digest of the DER encoded private key. If you used
ImportKeyPair to provide AWS the public key, this value is the MD5
public key fingerprint as specified in section 4 of RFC 4716.
Resources discovered using the Amazon AWS - LB Pool (LP) pattern
Load Balancer Pool [cmdb_ci_lb_pool]
Field

Description

Name [name]

The name of the load balancer pool.

Object ID
[object_id]

Unique identifier, allocated by Amazon AWS Cloud for this
resource.

Comments
[comments]

Comments related to the CI.

Resources discovered using the Amazon AWS - LB Service (LP) pattern
Load Balancer Service [cmdb_ci_lb_service]
Field

Description

Name [name]

Name of the load balancer service.

Object ID [object_id]

Unique identifier, allocated by Amazon AWS Cloud for
this resource.

Port [port]

The port on which the load balancer is listening.

Service Port
[service_port]

The port on which the instance is listening.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2148


<!-- page 2149 -->
Load Balancer Service [cmdb_ci_lb_service] (continued)
Field

Description

Server Protocol
[service_protocol]

The protocol to use for routing traffic to instances: HTTP,
HTTPS, TCP, or SSL.

Listener Protocol
[service_protocol]

The load balancer transport protocol to use for routing:
HTTP, HTTPS, TCP, or SSL.

Comments [comments]

Comments related to the CI.

Resources discovered using the Amazon AWS - NAT Gateway (LP) pattern
NAT Gateway [cmdb_ci_nat_gateway]
Field

Description

Name [name]

Name of the NAT gateway.

Object ID [object_id]

Unique identifier, allocated by Amazon AWS Cloud for
this resource.

Install Status
[install_status]

Provisioning status of the NAT gateway.

NAT Endpoint [cmdb_ci_endpoint_nat]
Field

Description

Name [name]

The name of the NAT endpoint.

Object ID
[object_id]

Unique identifier, allocated by Amazon AWS Cloud for this
resource.

Resources discovered using the Amazon AWS - Network (LP) pattern
Cloud Network [cmdb_ci_network]
Field

Description

Name [name]

Name of the Virtual Private Cloud (VPC) network.

Object ID [object_id]

Unique identifier, allocated by Amazon AWS Cloud for
this resource.

State [state]

The current state of the VPC: pending or available.

CIDR [cidr]

CIDR representation of the subnet. For example,
10.0.0.0/24.

Install Status
[install_status]

Resource provisioning status.

Resources discovered using the Amazon AWS - NIC (LP) pattern

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2149


<!-- page 2150 -->
Cloud Mgmt Network Interface [cmdb_ci_nic]
Field

Description

Name
[name]

The Name or ID if no Name is specified for the Network Interface.

Object ID
[object_id]

The ID of the network interface.

State [state]

The status of the network interface. The valid values are as follows:
available, associated, attaching, in-use, or detaching.

Private IP
[private_ip]

The IPv4 address of the network interface within the subnet.

IP Address
If available, the address of the Elastic IP address bound to the
[ip_address] network interface. If not available, the Private IP.
Public IP
[public_ip]

The address of the Elastic IP address bound to the network
interface.

Cloud LB IPAddress [cmdb_ci_cloud_lb_ipaddress]
Field

Description

Name [name]

IP address of the Load Balancer.

Object ID
[object_id]

If available, the address of the Elastic IP address bound to the
network. If not available, the Private IP.

IP Address
[ip_address]

If available, the address of the Elastic IP address bound to the
network interface. If not available, the Private IP.

Comments
[comments]

Comments related to the CI.

VNIC Endpoint [cmdb_ci_endpoint_vnic]
Field

Description

Name [name]

The name of the virtual network machine interface (VNIC)
endpoint.

Object ID
[object_id]

Unique identifier, allocated by Amazon AWS Cloud for this
resource.

IP Address
[ip_address]

If available, the address of the Elastic IP address bound to the
network interface. If not available, the Private IP.

Host [host]

The ID of the instance.

Resources discovered using the Amazon AWS - Organizational Units (LP) pattern
AWS Organizational Unit [cmdb_ci_aws_org_unit]
Field

Description

Name [name]

The user-friendly name of the Organizational Unit (OU).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2150


<!-- page 2151 -->
AWS Organizational Unit [cmdb_ci_aws_org_unit] (continued)
Field

Description

Object ID [object_id]

The unique identifier (ID) associated with this OU. The
ID is unique to the organization.

Organizational ID
[aws_org_id]

The unique identifier (ID) associated with this OU. The
ID is unique to the organization.

Org Unit Parent ID
[org_unit_parent_id]

The ID of the root or the immediate parent OU.

Resources discovered using the Amazon AWS - Owned Template (LP) pattern
Image [cmdb_ci_os_template]
Field

Description

Name [name]

Name of the image. For example, CentOS 7.0-64 Minimal
for VSI.

Object ID [object_id] Unique identifier, allocated by Amazon AWS Cloud for this
resource.
Image Type
[image_type]

Type of the OS image.

Root Device Type
[root_device_type]

The type of root device used by the AMI. The AMI can use
an EBS volume or an instance store volume.

Image Source
[image_source]

Source of the OS image.

Guest OS [guest_os] Operating system that is secondary to the OS.
Comments
[comments]

Comments related to the CI.

Note: When using the Image [cmdb_ci_os_template] table to store Cloud
OS Images, you may notice an unusually large number of records. To avoid
this issue, you can store the discovered OS images in the Cloud Image
[cmdb_ci_cloud_os_image] table. For more information, see Enable Cloud OS
Image discovery.
The pattern extension section discovers Bring Your Own License (BYOL) or the
included licenses for Windows VMs and RHEL VMs.
Key value [cmdb_key_value]
Field

Description

Key [key]

The key is one of the options:
• Windows_OS_License_Type_automatic
• RHEL_OS_License_Type_automatic

Value [value]

The value is one of the options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2151


<!-- page 2152 -->
Key value [cmdb_key_value] (continued)
Field

Description

• BYOL
• License Included
CI [ci]

Reference to the Virtual Machine Instance record.

Class

The Class is Image or Cloud Image.

Resources discovered using the Amazon AWS - Public IP Address (LP) pattern
Cloud Public IP Address [cmdb_ci_cloud_public_ipaddress]
Field

Description

Name [name]

The name or allocation ID, if no name is specified for the
public IP address.

Object ID [object_id]

The ID representing the allocation of the address for the
use with EC2-VPC.

Public ID Address
[public_ip]

The elastic IP address.

Resources discovered using the Amazon AWS - Route Table (LP) pattern
Route Table [cmdb_ci_route_table]
Field

Description

Name [name]

The ID of the route table.

State [state]

If the route table is discoverable, the value is available.

Object ID [object_id]

The name or ID, if no name is specified for the route table.

Route Table Endpoint [cmdb_ci_endpoint_route_table]
Field

Description

Name [name]

The name or ID, if no name is specified for the route table.

Object ID [object_id]

The ID of the route table.

Resources discovered using the Amazon AWS - Security Group (LP) pattern
Compute Security Group [cmdb_ci_compute_security_group]
Field

Description

Name [name]

The name of the security group.

Object ID [object_id]

The ID of the security group.

Resources discovered using the Amazon AWS - SSM Cloud Agents (LP) pattern
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2152


<!-- page 2153 -->
Cloud System Management Agent
[cmdb_ci_cloud_system_management_agent]
Field

Description

Cloud Agent Type [cloud_agent_type]

Type of cloud agent: AWS SSM.

Install Status [install_status]

Install status of the AWS Systems
Manager (SSM) agent:
• Installed: The agent is currently
running.
• Absent: The agent is not currently
running.

IP Address [ip_address]

Address of the VM instance.

Name [name]

Name of the VM instance that the SSM
agent is running on.

Object ID [object_id]

ID of the VM instance.

Operational status [operational_status]

Operational status of the agent service.
Possible values are Operational or NonOperational.

Operating System Platform
[operating_system_platform]

Operating system type of the VM
instance.

Resource Type [resource_type]

Type of resource managed by SSM.
Possible values are EC2Instance or
ManagedInstance.

Version [version]

Version of the SSM agent.

Resources discovered using the Amazon AWS - Storage (LP) pattern
Storage Volume [cmdb_ci_storage_volume]
Field

Description

State [state]

The volume state. The following values are valid: creating,
available, in-use, deleting, deleted, or error.

Storage Type For example, hard-coded value: block.
[storage_type]
Volume ID
[volume_id]

The volume type. For example, gp2 for General Purpose SSD, io1
for Provisioned IOPS SSD, st1 for Throughput Optimized HDD, sc1
for Cold HDD, or standard for Magnetic volumes.

Name [name]

The name or ID, if no name is specified for the volume.

Size Bytes
[size_bytes]

The size of the volume, in bytes.

Object ID
[object_id]

The ID of the volume.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2153


<!-- page 2154 -->
Block Endpoint [cmdb_ci_endpoint_block]
Field

Description

Name [name]

The name or ID, if no name is specified for the volume.

Object ID [object_id]

The ID of the volume.

Resources discovered using the Amazon AWS - Sub Account (LP) pattern
Cloud Service Account [cmdb_ci_cloud_service_account]
Field

Description

Account ID [account_id]

Unique identifier (ID) of the account.

Object ID [object_id]

Unique identifier (ID) of the account.

Datacenter Type
[datacenter_type]

Hard-coded value: cmdb_ci_aws_datacenter.

Name [name]

User-friendly name of the account.

Is Master Account
[is_master_account]

Boolean attribute indicating if this account is the
management account or not.

Account Email
[account_email]

Email address of the AWS service account.

Resources discovered using the Amazon AWS - Subnet (LP) pattern
Cloud Subnet [cmdb_ci_cloud_subnet]
Field

Description

Name [name]

The name or ID, if no name is specified for the subnet.

Object ID
[object_id]

The ID of the subnet.

CIDR [cidr]

The IPv4 CIDR block assigned to the subnet.

Available IP Count The number of unused private IPv4 addresses in the
[available_ip_count] subnet. The IPv4 addresses for any stopped instances are
considered unavailable.
State [state]

The current state of the subnet. The following values are
valid: pending or available.

Resources discovered using the Amazon AWS - Virtual Server (LP) pattern
Virtual Machine Instance [cmdb_ci_vm_instance]
Field

Description

Name [name]

The name or ID, if no name is specified for the
instance.

Object ID [object_id]

The ID of the instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2154


<!-- page 2155 -->
Virtual Machine Instance [cmdb_ci_vm_instance] (continued)
Field

Description

Memory [memory]

The amount of memory available to the
instance. (MBs)

CPUs [cpus]

The number of CPUs available to the instance.

Disk [disks]

The number of disks attached to the instance.

VM Instance ID [vm_inst_id]

The ID of the instance.

State [state]

The current state of the instance.

IP Address [ip_address]

ID address of the virtual machine instance.

Network Adapters
[network_adapters]

The number of NICs available to the instance.

Note:
If you have reactivated a retired VM and want its active state to be
accurately reflected in the Operational status and Install Status fields
in the Virtual Machine Instance [cmdb_ci_vm_instance] table, set the
sn_itom_pattern.discover_aws_instance_statuses MID
Server property to true. Note that this setting involves additional API calls—
one for each page of the pattern execution—which may impact performance if
you're managing a large number of VMs.
DNS Name [cmdb_ci_dns_name]
Field

Description

Name [name]

Name of the Domain Name System (DNS).

IP Address [ip_address]

IP address of the DNS.

Comments [comments]

Comments related to the CI.

Subnet Endpoint [cmdb_ci_endpoint_subnet]
Field

Description

Name [name]

The name of the subnet endpoint.

Object ID
[object_id]

Unique identifier, allocated by Amazon AWS Cloud for this
resource.

Image [cmdb_ci_os_template]
Field

Description

Name [name]

Name of the image. For example, CentOS 7.0-64 Minimal
for VSI.

Object ID [object_id] Unique identifier, allocated by Amazon AWS Cloud for this
resource.
Image Type
[image_type]

Type of the OS image.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2155


<!-- page 2156 -->
Image [cmdb_ci_os_template] (continued)
Field

Description

Root Device Type
[root_device_type]

The type of root device used by the AMI. The AMI can use
an EBS volume or an instance store volume.

Image Source
[image_source]

Source of the OS image.

Guest OS [guest_os] Operating system that is secondary to the OS.
Comments
[comments]

Comments related to the CI.

Note: When using the Image [cmdb_ci_os_template] table to store Cloud
OS Images, you may notice an unusually large number of records. To avoid
this issue, you can store the discovered OS images in the Cloud Image
[cmdb_ci_cloud_os_image] table. For more information, see Enable Cloud OS
Image discovery.
Storage Mapping [cmdb_ci_storage_mapping]
Field

Description

Name [name]

The ID of the volume.

Object ID
[object_id]

The ID of the volume.

Mount Point
[mount_point]

The device name.

Host [host]

The public IPv4 address assigned to the instance, if
applicable.

Mapping Type
[mapping_type]

The root device type used by the AMI. The AMI can use an
EBS volume or an instance store volume.

For example, /dev/sdh or xvdh.

Resources discovered using the Amazon AWS - VPN Connections (LP) pattern
VPN Connection [cmdb_ci_vpn_connection]
Field

Description

Name
[name]

Name of the project that is used for the discovery.

Object ID
[object_id]

The name or ID, if no name is specified for the VPN connection.

State [state] The current state of the VPN connection. The following values are
valid: pending, available, deleting, or deleted.
Resources discovered using the Amazon AWS - VPN Gateway (LP) pattern

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2156


<!-- page 2157 -->
Virtual Private Gateway [cmdb_ci_virtual_pvt_gateway]
Field

Description

Name [name]

The name or ID, if no name is specified for the VPN
Gateway.

Object ID [object_id]

The ID of the virtual private gateway.

Connection Type
[connection_type]

The type of VPN connection the virtual private
gateway supports.

Virtual Private Gateway Endpoint [cmdb_ci_endpoint_vpg]
Field

Description

Name [name]

The name or ID, if no name is specified for the VPN
Gateway.

Object ID [object_id]

The ID of the virtual private gateway.

Connection Type
[connection_type]

The type of VPN connection the virtual private
gateway supports.

Resources discovered using the Amazon AWS - Web ACL (LP) pattern
Web ACL [cmdb_ci_web_acl]
Field

Description

Name [name]

Name of the web access control list (web
ACL).

Object ID [object_id]

Unique ID for the web ACL from AWS.

Default Action [defaul_action]

Default action when no rules in the web ACL
match.
Possible values are Allow or Deny.

Description [short_description]

Description of web ACL provided by AWS.

Operational status
[operational_status]

Whether the web ACL is enabled or disabled.
Possible values are Operational or Retired.

Note: Security Operations users can leverage the integration with Discovery
to import web ACL rules and load balancers with attached web ACLs. For
more information on setting ACL rules and using the Mitigation Controls
Monitoring app, see Configure the AWS WAF integration for mitigation controls
monitoring .

Events discovered by Discovery during horizontal discovery
Discovery uses patterns to find events created for Amazon AWS Cloud components. If there are
events that indicate the change of state in one of the Amazon AWS Cloud components, it triggers
discovery of Amazon AWS Cloud components using the patterns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2157


<!-- page 2158 -->
Patterns used for event discovery
Pattern

CI

Amazon AWS Virtual Server Events

Virtual Machine Instance
[cmdb_ci_vm_instance]

Amazon AWS Security Group Events

Compute Security Group
[cmdb_ci_compute_security_group]

Amazon AWS Subnet Events

Cloud Subnet [cmdb_ci_cloud_subnet]

Amazon AWS Storage Events

Storage Volume [cmdb_ci_storage_volume]

Amazon AWS Network Events

Cloud Network [cmdb_ci_network]

Amazon AWS Classic LB Events

Cloud Load Balancer
[cmdb_ci_cloud_load_balancer]

Amazon AWS Application and Network LBs
Events

Cloud Load Balancer
[cmdb_ci_cloud_load_balancer]

CI relationships
Relationships discovered using the Amazon AWS - ACL (LP) pattern

CI

Relationship

CI

Network
[cmdb_ci_network]

Contains::Contained by

Network ACL
[cmdb_ci_network_acl]

Network ACL
[cmdb_ci_network_acl]

Hosted on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Network ACL
[cmdb_ci_network_acl]

Implement End Point
To::Implement End Point
From

Network ACL
[cmdb_ci_endpoint_acl]

Cloud Subnet
Use End Point To::Use End
[cmdb_ci_cloud_subnet] Point From

Network ACL
[cmdb_ci_endpoint_acl]

Relationships discovered using the Amazon AWS - Application and Network (LP) pattern

CI

Relationship

Cloud Subnet
[cmdb_ci_cloud_subnet]

Contains::Contained Cloud Load Balancer
by
[cmdb_ci_cloud_load_balancer]

Availability Zone
[cmdb_ci_availability_zone]

Contains::Contained Cloud Load Balancer
by
[cmdb_ci_cloud_load_balancer]

Cloud Load Balancer
Hosted on::Hosts
[cmdb_ci_cloud_load_balancer]

CI

AWS Datacenter
[cmdb_ci_aws_datacenter]

Cloud Load Balancer
Contains::Contained DNS Name [cmdb_ci_dns_name]
[cmdb_ci_cloud_load_balancer] by
Cloud Load Balancer
Contains::Contained Compute Security Group
[cmdb_ci_cloud_load_balancer] by
[cmdb_ci_compute_security_group]
Relationships discovered using the Amazon AWS - Availability Zone (LP) pattern
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2158


<!-- page 2159 -->
CI

Relationship

CI

AWS Datacenter
[cmdb_ci_aws_datacenter]

Contains::Contained Availability Zone
by
[cmdb_ci_availability_zone]

Relationships discovered using the Amazon AWS - Classic LB (LP) pattern

CI

Relationship

CI

Load Balancer Service
[cmdb_ci_lb_service]

Hosted on::Hosts

Cloud Load Balancer
[cmdb_ci_cloud_load_balancer]

Cloud Subnet
[cmdb_ci_cloud_subnet]

Contains::Contained Cloud Load Balancer
by
[cmdb_ci_cloud_load_balancer]

Availability Zone
[cmdb_ci_availability_zone]

Contains::Contained Cloud Load Balancer
by
[cmdb_ci_cloud_load_balancer]

Load Balancer Pool
[cmdb_ci_lb_pool]

Hosted on::Hosts

Cloud Load Balancer
[cmdb_ci_cloud_load_balancer]

Load Balancer Pool
[cmdb_ci_lb_pool]

Owns::Owned by

Load Balancer Pool Member
[cmdb_ci_lb_pool_member]

Cloud Load Balancer
Contains::Contained DNS Name [cmdb_ci_dns_name]
[cmdb_ci_cloud_load_balancer] by
Cloud Load Balancer
Owns::Owned by
[cmdb_ci_cloud_load_balancer]

Cloud LB IPAddress
[cmdb_ci_cloud_lb_ipaddress]

Cloud Load Balancer
Hosted on::Hosts
[cmdb_ci_cloud_load_balancer]

AWS Datacenter
[cmdb_ci_aws_datacenter]

Cloud Load Balancer
Contains::Contained Compute Security Group
[cmdb_ci_cloud_load_balancer] by
[cmdb_ci_compute_security_group]
Relationships discovered using the Amazon AWS - LB Pool Member(LP) pattern

CI

Relationship

CI

Load Balancer Pool
[cmdb_ci_lb_pool]

Owns::Owned Load Balancer Pool Member
by
[cmdb_ci_lb_pool_member]

Load Balancer Pool Member
[cmdb_ci_lb_pool_member]

References

Load Balancer Pool
[cmdb_ci_lb_pool]

Note: By default, the Amazon AWS - LB Pool Member(LP)
pattern doesn't execute discovery. To enable the discovery
of AWS Application Load Balancer targets, set the

sn_itom_pattern.discover_aws_app_pool_members MID Server
property to true. For more information, see Enable AWS Application Load
Balancer target discovery.
Relationships discovered using the Amazon AWS - Customer Gateway (LP) pattern

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2159


<!-- page 2160 -->
CI

Relationship

CI

Customer Gateway
Hosted
[cmdb_ci_customer_gateway] on::Hosts

Virtual Machine Instance
[cmdb_ci_instance]

Customer Gateway
Implement
[cmdb_ci_customer_gateway] End Point
To::Implement
End Point
From

Customer Gateway
[cmdb_ci_endpoint_cust_gateway]

Relationships discovered using the Amazon AWS - Executable Template (LP) pattern

CI

Relationship

CI

Image
[cmdb_ci_os_template]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Relationships discovered using the Amazon AWS - Hardware Type (LP) pattern

CI

Relationship

CI

Hardware Type
[cmdb_ci_compute_template]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Relationships discovered using the Amazon AWS - Host (LP) pattern

CI

Relationship

CI

Host [cmdb_ci_cloud_host]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Virtual Machine Instance
[cmdb_ci_vm_instance]

Runs
on::Runs

Host [cmdb_ci_cloud_host]

Relationships discovered using the Amazon AWS - Internet Gateway (LP) pattern

CI

Relationship

Internet Gateway
Hosted on::Hosts
[cmdb_ci_internet_gateway]

CI

AWS Datacenter
[cmdb_ci_aws_datacenter]

Internet Gateway
Implement
Internet Gateway EP
[cmdb_ci_internet_gateway] End Point
[cmdb_ci_endpoint_intgateway]
To::Implement End
Point From
Cloud Network
[cmdb_ci_network]

Use End Point
To::Use End Point
From

Internet Gateway EP
[cmdb_ci_endpoint_intgateway]

Relationships discovered using the Amazon AWS - IP Address (LP) pattern

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2160


<!-- page 2161 -->
CI

Relationship

CI

Cloud Key Pair
[cmdb_ci_cloud_key_pair]

Contains::Contained IP Address
by
[cmdb_ci_cloud_ip_address]

Relationships discovered using the Amazon AWS - Key Pair (LP) pattern

CI

Relationship

CI

Servers
[cmdb_ci_server]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Relationships discovered using the Amazon AWS - LB Pool (LP) pattern

CI

Relationship

CI

Load Balancer Pool
[cmdb_ci_lb_pool]

Hosted
on::Hosts

Cloud Load Balancer
[cmdb_ci_cloud_load_balancer]

Relationships discovered using the Amazon AWS - LB Service (LP) pattern

CI

Relationship CI

Load Balancer Service
[cmdb_ci_lb_service]

Hosted
on::Hosts

Cloud Load Balancer
[cmdb_ci_cloud_load_balancer]

Relationships discovered using the Amazon AWS - NAT Gateway (LP) pattern

CI

Relationship

CI

NAT Gateway
Hosted on::Hosts
[cmdb_ci_nat_gateway]

AWS Datacenter
[cmdb_ci_aws_datacenter]

NAT Gateway
Implement End Point
[cmdb_ci_nat_gateway] To::Implement End Point
From

NAT EP
[cmdb_ci_endpoint_nat]

Network
[cmdb_ci_network]

NAT EP
[cmdb_ci_endpoint_nat]

Use End Point To::Use End
Point From

Relationships discovered using the Amazon AWS - Network (LP) pattern

CI

Relationship

CI

Network
[cmdb_ci_network]

Hosted
on::Hosts

AWS Datacenter
[cmdb_ci_aws_datacenter]

Relationships discovered using the Amazon AWS - NIC (LP) pattern

CI

Relationship

Cloud Load Balancer
Owns::Owned by
[cmdb_ci_cloud_load_balancer]

CI

Cloud LB IPAddress
[cmdb_ci_cloud_lb_ipaddress]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2161


