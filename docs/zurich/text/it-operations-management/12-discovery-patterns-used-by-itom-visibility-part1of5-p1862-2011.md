# Zurich IT Operations Management — Discovery patterns used by ITOM Visibility

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 1862–2011 of 4823 | Part 1 of 5

Sections: Discovery patterns used by ITOM Visibility (p1862)

---

<!-- page 1862 -->
Discovery patterns used by ITOM Visibility
Service Mapping and Discovery use patterns in their discovery process that cover most industry
standard network devices and applications. You can customize these patterns and create new
ones.
ServiceNow applications refer to devices and applications that comprise a service instance as
configuration items (CIs).

What discovery patterns are
A pattern is a sequence of commands designed to detect attributes of a CI and its outbound
connections. Service Mapping and Discovery share a set of preconfigured patterns that cover
most of the commonly used devices and applications. Patterns can be of the infrastructure or
application type. Infrastructure patterns are used only by Discovery for creating lists of devices.
Application patterns serve both Service Mapping and Discovery, which use the same application
patterns for their purposes. For example, Discovery runs the horizontal discovery with the
Apache Web Server pattern to find and list all Apache Web Servers in your organization. Service
Mapping runs the top-down discovery using the same pattern to discover a specific Apache Web
Server and place it on a service instance map.

Note: Currently, pattern operations do not support multi-languages. If values returned
from pattern operations are not in English, the returned data cannot be parsed properly and
the pattern discovery will fail.
Pattern usage by Service Mapping and Discovery
Product

Pattern type

Result

Discovery

Infrastructure pattern

Inventory list of devices

Application pattern

Inventory list of applications

Application pattern

Service instance map

Service Mapping

For discovering devices that act as hosts for applications, Service Mapping relies on Discovery.
As part of the top-down discovery process, Service Mapping triggers Discovery to perform
its horizontal discovery behind the scenes. Service Mapping then uses information on hosts
provided by the horizontal discovery to create its service instance maps.
Patterns of all types are stored in the Discovery Patterns [sa_pattern] table.
Discovery uses a combination of probes and patterns. For more information, see Horizontal
discovery process flow with probes and sensors.

Correlation between pattern and CI type
Patterns are assigned to the CI types that they serve to discover. If necessary, you can assign
more than one CI type per pattern. In that case, you define one main CI type and multiple related
CI types. For example, a pattern for discovering BIG-IP Global Traffic Manager (GTM) F5 has F5
BigIP GTM as its main CI type. It also has related CI types for the Domain Name System (DNS)
name, network adapter, and other components.
For the top-down discovery performed by Service Mapping, each application pattern serves to
discover only the main CI type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1862


<!-- page 1863 -->
Main CI type discovery during top-down discovery

However, Service Mapping usually uses more than one pattern to discover the same CI type,
because a CI type can use different protocols, operating systems, entry points, and so on.
Unlike top-down discovery, the process of horizontal discovery uses each pattern to discover a
main CI type with all related CI types.
Discovery of main and related CI types during horizontal discovery

Why install patterns from the ServiceNow Store
ServiceNow releases new discovery patterns on the ServiceNow Store
on a monthly basis to
ensure that your organization can discover the latest industry-standard devices and applications.
Major ServiceNow versions incorporate patterns previously released on the ServiceNow Store.
ServiceNow releases all discovery patterns using the following applications:
Discovery and Service Mapping Patterns (sn_itom_pattern)
This application provides the latest versions of discovery patterns the original
version of which ServiceNow released on ServiceNow Store.
Visibility Content (sn_pattern_design)
This application supplies the updated version of the patterns that were part of the
family releases up until Tokyo.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1863


<!-- page 1864 -->
You can install the latest available versions of the pattern applications from the ServiceNow
Store. Alternatively, you can install these applications as plugins on your ServiceNow instance.

Why customize patterns
You can customize patterns in the following cases:
• If your organization uses proprietary devices and applications, create patterns for these items
to enable Discovery and Service Mapping to discover them.
• If you modify key attributes of CI types that had corresponding patterns, modify the relevant
patterns to reflect the change.

Pattern versions
When you customize a pattern, you actually create a copy of the original preconfigured pattern.
While Service Mapping or Discovery use the customized version, the original version isn’t
deleted. When you download an update of the pattern from the ServiceNow Store, the original
pattern is updated, not the customized copy of it.
Exclusion of a customized pattern from an upgrade

If at some point you want to abandon the customized pattern and start using the updated original
pattern, you can revert to the original pattern as described in Choose the pattern version.

Patterns users
The following user roles have access to patterns or pattern-related modules and can perform
various actions. Note that customizing patterns requires basic knowledge of programming.
Patterns users and access
User

Description

Discovery Can view, create, edit, and publish patterns. The role enables users to run
admin
discovery, migrate probes or CAPI to patterns, and access discovery logs and
dashboards.
PD user

Has read-only access to Discovery Pattern Log.

PD admin Can view, create, edit, and publish patterns.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1864


<!-- page 1865 -->
Patterns users and access (continued)
User

Description

PDE
viewer

Starting with Pattern Designer Enhancements version 3.9.0, users can view
Command Validation Tasks, Command Validation Tasks Results, and Command
List.
The pde_viewer can view the Command Validation Tool modules and related
tables, but doesn't have permissions to modify or edit them.
The pde_viewer role can view the following tables only:
• Command List [pd_command_list]
• Command Validation Task [pd_command_validation]
• Command Validation Task Results [pd_command_validation_results]
• Pattern Shared Library Mapping [pd_pattern_to_shared_library_mapping]
• Temporary Variable Mappings [pd_temp_variable_value_mapping]

PD MID

Not assigned to a user directly but to the MID Server record or the user under which
the MID Server runs. The role enables the MID Server to interpret and run patternbased probes.

MID
Server

Can grant the MID Server access to the instance.

Patterns for instances using domain separation
In instances that use domain separation, patterns might be domain-specific, covering only the
domains that you created them for, or global, applying to all domains.
Patterns belong to domains. By default, all preconfigured patterns are assigned to the global
domain and apply to all domains of all levels.
You can create patterns for specific domains. In that case, the new pattern is used only for this
domain and doesn’t exist in any other domains. If you customize an existing pattern in the global
domain and assign it to a specific domain, you create a copy of the global pattern. The original
global pattern is still used for all other domains except for the domain that has the customized
version of this pattern. Likewise, if you customize the pattern belonging to the global domain, the
change affects all domains except for the one that uses a customized copy of this pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1865


<!-- page 1866 -->
Global or domain-specific patterns

Pattern creation or modification flow
Typically, you maintain two ServiceNow instances in your organization: for production and
for development. Create or modify patterns, test them, and verify results in the development
instance. When you are satisfied with the discovery results, export relevant patterns from the
development instance to create an update set. Then you retrieve and commit the update set in
your production instance.
If you’re creating a pattern for applications and devices that aren’t supported in the ITOM
Visibility global content application, start from creating CI types for them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1866


<!-- page 1867 -->
Pattern creation flow

Related topics
Detailed information on products discovered by ITOM Visibility
Class diagrams and class attributes for key CMDB classes
Description of key CMDB tables in the base system
CMDB CI Class Models: ServiceNow Store app that adds class models that extend the base
CMDB class hierarchy
Information about the various options for populating the CMDB
ServiceNow Store apps that provide pre-defined Service Graph connectors for importing and
integrating common third-party data into CMDB classes
KB0747679: Pre/Post Processing Scripts for patterns
Application patterns for the Agent Client Collector
Certificate Inventory and Management patterns

Available on-premise discovery patterns
ITOM Visibility comes with an extensive library of patterns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1867


<!-- page 1868 -->
ServiceNow releases new discovery patterns on the ServiceNow Store
on a monthly basis to
ensure that your organization can discover the latest industry-standard devices and applications.
Major ServiceNow versions incorporate patterns previously released on the ServiceNow Store.
For a complete list of devices and applications that ITOM Visibility can discover, see Detailed
information on products discovered by ITOM Visibility.
Apache Cassandra database discovery
ServiceNow Discovery finds the Apache and the DataStax Cassandra database on UNIX using
the Cassandra Distributed DB pattern. Discovering some of these resources requires installing
®
the Discovery and Service Mapping Patterns from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Provide credentials for discovering the host
Identify the servers hosting a Cassandra database and provide credentials
necessary for horizontal discovery of these servers. For more information, see
Credentials required for host discovery.
Verify CMDB CI Class Models store app is up to date
Ensure that your instance supports the Cassandra CI class models by deploying the
1.14.0 version of the CMDB CI Class Models store app from the ServiceNow Store.
Verify permissions for Cassandra commands for UNIX
For the list of Cassandra commands, see the Cassandra (for UNIX) section in
Service Mapping commands requiring a privileged user.
Verify read access to cassandra.yaml
Possible locations of the cassandra.yaml file:
• $config_directory + "/cassandra.yaml"
• $process.environmentVariables.CASSANDRA_CONF.value +
"/cassandra.yaml"
• $install_directory + "/conf/cassandra.yaml"

Data collected by Discovery for Cassandra database
Discovery populates the data in the CMDB when running the Cassandra Distributed DB pattern.
Cassandra Cluster [cmdb_ci_cassandra_cluster]
Field

Description

Name [name]

Name of the cluster as well serves as a display name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1868


<!-- page 1869 -->
Cassandra Cluster Node [cmdb_ci_cassandra_cluster_node]
Field

Description

Cluster [cluster]

Reference of the Cassandra cluster CI in which this node
is part of.

Cluster Name [cluster_name]

Name of the cluster.

IP Address [ip_address]

IP Address of the cluster node (host machine).

Name [name]

Display name in the following format:
cluster_name@hostname.

Operational status
[operational_status]

Operational status of the cluster node.

Server [server]

Reference of server (host machine) CI

Cassandra Instance [cmdb_ci_cassandra_instance]
Field

Description

Cluster Name
[cluster_name]

Name of the cluster.

Configuration
directory
[config_directory]

Directory path where configuration files are available.

Configuration file
[config_file]

File path of base init configuration file where other configuration-related
paths can be configured.

Data Center
[data_center]

Data center in which the cluster node is part of a cluster.

Installation
directory
[install_directory]

The installation path.

IP Address
[ip_address]

IP address of the host machine where the process is running.

Name [name]

Display name which is the same as the <uid>.

PID [pid]

Process ID running on the host machine.

Rack [rack]

The rack information in which the cluster node is part of.

Description
The short description of the instance.
[short_description]
TCP port(s)
[tcp_port]

List of TCP ports configured as in “cassandra.yaml” configuration file
(Format: “:port1:port2:port3:”)

UID [uid]

The unique ID to identify the instance (Format:
<cluster_name>__<data_center>__<rack>@hostname).

Vendor [vendor]

Vendor name for reference from “core_company” table if already
available. If it is not available, a new entry is logically created with the
name “Apache” or “DataStax”.

Workload Running The name of the workload running on the instance.
[workload_running]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1869


<!-- page 1870 -->
Cassandra Keyspace [cmdb_ci_cassandra_keyspace]
Field

Description

Cluster [cluster]

The reference of Cassandra cluster CI in which the keyspace is
part of.

Cluster Name
[cluster_name]

Name of the cluster in which the keyspace is part of.

Keyspace Name
[keyspace_name]

Name of the keyspace.

Name [name]

The display name in the following format:
<keyspace_name>@<cluster_name>.

Dependency Views showing discovered Apache Cassandra deployment

CI relationships
Discovery creates these relationships to support the Apache Cassandra database discovery.

CI

Relationship

CI

Cassandra Instance
Runs on::Runs
[cmdb_ci_cassandra_instance]

Server [cmdb_ci_server]

Cassandra Cluster Node
Hosted on::Hosts
[cmdb_ci_cassandra_cluster_node]
Cluster of::Cluster

Server [cmdb_ci_server]

Cassandra Keyspace
Hosted on::Hosts
[cmdb_ci_cassandra_keyspace]

Cassandra Cluster
[cmdb_ci_cassandra_cluster]

Cassandra Cluster
[cmdb_ci_cassandra_cluster]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1870


<!-- page 1871 -->
Data discovered by Service Mapping during top-down discovery
Service Mapping performs the top-down discovery of Cassandra, which typically runs as a
distributed database on a cluster of server nodes. During top-down discovery, Service Mapping
discovers instances running on nodes and displays them on the application service map.
In addition to the tables and fields discovered during horizontal discovery, the top-down
discovery also discovers the fields listed in the following table.
Cassandra Instance [cmdb_ci_cassandra_instance]
Field

Description

Keyspaces [keyspaces]

Keyspace(s) the instance can access
(populated only in top-down discovery).

For incoming connections, the instance is discovered, as shown in the following image.
Cassandra discovery top-down service map

Related topics
Database Administrator (DBA) report discovery
Apache Kafka and Apache Zookeeper discovery
ServiceNow Discovery uses the Kafka and Zookeeper discovery pattern to find Kafka data built on
the Zookeeper synchronization service.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
CMDB CI Class Models store app
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1871


<!-- page 1872 -->
Verify the CMDB CI Class Models store app (version 1.20.0) is installed.
Discovery and Service Mapping Patterns store app
Verify the Discovery and Service Mapping Patterns store app (version 1.0.72) is
installed.
Certificate Authority process
Ensure that the CA process is up and running on the host machine.
Discovery credentials
Ensure you have the credentials for running Discovery on the host machine running
the CA process.
Kafka and Zookeeper process should be running on the host.

Note: Kafka Broker Discovery should run first followed by Zookeeper. In the Zookeeper
Configuration file, the order of nodes forming the cluster should be consistent across all of
the nodes in the cluster.

Data collected by Discovery during horizontal discovery
Resources discovered on the [cmdb_ci_appl_kafka_connect] table
Fields

Description

name

Name of the CI

node

Node where the zookeeper is installed

tier

Tier of the zookeeper

install_directory

Path of the install directory

config_file

Path of the config file

config_directory

Path of the config directory

Resources discovered on the [cmdb_ci_appl_kafka_topic] table
Fields

Description

name

Name of the CI

isr

In Sync Replica

replicas

Number of replicas of the topic

partition_count

Partition count of the topic

replication_factor

Replication factor of the topic

Resources discovered on the [cmdb_ci_appl_zoo_keeper] table
Fields

Description

name

Name of the CI

node

Node where the zookeeper is installed

tier

Tier of the zookeeper

config_file

Path of the config file

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1872


<!-- page 1873 -->
Resources discovered on the [cmdb_ci_appl_zoo_keeper] table (continued)
Fields

Description

install_directory

Path of the install

Resources discovered on the [cmdb_ci_kafka_cluster] table
Fields

Description

Cluster_id

Unique id specific to cluster

Resources discovered on the [cmdb_ci_zoo_keeper_cluster] table
Fields

Description

Cluster_id

Unique id specific to cluster

Resources discovered on the [cmdb_ci_kafka_cluster_node] table
Fields

Description

Name

Name of the Node

Clustername

Name of the cluster the node belongs to

Resources discovered on the [cmdb_ci_zoo_keeper_cluster_node] table
Fields

Description

Name

Name of the Node

clustername

Name of the cluster the node belongs to

CI Relationships
The Kafka and Zookeeper pattern does not create any CI relationships.
Apigee Edge Enterprise edition discovery
The ServiceNow Discovery application uses the APIGee pattern to find Apigee Edge Enterprise
edition versions 4.x.x. Discovering some of these resources may require updating to the latest
version of the Discovery and Service Mapping Patterns application from the ServiceNow Store.
The APIGee pattern uses a built-in cache mechanism that collects data from each API service
into a local cache file. Service Mapping performs top-down discovery on these cache files to find
outgoing Apigee Edge connections.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Linux user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1873


<!-- page 1874 -->
Provide the Linux operating system (OS) user with elevated rights for running the
cat, ls, netstat, and stat commands. For more information, see Service Mapping
commands requiring a privileged user.
In addition, provide this Linux user with permissions to run the following commands
on the OS user home folder:

Command

Description

"date +%s"

Gets the current date.

"ls -d $HOME/APIGee_Cache/
cache_folder*"

Gets the last cache folder.

"mkdir-p $HOME/APIGee_Cache/
Creates the cache file if the cache file is
cache_folder_" + $today + ";ls -d
empty.
$HOME/APIGee_Cache/cache_folder_"
+ $today
"ls -d $HOME/APIGee_Cache/
cache_folder*"

Verifies that the cache file has been
created.

"echo `expr " + $today + " -" +
$current_date+ "`”

Calculates the gap between the folder
creation time and the current date.

"if [ " + $diff + " -ge" + $week_seconds+
" ]; then echo true; fi”

Checks if it is necessary to recreate the
folder.

"ls" + $cache_folder+ "/* | sort |
xargsgrep -l " + $entry_point.source_url

Checks if existing cache files contain
the source URL that you enter as the
entry point for the service.

"rm-rf" + $cache_folder+ ";mkdirRemoves old cache files.
p $HOME/APIGee_Cache/
cache_folder_" + $today + ";ls -d
$HOME/APIGee_Cache/cache_folder_"
+ $today
“curl -k -X GETurl-H '<ClientID>:
<Token>’”

Gets the API response for the given
token.

"ls" + $cache_folder+ "/* | sort |
xargsgrep -l " + $entry_point.source_url

Gets the URL definition from the cache
file.

Applicative credential
Configure the applicative credential as follows:
Applicative Credentials form
Field

Description

Name

The credential name, for example
Apigee token.

Active

Check box for enabling this credential
for discovery.

User name

The name of the user of this applicative
credential. You can use any user for
the credential for this pattern, since the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1874


<!-- page 1875 -->
Applicative Credentials form (continued)
Field

Description

information is extracted from a local
cache.
Password

The actual user password of this
applicative credential.

CI type

The CI type for which this
credential is used: APIGee Service
[cmdb_ci_appl_apigee_srv].

Note: ServiceNow applications
refer to devices and applications
that comprise a service instance
as configuration items (CIs).
Applies to

Select whether to apply these
credentials to All MID servers in your
network, or to one or more Specific MID
servers. Specify the MID Servers that
should use these credentials in the MID
servers field.

Order

Enter the order (sequence) in which
the platform tries this credential as
it attempts to log on to devices. The
smaller the number, the higher in the
list this credential appears. Establish
credential order when using large
numbers of credentials or when security
locks out users after three failed login
attempts. If all the credentials have
the same order number (or none),
the instance tries the credentials in a
random order.

curl command
Make sure that the curl command is installed on the Linux server hosting Apigee
Edge.
Configure system properties
• To create top-down outgoing Apigee Edge connections, configure the Apigee
URLs (apigee.urls) system property using the following syntax:
01#DVL#https://<url1>.com/dashboard/v1/targetServers/
dvl### 02#QA#https://<url2>.com/dashboard/
v2/targetServers/qa###
Where
01 is the URL number.
DVL is the environment type, like development.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1875


<!-- page 1876 -->
is the delimiter between the attributes. Place it exactly where it is in the example
above.
is the delimiter between URLs.
• Configure the Apigee API Client ID (apigee.api.client.id) system property by
entering the Apigee API Client ID in the Value field. The pattern uses this property
as header for the curl command with the token:

curl -k -X GET " + url + " -H ' apigee.api.client.id: "
+ token
The pattern populates these two system properties using the Add Apigee URLs
and Apigee api client id sa_pre_task_script.

Data collected by Discovery for Apigee Edge Enterprise edition
Discovery populates the data in the CMDB when running the APIGee pattern.
APIGee Service [cmdb_ci_appl_apigee_srv]
Field

Description

Name [name]

The name of the server hosting the Apigee Edge.

Version [version]

The version of the Apigee Edge.

Installation directory
[install_directory]

The folder containing all the Apigee Edge libraries and
executable files.

Configuration directory
[config_directory]

The folder containing all the Apigee Edge configuration
files.

CI relationships
The APIGee pattern does not create any CI relationships.

Data collected by Service Mapping during top-down discovery
The APIGee pattern identifies connections from the Apigee Edge to other CIs based on the URL
you configure in the connection section of the pattern.
Avi Vantage load balancer discovery
The ServiceNow Discovery and Service Mapping applications use the Avi load balancer
discovery patterns to find Avi Vantage load balancer components. Discovering some of these
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
Discovery uses the Avi Load Balancer Controller pattern and the Avi Load Balancer Controller Session-based pattern to run horizontal discovery. Both patterns use set of REST APIs to find the
load balancers. They differ only in the type of authentication used when running the API queries.
For top-down discovery, Service Mapping uses the Avi Load Balancer VIP pattern.
The patterns support Avi infrastructure residing on AWS and VMware. They relate the discovered
CIs to the infrastructure only when run on VMware . The patterns also support Global Server
Load Balancing (GSLB).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1876


<!-- page 1877 -->
®

You can use these patterns on the ServiceNow AI Platform using the release Madrid patch 5,
New York or later.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
• Ensure that your instance supports the Avi Load Balancer CI class models by deploying
the latest version of the CMDB CI Class Models store app. Install the application from the
ServiceNow Store.
• For the Avi Load Balancer Controller pattern:
◦ In the Avi Controller, ensure that Basic Authentication is allowed.
◦ Configure the following credentials:
1. Navigate to Discovery > Credentials
2. Click New.
3. Click Basic Auth Credentials, fill out the form, and then click Submit.
Credentials form
Field

Description

Name

Credential name.

Active

Option for enabling this credential for
discovery. Select this check box to enable
discovery.

Applies to

Select All MID servers.

Order

Order in which the platform tries this
credential as it attempts to log on to
devices. A smaller number indicates that
the credential appears higher in the list.
Establish the credential order when using
large numbers of credentials or when
security locks out users after three failed
login attempts. If all the credentials have
the same order number, or none, the
instance tries the credentials in a random
order. The default value is 100.

User name

Name of the user for performing Avi Load
Balancer discovery.

Password

Password for this user.

4. Run a Quick Discovery on the IP address of the Avi Controller Cluster.
• For the Avi Load Balancer Controller - Session-based pattern:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1877


<!-- page 1878 -->
◦ Create a Basic Authentication credential with an alias:
1. Navigate to Connections & Credentials > Connection & Credential Aliases.
2. Click New.
3. Enter a unique name for the alias and select Credential for the alias type.
4. Click Submit.
5. Open the new alias.
6. On the Credentials tab, click New.
7. Select Basic Auth Credentials for the credential type and fill out the form.
Credentials form
Field

Description

Name

Credential name.

User name

Name of the user for performing Avi Load
Balancer discovery.

Password

Password for this user.

8. Click Update.
◦ Create a serverless discovery schedule.
Then do the following:
1. In the scheduler, click the Serverless Execution Patterns tab.
2. Click New.
3. Fill out the form and then click Submit.

Field

Description

Name

Provide a descriptive name.

Pattern

Select the Avi Load Balancer Controller Session-based pattern.

4. Open the record created in the previous steps, and configure these parameters:

Parameter

Description

IP address

The Avi IP address.

Credential alias

The name of the credential alias created
above.

• For the Avi Load Balancer Controller pattern and the Avi Load Balancer Controller - Sessionbased pattern, provide a user with permissions to send the following API queries.
◦ /api/cluster
◦ /api/serviceengine
◦ /api/pool
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1878


<!-- page 1879 -->
◦ /api/vimgrvmruntime?controller_vm=true
◦ /api/cloud
◦ /api/virtualservice
◦ /api/serviceenginegroup
◦ /api/gslbservice
◦ /api/tenant
• For the Avi Load Balancer VIP pattern:
◦ Create an service instance

.

◦ Before using the Avi Load Balancer VIP pattern, use one of the horizontal Avi load balancer
discovery patterns to find the Avi infrastructure.

Data collected by Discovery during horizontal discovery
The discovered data includes the following tables and fields.

Table and field

Description

Avi Controller [cmdb_ci_avi_controller]
Name [name]

Name of the Avi Controller.

Fully qualified domain name [fqdn]

Hostname of the Virtual Machine (VM).

IP address [ip_address]

IP address of the FQDN.

Avi Service Engine [cmdb_ci_avi_service_engine]
Name [name]

Name of the Avi Service Engine.

IP address [ip_address]

IP address of the Avi Service Engine.

Version [version]

Version of the Avi Service Engine.

Object ID [object_id]

Unique identifier of the Avi Service Engine.

Avi Controller Cluster [cmdb_ci_avi_controller_cluster]
Cluster ID [cluster_id]

Unique identifier of the Avi Controller Cluster.

Name [name]

Name of the Avi Controller Cluster.

IP address [ip_address]

IP address of the Avi Controller Cluster host.

Load Balancer Pool [cmdb_ci_lb_pool]
Name [name]

Name of the Load Balancer Pool.

Server ID [server_id]

Unique identifier of the Load Balancer Pool.

Load Balancing Method
[load_balancing_method]

Method that Avi Vantage uses to make its load
balancing decision. The pattern translates the
algorithms as follows:
• "LB_ALGORITHM_LEAST_CONNECTIONS":
"least-connections"
• "LB_ALGORITHM_ROUND_ROBIN": "roundrobin"
• "LB_ALGORITHM_FASTEST_RESPONSE":
"fastest-response"

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1879


<!-- page 1880 -->
Table and field

Description

• "LB_ALGORITHM_CONSISTENT_HASH":
"consistent-hash"
• "LB_ALGORITHM_LEAST_LOAD": "leastload"
• "LB_ALGORITHM_FEWEST_SERVERS":
"fewest-servers"
• "LB_ALGORITHM_RANDOM": "random"
• "LB_ALGORITHM_FEWEST_TASKS": "fewesttasks"
• "LB_ALGORITHM_NEAREST_SERVER":
"nearest-server"
Load Balancer Pool Member [cmdb_ci_lb_pool_member]
Name [name]

Name of the Pool Member @ name of the Pool.

IP address [ip_address]

IP address of the Pool Member host.

Load Balancer Service [cmdb_ci_lb_service]
Name [name]

Name of the Virtual IP (VIP).

IP address [ip_address]

IP address of the VIP.

Object ID [object_id]

Unique identifier of the VIP.

Port [port]

Port of the host VM.

Avi Tenant [cmdb_ci_avi_tenant]
name

Name of the Tenant.

object_id

The object_id of the Tenant.

tenant_url

URL to the Tenant.

The Dependency Views map shows discovered load balancer CIs and the relationships between
them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1880


<!-- page 1881 -->
The following image shows the results of top-down discovery using the Avi Load Balancer VIP
pattern.
Top-down discovery using the Avi Load Balancer VIP pattern

CI relationships
These relationships are created to support Avi Load Balancer discovery:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1881


<!-- page 1882 -->
CI

Relationship

CI

Avi Controller Cluster
Cluster of::Cluster
[cmdb_ci_avi_controller_cluster]

Avi Controller
[cmdb_ci_avi_controller]

Avi Tenant
[cmdb_ci_avi_tenant]

Hosted on::Hosts

Avi Controller Cluster
[cmdb_ci_avi_controller_cluster]

Contains::Contained by

Load Balancer Service
[cmdb_ci_lb_service]

Used by::Uses

Load Balancer Service
[cmdb_ci_lb_service]

Hosted on::Hosts

Avi Controller Cluster
[cmdb_ci_avi_controller_cluster]

Owns::Owned by

Load Balancer Pool Member
[cmdb_ci_lb_pool_member]

Avi Service Engine
[cmdb_ci_avi_service_engine]

Hosted on::Hosts

Avi Controller Cluster
[cmdb_ci_avi_controller_cluster]

Avi Controller
[cmdb_ci_avi_controller]

Contains::Contained by

Avi Service Engine
[cmdb_ci_avi_service_engine]

Load Balancer Service
[cmdb_ci_lb_service]

Used by::Uses

Avi Service Engine
[cmdb_ci_avi_service_engine]

Runs on::Runs

Avi Controller Cluster
[cmdb_ci_avi_controller_cluster]

Reference only

Avi Controller Cluster
[cmdb_ci_avi_controller_cluster]

Load Balancer Pool
[cmdb_ci_lb_pool]

Load Balancer Pool Member
[cmdb_ci_lb_pool_member]

Troubleshooting
If Avi load balancer top-down discovery fails, see KB article KB0824019

for a workaround.

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1882


<!-- page 1883 -->
Symptom

Cause

Solution

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

Next-Generation Cisco Firewall discovery
The ServiceNow Discovery application uses the Next Generation Cisco Firewall pattern to find
Cisco firewalls. Discovering some of these resources may require updating to the latest version
of the Discovery and Service Mapping Patterns application from the ServiceNow Store.
The discovery pattern uses a set of SNMP calls to find the Cisco firewalls. Discovery uses the
pattern to run horizontal discovery.
®

You can use this pattern on the ServiceNow AI Platform using the Madrid release or later.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
• Ensure that your network firewall device has SNMP access.
• On the ServiceNow instance, configure SNMP credentials. For more information, see SNMP
credentials .
• Add the SNMP system OID record for the Cisco device to the ServiceNow instance. Update the
following:
◦ Classifier: Cisco Firewall
◦ Class: Cisco Firewall Device
• Deploy the pattern as follows:
1. Download and install Firewall extension classes
from the ServiceNow Store. The app adds
the new CMDB classes required for network firewall discovery.
2. Download and install the Discovery and Service Mapping Patterns application from the
ServiceNow Store .
3. Sync the pattern with the appropriate MID Server.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Next Generation Cisco Firewall
pattern.
Cisco Firewall Device [cmdb_ci_firewall_device_cisco]
Field

Description

Serial number
[serial_number]

Serial number of the device.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1883


<!-- page 1884 -->
Cisco Firewall Device [cmdb_ci_firewall_device_cisco] (continued)
Field

Description

Name [name]

Administratively assigned name for this managed node. By
convention, this is the node's fully qualified domain name (FQDN).

IP Address [ip_address] IP address of the device.
Firmware version
[firmware_version]

Firmware version.

Fully qualified domain
name [fqdn]

FQDN of the device.

Manufacturer
[manufacturer]

Device manufacturer.

Model ID [model_id]

Device model name.

Harware OS
[hardware_os]

Operating system (OS) running on the hardware.

Hardware OS Version
[hardware_os_version]

OS version running on the hardware.

Description
[short_description]

Short description of the Cisco device.

Operational status
[operational_status]

Indicates if the device is in active state.

Hardware Status
[hardware_status]

Detailed description of the current status of the resource.

IP Address [cmdb_ci_ip_address]
Field

Description

IP Address [ip_address]

IP address of the Cisco firewall.

Netmask [netmask]

Netmask of the Cisco firewall.

Nic [nic]

References the Network Adapter [cmdb_ci_network_adapter] table.

Network Adapter [cmdb_ci_network_adapter]
Field

Description

IP Address [ip_address]

IP address of the network adapter.

Alias [alias]

User-assigned name for the network adapter.

Netmask [netmask]

Netmask of the network adapter.

MAC Address
[mac_address]

MAC address of the network adapter.

Name [name]

Name of the network adapter.

Configuration Item
[cmdb_ci]

References the Cisco Firewall Device
[cmdb_ci_firewall_device_cisco] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1884


<!-- page 1885 -->
DNS Name [cmdb_ci_dns_name]
Field

Description

Name [name]

Name of the Domain Name System (DNS).

IP Address [ip_address]

IP address of the DNS.

This Dependency Views map on the Cisco Firewall Device CI shows the Cisco Firewall Device.

CI relationships
These relationships are created to support Cisco firewall discovery.

CI

Relationship

CI

Cisco Firewall Device
[cmdb_ci_firewall_device_cisco]

Owns::Owned IP Address [cmdb_ci_ip_address]
by

Cisco Firewall Device
[cmdb_ci_firewall_device_cisco]

Owns::Owned Network Adapter
by
[cmdb_ci_network_adapter]

Cisco Firewall Device
[cmdb_ci_firewall_device_cisco]

Uses::Used by Router Interface
[dscy_router_interface]

IP Address [cmdb_ci_ip_address]

References

Network Adapter
[cmdb_ci_network_adapter]

Owns::Owned IP Address [cmdb_ci_ip_address]
by

Network Adapter
[cmdb_ci_network_adapter]

References

Cisco Firewall Device
[cmdb_ci_firewall_device_cisco]

Router Interface
[dscy_router_interface]

References

Cisco Firewall Device
[cmdb_ci_firewall_device_cisco]

Serial Number [cmdb_serial_number]

References

Cisco Firewall Device
[cmdb_ci_firewall_device_cisco]

Network Adapter
[cmdb_ci_network_adapter]

Cisco Switch Wireless Access Point (WAP) discovery
The ServiceNow Discovery application uses the Cisco WAPs extension to find Wireless Access
Points (WAPs) that are controlled by a Cisco network switch. Discovering some of these
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1885


<!-- page 1886 -->
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
This extension extends the Network Switch discovery pattern. For more information, see Network
switch and router discovery.
Discovery uses the Cisco WAPs extension to run horizontal discovery.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
For prerequisites related to network switch discovery, see Network switch and router discovery.
In addition, these prerequisites must be in place for the Cisco WAPs extension:
• Permission to query the OID: 1.3.6.1.4.1.14179.2.2.1.1.
• The client must be able to run discovery patterns.
• The client must use a Cisco network switch.
• The client must have SNMP access to the Cisco network switch that controls the WAP devices.

Data collected by Discovery during horizontal discovery
The data discovered by the Cisco WAP extension includes the following tables and fields.

Tables and fields

Description

Main CI Class [cmdb_ci_wap_network]
Name [name]

Name assigned to the WAP. Collected from
bsnAPName.

MAC Address [mac_address]

The MAC address of the WAP. Collected from
bsnAPDot3MacAddress.

IP address [ip_address]

IP address of the WAP. Collected from
bsnApIpAddress.

Firmware version [firmware_version]

IOS version of the IOS Cisco WAP. Collected
from bsnAPIOSVersion.

Serial Number [serial_number]

WAP serial number. Collected from
bsnAPSerialNumber.

Model number [model_number]

WAP model. Collected from bsnAPModel.

snmp_sys_location

User-specified location of the WAP. Collected
from bsnAPLocation.

Manufacturer [manufacturer]

Manufacturer of the WAP (Cisco).

The Dependency Views map shows all discovered Cisco WAP CIs and the relationships between
them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1886


<!-- page 1887 -->
CI relationships
These relationships are created to support Cisco WAPs discovery:

CI

Relationship

CI

cmdb_ci_ip_switch

Controller for :: Controlled by

cmdb_ci_wap_network

Citrix NetScaler SDX discovery
The ServiceNow Discovery application can discover Citrix NetScaler SDX devices using the Citrix
NetScaler SDX pattern. Discovering some of these resources may require updating to the latest
version of the Discovery and Service Mapping Patterns application from the ServiceNow Store.
®

You can use this pattern on the ServiceNow AI Platform starting from the Quebec release.
The new classification mechanism introduced in Quebec triggers the pattern. The classification
mechanism prevents the whole probe from failing if a sub probe in a multi-probe fails.​
The classification mechanism includes a new trigger_probe_m2m table, which defines which
classification probe to trigger in relation to the relevant protocol. For this pattern, it triggers the
Interactive Probe Shell over the ssh protocol.​

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the following applications are installed
• CMDB CI Class Models (version 1.0.20)
• Discovery and Service Mapping Patterns (version 1.0.72)
Create SSH credentials
Create SSH credentials for the Citrix NetScaler SDX device. For more information,
see SSH credentials .
Verify permissions for the following commands
Verify that the Discovery user added in the ServiceNow AI Platform instance can run
the following commands:

Command

Description

show vmdevice

Get virtual machine (VM) instances.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1887


<!-- page 1888 -->
Command

Description

show hardware

Provides a quick overview of all configurable
settings for the Citrix NetScaler SDX devices.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Citrix NetScaler SDX pattern.
Citrix NetScaler SDX [cmdb_ci_citrix_netscaler_sdx]
Field

Description

Name [name]

The name of the Citrix NetScaler SDX device.

Serial number
[serial_number]

The serial number of the Citrix NetScaler SDX device.

IP Address
[ip_address]

The IP address of the Citrix NetScaler SDX device.

Object ID [object_id]

The CI identifier of the Citrix NetScaler SDX device, which includes the
serial_number and ip_address.

Description
[short_description]

The description of the Citrix NetScaler SDX device.

OS Version
[os_version]

The version of the Citrix NetScaler SDX device.​

Citrix Netscaler [cmdb_ci_lb_netscaler]
Field

Description

Name [name]

The name of the Citrix NetScaler load balancer.

Serial number [serial_number]

The serial number of the Citrix NetScaler load balancer.

IP Address [ip_address]

The IP address of the Citrix NetScaler load balancer.

On the Dependency Views map you can see all discovered Citrix NetScaler SDX resources in
your organization, and the relationships between them.

CI relationships
These relationships are created to support Citrix NetScaler SDX discovery:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1888


<!-- page 1889 -->
CI

Relationship

CI

Citrix Netscaler
[cmdb_ci_lb_netscaler]

Registered on::Has registered

Citrix NetScaler SDX
[cmdb_ci_citrix_netscaler_sdx]

Citrix Xen Hyper-V Discovery
ServiceNow Discovery uses the Citrix Xen Hyper-V pattern to find and map instances. Discover
these resources by installing the pattern applications from the ServiceNow Store and add Citrix
Xen Hyper-V to the Linux Server Pattern’s Extension Section.
Use the Xen (XE) and (XL) commands to discover Citrix Xen Hyper-V, its components, and
respective attributes. Discover information regarding the Hyper-V Server, Associated Pools, VMs,
Network and Storage and their relationships with new and existing CIs.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify the following applications are up to date
• Discovery and Service Mapping Patterns
• CMDB CI Class Models
Verify pool admin RBAC role
This role is required for SSH access to the Linux server hosting the hypervisor
and for executing all the necessary commands to extract information from the
hypervisor environment. For more information on RBAC role permissions or adding
Citrix users to a domain and assigning roles, see the Citrix documentation .
Verify MID Server reachability
Verify MID Server has reachability to the target device.
Create SSH credentials with access to the target Linux host
For more information, see SSH credentials
Create an extension section after the Linux Server pattern
Create an extension section after the Linux Server pattern and associate the Citrix
Xen HyperV pattern to be triggered after the execution of the Linux Server discovery
pattern. For more information on creating extension sections, see Enhance patterns
without changing their identification sections.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Citrix Xen HyperV pattern.
Hyper-V Resource Pool [cmdb_ci_hyper_v_resource_pool]
Field

Description

object_id

UUID of the Hyper-V resource pool

name

Name of the Hyper-V resource pool

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1889


<!-- page 1890 -->
Hyper-V Resource Pool [cmdb_ci_hyper_v_resource_pool] (continued)
Field

default_sr

Description

Default storage repository is where the VDIs
are stored by default

Hyper-V Server [cmdb_ci_hyper_v_server]
Field

Description

object_id

UUID of the Hyper-V Server

name

Name of the Hyper-V Server in format
NAME@Hyper-V Server

serial_number

Serial number of the Linux Server where the
Citrix Xen Hyper-V server is running, in the
format SERIAL-NUMBER_hyper_v_server in
order to distinguish from the Linux Server

manufacturer

Vendor of the Hyper-V Server

model_id

Model ID of the Hyper-V Server

short_description

Description of the Hyper-V Server

os

Operating system of the Hyper-V Server

os_version

Version of the operating system of the Hyper-V
Server

host_name

Host name of the Hyper-V Server

ip_address

IP address of the Hyper-V Server

virtual

Set to false, as this value is used by calculators
to populate the IsVirtual flag on the dashboard
(SAM).

free_memory

Available memory of the Hyper-V Server

total_memory

Total memory of the Hyper-V Server

edition

Edition of the Hyper-V Server

cpu_core_count

The number of cores per physical CPU

cpu_count

Count of the total CPUs

ram

Total RAM memory in MB

cpu_speed

CPU speed in MHz

cpu_manufacturer

Manufacturer of the CPU

cpu_type

Type of the CPU

cpu_core_thread

The number of threads per CPU core

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1890


<!-- page 1891 -->
Hyper-V Virtual Machine Instance [cmdb_ci_hyper_v_instance]
Field

Description

object_id

UUID of the Hyper-V Server

name

Name of the Hyper-V Server

state

State of the Hyper-V instance

ip_address

IP address of the Hyper-V instance

host_id

The UUID of the host where the instance is
residing

baseboard_serial

UUID of the Hyper-V instance

chassis_serial

UUID of the Hyper-V instance

bios_serial

UUID of the Hyper-V instance

Hyper-V Virtual Network [cmdb_ci_hyper_v_network]
Field

Description

object_id

UUID of the Hyper-V Virtual Network

pif_uuid

UUID of the physical NIC

name

Name of the Hyper-V Virtual Network

bridge

Type of the network setup: either bridged or
not

Hyper-V Virtual Network Component [cmdb_ci_hyper_v_network_comp]
Field

Description

object_id

UUID of the Hyper-V network component

mac_address

MAC address of the Hyper-V network
component

vm

UUID of the Hyper-V instance, to which the
network component is associated

name

Name of the Hyper-V network component

Hyper-V Storage [cmdb_ci_hyper_v_storage]
Field

Description

object_id

LUN of the Hyper-V storage

name

Name of the Hyper-V storage

description

Description of the Hyper-V storage

type

Type of the storage (SR)

vm_object_id

UUID of the Hyper-V instance, to which the
storage is associated

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1891


<!-- page 1892 -->
Hyper-V Storage [cmdb_ci_hyper_v_storage] (continued)
Field

Description

vm_id

UUID of the Hyper-V instance, to which the
storage is associated

Hyper-V Storage Component [cmdb_ci_hyper_v_storage_comp]
Field

Description

object_id

UUID of the virtual disk image (VDI)

name

Name of the virtual disk image (VDI)

description

Description of the virtual disk image (VDI)

type

Type of the storage component (VDI)

capacity

Total capacity of the virtual disk image (VDI)

location_id

Location of the virtual disk image (VDI)

is_a_snapshot

Indication if the virtual disk image (VDI) is
snapshot or not

snapshot_of

Indication of VDI snapshot of the disks

snapshot_time

Time of the snapshot creation

sr_object_id

UUID of the storage repository to which the
virtual disk image (VDI) is associated

vm_object_id

UUID of the virtual machine associated with
the virtual disk image (VDI)

CI Relationships
Relationships created by Citrix Xen Hyper-V Discovery

Parent

Relationship

Child

cmdb_ci_hyper_v_resource_poolContains :: Contained by

cmdb_ci_hyper_v_server

cmdb_ci_hyper_v_server

Runs on :: Runs

cmdb_ci_linux_server

cmdb_ci_hyper_v_network

Provides :: Provided by

cmdb_ci_hyper_v_server

cmdb_ci_hyper_v_network_comp
Provides :: Provided by

cmdb_ci_hyper_v_server

cmdb_ci_hyper_v_instance

cmdb_ci_hyper_v_network_comp

Connected by :: Connects

cmdb_ci_hyper_v_resource_poolReference

cmdb_ci_hyper_v_storage

cmdb_ci_hyper_v_instance

Contains :: Contained by

cmdb_ci_hyper_v_storage

cmdb_ci_hyper_v_storage_compManaged by :: Manages

cmdb_ci_hyper_v_storage

cmdb_ci_hyper_v_storage_compReference

cmdb_ci_hyper_v_instance

cmdb_ci_hyper_v_server

cmdb_ci_hyper_v_resource_pool

Define resources for :: Gets
resources from

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1892


<!-- page 1893 -->
Parent

Relationship

Child

cmdb_ci_hyper_v_instance

Registered on :: Has
registered

cmdb_ci_hyper_v_server

Cloudian Storage Discovery
ServiceNow Discovery uses the Cloudian Storage discovery pattern to find Cloudian servers and
related disks. Discovering these resources requires installing the Patterns application from the
ServiceNow Store.
Discovery uses Cloudian Storage System patterns to find Cloudian Storage system data.
Discovering these resources requires installing the Discovery and Service Mapping Patterns
and the CMDB CI Class Models applications from the ServiceNow Store, as each application
is dependent on the other. You can use the patterns for discovering the Cloudian Storage
components on the ServiceNow AI Platform using the Paris release or later.
Cloudian is a software-defined data storage company. Cloudian provides turnkey distributed
software-defined S3-compatible object storage solutions.
Cloudian Hyperstore Software : Deploy the CentOS operating system, related packages, and
Hyperstore software binary files on the Hyperstore Node.
Cloudian Hyperstore Node: This is an independent hardware server in which Cloudian
Hyperstore software is deployed on an industry standard server, on a VM, or it is pre-installed on
a Cloudian Hyperstore appliance.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
To discover a device as a Cloudian server, the /bin/systemctl status cloudian-s3 command
must return valid responses and contain the Cloudian HyperStore Storage System. If this is not
the case, then the device is discovered as a Linux server.
• Make sure the client is using Discovery patterns.
• Set SSH credentials for the Cloudian Storage Server.
• Make sure the MID server has access to the target device.
• Ensure that the Discovery user has the correct privileges to run commands.
• Install the following plugins:
•◦ CMDB CI Class Models plugin (Version 1.31.0 or later)
◦ Discovery and Service Mapping Patterns plugin (Version 1.0.84 or later)
◦ Discovery and Service Mapping Patterns: (sn_itom_pattern) version 1.0.84 and dependent
plugin CMDB CI Class Models (sn_cmdb_ci_class) version 1.31.0 (October content release)

Credentials
Make sure the Cloudian Hyperstore Software is deployed on either CentOS or RHEL Servers. The
credentials configurations are the same as for a Linux server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1893


<!-- page 1894 -->
Configure the SSH credentials for the Cloudian Storage Server.

Running Discovery
To discover the Cloudian Storage System, create a Discovery schedule that targets the IP
address of the Cloudian Storage Server. Make sure that the SSH credentials that you configured
can access the Cloudian Server.

Data collected by Discovery during horizontal discovery
Storage Server [cmdb_ci_storage_server]
Field

Description

name
serial_number
ip_address
manufacturer
model_id
short_description
os_version
os
ram
cpu_manufacturer
cpu_name
cpu_core_count
cpu_type
Disk [cmdb_ci_disk]
Field

Description

name
device_id
storage_type
size_bytes
manufacturer
model_id
computer [Reference cmdb_ci_storage_server]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1894


<!-- page 1895 -->
File System [cmdb_ci_file_system]
Field

Description

name
size_bytes
free_space_bytes
file_system
mount_point
computer [Reference cmdb_ci_storage_server]
provided_by [Reference cmdb_ci_disk]

Network Adapter [cmdb_ci_network_adapter]
Field

Description

name
ip_address
netmask
mac_address
cmdb_ci [Reference cmdb_ci_storage_server]

IP Address [cmdb_ci_ip_address]
Field

Description

ip_address
netmask
nic [Reference cmdb_ci_network_adapter]
The Cloudianprobe is created in the Unix-Classify Multiprobe. The Cloudian probe runs the
/bin/systemctl status cloudian-s3 command and checks that the output contains Cloudian
HyperStore Storage System.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1895


<!-- page 1896 -->
Cloudian Probe

In Unix classification, the Cloudian Server classifier runs before the Linux Classifier. The
Cloudian classifier creates records in the [cmdb_ci_storage_server] table. This classifier invokes
the Cloudian Storage System Pattern.
Classification Criteria
Classification Criteria

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1896


<!-- page 1897 -->
CMDB Data Model
CMDB Data Model

Storage Server to Network Adapter
Storage Server to Network Adapter

Storage Server to Disks

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1897


<!-- page 1898 -->
Storage Server to Disks

Storage Server to Disks and File Systems
Storage Server to Disks and File Systems

CI Relationships
Relationships created by the Cloudian Storage pattern
Parent

Relationship

Child

cmdb_ci_storage_server

Owns::Owned by

cmdb_ci_network_adapter

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1898


<!-- page 1899 -->
Parent

Relationship

Child

cmdb_ci_storage_server

Owns::Owned by

cmdb_ci_ip_address

cmdb_ci_storage_server

Contains::Contained by

cmdb_ci_disk

cmdb_ci_storage_server

Contains::Contained by

cmdb_ci_file_system

cmdb_ci_storage_server

Virtualized by::Virtualizes

cmdb_ci_vm_instance

cmdb_ci_disk

Provides::Provided by

cmdb_ci_file_system

Cohesity storage system discovery
The Discovery and Service Mapping Patterns application uses the Cohesity Storage System
pattern to find clusters, nodes, and chassis for the Cohesity DataPlatform. Discovering some of
these resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
Cohesity develops software that are used to consolidate and simplify data management,
and it includes analytics capabilities. Their software also solves the problem of mass data
fragmentation with data that extends across multiple systems or cloud providers.
The company's main product, DataPlatform, is a hyper-converged software that allows
businesses to consolidate a variety of workloads, including backups, archives, test,
development, and analytics data onto a single cloud-native platform. It works with physical
servers as well as virtual machines.
Cohesity extends backup capabilities to NoSQL workload distributed databases like MongoDB,
Apache Cassandra, Couchbase, and Apache HBase, as well as Apache Hadoop data on Hadoop
Distributed File System (HDFS) datastores.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the applications are up to date
• CMDB CI Class Models, from version 1.37.0
• Discovery and Service Mapping Patterns, from version 1.0.91
Verify MID Server configuration
Verify the MID Server is set to Active and is reachable to the Cohesity storage
cluster.
Verify API permissions
Verify you have a basic authentication account configured with proper permissions
for the following API calls:
• https://" + ${cluster_ip} + "/irisservices/api/
v1/public/cluster?fetchStats=true
• https://" + ${cluster_ip} + "/irisservices/api/
v1/nexus/cluster/status

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1899


<!-- page 1900 -->
• https://" + ${cluster_ip} + "/irisservices/api/
v1/public/nodes?fetchStats=true
• https://" + nodeIp + "/irisservices/api/v1/nexus/node/
hardware_info
Create an alias for the basic authentication credential
For more information, see Create an alias for a basic authentication credential for
Cohesity storage system discovery.
Create a serverless discovery schedule
For more information, see Create a serverless schedule for Cohesity storage system
discovery.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Cohesity Storage System pattern.
Cohesity Cluster [cmdb_ci_cohesity_cluster]
Label

Description

IP Address [ip_address]

IP address of the cluster.

Fully qualified domain name [fqdn]

Fully qualified domain name (FQDN) of the cluster.

Cohesity Node [cmdb_ci_cohesity_node]
Label

Field Name

Manufacturer [manufacturer]

Manufacturer of the cluster node, which could be Cohesity
or third-party.

Fully qualified domain name
[fqdn]

FQDN of the node within the cluster.

Operational status
[operational_status]

Operational status. Default value: Installed.

Description [short_description]

Description of the cluster node: Cohesity Backup Server.

Chassis [cmdb_ci_chassis]
Label

Field Name

Manufacturer [manufacturer]

Manufacturer of the chassis.

Description [short_description]

Description of the chassis: Cohesity Chassis.

Serial number [serial_number]

Serial number of the chassis.

IP Address [cmdb_ci_ip_address]
Label

Field Name

Name [name]

Name of the Cohesity node.

IP Address [ip_address]

IP address of the Cohesity node.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1900


<!-- page 1901 -->
IP Address [cmdb_ci_ip_address] (continued)
Label

Field Name

IP version [ip_version]

IP version of the Cohesity node.

CI relationships
Discovery creates these relationships to support the Cohesity storage system discovery.

CI

Relationship Type

CI

Cohesity Node
[cmdb_ci_cohesity_node]

Owns::Owned by

IP Address
[cmdb_ci_ip_address]

Cohesity Node
[cmdb_ci_cohesity_node]
Cohesity Node
[cmdb_ci_cohesity_node]

Cluster of::Cluster

Cohesity Cluster
[cmdb_ci_cohesity_cluster]

Hosted on::Hosts

Chassis [cmdb_ci_chassis]

Create an alias for a basic authentication credential for Cohesity storage system discovery
Create an alias and add it to a basic authentication credential to discover Cohesity storage
systems.

Before you begin

Verify you have a basic authentication account configured with proper permissions. For more
information, see the Verify API permissions section in Cohesity storage system discovery.
Role required: discovery_admin

Procedure
1. Create an alias.
a. Navigate to Connections & Credentials > Connection & Credential Aliases.
b. Select New.
c. Enter a unique name for the alias and select Credential for the alias type in the Type field.
d. Select Submit.
2. Configure a basic authentication credential for the new alias.
a. Navigate to Discovery > Credentials.
b. Select New.
c. Select Basic Auth Credentials.
d. Unlock the Credential alias field and select the alias you created.
e. Configure the rest of the Basic Auth Credentials form fields.
f. Select Submit.
For more information about Basic Auth Credentials form fields, see Basic authentication
credentials .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1901


<!-- page 1902 -->
What to do next

Create a serverless discovery schedule. For more information, see Create a serverless schedule
for Cohesity storage system discovery.
Related topics
Cohesity storage system discovery
Create a serverless schedule for Cohesity storage system discovery
Create a serverless discovery schedule to discover Cohesity storage systems.

Before you begin
• Verify the MID Server is set to Active and is reachable to Cohesity storage cluster.
• Create an alias for the basic authentication credential. For more information, see Create an
alias for a basic authentication credential for Cohesity storage system discovery.
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
c. On the form, fill in the fields.
Serverless Execution Pattern New record form
Field

Description

Name

Descriptive name for this record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1902


<!-- page 1903 -->
Field

Description

Pattern Pattern to be used for this schedule, which should be the Cohesity Storage
System pattern.
Proxy
Host

Fully qualified domain name of the machine on which a proxy server is installed,
when applicable. This field should be left empty.

Active

Enables this schedule for discovery.

d. Select Submit.
4. Set the pattern launcher parameters.
a. In the Discovery Pattern Launcher Parameters tab, select the record you created.
b. On the form, fill in the fields.

Parameter

Value

cluster_ip

The Cohesity cluster URL or IP address.

credentialAlias

Name of the credential alias you created.

c. Select Submit.

What to do next

Either execute discovery immediately by selecting Discover now or wait until the predefined
schedule triggers the discovery.
Related topics
Cohesity storage system discovery
ColdFusion discovery
The ServiceNow Discovery application finds Adobe ColdFusion servers and the instances of
ColdFusion applications running on them. Only the 2016 version of ColdFusion is supported.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Components
Discovery and Service Mapping use the ColdFusion Application and ColdFusion
Application Server patterns to run horizontal and top-down discovery. The ColdFusion
Application Server pattern is triggered from the ColdFusion Application Server process
classifier for horizontal discovery.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Credentials
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1903


<!-- page 1904 -->
Configure the following credentials, depending on what type of host machine the
ColdFusion server is installed on:
• Windows credentials
• SSH credentials (for Linux machines)
File access
The pattern must be able to access these ColdFusion files:

File

Description

neo-runtime.xml This file provides the mapping between the URL and the
working directory path of the application.
application.cfc These files provide application names.
and
application.cfm
neodatasource.xml

This file provides the name of the datasource that is
used in the configuration of the ColdFusion application.
The datasource reference is configured in the
application.cfc and application.cfm files.

Note: The datasource is used for top-down
discovery only.
Entry point
For top-down discovery, use the full URL or IP address of the web application as the
HTTP(S) endpoint. For example: https://my-website-on-coldfusion/
path or https:10.120.255.2555:8500/path

Data collected during horizontal discovery
Table and Field

Description

Cold Fusion Server [cmdb_ci_coldfusion_server]
Installation directory
[installation_directory]

The name and version of the ColdFusion server, and the
directory where it is installed.

Name [name]
Version [version]
Installation directory
[installation_directory]

The name of the application and the directory where it is
installed.

Name [name]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1904


<!-- page 1905 -->
Note: Cold Fusion applications [cmdb_ci_cf_application] are custom applications that this
pattern does not discover.

CI relationships
CI

Relationship

CI

cmdb_ci_cf_application

Contains::Contained by

cmdb_ci_coldfusion_server

cmdb_ci_coldfusion_server

Runs on::Runs

cmdb_ci_linux_server
cmdb_ci_win_server
cmdb_ci_osx_server

Connections discovered by Service Mapping during the top-down discovery
Service Mapping performs the top-down discovery of the Adobe ColdFusion in the context of
application services. Service Mapping discovers the outgoing datasource connections from
ColdFusion servers to instances of database.

Example
In this example, the application service map shows the results of a top-down discovery of the
ColdFusion Web application service. The application service is comprised of three CIs:
• The ColdFusion application server is named cfusion.
• The ColdFusion application hdStreetOracle.
• A database named XE, which the ColdFusion application connects to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1905


<!-- page 1906 -->
ColdFusion service map

Couchbase Database discovery
The ServiceNow Discovery application uses the Couchbase Instance discovery pattern to
find and map Couchbase Database instances and their clusters. Discovering some of these
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
Couchbase Database is an open source, distributed database that manages JSON documents.
One or more instances of a Couchbase Server constitute a cluster. Data and services are shared
across the cluster.
Discovery uses the Couchbase Instance discovery pattern to run horizontal and top-down
®
discovery. You can use this pattern on the ServiceNow AI Platform using the Quebec release or
later.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
• The Couchbase Database must be installed on a Linux Server: Red Hat 7.9 or Ubuntu 20.
• Ensure that CLI tools are installed on the servers.
• On the ServiceNow AI Platform, configure SSH credentials
following permissions:

. Configure the credentials with the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1906


<!-- page 1907 -->
◦ Discovery permissions
◦ Permissions to list files, such as VERSION.txt, in the Couchbase installation folders on the
Linux Server.
◦ Permissions to execute the command, systemctl status couchbase-server, on
the Linux Server.
On the ServiceNow AI Platform, configure applicative credentials for the table
cmdb_ci_couchbase_instance. The credentials must have sufficient permissions to execute the
following commands on the Couchbase Server:
• <couchbase install dir>/bin/curl -u <username>:'<password>'
http://"<couchbase server>:<access_port>/pools/
• <couchbase install dir>/bin/curl -u <username>:'<password>'
http://"<couchbase server>:<access_port>/pools/<default Pool
name>
• <couchbase install dir>/bin/curl -u <username>:'<password>'
http://"<couchbase server>:<access_port>/pools/<default Pool
name>/buckets
• <couchbase install dir>/bin/curl -u <username>:'<password>'
http://"<couchbase server>:<access_port>/pools/<default Pool
name>/remoteClusters

Data collected by Discovery during horizontal discovery
The discovered data includes the following tables and fields.

Table and field

Description

Main CI (Couchbase Instance) [cmdb_ci_couchbase_instance]
name

The name of the Couchbase instance.

install_directory

The installation folder or directory of the
Couchbase instance.

config_file

The main configuration file of the Couchbase
instance.

version

The version of the Couchbase instance.

tcp_port

The port used for command line and Rest API
access.

edition

Either the Basic or Enterprise edition of the
Couchbase instance.

start_date

The date from which the Couchbase instance
has been active.

Couchbase Cluster [cmdb_ci_couchbase_cluster]
name

The name of the Couchbase cluster.

cluster_id

The ID of the Couchbase cluster.

install_status

The installed status, set to "1"/"installed".

cluster_type

The operational status, set to "1"/"operational".

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1907


<!-- page 1908 -->
Table and field

Description

Couchbase Cluster Node [cmdb_ci_couchbase_cluster_node]
name

The name of the Cluster node.

install_status

The installed status, set to "1"/"installed".

operational_status

The operational status, set to "1"/"operational".

node_status

The Cluster node health status.

node_encryption

Field that indicates whether the node is
encrypted.

configured_host_name

The configured host name of the Cluster node.

host_name

The actual host name of the Cluster node.

total_memory

The total memory.

free_memory

The free memory.

mcd_reserved_memory

The reserved MCD memory.

mcd_allocated_memory

The allocated MCD memory.

couch_api_base

The Couchbase base API URL.

couch_api_base_https

The Couchbase HTTPS API URL.

recovery_type

The recovery type.

otpnode

The OTP node.

node_uuid

The UUID of the Cluster node.

cluster_compatibility

The cluster compatibility of the Cluster node.

version

The version of the Cluster node.

os

The OS of the Cluster node.

cpu_count

The CPU count of the Cluster node.

edition

The Cluster node edition. The edition is the
same as that of the Couchbase instance.

Couchbase Bucket [cmdb_ci_couchbase_bucket]
name

The name of Couchbase bucket.

cluster

Reference to the Couchbase cluster.

install_status

The installed status, set to "1"/"installed".

Couchbase Cluster Resource [cmdb_ci_couchbase_cluster_resource]
name

The name of the Couchbase service.

install_status

The installed status, set to "1"/"installed".

operational_status

The operational status, set to "1"/"operational".

cluster

Reference to the Couchbase cluster.

CI relationships
These relationships are created to support Couchbase DB discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1908


<!-- page 1909 -->
CI

Relationship

CI

Couchbase Instance
Runs on::Runs
[cmdb_ci_couchbase_instance]
Reference

Linux Server
[cmdb_ci_linux_server]

Couchbase Cluster Node
Cluster of::Cluster
[cmdb_ci_couchbase_cluster_node]
Reference

Couchbase Cluster
[cmdb_ci_couchbase_cluster]

Couchbase Cluster Node
Hosted on::Hosts
[cmdb_ci_couchbase_cluster_node]
Reference

Linux Server
[cmdb_ci_linux_server]

Couchbase Bucket
[cmdb_ci_couchbase_bucket]

Uses::Used by

Couchbase Instance
[cmdb_ci_couchbase_instance]

Couchbase Bucket
[cmdb_ci_couchbase_bucket]

Hosted on::Hosts

Couchbase Cluster
[cmdb_ci_couchbase_cluster]

Replicates to::Replicated by

Reference

Reference

Couchbase Cluster
[cmdb_ci_couchbase_cluster]
Couchbase Cluster
[cmdb_ci_couchbase_cluster]

CMDB data model
Couchbase DB discovery CMDB data model

Dell EMC XtremIO storage array discovery
ServiceNow Discovery uses the Dell EMC XtremIO storage array pattern to find Dell EMC
XtremIO storage array components. Discovering some of these resources may require updating
to the latest version of the Discovery and Service Mapping Patterns application from the
ServiceNow Store.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1909


<!-- page 1910 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Discovery and Service Mapping Patterns store app
Verify the Discovery and Service Mapping Patterns store app, version 1.0.96, is
installed.
Verify the CMDB CI Class Models, version 1.42.0, is installed.

Note: The Dell EMC XtremIO storage array pattern 1.0.96 store version was
tested only for XtremIO cluster type X2.
Credentials
Grant Basic Auth permissions by configuring Basic Auth credentials for RESTful API.
Save the admin credentials as Basic Auth credentials to ensure a proper access.
Run Discovery
Run Quick Discovery by Target IP. Provide the IP of the XMS (that manage the
storage).
Permissions for REST API queries
During the discovery, the pattern uses the following API queries. The user that
is added to the credentials in the instance must have permissions to run these
queries.
• Get details of XMS by index_id https://<IP>/api/json/v2/types/xms/<index_id>
• Get details of Storage Server (Cluster) by index_id https://<IP>/api/json/
v2/types/clusters/<index_id>
• Get details of Storage Node Element (Bricks) by index_id https://<IP>/api/json/
v2/types/bricks/<index_id>
• Get details of Storage Disks (SSDs) by index_id https://<IP>/api/json/v2/types/
ssds/<index_id>
• Get details of Storage Enclosure (DAEs) by index_id https://<IP>/api/json/
v2/types/daes/<index_id>
• Get details of Storage Switches (Infiniband Switches) by index_id https://<IP>/
api/json/v2/types/infiniband-switches/<index_id>
• Get details of Battery Backup Units (BBUs) by index_id https://<IP>/api/json/
v2/types/bbus/<index_id>
• Get details of Storage Controllers by index_id https://<IP>/api/json/v2/types/
storage-controllers/<index_id>
• Get details of Storage Ports (targets) by index_id https://<IP>/api/json/v2/types/
targets/<index_id>
• Get details of Disks (local disks) by index_id https://<IP>/api/json/v2/types/localdisks/<index_id>
• Get details of Initiator Groups by index_id https://<IP>/api/json/v2/types/initiatorgroups/<index_id>
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1910


<!-- page 1911 -->
• Get details of Fibre Channel Ports (initiators) by index_id https://<IP>/api/json/
v2/types/initiators/<index_id>
• Get details of Fibre Channel Disks (Volumes) by index_id https://<IP>/api/json/
v2/types/volumes/<index_id>
The new Configuration Item (CI) that is classified:
Initiator Group.

Data collected by Discovery during horizontal discovery
The discovered Dell EMC XtremIO storage array Configuration Management Database (CMDB)
includes the following tables and fields.

Table and field

Description

Main CI [cmdb_ci_linux_server]​
name

The name of the Linux/XMS server

ip_address

The IP address of the Linux/XMS server

host_name

The host name of the Linux/XMS server

object_id
ram

The identifier attribute of the Linux/XMS server
The total available RAM of the Linux/XMS server

Storage Server [cmdb_ci_storage_server]
name

The name of the Storage Server (Cluster)

object_id

The IP address of the Storage Server (Cluster)

serial_number

The serial number of the Storage Server (Cluster)

Storage Node Element [cmdb_ci_storage_node_element]
name

The name of the Storage Node Element (X-Brick)

object_id

The identifier attribute of the Storage Node Element (X-Brick)

serial_number

The Storage Node Element (X-Brick) serial number

Storage Controller [cmdb_ci_storage_controller]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1911


<!-- page 1912 -->
Table and field

Description

name

The name of the Storage Controller

device_id

The Storage Controller ID

serial_number

The serial number of the Storage Controller

model_number

The model number of the Storage Controller

model_id

The model ID of the of the Storage Controller

Storage Port [cmdb_ci_storage_port]
wwpn

The WWPN

name

The name of the Storage Port (target)

correlation_id
speed
port_type

The Storage Port (target) correlation ID
The speed of the Storage Port (target)

The Storage Port (target) type

Storage Switch [cmdb_ci_storage_switch]
object_id

The identifier attribute of the Storage Switch (Infiniband Switch)

name

The name of the Storage Switch (Infiniband Switch)

serial_number

The serial number of the Storage Switch (Infiniband Switch)

model_id

The model ID of the Storage Switch (Infiniband Switch)

Storage Enclosure [cmdb_ci_storage_enclosure]
name

The name of the Storage Enclosure (Disk Array Enclosure)

object_id

The identifier attribute of the Storage Enclosure (Disk Array
Enclosure)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1912


<!-- page 1913 -->
Table and field

Description

serial_number

The serial number of the Storage Enclosure (Disk Array
Enclosure)

model_number

The model number of the Storage Enclosure (Disk Array
Enclosure)

UPS [cmdb_ci_ups]
name

The name of the Battery Backup Unit (BBU)

serial_number

The serial number of the Battery Backup Unit (BBU)

model_number

The model number of the Battery Backup Unit (BBU)

model_id

The model ID of the Battery Backup Unit (BBU)

The estimated charge remained for the Battery Backup Unit
estimated_charge_remaining (BBU)
battery_voltage

The battery voltage of the Battery Backup Unit (BBU)

Initiator Group [cmdb_ci_initiator_group]​
object_id

The identifier attribute of the Initiator Group

name

The name of the Initiator Group

number_of_initiators

The number of initiators in a the group

number_of_volumes

The number of volumes

Fibre Channel Disk [cmdb_ci_fc_disk]​
name

The name of the Fibre Channel Disk (Volume)

device_id

The ID of the Fibre Channel Disk (Volume)

size

The available storage size of the Fibre Channel Disk (Volume)

Fibre Channel Port [cmdb_ci_fc_port]​
wwpn

The WWPN

wwnn

The WWNN.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1913


<!-- page 1914 -->
Table and field

Description

name

The name of the Fibre Channel Port (initiator)

port_type

The port type of the Fibre Channel Port (initiator)

CI relationships
CI

Relationship Type

CI

cmdb_ci_linux_server

Manage::Managed by

cmdb_ci_storage_server

cmdb_ci_storage_switch

Connects to::Connected by

cmdb_ci_storage_server

cmdb_ci_storage_server

Allocated to::Allocated from

cmdb_ci_storage_node_element

cmdb_ci_storage_enclosure

Contains::Contained By

cmdb_ci_storage_node_element

cmdb_ci_disk

Contains::Contained By

cmdb_ci_storage_node_element

cmdb_ci_storage_controller

Contains::Contained By

cmdb_ci_storage_node_element

cmdb_ci_storage_controller

Contains::Contained By

cmdb_ci_storage_port

cmdb_ci_ups

Connects to::Connected by

cmdb_ci_storage_node_element

cmdb_ci_storage_server

Contains::Contained By

cmdb_ci_Initiator _group

cmdb_ci_Initiator _group

Member::Member of

cmdb_ci_fc_port

cmdb_ci_Initiator _group

Connects to::Connected by

cmdb_ci_fc_disk

Related topics
Detailed information on products discovered by ITOM Visibility
Dell EMC Isilon discovery
The ServiceNow Discovery application uses the Dell EMC Isilon pattern to find components of
Dell EMC Isilon. Discovering some of these resources may require updating to the latest version
of the Discovery and Service Mapping Patterns application from the ServiceNow Store.
For a complete list of devices and applications that ITOM Visibility can discover, see Detailed
information on products discovered by ITOM Visibility.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1914


<!-- page 1915 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Create SNMP Community credentials
Create an SNMP Community credential for the Isilon cluster. The discovery
process begins with using SNMP-based queries to classify an application as an
Isilon cluster. For more information, see SNMP community credentials in SNMP
credentials .
Verify Dell EMC Isilon user permissions and roles
Once the application is classified as an Isilon cluster, the discovery process uses
REST queries to find information about it. Provide the Dell EMC Isilon user with the
following REST API endpoints:
• "https://" + $host + ":8080/platform/3/cluster/config”
• "https://" + $host + ":8080/platform/3/network/interfaces”
• "https://" + $host_ip + ":8080/platform/3/cluster/nodes/”
• “https://” + $host + ":8080/platform/3/zones”
• "https://" + $host + ":8080/platform/3/network/pools”
• "https://" + $host + ":8080/platform/3/storagepool/nodepools”
• "https://" + $host + ":8080/platform/3/storagepool/storagepools”
• "https://" + $host + ":8080/platform/3/protocols/nfs/exports”
• "https://" + $host + ":8080/platform/3/protocols/smb/shares"
The Dell EMC Isilon user must also have the following roles:
• ISI_PRIV_LOGIN_PAPI
• ISI_PRIV_AUTH
• ISI_PRIV_DEVICES
• ISI_PRIV_NETWORK
• ISI_PRIV_NFS
• ISI_PRIV_SMARTPOOLS
• ISI_PRIV_SMB
Create basic authentication credentials
In the Credentials module of the ServiceNow platform, create a basic authentication
credential for the same Dell EMC Isilon user. For more information, see Basic
authentication credentials .

Data collected by Discovery for Dell EMC Isilon
Discovery populates the data in the CMDB when running the EMC Isilon pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1915


<!-- page 1916 -->
Table and Field

Description

Storage Server [cmdb_ci_storage_server]

The server hosting the Isilon cluster.

short_description

The description configured during the Isilon
server installation.

firmware_version

The version of the firmware installed on the
Isilon server

ip_address

The IP address of the Isilon server.

manufacturer

The company that produced the device: EMC.

model_id

Preconfigured identification string of the
device.

host_name

The host name of the Isilon server.

Storage Cluster [cmdb_ci_storage_cluster]

The name of the IP address of the cluster that
Isilon servers form.

name
ip_address
Storage Cluster Node
[cmdb_ci_storage_cluster_node]

The name and other attributes of the node that
is part of the Isilon storage cluster.

name
cluster
operational_status
Storage Node Element
[cmdb_ci_storage_node_element]

The name and other attributes of the physical
node that are hosted by the storage cluster.

name
manufacturer
cpu_type
model_id
Network Adapter [cmdb_ci_network_adapter]
active

The attribute showing if the network adapter
installed on the cluster node is active.

name
ip_address
netmask
IP Address [cmdb_ci_ip_address]
name

The attributes of the IP address of the cluster
node.

netmask
Disk [cmdb_ci_disk]

The storage disk installed on the Isilon Server.

device_id
name
model_id
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1916


<!-- page 1917 -->
Table and Field

Description

interface
disk_interface
Storage File Share
[cmdb_ci_storage_fileshare]

The fileshare server attributes.

path
name
fileshare_id
correlation_id
Storage Volume [cmdb_ci_storage_volume]
media_type

The attributes of the storage volume belonging
to the storage cluster.

object_id
size_bytes
free_space_bytes
Storage Pool [cmdb_ci_storage_pool]
pool_id
free_space_bytes

The attributes of the storage pool to which the
storage cluster belongs.

size_bytes
name
object_id
Serial Number [cmdb_serial_number]
serial_number

The attributes of the serial number of the
storage node.

serial_number_type
valid
The graphic illustrates CIs that are part of Isilon discovery.

Note: This Dependency Views map was simplified for clarity. Your Isilon deployments can
contain many more CIs.
Dependency Views showing Isilon components

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1917


<!-- page 1918 -->
CI Relationships
CI

Relationship/Reference

CI

cmdb_ci_storage_server

Runs on::Runs

cmdb_ci_storage_cluster

cmdb_ci_storage_server

Allocated to::Allocated from

cmdb_ci_storage_node_element

cmdb_ci_storage_cluster_node Cluster of::Cluster

cmdb_ci_storage_cluster
(reference cluster)

cmdb_ci_storage_cluster_node Hosted on::Hosts

cmdb_ci_storage_node_element
(reference server)

cmdb_ci_storage_node_elementManaged by::Manages

cmdb_ci_storage_cluster

cmdb_ci_network_adapter

Owns::Owned by

cmdb_ci_storage_node_element
(reference cmdb_ci)

cmdb_ci_network_adapter

Used by::Uses

cmdb_ci_storage_server
(reference cmdb_ci)

cmdb_ci_ip_address

Owns::Owned by

cmdb_ci_storage_node_element

cmdb_ci_ip_address

Used by::Uses

cmdb_ci_storage_server

cmdb_ci_disk

Contains::Contained by

cmdb_ci_storage_node_element
(reference computer)

cmdb_ci_storage_fileshare

Provided by::Provides

cmdb_ci_storage_server

cmdb_ci_storage_fileshare

Allocated from::Allocated to

cmdb_ci_storage_volume

cmdb_ci_storage_volume

Uses::Used by

cmdb_ci_storage_server

cmdb_ci_storage_volume

Owns::Owned by

cmdb_ci_storage_cluster

cmdb_ci_storage_pool

Owns::Owned by

cmdb_ci_storage_cluster
(reference hosted_by)

Dell PowerMax storage discovery with Patterns
ServiceNow Discovery uses the EMC PMAX phase1 and EMC PMAX phase2 patterns to
find Dell PowerMax storage components. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
To learn about PowerMax storage components and their versions that you can discover, refer to
Detailed information on products discovered by ITOM Visibility.

Prerequisites
Verify that the applications are up to date
Discovery and Service Mapping Patterns
CMDB CI Class Models
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1918


<!-- page 1919 -->
Verify the creation of the credential alias
1. Set the scope to: Global.
2. Navigate to Connections & Credentials > Connection & Credential Aliases
3. Select New.
4. Fill in the fields in the form.

Field

Description

Name

Enter a unique name for the alias. For example:
powermax_discovery_ceredential_alias. Make note of
the alias name to use it for configuring the Basic Auth credentials.

Type

From the list, select Credential.

ID

The ID field is populated automatically when submitting the
form. Make note of the alias ID to use it for configuring the
parameters for the EMC PMAX phase1 pattern. For example:
powermax_credential_alias_id.

5. Select Submit.
Verify the configuration of the Basic Auth credentials
Configure the Basic Auth credentials to enable the connection to the PowerMax
REST API. For the procedure, see Create Basic Auth credentials.
Fill in the form.

Field

Description

Name

Fill in a unique name for the
credentials. For example:
powermax_discovery_basic_auth_ceredentials.

User name

Fill in the user name that can access
the PowerMax. The user should have
minimum read-only permissions.

Password

Fill in the password that can access the
PowerMax.

Verify the configuration of a Serverless Discovery schedule
Make sure to select Serverless in the Discover field. For information about the
procedure, see: Schedule a horizontal discovery
Associate the EMC PMAX phase1 pattern with the Serverless Discovery schedule
1. Navigate to Discovery > Discovery Schedules
2. Select the schedule that you configured.
3. Select the Serverless Execution Patterns tab.
4. Select New.
5. Fill in the fields in the form as follows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1919


<!-- page 1920 -->
Parameter

Description

IP Address [emc_ip_address]

The IP Address of the Navisphere,
which serves as the EMC Management
Console capable of managing multiple
storages.

Alias [credential_alias]

The Alias ID that is configured
for the EMC PowerMax
credentials. For example:
powermax_credential_alias_id.

6. Select Submit.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the EMC PowerMAX Patterns.
Storage Server [cmdb_ci_storage_server]
Field

Description

Name [name]

The user-assigned identifier or label for a specific storage array or
component within the system.

Model ID [model_id]

The particular variant or model of the storage array.

Serial Number
[serial_number]

The serial number that uniquely identifies each individual storage
array unit.

OS [os]

The operating system environment hosted on the storage array. For
example, embedded management software or operating systems.

OS Version [os_version]

The software version that's installed on the storage array, which
includes the core operating system and management software.

Firmware Version
[firmware _version]

The software embedded in the hardware components of the storage
array, including controllers, drives, and other subsystems.

Manufacturer
[manufacturer]

The company responsible for designing, producing, and supporting
the PowerMax storage array which is Dell EMC.

Physical Capacity (GB)
[physical_capacity]

The maximum physical capacity that can be utilized for storing data
or other content, measured in gigabytes (GB).

Used Physical
Amount of physical storage space currently allocated and utilized
Capacity (GB)
within the PowerMax system, measured in GB. It indicates how
[used_physical_capacity] much of the available physical storage resources are actively
storing data or other content.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1920


<!-- page 1921 -->
Storage Server [cmdb_ci_storage_server] (continued)
Field

Description

Free Physical
Capacity (GB)
[free_physical_capacity]

Available physical storage space within the PowerMax system,
measured in GB.

Virtual Capacity (GB)
[virtual_capacity]

Total virtual storage capacity provisioned within the PowerMax
system, measured in GB.

Free Virtual
Capacity (GB)
[free_virtual_capacity]

Available virtual storage capacity within the PowerMax system,
measured in GB.

Used Virtual
Capacity (GB)
[used_virtual_capcity]

Used virtual storage capacity within the PowerMax system,
measured in GB.

Storage Cluster Node [cmdb_ci_storage_cluster_node]
Field

Name [name]
Cluster [cluster]

Manufacturer
[manufacturer]

Description

The cluster node name.
The host group associated with this cluster node in the PowerMax
environment.
The manufacturer name, which is Dell EMC.

Storage Cluster [cmdb_ci_storage_cluster]
Field

Name [name]
Correlation ID
[correlation_id]

Description

The storage cluster name.
Combines the cluster name and the storage's serial number to create
a unique identifier.

Storage Controller [cmdb_ci_storage_controller]
Field

Name [name]
Assigned [assigned]
Asset [asset]

Description

The combination of asset and asset tag.
The availability status.
The director slot number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1921


<!-- page 1922 -->
Storage Controller [cmdb_ci_storage_controller] (continued)
Field

Description

Asset Tag [asset_tag]
Device ID [device_id]
Short Description [short_description]
Manufacturer [manufacturer]

The director number.
A unique label for the controller.
The director slot and number.
The manufacturer name, which is Dell EMC.

Storage Port [cmdb_ci_storage_port]
Field

Description

WWPN [wwpn]

The World Wide Port Name (WWPN) of the storage port.
The port identifier.

Name [name]
PO Number [po_number]

The port number.
The port status.

State [state]

The port transmission speed.

Speed [speed]
Manufacturer [manufacturer]
Short Description [short_description]
IP Address [ip_address]

The manufacturer name, which is Dell EMC.
A list of the port IP addresses.
The connected IP address.

Storage Volume [cmdb_ci_storage_volume]
Field

Object ID
[object_id]
State [state]
Size [size]

Description

The World Wide Name (WWN) unique identifier.

The current operational status of the volume. For example: Write Disabled
or Ready.
The capacity in Gigabytes (GB).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1922


<!-- page 1923 -->
Disk [cmdb_ci_disk]
Field

Name [name]
Manufacturer
[manufacturer]
Model ID
[model_id]
Size [size]
Device ID
[device_id]

Description

The Spindle ID.
The disk manufacturer.

The disk model.

The disk capacity in Gigabytes (GB).
The combination of the storage system serial number with the disk name that
uniquely identifies each disk within the PowerMax environment.

FC Export [cmdb_ci_fc_export]
Field

Export ID
[export_id]
Initiator WWPN
[initiator_wwpn]
PO Number
[po_number]
Assigned to
[assigned_to]

Description

The Fibre Channel identifier.

A unique identifier combining the Director ID, Port Number, and Initiator ID.

The port number.

The specific host assigned to the export and manages the Fibre Channel
connection.

Attributes
[attributes]

The director ID that identifies the specific director responsible for managing
the Fibre Channel exports.

Name [name]

The initiator ID.

Manufacturer
[manufacturer]
Lun [lun]
Asset Tag
[asset_tag]

The manufacturer name, which is Dell EMC.

The Logical Unit Number (LUN) that is connected within PowerMax systems,
indicating the specific storage unit allocated for the Fibre Channel export.
A combination of the Director ID with the Port Number that uniquely identifies
the asset within the Fibre Channel exports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1923


<!-- page 1924 -->
iSCSI Export [cmdb_ci_isci_export]
Field

Export ID
[export_id]

Description

The unique identifier for an iSCSI export within PowerMax systems,
facilitating the management and tracking of iSCSI connections.

A combination of the Director ID, Port Number, and Initiator ID that forms a
Initiator WWPN unique identifier for the initiator within the iSCSI exports.
[initiator_wwpn]
Name [name]

The Initiator ID in PowerMax systems, serving as a unique identifier for the
initiator in the context of iSCSI exports.

PO Number
[po_number]

The port number identifying the specific port used for the iSCSI export.

Attributes
[attributes]

The Director ID, which identifies the specific director responsible for
managing the iSCSI export.

Assigned to
[assigned_to]

The host assigned to the iSCSI export within the PowerMax environment and
specifies the particular host system that is connected to the export.

Storage Pool [cmdb_ci_storage_pool]
Field

Name [name]

Description

The name of the pool.

CI relationships
Discovery creates these relationships to support the PowerMax discovery with the EMC PMAX
phase2 pattern.

CI

cmdb_ci_disk

Relationship Type

Contains::Contained by

CI

cmdb_ci_storage_server

cmdb_ci_fc_export

Allocated from::Allocated to

cmdb_ci_storage_volume

cmdb_ci_fc_export

Exports to::Imports from

cmdb_ci_storage_cluster_node

cmdb_ci_isci_export

Hosted::Hosts

cmdb_ci_storage_server

cmdb_ci_isci_export

Allocated from::Allocated to

cmdb_ci_storage_volume

cmdb_ci_isci_export

Exports to::Imports from

cmdb_ci_storage_cluster_node

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1924


<!-- page 1925 -->
CI

Relationship Type

CI

cmdb_ci_storage_cluster_node Cluster of::Cluster

cmdb_ci_storage_cluster

cmdb_ci_storage_controller

Contains::Contained By

cmdb_ci_storage_server

cmdb_ci_storage_controller

Contains::Contained By

cmdb_ci_storage_port

cmdb_ci_storage_port

Owns::Owned by

cmdb_ci_fc_export

cmdb_ci_storage_port

Owns::Owned by

cmdb_ci_isci_export

cmdb_ci_storage_port

Owns::Owned by

cmdb_ci_isci_export

cmdb_ci_storage_port

Owns::Owned by

cmdb_ci_fc_export

cmdb_ci_storage_server

Owns::Owned by

cmdb_ci_storage_port

cmdb_ci_storage_server

Runs on::Runs

cmdb_ci_storage_cluster

cmdb_ci_storage_server

Allocated from::Allocated to

cmdb_ci_storage_cluster_node

cmdb_ci_storage_server

Contains::Contained By

cmdb_ci_storage_pool

Dell Data Domain storage discovery using Patterns
Discovery and Service Mapping use the Dell EMC Data Domain serverless pattern to find the
Data Domain storage systems registered in the Data Domain Management Center (DDMC).
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
To learn about Data Domain components and their versions that you can discover, refer to
Detailed information on products discovered by ITOM Visibility

Prerequisites
Verify that the applications are up to date
Discovery and Service Mapping Patterns
CMDB CI Class Models
Verify the creation of the credential alias
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1925


<!-- page 1926 -->
role: DDMC admin.
1. Set the scope to: Global.
2. Navigate to Connections & Credentials > Connection & Credential Aliases.
3. Select New.
4. Fill in the fields in the form.

Field

Description

Name

Enter a unique name for the alias. For example:
ddmc_discovery_ceredential_alias. Make note of the
alias name to use it for configuring the Basic Auth credentials.

Type

From the list, select Credential.

ID

The ID field is populated automatically when submitting the
form. Make note of the alias ID to use it for configuring the
parameters for the Dell EMC Data Domain pattern. For example:
ddmc_credential_alias_id.

5. Select Submit.
Verify the configuration of the Basic Auth credentials
role: DDMC admin.

Note: To run discovery with Patterns, you can create only one credential per
one alias.
1. Navigate to Connections & Credentials > Connection & Credential Aliases.
2. In the list, search for the alias unique name and open the record.
3. From the list, select Basic Auth Credentials.
4. Fill in the fields in the form.

Field

Description

Name

Fill in a unique name for the
credentials. For example:
ddmc_discovery_basic_auth_ceredentials.

User name

Fill in the user name that can access
the DDMC. This user is created in the
DDMC. The user should have minimum
read-only permissions. Alternatively,
fill in the REST API interface for the
DDMC.

Password

Fill in the password that can access
the DDMC. This password is created in
the DDMC.

Active

Enabled by default.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1926


<!-- page 1927 -->
Field

Description

Credential alias

If you entered the form through the
alias, you don't need to configure this
field.

5. Select Submit.
Verify the configuration of a Serverless Discovery schedule
role: Discovery_admin.
1. Navigate to Discovery > Discovery Schedules.
2. Select New.
3. Fill in the fields in the form.

Field

Description

Name

Fill in the name of your choice.

Discover

In the list, select Serverless.

MID Server

Select the search button to open the
list of MID Servers and select the MID
Server that has network access to the
DDMC.

Active

Enabled by default.

Credential alias

No need to configure this field.

For more information about setting the Max run time, Run, and Time fields, see:
Schedule a horizontal discovery
4. Select Submit.
Associate the Dell EMC Data Domain pattern with the Serverless Discovery schedule
role: Discovery_admin.
1. Navigate to Discovery > Discovery Schedules.
2. Select the schedule that you configured.
3. Select the Serverless Execution Patterns tab.
4. Select New.
5. Fill in the fields in the form.

Field

Description

Name

Fill in the name of your
choice. For example:
dell_emc_data_domain_serverless_discovery

Pattern

Select the search button to open the
list of patterns, and select the Dell
EMC Data Domain pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1927


<!-- page 1928 -->
Field

Description

Proxy Host

No need to configure this field.

Extended Parameters

No need to configure this field.

6. Select Submit.
Configure the parameters for the Dell EMC Data Domain pattern
role: Discovery_admin.
1. Navigate to Discovery > Discovery Schedules.
2. Select the schedule that you configured.
3. Select the Serverless Execution Pattern tab.
4. Select the record created for the Dell EMC Data Domain pattern.
5. In the Discovery Pattern Launcher parameters tab, set the value for the fields as
follows:

Field

Description

Credential Alias

Fill in the alias ID configured for
DDMC. You can find the alias in
the Connection & Credential
Aliases list. For example:
ddmc_credential_alias_id.

DDMC Port

(Optional) by default the pattern uses
port 3009.

DDMC IP Address

Fill in the host name or the IP Address
of the DDMC. These details can be
provided by the DDMC Admin.
For example: 101.10.10.101 or
ddmc.demo.local.

6. To run the discovery, you can select Discover now from the Related Links or wait
for the run time.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Dell EMC Data Domain Patterns.
Storage Server [cmdb_ci_storage_server]
Field

Description

Name [name]

The unique identifier of the storage server. The name is typically the Domain
Name System (DNS) hostname or the computer name, which corresponds to
the host_name attribute.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1928


<!-- page 1929 -->
Storage Server [cmdb_ci_storage_server] (continued)
Field

Host Name
[host_name]
FQDN [fqdn]
IP Address
[ip_address]

Description

The DNS hostname of the Data Domain system. The host that is used to
register the system with the Data Domain Management Center (DDMC).
The Fully Qualified Domain Name of the Data Domain system. The complete
domain name used to register the system with the DDMC.
The IP address of the Data Domain storage server. The name is the specific IP
address used to register the Data Domain system with the DDMC.

OS Version
[os_version]

The version of the operating system running on the Data Domain system. The
versions supported are from DD OS 7.3.

Model [model]

The specific model of the Data Domain (DD) system. For example, the name
for the DD Virtual Edition (VE) is DELL EMC DD VE.

Manufacturer
[manufacturer]
Serial Number
[serial_number]
Operating
System [os]

The manufacturer is Dell EMC.

The unique serial number assigned to the DD system.

The Data Domain OS is: DD OS.

Storage Cluster [cmdb_ci_storage_cluster]
Field

Name [name]
Cluster ID
[cluster_id]
Cluster Version
[cluster_version]
Serial Number
[serial_number]
Model ID
[model_id]
Manufacturer
[manufacturer]

Description

The name of the DDMC associated with the storage cluster.
The universally unique identifier (UUID) of the DDMC, which uniquely
identifies the cluster.
The software version of the DDMC that is currently installed on the cluster.

The unique serial number assigned to the Virtual Data Domain
Management Center (VDDMC) system.
The specific model of the Data Domain system in use. For the DDMC, the
model ID is 'DELL EMC DD Management Center'.
The manufacturer is Dell EMC.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1929


<!-- page 1930 -->
Disk [cmdb_ci_disk]
Field

Name [name]
Device ID
[device_id]
Model ID
[model_id]
Size [size]

Description

The name assigned to the disk device within the storage system.
The unique identifier for the disk device, which is the same as the device
name.
The model of the disk device. For example: VMware Virtual_disk.

The capacity of the disk device, measured in gigabytes (GB).

The Disk Shelf Chassis database is populated only for physical DD systems that support disk
expansion shelves.
Disk Shelf Chassis [cmdb_ci_diskshelf_chassis_cluster]
Field

Description

The name of the disk expansion shelf.

Name [name]
Serial Number [serial_number]

The unique serial number of the disk expansion shelf.

Serial Number [cmdb_ci_serial_number]
Field

Serial Number
[serial_number]

Description

The unique serial number of the Dell EMC Data Domain storage system,
as registered in the DDMC.

The format of the serial number for the Dell EMC Data Domain storage
Serial Number Type system, indicating whether it's a system serial number or a Universally
[serial_number_type] Unique Identifier (UUID).
Valid [valid]

The validity of the data, with a value of true confirming that the serial
number has been successfully verified.

Network Adapter [cmdb_ci_network_adapter]
Field

Name [name]

Description

The identifier or label of the network adapter, such as eth1.

The DDMC REST API doesn’t provide the MAC address of network adapters. As a result, the MAC
address field for network adapters remains empty.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1930


<!-- page 1931 -->
IP Address [cmdb_ci_ip_address]
Field

Description

The IP address that is assigned to the device.

IP Address
[ip_address]

The netmask associated with the IP address, defining the subnet to which
the IP address belongs.

Netmask
[netmask]

CI relationships
Discovery and Service Mapping Patterns create these relationships to support the Data Domain
discovery.

CI

Relationship Type

CI

cmdb_ci_storage_server

Managed by::Manages

cmdb_ci_storage_cluster

cmdb_ci_storage_server

Contains::Contained By

cmdb_ci_disk

cmdb_ci_disk_shelf_chassis

Hosted on:: hosts

cmdb_ci_storage_server

cmdb_ci_serial_number

reference

cmdb_ci_storage_server

cmdb_ci_storage_server

Owns::Owned by

cmdb_ci_network_adapter

cmdb_ci_storage_server

Owns::Owned by

cmdb_ci_ip _address

F5 certificate discovery
®

The ServiceNow Discovery application uses The F5-SSH-SSL Certification pattern extension
to find all associated certificates on F5 load balancers that use IPv4 addresses, IPv6 addresses,
or both.
The The F5-SSH-SSL Certification pattern extension is part of the F5 load balancer and F5
load balancer SSH patterns that discover F5 BIG-IP load balancer. The The F5-SSH-SSL
Certification pattern extension discovers F5 load balancer instances running on the hosts via
SNMP/SSH, and then discovers certifications used by the running node of the load balancer.

Note: For load balancers running IPv6, only SSH is supported.
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
For details on system requirements and family compatibility, view the application listing on the
ServiceNow Store
website.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1931


<!-- page 1932 -->
IPv6 support limitations
• F5 SNMP is not supported.
• MID Server cannot run REST APIs with IPv6.
To run discovery with F5 REST, see KB0864769

.

Prerequisites
Verify the applications are up to date
• Discovery and Service Mapping Patterns
• CMDB CI Class Models
Verify the configuration of F5 load balancer
• Ensure that F5 load balancer instances are up and running.
• Make sure the host (that has the F5 instance running on it) can discover
successfully with the Discovery user credentials.
Verify the configuration of Discovery
Ensure that the Discovery user added in the ServiceNow AI Platform instance can
run the following commands:

Command

Description

modify

Modifies the TMSH components. You can
modify one or more property settings in
multiple components.
The modify command uses the following
option: display-threshold pager

display_threshold

Allows you to re-enable a displaythreshold in your script.

list

Displays components that you have
permission to view or are passed as
arguments.
The list command looks for the following
arguments:
• ssl-cert
• certificate-key-size
• checksum
• create-time
• expiration-string
• issuer
• subject
• version
• fingerprint
• serial-number

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1932


<!-- page 1933 -->
Command

Description

• subject-alternative-name
• size
Verify the configuration of the patterns
Make sure that the F5-SSH-SSL Certification shared library is added to the
extension section of the F5 Load Balancer and F5 Load Balancer SSH patterns, in
order to collect the certification attributes.

F5 certificate discovery class model

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1933


<!-- page 1934 -->
Data collected by Discovery during horizontal discovery
The discovered data includes the following tables and fields.

Table and field

Description

Base Configuration Item Cluster [cmdb]
Serial number

Serial Number associated with the CI.

Configuration Item [cmdb_ci]
operational_status

Operational status of the cluster node.

Unique Certificate [cmdb_ci_unique_certificate]
fingerprint

Hash value of the certificate.

fingerprint algorithm

Algorithm used to hash the certificate.

subject common
name

Identifies the hostname/domain associated with the certificate.

subject distinguished
name

Identifying information of the subject.

issuer distinguished
name

Distinguished name of the issuer.

comments
renewal tracking

Indicates whether to create any priority 1 or priority 3 tasks for the
expiring certificates.

issuer common name

Common name of the issuer.

valid From

Validity start period of the certificate.

serial Number

Serial Number associated with the CI.

subject country

The subject's two letter country code.

subject organization

Subject’s organization.

Version

X.509 version of the certificate.

Issuer

Entity that signed and issued the certificate.

subject organizational
unit

Subject's organizational unit.

subject alternative
name

List of fully qualified domain names secured by the certificate.

valid to

Validity end period of the certificate.

name
State

Lifecycle states of the certificate.

root issuer

Root entity that signed and issued the immediate certificate.

key size

Size of the key used by the signing algorithm.

subject locality

Subject's locality.

subject state

Subject's state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1934


<!-- page 1935 -->
CI relationships
The The F5-SSH-SSL Certification pattern extension does not create any CI relationships.
Fortinet firewall and FortiGate VDOM REST-based discovery
The Discovery and Service Mapping Patterns application uses the Next Generation Fortinet
Network Firewall - REST pattern to find Fortinet firewalls through REST API calls. Additionally,
the pattern extension VDOM Discovery finds FortiGate Virtual Domains (VDOMs). Discovering
some of these resources may require updating to the latest version of the Discovery and Service
Mapping Patterns application from the ServiceNow Store.
The Next Generation Fortinet Network Firewall - REST pattern uses a set of REST API calls to find
the Fortinet firewalls. Discovery uses the pattern to run horizontal discovery.

Note: Only the REST-based Fortinet firewall discovery method finds FortiGate VDOMs.
The SNMP-based Fortinet firewall discovery method doesn't discover them. For information
about the default SNMP-based Fortinet firewall discovery, see Next-Generation Fortinet
Network Firewall SNMP-based discovery.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
To learn about Fortinet Firewalls and their versions that you can discover, refer to Detailed
information on products discovered by ITOM Visibility.

Prerequisites
Verify that the applications are up to date
• Discovery and Service Mapping Patterns
• CMDB CI Class Models
Create API Token
Create an API Token in Fortinet. For instructions on creating an API Token, go to the
Fortinet Document Library
and search for the "Connect FortiGate device via API
Token - Online Help" article under the FortiConverter Tool product family.
Verify API access and permissions
• Verify that the MID Server can access the Fortinet APIs.
• Verify that the API Token has sufficient permissions to retrieve the required
information from the Fortinet devices.
Required Fortinet APIs:
• v2/cmdb/system/global
• api/v2/monitor/system/status
• api/v2/cmdb/system/ha
• api/v2/cmdb/router/static
• /api/v2/cmdb/firewall/policy
• api/v2/cmdb/system/vdom-property
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1935


<!-- page 1936 -->
• api/v2/cmdb/system/interface
• /api/v2/monitor/system/interface/select
Disable SNMP-based Fortinet firewall discovery
For more information, see Disable SNMP-based Fortinet firewall discovery.
Create an alias for the API Key Credentials
For more information, see Create an alias for the API key credential for Fortinet
firewall REST-based discovery.
Create a serverless discovery schedule
For more information, see Create a serverless schedule for Fortinet firewall RESTbased discovery.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Next Generation Fortinet Network
Firewall - REST pattern.
Fortinet Firewall Device [cmdb_ci_firewall_device_fortinet]
Field

Description

Name [name]

Hostname field of the Fortinet device.

Serial number [serial_number]

Serial number of the Fortinet device.

Fully qualified domain name [fqdn]

Fully qualified domain name of the Fortinet device.

Operational status [operational_status]

Indicates whether the Fortinet device is in active
state.

IP Address [ip_address]

IP address of the Fortinet device.

Manufacturer [manufacturer]

Fortinet device manufacturer.

Description [short_description]

Short description of the Fortinet device.

Model Number [model_number]

Fortinet device model number.

Firmware version [firmware_version]

Fortinet device firmware version.

Hardware OS [hardware_os]

OS running on the hardware.

Hardware OS Version
[hardware_os_version]

OS version running on the hardware.

Fortinet Firewall Cluster [cmdb_ci_firewall_cluster_fortinet]
Field

Description

Name [name]

Hostname field of the Fortinet firewall cluster.

Fully qualified domain name [fqdn]

Fully qualified domain name of the firewall
cluster.

IP address [ip_address]

IP address of the firewall cluster.

Manufacturer [manufacturer]

Device manufacturer.

Description [short_description]

Short description of the firewall cluster.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1936


<!-- page 1937 -->
Fortinet Firewall Cluster [cmdb_ci_firewall_cluster_fortinet] (continued)
Field

Description

Model Number [model_number]

Device model number.

Hardware OS [hardware_os]

OS running on the hardware.

Hardware OS Version
[hardware_os_version]

OS version running on the hardware.

Network Adapter [cmdb_ci_network_adapter]
Field

Description

IP Address [ip_address]

IP address of the network adapter.

Netmask [netmask]

Netmask of the network adapter.

Alias [alias]

User-assigned name for the network adapter.

MAC Address
[mac_address]

MAC address of the network adapter.

Name [name]

Name of the network adapter.

Configuration Item
[cmdb_ci]

References the Fortinet Firewall Device
[cmdb_ci_firewall_device_fortinet] table.

IP Address [cmdb_ci_ip_address]
Field

Description

IP Address [ip_address]

IP address of the Fortinet firewall.

Netmask [netmask]

Netmask of the Fortinet firewall.

Discovery populates the data in the CMDB when running the Next Generation Fortinet Network
Firewall - REST pattern extension VDOM Discovery.
Fortinet Virtual Domain [cmdb_ci_fortinet_vdom]
Field

Description

Vdom Index
[vdom_index]

Index of the VDOM in the list.

Name [name]

Name of the VDOM.

Description
Description of the VDOM property that provides additional context or
[short_description] information about the purpose of the property.
Fortinet Firewall Interface [cmdb_ci_fortinet_firewall_interface]
Field

Description

ID [id]

Unique identifier for the interface. For example: port1.

Name [name]

Name of the interface. For example: LAN.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1937


<!-- page 1938 -->
Fortinet Firewall Interface [cmdb_ci_fortinet_firewall_interface] (continued)
Field

Description

IP Address
[ip_address]

IP address assigned to the interface.

Description
Description of the interface, often used for documentation or identification
[short_description] purposes. For example: Main LAN interface.
MAC Address
[mac_address]

MAC address of the interface.

Access Type
[access_type]

Type of interface. For example: physical, VLAN, or aggregate.

Network Topology [cmdb_ci_network_topology]
Field

Name [name]

Description

Virtual LAN (VLAN) ID associated with the interface, if applicable.
The format is: VLAN-{Vlan ID}. For example: VLAN-310.

Fortinet Firewall Policy [cmdb_ci_fortinet_firewall_policy]
Field

Description

Policy ID [policy_id]

Unique ID assigned to the policy in VDOM or device level.

UUID [uuid]

Global unique identifier (GUID) for the firewall policy.

Name [name]

Name of the policy.

source_interface

Network interface from which the traffic originates.

destination_interface

Network interface to which the traffic is directed.

Source address
[source_address]

Source address or address group from which traffic originates.

Destination address
[destination_address]

Destination address or address group to which traffic is directed.

Internet Service
[internet_service]

Service or application being managed by the policy, often
represented by a service group or name.

CI relationships
Discovery creates these relationships to support the Fortinet firewall discovery.

CI

Relationship

CI

Fortinet Firewall Cluster
Hosted on::Hosts
[cmdb_ci_firewall_cluster_fortinet]

Fortinet Firewall Device
[cmdb_ci_firewall_device_fortinet]

Fortinet Firewall Device
Owns::Owned by
[cmdb_ci_firewall_device_fortinet]

IP Address
[cmdb_ci_ip_address]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1938


<!-- page 1939 -->
CI

Relationship

CI

Fortinet Firewall Device
Owns::Owned by
[cmdb_ci_firewall_device_fortinet]

Network Adapter
[cmdb_ci_network_adapter]

Fortinet Firewall Device
Uses::Used by
[cmdb_ci_firewall_device_fortinet]

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

Fortinet Firewall Device
[cmdb_ci_firewall_device_fortinet]

Router Interface
[dscy_router_interface]

References

Fortinet Firewall Device
[cmdb_ci_firewall_device_fortinet]

Serial Number
[cmdb_serial_number]

References

Fortinet Firewall Device
[cmdb_ci_firewall_device_fortinet]

Discovery creates these relationships to support the FortiGate VDOM discovery.

CI

Relationship

CI

Fortinet Firewall Interface
Extends from
[cmdb_ci_fortinet_firewall_interface]

Network Interface
[cmdb_ci_ni_interface]

Fortinet Firewall Policy
[cmdb_ci_fortinet_firewall_policy]

Extends from

Firewall Security Policy
[cmdb_ci_firewall_sec_policy]

Fortinet Virtual Domain
[cmdb_ci_fortinet_vdom]

Contains::Contained Fortinet Firewall Interface
By
[cmdb_ci_fortinet_firewall_interface]

Fortinet Virtual Domain
[cmdb_ci_fortinet_vdom]

Contains::Contained Fortinet Firewall Policy
By
[cmdb_ci_fortinet_firewall_policy]

Fortinet Virtual Domain
[cmdb_ci_fortinet_vdom]

Extends from

IP Firewall [cmdb_ci_ip_firewall]

Fortinet Virtual Domain
[cmdb_ci_fortinet_vdom]

Hosted on::Hosts

Fortinet Firewall Device
[cmdb_ci_firewall_device_fortinet]

Network Topology
[cmdb_ci_network_topology]

Members::Member
of

Fortinet Firewall Interface
[cmdb_ci_fortinet_firewall_interface]

Disable SNMP-based Fortinet firewall discovery
Disable the default SNMP-based Fortinet firewall discovery and use REST-based discovery
instead to discover FortiGate Virtual Domains (VDOMs).

Before you begin

Role required: discovery_admin

Procedure
1. Navigate to All > Discovery Definition > CI Classification > SNMP.
2. In the Name field, search for Fortinet Firewall.
3. Select the Fortinet Firewall record.
4. Clear the Active check box.
5. Select Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1939


<!-- page 1940 -->
What to do next

Create an alias and add it to an API key credential. For more information, see Create an alias for
the API key credential for Fortinet firewall REST-based discovery.
Related topics
Fortinet firewall and FortiGate VDOM REST-based discovery
Create an alias for the API key credential for Fortinet firewall REST-based discovery
Create an alias and add it to an API key credential to discover Fortinet firewalls and FortiGate
Virtual Domains (VDOMs) through REST-based discovery.

Before you begin

Create an API Token in Fortinet. For more information, see the Create API Token prerequisite in
Fortinet firewall and FortiGate VDOM REST-based discovery.
Role required: discovery_admin

Procedure
1. Create an alias.
a. Navigate to Connections & Credentials > Connection & Credential Aliases.
b. Select New.
c. Enter a unique name for the alias and select Credential for the alias type in the Type field.
d. Select Submit.
2. Configure an API key credential for the new alias.
a. Navigate to Discovery > Credentials.
b. Select New.
c. Select API Key Credentials.
d. Unlock the Credential alias field and select the alias you created.
e. Configure the rest of the API Key Credentials form fields.
f. Select Submit.
For more information about API Key Credentials form fields, see API key credentials

.

What to do next

Create a serverless schedule for Fortinet Firewall REST-based discovery. For more information,
see Create a serverless schedule for Fortinet firewall REST-based discovery.
Related topics
Fortinet firewall and FortiGate VDOM REST-based discovery
Create a serverless schedule for Fortinet firewall REST-based discovery
Create a serverless discovery schedule to discover Fortinet firewalls and FortiGate Virtual
Domains (VDOMs) through REST-based discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1940


<!-- page 1941 -->
Before you begin
• Verify you have the IP address for the Fortinet firewall device.
• Create an alias for the API key credential. For more information, see Create an alias for the API
key credential for Fortinet firewall REST-based discovery.
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
c. On the form, fill in the fields.
Serverless Execution Pattern New record form
Field

Description

Name

Descriptive name for this record.

Pattern Pattern to be used for this schedule, which should be the Next Generation
Fortinet Network Firewall - REST pattern.
Proxy
Host

Fully qualified domain name of the machine on which you’re installing the proxy
server, which should be Global.

Active

Enables this schedule for discovery.

d. Select Submit.
4. Set the pattern launcher parameters.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1941


<!-- page 1942 -->
a. In the Discovery Pattern Launcher Parameters tab, select the record you created.
b. On the form, fill in the fields.

Parameter

Value

ip_address

IP address of the firewall device.

credentialsAlias

Name of the credential alias you created.

c. Select Submit.

What to do next

Either execute discovery immediately by selecting Discover now or wait until the predefined
schedule triggers the discovery.
Related topics
Fortinet firewall and FortiGate VDOM REST-based discovery
Next-Generation Fortinet Network Firewall SNMP-based discovery
The Discovery and Service Mapping Patterns application uses the Next Generation Fortinet
Network Firewall pattern to find Fortinet firewalls through a series of SNMP calls. Discovering
some of these resources may require updating to the latest version of the Discovery and Service
Mapping Patterns application from the ServiceNow Store.
The Next Generation Fortinet Network Firewall pattern uses a set of SNMP calls to find the
Fortinet firewalls. Discovery uses the pattern to run horizontal discovery.

Note: Only the REST-based Fortinet firewall discovery method finds FortiGate VDOMs.
The SNMP-based Fortinet firewall discovery method doesn't discover them. For information
on REST-based Fortinet firewall and FortiGate Virtual Domains (VDOMs) discovery, see
Fortinet firewall and FortiGate VDOM REST-based discovery.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
To learn about Fortinet firewalls and their versions that you can discover, refer to Detailed
information on products discovered by ITOM Visibility.

Prerequisites
Verify the applications are up to date
• Discovery and Service Mapping Patterns
• CMDB CI Class Models
Ensure SNMP access
Ensure that your Fortinet firewall device has SNMP access.
Configure SNMP credentials

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1942


<!-- page 1943 -->
On the ServiceNow instance, configure SNMP credentials. For more information,
see SNMP credentials .
Add SNMP system OID record to ServiceNow instance
Add the SNMP system OID record for the Fortinet device to the ServiceNow
instance. Update the following:
• Classifier: Fortinet Firewall
• Class: Fortinet Firewall Device
Run a horizontal discovery
For more information, see Running discoveries in your network.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Next Generation Fortinet Network
Firewall Pattern.
Fortinet Firewall Cluster [cmdb_ci_firewall_cluster_fortinet]
Field

Description

Name [name]

Hostname.

Fully qualified domain name [fqdn]

Fully qualified domain name.

IP address [ip_address]

IP address.

Manufacturer [manufacturer]

Device manufacturer.

Description [short_description]

Short description of the Fortinet firewall cluster.

Model Number [model_number]

Device model number.

Hardware Operating System [hardware_os]

OS running on the hardware.

Hardware OS Version [hardware_os_version]

OS version running on the hardware.

Fortinet Firewall Device [cmdb_ci_firewall_device_fortinet]
Field

Description

Name [name]

Hostname.

Serial Number [serial_number]

Serial number of the device.

Fully qualified domain name [fqdn]

Fully qualified domain name.

Operational Status [operational_status]

Indicates if the device is in active state.

IP address [ip_address]

IP address.

Manufacturer [manufacturer]

Device manufacturer.

Description [short_description]

Short description of the device.

Model Number [model_number]

Device model number.

Firmware [firmware_version]

Firmware version.

Hardware Operating System [hardware_os]

OS running on the hardware.

Hardware OS Version [hardware_os_version]

OS version running on the hardware.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1943


<!-- page 1944 -->
IP Address [cmdb_ci_ip_address]
Field

Description

IP Address [ip_address]

IP address of the Fortinet firewall.

Netmask [netmask]

Netmask of the Fortinet firewall.

Network Adapter [cmdb_ci_network_adapter]
Field

Description

IP Address [ip_address]

IP address of the network adapter.

Netmask [netmask]

Netmask of the network adapter.

Alias [alias]

User-assigned name for the network adapter.

MAC Address [mac_address]

MAC address of the network adapter.

Name [name]

Name of the network adapter.

DNS Name [cmdb_ci_dns_name]
Field

Description

Name [name]

Name of the Domain Name System (DNS).

IP Address [ip_address]

IP address of the DNS.

This Dependency Views map on the Fortinet Firewall Device CI shows the Fortinet Firewall
Cluster to which it belongs.

CI relationships
These relationships are created to support Fortinet firewall discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1944


<!-- page 1945 -->
CI

Relationship

CI

Fortinet Firewall Cluster
Extends from
[cmdb_ci_firewall_cluster_fortinet]

Firewall Cluster
[cmdb_ci_firewall_cluster]

Fortinet Firewall Cluster
Hosted on::Hosts
[cmdb_ci_firewall_cluster_fortinet]

Fortinet Firewall Device
[cmdb_ci_firewall_device_fortinet]

Fortinet Firewall Device
Extends from
[cmdb_ci_firewall_device_fortinet]

Firewall Device
[cmdb_ci_firewall_device]

Fortinet Firewall Device
Owns::Owned by
[cmdb_ci_firewall_device_fortinet]

IP Address
[cmdb_ci_ip_address]

Fortinet Firewall Device
Owns::Owned by
[cmdb_ci_firewall_device_fortinet]

Network Adapter
[cmdb_ci_network_adapter]

Fortinet Firewall Device
Uses::Used by
[cmdb_ci_firewall_device_fortinet]

Router Interface
[dscy_router_interface]

IP Address
[cmdb_ci_ip_address]

References

Network Adapter
[cmdb_ci_network_adapter]

Network Adapter
[cmdb_ci_network_adapter]

Owns::Owned by

IP Address
[cmdb_ci_ip_address]

Network Adapter
[cmdb_ci_network_adapter]

References

Fortinet Firewall Device
[cmdb_ci_firewall_device_fortinet]

Router Interface
[dscy_router_interface]

References

Fortinet Firewall Device
[cmdb_ci_firewall_device_fortinet]

Serial Number
[cmdb_serial_number]

References

Fortinet Firewall Device
[cmdb_ci_firewall_device_fortinet]

HAProxy load balancer discovery with patterns
The Discovery and Service Mapping Patterns application uses the HA Proxy pattern to find
HAProxy Community load balancers running on a Linux server. Discovering some of these
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
HAProxy Community edition is an open-source load balancer that can run in either TCP or
HTTP mode. Note that although Discovery supports HAProxy for HTTP load balancing, TCP load
balancing isn’t supported.
Starting with Discovery and Service Mapping Patterns 1.15.0 version, pattern-based discovery
is the default method for discovering HAProxy load balancers. For information on probe-based
HAProxy discovery, see HAProxy load balancer discovery using probes.

Note: HAProxy discovery supports one-to-one relationship mapping between a front-end
port and a back-end port. If multiple front-ends are connected to the same back-end, the
discovery process will only map the relationship from the lowest front-end port number in a
defined range to the back-end port.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1945


<!-- page 1946 -->
To learn about HAProxy load balancers and their versions that you can discover, refer to Detailed
information on products discovered by ITOM Visibility.

Prerequisites
Verify that the applications are up to date
• Discovery and Service Mapping Patterns
• Visibility Content
Verify HAProxy is installed on the Linux server
Verify the HAProxy software is installed and running on a Linux server.
Verify permission to run HAProxy command
Verify you have permission to run the following command: <HAproxy
Installation Path>/haproxy -v.
Verify read access to HAProxy configuration file
Verify you have read access to the haproxy.cfg file.
Create SSH credentials
For more information, see SSH credentials

.

Schedule a horizontal discovery
For more information, see Schedule a horizontal discovery.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the HA Proxy Pattern.
HAProxy Load Balancer [cmdb_ci_lb_haproxy]
Field

Description

Name [name]

Name of the HAProxy load balancer.

Version [version]

Version of the HAProxy load balancer.

Description
[short_description]

Description of the HAProxy process, which is obtained by running the
command: haproxy -version.

Load Balancer Service [cmdb_ci_lb_service]
Field

Description

Name [name]

Name of the load balancer in the following format: <LB
name>:<LB port>.

Port [port]

Port on which the load balancer is listening.

IP Address [ip_address]

IP address of the load balancer service.

Last port [last_port]

Highest port number used by the load balancer service.

Load balancer
[load_balancer]

References the HAProxy Load Balancer [cmdb_ci_lb_haproxy]
table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1946


<!-- page 1947 -->
Load Balancer Pool [cmdb_ci_lb_pool]
Field

Description

Name [name]

Name of the load balancer pool.

Load balancer [load_balancer]

References the HAProxy Load Balancer
[cmdb_ci_lb_haproxy] table.

Load balancing method
[load_balancing_method]

Method used to load balance the pool, for example:
Round Robin.

Most recent discovery
[last_discovered]

Timestamp of the most recent discovery.

Install Status [install_status]

Install status of the load balancer pool, for example:
Installed.

Load Balancer Pool Member [cmdb_ci_lb_pool_member]
Field

Description

Name [name]

Name of the load balancer pool member.

Service port [service_port]

Port used by the pool member.

IP Address [ip_address]

IP address of the pool member host.

Pool [pool]

References the Load Balancer Pool [cmdb_ci_lb_pool] table.

Load balancer
[load_balancer]

References the HAProxy Load Balancer [cmdb_ci_lb_haproxy]
table.

CI relationships
Discovery creates these relationships to support the HAProxy load balancer discovery.

CI

Relationship

CI

Load Balancer Pool
[cmdb_ci_lb_pool]

Allocated
Load Balancer Service
to::Allocated from [cmdb_ci_lb_service]

Load Balancer Pool
[cmdb_ci_lb_pool]

Owns::Owned by Load Balancer Pool Member
[cmdb_ci_lb_pool_member]

Load Balancer Pool
[cmdb_ci_lb_pool]

References

HAProxy Load Balancer
[cmdb_ci_lb_haproxy]

Load Balancer Pool
[cmdb_ci_lb_pool]

References

Load Balancer Pool Member
[cmdb_ci_lb_pool_member]

Load Balancer Pool Member
[cmdb_ci_lb_pool_member]

References

HAProxy Load Balancer
[cmdb_ci_lb_haproxy]

Load Balancer Service
[cmdb_ci_lb_service]

References

HAProxy Load Balancer
[cmdb_ci_lb_haproxy]

Load Balancer Service
[cmdb_ci_lb_service]

Runs on::Runs

Hardware [cmdb_ci_hardware]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1947


<!-- page 1948 -->
HPE BladeSystem Enclosure Discovery
ServiceNow Discovery uses the HPE BladeSystem Enclosure discovery pattern to discover
BladeSystem, which is a line of Hewlett Packard Enterprise blade server machines. Discovering
some of these resources may require updating to the latest version of the Discovery and Service
Mapping Patterns application from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
• Ensure you are using the latest version of Discovery and Service Mapping Patterns.
• Set SNMP credentials for the enclosure (to be used by the Classifier). For more information,
see SNMP credentials .
• Set the SSH credentials for the enclosure’s Onboard Administrator (to be used by the
Discovery pattern). The account used for accessing the Onboard Administrator must have
permissions to view all of the enclosure’s bays, so it can gather the blade servers' information.
For more information, see SSH credentials .
• Verify the Onboard Administrator’s IP address, which Discovery runs against.
• Ensure that the host machine is reachable from the MID Server.

Highlights and supported versions
The pattern has been tested against:
• HPE BladeSystem c7000 Enclosure G2 and G3
• HPE BladeSystem blades: HPE ProLiant BL460c
◦ Generations 8, 9 and 10
◦ ROM Versions: I31, I36, I41 (2014-2021)
◦ Blades being managed by a Virtual Connect Manager/Virtual Connect Enterprise Manager
(VCM/VCEM) have a logical serial number. In this case, the serial number, which is exposed
by WMI, for example, is the logical one, rather than the physical one, as is usually the case.
When creating the relation between the blade and the OS server, based on the serial
number, the system attempts to match both the physical and logical serial numbers with the
ones owned by the OS Server.
◦ When discovering blade servers with the logical serial numbers, their logical serial numbers
are inserted to cmdb_serial_number with the logical type. This is a new serial number type
that was created to support these new serial numbers introduced by HP.

Note: The WMI provides the logical serial number as the bios serial number. ESXi
servers are discovered by probes. The ESXiserver CI gets the logical serial number as
chassis.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the HPE BladeSystem Enclosure
Discovery pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1948


<!-- page 1949 -->
HPE BladeSystem Enclosure [cmdb_ci_hpe_bladesystem_enclosure]
Field

Description

Name [name]

The name of the enclosure.

UUID [uuid]

The unique identifier of the enclosure (HPE’s
proprietary identifier).

IP Address [ip_address]

The management IP of the enclosure
(Onboard Administrator address).

Model ID [model_id]

The enclosure’s type (model).

Manufacturer [manufacturer]

The enclosure’s manufacturer name (“HP” or
“HPE”, depending upon the model).

Serial number [serial_number]

A generated serial number according to
this convention: <enclosure’s original
serial> ::<enclosure’s UUID>

Asset tag [asset_tag]

The asset tag as extracted from the
enclosure’s data.

Model number [model_number]

The enclosure’s part number (HPE
proprietary).

Midplane Spare Part Number
[midplane_spare_part_number]

The spare part number (HPE proprietary) of
the mid-plane.

PDU Type [pdu_type]

The type of Power Distribution Unit.

PDU Spare Part Number
[pdu_spare_part_number]

The Power Distribution Unit spare part number
(HPE proprietary).

Onboard Administrator Tray Type
[onboard_admin_tray_type]

The type of the Onboard Administrator tray.

Onboard Administrator
Tray Spare Part Number
[onboard_admin_tray_spare_part_number]

The Onboard Administrator tray’s spare part
number (HPE proprietary).

Onboard Administrator Tray Serial Number
[onboard_admin_tray_serial_number]

The Onboard administrator tray’s serial
number.

HPE BladeSystem Blade [cmdb_ci_hpe_bladesystem_blade]
Field

Description

Name [name]

The generated value, according to this
convention: <enclosure’s name>/bay-<bay
number>

UUID [uuid]

The unique identifier of the blade server
(HPE’s proprietary identifier).

Logical UUID [uuid_logical]

The logical unique identifier of the HPE server
blade (HPE’s proprietary identifier).

Model ID [model_id]

The blade server’s product name (model).

Manufacturer [manufacturer]

The blade server’s manufacturer name (“HP”
or “HPE” depending on the model).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1949


<!-- page 1950 -->
HPE BladeSystem Blade [cmdb_ci_hpe_bladesystem_blade] (continued)
Field

Description

Serial number [serial_number]

A generated serial number according to
this convention: <blade’s original serial> ::
<blade’s UUID>.

Logical serial number [serial_number_logical]

The logical serial number of the HPE server
blade (HPE’s proprietary identifier).

Asset tag [asset_tag]

The asset tag as extracted from the blade’s
data.

Model number [model_number]

The blade’s part number (HPE proprietary).

RAM (MB) [ram]

The blade’s RAM size.

ROM Version [rom_version]

The version of the blade’s ROM.

System Board Spare Part Number
[system_board_spare_part_number]

The blade’s system board spare part number
(HPE proprietary).

Boot Mode [boot_mode]

The blade’s boot mode.

Secure Boot Status [secure_boot_status]

The blade’s secure board status.

Management Processor Type
[management_processor_type]

The blade’s management processor type
(iLOversion).

Management Processor Name
[management_processor_name]

The blade’s management processor
hostname.

Management Processor Firmware Version
[management_processor_firmware_version]

The blade’s management processor firmware
version.

Management Processor IP Address
[amanagement_processor_ip_address]

The blade’s management processor IP
address.

Management Processor MAC Address
[management_processor_mac_address]

The blade’s management processor MAC
address.

Power Management Controller Version
[power_management_controller_version]

The blade’s power management controller’s
version.

iLO Federation Capable
[ilo_federation_capable]

The iLofederation capability enabled/disabled.

Bay Number [bay_number]

The enclosure’s bay number in which the
blade is installed.

Network Adapter [cmdb_ci_network_adapter]
Field

Description

MAC Address [mac_address]

The blade’s management processor’s
ethernet address (= iLOnetwork interface MAC
address).

Name [name]

The blade’s management processor’s
hostname.

IP Address [ip_address]

The blade’s management processor’s IP
address.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1950


<!-- page 1951 -->
Network Adapter [cmdb_ci_network_adapter] (continued)
Field

Description

Configuration Item [cmdb_ci]

References the HPE BladeSystem Blade
[cmdb_ci_hpe_bladesystem_blade] table.

IP Address [cmdb_ci_ip_address]
Field

Description

Name [name]

The blade’s management processor (iLO) IPv4
IP address.

IP Address [ip_address]

The blade’s management processor’s IP
address.

Nic [nic]

References the Network Adapter
[cmdb_ci_network_adapter] table.

The implementation of HPE BladeSystem Enclosure CMDB model includes three new CI Classes:
CMDB Model: (New CI Classes)
Field

Description

Enclosure [cmdb_ci_enclosure]

A general class to represent any enclosure
entity. Extends Hardware CI class.

HPE BladeSystem Enclosure
[cmdb_ci_hpe_bladesystem_enclosure]

A CI class for representing the enclosure
entity.

HPE BladeSystem Blade
[cmdb_ci_hpe_bladesystem_blade]

A CI class for representing the blade server
entity.

CI relationships
Discovery creates these relationships to support HPE BladeSystem Enclosure discovery.

CI

Relationship

CI

HPE BladeSystem Enclosure
Contains::Contained by
[cmdb_ci_hpe_bladesystem_enclosure]

HPE BladeSystem Blade
[cmdb_ci_hpe_bladesystem_blade]

HPE BladeSystem Blade
Owns::Owned by
[cmdb_ci_hpe_bladesystem_blade]

Network Adapter
[cmdb_ci_network_adapter]

HPE BladeSystem Blade
Owns::Owned by
[cmdb_ci_hpe_bladesystem_blade]

IP Address
[cmdb_ci_ip_address]

IP Address
[cmdb_ci_ip_address]

references

Network Adapter
[cmdb_ci_network_adapter]

Network Adapter
[cmdb_ci_network_adapter]

references

HPE BladeSystem Blade
[cmdb_ci_hpe_bladesystem_blade]

Serial Number
[cmdb_serial_number]

references

HPE BladeSystem Enclosure
[cmdb_ci_hpe_bladesystem_enclosure]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1951


<!-- page 1952 -->
CI

Relationship

CI

Serial Number
[cmdb_serial_number]

references

HPE BladeSystem Blade
[cmdb_ci_hpe_bladesystem_blade]

Related topics
SNMP-based queries
IBM Db2 on Linux database discovery
ServiceNow Discovery uses the Db2 on Linux discovery pattern to find IBM Db2 instances on
Linux servers.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Discovery uses this pattern to run horizontal discovery. The pattern is triggered automatically by
classification using these Db2 identifiers: tcp_port, name, installed_dir.

Prerequisites
Configure SSH credentials for the Linux server.
In addition, ensure that the user has the permissions to run the following commands:
Identification for Db2 UDB entry point types

". /" + $process.environmentVariables.HOME.value +
"/sqllib/db2profile; " +
$process.environmentVariables.HOME.value + "/sqllib/bin/
db2level"
"source " + $installed_dir + "db2profile"
"db2 list database directory | grep \"Database name\" |
grep -i \"" + $entry_point.instance + "\" | head -1"
"db2level | grep \"DB2 v\""
Identification for Db2 UDB entry point types - NONE

"cat " + $installed_dir + "/db2dump/db2diag.log | grep
\"INSTANCE:\" | grep " + $entry_point.instance + " | head
-1"
"db2level | grep \"DB2 v\""
Identification for Db2 on z/OS

"netstat -a | grep " + $entry_point.port
"ls -d /*/* |grep " + $id

Data collected by Discovery during horizontal discovery
The Identification for Db2 UDB entry point types and Identification for Db2 UDB entry point
types – NONE sections collect the following tables and fields:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1952


<!-- page 1953 -->
DB2 Subsystem [cmdb_ci_db_db2_instance]
Field

Description

Name [name]

The Db2 instance name.

TCP port(s) [tcp_port]

TCP port.

Install Directory [installed_dir]

Installation directory.

Version [version]

Db2 version.

The Identification for Db2 on Z/OS section collects the following tables and fields:
DB2 Subsystem [cmdb_ci_db_db2_instance]
Table and field

Description

Name [name]

The Db2 instance name.

TCP port(s) [tcp_port]

TCP port.

Install Directory [installed_dir]

Installation directory.

The Dependency Views map shows all discovered IBM Db2 instances in your organization and
the relationships between them.

CI relationships
The IBM Db2 on Linux pattern does not create any CI relationships.
IBM Db2 on Windows database discovery
ServiceNow Discovery uses the Db2 on Windows discovery pattern to find IBM Db2 instances on
Windows servers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1953


<!-- page 1954 -->
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Discovery uses this pattern to run horizontal discovery. The pattern is triggered automatically by
classification using these Db2 identifiers: tcp_port, name, installed_dir

Prerequisites
Ensure that the user has the permissions to run the following commands:
• "\"" + $installed_dir + "\bin\db2cmd\" /c /w /i db2 list

database directory"

• "\"" + $installed_dir + "\bin\db2cmd\" /c /w /i db2 list

database directory | findstr \"Database name\" | findstr /i " +
$entry_point.instance

• "\"" + $installed_dir + "\bin\db2level\""

Data collected by Discovery during horizontal discovery
The discovered data includes the following tables and fields.

Table and field

Description

name

Name of the Db2 instance.

tcp_port

TCP port.

installed_dir

The installation directory.

version

Db2 version.

db_name

Name of the database.

pid

Process ID of the Db2 instance.

The Dependency Views map shows all discovered IBM Db2 instances in your organization and
the relationships between them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1954


<!-- page 1955 -->
CI relationships
The IBM Db2 on Windows pattern does not create any CI relationships.
IBM Informix Dynamic Server discovery
The ServiceNow Discovery and Service Mapping applications can find and map the Informix
Dynamic Server. Discovering some of these resources may require updating to the latest version
of the Discovery and Service Mapping Patterns application from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
User
Provide a user with permissions to run the following commands without elevated
rights:
• $install_directory/bin/onstat -g dis
This command gets the status and configuration of Informix Dynamic server.
• $install_directory/bin/dbaccess sysmaster
This command runs an sql query against the master schema.
The same user must have read permission for the following directories:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1955


<!-- page 1956 -->
• install_directory + "/etc/sqlhosts
Access to this directory is necessary to get information about the port, host, and
service definition of the Informix Dynamic server.
• /etc/services
Access to this directory is required to get information about the host service
definition.
Credentials
Configure SSH credentials in the Credentials module of the ServiceNow platform for
accessing the server hosting the Informix Dynamic server.

Data collected by Discovery during horizontal discovery
Table and Field

Description

Informix Instance
[cmdb_ci_db_informix_instance]

The Informix instance attributes.

tcp_port
running_process
version
install_directory
config_file
name
Informix Catalog
[cmdb_ci_db_informix_catalog]

The database included in the Informix
Instance.

database

CI Relationships
CI

Relationship/Reference

Informix Instance
Contains::Contained by
[cmdb_ci_db_informix_instance]

CI

Informix Catalog
[cmdb_ci_db_informix_catalog]

Top-down
During top-down discovery, Service Mapping discovers connections between the Informix
Instance and the Informix Catalogs that the instance contains and displays them as an inclusion
on the application service map.
IBM PowerHA SystemMirror for AIX discovery
The ServiceNow Discovery application uses the IBM PowerHA Cluster (HACMP) pattern to find
IBM PowerHA SystemMirror for AIX (formerly HACMP) high-availability clusters on AIX UNIX
and Linux systems running on IBM platforms. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1956


<!-- page 1957 -->
Discovery uses this pattern to run horizontal discovery.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the following application is up to date
Discovery and Service Mapping Patterns
Verify the IBM PowerHA Cluster (HACMP) pattern is in Triggers probes tab
1. Navigate to CI Classification > UNIX.
2. Select AIX.
3. In The Triggers probes tab, verify that the IBM PowerHA Cluster (HACMP) pattern
is listed as an exploration that runs after the AIX Server pattern.
For more information on AIX Server discovery, see AIX server discovery.
Verify server IP address or hostname
Verify that the server IP address or hostname are used during discovery. For more
information, see Schedule a horizontal discovery.
Verify MID Server access
Verify that the MID Server has access to the target host and can execute all the
commands that are implemented in the pattern.
Configure a UNIX user with the following permissions
Configure a UNIX user with permissions to run all commands defined in the official
IBM documentation, and the following commands on AIX.

Command

Description

lssrc -s clstrmgrES

Verify that the clstrmgrES process is
running

lslpp -l cluster.license

Get the license and version data of the
cluster

lslpp -l cluster.license
| awk '{$1=$2=$3=\"\";
print $0}' |sed -e
's/^[[:space:]]*//'

Get the software label version data of
the cluster

/usr/es/sbin/cluster/
utilities/clRGinfo -a | awk
'{print $1,$2}' | grep -E
-v 'denied|error'

Get resource groups name and type

/usr/es/sbin/cluster/
utilities/clRGinfo -s |
grep -E -v 'denied|error'

Get more information about resource
groups

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1957


<!-- page 1958 -->
Command

Description

/usr/es/sbin/cluster/
utilities/clfindres -s |
grep -E -v 'denied|error'

Alternative command to get more
information about resource groups

/usr/es/sbin/cluster/
utilities/clshowres
| grep -E 'Resource
Group Name|Volume' |
grep -E -v 'Concurrent|
Automatically|error|denied'
| sed 's/Volume Groups/
Volume Groups Names/' |
awk '{print substr($0,
index($0,$4))}' | sed 'N;s/
\n/ /'

Get volume groups associated to
resource groups

/usr/es/sbin/cluster/clstat
-o | grep 'Resource Group'
| grep -E -v 'error|denied'
| awk '{print $3, $5, $6}'

Get the state of the resource group(s)

/usr/es/sbin/cluster/
utilities/cltopinfo -c

Get the cluster name

/usr/es/sbin/cluster/
utilities/cllscf

Alternative command to get the cluster
name

lssrc -ls clstrmgrES

Get cluster current state

/usr/es/sbin/cluster/
clstat -o |awk '{$1=$2=
\"\"; print $0}' |sed -e
's/^[[:space:]]*//'

Get the cluster ID

/usr/es/sbin/cluster/
utilities/cllsclstr | grep
-E -v 'error|denied' | awk
'{print $1}'

Alternative command to get the cluster
ID

/usr/bin/odmget
HACMPcluster| grep -w id |
grep -E -v 'error|denied'

Alternative command to get the cluster
ID

/usr/es/sbin/cluster/
utilities/cltopinfo -n |
grep -E -v 'error|denied'

Get the cluster node(s) name(s)

/usr/es/sbin/cluster/
utilities/cllsnode | grep
-E -v 'error|denied'

Alternative command to get cluster
node(s) name(s)

/usr/es/sbin/cluster/clstat
-o | grep -i 'Node:' | awk
'{print $2, $4}'

Get cluster node(s) state(s)

lscluster -m | grep -E
'Node name|State of node'
| grep -E -v 'ERROR|
lscluster' | awk '{print

Alternative command get cluster
node(s) state(s)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1958


<!-- page 1959 -->
Command

Description

$2, $3, $4}' | sed 'N;s/
\n/ /'
/usr/es/sbin/cluster/
utilities/cllsif | grep
-E -v 'error|denied' | awk
'{print $1, $2, $6, $7}'

Get network interface information

lspv | grep -E -v 'error|
denied'

Get physical volumes information

lsvg | grep -E -v 'error|
denied'

Get volume groups information

lsvg -o | grep -E -v
'error|denied'

Get information about the active volume
groups

/usr/es/sbin/cluster/
utilities/clshowres |
grep 'Concurrent Volume
Group' | awk '{$1=$2=$3=
\"\"; print $0}' |sed -e
's/^[[:space:]]*//'

Get information about the concurrent
volume groups

hostname

Get current node host name

nslookup hostname

Convert hostname to FQDN

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the IBM PowerHA Cluster (HACMP)
pattern.
Cluster Resource Group [cmdb_ci_cluster_resource_group]
Field

Description

Name [name]

The name of the resource group configured into the
cluster context.

Server [server]

The name of the PowerHA/HACMP cluster.

Resource Group Status
[resource_group_status]

The status of the resource group into the cluster context.
Example: Online.

Resource Group Type
[resource_group_type]

The type of the resource group. Examples: Concurrent,
non-concurrent.

Cluster [cluster]

The name of the PowerHA/HACMP cluster to which the
resource group belongs.

UNIX Cluster Resource [cmdb_ci_unix_cluster_resource]
Field

Description

Name [name]

The name of the volume group into the cluster context.

Resource Type
[resource_type]

The resource type (volume group).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1959


<!-- page 1960 -->
UNIX Cluster Resource [cmdb_ci_unix_cluster_resource] (continued)
Field

Description

Resource Status
[resource_status]

The status of the volume group. Examples: Online, Offline.

Cluster [cluster]

The name of the PowerHA/HACMP cluster to which the volume
group belongs.

UNIX Cluster Node [cmdb_ci_unix_cluster_node]
Field

Description

Name [name]

The name of the node that participates in the cluster.

Node State
[node_state]

The state of the cluster node in the context of the CI state. For example:
UP, DOWN, UNKNOWN.

Node Status
[node_status]

The status of the node in the context of the resource group to which it
belongs.

IP Address
[ip_address]

The IP addresses assigned to the node.

Cluster [cluster]

The name of the cluster to which the cluster node belongs.

AIX Server [cmdb_ci_aix_server]
Field

Description

Name
[name]

Name of the AIX server, representing the cluster node into the context of the
PowerHA/HACMP cluster.

UNIX Cluster [cmdb_ci_unix_cluster]
Field

Description

Name [name]

The name of the PowerHA/HACMP cluster.

Cluster ID [cluster_id] The ID of the PowerHA/HACMP cluster. Example: 0123456789.
Cluster Status
[cluster_status]

The current state of the PowerHA/HACMP cluster. Examples:
ST_STABLE, NOT_CONFIGURED.

Cluster Version
[cluster_version]

The version of the PowerHA/HACMP cluster. Examples: 5.5; 6.1; 7.2.

Cluster Type
[cluster_type]

The type of the PowerHA/HACMP cluster. Relevant only for versions 7.2
and above. Example: Stretched.

Description
[short_description]

Description of the PowerHA/HACMP cluster (version, ID).

Cluster Virtual IP [cmdb_ci_cluster_vip]
Field

Description

Name
[name]

The cluster node interface name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1960


<!-- page 1961 -->
Cluster Virtual IP [cmdb_ci_cluster_vip] (continued)
Field

Description

IP Address Hostname or IP address where the Hostname represents the cluster node
[ip_address] network interface name and the IP address the IPv4 address associated to the
network interface name. (As the IBM PowerHA/HACMP cluster does not have
dedicated VIP address).
Cluster
[cluster]

The name of the PowerHA/HACMP cluster.

On the Dependency Views map you can see all discovered cluster CIs in your organization and
the relationships between them.
In this example, UNIX Cluster Node represents a cluster of UNIX Clusters. UNIX Cluster Node gets
resources from UNIX Cluster Resource and uses Cluster Virtual IP. UNIX Cluster Node contains
three Cluster Resource Groups.
Dependency Views sample map

CI relationships
These relationships are created to support IBM HACMP/PowerHA cluster discovery:

CI

Relationship

CI

UNIX Cluster Node
[cmdb_ci_unix_cluster_node]

Cluster of::Cluster

UNIX Cluster
[cmdb_ci_unix_cluster]

UNIX Cluster Node
[cmdb_ci_unix_cluster_node]

Contains::Contained by

Cluster Resource Group
[cmdb_ci_cluster_resource_group]

Cluster Resource Group
Contains::Contained by
[cmdb_ci_cluster_resource_group]

UNIX Cluster Resource
[cmdb_ci_unix_cluster_resource]

UNIX Cluster Resource
Defines resources for::Gets
[cmdb_ci_unix_cluster_resource]resources from

UNIX Cluster Node
[cmdb_ci_unix_cluster_node]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1961


<!-- page 1962 -->
CI

Relationship

CI

UNIX Cluster Resource
Defines resources for::Gets
[cmdb_ci_unix_cluster_resource]resources from

UNIX Cluster
[cmdb_ci_unix_cluster]

Cluster Virtual IP
[cmdb_ci_cluster_vip]

Used by::Uses

UNIX Cluster Node
[cmdb_ci_unix_cluster_node]

UNIX Cluster
[cmdb_ci_unix_cluster]

Virtualized by::Virtualizes

Cluster Virtual IP
[cmdb_ci_cluster_vip]

UNIX Cluster
[cmdb_ci_unix_cluster]

Contains::Contained by

Cluster Resource Group
[cmdb_ci_cluster_resource_group]

UNIX Cluster Node
[cmdb_ci_unix_cluster_node]

Hosted on::Hosts

AIX Server
[cmdb_ci_aix_server]

IBM Virtualization and Hardware Management Console discovery
The Discovery and Service Mapping Patterns application uses the IBM HMC Server pattern
to find information about Hardware Management Console (HMC), frame, and logical partition
(LPAR) servers. Discovering some of these resources may require updating to the latest version
of the Discovery and Service Mapping Patterns application from the ServiceNow Store.
Discovery supports the following configuration items (CIs):
• HMC server
• IBM frame
• LPAR instance
An LPAR is the virtual machine equivalent of IBM.
• LPAR resource
Discovery is used on the HMC server and the individual AIX machines (LPARs).
The IBM HMC Server pattern runs using SSH. It’s supported to run on IBM AIX OS for LPAR and
on Linux for HMC servers only.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Verify that the applications are up to date
• Discovery and Service Mapping Patterns
• CMDB CI Class Models
Verify permissions for HMC and AIX servers
• Verify you have permissions for the following HMC commands:
◦ lssyscfg
◦ lshmc

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1962


<!-- page 1963 -->
◦ lshwres
◦ lssysconn -r all -F type_model_serial_num:ipaddr
• Verify you have permissions for the following AIX (LPAR) command: lparstat
-i.

Note: The lparstat -i command is in addition to the commands
required for AIX server discovery. For more information on AIX server
discovery, see AIX server discovery. For a list of the AIX commands, see
Service Mapping commands requiring a privileged user.
Configure SSH credentials
Configure SSH credentials on the ServiceNow AI Platform. For more information, see
SSH credentials .
Run a horizontal discovery for HMC Server and LPARs
1. Run a discovery on the HMC IP address.
2. Only when the HMC Server discovery has successfully completed, run a
discovery on the LPARs using the AIX machine IP address.
For more information on running a discovery, see Schedule a horizontal discovery.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the IBM HMC Server pattern.
IBM HMC Server [cmdb_ci_hmc_server]
Field

Description

Name [name]

Name of the HMC.

Frame count
[frame_count]

Number of frames managed for the HMC.

Serial number [serial
number]

Serial number of the HMC server.

IP Address
[ip_address]

IP address of the HMC.

OS Version
[os_version]

Operating system version.

CPU type [cpu_type]

CPU type.

CPU speed (MHz)
[cpu_speed]

CPU speed.

CPU count
[cpu_count]

CPU count.

CPU core count
[cpu_core_count]

CPU core count.

RAM (MB) [ram]

Memory RAM.

A frame is the physical machine on which the LPARs reside. A frame is
the equivalent of an ESX machine.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1963


<!-- page 1964 -->
IBM Frame [cmdb_ci_ibm_frame]
Field

Description

Name [name]

Name of the frame.

Serial number [serial number]

Serial number of the Frame server.

Current available processor units
[curr_avail_sys_proc_units]

Current available processor units.

Configurable processor units
[configurable_sys_proc_units]

Configurable processor units.

Installed processor units [installed_sys_proc_units]

Installed processor units.

Current available memory units [curr_avail_sys_mem]

Current available memory units.

Configurable memory units [configurable_sys_mem]

Configurable memory units.

Installed memory units [installed_sys_mem]

Installed memory units.

IP Address [ip_address]

Management IP address of the IBM
frame.

IBM LPAR Instance [cmdb_ci_lpar_instance]
Field

Description

Name [name]

Name of the LPAR instance.

State [state]

Operational state. Possible values are On or
Off.
• On: running
• Off: not activated or not available

Serial number [serial_number]

Serial number of the LPAR.

Object ID [object_id]

Unique object identifier. This identifier is
concatenated from the frame serial number
and the LPAR identifier.

Is VIO [is_vio]

Identifies the LPAR as a VIO server.
A VIO server is the LPAR that manages the
physical components for other LPARs, such
as network interface cards (NICs) and optical
drives.

VIO Servers [vio_servers]

• Client LPARs: Identifies the VIO servers that
manage the client LPARs.
• VIO servers: Identifies the Client LPARs the
VIO servers manage.

Current Min Proc Units [curr_min_proc_units]

Minimum number of processing units that can
be assigned to the partition dynamically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1964


<!-- page 1965 -->
IBM LPAR Instance [cmdb_ci_lpar_instance] (continued)
Field

Description

Running Proc Units [run_proc_units]

Number of processing units that are varied on
for the partition.

Current Memory [curr_mem]

The amount of memory in megabyte (MB)
assigned to the partition.

Running Memory [run_mem]

Current amount of memory in MB that the
partition has varied on.

IP Address [ip_address]

IP address assigned to the VIOS LPAR
instance.

Model number [model_number]

OS version of the VIOS LPAR instance.

Frame Name [frame_parent]

References the IBM Frame
[cmdb_ci_ibm_frame] table.

LPAR Resource [cmdb_ci_lpar_resource]
Field

Description

High Watermark VCPU Highest recorded value of the Online Virtual CPUs field, as collected
[high_watermark_vcpu] by the lparstat-i command.
Because the value is dynamic, the results of a discovery could affect
the value:
• If the value of the Online Virtual CPUs field is lower than the value
collected by the lparstat-i command, the value doesn’t
change.
• If the value of the Online Virtual CPUs field is higher than the value
collected by the lparstat-i command, the higher value is used.
Node name
[node_name]

Name of the instance, along with the field that refers to the LPAR
instance CI.

Serial Number [cmdb_serial_number]
Field

Description

Serial number [serial_number]

Serial number of the CI.

CI Relationships
Discovery creates these relationships to support the IBM Virtualization and HMC discovery.

CI

Relationship

CI

IBM HMC Server
[cmdb_ci_hmc_server]

Defines resources
for::Gets resources from

IBM HMC Processor Pool
[cmdb_ci_processor_pool]

IBM LPAR Instance
[cmdb_ci_lpar_instance]

Virtualized by::Virtualizes

IBM Frame
[cmdb_ci_ibm_frame]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1965


<!-- page 1966 -->
CI

Relationship

CI

IBM Frame
[cmdb_ci_ibm_frame]

Managed by::Manages

IBM HMC Server
[cmdb_ci_hmc_server]

IBM HMC Processor Pool
[cmdb_ci_processor_pool]

Members::Member of

IBM LPAR Instance
[cmdb_ci_lpar_instance]

IBM LPAR Instance
[cmdb_ci_lpar_instance]

References

IBM Frame
[cmdb_ci_ibm_frame]

IBM WebSEAL discovery
®

The Discovery application uses the IBM WebSEAL patterns to find WebSEAL applications, web
application servers, and junctions on your infrastructure. Discovering some of these resources
®
requires installing the Discovery and Service Mapping Patterns application from the Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Detailed information on IBM WebSEAL
For information, see Detailed information on products discovered by ITOM Visibility
Authentication
The WebSEAL authentication process includes HTTP header authentication with
basic credentials Basic authentication credentials .
If you’re running discovery for the first time, configure Credential affinity for
Discovery and Orchestration Credential affinity for Discovery and Orchestration

.

Note: Credential affinity isn’t available In debug mode.
Configured MID Server
Ensure the MID Server has access and permissions to send HTTPS requests to the
WebSEAL application.
Configured user permissions to execute API calls
Ensure that the user has the permission to run the following API:
• /net/general
• /net/dns
• /wga/reverseproxy
• /wga/reverseproxy/<reverse_proxy_id>/configuration/

stanza/junction/entry_name/match-vhj-first

• /wga/reverseproxy/<reverse_proxy_id>/junctions
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1966


<!-- page 1967 -->
• /wga/reverseproxy/"<reverse_proxy_id>/junctions?

junctions_id=<junction_id>

• /wga/widgets/health.json
HTTP Classification enabled
The IBM WebSEAL Pattern is triggered when you run the discovery on the server
that the WebSEAL is on. Ensure that the HTTP Classification is present in the
instance. For more information, see Create an HTTP classification and Run
discovery through an HTTP or HTTPS REST call

Data collected during horizontal discovery
Field

Description

ISAM Server [cmdb_ci_isam_server]
name

The name of the server as returned by the /
net/general API call. If the field is empty,
nslookup on the IP address would be
attempted to populate this field.

IP Address [ip_address]

The IP address according to the discovery
schedule/configuration.

fqdn

The search_domain returned by the/net/
dns API call.

WebSEAL [cmdb_ci_app_server_webseal]
name

The name of the WebSEAL server as returned
by the API.

IP Address [ip_address]

The IP address according to the discovery
schedule/configuration.

fqdn

The search_domain returned by the /
net/dns API call.

install_status

The status is set to installed by default.

operation_status

The status is set to operational by default.

install_directory

According to the identification requirement,
this field is populated with the FQDN of the
server.

WebSEAL Reverse Proxies [cmdb_ci_webseal_reverse_proxy]
name

The name of the resource according to the API
response.

object_id

The ID of the resource, of the API response.

install_status

Indicates if the installation is enabled.

operational_status

Indicates if the operation has started.

service_type – hard-coded

The status is set to Webseal Reverse
Proxyby default.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1967


<!-- page 1968 -->
Field

Description

webseal_health_status

The WebSEAL reported health status
regarding the /wga/widgets/
health.json API call

WebSEAL Junctions [cmdb_ci_webseal_junction]
name
object_id

The name of the resource according to the API
response.
The id of the resource, created as a unique
hash number corresponding to the casesensitive name of the resource.

Note: The case insensitivity of the
queries may create duplicate fields
when the name value is identical to the
Object ID value. One of the identification
attributes must be changed to have a
unique value.
install_status

Hard-coded to installed status

operational_status

Hard-coded to operational status

stateful_junction

Boolean value indicating whether it’s a stateful
Junction

transparent_path_junction

Boolean value indicating whether it’s a
transparent path Junction

junction_type

List for the type of the Junction

WebSEAL Backend Servers [cmdb_ci_webseal_backend_server]
name

the name of the resource, as per API response

object_id

the id of the resource, as per API response

install_status

the status of the resource as per the “enabled”
value in the API response

operational_status

the status of the resource as per the
“operation state” value

server_id

The UUID used to identify the junction web
server

http_port

HTTP port of the back-end third-party server.
Applicable when the junction type is tcp.

service_port

TCP port of the back-end third-party server.
Default is 80 for TCP junctions and 443 for
SSL junctions

Priority

The priority of the server (1-9). Default is 9.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1968


<!-- page 1969 -->
Pattern Relations
CI

Relationship Type

CI

Webseal
Runs on::Runs
[cmdb_ci_app_server_webseal]

ISAM Server
[cmdb_ci_isam_server]

Webseal Reverse Proxy
Hosted on::Hosts
[cmdb_ci_webseal_reverse_proxy]
Reference[load_balancer]

Webseal
[cmdb_ci_app_server_webseal]

Webseal Reverse Proxy
Runs on::Runs
[cmdb_ci_webseal_reverse_proxy]
Reference[isam_server]

ISAM Server

Webseal Junction
[cmdb_ci_webseal_junction]

Allocated to::Allocates

Webseal Reverse Proxy
[cmdb_ci_webseal_reverse_proxy]

Webseal Junction
[cmdb_ci_webseal_junction]

Owns::Owned by

Webseal Junction
[cmdb_ci_webseal_junction]

Reference only
[load_balancer]

Reference [service]

Reference [pool]

[cmdb_ci_isam_server]

Load Balancer Pool Member
[cmdb_ci_webseal_backend_server]

Webseal
[cmdb_ci_app_server_webseal]

Note: Currently, the relation between the back-end servers and actual server CIs in the
CMDB isn’t possible for HD.
IBM WebSphere Application Server discovery using patterns
The Discovery and Service Mapping Patterns application uses the Websphere On Windows and
Websphere On Unix patterns to find IBM WebSphere Application Servers. Discovering some of
these resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.
The IBM WebSphere Application Server is a software framework with middleware that hosts
Java-based web applications. Discovery identifies and classifies information about the IBM
WebSphere Application Server on both Windows and Linux computers.

Note: Starting with Visibility Content version 6.1.0, pattern-based discovery is the default
method for discovering IBM WebSphere Application Servers. The WebSphere probes are
disabled by default. For more information, see IBM WebSphere server discovery using
probes.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1969


<!-- page 1970 -->
Prerequisites for Windows discovery
Verify that the following applications are up to date:
• Discovery and Service Mapping Patterns
• Visibility Content
Enable PowerShell on the MID Server
For more information, see Set up MID Servers to use PowerShell.
Verify access to files and directories
Verify access to the following files and directories:
• Installation directory of the product
• Configuration directory of the product
• versionInfo.bat
• WAS.product
• BASE.product
• profile.version
• Express.product
• application.xml
• server.xml
• cell.xml
Create Windows credentials
For more information, see Windows credentials

.

Schedule a horizontal discovery
For more information, see Schedule a horizontal discovery.

Prerequisites for Linux discovery
Verify that the following applications are up to date:
• Discovery and Service Mapping Patterns
• Visibility Content
Enable SSH on WebSphere Application Server
For more information, see the "Setting up SSH on Linux or UNIX servers" article
in the "WebSphere Automation" section of the IBM documentation (https://
www.ibm.com/docs/en/products ).
Verify access to files and directories
Verify access to the following files and directories:
• Installation directory of the product
• Configuration directory of the product
• oeconsol
• WAS_HOME
• CONFIG_ROOT
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1970


<!-- page 1971 -->
• versionInfo.sh
• WAS.product
• BASE.product
• profile.version
• Express.product
• application.xml
• server.xml
• cell.xml
Create SSH credentials
For more information, see SSH credentials

.

Verify elevated rights for IBM WebSphere Application Server commands
For more information, see IBM WebSphere Application Server (on UNIX) table in
Service Mapping commands requiring a privileged user.
Schedule a horizontal discovery
For more information, see Schedule a horizontal discovery.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Websphere On Windows and
Websphere On Unix patterns.
IBM Websphere [cmdb_ci_app_server_websphere]
Field

Description

Name [name]

Name of the WebSphere Application Server.

Version
[version]

Current version of the WebSphere Application Server.

Node [node]

Name of the Node grouping the WebSphere Application Server or servers.

Cell [cell]

Name of the cell grouping one or more nodes of the WebSphere Application
Server.

Websphere EAR [cmdb_ci_app_server_ws_ear]
Field

Description

Name [name]

Name of the enterprise application archive (EAR) file.

Installation directory [install_directory]

Installation directory of the EAR file.

Web Service [cmdb_ci_web_service]
Field

Description

Name [name]

Name of the web service.

Service ID [service_id]

ID of the web service.

Attributes [attributes]

Additional attributes of the web service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1971


<!-- page 1972 -->
Websphere Cell [cmdb_ci_websphere_cell]
Field

Description

Name [name]

Name of the WebSphere cell.

Cell ID [cell_id]

ID of the WebSphere cell.

Cell type [cell_type]

Type of the WebSphere cell.

Cell discovery protocol
[cell_discovery_protocol]

Cell discovery protocol.

Description [short_description] Description of the cell, if one has been provided. This field is
populated in Linux discovery only.

CI relationships
Discovery creates these relationships to support the WebSphere Application Server discovery
for both Windows and Linux systems.

CI

Relationship

CI

IBM Websphere
[cmdb_ci_app_server_websphere]

Contains::Contained Websphere Cell
by
[cmdb_ci_websphere_cell]

IBM Websphere
[cmdb_ci_app_server_websphere]

Contains::Contained Websphere EAR
by
[cmdb_ci_app_server_ws_ear]

Web Service
[cmdb_ci_web_service]

Runs on::Runs

IBM Websphere
[cmdb_ci_app_server_websphere]

InfiniBox Discovery
ServiceNow Discovery uses the InfiniBox pattern to find and map instances. Discovering these
resources requires installing the Discovery and Service Mapping Patterns application from the
ServiceNow Store.
Discovery uses multiple patterns to find InfiniBox storage system data. Discovering these
resources requires installing the Discovery and Service Mapping Patterns and the CMDB CI
Class Models applications from the ServiceNow Store, as each application is dependent on the
other. You can use the patterns for discovering the InfiniBox components on the ServiceNow AI
Platform using the Paris release or later.
The InfiniBox enterprise storage array delivers faster-than-all-flash performance, high availability,
and multi-petabyte scale for mixed application workloads. The InfiniBox hardware redundancy
design enables rapid recovery from any component failures.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites

Note: Discovery of 'Hosts' and 'Clusters' associated to the InfiniBox system are
not supported from version 1.0.83 of the Discovery and Service Mapping Patterns
(sn_itom_pattern) plugin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1972


<!-- page 1973 -->
• Install the following plugins:
◦ CMDB CI Class Models plugin (Version 1.28.0 or later)
◦ Discovery and Service Mapping Patterns plugin (Version 1.0.81 or later)
• Set Basic Auth credentials for the InfiniBox storage system
• Set a credential alias and associate it with the InfiniBox system credential record.
• Set discovery schedule type to Serverless.
• Make sure that the MID server has access to the target device.
Authentication
Configure the credentials of the Basic Auth type for authenticating the REST API
calls. They are used for discovery of the CI types associated with the InfiniBox
Storage system.​
1. Navigate to Connections & Credential Aliases.
2. Create a new Credential record.
3. Create a new Basic Auth credential record from the Credentials related list form.
Configure the Basic Auth parameters:
Connection & Credential Aliases

Configure the credentials of the Basic Auth type and the credential Alias associated with the
credential record.
You can make the same configuration from the credential record form where you previously
created the Credential alias. Associate the Connections and Credential Alias records
respectively.
Basic Auth Credentials

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1973


<!-- page 1974 -->
Discovery schedule
1. Create the Discovery schedule with the Serverless Discovery type.

2. For the Discovery schedule with the Discover type of Serverless, configure the
InfiniBox Storage System LP pattern within the Serverless Execution Patterns tab.
3. Set the Run Child Patterns to True.
This enables the system to trigger all the patterns associated Child Patterns with
the InfiniBox Storage System (LP). This is necessary due to the Large Payload (LP)
mechanism. This is used for the discovery of the InfiniBox storage system and all
the corresponding CI types.

Apply the values for ip_address and credential_alias from the Serverless Execution Pattern
related section. These serve as input parameters for triggering the discovery schedule and the
associated InfiniBox discovery pattern.
Apply the IP Address of the InfiniBox system and the ID of the previously created Connections &
Credential Aliases record. These are related to the InfiniBox credential Basic Auth type record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1974


<!-- page 1975 -->
Serverless Execution Pattern

Data collected by Discovery during horizontal discovery
Storage Server [cmdb_ci_storage_server]
Field

Description

ip_address

The IP address of the InfiniBox system.

name

The name of the InfiniBox system.

os_version

The current version of the InfiniBox system.

model_id

The model ID of the InfiniBox system.

manufacturer

The product name of the InfiniBox system.

serial_number

The serial number of the InfiniBox system.

operational_status

The operational state of the InfiniBox system.

physical_capacity

The total physical capacity of the InfiniBox
system in gigabytes.

virtual_capacity

The total virtual capacity of the InfiniBox
system in gigabytes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1975


<!-- page 1976 -->
Storage Server View Map

Disk [cmdb_ci_disk]
Field

Description

device id

The ID of the physical disk device,
combination of NODE_ID@DISK_ID.

name

The name of physical disk
device, combination of
INFINIBOX_NAME:NODE_ID@DISK_ID

drive_type

The drive type of the physical disk device.

model_id

The model ID of the physical disk device.

manufacturer

The vendor of the physical disk device.

operational_status

The operational state of the physical disk
device.

serial_number

The serial number of the physical disk device.

computer

Reference to any of the physical nodes part of
the InfiniBox system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1976


<!-- page 1977 -->
Fibre Channel Port [cmdb_ci_fc_port]
Field

Description

wwpn

The world wide port name of fibre channel
port.

name

The name of fibre channel port (wwpn).

speed

The speed value of the fibre channel port in
gigabits per second, if applied.

wwnn

The world wide node name of fibre channel
port.

port_role

The role of fibre channel port.

state

The state of fibre channel port.

link_state

The state of the connectivity of fibre channel
port.

manufacturer

The vendor of the fibre channel port.

model_id

The model ID of the of fibre channel port.

computer

The reference to any of the physical nodes
part of the InfiniBox system.

Fibre channel view map

Storage Switch [cmdb_ci_storage_switch]
Field

object_id
name

Description

The ID of the storage switch.
The name of storage switch, combination of
id:SWITCH_ID@SWITCH_NAME.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1977


<!-- page 1978 -->
Storage Switch [cmdb_ci_storage_switch] (continued)
Field

Description

wwnn

The world wide node name of the storage
switch.

manufacturer

The vendor of the storage switch.

Storage Switch View Map

Network Adapter [cmdb_ci_network_adapter]
Field

Description

mac_address

The ethernet address of the network adapter.

name

The ethernet name of the network adapter.

operational_status

The ethernet link state of the network adapter.

manufacturer

The ethernet vendor of the network adapter.

model_id

The ethernet model ID of the network adapter.

ip_address

The IPv4 IP address associated with the
ethernet network adapter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1978


<!-- page 1979 -->
Network Adapter View Map

IP Address [cmdb_ci_ip_address]
Field

Description

netmask

The netmask associated with the InfiniBox
storage system.

name

The IPv4 IP address of any of the InfiniBox
nodes or the InfiniBox storage system.

ip_address

The IPv4 IP address of any of the InfiniBox
nodes.

Storage Node Element [cmdb_ci_storage_node_element]
Field

Description

object_id

The name of the InfiniBox Storage Node,
combination of id:NODE_ID@NODE_NAME.

name

The name of the InfiniBox
Storage Node, combination of
INFINIBOX_NAME@NODE_NAME.

node_state

The operational state of the InfiniBox Storage
Node.

manufacturer

The vendor of the InfiniBox Storage Node.

model_id

The model of the InfiniBox Storage Node.

ip_address

The IPv4 IP address assigned to the InfiniBox
Storage Node.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1979


<!-- page 1980 -->
Storage Node Element View Map

Serial Number [cmdb_serial_number]
Field

Description

serial_number

The serial number associated to the InfiniBox
storage system.

serial_number_type

The serial number type of the InfiniBox storage
system.

valid

The serial number valid type of the InfiniBox
storage system.

Storage Volume [cmdb_ci_storage_volume]
Field

Description

object_id

The ID of the storage volume, combination of
id:VOLUME_ID@VOLUME_NAME.

volume_id

The ID of the storage volume, combination of
id:VOLUME_ID@VOLUME_NAME.

name

The name of the storage volume.

storage_type

The role of the storage volume.

size_bytes

The total size of the storage volume in bytes.

serial_number

The serial number of the storage volume.

pool_id

The ID of the pool to which the storage volume
is associated.

state

The lock state of the storage volume.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1980


<!-- page 1981 -->
Storage Volume [cmdb_ci_storage_volume] (continued)
Field

Description

provisioning_type

The type of provisioning of the storage volume.

size

The total size of the storage volume in
gigabytes

provided_by

The reference to the storage pool, to which the
storage volume is associated.

Storage Volume View Map

Storage Volume Snapshot [cmdb_ci_storage_vol_snapshot]
Field

Description

object_id

The ID of the storage volume
snapshot, combination of
id:VOLUME_ID@VOLUME_NAME.

storage_server

The name of InfiniBox system, to which the
volume snapshot is associated.

name

The name of the storage volume snapshot.

size_bytes

The total size of the storage volume snapshot
in bytes.

size

The total size of the storage volume snapshot
in gigabytes.

serial_number

The serial number of the storage volume
snapshot.

pool_id

The ID of the pool, to which the storage
volume snapshot is associated.

parent_id

The ID of the storage volume, parent of the
storage volume snapshot.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1981


<!-- page 1982 -->
Storage Volume Snapshot [cmdb_ci_storage_vol_snapshot] (continued)
Field

Description

state

The lock state of the storage volume snapshot.

provisioning_type

The type of provisioning of the storage volume
snapshot.

provided_by

The reference to the storage pool, to which the
storage volume is associated.

Storage Volume Snapshot

Storage Pool [cmdb_ci_storage_pool]
Field

Description

object_id

The ID of the storage volume, combination of
id:POOL_ID@POOL_NAME.

name

The name of the storage pool.

physical_capacity

The total physical capacity of the storage pool
in gigabytes.

virtual_capacity

The total virtual capacity of the storage pool in
gigabytes.

free_phys_capacity

The available physical capacity of the storage
pool in gigabytes.

free_virt_capacity

The available virtual capacity of the storage
pool in gigabytes.

num_vols

The number of the volumes participating into
the storage pool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1982


<!-- page 1983 -->
Storage Pool [cmdb_ci_storage_pool] (continued)
Field

Description

num_file_sys

The number of the file systems participating
into the storage pool.

num_file_sys_snap

The number of the file system snapshots
participating into the storage pool.

num_vol_snap

The number of the volume snapshots
participating into the storage pool.

pool_id

The ID of the storage pool.

pool_state

The state of the storage pool.

Storage Pool View Map

File System [cmdb_ci_file_system]
Field

Description

object_id

The ID of the primary file system, combination
of id:FILE_SYSTEM_ID.

server_name

The name of InfiniBox system, to which the
primary file system is associated.

name

The name of the primary
file system, combination of
id:FILE_SYSTEM_ID@FILE_SYSTEM_NAME.

size_bytes

The total size of the primary file system in
bytes.

size

The total size of the primary file system in
gigabytes.

free_space_bytes

The free space of the primary file system in
bytes.

serial_number

The serial number of the primary file system.

storage_type

The type of the primary file system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1983


<!-- page 1984 -->
File System [cmdb_ci_file_system] (continued)
Field

Description

pool_id

The ID of the pool, to which the primary file
system is associated.

provisioning_type

The type of provisioning of the primary file
system.

provided_by

The reference to the storage pool, to which the
primary file system is associated.

File System View Map

File System Snapshot [cmdb_ci_file_system_snapshot]
Field

Description

object_id

The ID of the snapshot file
system, combination of
id:FILE_SYSTEM_ID@FILE_SYSTEM_NAME.

volume_id

The ID of the snapshot file
system, combination of
id:FILE_SYSTEM_ID@FILE_SYSTEM_NAME.

server_name

The name of InfiniBox system, to which the
snapshot file system is associated.

name

The name of the snapshot file system.

size_bytes

The total size of the snapshot file system in
bytes.

free_space_bytes

The free space of the snapshot file system in
bytes.

serial_number

The serial number of the snapshot file system.

storage_type

The type of the snapshot file system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1984


<!-- page 1985 -->
File System Snapshot [cmdb_ci_file_system_snapshot] (continued)
Field

Description

pool_id

The ID of the pool, to which the snapshot file
system is associated.

parent_id

The ID of the primary file system, to which the
snapshot file system is associated.

provisioning_type

The type of provisioning of the snapshot file
system.

File System Snapshot View Map

Storage File Share [cmdb_ci_storage_fileshare]
Field

Description

path

The export path of the InfiniBox export entity.

name

The name of the InfiniBox
export entity, combination of
id:EXPORT_ID@EXPORT_PATH.

fileshare_id

The ID of the export entity in the context of the
InfiniBox system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1985


<!-- page 1986 -->
Export View Map

InfiniBox Primary Consistency Group [cmdb_ci_infinibox_cg]
Field

Description

object_id

TheID of the primary InfiniBox
consistency group, combination
of id:CONSISTENCY_GROUP_ID@
CONSISTENCY_GROUP_NAME.

created_time

The creation time of the primary InfiniBox
consistency group in format YY-MM-DD
HH:mm::SS.

updated_time

The updated time of the primary InfiniBox
consistency group in the format YY-MM-DD
HH:mm::SS.

name

The name of the primary InfiniBox consistency
group.

type

The type of the primary InfiniBox consistency
group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1986


<!-- page 1987 -->
InfiniBox Primary Consistency Group [cmdb_ci_infinibox_cg] (continued)
Field

Description

members_count

The count of the entities participating in the
primary InfiniBox consistency group.

pool_id

The ID of the pool, to which the primary
InfiniBox consistency group is associated.

lock_state

The lock state of the primary InfiniBox
consistency group.

Primary Consistency Group View Map

InfiniBox Snapshot Consistency Group[cmdb_ci_infinibox_snapshot_cg]
Field

Description

object_id

The ID of the snapshot InfiniBox
consistency group, combination
of id:CONSISTENCY_GROUP_ID@
CONSISTENCY_GROUP_NAME.

created_time

The creation time of the snapshot InfiniBox
consistency group in format YY-MM-DD
HH:mm::SS.

updated_time

The updated time of the snapshot InfiniBox
consistency group in format YY-MM-DD
HH:mm::SS.

name

The name of the snapshot InfiniBox
consistency group.

type

The type of the snapshot InfiniBox
consistency group.

members_count

The number of entities participating in the
snapshot InfiniBox consistency group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1987


<!-- page 1988 -->
InfiniBox Snapshot Consistency Group[cmdb_ci_infinibox_snapshot_cg] (continued)
Field

Description

pool_id

The ID of the pool, to which the snapshot
InfiniBox consistency group is associated.

lock_state

The lock state of the snapshot InfiniBox
consistency group.

Snapshot Consistency Group View Map

InfiniBox Link [cmdb_ci_infinibox_link]
Field

Description

object_id

The ID of the InfiniBox link.

name

The name of the InfiniBox link.

remote_version

The version of the remote InfiniBox storage
system.

remote_host

The host name or IP address of the remote
InfiniBox storage system.

remote_ip

The IP address of the remote InfiniBox storage
system.

remote_link_id

The link ID of the remote InfiniBox storage
system.

remote_serial_number

The serial number of the remote InfiniBox
storage system.

remote_sys_name

The system name of the remote InfiniBox
storage system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1988


<!-- page 1989 -->
InfiniBox Link [cmdb_ci_infinibox_link] (continued)
Field

Description

link_state

The state of the link between the InfiniBox
storage systems.

link_config_id

The link configuration ID of the remote
InfiniBox storage system in GUID format.

link_mode

The mode of the link between the InfiniBox
storage systems.​

resiliency_mode

The resiliency mode between the InfiniBox
storage systems.​

local_witness_state

The local witness state of the InfiniBox storage
system.​

witness_address

The local witness address of the InfiniBox
storage system, if assigned.​

last_connection_time

The time stamp of the established connection
between the Infinibox storage systems in
format YY-MM-DD HH:MM::SS.​

local_replica_net_space_id

The local replica network space ID of the
Infinibox storage system.​

link_replication_type

The replication type of the link between the
Infinibox storage systems.​

Link View Map

InfiniBox Replica [cmdb_ci_infinibox_replica]
Field

Description

object_id

The ID of the InfiniBox replica, combination of
LOCAL_ENTITY_NAME@REMOTE_ENTITY_NAME@replica:REPLICA_ID.

name

The ID of the InfiniBox replica, combination of
LOCAL_ENTITY_NAME@REMOTE_ENTITY_NAME@replica:REPLICA_ID.

replica_role

The role of the InfiniBox storage system replica.

entity_type

The type of the entity replicated in the context of the InfiniBox
storage system.

replica_state

The state of the replica in the context of the InfiniBox storage
system

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1989


<!-- page 1990 -->
InfiniBox Replica [cmdb_ci_infinibox_replica] (continued)
Field

Description

replication_type

The type of the replication of the context of the InfiniBox storage
system, if applied.

sync_state

The synchronization state of the InfiniBox storage system
replica.

link_id

The ID of the link associated to the replica in the context of the
InfiniBox storage system.

entity_id

The ID of the replicated entity in the context of the InfiniBox
storage system.​

remote_entity_id

The ID of the remote replicated entity of the InfiniBox storage
system.​

entity_name

The name of the local replicated entity in the context of the
InfiniBox storage system.​

remote_entity_name

The name of the remote replicated entity in the context of the
InfiniBox storage system.

dataset_type

The local dataset type in the context of the InfiniBox storage
system.​

Replica View Map

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1990


<!-- page 1991 -->
CI Relationships
Relationships created by the InfiniBox Storage System (LP) pattern
CI

Relationship

CI

cmdb_ci_storage_server

"Contains :: Contained by"

cmdb_ci_storage_switch

cmdb_ci_fc_port

“Connects to :: Connected by” cmdb_ci_storage_switch​

cmdb_ci_storage_server

“Uses :: Used by”

cmdb_ci_network_adapter​

cmdb_ci_storage_node_element“Owns :: Owned by”

cmdb_ci_network_adapter​

cmdb_ci_ip_address

cmdb_ci_network_adapter​

“reference by column name
nic”

cmdb_ci_storage_node_element“Owns :: Owned by”

cmdb_ci_fc_port​

cmdb_ci_storage_server

“Owns :: Owned by”

cmdb_ci_ip_address​

cmdb_ci_storage_node_element“Owns :: Owned by”

cmdb_ci_ip_address

cmdb_ci_storage_node_element“Contains :: Contained by”

cmdb_ci_disk​

cmdb_serial_number

“reference”

cmdb_ci_storage_server​

cmdb_ci_storage_server

“Allocated to :: Allocated from” cmdb_ci_storage_node_element​

Relationships created by the InfiniBox Storage Volume (LP) pattern
CI

Relations

CI

cmdb_ci_storage_volume

“Provisioned From ::
Provisioned”

cmdb_ci_storage_vol_snapshot

cmdb_ci_storage_pool

“reference by column name
provided by”

cmdb_ci_storage_volume

cmdb_ci_storage_server

"Contains :: Contained by and
reference by column name
computer”

cmdb_ci_storage_volume

cmdb_ci_storage_server

“Contains :: Contained by”

cmdb_ci_storage_vol_snapshot

cmdb_ci_infinibox_cg

“Contains :: Contained by”

cmdb_ci_storage_volume

cmdb_ci_infinibox_snapshot_cg“Contains :: Contained by”

cmdb_ci_storage_vol_snapshot

Relationship created by the InfiniBox Storage Pool (LP) pattern
CI

Relations

CI

cmdb_ci_storage_server

“Contains :: Contained by”

cmdb_ci_storage_pool

Relationship created by the InfiniBox Storage Export (LP) pattern
CI

Relations

CI

cmdb_ci_storage_fileshare

“Provided By :: Provides”

cmdb_ci_storage_server

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1991


<!-- page 1992 -->
Relationships created by the InfiniBox Storage File System (LP) pattern
CI

Relations

CI

cmdb_ci_storage_server

“Contains :: Contained by”

cmdb_ci_file_system

cmdb_ci_storage_server

“Contains :: Contained by”

cmdb_ci_file_system_snapshot

cmdb_ci_file_system

“Provided By :: Provides”

cmdb_ci_storage_pool

cmdb_ci_file_system_snapshot “Provided By :: Provides”

cmdb_ci_storage_pool

cmdb_ci_file_system

“Provisioned From ::
Provisioned”

cmdb_ci_file_system_snapshot

cmdb_ci_file_system

“Provided By :: Provides”

cmdb_ci_storage_fileshare

cmdb_ci_file_system_snapshot “Provided By :: Provides”

cmdb_ci_storage_fileshare

Relationships created by the InfiniBox Storage Consistency Group (LP) pattern
CI

Relations

CI

cmdb_ci_storage_server

“Contains :: Contained by”

cmdb_ci_infinibox_cg

cmdb_ci_infinibox_cg

“Provisioned From ::
Provisioned”

cmdb_ci_infinibox_snapshot_cg

cmdb_ci_storage_server

“Contains :: Contained by”

cmdb_ci_infinibox_snapshot_cg

cmdb_ci_infinibox_cg

“Contains :: Contained by”

cmdb_ci_storage_pool

cmdb_ci_infinibox_snapshot_cg“Contains :: Contained by”

cmdb_ci_storage_pool

Relationships created by the InfiniBox Storage Replica (LP) pattern
CI

Relations

CI

cmdb_ci_storage_server

“Contains :: Contained by”

cmdb_ci_infinibox_replica

cmdb_ci_infinibox_replica

“Replicates to :: Replicated
by”

cmdb_ci_infinibox_cg

cmdb_ci_infinibox_replica

“Uses :: Used by”

cmdb_ci_infinibox_link

cmdb_ci_infinibox_replica

“Replicates to :: Replicated
by”

cmdb_ci_storage_volume

cmdb_ci_infinibox_replica

“Replicates to :: Replicated
by”

cmdb_ci_file_system

Relationship created by the InfiniBox Storage Link (LP) pattern
CI

Relations

CI

cmdb_ci_storage_server

“Contains :: Contained by”

cmdb_ci_infinibox_link

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1992


<!-- page 1993 -->
Infinibox Class Model

Next-Generation Juniper Network Firewall discovery
The ServiceNow Discovery application uses the Next-Generation Juniper Network Firewall
discovery pattern to find Juniper network firewalls. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.
The discovery pattern uses a set of SNMP calls to find the Juniper network firewalls. Discovery
uses the pattern to run horizontal discovery.
®

You can use this pattern on the ServiceNow AI Platform using the Madrid release or later.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
• Ensure that your network firewall device has SNMP access.
• On the ServiceNow instance, configure SNMP credentials.
• Add the SNMP system OID record for the Juniper device to the ServiceNow instance. Update
the following:
◦ Classifier: Juniper Firewall
◦ Class: Juniper Firewall Device
Deploy the pattern as follows:
1. Download and install the CMDB CI Class Models: Release 1.10.0 from the ServiceNow Store.
The app adds the new CMDB classes required for network firewall discovery. For more
information, see Firewall extension classes .
2. Download and install the discovery pattern from the ServiceNow Store.
3. Sync the pattern with the appropriate MID Server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1993


<!-- page 1994 -->
Data collected by Discovery during horizontal discovery
The discovered data includes the following tables and fields.

Table and field

Description

IP Firewall [cmdb_ci_ip_firewall] - Contains all network firewalls.
Name [name]

Hostname.

Serial Number [serial_number]

Device serial number.

Operational Status [operational_status]

Indicates if the device is in active state.

IP address [ip_address]

IP address.

Manufacturer [manufacturer]

Device manufacturer.

Description [short_description]

Short description.

Model Number [model_number]

Device model number.

Firmware [firmware_version]

Firmware version.

Hardware Operating System [hardware_os]

OS running on the hardware.

Hardware OS Version [hardware_os_version]

OS version running on the hardware.

Firewall Device [cmdb_ci_firewall_device] - Abstract class for vendor-specific firewalls.
Name [name]

Hostname.

Serial Number [serial_number]

Serial number of the device.

Fully qualified domain name [fqdn]

Fully qualified domain name.

Operational Status [operational_status]

Indicates if the device is in active state.

IP address [ip_address]

IP address.

Manufacturer [manufacturer]

Device manufacturer.

Description [short_description]

Short description.

Model Number [model_number]

Device model number.

Firmware [firmware_version]

Firmware version.

Hardware Operating System [hardware_os]

OS running on the hardware.

Hardware OS Version [hardware_os_version]

OS version running on the hardware.

Juniper Firewall Device [cmdb_ci_firewall_device_juniper] - Contains physical Juniper firewalls.
Name [name]

Hostname.

Serial Number [serial_number]

Serial number of the device.

Fully qualified domain name [fqdn]

Fully qualified domain name.

Operational Status [operational_status]

Indicates if the device is in active state.

IP address [ip_address]

IP address.

Manufacturer [manufacturer]

Device manufacturer.

Description [short_description]

Short description.

Model Number [model_number]

Device model number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1994


<!-- page 1995 -->
Table and field

Description

Firmware [firmware_version]

Firmware version.

Hardware Operating System [hardware_os]

OS running on the hardware.

Hardware OS Version [hardware_os_version]

OS version running on the hardware.

Firewall Cluster [cmdb_ci_firewall_cluster] - Abstract class for a vendor-specific firewall cluster.
Name [name]

Hostname.

Fully qualified domain name [fqdn]

Fully qualified domain name.

IP address [ip_address]

IP address.

Manufacturer [manufacturer]

Device manufacturer.

Description [short_description]

Short description.

Model Number [model_number]

Device model number.

Hardware Operating System [hardware_os]

OS running on the hardware.

Hardware OS Version [hardware_os_version]

OS version running on the hardware.

Juniper Firewall Cluster [cmdb_ci_firewall_cluster_juniper] - Contains Juniper firewall cluster.
Name [name]

Hostname.

Fully qualified domain name [fqdn]

Fully qualified domain name.

IP address [ip_address]

IP address.

Manufacturer [manufacturer]

Device manufacturer.

Description [short_description]

Short description.

Model Number [model_number]

Device model number.

Hardware Operating System [hardware_os]

OS running on the hardware.

Hardware OS Version [hardware_os_version]

OS version running on the hardware.

The Dependency Views map on the Juniper Firewall Device CI shows the Juniper Firewall Cluster
to which it belongs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1995


<!-- page 1996 -->
CI relationships
These relationships are created to support Juniper network firewall discovery:

CI

Relationship

CI

Firewall Cluster
[cmdb_ci_firewall_cluster]

Extends from

Cluster [cmdb_ci_cluster]

Juniper Firewall Cluster
Extends from
[cmdb_ci_firewall_cluster_juniper]

Firewall Cluster
[cmdb_ci_firewall_cluster]

Firewall Device
[cmdb_ci_firewall_device]

Hosted::Hosted on

Juniper Firewall Device
[cmdb_ci_firewall_device_juniper]

Extends from

IP Firewall
[cmdb_ci_ip_firewall]

Contains::Contained by

Firewall Security Policy
[cmdb_ci_firewall_security_policy]

Juniper Firewall Device
Extends from
[cmdb_ci_firewall_device_juniper]

Firewall Device
[cmdb_ci_firewall_device]

Firewall Device Group
Extends from
[cmdb_ci_firewall_device_group]
Members::Member Of

CMDB CI [cmdb_ci]

Firewall Manager
[cmdb_ci_firewall_manager]

Firewall Device
[cmdb_ci_firewall_device]

Contains::Contained by

Firewall Security Policy
[cmdb_ci_firewall_security_policy]

Extends from

CMDB CI [cmdb_ci]

Manages::Managed by

Firewall Device
[cmdb_ci_firewall_device]

Contains::Contained by

Firewall Security Policy
[cmdb_ci_firewall_security_policy]

Firewall Security Policy
Extends from
[cmdb_ci_firewall_security_policy]

CMDB CI [cmdb_ci]

Linux Pacemaker Cluster discovery
The ServiceNow Discovery application uses the Linux Pacemaker Cluster discovery pattern
to find high-availability cluster data and populate the CMDB with the discovered information.
Discovering some of these resources may require updating to the latest version of the Discovery
and Service Mapping Patterns application from the ServiceNow Store.
This pattern is an extension section of the Linux Server pattern. Discovery uses the pattern to run
horizontal discovery.
®

You can use this pattern on the ServiceNow AI Platform using the Madrid release or later.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1996


<!-- page 1997 -->
Prerequisites
• Configure SSH credentials

for the Linux server.

• Provide a user with permissions to read the following files:
◦ /etc/hosts
◦ /etc/corosync/corosync.conf
◦ /var/lib/heartbeat/crm/cib.xml, or /var/lib/pacemaker/cib/cib.xml
from Linux SP3
• Provide a user with permissions to run the following commands:
ps -ef | grep corosync | grep -v grep
ps -ef | grep pacemaker | grep -v grep
ifconfig | grep 'inet addr:' |awk '{print $1, $2 }'
hostname -s
hostname -f

Data collected by Discovery during horizontal discovery
The discovered data includes the following tables and fields.

Table and field

Description

Main CI - UNIX Cluster [cmdb_ci_unix_cluster]
name

Cluster name.

cluster_id

Cluster ID. Contains the nodes ID.

cluster_type

Cluster type.

cluster_status

Cluster status: Online/offline.

cluster_version

Cluster version.

UNIX Cluster Resource [cmdb_ci_unix_cluster_resource]
name

Resource name.

resource_type

Resource type.

resource_status

Resource status. For example, Started.

ip_address

IP address of the machine where the resource
is running.

fqdn

FQDN of the machine where the resource is
running.

Cluster Virtual IP [cmdb_ci_cluster_vip]
name

Cluster VIP name.

ip_address

IP address of the VIP.

Cluster Resource Group [cmdb_ci_cluster_resource_group]
name

Resource group name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1997


<!-- page 1998 -->
Table and field

Description

node

Resource group node.

resource_group_status

Resource group status.

server

Resource group server.

fqdn

FQDN of the machine where the resource
group is running.

UNIX Cluster Node [cmdb_ci_unix_cluster_node]
name

Node name and node ID.

node_status

Node status.

node_state

Node state.

fqdn

FQDN of the machine where the node is
running.

The Dependency Views map shows discovered load balancer CIs and the relationships between
them.

CI relationships
These relationships are created to support Linux Pacemaker Cluster discovery:

CI

Relationship

CI

cmdb_ci_unix_cluster

Hosts::Hosted on

cmdb_ci_linux_server

cmdb_ci_unix_cluster_node

Hosted on::Hosts

cmdb_ci_linux_server

Cluster of::Cluster

cmdb_ci_unix_cluster

Uses::Used by

cmdb_ci_unix_cluster_node

cmdb_ci_cluster_vip

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1998


<!-- page 1999 -->
CI

Relationship

CI

Virtualized by::Virtualized

cmdb_ci_unix_cluster

cmdb_ci_unix_cluster_resource Defines resources for::Gets
resources from
Defines resources for::Gets
resources from
cmdb_ci_cluster_resource_groupContains::Contained by

cmdb_ci_unix_cluster
cmdb_ci_unix_cluster_node
cmdb_ci_unix_cluster

Contains::Contained by

cmdb_ci_unix_cluster_node

Contains::Contained by

cmdb_ci_unix_cluster_resource

Microsoft Certificate Authority (CA) certificates discovery
The ServiceNow Discovery application can discover Microsoft Certificate Authority (CA)
certificates using the Microsoft CA - Certificate Management pattern. Discovering some of these
resources may require updating to the latest version of the Discovery and Service Mapping
Patterns application from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Starting with version 1.27.0, Discovery and Service Mapping Patterns supports discovering
the subject alternative name (SAN) for both the all request IDs and the template ID discovery
methods.

Prerequisites
Verify the following applications are up to date
• Discovery and Service Mapping Patterns
• CMDB CI Class Models
Verify the certificate Authority process
Ensure that the CA process is up and running on the host machine.
Verify previous Windows discovery
Verify a Windows host was discovered during a previous horizontal discovery. For
more information, see Windows discovery.
Create a serverless discovery schedule
Create a discovery schedule to perform targeted discovery of Microsoft CA
certificates using the host on which the CA process is running. For more
information, see Create a serverless schedule for Microsoft Certificate Authority
(CA) discovery.

Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Microsoft CA - Certificate
Management pattern.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1999


<!-- page 2000 -->
Unique Certificate [cmdb_ci_certificate]
Field

Description

Fingerprint [fingerprint]

Hash value of the certificate.

Fingerprint algorithm
[fingerprint_algorithm]

Algorithm used to hash the certificate.

Subject common name
[subject_common_name]

Identifies the host name/domain associated with the
certificate, listed in the certificate's Subject​ field.

Subject distinguished name
Identifying information of the subject listed in the certificate's
[subject_distinguished_name] Subject​ field.​
Issuer distinguished name
[issuer_distinguished_name]

Distinguished name of the issuer.

Comments [comments]

Includes a readable description for users.

Renewal tracking
[renewal_tracking]

Indicates whether to create any priority 1 or priority 3 tasks for
the expiring certificates.​

Certificate Template
[cert_template]

Certificate template that defines the policies and rules that a
CA uses when a request for a certificate is received.

Certificate ThumbPrint
[thumb_print]​

Unique identifier for certificates in applications when making
trust decisions, in configuration files, and when displayed in
interfaces.

Issuer common name
[issuer_common_name]

Common name of the issuer.

Valid from [valid_from]

Validity start period of the certificate.

Serial Number
[serial_number]

Serial number of the certificate.

Subject country
[subject_country]

Two-letter country code in the certificate's Subject​ field.

Subject organization
[subject_organization]

Organization listed in the certificate's Subject​ field.

Issuer [issuer]

Entity that signed and issued the certificate.​

Subject organizational unit
[subject_organizational_unit]

Organizational unit listed in the certificate's Subject​ field..​

Subject alternative name
[subject_alternative_name]

List of fully qualified domain names secured by the certificate,
listed in the certificate's Subject​ field.

Valid to [valid_to]

Validity end period of the certificate.

Name [name]

Name of the CI.

State [state]

Life-cycle state of the certificate.
For example: Installed, Issued, or Revoked.

Root issuer [root_issuer]

Root entity that signed and issued the immediate certificate.

Subject locality
[subject_locality]

Locality listed in the certificate's Subject​ field.

Subject state [subject_state]

State listed in the certificate's Subject​ field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2000


<!-- page 2001 -->
Unique Certificate [cmdb_ci_certificate] (continued)
Field

Description

Operational status
[operational_status]

Indicates whether the certificate is valid or was revoked.
Possible values are:
• Operational: Valid certificate
• Non-Operational: Revoked certificate

Signature algorithm
[signature_algorithm]

Signature algorithm of the certificate.

Request Type [request_type]

Format used for requesting the certificate.

Request Submission Date
[request_submission_date]

Date that the certificate request was submitted.

Request Resolution Date
[request_resolution_date]

Date that the certificate request was resolved by the CA.

Request Revocation Date
[request_revocation_date]

Date that the certificate was revoked. This field is populated
only for revoked certificates.

Effective Revocation Date
[effective_revocation_date]

Date that the certificate was effectively revoked by being
added to the Certificate Revocation List (CRL). This field is
populated only for revoked certificates.

Revocation Reason
[revocation_reason]

Reason for the certificate’s revocation. This field is populated
only for revoked certificates.

Requester Name
[requester_name]

Name of the person who requested the certificate.

Template Enrollment Flags
[template_enrollment_flags]

Information about the certificate that needs to be acted on by
the CA or the certificate’s owner. For more information, search
for the error code in the official Microsoft documentation site .

For example: SHA-256, sha256RSA, or SHA1withRSA.

CI relationships
The Microsoft CA - Certificate Management pattern doesn’t create any CI relationships.
Create a serverless schedule for Microsoft Certificate Authority (CA) discovery
Create a serverless discovery schedule to discover Microsoft Certificate Authority (CA)
certificates.

Before you begin
• Verify that the CA process is up and running on the host machine.
• Verify that a Windows host was discovered during a previous horizontal discovery. For more
information, see Windows discovery.
Role required: discovery_admin

Procedure
1. Navigate to All > Discovery > Discovery Schedules.
2. Create the discovery schedule record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2001


<!-- page 2002 -->
a. Select New.
b. On the form, fill in the fields.
Discovery Schedule New record form
Field

Description

Name

Unique name for this discovery schedule.
For example: Discover MS CA.

Discover

Scan type, which should be Certificates.

Certificate Discovery Type

Certificate type, which should be CA Trust Discovery.

MID server

Name of the MID Server to use for this schedule.

Active

Enables this schedule for discovery.

c. Select Submit.
3. Create the execution pattern.
a. In the Discovery Schedules page, select the record you created.
b. In the Serverless Execution Patterns tab, select New.
Discovery uses each execution pattern to discover up to 20,000 certificates. For
deployments using more than 20,000 certificates, create several execution patterns.
c. On the form, fill in the fields.
Serverless Execution Pattern New record form
Field

Description

Name

Descriptive name for this record.
For example: Discover MS CA.

Pattern Pattern to be used for this schedule, which should be the Microsoft CA Certificate Management pattern.
Proxy
Host

CI name of the Windows host running the Microsoft CA Service, discovered in a
previous discovery and populated in the CMDB.

Active

Option to enable this schedule for discovery.

d. Select Submit.
4. Set the pattern launcher parameters.
a. In the Discovery Pattern Launcher Parameters tab, select the record you created.
b. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2002


<!-- page 2003 -->
Parameter

Description

template_list

Determines whether to search on all the request IDs or a
template ID to discover certificates.
▪ all: Restricts discovery to all certificate request IDs
in ascending order either based on the default
execution pattern limitation of 20,000 or values set in
start_offset or limit.
▪ Template ID: Searches for certificates only in the specific
template ID.

start_offset

This optional parameter specifies the number of the
certificate from which to start discovery and is relevant only
when template_list is set to all and for deployments
with over 20,000 certificates.
If you create multiple serverless execution patterns for
deployments with over 20,000 certificates, use 1 for the first
execution, 20001 for the second, and so on.
If this parameter remains empty, start_offset defaults to
1.

limit

This optional parameter limits the certificate discovery to the
specified value and is relevant only when template_list
is set to all.
If the parameter remains empty, the limit defaults to 20,000
certificates.

ip

IP of the server on which the CA process (certsrv) is running.

discover_SAN_for_template When set to true, this optional parameter enables the
discovery of the subject alternative name (SAN) of
the certificates when a template ID is provided in the
template_list parameter.
This parameter executes separate commands for each
certificate within the template ID, which could impact
performance.
When searching on all request IDs, SAN is automatically
discovered, so this parameter should remain empty.
c. Select Submit.

What to do next

Either execute discovery immediately by selecting Discover now or wait until the predefined
schedule triggers the discovery.
Related topics
Microsoft Certificate Authority (CA) certificates discovery

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2003


<!-- page 2004 -->
NetApp SolidFire storage system discovery
ServiceNow Discovery uses the NetApp SolidFire storage system discovery pattern to find
clusters and nodes on the SolidFire storage system. Discovering some of these resources may
require updating to the latest version of the Discovery and Service Mapping Patterns application
from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Prerequisites
Discovery and Service Mapping Patterns store app
Verify the Discovery and Service Mapping Patterns store app (version 1.0.74) is
installed.
Basic Auth permissions
Ensure Basic Auth credentials are configured for authenticating the Element
API calls. Save the following SolidFire Cluster Admin credentials as Basic Auth
credentials to ensure proper access:
• read
• clusterAdmins
• reporting
• drives
MID server
Ensure the MID server can access the target device.
Discovery credentials
Ensure you have the credentials for running Discovery on the host machine running
the SolidFire storage system.
Create a serverless discovery schedule
Create a discovery schedule to perform targeted discovery of SolidFire clusters and
nodes.
1. Navigate to Discovery > Discovery Schedules.
2. Click New and then fill in the form.
Discovery Schedule form
Field

Description

Name

Name for the Discovery schedule. For
example, Discover SolidFire.

Discover

Discover type.
Select Serverless.

MID Server

Name of the MID Server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2004


<!-- page 2005 -->
Field

Description

Active

Option for enabling this schedule for
discovery. Select this check box to enable
discovery.

3. Right-click the header of the Discovery Schedule form and select Save.
4. Click the Serverless Execution Patterns tab, click New, and then fill in the form.

Serverless Execution Pattern form
Field

Description

Name

Name for this Serverless Execution
Pattern. For example, SolidFire
Storage Pattern.

Pattern

Name of the pattern to run: NetApp
SolidFire Storage System.

Proxy Host

Fully qualified domain name of the
machine on which you are installing
the proxy server. Specify Global.

Active

Option for enabling this schedule for
discovery. Select this check box to
enable discovery.

5. Under Discovery Pattern Launcher Parameters, configure the launch parameters
with the relevant values. Ensure the Management IP of the cluster and
Credentials Alias are defined.

Data collected by Discovery during horizontal discovery
The discovered SolidFire configuration data includes the following tables and fields.

Table and field

Description

Main Configuration Item [cmdb_ci_storage_server]​
name

The name of the CI.

serial_number​

The serial number associated with the CI.

firmware_version

The firmware version of the CI.

ip_address

The IP address of the CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2005


<!-- page 2006 -->
Table and field

Description

short_description

A short textual description of the CI.

manufacturer

The device manufacturer.

model_id

The device model ID.

os_version

The version of the OS running on the CI.

os

The OS running on the CI.

Storage cluster [cmdb_ci_storage_cluster]​
ip_address

The IP address of the storage cluster.

manufacturer

The device manufacturer.

short_description

A short textual description of the CI.

cluster_version​

Element OS API version running on the cluster.

name

The name of the CI.

Storage cluster node [cmdb_ci_storage_cluster_node]
name

The name of the CI.

operational_status

Indicates if the device is in active state.

cluster

Reference for the cluster CI.

Storage node element [cmdb_ci_storage_node_element]
short_description

A short textual description of the CI.

manufacturer

The device manufacturer.

serial_number

The serial number associated with the CI.

model_id​

The device model ID.

chassis_type​

The type of chassis that contains the server.

ram

The memory size of the CI.

cpu_type

The CPU type.

cpu_manufacturer

The CPU manufacturer.

Storage disk [cmdb_ci_disk]
name

The name of the CI.

device_id

The ID of the device.

serial_number

The serial number associated with the CI.

storage_type​

The storage type.

size_bytes

The available storage size in bytes.

manufacturer

The device manufacturer.

model_id

The device model ID.

computer

Reference for the storage server.

Network adapter [cmdb_ci_network_adapter]​
name

The name of the CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2006


<!-- page 2007 -->
Table and field

Description

ip_address

The IP address of the CI.

netmask

The netmask of the server hosting the network adapter.

mac_address

The MAC address of the network adapter.

IP address [cmdb_ci_ip_address]
ip_address

The IP address of the CI.

netmask

The netmask of the server hosting the CI.

The Dependency Views map shows all discovered SolidFire storage system clusters and nodes
in your organization and the relationships between them.

CI relationships
CI

Relationship/Reference

CI

Storage cluster

Cluster Of::Cluster

Storage cluster node

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2007


<!-- page 2008 -->
CI

Relationship/Reference

CI

Storage cluster node

Hosted On::Hosts

Storage node element

Storage node element

Managed By::Manages

Storage cluster

Storage server (main CI)

Allocated To::Allocated From

Storage node element

Storage server (main CI)

Runs On::Runs

Storage cluster

Storage server (main CI)

Contains::Contained By

Disk

Network router discovery using patterns
The Discovery and Service Mapping Patterns application uses the Network Router pattern to
find network routers in your environment. Discovering some of these resources may require
updating to the latest version of the Discovery and Service Mapping Patterns application from
the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
To learn about network routers and their versions that you can discover, refer to Detailed
information on products discovered by ITOM Visibility.
For information on probe-based network switch and router discovery, see Network switch and
router discovery.

Prerequisites
Verify that the applications are up to date
• Discovery and Service Mapping Patterns
• Visibility Content
Verify IP address information
The router must contain IP address information for successful discovery.
Verify that exit interface routing rules are configured and reachable
The router that provides the IP address must have exit interface routing rules
configured and be reachable for successful discovery.
Create SNMP credentials
Create SNMP Community Credentials or SNMPv3 credentials. For more information,
see SNMP credentials .
Configure properties for router discovery
Navigate to sys_properties.list and verify that the
glide.discovery.L3_mapping system property is set to true.
You can configure these additional properties for network router discovery.

Property

Description

glide.discovery.max_concurrent_invocations_per_schedule Sets a maximum number of
scheduled invocations for the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2008


<!-- page 2009 -->
Property

Description

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
cause performance issues
including out-of-memory
issues on the MID Server.
• Type: true | false
• Default value: true
• Location: Discovery
Definition > Properties

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2009


<!-- page 2010 -->
Data collected by Discovery during horizontal discovery
Discovery populates the data in the CMDB when running the Network Router pattern.
IP Router [cmdb_ci_ip_router]
Field

Description

Name [name]

Name of the router.

Model ID [model_id]

Hardware model ID of the router.

Manufacturer
[manufacturer]

Router manufacturer.

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

IP Address [cmdb_ci_ip_address]
Field

Description

IP Address [ip_address]

IP address of the router.

Netmask [netmask]

Netmask of the router.

Nic [nic]

References the Network Adapter [cmdb_ci_network_adapter] table.

Network Adapter [cmdb_ci_network_adapter]
Field

Description

Name [name]

Name of the network adapter.

IP Address [ip_address]

IP address of the network adapter.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2010


<!-- page 2011 -->
Network Adapter [cmdb_ci_network_adapter] (continued)
Field

Description

Netmask [netmask]

Netmask of the network adapter.

MAC Address [mac_address]

MAC address of the network adapter.

Alias [alias]

User-assigned name for the network adapter.

Configuration Item [cmdb_ci]

References the IP Router [cmdb_ci_ip_router] table.

DNS Name [cmdb_ci_dns_name]
Field

Description

Name [name]

Name of the Domain Name System (DNS).

IP Address [ip_address]

IP address of the DNS.

CI relationships
Discovery creates these relationships to support the network router discovery.

CI

Relationship

CI

Exit Interface Routing Rule
[dscy_route_interface]

References

IP Router [cmdb_ci_ip_router]

IP Address [cmdb_ci_ip_address]

References

Network Adapter
[cmdb_ci_network_adapter]

IP Router [cmdb_ci_ip_router]

Contains::Contained Switch Forwarding Rule
by
[dscy_swtch_fwd_rule]

IP Router [cmdb_ci_ip_router]

Contains::Contained Switch Partition
by
[dscy_swtch_partition]

IP Router [cmdb_ci_ip_router]

Contains::Contained Switchport [dscy_switchport]
by

IP Router [cmdb_ci_ip_router]

Owns::Owned by

IP Address
[cmdb_ci_ip_address]

IP Router [cmdb_ci_ip_router]

Owns::Owned by

Network Adapter
[cmdb_ci_network_adapter]

IP Router [cmdb_ci_ip_router]

Uses::Used by

Exit Interface Routing Rule
[dscy_route_interface]

IP Router [cmdb_ci_ip_router]

Uses::Used by

Next Hop Routing Rule
[dscy_route_next_hop]

IP Router [cmdb_ci_ip_router]

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

IP Router [cmdb_ci_ip_router]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2011


