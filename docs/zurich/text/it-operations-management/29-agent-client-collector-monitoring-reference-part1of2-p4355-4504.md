# Zurich IT Operations Management — Agent Client Collector Monitoring reference

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4355–4504 of 4823 | Part 1 of 2

Sections: Agent Client Collector Monitoring reference (p4355)

---

<!-- page 4355 -->
Parameter

Description

Default=3

monitor_interval_sec

Indicates the frequency, in seconds, that
the agent monitor runs to check if the
cpu_percentage_limit is exceeded.
Default=60

proxy_cpu_percentage_limit

The percentage of the agent's CPU usage
when the agent is running proxy checks too
frequently, that sends the agent into CPU
protection mode.
Default=80

Agent Client Collector Monitoring reference
Reference topics provide additional information about Agent Client Collector Monitoring checks
and policies.

Agent Client Collector Monitoring Footprint
The following table describes Agent Client Collector resource consumption. We supply
performance testing values to specific customers upon request.

Parameters

Linux

Windows

Machine spec

Cent OS 8, 4 CPU Core, 8GB
Memory

Windows Server 2019, 2 CPU,
4GB Memory

Network - (Agent > MID)

10.64 KB/s

350-400 byte/s

Network - (MID > Agent)

48 byte/s

5-15 byte/s

Average CPU Utilization

~1%

~3.89%

Max CPU per check

10 to 15%

15 to 20%

Memory overhead (avg)

~13.88 MB

~31.15 MB

Agent Client Collector Monitoring default checks and policies
Agent Client Collector Monitoring provides various default checks and policies.

Provided checks
The following tables list the default checks. You can edit these checks as needed. For more
information about a specific check, see its Check Definitions page, as described in Checks and
policies.
Linux
Type

Name

Event os.linux.check-process

Description

Counts the number of running processes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4355


<!-- page 4356 -->
Linux (continued)
Type

Name

Description

You can block event creation for this check when no
process is detected. For details, see Block event creation
for non-existent entities.
Event os.linux.check-system-cpu Checks the CPU usage percentage.
Event os.linux.check-systemcpu-load

Checks the CPU data load percentage against the
configured thresholds.

Event os.linux.metrics-systemdisk-usage

Checks the file system's mount points and metrics.

Event os.linux.check-systemmemory-percentage

Checks the memory usage percentage.

Event os.linux.check-systemmemory-swap

Checks the memory swap usage.

Event os.linux.check-threadscount

Counts the number of threads running on the system.
Sends an alert if that number is greater than the Warning or
Critical threshold values.

Metric os.linux.metrics-memoryvmstat

Collects vmstat memory metrics.

Metric os.linux.metrics-processstatus

Collects process status metrics provided to the metrics
parameter.

Metric os.linux.metrics-systemcpu

Collects CPU metrics, including cores.

Metric os.linux.metrics-systemcpu-load

Uses uptime to collect CPU load metrics.

Metric os.linux.metrics-systemcpu-percentage

Collects CPU usage percentage metrics, including average
CPU utilization percentage.

Metric os.linux.metrics-systemdisk

Collects disk metrics.

Metric os.linux.metrics-systemdisk-capacity

Collects disk capacity metrics.

Metric os.linux.metrics-systemdisk-usage

Collects disk usage metrics, providing total, used, and
available disk memory, as well as the disk's percentage of
memory used.

Metric os.linux.metrics-systemmemory

Collects memory metrics, providing data in KB.

Metric os.linux.metrics-systemmemory-percent

Collects memory percentage metrics.

Metric os.linux.metrics-systemuptime

Collects system uptime in seconds.

Metric os.linux.metrics-rebootcount-today

Collects the number of reboots performed today.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4356


<!-- page 4357 -->
Linux Log Monitoring
Type

Name

Description

Event util.check-logs

Enables monitoring log files owned by a regular user.
You can block event creation for this check when no
process is detected. For details, see Block event creation
for non-existent entities.

Event util.check-logs-sudo

Enables monitoring log files owned by a root user.
You can block event creation for this check when no
process is detected. For details, see Block event creation
for non-existent entities.

Linux Network Monitoring
Type

Name

Description

Metric os.linux.metrics- Retrieves all network interface related metrics for Linux servers.
networkinterface
Metric os.linux.metrics- Retrieves metrics on TCP socket states from netstat. Useful on highnetstat.tcp
traffic web or proxy servers with large numbers of short-lived TCP
connections coming and going.
Windows Log Monitoring
Type

Name

Event os.windows.check-log

Description

Enables monitoring log files on a Windows server.

Windows
Type

Name

Description

Event os.windows.check-diskname

Takes the storage drive name as input and verifies if the
drive is present. Returns a CRITICAL\WARNING\OK value
based on the parameter provided.

Event os.windows.check-eventlog

Measures the Windows event log against parameter
thresholds and returns a CRITICAL\WARNING\OK event.

Event os.windows.check-eventlog-count

Measures the Windows event log against parameter
thresholds and returns a CRITICAL\WARNING\OK event.
Provides information on the number of events that have
occurred within a specified duration for a single log file
and a single ID. Also indicates the filters to be applied to
retrieve events for a specific single-valued windows event
level and provider name.
Retrieving events from multiple log files is not supported.
The number of events is provided, without details of each
and every event.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4357


<!-- page 4358 -->
Windows (continued)
Type

Name

Event os.windows.check-eventlog-details

Description

Collects and filters Windows event logs based on the
duration_hour, event_log_level and log_file
values.
Retrieves and filters Windows event logs according to the
provided parameters. It returns details about the events
with CRITICAL, WARNING, or OK status, based on the
specified severity level.
Supported on Windows version 7 and higher.

Event os.windows.check-envvariables

Checks the environmental variables using a regular
expression and returns either a WARNING or OK value.
If a new system variable is created after agent installation,
you must restart the agent. This check can access only
those user variables that are associated with the current
user (used during agent installation).

Event os.windows.check-filehashcode-update

Takes the file's path and MD5 hashcode as an input and
verifies whether file content has been modified. Returns a
CRITICAL, WARNING, or OK value.
Read permissions are required on the monitored file.

Event os.windows.check-fileupdate

Takes the file's path and interval as an input and verifies
whether file content has been modified. Returns a
CRITICAL, WARNING, or OK value.
Read permissions are required on the monitored file.

Event os.windows.checkmodules

Verifies whether the list of modules is present.

Event os.windows.checkprocessor-queue-length

Checks Processor Queue Length.

Event os.windows.check-system- Checks the CPU load by using the typeperf command.
cpu-load
Event os.windows.check-system- Checks disk usage under specific parameters.
disk
Event os.windows.check-system- Collects RAM usage.
memory
Event os.windows.check-system- Verifies system patch installation. Returns either a
patch
WARNING or OK value.
Event os.windows.check-system- Checks the user's task list to find running processes.
process
Event os.windows.check-useraccount

Takes the list of user names as an input and verifies
whether the user account is active. Returns a CRITICAL,
WARNING, or OK value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4358


<!-- page 4359 -->
Windows (continued)
Type

Name

Description

Event os.windows.checkwindows-directory

Checks if a directory exists.

Event os.windows.checkwindows-pagefile

Collects page file usage and compares it to the Warning
and Critical thresholds.

Event os.windows.checkwindows-process

Checks if a user input process is running.

Event util.check-windows-service Checks if a user-supplied service is running on Windows.
You can block event creation for this check when no
process is detected. For details, see Block event creation
for non-existent entities.
Metric os.windows.metricsprocess-status

Retrieves the number of running instances, the percentage
of CPU utilization, and the memory usage (in kilobytes) of
the specified Windows process.

Metric os.windows.metricsprocessor-queue

Collects Processor Queue Length.

Metric os.windows.metricssystem-cpu-load

Collects the average CPU load per second.

Metric os.windows.metricssystem-disk-usage

Collects disk usage metrics.

Metric os.windows.metricssystem-memory-percent

Collects RAM usage per second, providing free physical,
free virtual, total physical and total virtual memory
percentage.

Metric os.windows.metricssystem-network

Collects network metrics.

Metric os.windows.metricssystem-uptime

Collects system uptime.

Metric util.metrics-windows-perfcounters

(No description)

MID Server
Type

Name

Description

Event app.mid.check-active

Checks if the MID Server is active, based on the
occurrence of LogStatusMonitor in the MID log.

Events app.mid.check-logs-mid

Checks the MID logs for errors.

Metric app.mid.metrics-stats

Collects MID Server information from the log and returns
metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4359


<!-- page 4360 -->
HAProxy monitoring
Type

Name

Description

Event

check-haproxy

Retrieves the HAProxy load
balancer details to determine
whether it is running.

Metric

metrics-check-haproxy

Retrieves the HAProxy load
balancer metrics to determine
whether it is running.

HTTP (to be run in proxy mode)
Type

Name

Description

Event util.check-http-response

Takes a URL or a combination of host/path/port/ssl, and
checks for a 200 response that matches a pattern, if
provided. Can use client certificates.

Event util.check-http-followredirect

Checks that the URL doesn't exceed the maximum number
of redirects.

Metric util.metrics-http-curl

Retrieves HTTP endpoint metrics using curl.

Additional HTTP checks (no policy)
Type

Name

Description

Event

util.check-http-response-code Raises a critical event if the
URL response code does not
match the regex.

Active Directory Metrics
Type

Check

Description

Metric

metrics.windows.active- Collects Active
directory
Directory metrics on
the Windows host.

Command

winchecks
metric-windowsactive-dir
{{if .labels.params_scheme}
Usage: winchecks
-S
metric-windows{{.labels.params_scheme}}
active-dir -s hostname {{end}}

Apache
Type

Event/Metric

Metric app.apache.metricsapache

Description

Minimum
version

Retrieves Apache HTTP server metrics.

2.4.x

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4360


<!-- page 4361 -->
Apache Kafka
Description

Minimum
version

Event kafka.check-zookeeperstatus

Raises a critical event if the hosted Kafka
Zookeeper is down.

ZooKeeper
3.1.2

Event kafka.check-topicreplicas

Raises a critical event if any topic has partitions
with unknown replicas.

ZooKeeper
3.1.2

Event kafka.check-topicreplication-factor

Raises a critical event if replication factor of
at least one topic is above or below provided
replication factor parameter.

ZooKeeper
3.1.2

Type

Event/Metric

Event kafka.check-topic-leader Raises a critical event if any topic has partitions
with unknown leaders or unpreferred replica as
leader.

ZooKeeper
3.1.2

Eventskafka.check-topicpartitions

Raises a critical event if the number of partitions ZooKeeper
for a topic is less the min_partitions param.
3.1.2

Event kafka.check-brokerstatus

Raises a critical event if Kafka Broker on the host Kafka
is down.
0.10.1.0

Metric kafka.metrics.broker

Collects Kafka Broker Metrics from the host.

Kafka
0.10.1.0

Metric kafka.metrics.zookeeper

Collects Zookeeper Metrics from the host.

ZooKeeper
3.5.0-alpha

Azure k8s Metrics
Type

Event/Metric

Description

Command

Metric

azure.metrics-k8sservice

Provides pod, nodes,
and cluster level
metrics from all Azure
Kubernetes services
in metric form.

metricsazure-k8sservice.rb -r
{{.labels.params_ci_region}
{{-s
{{if.labels.params_subscrip
-S
{{.labels.params_subscripti
{{end}}

Usage: metrics-azurek8s-service.rb

Command example:
metricsazure-k8sservice.rb -S
{{.labels.params_subscription_id}}
-r westus2

Azure VM Metrics
Type

Event/Metric

Description

Command

Metric

azure.metrics-vm-cpu

Provides CPU-related
metrics of each VM
instance in the Azure
region.

metrics-azurevm.rb -r
{{.labels.params_ci_region}
{{if .labels.params_subscri

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4361


<!-- page 4362 -->
Azure VM Metrics (continued)
Type

Event/Metric

Description

Command

-S
Command example:
{{.labels.params_subscripti
./metrics{{end}} -T
azure-vm.rb -S
{{.labels.params_type}}
{{.labels.params_subscription_id}}
-T cpu
Metric

azure.metrics-vm-disk Provides disk-related
metrics of each VM
instance in the Azure
region.

metrics-azurevm.rb -r
{{.labels.params_ci_region}
{{if .labels.params_subscri
-S
Command example:
{{.labels.params_subscripti
./metrics{{end}} -T
azure-vm.rb -S
{{.labels.params_type}}
{{.labels.params_subscription_id}}
-T disk

Metric

azure.metrics-vmmemory

Provides memoryrelated metrics of
each VM instance in
the Azure region.

Metric

azure.metrics-vmnetwork

Provides networkrelated metrics of
each VM instance in
the Azure region.

Metric

azure.metrics-vmflows

Provides flows-related
metrics of each VM
instance in the Azure
region.

metrics-azurevm.rb -r
{{.labels.params_ci_region}
{{if .labels.params_subscri
-S
Command example:
{{.labels.params_subscripti
./metrics{{end}} -T
azure-vm.rb -S
{{.labels.params_type}}
{{.labels.params_subscription_id}}
-T memory

metrics-azurevm.rb -r
{{.labels.params_ci_region}
{{if .labels.params_subscri
-S
Command example:
{{.labels.params_subscripti
./metrics{{end}} -T
azure-vm.rb -S
{{.labels.params_type}}
{{.labels.params_subscription_id}}
-T network

metrics-azurevm.rb -r
{{.labels.params_ci_region}
{{if .labels.params_subscri
-S
Command example:
{{.labels.params_subscripti
./metrics{{end}} -T
azure-vm.rb -S
{{.labels.params_type}}
{{.labels.params_subscription_id}}
-T flows

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4362


<!-- page 4363 -->
GCP GCE metrics
Type

Event/Metric

Metric gcp.metrics.GCE
Metric glassfish.metric-serverrequests
Metric glassfish.metric-serverresources

Description

Retrieves metrics from GCP for Google Compute Engine.
Provides http-request metrics for all applications deployed
on the Glassfish server.
Provides metrics of the resources deployed on the
Glassfish server.

Metric glassfish.metrictransaction-service

Provides metrics for all transactions on applications
deployed on the Glassfish server.

Metric glassfish.metricdeployed-apps

Provides metric output of the applications deployed on the
Glassfish server.

Metric glassfish.metricdeployment-lifecycle

Provides lifecycle metrics applications deployed on the
Glassfish server.

Glassfish
Type

Name

Description

Metric

glassfish.metric-jvm-level

Metric

glassfish.metric-serverrequests

Metric

glassfish.metric-serverresources

Metric

glassfish.metric-transactionservice

Provides metrics for all
transactions on applications
deployed on the Glassfish
server.

Metric

glassfish.metric-deployedapps

Provides metric output of the
applications deployed on the
Glassfish server.

Metric

glassfish.metric-deploymentlifecycle

Provides lifecycle metrics
applications deployed on the
Glassfish server.

Retrieves JVM metrics on the
Glassfish server.
Provides http-request metrics
for all applications deployed
on the Glassfish server.
Provides metrics of the
resources deployed on the
Glassfish server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4363


<!-- page 4364 -->
IBM WebSphere AS
Type

Event/Metric

Minimum
version

Description

Metric app.websphere.metricswebsphere

Returns IBM WebSphere application server
metrics.

9

Ensure that the user running the agent has
sufficient permissions to access the required
files in the IBM Websphere AS installation
directories.

IIS
Description

Minimum
version

Event app.iis.check-iis-alive

Checks if IIS is running.

-

Event app.iis.check-iis-currentconnections

Checks the number of current connections to
the IIS server and their status, depending on the
input. By default, all sites are connected to the
IIS server.

Metric app.iis.metrics-iis

Returns IIS metrics.

-

Description

Minimum
version

Retrieves JBoss/WildFly server metrics.

16, 17

Type

Event/Metric

JBoss/WildFly
Type

Event/Metric

Metric app.jboss.metrics-jboss

Ensure that the user running the agent has
sufficient permissions to access the required
files in theJBoss/WildFly installation
directories.

Kubernetes
Type

Event/Metric Description

Command

Event

k8s.checkkubeapiserveravailable

Checks if Kubernetes
API server is up.

check-kube-apiserver-available.rb
{{if .labels.params_api_server}}
-s {{.labels.params_api_server}}
{{end}}

Event

k8s.checkkubenodesready

Checks whether
Kubernetes nodes are
in ready-to-use state.

check-kube-nodes-ready.rb
{{if .labels.params_api_server}}
-s {{.labels.params_api_server}}
{{end}}

Event

k8s.checkkube-podspending

Measures the
threshold by
which pods are
in the Pending

check-kube-pods-pending.rb
{{if .labels.params_api_server}}
-s {{.labels.params_api_server}}
{{end}}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4364


<!-- page 4365 -->
Kubernetes (continued)
Type

Event/Metric Description

Command

state. Determine
the threshold
by setting the

pending_timeout
check parameter
value (default = 300
seconds).
Event

k8s.checkkube-podsrestarting

Checks the pods
that are restarting.
Determine the
threshold by setting
the check parameter
value (default = 10).

check-kube-pods-restarting.rb
{{if .labels.params_api_server}}
-s {{.labels.params_api_server}}
{{end}}
{{if .labels.params_restart}}
-r {{.labels.params_restart}}
{{end}}

Event

k8s.checkkube-podsrunning

Checks the pods that
are in the running
state. Configure
the threshold in the

check-kube-pods-running.rb
{{if .labels.params_api_server}}
-s {{.labels.params_api_server}}
{{end}}
{{if .labels.params_not_ready_time}}
-time
{{.labels.params_not_ready_time}}
{{end}}

not_ready_time
check parameter, in
seconds (default = 0).
Event

k8s.checkkube-podsruntime

Checks whether
pods are running
longer than expected.
Configure threshold in
the check parameter
(in seconds). You
can configure both
WARNING and
CRITICAL thresholds.

check-kube-pods-runtime.rb
{{if .labels.params_critical}} -c
{{.labels.params_critical}} {{end}}
{{if .labels.params_warning}} -w
{{.labels.params_warning}} {{end}}
{{if .labels.params_api_server}} -s
{{.labels.params_api_server}} {{end}}

Event

k8s.checkkubeserviceavailable

Checks whether
Kubernetes services
are up and running.
Add the list of services
to be monitored
in the services'
check_param field
as comma-separated
values (without
spaces).

check-kube-pods-runtime.rb
{{if .labels.params_critical}}
-c {{.labels.params_critical}}
{{end}}
{{if .labels.params_warning}}
-w {{.labels.params_warning}}
{{end}}
{{if .labels.params_api_server}}
-s {{.labels.params_api_server}}
{{end}}

If you enter services
that are not valid, the
check fails.
Metric k8s.metrics- Provides a pod count
metrics-pods.rb
pods
from all of the exposed {{if .labels.params_api_server}}
services.
-s

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4365


<!-- page 4366 -->
Kubernetes (continued)
Type

Event/Metric Description

Command

{{.labels.params__api_server }}
{{end}}
MsSQL
Type

Event/Metric

Metric app.msssql.metricsmssql

Description

Minimum
version

Retrieves MSSQL database metrics.

2016

Metric app.metrics-mssql-query Generic MSSQL query class which accepts a
query and dumps metrics.

2016

MySQL
Description

Minimum
version

Event app.mysql.check-mysqlalive

Checks if the MySQL database is running.

5.7, 8

Event app.mysql.check-mysqlthreads

Checks the number of running threads on the
MySQL database. Depending on the input, it
determines the status: OK, Warning, or Critical.

5.7, 8

Event util.check-mysql-query

Checks the length of a MySQL query result set.

5.7, 8

Type

Event/Metric

Ensure that you use the native_password
authentication method on the MySQL server
when utilizing this check.
Metric app.mysql.metrics-mysql Returns MySQL database metrics.

5.7, 8

Metric app.mysql.metricsmysql-processes

Returns MySQL database process metrics.

5.7, 8

Metric util.metrics-mysql-query

Creates a formatted metric for the length of a
MySQL query result set.

5.7, 8

MongoDB
Type

Event/Metric

Description

Event

app.mongodb.checkmongodb-alive

Monitors whether
the MongoDB
server is alive and
creating alerts for
the MongoDB server
health status.

Event

app.mongodb.checkmongodb-metrics

Creates alerts for
any of the MongoDB
metrics, based on the
threshold limit.

Minimum version

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4366


<!-- page 4367 -->
MongoDB (continued)
Type

Event/Metric

Description

Metric

app.mongodb.metrics- Returns metrics of the
mongodb
MongoDB server and
all databases.

Minimum version

Oracle
Type

Event/Metric

Description

Minimum
version

Event app.oracle.check-oracle- Checks if the Oracle database is running.
alive

12c, 18c

Metric app.oracle.metricsoracle

Returns Oracle database metrics.

12c, 18c

Metric util.metrics-oracle-query

Generic Oracle query class that accepts a query 12c, 18c
and dumps metrics.

Oracle WebLogic AS
Type

Event/Metric

Metric app.weblogic.metricsweblogic

Description

Returns Oracle WebLogic application server
metrics.

Minimum
version

12cR2

Ensure that the user running the agent has
sufficient permissions to access the required
files in the WebLogic installation directories.

Tomcat
Type

Event/Metric

Metric app.tomcat.metricstomcat

Description

Minimum
version

Returns Apache Tomcat server metrics.

8.5.27, 9.x

App
Type

Name

Description

Event util.check-snmp

SNMP check that compares the metric value to the default.
Requires input such as server, port, SNMP community, and
limits.

Metric util.metrics-snmp

Collects metrics from an SNMP OID value.

Metric util.metrics-snmp-bulk-sn

Collects metrics from an SNMP Table OID and returns the
result as a table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4367


<!-- page 4368 -->
Service enhancements (can be associated with any policy)
Type

Event/Metric

Description

Command

Metric (Windows)

os.windows.metricsservice-status

Collects Windows
service status,
providing metric of
number of services
running.

winchecks
metric-windowsservice-status
-S Wcmsvc
--scheme
hostname.proc

Varnish
Type

Name

Description

Metric

app.varnish.metrics-varnish

Collects Varnish metrics from
the host.

Type

Name

Description

Metric

vsphere.metricVirtualMachine

Retrieves metrics for the
vSphere Virtual Machine.

Metric

vsphere.metric-Datastore

Retrieves metrics for the
vSphere Datastore.

Metric

vsphere.metric-Datacenter

Retrieves metrics for the
vSphere Datacenter.

Metric

vsphere.metric-ESX_Server

Retrieves metrics for the
vSphere ESX Server or
HostSystem

vSphere

Zscaler
Type

Name

Description

Metric zscaler-monitoring-check

Verifies whether the Zscaler app is running properly.

Metric zscaler-remediation-check Shuts down and restarts the Zscaler app, and creates an
incident. Runs only when the zscaler-monitoring-check
fails.
CPU enhancements
Type

Event/Metric

Description

Command

Metric

os.windows.metricssystem-cpu

Collects CPU core
metrics.

winchecks
metric-windowscpu --scheme
hostname.proc

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4368


<!-- page 4369 -->
Disk enhancements - Linux events (can be associated with any policy)
Event/Metric

Description

Command

os.linux.check-diskioTimeWeighted

Measures the disk
ioTimeWeighted value,
returning a CRITICAL
\WARNING\OK message,
according to the thresholds
specified in the parameters.

check-diskioTimeWeighted.rb

os.linux.check-disksectorsWritten

Measures the total number of
sectors written successfully,
returning a CRITICAL
\WARNING\OK message,
according to the thresholds
specified in the parameters.

check-disksectorsWritten.rb

os.linux.check-disksectorsRead

Measures the disk's total
number of sectors read
successfully, returning a
CRITICAL\WARNING\OK
message, according to the
thresholds specified in the
parameters.

check-disksectorsRead.rb

os.linux.check-disk-readTime

Measures the total number of check-diskmilliseconds spent by all read- readTime.rb
against thresholds, returning
a CRITICAL\WARNING\OK
message, according to the
thresholds specified in the
parameters.

os.linux.check-disk-writes

Measures the total number of check-disk-writes.rb
writes completed successfully,
returning a CRITICAL
\WARNING\OK message,
according to the thresholds
specified in the parameters.

os.linux.check-disk-reads

Measures the total number of check-disk-reads.rb
reads completed successfully,
returning a CRITICAL
\WARNING\OK message,
according to the thresholds
specified in the parameters.

os.linux.check-diskwritesMerged

Measures the disk
writesMerged value,
returning a CRITICAL
\WARNING\OK message,
according to the thresholds
specified in the parameters.

check-diskwritesMerged.rb

os.linux.check-diskreadsMerged

Measures the disk
readsMerged value,
returning a CRITICAL
\WARNING\OK message,

check-diskreadsMerged.rb

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4369


<!-- page 4370 -->
Disk enhancements - Linux events (can be associated with any policy) (continued)
Event/Metric

Description

Command

according to the thresholds
specified in the parameters.
os.linux.check-disk-writeTime

Measures the total number
of milliseconds spent by all
write operations, returning a
CRITICAL\WARNING\OK
message, according to the
thresholds specified in the
parameters.

check-diskwriteTime.rb

os.linux.check-diskioInProgress

Measures the disk
ioInProgress value,
returning a CRITICAL
\WARNING\OK message,
according to the thresholds
specified in the parameters.

check-diskioInProgress.rb

os.linux.check-disk-iotime

Measures the disk ioTime check-disk-ioTime.rb
value, returning a CRITICAL
\WARNING\OK message,
according to the thresholds
specified in the parameters.

Disk enhancements - Windows events (can be associated with any policy)
Event/Metric

Description

Command

os.windows.check-diskAvgSecWrite

Measures average disk writes
per second, returning a
CRITICAL\WARNING\OK
message, according to the
specified in the parameters.

winchecks checkwindows-AvgDisksecwrite -w 1 -c 0

os.windows.check-diskReadBytes-sec

Measures the disk
ReadBytes value per
second, returning a CRITICAL
\WARNING\OK message,
according to the thresholds
specified in the parameters.

winchecks
check-windowsDiskReadBytes-sec -w
1 -c 0

os.windows.check-diskWriteBytes-sec

Measures the disk
WriteBytes value per
second, returning a CRITICAL
\WARNING\OK message,
according to the thresholds
specified in the parameters.

winchecks
check-windowsDiskWriteBytes-sec
-w 1 -c 0

os.windows.check-diskAvgSecRead

Measures the average disk
reads per second, returning
a CRITICAL\WARNING\OK
message, according to the
thresholds specified in the
parameters.

winchecks checkwindows-AvgDisksecread -w 1 -c 0

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4370


<!-- page 4371 -->
Disk enhancements - Windows metrics (can be associated with any policy)
Event/Metric

Description

Command

os.windows.metrics-systemdisk

Collects the following disk
metrics:

winchecks metricwindows-disk

• AvgDiskSecPerRead
• AvgDiskSecPerWrite
• DiskReadBytesPerSec
• DiskWriteBytesPerSec

Memory enhancements (can be associated with any policy)
Type

Event/Metric

Description

Command

Event (Linux)

os.linux.check-freephysical-memory

Measures the free
check-freephysical memory
physical-memory
percentage of
-w 10 -c 5
the Linux system,
returning a CRITICAL
\WARNING\OK event
message, according
to the thresholds
specified in the
parameters.

Event (Linux)

os.linux.check-freevirtual-memory

Measures the free
check-freevirtual memory
virtual-memory
percentage of
-w 10 -c 5
the Linux system,
returning a CRITICAL
\WARNING\OK event
message, according
to the thresholds
specified in the
parameters.

Event (Windows)

os.windows.checkfree-physical-memory

Measures the free
physical memory
percentage of the
Windows system,
returning a CRITICAL
\WARNING\OK event
message, according
to the thresholds
specified in the
parameters.

winchecks
check-windowsfree-physficalmemory -w 10 -c
5

Event (Windows)

os.windows.checkfree-virtual-memory

Measures the free
virtual memory
percentage of the
Windows system,
returning a CRITICAL
\WARNING\OK event
message, according

winchecks
check-windowsfree-physicalmemory -w 10 -c
5

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4371


<!-- page 4372 -->
Memory enhancements (can be associated with any policy) (continued)
Type

Event/Metric

Description

Command

to the thresholds
specified in the
parameters.
Metric (Windows)

os.windows.metricssystem-memory

Collects the following
memory metrics:

winchecks
metric-windowsmemory --scheme
• FreePhysicalMemory
hostname.proc
• TotalPhysicalMemory
• FreeVirtualMemory
• TotalVirtualMemorySize
• AvailableMemory
• TotalVisibleMemorySize

Process enhancements (can be associated with any policy)
Type

Event/Metric

Description

Command

Event (Linux)

os.linux.checkprocess-cpu

Measures the Linux
process CPU usage,
returning a CRITICAL
\WARNING\OK
message, according
to the thresholds
specified in the
parameters.

check-processcpu.rb -p acc
-c 95 -w 85

Event (Linux)

os.linux.checkprocess-memory

Measures the Linux
check-processprocess memory
memory.rb -p
usage, returning a
acc -c 95 -w 85
CRITICAL\WARNING
\OK message,
according to the
thresholds specified
in the parameters.

Metric (Linux)

os.linux.metricsprocess-usage

Collects the Linux
process status,
including the CPU and
memory data used by
the process.

metricsprocessusage.rb
-p acc -s
hostname.proc

Event (Windows)

os.windows.checkprocess-cpu

Measures the
Windows process
CPU usage, returning
a CRITICAL
\WARNING\OK
message according
to the thresholds
specified in the
parameters.

winchecks
check-windowsprocess-cpu-p
acc -c 95 -w 85

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4372


<!-- page 4373 -->
Process enhancements (can be associated with any policy) (continued)
Type

Event/Metric

Description

Command

Event (Windows)

os.windows.checkprocess-memory

Measures the
Windows process
memory usage,
returning a CRITICAL
\WARNING\OK
message according
to the thresholds
specified in the
parameters.

winchecks
check-windowsprocess-memoryp acc -c 95 -w
85

Metric (Windows)

os.windows.metricsprocess-usage

Collects the Windows
process status,
including the CPU and
memory data used by
the process.

winchecks
metric-windowsprocess-status
-n Svchost -s
hostname.proc

Supported Agent policies
This table lists the supported Agent Client Collector for Monitoring policies that the check
definitions are associated with. The policies consist of the monitored CIs and the checks that run
on them.

Name

Description

Checks

Apache Events

Monitors operational Apache HTTP web
servers.

• os.linux.check-process

To enable monitoring if the process is alive,
activate the relevant check:

• os.windows.checkwindows-process

• For Linux: os.linux.check-process
• For Windows: os.windows.check-windowsprocess
On the Credentials tab, specify Basic Auth
Credentials.
Apache Metrics Monitors operational Apache HTTP web
servers.

app.apache.metrics-apache

On the Credentials tab, specify Basic Auth
Credentials.
Apache Kafka
Events

Monitors the status of Kafka Broker, Kafka
topics, partictions, replicas and Zookeeper.

Apache Kafka
Metrics

Monitors and collects metrics from Kafka
Broker and Kafka Zookeeper.

Azure DB
Metrics

Monitors Azure databases on an Azure
datacenter.
To enable the policy's checks:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4373


<!-- page 4374 -->
Name

Description

Checks

• Configure a proxy agent.
• Add the following Azure service principal
credentials:
◦ Tenant ID
◦ Client ID
◦ Secret Key
• Configure the Authentication Method as
Client secret.
• Add Azure credentials in the policy.
• Provide the subscription_id value in
each check instance.
The default monitored CI Type is
cmdb_ci_azure_datacenter, but the
binding occurs on the Cloud Database
(cmdb_ci_cloud_database).
For details on configuring a policy, see Create
a new Agent Client Collector policy.
Azure k8s
Service Metrics

Monitors the Azure CI,

cmdb_ci_azure_datacenter.
Binds with the Kubernetes data cluster,
cmdb_ci_kubernetes_cluster.

Azure VM
Metrics

Monitors the Azure CI,

cmdb_ci_azure_datacenter.
Binds with the virtual machine instance,
cmdb_ci_vm_instance.

azure.metrics-k8s-service
For details, see Azure Health
Monitoring default checks
and policies.
• azure.metrics-vm-cpu
• azure.metrics-vm-disk
• azure.metrics-vm-memory
• azure.metrics-vm-network
• azure.metrics-vm-flows
For details, see Azure Health
Monitoring default checks
and policies.

Basic Discovery Runs basic ServiceNow Discovery on all
agents, every 12 hours.

check-discovery-basic

This check extracts basic information
about the host and its running processes.
The host information is used to create the
corresponding host in the CMDB, while the
running processes create the classified
application CIs.
You need advanced OS privileges to use
the Net stat command to discover ports. The
command that you run depends on your OS,
as follows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4374


<!-- page 4375 -->
Name

Description

Checks

• Linux: sudo -n netstat -antp
• Windows: netstat -anop TCP
Docker
Container
Metrics

Collects performance metrics for Docker
containers.

container.docker.metricsdocker

Provide the credentials of users who are
Docker user group members or have sudo
rights. Provide these credentials on the
Credentials tab of the policy form.
Docker Engine
Metrics

Collects general metrics for the Docker
engine.

container.docker.metricsdocker-info

Provides the credentials of a user which is
either a member of the Docker user group
or has been assigned sudo rights on the
Credentials tab.
To enable running checks through this policy,
add the servicenow user to the Docker user
group on the machine where the agent is
running.
F5 SNMP
Events

Example for using SNMP checks.

util.check-snmp

Because the Agent doesn't run on SNMP
devices, provide the following to complete
this policy:
• A Proxy Agent and credentials.
• The host of the Proxy Agent. On the
Credentials tab, specify the SNMP
Community Credentials for connecting to
the server.

F5 SNMP
Metrics

Example for using SNMP metrics.
Because the Agent doesn't run on SNMP
devices, provide the following to complete
this policy:

• util.metrics-snmp
• util.metrics-snmp-bulk-sn

• Proxy Agent and credentials.
• The host of the Proxy Agent. On
theCredentials tab, specify the SNMP
Community Credentials for connecting to
the server.
Glassfish
Metrics

Runs metric checks on the Glassfish server.
Glassfish metrics are supported in ITOM
Agent Client Collector version 2.3.0 - August
2022, available from the ServiceNow Store .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4375


<!-- page 4376 -->
Name

Description

Checks

HAProxy Events Retrieves the HAProxy load balancer details
to determine whether it is running.
HAProxy events are supported in ITOM Agent
Client Collector version 2.3.0 - August 2022,
available from the ServiceNow Store .
HAProxy
Metrics

Retrieves the HAProxy load balancer metrics
to determine whether it is running.
HAProxy metrics are supported in ITOM
Agent Client Collector version 2.3.0 - August
2022, available from the ServiceNow Store .

HTTP Entry
Points Events

Runs the util.check-http-follow-redirect
check on all HTTP entry points that belong
to application business services. The policy
filter chooses the services. The services
define the entry points.

util.check-http-follow-redirect

• To enable this check, there is a new
database view which combines the
application services table with the entry
points table.
• You can filter the services and receive the
entry points.
• When you receive an alert, it is
automatically bound to the entry points.
This alert affects the impact calculation,
because entry points are considered.
• This policy requires a Proxy Agent.
HTTP Entry
Points Metrics

For example, when the alert is bound to the
entry point, the service map identifies an
entry point problem.

util.metrics-http-curl

• The metric binds to the entry point CI. In
previous releases, the metric was bound
to the service and the entry point was the
resource.
• This policy requires a Proxy Agent.
IIS Events

Monitors operational IIS servers.

• app.iis.check-iis-alive
• app.iis.check-iis-currentconnections

IIS Metrics

Monitors operational IIS servers.

JBoss/WildFly
Application
Server Events

Monitoring operational JBoss/WildFly
application servers.

app.iis.metrics-iis
os.linux.check-process

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4376


<!-- page 4377 -->
Name

Description

Checks

To enable monitoring if the JBoss process is
alive, activate os.linux.check-process.
The jboss_home parameter in the check
instance is specified as the location where
JBoss is installed.
JBoss/WildFly
Application
Server Metrics

Monitors operational JBoss/WildFly
application servers.

app.jboss.metrics-jboss

Kubernetes

Monitors health of Kubernetes infrastructure,
such as clusters, nodes, pod status, API, and
service availability.

• k8s.check-kube-apiserveravailable

When running Kubernetes checks:

• k8s.check-kube-nodesready

• Proxy agent must be enabled.

• k8s.check-kube-podspending

• Enter Kubernetes credentials, either a
username/password combination or a
bearer token (but not both).
• To activate and publish the policy,
configure the api_server value in the
check parameter definitions of each check,
as one of the following:

• k8s.check-kube-podsrestarting
• k8s.check-kube-podsrunning
• k8s.check-kube-podsruntime

◦ https://127.0.0.1:<portnumber>/
• k8s.check-kube-serviceapi (If the API server and agent are
available
running on the same server)
• k8s.metrics-pods
◦ https://<api_server_url>/api
(Whether the API server and agent are
running on the same or different servers).
To use the localhost as your api_server,
run the following command: "kubectl
proxy -port=8081 &"
• Run Discovery to discover all Kubernetes
CIs. For details, see Kubernetes discovery.
Linux log
monitoring

Monitors logs on operational Linux servers.

Linux OS Events Runs Linux checks on operational Linux
servers.

• util.check-logs
• util.check-logs-sudo

• os.linux.check-process
• os.linux.check-system-cpu
• os.linux.check-system-cpuload
• os.linux.check-system-diskusage
• os.linux.check-systemmemory-percentage

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4377


<!-- page 4378 -->
Name

Description

Checks

• os.linux.check-systemmemory-swap
• os.linux.check-threadscount
Linux OS
Metrics

Collects Linux metrics on operational Linux
servers.

• os.linux.metrics-memoryvmstat
• os.linux.metrics-processstatus
• os.linux.metrics-systemcpu
• os.linux.metrics-systemcpu-load
• os.linux.metrics-systemdisk
• os.linux.metrics-systemdisk-capacity
• os.linux.metrics-systemdisk-usage
• os.linux.metrics-systemmemory
• os.linux.metrics-systemmemory-percentage
• os.linux.metrics.reboot_count_today

MSSQL Events

Monitors the operational MSSQL server
process. Runs os.windows.check-windowsprocess to monitor when the server process
is alive.

os.windows.check-windowsprocess

MSSQL Metrics

Monitors operational MSSQL server process.
Runs app.mssql.metrics-mssql to gather
metrics.

app.mssql.metrics-mssql

MySQL DB
Events

Monitors operational MySQL instances.
On the Credentials tab, specify Basic Auth
Credentials for connecting to the database
server.

Note: Utility checks, prefixed with util,

• app.mysql.check-mysqlalive
• app.mysql.check-mysqlthreads
• util.check-mysql-query

have required parameters for which you
must specify a value. These parameters
have no default values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4378


<!-- page 4379 -->
Name

Description

MySQL DB
Metrics

Monitors operational MySQL instances.
On the Credentials tab, specify Basic Auth
Credentials for connecting to the database
server.

Checks

• app.mysql.metrics-mysql
• app.mysql.metrics-mysqlprocesses
• util.metrics-mysql-query

Note: Utility checks, prefixed with util,
have required parameters for which you
must specify a value. These parameters
have no default values.
Network ping
metrics

Monitors the ip address discovered in the
util.metrics-ping
ServiceNow instance. The cmdb_ci_hardware
monitored CI type is bound to the relevant
server:
This policy requires a proxy agent.

Oracle DB
Events

Monitors operational Oracle Database
instances.

app.oracle.check-oracle-alive

On the Credentials tab, specify Basic Auth
Credentials for connecting to the database
server.

Note: Utility checks, prefixed with util,
have required parameters for which you
must specify a value. These parameters
have no default values.
Oracle DB
Metrics

Monitors operational Oracle Database
instances.
On the Credentials tab, specify Basic Auth
Credentials for connecting to the database
server.

• app.oracle.metrics-oracle
• util.metrics-oracle-query

Note: Utility checks, prefixed with util,
have required parameters for which you
must specify a value. These parameters
have no default values.
Self-Healing
Events

Runs a ping command to another host.
Ensure that you run this check in proxy mode. util.check-ping

Tomcat Events

Monitors operational Apache Tomcat servers.
To enable monitoring if the Tomcat process is
alive, activate the relevant check:

• os.linux.check-process
• util.check-windows-service

• For Linux: os.linux.check-process
• For Windows: util.check-windows-service
If the Tomcat service is running under a
different name, update the value of the check
instance's service parameter to the correct
value.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4379


<!-- page 4380 -->
Name

Description

Tomcat Metrics

Monitors operational Apache Tomcat servers.

Checks

app.tomcat.metrics-tomcat

If Tomcat Metrics are running on a port other
than the default port (9000), update the value
of the check instance's port parameter to
the correct port value.
Varnish Metrics

Monitors and collects metrics from Varnish.
Varnish metrics are supported in ITOM Agent
Client Collector version 2.3.0 - August 2022,
available from the ServiceNow Store .
You must perform discovery using application
fingerprints before running Varnish checks.
For details, see Enable running of Varnish
checks.

vSphere
Metrics

Monitors and collects metrics from vSphere.
vSphere metrics are supported in ITOM
Agent Client Collector version 2.3.0 - August
2022, available from the ServiceNow Store .
This policy requires a proxy agent.

WebLogic
Application
Server Events

Monitors operational Oracle WebLogic
application servers. This policy monitors if the os.linux.check-process
WebLogic process running on Linux is alive.
On the Credentials tab, specify Basic Auth
Credentials for connecting to the application
server.

WebLogic
Application
Server Metrics

Monitors operational Oracle WebLogic
application servers.

app.weblogic.metricsweblogic

On the Credentials tab, specify Basic Auth
Credentials for connecting to the application
server.
Ensure that the user running the agent has
sufficient permissions to access the required
files in the WebLogic installation directories.

WebSphere
Application
Server Events

Monitors operational IBM WebSphere
os.linux.check-process
servers. This policy monitors if the
WebSphere process running on Linux is alive.
On the Credentials tab, specify Basic Auth
Credentials for connecting to the application
server.

WebSphere
Application
Server Metrics

Monitors operational IBM WebSphere
servers.

app.websphere.metricswebsphere

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4380


<!-- page 4381 -->
Name

Description

Checks

On the Credentials tab, specify Basic Auth
Credentials for connecting to the application
server.
Windows Log
Monitoring

Monitors logs on operational Windows
servers.

os.windows.check-log
You can block event creation
for this check when no
process is detected. For
details, see Block event
creation for non-existent
entities.

Windows OS
Events

Runs Windows checks on operational
Windows servers.

• os.windows.checkprocessor-queue-length
• os.windows.check-systemcpu-load
• os.windows.check-systemdisk
• os.windows.check-systemmemory
• os.windows.check-systemprocess
• os.windows.checkwindows-directory
• os.windows.checkwindows-directory
• os.windows.checkwindows-directory
• os.windows.checkwindows-pagefile
• os.windows.checkwindows-process

Windows
OS Events Extended

Runs Windows checks to monitor directories
and files on Windows servers.

• check-directory-file-count
• check-directory-integrity
• check-file-age
• check-file-response-time
• check-file-size
• check-file-space
• os.windows.checkdirectory-space

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4381


<!-- page 4382 -->
Name

Description

Checks

Windows OS
Metrics

Collects Windows metrics on operational
Windows servers.

• os.windows.metricsprocessor-queue-len
• os.windows.metricssystem-cpu-load
• os.windows.metricssystem-disk-usage
• os.windows.metricssystem-memory-percent
• os.windows.metricssystem-network
• os.windows.metricssystem-uptime

Zscaler
Monitoring
Policy

Executes Zscaler monitoring on all of a
machine's CIs.

• zscaler-monitoring-check
• zscaler-remediation-check

Active Directory metrics
The following table lists the metrics that are gathered as output from Active Directory checks.
Entries indicated as Featured metrics are high-visibility metrics that are displayed in the
Operator Workspace Metric tab after an alert is generated. These metrics provide the operator
with additional information to help them further explore the specified issue.
Active Directory metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

active_dir.DRA_Inbound_Bytes_after_compressed/
sec

Shows the
compressed size of
inbound compressed
replication data (size
after compression,
from DSAs in other
sites).

active_dir.DRA_Inbound_Bytes_before_compressed/
sec

Shows the original
size of inbound
compressed
replication data (size
before compression,
from DSAs in other
sites).

active_dir.DRA_Inbound_Bytes_not_compressed/
sec

Shows the number
of incoming bytes
replicated that were
not compressed at the
source (that is, from

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4382


<!-- page 4383 -->
Active Directory metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

DSAs in the same
site).
active_dir.DRA_Inbound_Bytes_Total/
sec (featured metric)

Shows the total
number of bytes
replicated in. This
counter is the sum
of the number of
uncompressed bytes
(never compressed)
and the number of
compressed bytes
(after compression).

active_dir.DRA_Inbound_Full_Sync_Objects_Remaining
(featured metric)

Shows the number
of objects remaining
until the full
synchronization is
completed (when set).

active_dir.DRA_Inbound_Object_Updates_Remaining_in_Packet

Shows the number
of object updates
received in the current
directory replication
update packet that
have not yet been
applied to the local
server.

active_dir.DRA_Inbound_Objects/
sec

Shows the rate at
which replication
updates received from
replication partners
are applied by the
local directory service.
This counter excludes
changes that are
received but not
applied (because, for
example, the change
has already been
made). This indicates
how much replication
update activity is
occurring on the
server as a result of
changes generated on
other servers.

active_dir.DRA_Inbound_Objects_Applied/
sec

Shows the number
of objects received
from inbound
replication partners

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4383


<!-- page 4384 -->
Active Directory metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

that contained no
updates that needed
to be applied.
active_dir.DRA_Inbound_Objects_Filtered/
sec

Shows the number of
objects received from
neighbors through
inbound replication. A
neighbor is a domain
controller from which
the local domain
controller replicates
locally.

active_dir.DRA_Inbound_Properties_Applied/
sec

Shows the number
of properties that
are updated due
to the incoming
property's winning
the reconciliation
logic that determines
the final value to be
replicated.

active_dir.DRA_Inbound_Properties_Filtered/
sec

Shows the number of
property changes that
are received during
the replication that we
have already seen.

active_dir.DRA_Inbound_Properties_Total/
sec

Shows the total
number of object
properties received
from inbound
replication partners.

active_dir.DRA_Inbound_Values_DNs/
sec

Shows the number
of object property
values received from
inbound replication
partners that are
distinguished names
(DNs) that reference
other objects. DN
values, such as
group or distribution
list memberships,
are generally more
expensive to apply
than other kinds of
values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4384


<!-- page 4385 -->
Active Directory metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

active_dir.DRA_Inbound_Values_Total/
sec

Shows the total
number of object
property values
received from
inbound replication
partners. Each
inbound object
has one or more
properties, and
each property has
zero or more values.
Zero values indicate
property removal.

active_dir.DRA_Outbound_Bytes_after_compressed/
sec

Shows the
compressed
size of outbound
compressed
replication data (size
after compression,
from DSAs in other
sites).

active_dir.DRA_Outbound_Bytes_before_compressed/
sec

Shows the original
size of outbound
compressed
replication data (size
before compression,
from DSAs in other
sites).

active_dir.DRA_Outbound_Bytes_not_compressed/
sec

Shows the number
of bytes replicated
out that were not
compressed (that
is, from DSAs in the
same site).

active_dir.DRA_Outbound_Bytes_Total/
sec (featured metric)

Shows the total
number of bytes
replicated out. This
counter is the sum
of the number of
uncompressed bytes
(never compressed)
and the number of
compressed bytes
(after compression).

active_dir.DRA_Outbound_Objects/
sec

Shows the number
of objects that were
determined by
outbound replication

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4385


<!-- page 4386 -->
Active Directory metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

to have no updates
that the outbound
partner did not
already have.
active_dir.DRA_Outbound_Objects_Filtered/
sec

Shows the number of
objects replicated out.

active_dir.DRA_Outbound_Properties/
sec

Shows the number of
properties replicated
out.

active_dir.DRA_Outbound_Values_DNs/
sec

Shows the number
of object property
values containing
DNs sent to outbound
replication partners.
DN values, such as
group or distribution
list memberships,
are generally more
expensive to read
than other kinds of
values.

active_dir.DRA_Outbound_Values_Total/
sec

Shows the number of
object property values
sent to outbound
replication partners.

active_dir.DRA_Pending_Replication_Synchronizations

Shows the number
of directory
synchronizations that
are queued for this
server but not yet
processed.

active_dir.DRA_Sync_Requests_Made

Shows the number
of synchronization
requests made to
neighbors.

active_dir.DS_Threads_in_Use
(featured metric)

Shows the current
number of threads in
use by the directory
service (which is
different from the
number of threads in
the directory service
process). This is the
number of threads
currently servicing
client API calls; it can
be used to indicate

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4386


<!-- page 4387 -->
Active Directory metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

whether additional
processors should be
used.
active_dir.LDAP_Bind_Time
(featured metric)

Shows the time, in
milliseconds, taken
for the last successful
LDAP bind.

active_dir.LDAP_Client_Sessions
(featured metric)

Shows the number of
currently connected
LDAP client sessions.

active_dir.LDAP_Searches/
sec (featured metric)

Shows the rate at
which LDAP clients
perform search
operations.

active_dir.LDAP_Successful_Binds/
sec (featured metric)

Shows the number
of LDAP binds per
second.

Apache Kafka default checks and policies
Agent Client Collector provides the following policies for Apache Kafka health monitoring.
Policies come with the checks specified in the indicated table. Policies and checks are available
for both Windows and Linux.
Apache Kafka Topic Events
Check

Description

Usage

Output

kafka.checkzookeeper-status

Raises a critical event
if the hosted Kafka
Zookeeper is down.

commonchecks
Kafka Zookeeper
check-kafka-zk- Status OK: Kafka
status [flags]
Zookeeper is Up!
Where the flags are:
-p, --port =
Zookeeper Port
(default "2181").
Usage example:
commonchecks
check-kafka-zkstatus -p 2181

kafka.check-topicreplicas

Raises critical
event if any topic
has partitions with
unknown replicas.

commonchecks
check-kafkareplicas [flags]
Where the flags are:

<topic> has partitions
with unknown
replicas. Unknown
replicas are: {"0":
["0"],"1":["0"],"2":["0"]}.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4387


<!-- page 4388 -->
Apache Kafka Topic Events (continued)
Check

Description

Usage

• -p, --port =
Zookeeper Port
(default "2181").
• -d, -detailed = Lists
unknown replicas in
each partition of a
topic.

Output

<topic> has partitions
with unknown
replicas. Unknown
replicas are: {"0":
["0"]}.

• -i, -include_list =
Comma seperated
list to include
topics (allows * wild
character)
• -e, -exclude_list =
Comma seperated
list to exclude
topics (allows * wild
character)
Usage example:
commonchecks
check-kafka-replicas
-H localhost -p
2181 -i "test*" -e
"accTopic,*offsets" -d
kafka.check-topicreplication-factor

Raises critical event
if replication factor
of at least one topic
is above or below
provided replication
factor param.

commonchecks
check-kafka-rf
[flags]
Where the flags are:
• -p, --port =
Zookeeper Port
(default "2181").
• -d, -detailed = Lists
unknown replicas in
each partition of a
topic.

TestTopic has
replication factor 1,
which is less than
expected: 2.
accMetrics has
replication factor 1,
which is less than
expected: 2.

• -i, -include_list =
Comma separated
list to include
topics (allows * wild
character)
• -e, -exclude_list =
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4388


<!-- page 4389 -->
Apache Kafka Topic Events (continued)
Check

Description

Usage

Output

Comma separated
list to exclude
topics (allows * wild
character)
• -r, -replication
factor =
Expected
replication factor for
a topic (default 1)
Examples:
commonchecks
check-kafkapartitions -H
localhost -p
2181 -r 2 -i
"accMetrics,*Topic"
-e "testTopic"
kafka.check-topicleader

Raises critical
event if any topic
has partitions with
unknown leaders or
unpreferred replica as
leader.

commonchecks
check-kafkaleader [flags]
Where the flags are
• -p, --port =
Zookeeper Port
(default "2181").
• -d, -detailed = A
list of partitions
in each topic with
unknown leaders
or unpreferred
replicas.

<topic> contains,
partitions with
unpreferred replica as
leader.(partitions with
unpreferred replicas
are [0]).
<topic> contains,
partitions with
unpreferred replica as
leader.(partitions with
unpreferred replicas
are [0]).

• -i, -include_list =
Comma separated
list to include
topics (allows * wild
character)
• -e, -exclude_list
=Comma separated
list to exclude
topics (allows * wild
character)
Examples:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4389


<!-- page 4390 -->
Apache Kafka Topic Events (continued)
Check

Description

Usage

Output

commonchecks
check-kafkaleader -H
localhost -p
2181 -d -e
"*offsets"
kafka.check-topicpartitions

Raises critical events
if number of partitions
for a topic is less the
min_partitions param.

commonchecks
check-kafkapartitions
[flags]
Where the flags are:
• -p, --port =
Zookeeper Port
(default "2181").
• -P, -min_partitions
= Minimum
partitions for a topic
(default 1).
• -i, -include_list =
Comma separated
list to include
topics (allows * wild
character)
• -e, -exclude_list
=Comma separated
list to exclude
topics (allows * wild
character)

Usage example 1:
commonchecks
check-kafkapartitions -H
localhost -p
2181 -P 3

<topic> has 1
partitions, expected at
least 3.
<topic> has 1
partitions, expected at
least 3.
<topic> has 1
partitions, expected at
least 3.

Usage example 2:
<topic> has 1
commonchecks
partitions, expected at
check-kafkapartitions -H localhost least 3.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4390


<!-- page 4391 -->
Apache Kafka Topic Events (continued)
Check

Description

Usage

Output

-p 2181 -P 3 -i
"accMetrics,*Topic" -e
"testTopic"

<topic> has 1
partitions, expected at
least 3.

Note: Values for include_list and exclude_list parameters have to be wrapped between
double quotes. For example: "test1,*topic".
Apache Kafka Broker Events
Check

Description

Usage

Output

kafka.check-brokerstatus

Raises critical event
if Kafka Broker on the
host is down.

commonchecks
check-kafkabroker-status
[flags]

Kafka Broker Status
OK: Kafka Broker
ubuntu20:9092 is Up!

Where the flags are:
-p, --port = Kafka
Broker port (default
"9092").
Usage example:
commonchecks
check-kafkabroker-status
-p 9092

Apache Kafka Broker Metrics
Check

Description

Usage

Output

kafka.metrics.broker

Collects Kafka Broker
Metrics from the host.

commonchecks
metric-kafkabroker [flags]

hostname.Kafka.Broker.ReplicaManage
0.000

Where the flags are:

hostname.Kafka.Broker.DelayedOperati
627.000

• -J, -javapath = Java hostname.Kafka.Broker.ControllerStats.U
executable path
0.000
(default "java").
hostname.Kafka.Broker.RequestMetrics
• -j, --jmxport
0.000
= JMX Port (default
"9999")
Usage example:
commonchecks
metric-kafkabroker -J
"/usr/bin/java"
-j 9999
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4391


<!-- page 4392 -->
Apache Kafka Zookeeper Metrics
Check

Description

kafka.metrics.zookeeperCollects Zookeeper
Metrics from the host.

Usage

Output

commonchecks
metric-kafkazookeeper [flags]

hostname.Kafka.Zookeeper.outstanding
2.000 1648183249

Where the flag
is: -p, -adminserverport
= Admin Server Port
(default "8085")

hostname.Kafka.Zookeeper.avg_latency
1.05 1648183249

Usage example:
commonchecks
metric-kafkazookeeper -p
8085

hostname.Kafka.Zookeeper.open_file_d
124.000 1648183249

hostname.Kafka.Zookeeper.num_alive_c
1.000 1648183249

Apache Kafka metrics
The following table lists the metrics that are gathered as output from Kafka checks. Entries
indicated as Featured metrics are high-visibility metrics that are displayed in the Operator
Workspace Metric tab after an alert is generated. These metrics provide the operator with
additional information to help them further explore the specified issue.
Broker metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

Kafka.Broker.RequestMetrics.TotalTimeMs.FetchConsumer.Mean
(featured metric)

Total time (in ms) to
serve the Consumer
request.

Kafka.Broker.RequestMetrics.TotalTimeMs.FetchFollower.Mean
(featured metric)

Total time (in ms) to
serve the Follower
request.

Kafka.Broker.RequestMetrics.TotalTimeMs.Produce.Mean
(featured metric)

Total time (in ms) to
serve the Producer
request.

Kafka.Broker.BrokerTopicMetrics.BytesOutPerSec.OneMinuteRate
(featured metric)

Aggregate outgoing
byte rate.

Kafka.Broker.BrokerTopicMetrics.BytesInPerSec.OneMinuteRate
(featured metric)

Aggregate incoming
byte rate.

Kafka.Broker.ReplicaManager.UnderReplicatedPartitions.Value

Number of
unreplicated
partitions.

Kafka.Broker.ReplicaManager.IsrExpandsPerSec.OneMinuteRate

Rate at which the pool
of in-sync replicas
(ISRs) shrinks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4392


<!-- page 4393 -->
Broker metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

Kafka.Broker.ReplicaManager.IsrShrinksPerSec.OneMinuteRate

Rate at which the pool
of in-sync replicas
(ISRs) shrinks.

Kafka.Broker.KafkaController.ActiveControllerCount.Value
(featured metric)

Number of active
controllers in cluster.

Kafka.Broker.KafkaController.OfflinePartitionsCount.Value

Number of offline
partitions.

Kafka.Broker.ControllerStats.LeaderElectionRateAndTimeMs.OneMinuteRate
Leader election rate
(featured metric)
and latency.
Kafka.Broker.ControllerStats.UncleanLeaderElectionsPerSec.OneMinuteRate
Number of unclean
elections per second.
Kafka.Broker.DelayedOperationPurgatory.PurgatorySize.Fetch.Value

Number of requests
waiting in fetch
purgatory.

Kafka.Broker.DelayedOperationPurgatory.PurgatorySize.Produce.Value

Number of requests
waiting in producer
purgatory.

Kafka.Broker.RequestMetrics.RequestsPerSec.Produce.OneMinuteRate Number of producer
(featured metric)
requests per second.
Kafka.Broker.RequestMetrics.RequestsPerSec.FetchConsumer.OneMinuteRate
Number of consumer
(featured metric)
requests per second.
Kafka.Broker.RequestMetrics.RequestsPerSec.FetchFollower.OneMinuteRate
Number of follower
(featured metric)
requests per second.
Zookeeper metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

Kafka.Zookeeper.outstanding_requests
(featured metric)

Number of requests
queued.

Kafka.Zookeeper.avg_latency
(featured metric)

Average amount
of time it takes to
respond to a client
request (in ms).

Kafka.Zookeeper.num_alive_connections
(featured metric)

Number of clients
connected to
ZooKeeper.

Kafka.Zookeeper.open_file_descriptor_count

Number of file
descriptors in use.

Kafka.Zookeeper.pending_syncs

Number of pending
syncs from followers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4393


<!-- page 4394 -->
Zookeeper metrics (continued)
Resource (name of
specific database,
where relevant)

Metric type

Units

Metric type description

Kafka.Zookeeper.followers

Number of active
followers.

AWS Health Monitoring default checks and policies
Agent Client Collector provides the following default checks and policies for AWS monitoring.
AWS Metrics policy
Type

Check

Description

Usage

Metric

aws.metrics-ec2

Returns metrics
of all EC2
instances in a
AWS Datacenter.

metrics-ec2.rb
(options)

Metric

aws.metrics-ebs

Returns metrics
of all EBS
volumes in an
AWS datacenter.

metrics-ebs.rb
(options)

Usage example

./metricsec2.rb -F
"{name:tag:environment,v
-F, --filter
[ENV1,ENV2]}
FILTER String
{name:tag:Name,values:
representation of [Instance1,Instance2]}"
the filter to filter
EC2 instances by Provide the filter
tags.
string along with
double quotes
-b, --batch_size
("") around the
BATCH_SIZE
filter parameter.
Batch size.
Set the
Number of
instances to
batch_size
fetch metrics in
parameter
parallel. (Default according
value: 10)
to the agent
environment.

./metricsebs.rb -F
"{name:tag:environment,v
-F, --filter
[ENV1,ENV2]}
FILTER String
{name:tag:Name,values:
representation of [Volume1,Volume2]}"
the filter to filter
EBS Volumes by Provide filter
Tags.
string along with
double quotes
-b, --batch_size
("") for the filter
BATCH_SIZE
parameter.
Batch size.
Set the
Number of
volumes to fetch batch_size
metrics parallelly. parameter
(Default value:
according
10)
to the agent
environment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4394


<!-- page 4395 -->
AWS Metrics policy (continued)
Type

Check

Description

Usage

Usage example

Metric

aws.metrics-s3

Returns metrics
of all S3 buckets
in an AWS
datacenter.

metrics-s3.rb
(options)

./metricss3.rb -b 5

-b, --batch_size
BATCH_SIZE
Batch size.
Number of
S3 buckets to
fetch metrics in
parallel. (Default
value: 10)

Set the

Metric

Metric

aws.metrics-rds

aws.metricsclassic-elb

Returns metrics
of all RDS
buckets in an
AWS datacenter.

Returns metrics
of all classic
elastic load
balancers in an
AWS datacenter.

metrics-rds.rb
(options)

batch_size
parameter
according
to the agent
environment.

./metricsrds.rb -F
"{name:tag:environment,v
[ENV1,ENV2]}
{name:tag:engine,values:
[MariaDB]}"

-F, --filter
FILTER String
representation of
the filter to filter
Provide the
RDS Instances by filter string with
tags.
double quotes
("") around the
-b, --batch_size
filter parameter.
BATCH_SIZE
Batch size.
Set the
Number of
batch_size
databases to
parameter
fetch metrics in
according
parallel. (Default to the agent
value: 10)
environment.
metrics-elb.rb
(options)
-e, --exclude_lb
EXCLUDE_LB
Exclude metrics
from load
balancers
whose name
contains one
of the comma
separated
strings.
-b, --batch_size
BATCH_SIZE
Batch size.
Number of
databases to
fetch metrics in

./metricselb.rb -t
classic -e
"classic,itom,ip"
-b 10
Provide comma
separated
strings in double
quotes ("") for the

exclude_lb
parameter.
Set the

batch_size
parameter
according
to the agent
environment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4395


<!-- page 4396 -->
AWS Metrics policy (continued)
Type

Check

Description

Usage

Usage example

parallel. (Default
value: 10)
Metric

Metric

aws.metricsnetwork-elb

aws.metricsapplication-elb

Returns metrics
of all network
elastic load
balancers in an
AWS datacenter.

Returns metrics
of all application
elastic load
balancers in an
AWS datacenter.

metrics-elb.rb
(options)
-e, --exclude_lb
EXCLUDE_LB
Exclude metrics
from load
balancers
whose name
contains any
of the comma
separated
strings.

./metricselb.rb -t
network -e
"vpc,itom,ip"
-b 10
Provide comma
separated
strings in double
quotes ("") for the

exclude_lb
parameter.
Set the

-b, --batch_size
BATCH_SIZE
Batch size.
Number of
databases to
fetch metrics in
parallel. (Default
value: 10)

batch_size

metrics-elb.rb
(options)

./metricselb.rb -t
application
-e
"classic,app,ip"
-b 10

-e, --exclude_lb
EXCLUDE_LB
Exclude metrics
from load
balancers
whose name
contains any
one of the string
from comma
separated
strings.
-b, --batch_size
BATCH_SIZE
Batch size.
Number of
databases to
fetch metrics in
parallel. (Default
value: 10)

parameter
according
to the agent
environment.
Do not change
the command
prefix.

Provide comma
separated
strings in double
quotes ("") for the

exclude_lb
parameter.
Set the

batch_size
parameter
according
to the agent
environment.
Do not change
the command
prefix.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4396


<!-- page 4397 -->
AWS Metrics policy (continued)
Type

Check

Description

Usage

Metric

aws.metrics-ec2count

Returns count of
EC2 instances by metrics-ec2instance_type or count.rb (options)
status in an AWS
-s, --scheme
datacenter.
SCHEME Metric
naming scheme,
text to prepend
to metric. Default:
aws.ec2

Usage example

./metricsec2-count.rb
-t status
./metricsec2-count.rb
-t status -s
metric.aws.ec2

-t, --type METRIC
type Count by
type: status,
instance. Default:
instance

AWS DynamoDB metrics
Type

Check

Description

Metric

aws.metricsdynamodb

Monitors
the health of
DynamoDB
tables in an AWS
datacenter.

Usage

e, --exclude_tb
EXCLUDE_TB

Exclude metrics
from tables
whose name
Binds to the
contains a string
DynamoDB table from comma
(cmdb_ci_dynamodb_table)
separated
strings.
b, --batch_size
BATCH_SIZE

Command

metricsdynamodb.rb
-r
{{.labels.params_ci_regi
{{.labels.params_exclude
-f
{{.labels.params_exclude
{{end}}
{{.labels.params_batch_s
-b
{{.labels.params_filter}
{{end}}

Batch size.
Number of tables
to fetch metrics
in parallel.
(Default value:
10)
AWS EC2 metrics
Type

Check

Description

Usage

Metric

aws.metrics-ecscluster

Monitors ECS
clusters in an
AWS datacenter.

-F, --filter FILTER

Binds to the
AWS ECS

Command

metrics-ecscluster.rb
-r
String
representation of {{.labels.params_ci_regi
{{.labels.params_filter}
the filter to filter
-f
ECS clusters by
{{.labels.params_filter}
tags.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4397


<!-- page 4398 -->
AWS EC2 metrics (continued)
Type

Check

Description

Usage

Cluster CI type
b, --batch_size
(cmdb_ci_cloud_ecs_cluster)
BATCH_SIZE
Batch size.
Number of
clusters to
fetch metrics in
parallel. (Default
value: 10)
Metric

aws.metrics-ecsservice

Monitors ECS
services in an
AWS datacenter.

Command

{{end}}
{{.labels.params_batch_s
-b
{{.labels.params_filter}
{{end}}

metrics-ecsservice.rb
-r
String
representation of {{.labels.params_ci_regi
Binds to the
{{.labels.params_filter}
the filter to filter
AWS ECS
-f
ECS clusters by
Service CI type
{{.labels.params_filter}
tags.
(cmdb_ci_cloud_ecs_service)
{{end}}
{{.labels.params_batch_s
b, --batch_size
-b
BATCH_SIZE
{{.labels.params_filter}
Batch size.
{{end}}
Number of
clusters to
fetch metrics in
parallel. (Default
value: 10)
-F, --filter FILTER

Related topics
AWS metrics
AWS metrics
The following tables list and describe the metrics that are gathered as output from the specified
AWS checks. Entries indicated as Featured metrics are high-visibility metrics that are displayed
in the Operator Workspace Metric tab after an alert is generated. These metrics provide the
operator with additional information to help them further explore the specified issue.
aws.metrics-ec2 metrics
Metric Name

Description

aws.ec2.CPUCreditBalance.Average

Number of earned CPU credits that an
instance has accrued since it was launched or
started.

aws.ec2.CPUUtilization.Average

Average percentage of allocated EC2 compute
units that are currently in use on the instance.

aws.ec2.DiskReadOps.Average

Average of completed read operations from
all instance store volumes available to the
instance in a specified time period.

(Featured metric)
aws.ec2.DiskWriteOps.Average

Completed write operations to all instance
store volumes available to the instance in a
specified time period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4398


<!-- page 4399 -->
aws.metrics-ec2 metrics (continued)
Metric Name

Description

(Featured metric)
aws.ec2.DiskReadBytes.Average
(Featured metric)
aws.ec2.DiskWriteBytes.Average
(Featured metric)
aws.ec2.NetworkIn.Average
(Featured metric)
aws.ec2.NetworkOut.Average
(Featured metric)

Average number of bytes read from all
instance store volumes available to the
instance.
Average number of bytes written to all
instance store volumes available to the
instance.
Average number of bytes received by the
instance on all network interfaces. This metric
identifies the volume of incoming network
traffic to a single instance.
Average number of bytes sent out by the
instance on all network interfaces. This metric
identifies the volume of outgoing network
traffic from a single instance.

aws.ec2.NetworkPacketsIn.Average

Average number of packets received by the
instance on all network interfaces. This metric
identifies the volume of incoming traffic in
terms of the number of packets on a single
instance.

aws.ec2.NetworkPacketsOut.Average

Average number of packets sent out by the
instance on all network interfaces. This metric
identifies the volume of outgoing traffic in
terms of the number of packets on a single
instance.

aws.ec2.MetadataNoToken.Average

Average number of times the instance
metadata service was successfully accessed
using a method that does not use a token.

aws.ec2.CPUCreditUsage.Average

Average number of CPU credits spent by the
instance for CPU utilization.

aws.ec2.CPUSurplusCreditBalance.Average

Average number of surplus credits that have
been spent by an unlimited instance when its
CPUCreditBalance value is zero.

aws.ec2.CPUSurplusCreditsCharged.Average

Average number of spent surplus credits that
are not paid down by earned CPU credits, and
which thus incur an additional charge.

aws.ec2.StatusCheckFailed_Instance.Average Reports whether the instance has passed the
instance status check in the last minute.
aws.ec2.StatusCheckFailed_System.Average

Reports whether the instance has passed the
system status check in the last minute.

aws.ec2.StatusCheckFailed.Average

Reports whether the instance has passed
both the instance status check and the system
status check in the last minute.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4399


<!-- page 4400 -->
aws.metrics-ebs metrics
Metric Name

Description

aws.ebs.VolumeReadBytes.Average

Average total number of bytes transferred
during the period while reading.

(Featured metric)
aws.ebs.VolumeWriteBytes.Average
(Featured metric)
aws.ebs.VolumeReadOps.Average
(Featured metric)
aws.ebs.VolumeWriteOps.Average
(Featured metric)
aws.ebs.VolumeTotalReadTime.Average
(Featured metric)
aws.ebs.VolumeTotalWriteTime.Average
(Featured metric)

Average total number of bytes transferred
during the period while writing.
Average total number of read operations in a
specified time period.
Average total number of write operations in a
specified time period.
Average total number of seconds spent by all
read operations completed in a specified time
period.
Average of total number of seconds spent by
all write operations completed in a specified
time period.

aws.ebs.VolumeIdleTime.Average

Average of total number of seconds in a
specified time period when no read or write
operations were submitted.

aws.ebs.VolumeQueueLength.Average

Average number of read and write operation
requests waiting to be completed in a
specified time period.

aws.ebs.VolumeThroughputPercentage.Average Average percentage of I/O operations per
second (IOPS) delivered of the total IOPS
provisioned for an Amazon EBS volume.
aws.ebs.VolumeConsumedReadWriteOps.Average
Average total amount of read and write
operations (normalized to 256K capacity units)
consumed in a specified time period.
aws.ebs.BurstBalance.Average

Average percentage of I/O credits (for gp2) or
throughput credits (for st1 and sc1) remaining
in the burst bucket.

aws.metrics-s3 metrics
Metric Name

Description

aws.s3.NumberOfObjects.Average

Average total number of objects stored in a
bucket for all storage classes.

(Featured metric)

Collected every 12 hours.
aws.s3.BucketSizeBytes.Average
(Featured metric)

Average amount of data in bytes stored in a
bucket in the STANDARD storage class.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4400


<!-- page 4401 -->
aws.metrics-s3 metrics (continued)
Metric Name

Description

Collected every 12 hours.

aws.metrics-rds metrics
Metric Name

Description

aws.rds.BinLogDiskUsage.Average

Average amount of disk space occupied by
binary logs on the primary. Applies to MySQL
read replicas.

aws.rds.BurstBalance.Average

Average percent of General Purpose SSD
(gp2) burst-bucket I/O credits available.

aws.rds.CPUUtilization.Average

Average percentage of CPU utilization.

(Featured metric)
aws.rds.CPUCreditUsage.Average

Average number of CPU credits spent by the
instance for CPU utilization.

aws.rds.CPUCreditBalance.Average

Average number of surplus credits that have
been spent by an unlimited instance when its
CPUCreditBalance value is zero.

aws.rds.DatabaseConnections.Average

Average number of database connections in
use.

(Featured metric)
aws.rds.DiskQueueDepth.Average
(Featured metric)

Average number of outstanding I/Os (read/
write requests) waiting to access the disk.

aws.rds.EBSByteBalance%.Average

Average percentage of throughput credits
remaining in the burst bucket of your RDS
database.

aws.rds.EBSIOBalance%.Average

Average percentage of I/O credits remaining in
the burst bucket of your RDS database.

aws.rds.FailedSQLServerAgentJobsCount.Average
Average number of failed Microsoft SQL
Server Agent jobs during the last minute.
(Featured metric)
aws.rds.FreeableMemory.Average
(Featured metric)
aws.rds.FreeStorageSpace.Average

Average amount of available random access
memory.
Average amount of available storage space.

aws.rds.MaximumUsedTransactionIDs.Average Average amount of maximum transaction IDs
that have been used. Applies to PostgreSQL.
aws.rds.NetworkReceiveThroughput.Average
(Featured metric)

Average incoming (receive) network traffic
on the DB instance, including both customer
database traffic and Amazon RDS traffic used
for monitoring and replication.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4401


<!-- page 4402 -->
aws.metrics-rds metrics (continued)
Metric Name

Description

aws.rds.NetworkTransmitThroughput.Average

Average outgoing (transmit) network traffic
on the DB instance, including both customer
database traffic and Amazon RDS traffic used
for monitoring and replication.

(Featured metric)
aws.rds.OldestReplicationSlotLag.Average

Average lagging size of the replica lagging the
most in terms of write-ahead log (WAL) data
received. Applies to PostgreSQL.

aws.rds.ReadIOPS.Average

Average number of disk read I/O operations
per second.

aws.rds.ReadLatency.Average

Average amount of time taken per disk I/O
operation.

(Featured metric)
aws.rds.ReadThroughput.Average

Average number of bytes read from disk per
second.

aws.rds.ReplicaLag.Average

Average amount of time a read replica
DB instance lags behind the source DB
instance. Applies to MySQL, MariaDB, Oracle,
PostgreSQL, and SQL Server read replicas.

aws.rds.ReplicationSlotDiskUsage.Average

Average amount of disk space used by
replication slot files. Applies to PostgreSQL.

aws.rds.SwapUsage.Average

Average amount of swap space used on the
DB instance. This metric is not available for
SQL Server.

aws.rds.TransactionLogsDiskUsage.Average

Average disk space used by transaction logs.
Applies to PostgreSQL.

aws.rds.TransactionLogsGeneration.Average

Average size of transaction logs generated per
second. Applies to PostgreSQL.

aws.rds.WriteIOPS.Average

Average number of disk write I/O operations
per second.

aws.rds.WriteLatency.Average

Average amount of time taken per disk I/O
operation.

(Featured metric)
aws.rds.WriteThroughput.Average

Average number of bytes written to disk per
second.

aws.rds.CPUSurplusCreditBalance.Average

Average number of surplus credits that have
been spent by an unlimited instance when its
CPUCreditBalance value is zero.

aws.rds.CPUSurplusCreditsCharged.Average

Average number of spent surplus credits that
are not paid down by earned CPU credits, and
which therefore incur an additional charge.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4402


<!-- page 4403 -->
aws.metrics-classic-elb metrics
Metric Name

Description

aws.classicElb.EstimatedALBActiveConnectionCount.Average
Average estimated number of concurrent TCP
connections active from clients to the load
(Featured metric)
balancer and from the load balancer to targets.
aws.classicElb.EstimatedALBConsumedLCUs.Average
Average estimated number of load balancer
capacity units (LCU) used by an Application
Load Balancer. You pay for the number of LCUs
that you use per hour.
aws.classicElb.EstimatedALBNewConnectionCount.Average
Average estimated number of new TCP
connections established from clients to the
(Featured metric)
load balancer and from the load balancer to
targets.
aws.classicElb.EstimatedProcessedBytes.Average
Estimated number of bytes processed by an
Application Load Balancer.
aws.classicElb.DesyncMitigationMode_NonCompliant_Request_Count.Sum
Number of requests that do not comply with
RFC 7230.
aws.classicElb.HTTPCode_ELB_5XX.Sum
(Featured metric)
aws.classicElb.HTTPCode_ELB_4XX.Sum
(Featured metric)

Number of HTTP 4XX client error codes
generated by the load balancer.
Number of HTTP 5XX server error codes
generated by the load balancer.

aws.classicElb.SurgeQueueLength.Maximum

Maximum total number of requests (HTTP
listener) or connections (TCP listener) that
are pending routing to a healthy instance. The
maximum size of the queue is 1,024. Additional
requests or connections are rejected when the
queue is full.

aws.classicElb.SpilloverCount.Sum

Total number of requests rejected because the
surge queue is full.

(Featured metric)
aws.classicElb.RequestCount.Sum

Total number of requests completed or
connections made during the specified
interval.

aws.classicElb.Latency.Average

Average total time elapsed, in seconds, from
the time the load balancer sent the request to
a registered instance until the instance started
to send the response headers.

(Featured metric)

aws.classicElb.BackendConnectionErrors.Sum Total number of connections that were not
successfully established between the load
(Featured metric)
balancer and the registered instances.
aws.classicElb.HealthyHostCount.Average

Average number of healthy instances
registered with your load balancer. A newly
registered instance is considered healthy after
it passes the first health check.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4403


<!-- page 4404 -->
aws.metrics-classic-elb metrics (continued)
Metric Name

Description

aws.classicElb.UnHealthyHostCount.Average

Average of number of unhealthy instances
registered with your load balancer. An
instance is considered unhealthy after it
exceeds the unhealthy threshold configured
for health checks.

aws.metrics-network-elb
Metric Name

Description

aws.networkElb.ActiveFlowCount.Average

Average total number of concurrent flows
(or connections) from clients to targets. This
metric includes connections in the SYN_SENT
and ESTABLISHED states.

(Featured metric)

aws.networkElb.ActiveFlowCount_TCP.Average Average total number of concurrent TCP
flows (or connections) from clients to targets.
(Featured metric)
This metric includes only connections in the
ESTABLISHED state.
aws.networkElb.ActiveFlowCount_TLS.Average Average total number of concurrent TLS
flows (or connections) from clients to targets.
(Featured metric)
This metric includes only connections in the
ESTABLISHED state.
aws.networkElb.ActiveFlowCount_UDP.Average Average total number of concurrent UDP flows
(or connections) from clients to targets.
(Featured metric)
aws.networkElb.ClientTLSNegotiationErrorCount.Sum
Average total number of TLS handshakes that
failed during negotiation between a client and
(Featured metric)
a TLS listener.
aws.networkElb.ConsumedLCUs.Average

Average number of load balancer capacity
units (LCU) used by your load balancer.

aws.networkElb.ConsumedLCUs_TCP.Average

Average number of load balancer capacity
units (LCU) used by your load balancer for TCP.

aws.networkElb.ConsumedLCUs_TLS.Average

Average number of load balancer capacity
units (LCU) used by your load balancer for TLS.

aws.networkElb.ConsumedLCUs_UDP.Average

Average number of load balancer capacity
units (LCU) used by your load balancer for
UDP.

aws.networkElb.HealthyHostCount.Maximum

The maximum number of targets that are
considered healthy.

(Featured metric)
aws.networkElb.NewFlowCount.Sum
(Featured metric)

Total number of new flows (or connections)
established from clients to targets in the time
period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4404


<!-- page 4405 -->
aws.metrics-network-elb (continued)
Metric Name

Description

aws.networkElb.NewFlowCount_TCP.Sum

Total number of new TCP flows (or
connections) established from clients to
targets in the time period.

(Featured metric)
aws.networkElb.NewFlowCount_TLS.Sum
(Featured metric)
aws.networkElb.NewFlowCount_UDP.Sum
(Featured metric)

Total number of new TLS flows (or
connections) established from clients to
targets in the time period.
Total number of new UDP flows (or
connections) established from clients to
targets in the time period.

aws.networkElb.PeakBytesPerSecond.Maximum Maximum average throughput (bytes per
second), calculated every 10 seconds during
(Featured metric)
the sampling window. This metric includes
health check traffic.
aws.networkElb.PeakPacketsPerSecond.Maximum
Maximum average packet rate (packets
processed per second), calculated every 10
(Featured metric)
seconds during the sampling window. This
metric includes health check traffic.
aws.networkElb.ProcessedBytes.Sum

Total number of bytes processed by the load
balancer, including TCP/IP headers. This count
includes traffic to and from targets, minus
health check traffic.

aws.networkElb.ProcessedBytes_TCP.Sum

Total number of bytes processed by TCP
listeners.

aws.networkElb.ProcessedBytes_TLS.Sum

Total number of bytes processed by TLS
listeners.

aws.networkElb.ProcessedBytes_UDP.Sum

Total number of bytes processed by UDP
listeners.

aws.networkElb.ProcessedPackets.Sum

Total number of packets processed by the
load balancer. This count includes traffic
to and from targets, including health check
traffic.

aws.networkElb.TargetTLSNegotiationErrorCount.Sum
Total number of TLS handshakes that failed
during negotiation between a TLS listener and
(Featured metric)
a target.
aws.networkElb.TCP_Client_Reset_Count.Sum

Total number of reset (RST) packets sent
from a client to a target. These resets are
generated by the client and forwarded by the
load balancer.

aws.networkElb.TCP_ELB_Reset_Count.Sum

Total number of reset (RST) packets generated
by the load balancer.

aws.networkElb.TCP_Target_Reset_Count.Sum Total number of reset (RST) packets sent
from a target to a client. These resets are
generated by the target and forwarded by the
load balancer.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4405


<!-- page 4406 -->
aws.metrics-network-elb (continued)
Metric Name

Description

aws.networkElb.UnHealthyHostCount.Maximum Maximum number of targets that can be
considered unhealthy.
(Featured metric)

aws.metrics-application-elb metrics
Metric Name

Description

aws.applicationElb.ActiveConnectionCount.SumTotal number of concurrent TCP connections
active from clients to the load balancer and
(Featured metric)
from the load balancer to targets.
aws.applicationElb.ClientTLSNegotiationErrorCount.Sum
Total number of TLS connections initiated by
the client that did not establish a session with
(Featured metric)
the load balancer due to a TLS error.
aws.applicationElb.ConsumedLCUs.Average

The average number of load balancer capacity
units (LCU) used by your load balancer. You
pay for the number of LCUs that you use per
hour. For more information, see Elastic Load
Balancing pricing.

aws.applicationElb.DesyncMitigationMode_NonCompliant_Request_Count.Sum
Total number of requests that do not comply
with RFC 7230.
(Featured metric)
aws.applicationElb.DroppedInvalidHeaderRequestCount.Average
Average number of requests where the
load balancer removed HTTP headers
(Featured metric)
with header fields that are not valid
before routing the request. The load
balancer removes these headers only if the
routing.http.drop_invalid_header_fields.enabled
attribute is set to true.
aws.applicationElb.ForwardedInvalidHeaderRequestCount.Average
Average number of requests routed
by the load balancer that had HTTP
(Featured metric)
headers with header fields that are
not valid. The load balancer forwards
requests with these headers only if the
routing.http.drop_invalid_header_fields.enabled
attribute is set to false.
aws.applicationElb.GrpcRequestCount.Sum

Total number of gRPC requests processed
over IPv4 and IPv6.

aws.applicationElb.HTTP_Fixed_Response_Count.Sum
Total number of fixed-response actions that
were successful.
aws.applicationElb.HTTP_Redirect_Count.Sum Total number of redirect actions that were
successful.
aws.applicationElb.HTTP_Redirect_Url_Limit_Exceeded_Count.Sum
Total number of redirect actions that couldn't
be completed because the URL in the
(Featured metric)
response location header is larger than 8K.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4406


<!-- page 4407 -->
aws.metrics-application-elb metrics (continued)
Metric Name

Description

aws.applicationElb.HTTPCode_ELB_3XX_Count.Sum
Total number of HTTP 3XX redirection codes
that originate from the load balancer. This
(Featured metric)
count does not include response codes
generated by targets.
aws.applicationElb.HTTPCode_ELB_4XX_Count.Sum
Total number of HTTP 4XX client error codes
that originate from the load balancer. This
(Featured metric)
count does not include response codes
generated by targets.
aws.applicationElb.HTTPCode_ELB_5XX_Count.Sum
Total number of HTTP 5XX server error codes
that originate from the load balancer. This
(Featured metric)
count does not include any response codes
generated by the targets.
aws.applicationElb.HTTPCode_ELB_500_Count.Sum
Total number of HTTP 500 error codes that
originate from the load balancer.
(Featured metric)
aws.applicationElb.HTTPCode_ELB_502_Count.Sum
Total number of HTTP 502 error codes that
originate from the load balancer.
(Featured metric)
aws.applicationElb.HTTPCode_ELB_503_Count.Sum
Total number of HTTP 503 error codes that
originate from the load balancer.
(Featured metric)
aws.applicationElb.HTTPCode_ELB_504_Count.Sum
Total number of HTTP 504 error codes that
originate from the load balancer.
(Featured metric)
aws.applicationElb.IPv6ProcessedBytes.Sum

Total number of bytes processed by the load
balancer over IPv6.

aws.applicationElb.IPv6RequestCount.Sum

Total number of IPv6 requests received by the
load balancer.

aws.applicationElb.NewConnectionCount.Sum Total number of new TCP connections
established from clients to the load balancer
and from the load balancer to targets.
aws.applicationElb.NonStickyRequestCount.SumTotal number of requests where the load
balancer chose a new target because it
couldn't use an existing sticky session.
aws.applicationElb.ProcessedBytes.Sum
(Featured metric)

Total number of bytes processed by the load
balancer over IPv4 and IPv6.

aws.applicationElb.RejectedConnectionCount.Sum
Total number of connections that were
rejected because the load balancer had
(Featured metric)
reached its maximum number of connections.
aws.applicationElb.RequestCount.Sum

Total number of requests processed over IPv4
and IPv6.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4407


<!-- page 4408 -->
aws.metrics-application-elb metrics (continued)
Metric Name

Description

aws.applicationElb.RuleEvaluations.Sum

Total number of rules processed by the load
balancer given a request rate averaged over
an hour.

aws.metrics-ec2-count metrics
Metric Name

Description

aws.ec2.types.<type_name>

Count of EC2 instances for the specified type
in AWS Datacenter.

aws.ec2.status.running

Count of EC2 instances in Active state in an
AWS Datacenter.

aws.ec2.status.stopped

Count of EC2 instances in Stopped state in an
AWS Datacenter.

aws.ec2.status.total

Count of all EC2 instances in an AWS
Datacenter.

aws.metrics-dynamodb metrics
Metric Name

Description

aws.dynamodb.ConsumedWriteCapacityUnits.Average
Number of write capacity units consumed over
the specified time period, for tracking how
(Featured metric)
much provisioned throughput is used.
aws.dynamodb.ConsumedReadCapacityUnits.Average
Number of read capacity units consumed over
the specified time period, for tracking how
(Featured metric)
much provisioned throughput is used.
aws.dynamodb.ProvisionedWriteCapacityUnits.Average
Number of provisioned write capacity units for
a table.
(Featured metric)
aws.dynamodb.ProvisionedReadCapacityUnits.Average
Number of provisioned read capacity units for
a table.
(Featured metric)
aws.dynamodb.SuccessfulRequestLatency.GetItem.Average
Successful requests to DynamoDB or Amazon
DynamoDB streams during the specified time
(Featured metric)
period. Run by a GetItem operation.
aws.dynamodb.SuccessfulRequestLatency.BatchGetItem.Average
Successful requests to DynamoDB or Amazon
DynamoDB streams during the specified time
period. Run by a BatchGetItem operation.
aws.dynamodb.SuccessfulRequestLatency.PutItem.Average
Successful requests to DynamoDB or Amazon
DynamoDB streams during the specified time
(Featured metric)
period. Run by a PutItem operation.
aws.dynamodb.SuccessfulRequestLatency.BatchPutItem.Average
Successful requests to DynamoDB or Amazon
DynamoDB streams during the specified time
period. Run by a BatchPutItem operation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4408


<!-- page 4409 -->
aws.metrics-dynamodb metrics (continued)
Metric Name

Description

aws.dynamodb.SuccessfulRequestLatency.Query.Average
Successful requests to DynamoDB or Amazon
DynamoDB streams during the specified time
period. Run by a Query operation.
aws.dynamodb.SuccessfulRequestLatency.Scan.Average
Successful requests to DynamoDB or Amazon
DynamoDB Streams during the specified time
period. Run by a Scan operation.
aws.dynamodb.ReturnedItemCount.Scan.Average
Number of items returned by Scan operations
during the specified time period.
aws.dynamodb.ReturnedItemCount.Query.Average
Number of items returned by Query operations
during the specified time period.
aws.dynamodb.UserErrors.Average
(Featured metric)

Requests to DynamoDB or Amazon
DynamoDB streams that generate an HTTP
400 status code during the specified time
period. An HTTP 400 usually indicates
a client-side error, such as an invalid
combination of parameters, an attempt to
update a nonexistent table, or an incorrect
request signature.

aws.dynamodb.SystemErrors.GetItem.Average Requests to DynamoDB or Amazon
DynamoDB streams that generate an HTTP
(Featured metric)
500 status code during the specified time
period. An HTTP 500 usually indicates an
internal service error. Run by a GetItem
operation.
aws.dynamodb.SystemErrors.Scan.Average

The requests to DynamoDB or Amazon
DynamoDB streams that generate an HTTP
500 status code during the specified time
period. An HTTP 500 usually indicates an
internal service error. Run by a Scan operation.

aws.dynamodb.SystemErrors.Query.Average

Requests to DynamoDB or Amazon
DynamoDB streams that generate an HTTP
500 status code during the specified time
period. An HTTP 500 usually indicates
an internal service error. Run by a Query
operation.

aws.dynamodb.SystemErrors.BatchGetItem.Average
Requests to DynamoDB or Amazon
DynamoDB streams that generate an HTTP
500 status code during the specified time
period. An HTTP 500 usually indicates an
internal service error. Run by a BatchGet
operation.
aws.dynamodb.SystemErrors.PutItem.Average
(Featured metric)

Requests to DynamoDB or Amazon
DynamoDB streams that generate an HTTP
500 status code during the specified time
period. An HTTP 500 usually indicates an
internal service error. Run by a PutItem
operation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4409


<!-- page 4410 -->
aws.metrics-dynamodb metrics (continued)
Metric Name

Description

aws.dynamodb.SystemErrors.UpdateItem.Average
The requests to DynamoDB or Amazon
DynamoDB streams that generate an HTTP
500 status code during the specified time
period. An HTTP 500 usually indicates an
internal service error. Run by an UpdateItem
operation.
aws.dynamodb.SystemErrors.DeleteItem.AverageRequests to DynamoDB or Amazon
DynamoDB streams that generate an HTTP
500 status code during the specified time
period. An HTTP 500 usually indicates an
internal service error. Run by a DeleteItem
operation.
aws.dynamodb.SystemErrors.BatchWriteItem.Average
Requests to DynamoDB or Amazon
DynamoDB streams that generate an HTTP
500 status code during the specified time
period. An HTTP 500 usually indicates an
internal service error. Run by a BatchWrite
operation.
aws.dynamodb.ConditionalCheckFailedRequests.Average
Number of failed attempts to perform
conditional writes.
(Featured metric)
aws.dynamodb.TimeToLiveDeletedItemCount.Average
Number of items deleted by Time to Live (TTL)
during the specified time period. This metric
helps you monitor the rate of TTL deletions on
your table.
aws.dynamodb.TransactionConflict.Average

Rejected item-level requests due to
transactional conflicts between concurrent
requests on the same items.

aws.dynamodb.ReadThrottleEvents.Average

Requests to DynamoDB that exceed the
provisioned read capacity units for a table.

(Featured metric)
aws.dynamodb.WriteThrottleEvents.Average
(Featured metric)

Requests to DynamoDB that exceed the
provisioned write capacity units for a table.

aws.dynamodb.ThrottledRequests.GetItem.Average
Requests to DynamoDB that exceed the
provisioned throughput limits on a resource for
a GetItem operation.
aws.dynamodb.ThrottledRequests.PutItem.Average
Requests to DynamoDB that exceed the
provisioned throughput limits on a resource for
a PutItem operation.
aws.dynamodb.ThrottledRequests.DeleteItem.Average
Requests to DynamoDB that exceed the
provisioned throughput limits on a resource for
a DeleteItem operation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4410


<!-- page 4411 -->
aws.metrics-dynamodb metrics (continued)
Metric Name

Description

aws.dynamodb.ThrottledRequests.UpdateItem.Average
Requests to DynamoDB that exceed the
provisioned throughput limits on a resource for
an UpdateItem operation.
aws.dynamodb.ThrottledRequests.BatchGetItem.Average
Requests to DynamoDB that exceed the
provisioned throughput limits on a resource for
a BatchGetItem operation.
aws.dynamodb.ThrottledRequests.Scan.AverageRequests to DynamoDB that exceed the
provisioned throughput limits on a resource for
a Scan operation.
aws.dynamodb.ThrottledRequests.Query.AverageRequests to DynamoDB that exceed the
provisioned throughput limits on a resource for
a Query operation.
aws.dynamodb.ThrottledRequests.BatchWriteItem.Average
Requests to DynamoDB that exceed the
provisioned throughput limits on a resource for
a BatchWriteItem operation.
aws.dynamodb.SuccessfulRequestLatency.GetRecords.Average
The successful requests to DynamoDB or
Amazon DynamoDB Streams during the
specified time period. Run by a GetRecords
operation.
aws.dynamodb.ReturnedBytes.GetRecords.Average
The number of bytes returned by GetRecords
operations (Amazon DynamoDB streams)
during the specified time period.
aws.dynamodb.ReturnedRecordsCount.GetRecords.Average
The number of stream records returned by
GetRecords operations (Amazon DynamoDB
streams) during the specified time period.
aws.metrics-ecs-cluster metrics
Metric

Description

aws.ecs.cluster.CPUReservation.Average

Percentage of CPU units reserved by running
tasks in the cluster.

(Featured metric)
aws.ecs.cluster.CPUUtilization.Average

Percentage of CPU units used in the cluster.

(Featured metric)
aws.ecs.cluster.MemoryReservation.Average
(Featured metric)
aws.ecs.cluster.MemoryUtilization.Average

Percentage of memory reserved by running
tasks in the cluster.
Percentage of memory used in the cluster.

(Featured metric)
aws.ecs.cluster.CpuReserved.Average

CPU units reserved by tasks in the cluster.

aws.ecs.cluster.CpuUtilized.Average

CPU units used by tasks in the cluster.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4411


<!-- page 4412 -->
aws.metrics-ecs-cluster metrics (continued)
Metric

Description

aws.ecs.cluster.NetworkRxBytes.Average

Number of bytes received by the cluster.

(Featured metric)
aws.ecs.cluster.NetworkTxBytes.Average

Number of bytes transmitted by the cluster.

(Featured metric)
aws.ecs.cluster.EphemeralStorageReserved.Average
Ephemeral storage is the volatile temporary
storage attached to your instances, present
only during the running lifetime of the
instance.
aws.ecs.cluster.MemoryUtilized.Average

Memory being used by tasks in the cluster.

(Featured metric)
aws.ecs.cluster.MemoryReserved.Average

Memory reserved by tasks in the cluster.

(Featured metric)
aws.ecs.cluster.StorageReadBytes.Average
(Featured metric)
aws.ecs.cluster.StorageWriteBytes.Average
(Featured metric)

Number of bytes read from storage in the
cluster.
Number of bytes written to storage in the
cluster.

aws.ecs.cluster.ContainerInstanceCount.AverageNumber of EC2 instances running the Amazon
ECS agent that are registered with a cluster.
(Featured metric)
aws.ecs.cluster.ServiceCount.Average

Number of services in the cluster.

(Featured metric)
aws.ecs.cluster.TaskCount.Average

Number of tasks running in the cluster.

aws.metrics-ecs-service metrics
Metric

Description

aws.ecs.service.CPUUtilization.Average

Percentage of CPU units used in the service.

(Featured metric)
aws.ecs.service.MemoryUtilization.Average

Percentage of memory used in the service.

(Featured metric)
aws.ecs.service.CpuReserved.Average

CPU units reserved by tasks in the service.

aws.ecs.service.CpuUtilized.Average

CPU units used by tasks in the service.

aws.ecs.service.NetworkRxBytes.Average

Number of bytes received by the service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4412


<!-- page 4413 -->
aws.metrics-ecs-service metrics (continued)
Metric

Description

(Featured metric)
aws.ecs.service.NetworkTxBytes.Average

Number of bytes transmitted by the service.

(Featured metric)
aws.ecs.service.EphemeralStorageReserved.Average
Ephemeral storage is the volatile temporary
storage attached to your instances which is
present only during the running lifetime of the
instance.
aws.ecs.service.MemoryUtilized.Average

Memory being used by tasks in the service.

aws.ecs.service.MemoryReserved.Average

Memory reserved by tasks in the service.

aws.ecs.service.StorageReadBytes.Average

Number of bytes read from storage in the
service.

(Featured metric)
aws.ecs.service.StorageWriteBytes.Average
(Featured metric)
aws.ecs.service.RunningTaskCount.Average
(Featured metric)

Number of bytes written to storage in the
service.
Number of tasks currently in the RUNNING
state.

aws.ecs.service.DeploymentCount.Average

Number of deployments in an Amazon ECS
service.

aws.ecs.service.DesiredTaskCount.Average

Desired number of tasks for an Amazon ECS
service.

(Featured metric)
aws.ecs.service.TaskSetCount.Average

Number of task sets in the service.

(Featured metric)
aws.ecs.service.PendingTaskCount.Average
(Featured metric)

Number of tasks currently in the PENDING
state.

Azure Health Monitoring default checks and policies
Agent Client Collector provides the following default checks and policies for Azure health
monitoring.
Azure k8s Metrics
Type

Check

Description

Metric

azure.metrics-k8sservice

Provides pod, nodes,
and cluster level
metrics from all Azure
Kubernetes services
in metric form.

Command

metricsazure-k8sservice.rb -r
{{.labels.params_ci_region}
{{-s
© 2025 ServiceNow, Inc. All rights reserved.
4413
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.


<!-- page 4414 -->
Azure k8s Metrics (continued)
Type

Check

Description

Command

Usage: metrics-azurek8s-service.rb

{{if.labels.params_subscrip
-S
{{.labels.params_subscripti
{{end}}

-S,
-subscription
ID ARM
Subscription
ID
-r, Region

Example: metricsazure-k8sservice.rb -S
{{.labels.params_subscription_id}}
-r westus2
Azure metrics
The following tables list and describe the metrics that are gathered as output from Azure checks.
Entries indicated as Featured metrics are high-visibility metrics that are displayed in the
Operator Workspace Metric tab after an alert is generated. These metrics provide the operator
with additional information to help them further explore the specified issue.
Azure Kubernetes Service check metrics
Metric Name

Description

apiserver_current_inflight_requests

Maximum number of currently used inflight
requests on the API server per request kind in
the past second.

(Featured metric)
cluster_autoscaler_cluster_safe_to_autoscale

Determines whether cluster autoscaler takes
action on the cluster.

cluster_autoscaler_scale_down_in_cooldown

Determines if the scale down is in cooldown;
no nodes are removed during this timeframe.

cluster_autoscaler_unschedulable_pods_count Number of pods that are currently not able to
be scheduled in the cluster.
kube_node_status_allocatable_cpu_cores
(Featured metric)

Total number of available CPU cores in a
managed cluster.

kube_node_status_allocatable_memory_bytes Total amount of available memory in a
managed cluster.
(Featured metric)
kube_node_status_condition

Statuses for various node conditions.

(Featured metric)
kube_pod_status_phase

Number of pods by phase.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4414


<!-- page 4415 -->
Azure Kubernetes Service check metrics (continued)
Metric Name

Description

(Featured metric)
kube_pod_status_ready

Number of pods in Ready state.

(Featured metric)
node_cpu_usage_millicores
(Featured metric)
node_cpu_usage_percentage
(Featured metric)

Aggregated measurement of CPU utilization in
millicores across the cluster.
Aggregated average CPU utilization measured
in percentage across the cluster.

node_disk_usage_bytes

Number of disk space bytes in use by device.

node_disk_usage_percentage

Percentage of disk space used by device.

(Featured metric)
node_memory_rss_bytes

Number of container RSS memory bytes in
use.

node_memory_rss_percentage

Percentage of container RSS memory in use.

(Featured metric)
node_memory_working_set_bytes

Number of container working set memory
bytes in use.

node_memory_working_set_percentage

Percentage of container working set memory
in use.

(Featured metric)
node_network_in_bytes

Network received bytes.

(Featured metric)
node_network_out_bytes

Network transmitted bytes.

(Featured metric)

Azure VM CPU metrics
Metric Name

Description

Percentage CPU

The percentage of allocated compute
units that are currently in use by the Virtual
Machine(s).

(Featured metric)
CPU Credits Remaining

Total number of credits available to burst. Only
available on B-series burstable VMs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4415


<!-- page 4416 -->
Azure VM CPU metrics (continued)
Metric Name

Description

CPU Credits Consumed

Total number of credits consumed by the
Virtual Machine. Only available on B-series
burstable VM.

Azure VM Network metrics
Metric Name

Description

Network In

The number of billable bytes received on all
network interfaces by the Virtual Machines
(Incoming Traffic) (Deprecated).

(Featured metric)
Network Out
(Featured metric)
Network In Total
(Featured metric)
Network Out Total
(Featured metric)

The number of billable bytes out on all network
interfaces by the Virtual Machines (Outgoing
Traffic) (Deprecated).
The number of bytes received on all network
interfaces by the Virtual Machines (Incoming
Traffic).
The number of bytes out on all network
interfaces by the Virtual Machines (Outgoing
Traffic).

Azure VM Disk metrics
Metric Name

Description

Disk Read Bytes

Bytes read from disk during monitoring period.

(Featured metric)
Disk Write Bytes

Bytes written to disk during monitoring period.

(Featured metric)
Disk Read Operations/Sec

Disk Read IOPS.

(Featured metric)
Disk Write Operations/Sec

Disk Write IOPS.

(Featured metric)
Data Disk Read Bytes/sec
(Featured metric)
Data Disk Write Bytes/sec
(Featured metric)
Data Disk Read Operations/Sec

Bytes per second read from a single disk
during monitoring period.
Bytes per second written to a single disk
during monitoring period.
Read IOPS from a single disk during
monitoring period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4416


<!-- page 4417 -->
Azure VM Disk metrics (continued)
Metric Name

Description

(Featured metric)
Data Disk Write Operations/Sec
(Featured metric)
Data Disk Bandwidth Consumed Percentage
(Featured metric)
Data Disk IOPS Consumed Percentage
(Featured metric)
Data Disk Target Bandwidth
(Featured metric)
Data Disk Target IOPS
(Featured metric)
Data Disk Max Burst Bandwidth
(Featured metric)
Data Disk Max Burst IOPS
(Featured metric)

Write IOPS from a single disk during
monitoring period.
Percentage of data disk bandwidth consumed
per minute.
Percentage of data disk I/Os consumed per
minute.
Baseline bytes per second throughput Data
Disk can achieve without bursting.
Baseline IOPS Data Disk can achieve without
bursting.
Maximum bytes per second throughput Data
Disk can achieve with bursting.
Maximum IOPS Data Disk can achieve with
bursting.

Data Disk Used Burst BPS Credits Percentage

Percentage of Data Disk burst bandwidth
credits used so far.

Data Disk Used Burst IO Credits Percentage

Percentage of Data Disk burst I/O credits used
so far.

Premium Data Disk Cache Read Hit

Premium Data Disk Cache Read Hit.

(Featured metric)
Premium Data Disk Cache Read Miss

Premium Data Disk Cache Read Miss.

(Featured metric)
Premium OS Disk Cache Read Hit

Premium OS Disk Cache Read Hit.

(Featured metric)
Premium OS Disk Cache Read Miss

Premium OS Disk Cache Read Miss.

(Featured metric)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4417


<!-- page 4418 -->
Azure VM Flow metrics
Metric Name

Description

Inbound Flows

Inbound Flows are number of current flows
in the inbound direction (traffic going into the
VM).

(Featured metric)
Outbound Flows

Maximum creation rate of outbound flows
(traffic going out of the VM).

(Featured metric)
Inbound Flows Maximum Creation Rate
(Featured metric)
Outbound Flows Maximum Creation Rate
(Featured metric)

Maximum creation rate of inbound flows
(traffic going into the VM).
Maximum creation rate of outbound flows
(traffic going out of the VM).

Azure VM Memory metrics
Metric Name

Description

VM Cached Bandwidth Consumed Percentage Percentage of cached disk bandwidth
consumed by the VM.
(Featured metric)
VM Cached IOPS Consumed Percentage

Percentage of cached disk IOPS consumed by
the VM.

VM Uncached Bandwidth Consumed
Percentage

Percentage of uncached disk bandwidth
consumed by the VM.

(Featured metric)
VM Uncached Bandwidth Consumed
Percentage

Percentage of uncached disk IOPS consumed
by the VM.

Available Memory Byte

Amount of physical memory, in bytes,
immediately available for allocation to a
process or for system use in the Virtual
Machine.

(Featured metric)

Azure VM Metrics policy - Azure Metrics Collector check metrics
Metric name

Units

Description

Percentage CPU (featured
metric)

%

The percentage of allocated
compute units that are
currently in use by the Virtual
Machine.

CPU Credits Remaining

Number of earned CPU credits
that have not been consumed
by the Virtual Machine.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4418


<!-- page 4419 -->
Azure VM Metrics policy - Azure Metrics Collector check metrics (continued)
Metric name

Units

Description

CPU Credits Consumed

Total number of CPU credits
that have been consumed by
the Virtual Machine.

Network In

Number of bytes received on
all network interfaces by the
instance.

Network Out

Number of bytes sent out on
all network interfaces by the
instance.

Network In Total (featured
metric)

Bytes

The number of bytes received
on all network interfaces
by the Virtual Machine(s)
(Incoming Traffic).

Network Out Total (featured
metric)

Bytes

The number of bytes out on
all network interfaces by the
Virtual Machine(s) (Outgoing
Traffic).

Available Memory Bytes
(featured metric)

Bytes

Amount of physical memory
in bytes immediately available
for allocation to a process or
for system use in the Virtual
Machine.

VM Cached Bandwidth
Consumed Percentage

Percentage of cached disk
bandwidth consumed by the
VM.

VM Cached IOPS Consumed
Percentage

Percentage of cached disk
IOPS consumed by the VM.

VM Uncached Bandwidth
Consumed Percentage

Percentage of uncached disk
bandwidth consumed by the
VM.

VM Uncached IOPS
Consumed Percentage

Percentage of uncached disk
IOPS consumed by the VM.

Disk Read Bytes (featured
metric)

Bytes

Bytes read from disk during
monitoring period.

Disk Write Bytes (featured
metric)

Bytes

Bytes written to disk during
monitoring period.

Disk Read Operations/Sec
(featured metric)

CountPerSecond

Disk Read IOPS.

Disk Write Operations/Sec
(featured metric)

CountPerSecond

Disk Write IOPS.

OS Disk Read Bytes/sec

Bytes/Sec read from disk
during monitoring period.

OS Disk Write Bytes/sec

Bytes/Sec written to disk
during monitoring period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4419


<!-- page 4420 -->
Azure VM Metrics policy - Azure Metrics Collector check metrics (continued)
Metric name

Units

Description

OS Disk Read Operations/Sec

Read IOPS from disk during
monitoring period.

OS Disk Write Operations/Sec

Write IOPS from disk during
monitoring period.

OS Disk Queue Depth

Average number of read
and write requests that were
queued for the selected disk
during the sample period.

OS Disk Bandwidth
Consumed Percentage

Percentage of data disk
bandwidth consumed per
minute.

OS Disk IOPS Consumed
Percentage

Percentage of data disk I/Os
consumed per minute.

OS Disk Target Bandwidth

Baseline bytes per second
throughput data disk can
achieve without bursting.

OS Disk Target IOPS

Baseline IOPS data disk can
achieve without bursting.

OS Disk Max Burst Bandwidth

Maximum bytes per second
throughput data disk can
achieve with bursting.

OS Disk Max Burst IOPS

Maximum IOPS data disk can
achieve with bursting.

OS Disk Used Burst BPS
Credits Percentage

Percentage of data disk burst
bandwidth credits used so far.

OS Disk Used Burst IO Credits
Percentage

Percentage of data disk burst
I/O credits used so far.

Premium OS Disk Cache Read
Hit

Premium OS disk cache read
hit.

Premium OS Disk Cache Read
Miss

Premium OS disk cache read
miss.

Inbound Flows

Number of current flows in
the inbound direction (traffic
going into the VM).

Outbound Flows

Number of current flows in
the inbound direction (traffic
going out of the VM).

Inbound Flows Maximum
Creation Rate

Maximum creation rate of
inbound flows (traffic going
into the VM).

Outbound Flows Maximum
Creation Rate

Maximum creation rate of
outbound flows (traffic going
out of the VM).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4420


<!-- page 4421 -->
Azure Load Balancer metrics policy - Azure Metrics collector check metrics
Metric name

Units

AllocatedSnatPorts (featured
metric)

Description

Total number of SNAT ports
allocated within the time
period specified by the metric
definition's PT (Period of
Time) value.

ByteCount (featured metric)

bytes

Total number of bytes
transmitted within the time
period specified by the metric
definition's PT (Period of
Time) value.

DipAvailability (featured
metric)

count

Average load balancer
health probe status per time
duration.

BlockedCount (featured
metric)

SnatConnectionCount
(featured metric)

Total number of packets
transmitted within the time
period specified by the metric
definition's PT (Period of
Time) value.
count

Total number of new SNAT
connections created within
the time period specified by
the metric definition's PT
(Period of Time) value.

SYNCount (featured metric)

Total number of SYN packets
transmitted within the time
period specified by the metric
definition's PT (Period of
Time) value.

UsedSnatPorts (featured
metric)

Total number of SNAT ports
used within the time period
specified by the metric
definition's PT (Period of
Time) value.

VipAvailability (featured
metric)

count

Average load balancer data
path availability per time
duration.

Azure Redis Cache policy - Azure Metrics Collector check metrics
Metric name

Units

Description

connectedclients

Number of client connections
to the cache.

totalcommandsprocessed

Total number of commands
processed by the cache
server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4421


<!-- page 4422 -->
Azure Redis Cache policy - Azure Metrics Collector check metrics (continued)
Metric name

Units

Description

cachehits (featured metric)

count

Number of successful key
lookups.

cachemisses (featured metric) count

Number of failed key lookups.

cachemissrate

Rate of failed key lookups.

getcommands

Number of get operations from
the cache.

setcommands (featured
metric)

count

Number of set operations to
the cache.

operationsPerSecond

Number of instantaneous
operations per second
executed on the cache.

evictedkeys

Number of items evicted from
the cache.

totalkeys

Number of keys in the cache.

expiredkeys

Number of items expired from
the cache.

usedmemory

bytes

Amount of cache memory
used for key/value pairs in the
cache.

usedmemoryRss

bytes

Amount of cache memory
used during the specified
reporting interval, including
fragmentation and metadata

serverLoad (featured metric)

Percent

Percentage of cycles in which
the Redis server is busy
processing and not waiting
idle for messages

cacheWrite (featured metric)

BytesPersSecond

Amount of data written to the
cache.

cacheRead (featured metric)

BytesPerSecond

Amount of data read from the
cache.

allConnectionsCreatedPerSecond

Number of instantaneous
connections created per
second on the cache via port
6379 or 6380 (SSL).

allConnectionsClosedPerSecond

Number of instantaneous
connections closed per
second on the cache via port
6379 or 6380 (SSL).

allconnectedclients (featured
metric)

Number of currently
connected clients to the
system.

count

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4422


<!-- page 4423 -->
Azure Redis Cache policy - Azure Metrics Collector check metrics (continued)
Metric name

Units

Description

alltotalcommandsprocessed

The cumulative count of all
commands processed by the
system.

alloperationsPerSecond

Total number of operations
(such as read or write
commands) performed per
second across all instances.

allusedmemory (featured
metric)

bytes

Total amount of memory being
used across the system.

allusedmemoryRss (featured
metric)

bytes

The total Resident Set Size
(RSS), which reflects the
amount of memory physically
present in RAM across all
instances, including swap.

Azure Gateway Metrics policy - Azure Metrics collector check metrics
Metric name

Units

Description

ApplicationGatewayTotalTime
(featured metric)

MilliSeconds

Time that it takes for a request
to be processed and its
response to be sent.

AvgRequestCountPerHealthyHost

Average request count per
minute per healthy backend
host in a pool.

AzwafBotProtectionMatches

Matched Bot Rules.

AzwafCustomRuleMatches

Matched Custom Rules.

AzwafSecRuleMatches

Matched Managed Rules.

AzwafTotalRequests

Total number of requests
evaluated by WAF.

BackendConnectTime

Time spent establishing a
connection with a backend
server.

BackendFirstByteResponseTime

Time interval between start of
establishing a connection to
backend server and receiving
the first byte of the response
header, approximating
processing time of backend
server.

BackendLastByteResponseTime

Time interval between start of
establishing a connection to
backend server and receiving
the last byte of the response
body.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4423


<!-- page 4424 -->
Azure Gateway Metrics policy - Azure Metrics collector check metrics (continued)
Metric name

Units

Description

BackendResponseStatus

Number of HTTP response
codes generated by the
backend members. This does
not include any response
codes generated by the
Application Gateway.

BlockedCount

Total number of blocked
operations or requests

BytesReceived (featured
metric)

bytes

Total number of bytes
received by the Application
Gateway from the clients.

BytesSent (featured metric)

bytes

Total number of bytes sent by
the Application Gateway to
the clients.

CapacityUnits

Capacity units consumed.

ClientRtt

Round trip time between
clients and Application
Gateway. Indicates how long it
takes to establish connections
and return acknowledgments.

ComputeUnits

Compute units consumed.

CpuUtilization

Current CPU utilization of the
Application Gateway.

CurrentConnections (featured count
metric)

Count of current connections
established with Application
Gateway.

EstimatedBilledCapacityUnits

Estimated capacity units that
will be charged.

FailedRequests (featured
metric)

count

FixedBillableCapacityUnits
HealthyHostCount (featured
metric)

Count of failed requests that
Application Gateway has
served.
Fixed Billable Capacity Units.

count

Number of healthy backend
hosts.

NewConnectionsPerSecond

New connections per second
established with Application
Gateway.

ResponseStatus

HTTP response status
returned by Application
Gateway.

Throughput (featured metric)

bytesPerSecond

Number of bytes per second
the Application Gateway has
served.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4424


<!-- page 4425 -->
Azure Gateway Metrics policy - Azure Metrics collector check metrics (continued)
Metric name

Units

Description

TotalRequests (featured
metric)

count

Count of successful requests
that Application Gateway has
served.

UnhealthyHostCount (featured count
metric)

Number of unhealthy backend
hosts.

Azure Storage Account policy - Azure Metrics Collector check metrics
Metric name

Units

Description

Transactions (featured metric)

count

Total number of requests
made to the storage account.

Ingress (featured metric)

bytes

Amount of ingress data. This
number includes ingress from
an external client into Azure
Storage as well as ingress
within Azure.

Egress (featured metric)

bytes

Amount of egress data. This
number includes egress from
an external client into Azure
Storage as well as egress
within Azure. As a result,
this number does not reflect
billable egress.

SuccessServerLatency
(featured metric)

milliseconds

Average latency used by
Azure Storage to process a
successful request.

SuccessE2ELatency (featured
metric)

milliseconds

The average end-to-end
latency of successful requests
made to a storage service or
the specified API operation.

Availability (featured metric)

percent

The percentage of availability
for the storage service or the
specified API operation.

Azure Blob Services metrics
Metric Name

Description

Availability

Percentage of availability for the storage
service or the specified API operation.
Availability is calculated by taking the
TotalBillableRequests value and dividing
it by the number of applicable requests,
including those that produced unexpected
errors. All unexpected errors result in reduced
availability for the storage service or the
specified API operation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4425


<!-- page 4426 -->
Azure Blob Services metrics (continued)
Metric Name

Description

BlobCapacity

Amount of storage used by the storage
account's Blob service, in bytes.

(Featured metric)
BlobCount

Number of Blobs in the storage account's Blob
service

Container Count

Number of containers in the storage account's
Blob service.

Egress

Amount of Egress data, in bytes. Includes
egress from an external client into Azure
Storage as well as Egress within Azure. As a
result, this number does not reflect billable
Egress.

(Featured metric)

Index Capacity
(Featured metric)
Ingress
(Featured metric)
SuccessE2ELatency
(Featured metric)

SuccessServerLatency
(Featured metric)
Transactions

Amount of storage used by ADLS Gen2
(Hierarchical) Index, in bytes.
The amount of Ingress data, in bytes. Includes
Ingress from an external client into Azure
storage, as well as ingress within Azure.
End-to-end latency of successful requests
made to a storage service or the specified
API operation, in milliseconds. Includes the
required processing time within Azure storage
to read the request, send the response, and
receive acknowledgment of the response.
Latency used by Azure storage to process a
successful request, in milliseconds. This value
does not include the network latency specified
in SuccessE2ELatency.
Number of requests made to a storage service
or the specified API operation. Includes
successful and failed requests, as well as
requests which produced errors. Use the
ResponseType dimension for the number of
different types of responses.

Azure cloud metrics
Azure cloud metrics are gathered from Azure virtual machines (VMs) and Azure storage account
policies. Collecting the cloud metrics enables you to monitor the performance of your Azure
resources.

Azure cloud metrics collection - Overview
To begin collecting Azure cloud metrics, you must select the metrics that you want to add to the
CMDB and set the relevant system configurations. For example, you can monitor the number of
bytes sent and received from Azure resources. For details, see Agent Client Collector for Visibility
- Content reference.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4426


<!-- page 4427 -->
Using Azure policies
You can use preconfigured Azure policies for metric collection, or you can create your own Azure
policies.
When using a preconfigured policy, you do the following tasks:
• Prepare an instance with an active MID Server and metric base.
• Install Agent Client Collector Framework and Agent Client Collector Monitoring.
• Run Discovery on the Azure cloud account to populate the CMDB with the configuration items
(CIs) to be monitored.
• Configure a proxy agent and assign credentials to the policy. Proxy agents monitor CIs for
agents that are in the cloud. Credentials enable the agent to access the Azure policy.
The policies available with the base system for you to activate and configure are described in the
following table.
Azure policies available with base system
Policy name

Description

Link to supported metrics

Azure Load Balancer metrics

Collects the metrics for the
Azure load balancers.

Supported metrics for
Microsoft Load Balancers

Azure Gateway metrics

Collects the metrics for the
Azure network gateway.

Supported metrics for
Microsoft Network Gateways

Azure Redis Cache metrics

Collects the metrics for the
Azure Redis cache.

Supported metrics for
Microsoft Redis cache

Azure Storage Account
metrics

Collects the metrics for the
Azure storage accounts.

Supported metrics for
Microsoft storage accounts

Azure Virtual Machine (VM)
metrics

Collects the metrics for the
VMs, which help you monitor
Azure VMs.

Supported metrics for
Microsoft virtual machines

Specifying the CIs for metric collection
When creating policies, you must include the CIs that you want to collect the metrics for in the
CMDB. The CIs are typically populated during Discovery, which finds applications and devices
on your network and updates the CMDB accordingly.
When creating a policy, you must decide which CIs you want the policy to monitor. To enable
monitoring CIs, you do the following tasks:
1. Configure the Azure Metrics Collector check in the policy.
2. Set the credentials for the Azure Metrics Collector check to enable retrieving metrics from
Azure to the Agent Client Collector agent.
3. Generate a .json file that specifies the list of resources to be monitored.
4. Generate a .json file that specifies the list of metrics to be retrieved from monitored resources.
For details on the Azure policies, see Create Azure policies for metric collection.
For details on the Azure Metrics Batch API, see the Metrics Batch API

page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4427


<!-- page 4428 -->
Cassandra default checks and policies
Agent Client Collector provides the following policies for Cassandra health monitoring. Policies
come with the checks specified in the indicated table. Policies and checks are available for Linux
only.
Cassandra Metrics
Check

Description

app.cassandra.metricsReturns metrics
cassandra
of a Cassandra
database.

Usage

Command

metricscassandragraphite.rb
Options:
-h host

Output

metrics<host>.cassandra.load
cassandra132270.08
graphite.rb 1645107221
--cfstats -P
{{.labels.params_port}}
-h
{{.labels.params_host}}

Hostname
where
the
Cassandra
database
is
running
-P port
Cassandra
JMX
port
Cassandra metrics
The following table lists the metrics that are gathered as output from Cassandra checks. Entries
indicated as Featured metrics are high-visibility metrics that are displayed in the Operator
Workspace Metric tab after an alert is generated. These metrics provide the operator with
additional information to help them further explore the specified issue.
metrics-cassandra metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

cassandra.load
(featured metric)

byte

The disk space used
by live data on a node.

cassandra.uptime
(featured metric)

seconds

cassandra.heap.used
(featured metric)

byte

cassandra.heap.total
(featured metric)

byte

cassandra.exceptions

count

Number of internal
exceptions caught.
Under normal

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4428


<!-- page 4429 -->
metrics-cassandra metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

exceptions this should
be zero.
cassandra.key_cache.size

byte

Total size of occupied
cache, in bytes.

cassandra.key_cache.capacity

byte

Cache capacity in
bytes.

cassandra.key_cache.hits

count

Total number of cache
hits.

cassandra.key_cache.requests
(featured metric)

count

Total number of cache
requests.

cassandra.key_cache.hit_rate
(featured metric)

count

All time cache hit rate.

cassandra.compactionstats.pending_tasks

count

The number of
pending compactions.

cassandra.threadpool.ReadStage.active

count

Number of tasks being
actively worked on by
this pool. Local reads
run on this thread pool
on this ReadStage.

cassandra.threadpool.ReadStage.pending

count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.ReadStage.completed

count

Number of tasks
completed.

cassandra.threadpool.ReadStage.blocked

count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.MiscStage.active

count

Number of tasks
being actively worked
on by this pool.
Miscellaneous tasks
run on this stage.

cassandra.threadpool.MiscStage.pending

count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.MiscStage.completed

count

Number of tasks
completed.

cassandra.threadpool.MiscStage.blocked

count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.CompactionExecutor.active
count

Number of tasks
being actively worked

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4429


<!-- page 4430 -->
metrics-cassandra metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

on by this pool.
Compactions are run
on these threads.
cassandra.threadpool.CompactionExecutor.pending
count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.CompactionExecutor.completed
count

Number of tasks
completed.

cassandra.threadpool.CompactionExecutor.blocked
count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.MutationStage.active

count

Number of tasks being
actively worked on by
this pool. Responsible
for all other writes.

cassandra.threadpool.MutationStage.pending

count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.MutationStage.completedcount

Number of tasks
completed.

cassandra.threadpool.MutationStage.blocked

Number of tasks that
were blocked due to
queue saturation.

count

cassandra.threadpool.MemtableReclaimMemory.active
count

Number of tasks being
actively worked on by
this pool. Memtable
recycling.

cassandra.threadpool.MemtableReclaimMemory.pending
count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.MemtableReclaimMemory.completed
count

Number of tasks
completed.

cassandra.threadpool.MemtableReclaimMemory.blocked
count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.PendingRangeCalculator.active
count

Number of tasks being
actively worked on by
this pool. Calculates
token range.

cassandra.threadpool.PendingRangeCalculator.pending
count

Number of queued
tasks queued up on
this pool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4430


<!-- page 4431 -->
metrics-cassandra metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

cassandra.threadpool.PendingRangeCalculator.completed
count

Number of tasks
completed.

cassandra.threadpool.PendingRangeCalculator.blocked
count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.GossipStage.active

count

Number of tasks being
actively worked on
by this pool. Handles
gossip requests.

cassandra.threadpool.GossipStage.pending

count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.GossipStage.completed count

Number of tasks
completed.

cassandra.threadpool.GossipStage.blocked

Number of tasks that
were blocked due to
queue saturation.

count

cassandra.threadpool.SecondaryIndexManagement.active
count

Number of tasks being
actively worked on by
this pool. Performs
updates to secondary
indexes.

cassandra.threadpool.SecondaryIndexManagement.pending
count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.SecondaryIndexManagement.completed
count

Number of tasks
completed.

cassandra.threadpool.SecondaryIndexManagement.blocked
count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.HintsDispatcher.active

Number of tasks being
actively worked on by
this pool. Performs
hinted hand off.

count

cassandra.threadpool.HintsDispatcher.pending count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.HintsDispatcher.completed
count

Number of tasks
completed.

cassandra.threadpool.HintsDispatcher.blocked count

Number of tasks that
were blocked due to
queue saturation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4431


<!-- page 4432 -->
metrics-cassandra metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

cassandra.threadpool.RequestResponseStage.active
count

Number of tasks being
actively worked on by
this pool. Coordinator
requests to the cluster
run on this thread
pool.

cassandra.threadpool.RequestResponseStage.pending
count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.RequestResponseStage.completed
count

Number of tasks
completed.

cassandra.threadpool.RequestResponseStage.blocked
count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.ReadRepairStage.active count

Number of tasks being
actively worked on
by this pool. Read
repair happens on this
thread pool.

cassandra.threadpool.ReadRepairStage.pendingcount

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.ReadRepairStage.completed
count

Number of tasks
completed.

cassandra.threadpool.ReadRepairStage.blockedcount

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.CounterMutationStage.active
count

Number of tasks being
actively worked on by
this pool. Responsible
for counter writes.

cassandra.threadpool.CounterMutationStage.pending
count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.CounterMutationStage.completed
count

Number of tasks
completed.

cassandra.threadpool.CounterMutationStage.blocked
count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.MigrationStage.active

Number of tasks being
actively worked on
by this pool. Runs
schema migrations.

count

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4432


<!-- page 4433 -->
metrics-cassandra metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

cassandra.threadpool.MigrationStage.pending count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.MigrationStage.completedcount

Number of tasks
completed.

cassandra.threadpool.MigrationStage.blocked count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.MemtablePostFlush.activecount

Number of tasks being
actively worked on
by this pool. Cleans
up commit log after
memtable is written to
disk.

cassandra.threadpool.MemtablePostFlush.pending
count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.MemtablePostFlush.completed
count

Number of tasks
completed.

cassandra.threadpool.MemtablePostFlush.blocked
count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.PerDiskMemtableFlushWriter_0.active
count

Number of tasks being
actively worked on by
this pool. Responsible
for writing a spec
(there is one of these
per disk 0-N).

cassandra.threadpool.PerDiskMemtableFlushWriter_0.pending
count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.PerDiskMemtableFlushWriter_0.completed
count

Number of tasks
completed.

cassandra.threadpool.PerDiskMemtableFlushWriter_0.blocked
count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.ValidationExecutor.active count

Number of tasks being
actively worked on by
this pool. Performs
validation compaction
or scrubbing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4433


<!-- page 4434 -->
metrics-cassandra metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

cassandra.threadpool.ValidationExecutor.pending
count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.ValidationExecutor.completed
count

Number of tasks
completed.

cassandra.threadpool.ValidationExecutor.blocked
count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.Sampler.active

count

Number of tasks being
actively worked on by
this pool. Responsible
for re-sampling the
index summaries of
SStables.

cassandra.threadpool.Sampler.pending

count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.Sampler.completed

count

Number of tasks
completed.

cassandra.threadpool.Sampler.blocked

count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.MemtableFlushWriter.active
count

Number of tasks being
actively worked on
by this pool. Writes
memtables to disk.

cassandra.threadpool.MemtableFlushWriter.pending
count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.MemtableFlushWriter.completed
count

Number of tasks
completed.

cassandra.threadpool.MemtableFlushWriter.blocked
count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.InternalResponseStage.active
count

Number of tasks being
actively worked on by
this pool. Responsible
for intra-cluster
callbacks.

cassandra.threadpool.InternalResponseStage.pending
count

Number of queued
tasks queued up on
this pool.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4434


<!-- page 4435 -->
metrics-cassandra metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

cassandra.threadpool.InternalResponseStage.completed
count

Number of tasks
completed.

cassandra.threadpool.InternalResponseStage.blocked
count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.ViewMutationStage.activecount

Number of tasks being
actively worked on by
this pool. Responsible
for materialized view
writes.

cassandra.threadpool.ViewMutationStage.pending
count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.ViewMutationStage.completed
count

Number of tasks
completed.

cassandra.threadpool.ViewMutationStage.blocked
count

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.AntiEntropyStage.active count

Number of tasks being
actively worked on
by this pool. Builds
merkle tree for repairs.

cassandra.threadpool.AntiEntropyStage.pendingcount

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.AntiEntropyStage.completed
count

Number of tasks
completed.

cassandra.threadpool.AntiEntropyStage.blockedcount

Number of tasks that
were blocked due to
queue saturation.

cassandra.threadpool.CacheCleanupExecutor.active
count

Number of tasks
being actively worked
on by this pool.
Cache maintenance
performed on this
thread pool.

cassandra.threadpool.CacheCleanupExecutor.pending
count

Number of queued
tasks queued up on
this pool.

cassandra.threadpool.CacheCleanupExecutor.completed
count

Number of tasks
completed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4435


<!-- page 4436 -->
metrics-cassandra metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

cassandra.threadpool.CacheCleanupExecutor.blocked
count

Number of tasks that
were blocked due to
queue saturation.

cassandra.message_type.READ.dropped

count

Number of dropped
messages. Regular
reads.

cassandra.message_type.RANGE_SLICE.dropped
count

Number of dropped
messages. Token
range read.

cassandra.message_type._TRACE.dropped

count

Number of dropped
messages. Tracing
writes.

cassandra.message_type.HINT.dropped

count

Number of dropped
messages. Hint replay.

cassandra.message_type.MUTATION.dropped count

Number of dropped
messages. Regular
writes.

cassandra.message_type.COUNTER_MUTATION.dropped
count

Number of dropped
messages. Counter
writes.

cassandra.message_type.BATCH_STORE.dropped
count

Number of dropped
messages. Batchlog
write.

cassandra.message_type.BATCH_REMOVE.dropped
count

Number of dropped
messages. Batchlog
cleanup (after
successfully applied).

cassandra.message_type.REQUEST_RESPONSE.dropped
count

Number of dropped
messages. RPC
Callbacks.

cassandra.message_type.PAGED_RANGE.dropped
count

Number of dropped
messages. Paged
read.

cassandra.message_type.READ_REPAIR.dropped
count

Number of dropped
messages. Read
repair.

cassandra.system_traces.read_count

Number of read for
this table.

count

cassandra.system_traces.read_latency
cassandra.system_traces.write_count

Local read latency for
this table.
count

Number of writes for
this table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4436


<!-- page 4437 -->
metrics-cassandra metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

cassandra.system_traces.write_latency

Metric type description

Local write latency for
this table.

cassandra.system_traces.pending_flushes

count

cassandra.system.read_count
(featured metric)

count

cassandra.system.read_latency
(featured metric)

microseconds

cassandra.system.write_count
(featured metric)

count

cassandra.system.write_latency
(featured metric)

microseconds

cassandra.system.pending_flushes

count

cassandra.system_distributed.read_count

count

Estimated number of
flush tasks pending
for this table.

cassandra.system_distributed.read_latency
cassandra.system_distributed.write_count

count

cassandra.system_distributed.write_latency
cassandra.system_distributed.pending_flushes count
cassandra.system_schema.read_count

count

cassandra.system_schema.read_latency
cassandra.system_schema.write_count

count

cassandra.system_schema.write_latency
cassandra.system_schema.pending_flushes

count

cassandra.system_auth.read_count

count

cassandra.system_auth.read_latency
cassandra.system_auth.write_count

count

cassandra.system_auth.write_latency
cassandra.system_auth.pending_flushes

count

Directory Scan monitoring default checks and policies
The Agent Client Collector provides the following default checks and policies for Directory Scan
monitoring.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4437


<!-- page 4438 -->
Windows OS Events - Extended policy
Type

Check

Event

check-directoryfile-count

Description

Checks the
number of files
present in a
given directory
and compares it
to the provided
warning
and critical
thresholds.
Returns a
CRITICAL,
WARNING, or
OK event based
on the critical
and warning
thresholds.

Note:

Usage and Usage
Example

check-directoryfile-count.rb
(options)
-d, --dir Absolute
path to the
directory to
count the files
(required)

Output

DirectoryFileCount
CRITICAL: <path
to dir> has 165
files.

-w, --warning
Warning
threshold
(required)
-c, --critical
Critical threshold
(required)

-H,
• Counts
include_hidden_files
the
Set active to
number
true to include
of files
inside the hidden files while
counting (default
directory,
is false)
not
including
Usage Example:
files in
checksubdirectories.
directory• The agent
filerequires
count.rb
read and
-d /path/
execute
to/directory
permissions
-w 50 -c 100
on the
directory
being
monitored.
Event

check-directoryintegrity

Compares the
last modified time
of the directory
with the current
time to determine
if any updates
have occurred
within a defined
time interval.
Based on this
comparison, the

Common Checks
commonchecks
CRITICAL:
check-directory- Directory
integrity (options) Integrity:
CHANGES
-d, --dirpath
DETECTED for
DIRPATH:
<path to file>
Absolute path to within the last
the directory to
180 seconds
check (required). (Last Modified:
Wed, 04 Dec
-i, --interval
INTERVAL:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4438


<!-- page 4439 -->
Windows OS Events - Extended policy (continued)
Type

Check

Description

check returns a
CRITICAL or OK
event.

Note:
The agent
requires
read and
execute
permissions
on the
directory
being
monitored.

Event

check-file-age

Evaluates the age
of a specified file
by comparing its
last modification
time with the
current time.
Raises an alert if
the file exceeds
the defined
critical or warning
age thresholds.

Note:
The agent
requires
read and
execute
permissions
on the
file being
monitored.

Usage and Usage
Example

Time interval
in seconds
to check for
recent updates
(required).
Default value
can be set to 180
seconds.

Output

2024 12:18:55
EST).

Usage example:
commonchecks
checkdirectoryupdate
-d /path/
to/directory
-i 180
commonchecks
check-file-age
(options)
-f, --filepath
FILEPATH:
Absolute path to
the file to check
(required).

Common Checks
OK: File <path
to file> age: 30
minutes.

-c, --critical
CRITICAL:
Critical age
threshold in
minutes for the
file (required).
-w, --warning
WARNING:
Warning age
threshold in
minutes for the
file (required).
Usage
example:commonchecks
checkfile-age
-f /path/
to/file.txt
-c 120 -w 60

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4439


<!-- page 4440 -->
Windows OS Events - Extended policy (continued)
Type

Check

Event

check-fileresponse-time

Description

Compares the
time needed
to read a
specified file
and compares it
with the critical
and warning
thresholds.
Based on this
comparison, the
check returns a
CRITICAL or OK
event.

Note:
The agent
requires
read and
execute
permissions
on the
file being
monitored.

Usage and Usage
Example

commonchecks
check-fileresponse-time
(options)
-f, --filepath
FILEPATH:
Absolute path to
the file to check
(required).

Output

Common Checks
OK: File read
response
time: 0.0020
seconds for the
file_name: /var/
log/servicenow/
agent-clientcollector/acc.log.

-c, --critical
CRITICAL:
Critical threshold
in seconds for file
response time
(required).
-w, --warning
WARNING:
Warning
threshold in
seconds for file
response time
(required).
-t, --timeout
TIMEOUT:
Maximum time
allowed for
reading the
file content,
specified in
seconds. Time
out value must be
greater than the
critical threshold
value.
Usage
example:commonchecks
check-fileresponsetime -f /
var/log/
servicenow/
agentclientcollector/
acc.log -c
10 -w 5 -t
20

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4440


<!-- page 4441 -->
Windows OS Events - Extended policy (continued)
Type

Check

Event

check-file-size

Description

Measures the
size of a file (the
actual amount of
data it contains)
and compares it
against specified
thresholds.
Returns a
CRITICAL,
WARNING,
or OK event
based on the
comparison of
the file size and
the thresholds.

Note:
The agent
requires
read and
execute
permissions
on the
file being
monitored.

Usage and Usage
Example

commonchecks
check-file-size
(options)
-f, --filepath
FILEPATH
Absolute path to
the required file
(required).

Output

Common Checks
OK: For File <path
to file> size:
4.72 KB is within
thresholds

-c, --critical
CRITICAL. Critical
threshold in
kilobytes. Provide
as a number
without units (for
example, 1000
for 1000 KB)
(required)
-w, --warning
WARNING.
Warning
threshold in
kilobytes. Provide
as a number
without units
(for example,
500 for 500 KB)
(required)
Usage
example:commonchecks
check-filesize -f C:
\ProgramData
\ServiceNow
\agentclientcollector
\config
\acc.yml

Event

check-file-space

Measures
the size of a
file on disk
against specified
thresholds,
returning a
CRITICAL,
WARNING, or OK

commonchecks
check-file-space
(options)
-f, --filepath
FILEPATH:
Absolute path to
the relevant file
(required).

Common Checks
OK: File <path
to file> space:
8.00 KB is within
threshold

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4441


<!-- page 4442 -->
Windows OS Events - Extended policy (continued)
Type

Check

Description

event based on
the thresholds.

Note:
The agent
requires
read and
execute
permissions
on the
file being
monitored.

Usage and Usage
Example

Output

-c, --critical
CRITICAL:
Critical threshold
in kilobytes.
Provided as
a number
without units (for
example, 1000
for 1000 KB)
(required)
-w, --warning
WARNING:
Warning
threshold
in kilobytes.
Provided as
a number
without units
(for example,
500 for 500 KB)
(required)
-b, --blocksize
BLOCKSIZE:
Block size in
bytes (Default =
4096) (required)
Usage example:
commonchecks
check-filespace -f C:
\ProgramData
\ServiceNow
\agentclientcollector
\config
\acc.yml

Event

os.windows.check- Verifies the disk
directory-space
space occupied
by a directory's
content. Returns
a CRITICAL,
WARNING,
or OK event,
based on the
comparison with
the given critical
and warning

winchecks
check-dir-space
(options)
-d, --dirpath
DIRPATH:
Absolute path
to the directory
being checked
(required).

Windows Checks
OK: Directory
<path to file>
space: 369.25
KB is within
thresholds

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4442


<!-- page 4443 -->
Windows OS Events - Extended policy (continued)
Type

Check

Description

event severity
thresholds.

Note:
The agent
requires
read and
execute
permissions
on the
directory
being
monitored.

Usage and Usage
Example

Output

-c, --critical
CRITICAL:
Critical disk
space threshold
in kilobytes
(required).
-w, --warning
WARNING:
Warning disk
space threshold
in kilobytes
(required).
-t, --timeout
TIMEOUT:
Maximum time
allowed for
directory size
calculation,
specified
in seconds
(required).
Usage
example:winchecks
checkdir-space
-d /path/
to/directory
-c 1000 -w
500 -t 120

Linux OS Events - Extended policy
Type

Check

Event

check-directoryfile-count

Description

Checks the
number of files
present in a
given directory
and compares it
to the provided
warning
and critical
thresholds.
Returns a
CRITICAL,
WARNING, or
OK event based

Usage and Usage
Example

check-directoryfile-count.rb
(options)
-d, --dir Absolute
path to the
directory to
count the files
(required)

Output

DirectoryFileCount
CRITICAL: <path
to dir> has 165
files.

-w, --warning
Warning

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4443


<!-- page 4444 -->
Linux OS Events - Extended policy (continued)
Type

Check

Description

on the critical
and warning
thresholds.

Note:

Usage and Usage
Example

Output

threshold
(required)
-c, --critical
Critical threshold
(required)

• Counts
the
-H,
number
include_hidden_files
of files
Set active to
inside the true to include
directory,
hidden files while
not
counting (default
including
is false)
files in
Usage Example:
subdirectories.
• The agent checkdirectoryrequires
fileread and
count.rb
execute
permissions -d /path/
to/directory
on the
-w 50 -c 100
directory
being
monitored.
Event

check-directoryintegrity

Compares the
last modified time
of the directory
with the current
time to determine
if any updates
have occurred
within a defined
time interval.
Based on this
comparison, the
check returns a
CRITICAL or OK
event.

Note:
The agent
requires
read and
execute
permissions
on the
directory
being
monitored.

Common Checks
commonchecks
CRITICAL:
check-directory- Directory
integrity (options) Integrity:
CHANGES
-d, --dirpath
DETECTED for
DIRPATH:
<path to file>
Absolute path to within the last
the directory to
180 seconds
check (required). (Last Modified:
Wed, 04 Dec
-i, --interval
2024 12:18:55
INTERVAL:
EST).
Time interval
in seconds
to check for
recent updates
(required).
Default value
can be set to 180
seconds.
Usage example:
commonchecks
checkdirectory-

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4444


<!-- page 4445 -->
Linux OS Events - Extended policy (continued)
Type

Check

Description

Usage and Usage
Example

Output

update
-d /path/
to/directory
-i 180
Event

check-file-age

Evaluates the age
of a specified file
by comparing its
last modification
time with the
current time.
Raises an alert if
the file exceeds
the defined
critical or warning
age thresholds.

Note:
The agent
requires
read and
execute
permissions
on the
file being
monitored.

commonchecks
check-file-age
(options)
-f, --filepath
FILEPATH:
Absolute path to
the file to check
(required).

Common Checks
OK: File <path
to file> age: 30
minutes.

-c, --critical
CRITICAL:
Critical age
threshold in
minutes for the
file (required).
-w, --warning
WARNING:
Warning age
threshold in
minutes for the
file (required).
Usage
example:commonchecks
checkfile-age
-f /path/
to/file.txt
-c 120 -w 60

Event

check-fileresponse-time

Compares the
time needed
to read a
specified file
and compares it
with the critical
and warning
thresholds.
Based on this
comparison, the
check returns a
CRITICAL or OK
event.

commonchecks
check-fileresponse-time
(options)
-f, --filepath
FILEPATH:
Absolute path to
the file to check
(required).

Common Checks
OK: File read
response
time: 0.0020
seconds for the
file_name: /var/
log/servicenow/
agent-clientcollector/acc.log.

-c, --critical
CRITICAL:
Critical threshold
in seconds for file

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4445


<!-- page 4446 -->
Linux OS Events - Extended policy (continued)
Type

Check

Description

Note:
The agent
requires
read and
execute
permissions
on the
file being
monitored.

Usage and Usage
Example

Output

response time
(required).
-w, --warning
WARNING:
Warning
threshold in
seconds for file
response time
(required).
-t, --timeout
TIMEOUT:
Maximum time
allowed for
reading the
file content,
specified in
seconds. Time
out value must be
greater than the
critical threshold
value.
Usage
example:commonchecks
check-fileresponsetime -f /
var/log/
servicenow/
agentclientcollector/
acc.log -c
10 -w 5 -t
20

Event

check-file-size

Measures the
size of a file (the
actual amount of
data it contains)
and compares it
against specified
thresholds.
Returns a
CRITICAL,
WARNING,
or OK event
based on the
comparison of

commonchecks
check-file-size
(options)
-f, --filepath
FILEPATH
Absolute path to
the required file
(required).

Common Checks
OK: For File <path
to file> size:
4.72 KB is within
thresholds

-c, --critical
CRITICAL. Critical
threshold in
kilobytes. Provide
as a number

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4446


<!-- page 4447 -->
Linux OS Events - Extended policy (continued)
Type

Check

Description

the file size and
the thresholds.

Note:
The agent
requires
read and
execute
permissions
on the
file being
monitored.

Usage and Usage
Example

Output

without units (for
example, 1000
for 1000 KB)
(required)
-w, --warning
WARNING.
Warning
threshold in
kilobytes. Provide
as a number
without units
(for example,
500 for 500 KB)
(required)
Usage
example:commonchecks
check-filesize -f C:
\ProgramData
\ServiceNow
\agentclientcollector
\config
\acc.yml

Event

check-file-space

Measures
the size of a
file on disk
against specified
thresholds,
returning a
CRITICAL,
WARNING, or OK
event based on
the thresholds.

Note:
The agent
requires
read and
execute
permissions
on the
file being
monitored.

commonchecks
check-file-space
(options)
-f, --filepath
FILEPATH:
Absolute path to
the relevant file
(required).

Common Checks
OK: File <path
to file> space:
8.00 KB is within
threshold

-c, --critical
CRITICAL:
Critical threshold
in kilobytes.
Provided as
a number
without units (for
example, 1000
for 1000 KB)
(required)
-w, --warning
WARNING:
Warning
threshold

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4447


<!-- page 4448 -->
Linux OS Events - Extended policy (continued)
Type

Check

Description

Usage and Usage
Example

Output

in kilobytes.
Provided as
a number
without units
(for example,
500 for 500 KB)
(required)
-b, --blocksize
BLOCKSIZE:
Block size in
bytes (Default =
4096) (required)
Usage example:
commonchecks
check-filespace -f C:
\ProgramData
\ServiceNow
\agentclientcollector
\config
\acc.yml
Event

os.linux.checkdirectory-size

Verifies the
space allocated
for a disk's
directory and
compares
it against
specified critical
and warning
thresholds.

Note:
The agent
requires
read and
execute
permissions
on the
directory
being
monitored.

linuxchecks
check-directorysize (options)
-d, --dirpath
DIRPATH:
Absolute path
to the directory
being checked
(required).

Linux Checks
CRITICAL:
Directory <path to
file> size: 500.00
KB exceeds
critical threshold
10.00 KB

-c, --critical
CRITICAL:
Critical disk
space threshold
in kilobytes
(required).
-w, --warning
WARNING:
Warning disk
space threshold
in kilobytes
(required).
-t, --timeout
TIMEOUT:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4448


<!-- page 4449 -->
Linux OS Events - Extended policy (continued)
Type

Check

Description

Usage and Usage
Example

Output

Maximum time
allowed for
directory size
calculation,
specified
in seconds
(required).
Usage
example:linuxchecks
checkdirectorysize -d
path/
to/directory
-c 100 -w 50
-t 30
Event

os.linux.checkdirectory-space

Verifies the disk
space occupied
by directory
content. Returns
a CRITICAL,
WARNING, or OK
event based on
the comparison
with the critical
and warning
thresholds.

Note:
The agent
requires
read and
execute
permissions
on the
directory
being
monitored.

linuxchecks
check-directoryspace (options)
-d, --dirpath
DIRPATH:
Absolute path
to the directory
being checked
(required).

Linux Checks
CRITICAL:
Directory <path
to file> space:
374.00 KB
exceeds critical
threshold 10.00
KB

-c, --critical
CRITICAL:
Critical disk
space threshold
in kilobytes
(required).
-w, --warning
WARNING:
Warning disk
space threshold
in kilobytes
(required).
-t, --timeout
TIMEOUT:
Maximum time
allowed for
directory size
calculation,
specified
in seconds
(required).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4449


<!-- page 4450 -->
Linux OS Events - Extended policy (continued)
Type

Check

Usage and Usage
Example

Description

Output

Usage
example:linuxchecks
checkdirectoryspace -d /
path/
to/directory
-c 10 -w 5
-t 30
Google Cloud Platform (GCP) metrics
The following table lists and describes the metrics that are gathered by the
acc_grp_metrics_list.json configuration data file. The file is uploaded to a check
definition or check instance, and the metrics in the file are monitored by the check for its agent.
GCP metrics
Metric name

Metric type

Service

Description

CPU utilization

appengine.googleapis.com/ app engine
flex/cpu/utilization

Fractional utilization of
allocated CPU across
an App Engine flexible
environment version.

Response count

appengine.googleapis.com/
http/server/
response_count

Delta HTTP response
count

Free disk space
percent

file.googleapis.com/
nfs/server/
free_bytes_percent

Circuit Operational
Status

interconnect.googleapis.com/interconnect
network/
interconnect/link/
operational

Whether the
operational status of
the circuit is 'up'. This
metric is specific to
individual physical
circuits

Operational Status

interconnect.googleapis.com/
network/
interconnect/
operational

Whether the
operational status
of the interconnect
is 'up'. This metric
is specific to the
aggregate LACP
bundle.

Instance group size

compute.googleapis.com/
instance_group/size

CPU utilization

compute.googleapis.com/
instance/cpu/
utilization

file

compute

Free disk space as a
percentage of the total
space.

The number of VMs in
the instance group.
Fractional utilization
of allocated CPU
on this instance.
Values are typically

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4450


<!-- page 4451 -->
GCP metrics (continued)
Metric name

Metric type

Service

Description

numbers between
0.0 and 1.0 (but can
exceed 1.0). Charts
display the values as
a percentage between
0% and 100% (or
more).
CPU usage time

compute.googleapis.com/
instance/cpu/
usage_time

Delta CPU usage
time in seconds.
Cumulative CPU
usage time since
instance start.

CPU scheduler wait
time

compute.googleapis.com/
instance/cpu/
scheduler_wait_time

Wait time is the time a
vCPU is runnable but
not scheduled to run
by the hypervisor.

CPU reserved cores

compute.googleapis.com/
instance/cpu/
reserved_cores

Number of cores
reserved for the
instance.

Disk queue length

compute.googleapis.com/
guest/disk/
queue_length

Number of requests
waiting to be handled
by the disk.

Uptime

compute.googleapis.com/
instance/uptime

Delta of how long the
VM has been running,
measured in seconds.
For availability
monitoring, use
uptime checks
instead.

Disk read bytes

compute.googleapis.com/
instance/disk/
read_bytes_count

Delta count of bytes
read from disk.

Disk max read
operations

compute.googleapis.com/
instance/disk/
max_read_ops_count

Maximum number of
read operations that
can be performed per
second.

Disk write bytes

compute.googleapis.com/
instance/disk/
write_bytes_count

Delta count of bytes
written to disk.

Disk max write
operations

compute.googleapis.com/
instance/disk/
max_write_ops_count

Maximum number of
write operations that
can be performed per
second.

Disk read operations

compute.googleapis.com/
instance/disk/
read_ops_count

Delta count of disk
read IO operations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4451


<!-- page 4452 -->
GCP metrics (continued)
Metric name

Metric type

Service

Description

Disk write operations

compute.googleapis.com/
instance/disk/
write_ops_count

Delta count of disk
write IO operations.

Memory balloon RAM
size

compute.googleapis.com/
instance/memory/
balloon/ram_size

The total amount of
memory allocated
to the guest's
balloon driver in
bytes. Memory
ballooning enables
the hypervisor to
reclaim memory from
the guest VM.

Memory balloon RAM
used

compute.googleapis.com/
instance/memory/
balloon/ram_used

Memory currently
used by the guest
RAM, excluding
memory used by
the balloon itself,
measured in bytes.

Memory swap in

compute.googleapis.com/
instance/
memory/balloon/
swap_in_bytes_count

The amount of
memory (in bytes)
swapped in from disk
to memory.

Memory swap out

compute.googleapis.com/
instance/
memory/balloon/
swap_out_bytes_count

The amount of
memory (in bytes)
swapped out from
memory to disk.

Network received
bytes

compute.googleapis.com/
instance/network/
received_bytes_count

Delta count of bytes
received from the
network.

Network sent bytes

compute.googleapis.com/
instance/network/
sent_bytes_count

Delta count of bytes
sent over the network.

Network received
packets

compute.googleapis.com/
instance/network/
received_packets_count

Delta count of packets
received from the
network.

Network sent packets

compute.googleapis.com/
instance/network/
sent_packets_count

Delta count of packets
sent over the network.

Anonymous memory
used

compute.googleapis.com/
guest/memory/
anonymous_used

Anonymous memory
usage in bytes.
Anonymous memory
represents memory
that is not backed by a
file.

Memory bytes used

compute.googleapis.com/
guest/memory/
bytes_used

Total memory usage in
bytes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4452


<!-- page 4453 -->
GCP metrics (continued)
Metric name

Metric type

Service

Description

Dirty memory used

compute.googleapis.com/
guest/memory/
dirty_used

Dirty memory usage in
bytes. Dirty pages are
pages in memory that
have been modified
but not yet written to
disk.

Page cache used

compute.googleapis.com/
guest/memory/
page_cache_used

Page cache memory
usage in bytes. Page
cache is used to
cache file data.

Unevictable memory
used

compute.googleapis.com/
guest/memory/
unevictable_used

Unevictable memory
usage in bytes.
Unevictable memory
is memory that cannot
be swapped out.

Disk operation bytes

compute.googleapis.com/
guest/disk/
operation_bytes_count

Delta count of bytes
transferred in disk
operations.

System problem state

compute.googleapis.com/
guest/system/
problem_state

Indicates whether
the system is
experiencing
problems. 1 means
there is a problem, 0
means no problem.

System uptime

compute.googleapis.com/
guest/system/uptime

Delta of system
uptime in seconds.

System problem count compute.googleapis.com/
guest/system/
problem_count

Delta count of system
problems detected.

CPU limit utilization

kubernetes.io/anthos/
container/cpu/
limit_utilization

anthos

Memory limit
utilization

kubernetes.io/anthos/
container/memory/
limit_utilization

The fraction of the
memory limit that is
currently in use on the
instance.

Executions

cloudfunctions.googleapis.com/
cloudfunctions
function/
execution_count

Count of function
executions broken
down by status.

Tunnel established

n.googleapis.com/
tunnel_established

Indicates successful
tunnel establishment
if > 0.

vpn

RTT latencies per
loadbalancing.googleapis.com/
loadbalancing
internal TCP/UDP load l3/internal/
balancer
rtt_latencies

The fraction of the
CPU limit that is
currently in use on the
instance.

A distribution of
RTT measured over
TCP connections for

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4453


<!-- page 4454 -->
GCP metrics (continued)
Metric name

Metric type

Service

Description

internal TCP/UDP load
balancer flows.
Unacked messages by pubsub.googleapis.com/
pubsub
region
subscription/
num_unacked_messages_by_region

Number of
unacknowledged
messages in a
subscription, broken
down by Cloud region.

Disabled for network

firebasedatabase.googleapis.com/
firebasedatabase
network/
disabled_for_overages

Indicates if the
Firebase database
has been disabled for
network overages.

Disabled for storage

firebasedatabase.googleapis.com/
storage/
disabled_for_overages

Indicates if the
Firebase database
has been disabled for
storage overages.

Database load

firebasedatabase.googleapis.com/
io/database_load

Fraction of database
load, grouped by type.

CPU utilization

cloudsql.googleapis.com/
database/cpu/
utilization

Current CPU utilization
represented as a
percentage of the
reserved CPU that is
currently in use.

Disk utilization

cloudsql.googleapis.com/
database/disk/
utilization

The fraction of the
disk quota that is
currently in use.

Instance state

cloudsql.googleapis.com/
database/
instance_state

The current serving
state of the Cloud SQL
instance.

Memory utilization

cloudsql.googleapis.com/
database/memory/
utilization

The fraction of the
memory quota that is
currently in use.

Server up

cloudsql.googleapis.com/
database/up

Indicates if the server
is up.

CPU utilization by
priority

spanner.googleapis.com/
instance/cpu/
utilization_by_priority

Smoothed CPU
utilization

spanner.googleapis.com/
instance/cpu/
smoothed_utilization

24-hour smoothed
utilization of
provisioned CPU.

Storage used

spanner.googleapis.com/
instance/storage/
used_bytes

Storage used in bytes.
Sampled every 60
seconds.

CPU usage percent

memcache.googleapis.com/ memcache
node/cpu/utilization

CPU usage percent by
Memcached node.

cloudsql

spanner

Percent utilization of
provisioned CPU, by
priority.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4454


<!-- page 4455 -->
GCP metrics (continued)
Metric name

Metric type

Service

Description

Cache memory usage

memcache.googleapis.com/
node/cachememory

Used memory

redis.googleapis.com/
redis.googleapis.com/
stats/memory/
usage_ratio

Memory usage ratio

redis.googleapis.com/
stats/memory/
usage_ratio

CPU load

bigtable.googleapis.com/
cluster_cpu_load

Disk load

bigtable.googleapis.com/
cluster_disk_load

Utilization of HDD
disks in a cluster.

Storage utilization

bigtable.googleapis.com/
cluster_storage_utilization

Storage used as
a fraction of total
storage capacity.

HDFS storage
utilization

dataproc.googleapis.com/
cluster/hdfs/
storage_utilization

Unhealthy HDFS
blocks by status

dataproc.googleapis.com/
hdfs/
unhealthy_blocks

Processes

agent.googleapis.com/
processes/
count_by_state

Process CPU

agent.googleapis.com/
processes/cpu_time

TCP connections

agent.googleapis.com/
processes/network

Bytes allotted for the
Memcached cache in
this node, grouped by
whether that memory
is used.
redis

Total number of bytes
allocated by Redis.

Memory usage as
a ratio of maximum
memory.
bigtable

dataproc

CPU load of a cluster.

The percentage
of HDFS storage
currently used.
Indicates the number
of unhealthy blocks
inside the cluster.

processes

Count of processes
in the given state.
Relevant for Linux
only.
Time taken by CPU
to complete a given
process.

network

Current count of TCP
connections.

Glassfish default checks and policies
Agent Client Collector provides the following default checks and policies for Glassfish
monitoring.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4455


<!-- page 4456 -->
Glassfish metrics policy
Type

Check

Metric

glassfish.metricjvm-level

Description

Retrieves the
Glassfish server's
JVM metrics.
Requires basic
authentication
credentials.

Usage and usage
example

-i,
-instance
Glassfish
Monitor
ing
Instance
Name
(requir
ed)
-p,
-password
Glassfish
password
-P,
--port
Glassfish
API port
--ssl
Enable
secure
connnect
ion to
Glassfish
-u
–username

Output

glassfish.jvm.garbagecollectors.Scavenge.Coll
200 0
1652959788

Glassfish
username

Usage example:
metricglassfishjvm-level.rb
{{if .labels.params_port}}
-P
{{.labels.params_port}}
{{end}} -i
{{.labels.params_glassfish_server_ins
Metric

glassfish.metricserver-requests

Provides
http-request
metrics for all
applications
deployed on the
Glassfish server.

-i,
-instance
Glassfish
Monitor
ing
Instance
Name

glassfish.httpservice.server.request.C
200 0
1652959788

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4456


<!-- page 4457 -->
Glassfish metrics policy (continued)
Type

Check

Description

Requires basic
authentication
credentials.

Usage and usage
example

Output

(requir
ed)
-p,
-password
Glassfish
password
-P,
--port
Glassfish
API port
--ssl
Enable
secure
connnect
ion to
Glassfish
-u
–username
Glassfish
username

Usage example:
metricglassfishserverrequests.rb
-i
{{.labels.params_glassfish_server_ins
{{if .labels.params_port}}
-P
{{.labels.params_port}}
{{end}}
Metric

glassfish.metricserver-resources

Provides metrics
of the resources
deployed on the
Glassfish server.
Requires basic
authentication
credentials.

-i,
-instance
Glassfish
Monitor
ing
Instance
Name
(requir
ed)
-P,
--port
Glassfish
API port
-r
--

glassfish.resources.
{{PoolName}}.AverageConn
0 1652959936

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4457


<!-- page 4458 -->
Glassfish metrics policy (continued)
Type

Check

Description

Usage and usage
example

Output

resource_p
ool
Resource
Pool Name
--ssl
Enable
secure
connnect
ion to
Glassfish
-u
–username
Glassfish
username
-p
-password
Glassfish
password

Usage example:
metricglassfishserverresources.rb
{{if .labels.params_port}}
-P
{{.labels.params_port}}
{{end}}
{{if .labels.params_resource_pool}}
-r
{{.labels.params_resource_pool}}
{{end}} -i
{{.labels.params_glassfish_server_ins
Metric

glassfish.metrictransactionservice

Provides
metrics for all
transactions
on applications
deployed on the
Glassfish server.
Requires basic
authentication
credentials.

-i,
-instance
Glassfish
Monitor
ing
Instance
Name
(requir
ed)
-P,
--port
Glassfish
API port

glassfish.transactionservice.ActiveCount
0 1652959977

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4458


<!-- page 4459 -->
Glassfish metrics policy (continued)
Type

Check

Description

Usage and usage
example

Output

--ssl
Enable
secure
connnect
ion to
Glassfish
-u
–username
Glassfish
username
-p
-password
Glassfish
password

Usage example:
metricglassfishtransactionservice.rb
{{if .labels.params_port}}
-P
{{.labels.params_port}}
{{end}} -i
{{.labels.params_glassfish_server_ins
Metric

glassfish.metricsProvides metric
deployed-apps
output of
applications
deployed on the
Glassfish server.
Requires basic
authentication
credentials.

-a,
--apps
Applicat
ion
deployed
on
Glassfish
server
(requir
ed)
-i,
-instance
Glassfish
Monitor
ing
Instance
Name
(requir
ed)
-P,
--port

glassfish.applications.
{{Deployed
Application}}.ActivatedS
0 1652959665

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4459


<!-- page 4460 -->
Glassfish metrics policy (continued)
Type

Check

Description

Usage and usage
example

Output

Glassfish
API port
--ssl
Enable
secure
connnect
ion to
Glassfish
-u
–username
Glassfish
username
-p
-password
Glassfish
password

Usage example:
metricglassfishdeployedapplications.rb
{{if .labels.params_port}}
-P
{{.labels.params_port}}
{{end}} -a
{{.labels.params_deployed_apps}}
-i
{{.labels.params_glassfish_server_ins
Metric

glassfish.metricsProvides lifecycle
deploymentmetrics of the
lifecycle
Glassfish server
applications.
Requires basic
authentication
credentials.

metric-gla
ssfish-dep
loyment-li
fecycle.rb
(options)
-i,
-instance
Glassfish
Monitor
ing
Instance
Name
(requir
ed)
-p
-password

glassfish.deployment.lif
2 1653022649

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4460


<!-- page 4461 -->
Glassfish metrics policy (continued)
Type

Check

Description

Usage and usage
example

Output

Glassfish
password
-P,
--port
Glassfish
API port
--ssl
Enable
secure
connnect
ion to
Glassfish
-u
–username
Glassfish
username

Usage example:
metricglassfishdeploymentlifecycle.rb
{{if .labels.params_port}}
-P
{{.labels.params_port}}
{{end}} -i
{{.labels.params_glassfish_server_ins
GlassFish metrics
The following table lists the metrics that are gathered as output from GlassFish checks. Entries
indicated as Featured metrics are high-visibility metrics that are displayed in the Operator
Workspace Metric tab after an alert is generated. These metrics provide the operator with
additional information to help them further explore the specified issue.
glassfish.metrics-deployed-apps metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

glassfish.applications. Deployed Application
{Deployed
Application}.TotalServletsLoaded

count

Total number of
Servlets loaded so far.

glassfish.applications. Deployed Application
{Deployed
Application}.ServletProcessingTimes

ms

Cumulative Servlet
processing times.

glassfish.applications. Deployed Application
{Deployed
Application}.ActiveServletsLoaded

count

Number of Servlets
loaded.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4461


<!-- page 4462 -->
glassfish.metrics-deployed-apps metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

glassfish.applications. Deployed Application
{Deployed
Application}.ExpiredSessionsTotal
(featured metric)

count

Total number of
sessions expired so
far.

glassfish.applications. Deployed Application
{Deployed
Application}.PassivatedSessionsTotal

count

Total number of
sessions passivated
so far.

glassfish.applications. Deployed Application
{Deployed
Application}.ActivatedSessionsTotal

count

Total number of
sessions activatedso
far.

glassfish.applications. Deployed Application
{Deployed
Application}.SessionsTotal

count

Total number of
sessions created so
far.

glassfish.applications. Deployed Application
{Deployed
Application}.RejectedSessionsTotal
(featured metric)

count

Total number of
sessions rejected so
far.

glassfish.applications. Deployed Application
{Deployed
Application}.PersistedSessionsTotal

count

Total number of
sessions persisted so
far.

glassfish.applications. Deployed Application
{Deployed
Application}.ActiveSessions
(featured metric)

count

Number of active
sessions.

glassfish.applications. Deployed Application
{Deployed
Application}.RequestCount

count

Cumulative number of
requests processed
so far

glassfish.applications. Deployed Application
{Deployed
Application}.MaxTime
(featured metric)

ms

Longest response
time for a request;
not a cumulative
value, but the largest
response time from
among the response
times.

glassfish.applications. Deployed Application
{Deployed
Application}.ErrorCount
(featured metric)

count

Cumulative value
of the error count,
with error count
representing the
number of cases
where the response
code was greater than
or equal to 400.

glassfish.applications. Deployed Application
{Deployed
Application}.ProcessingTime

ms

Average request
processing time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4462


<!-- page 4463 -->
glassfish.metrics-deployed-apps metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

glassfish.applications. Deployed Application
{Deployed
Application}.TotalJspCount

count

Total number of JSP
pages loaded so far.

glassfish.applications. Deployed Application
{Deployed
Application}.JspCount

count

Number of active JSP
pages.

glassfish.applications. Deployed Application
{Deployed
Application}.JspErrorCount
(featured metric)

count

Total number of errors
triggered by JSP page
invocations.

glassfish.applications. Deployed Application
{Deployed
Application}.JspReloadedCount

count

Total number of
reloaded JSP pages.

glassfish.metrics-deployment-lifecycle metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

glassfish.deployment.lifecycle.ActiveApplicationsDeployed
count
(featured metric)

Total number of
applications deployed
so far.

glassfish.deployment.lifecycle.TotalApplicationsDeployed
count
(featured metric)

Number of
applications
deployed.

glassfish.metric-server-requests metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

glassfish.httpservice.server.request.Count200

count

Number of responses
with a status code
equal to 200.

glassfish.httpservice.server.request.Count2xx

count

Number of responses
with a status code in
the 2xx range.

glassfish.httpservice.server.request.Count302

count

Number of responses
with a status code
equal to 302.

glassfish.httpservice.server.request.Count304

count

Number of responses
with a status code
equal to 304.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4463


<!-- page 4464 -->
glassfish.metric-server-requests metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

glassfish.httpservice.server.request.Count3xx

count

Number of responses
with a status code
equal in the 3xx range.

glassfish.httpservice.server.request.Count400

count

Number of responses
with a status code
equal to 400.

glassfish.httpservice.server.request.Count401

count

Number of responses
with a status code
equal to 401.

glassfish.httpservice.server.request.Count403

count

Number of responses
with a status code
equal to 403.

glassfish.httpservice.server.request.Count404

count

Number of responses
with a status code
equal to 404.

glassfish.httpservice.server.request.Count4xx

count

Number of responses
with a status code
equal in the 4xx range.

glassfish.httpservice.server.request.Count503

count

Number of responses
with a status code
equal to 503.

glassfish.httpservice.server.request.Count5xx

count

Number of responses
with a status code
equal in the 5xx range.

glassfish.httpservice.server.request.MaxTime

ms

Longest response
time for a request;
not a cumulative
value, but the largest
response time from
among the response
times.

glassfish.httpservice.server.request.CountBytesReceived
(featured metric)

count

Number of bytes
received.

glassfish.httpservice.server.request.CountBytesTransmitted
(featured metric)

count

Number of bytes
transmitted.

glassfish.httpservice.server.request.RequestCount
(featured metric)

count

Cumulative number of
requests processed
so far.

glassfish.httpcount
service.server.request.CountOpenConnections

Number of open
connections.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4464


<!-- page 4465 -->
glassfish.metric-server-requests metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

ms

Average request
processing time.

Units

Metric type description

glassfish.jvm.garbagecollectors.Scavenge.CollectionCount

count

Total number of
collections that have
occurred.

glassfish.jvm.garbagecollectors.Scavenge.CollectionTime

ms

Approximate
accumulated
collection elapsed
time in milliseconds.

glassfish.httpservice.server.request.ProcessingTime
(featured metric)
glassfish.metric-jvm-level metrics
Metric type

Resource (name of
specific database,
where relevant)

glassfish.jvm.garbagecount
collectors.MarkSweepCompact.CollectionCount

Total number of
collections that have
occurred.

glassfish.jvm.garbagems
collectors.MarkSweepCompact.CollectionTime

Approximate
accumulated
collection elapsed
time in milliseconds.

glassfish.jvm.memory.CommittedHeapSize

bytes

Amount of memory
in bytes that is
committed for the
Java virtual machine
to use.

glassfish.jvm.memory.CommittedNonHeapSize bytes

Amount of memory
in bytes that is
committed for the
Java virtual machine
to use.

glassfish.jvm.memory.InitHeapSize

bytes

Amount of memory
in bytes that the
Java virtual machine
initially requests
from the operating
system for memory
management.

glassfish.jvm.memory.InitNonHeapSize

bytes

Amount of memory
in bytes that the
Java virtual machine
initially requests
from the operating

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4465


<!-- page 4466 -->
glassfish.metric-jvm-level metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

system for memory
management.
glassfish.jvm.memory.MaxHeapSize
(featured metric)

bytes

Maximum amount
of memory in bytes
that can be used for
memory management.

glassfish.jvm.memory.MaxNonHeapSize

bytes

Maximum amount
of memory in bytes
that can be used for
memory management.

glassfish.jvm.memory.ObjectPendingFinalizationCount
count

Approximate number
of objects for which
finalization is pending.

glassfish.jvm.memory.UsedHeapSize

bytes

Amount of used
memory in bytes.

glassfish.jvm.memory.UsedNonHeapSize

bytes

Amount of used
memory in bytes.

Units

Metric type description

glassfish.transactionservice.ActiveCount
(featured metric)

count

Provides the number
of transactions that
are currently active.

glassfish.transactionservice.CommittedCount
(featured metric)

count

Provides the number
of transactions that
have been committed.

glassfish.transactionservice.RolledBackCount
(featured metric)

count

Provides the number
of transactions that
have been rolled
back.

Units

Metric type description

ms

Average waittime-duration per
successful connection
request.

glassfish.metric-transaction-service metrics
Metric type

Resource (name of
specific database,
where relevant)

glassfish.metric-server-resources metrics
Metric type

Resource (name of
specific database,
where relevant)

glassfis.resources.
PoolName
{PoolName}.AverageConnWaitTime

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4466


<!-- page 4467 -->
glassfish.metric-server-resources metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

glassfis.resources.
PoolName
{PoolName}.ConnRequestWaitTime

ms

The longest and
shortest wait times of
connection requests.
The current value
indicates the wait time
of the last request that
was serviced by the
pool.

glassfis.resources.
PoolName
{PoolName}.NumConnAcquired

count

Number of logical
connections acquired
from the pool.

glassfis.resources.
PoolName
{PoolName}.NumConnCreated

count

The number of
physical connections
that were created
since the last reset.

glassfis.resources.
PoolName
{PoolName}.NumConnDestroyed

count

Number of physical
connections that were
destroyed since the
last reset.

glassfis.resources.
PoolName
{PoolName}.NumConnfailedValidation

count

The total number of
connections in the
connection pool that
failed validation from
the start time until the
last sample time.

glassfis.resources.
PoolName
{PoolName}.NumConnFree

count

The total number of
free connections in
the pool as of the last
sampling.

glassfis.resources.
PoolName
count
{PoolName}.NumConnnotSuccessfullyMatched

Number of
connections rejected
during matching.

glassfis.resources.
PoolName
{PoolName}.NumConnReleased

count

Number of logical
connections released
to the pool.

glassfis.resources.
PoolName
{PoolName}.NumConnSuccessfullyMatched

count

Number of
connections
successfully matched.

glassfis.resources.
PoolName
{PoolName}.NumConnTimedOut

count

The total number of
connections in the
pool that timed out
between the start time
and the last sample
time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4467


<!-- page 4468 -->
glassfish.metric-server-resources metrics (continued)
Resource (name of
specific database,
where relevant)

Metric type

Units

Metric type description

glassfis.resources.
PoolName
{PoolName}.NumConnUsed

count

Provides connection
usage statistics.
The total number
of connections that
are currently being
used, as well as
information about the
maximum number of
connections that were
used (the high water
mark).

glassfis.resources.
PoolName
{PoolName}.NumPotentialConnLeak
(featured metric)

count

Number of potential
connection leaks.

glassfis.resources.
PoolName
{PoolName}.WaitQueueLength
(featured metric)

count

Number of connection
requests in the queue
waiting to be serviced.

HAProxy default checks and policies
Agent Client Collector provides the following default checks and policies for HAProxy monitoring.
HAProxy events policy
Type

Check

Description

Event

check-haproxy

Retrieves the
details of the
HAProxy load
balancer to
determine
whether it is
running.

Usage

commonche
cks
check-hap
roxy
(options)
-h
host
host
-P
port
Port on
which the
HAProxy
server is
running
-A
all
services
all
services
-q
Path
on which
HAProxy
Stats
URI is

Output

CheckHAProxy
OK: UP: 50%
of 4 //
services,
DOWN:
backend/
nginx1[L4CON],
backend/
BACKEND

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4468


<!-- page 4469 -->
HAProxy events policy (continued)
Type

Check

Description

Usage

Output

configu
red
-use ssl
ssl
Usage example:
checkhaproxy.rb
-h localhost
-P 8080
-A true
-q stats
-use_ssl
false

HAProxy metrics policy
Type

Check

Description

Metric

metrics-checkhaproxy

Retrieves the
HAProxy load
balancer metrics
to determine
whether it is
running.

Usage

commonche
cks
metrics-c
heck-hapr
oxy
(options)
-q host
Path on
which
HAProxy
Stats
URI is
configu
red
-P port
Port on
which the
HAProxy
server is
running
-c host
host
name
Usage example:
metricscheckhaproxy.rb
-q stats

Output

<hostname>
.haproxy.f
rontend.se
ssion_curr
ent 0
1652265
603
<hostname>
.haproxy.f
rontend.se
ssion_to
tal 0
1652265
603
<hostname>
.haproxy.b
ackend.ses
sion_curr
ent 0
1652265
603
<hostname>
.haproxy.b
ackend.ses
sion_total
1
1652265
603

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4469


<!-- page 4470 -->
HAProxy metrics policy (continued)
Type

Check

Description

Usage

Output

-P 8080 -c
localhost
HAProxy metrics
The following table lists the metrics that are gathered as output from HAProxy checks. Entries
indicated as Featured metrics are high-visibility metrics that are displayed in the Operator
Workspace Metric tab after an alert is generated. These metrics provide the operator with
additional information to help them further explore the specified issue.
Front-end metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

haproxy.frontend.session_current
(featured metric)

count

The current number of
sessions being used
to issue requests.

haproxy.frontend.session_total
(featured metric)

count

Total number of
sessions

haproxy.frontend.bytes_in
(featured metric)

count

The total number
of bytes recieved
by the server in the
last second from the
client.

haproxy.frontend.bytes_out
(featured metric)

count

The total number of
bytes sent by the
server in the last
second.

haproxy.frontend.connection_errors
(featured metric)

count

The number of
requests that
encountered an error
trying to connect to a
server.

haproxy.frontend.warning_retries

count

The number of times a
connection to a server
was retried.

haproxy.frontend.warning_redispatched

count

The number of
times a request was
redispatched to
another server.

haproxy.frontend.response_1xx

count

HAProxy exposes the
number of responses
by HTTP status code 1xx

haproxy.frontend.response_2xx

count

HAProxy exposes the
number of responses

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4470


<!-- page 4471 -->
Front-end metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

by HTTP status code 2xx
haproxy.frontend.response_3xx

count

HAProxy exposes the
number of responses
by HTTP status code 3xx

haproxy.frontend.response_4xx

count

HAProxy exposes the
number of responses
by HTTP status code 4xx

haproxy.frontend.response_5xx

count

HAProxy exposes the
number of responses
by HTTP status code 5xx

haproxy.frontend.response_other

count

HAProxy exposes
the number of
responses by nonHTTP application

haproxy.frontend.queue_time

count

The average queue
time over the last 1024
requests.

haproxy.frontend.connect_time

count

The average connect
time over the last 1024
requests.

haproxy.frontend.response_time
(featured metric)

count

The response time to
the client

haproxy.frontend.average_time
(featured metric)

count

The average time
taken for the sessions.

Units

Metric type description

haproxy.backend.session_current
(featured metric)

count

The current number of
sessions being used
to issue requests.

haproxy.backend.session_total
(featured metric)

count

Total number of
sessions

haproxy.backend.bytes_in
(featured metric)

count

The total number
of bytes recieved
by the server in the
last second from the
client.

Back-end metrics
Metric type

Resource (name of
specific database,
where relevant)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4471


<!-- page 4472 -->
Back-end metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

haproxy.backend.bytes_out
(featured metric)

count

The total number of
bytes sent by the
server in the last
second.

haproxy.backend.connection_errors
(featured metric)

count

The number of
requests that
encountered an error
trying to connect to a
server.

haproxy.backend.warning_retries

count

The number of times a
connection to a server
was retried.

haproxy.backend.warning_redispatched

count

The number of
times a request was
redispatched to
another server.

haproxy.backend.response_1xx

count

HAProxy exposes the
number of responses
by HTTP status code 1xx

haproxy.backend.response_2xx

count

HAProxy exposes the
number of responses
by HTTP status code 2xx

haproxy.backend.response_3xx

count

HAProxy exposes the
number of responses
by HTTP status code 3xx

haproxy.backend.response_4xx

count

HAProxy exposes the
number of responses
by HTTP status code 4xx

haproxy.backend.response_5xx

count

HAProxy exposes the
number of responses
by HTTP status code 5xx

haproxy.backend.response_other

count

HAProxy exposes
the number of
responses by nonHTTP application

haproxy.backend.queue_time

count

The average queue
time over the last 1024
requests.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4472


<!-- page 4473 -->
Back-end metrics (continued)
Metric type

Resource (name of
specific database,
where relevant)

Units

Metric type description

haproxy.backend.connect_time

count

The average connect
time over the last 1024
requests.

haproxy.backend.response_time
(featured metric)

count

The response time to
the client

haproxy.backend.average_time
(featured metric)

count

The average time
taken for the sessions.

haproxy.backend.num_up

count

HTTP default checks and policies
Agent Client Collector provides the following policies for HTTP health monitoring. Policies come
with the checks specified in the tables below.
HTTP entry point events policy
Type

Check

Description

Usage and Usage
Example

Event

util.check-httpfollow-redirect

Verifies that
redirection links
can be followed
in a set number
of requests.

Usage checkhead-redirect.rb
(options):

Output

Check Head
Redirect OK

• -A, --auth-firstonly: Use basic
auth on first
request only.
• -aws-accesskey-id: AWS
Access Key.
Either set
ENV["AWS_ACCESS_KEY_ID"]
or provide it as
an option on
agent.
• -r -aws-region:
AWS Region
(defaults to useast-1).
• --aws-secretaccess-key:
AWS Secret
Access Key.
Either set
ENV["AWS_SECRET_ACCESS_KEY"]
or provide it as
an option on
agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4473


<!-- page 4474 -->
HTTP entry point events policy (continued)
Type

Check

Description

Usage and Usage
Example

Output

• -R --redirect:
Follow first <N>
redirects
• -g --getredirects:
Follow first <N>
redirects with
GET requests.
• -s, --s3config-bucket:
S3 config
bucket to get
configuration.
• -k, --s3-configkey: S3 config
key to get
configuration.
• -u, --url: URL
needs to be
updated in
Monitoring
HTTP
Entrypoint/
cmdb_ci_endpoint_http_list.do
for the CI.
The Aws-region,
aws-secret-key,
aws-accesskey ,s3-config,
s3-config-key
parameters are
useful if you
do not want
to configure
connection
information in
other check
parameters. If a
bucket and key
have access to
the environment
in which the
Sensu check
executes in,
provide an AWS
key and token
and the checks
pull the specified
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4474


<!-- page 4475 -->
HTTP entry point events policy (continued)
Type

Check

Description

Usage and Usage
Example

Output

JSON file from S3
and merge the
JSON config into
the current check
configuration.
Usage example:
command:
check-headredirect.rb
-R 10 -u
'https://
servicenow.com'
Event

util.check-httpresponse

Verifies URL
response time
and raises a
CRITICAL/
WARNING
event if elapsed
time exceeds
provided
CRITICAL/
WARNING
thresholds.
Otherwise, it
raises an OK
event.

Usage: checkhead-redirect.rb
(options)

Check Head
Redirect OK

• -R, --redirect:
Follow first <N>
redirects.
• -w -timeout_warning:
Set the timeout
threshold for
warning in
milliseconds.
• -c -timeout_critical:
Set the timeout
threshold
for critical in
milliseconds.
• -u, --url URL
needs to be
updated in
Monitoring
HTTP
Entrypoint/
cmdb_ci_endpoint_http_list.do
for the CI.
Usage example:
command:
check-headredirect.rb
-R 10 -u
'https://
servicenow.com'

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4475


<!-- page 4476 -->
HTTP entry point events policy (continued)
Type

Check

Description

Usage and Usage
Example

Output

-w 3000 -c
5000

HTTP entry point metrics policy
Type

Check

Description

Metric

util.metrics-httpcurl

Retrieves
metrics on HTTP
endpoints using
curl.
This check
requires a proxy
agent.

Usage and Usage
Example

Output

Usage:

Check run
successfully.
Output:

• -a, --curl_args
"CURL ARGS":
Additional
arguments to
pass to curl.
• s, --scheme
SCHEME:
Metric naming
scheme, text
to append to
metric (Default:
hostname).

ws10.curl_timings.time_total
0.219622
1642749209

ws10.curl_timings.time_namelooku
0.145494
1642749209
ws10.curl_timings.time_connect
0.151103
1642749209

• -u, --url: URL
ws10.curl_timings.time_pretransfer
needs to be
0.168569
updated in
1642749209
Monitoring
ws10.curl_timings.time_redirect
HTTP
Entrypoint/ 0.095899
1642749209
cmdb_ci_endpoint_http_list.do
for the CI.
ws10.curl_timings.time_starttransfe
0.219351
Usage example:
1642749209
metricscurl.rb -u
ws10.curl_timings.http_code
myURL.com -a 200 1642749209
-Lk
HTTP entry point metrics
The following table lists the metrics that are gathered as output from HTTP entry point checks.
Entries indicated as Featured metrics are high-visibility metrics that are displayed in the
Operator Workspace Metric tab after an alert is generated. These metrics provide the operator
with additional information to help them further explore the specified issue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4476


<!-- page 4477 -->
HTTP entry point metrics
Metric type

Resource (name of
specific database,
where relevant)

Units

http_code (featured
metric)

Metric type description

Status code of the
request.

time_total (featured
metric)

milliseconds

The total time the
operation lasted.

time_namelookup
(featured metric)

seconds

Time to resolve the
name in the URL.

time_connect
(featured metric)

seconds

Time to complete the
connection to the
remote host or proxy.

time_pretransfer
(featured metric)

seconds

Time between start
and beginning of file
transfer. Includes
all pre-transfer
commands and
negotiations.

time_starttransfer
(featured metric)

seconds

Time between
the start and the
transfer of the first
byte. Includes

time_pretransfer
and the time the
server used to
calculate the result.
time_redirect
(featured metric)

seconds

Time for all redirection
steps including:
• name lookup
• connect
• pretransfer
• transfer
Shows the complete
execution time for
multiple redirections.

HTTP response code check
Agent Client Collector provides the following additional check for HTTP response code. This
check is not associated with any policy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4477


<!-- page 4478 -->
HTTP response code check
Type

Name

Description

Event

util.check-httpresponse-code

Raises a critical
event if the URL
response code
doesn’t match
the regex.
Pass credentials
(username
and password)
using secure
parameters.

Usage and usage
example

-u, --url
URL needs
to be
updated
in the
Monitor
ing HTTP
Entrypoi
nt/cmdb_ci
_endpoint_
http_list
.do for
the CI
-r,
-response-c
ode Regex
string to
match the
response
code.
Otherwi
se, a
critical
event is
raised.
Default:
200
-f,
-follow_red
irects
Follows
redirect
URLs

Output

CheckResponseCode
OK : URL
is in OK
state. HTTP
Response
code is
200, matches
regex

Usage example:
command:
checkresponsecode.rb -u
'https://
servicenow.com'
-r 2.. -f
Internet Information Services (IIS) metrics
The following table lists the metrics that are gathered as output from IIS checks. Entries indicated
as Featured metrics are high-visibility metrics that are displayed in the Operator Workspace
Metric tab after an alert is generated. These metrics provide the operator with additional
information to help them further explore the specified issue.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4478


<!-- page 4479 -->
Resource (name of
specific database,
where relevant)

Metric type

Units

Metric type description

iis._Total.Web_Service(_Total).Current_Connections
count
(featured metric)

Total number of
current connections
to IIS.

iis._Total.Web_Service(_Total).Total_Get_Requests
count
(featured metric)

Total of HTTP GET
requests received by
the IIS server.

iis._Total.Web_Service(_Total).Total_Post_Requests
count
(featured metric)

Total of HTTP POST
requests received by
the IIS server.

iis._Total.Web_Service(_Total).Get_Requests/
sec (featured metric)

count per second

Rate of all HTTP GET
requests received by
the IIS server.

iis._Total.Web_Service(_Total).Post_Requests/
sec (featured metric)

count per second

Rate of all HTTP POST
requests received by
the IIS server.

Linux default checks and policies
Agent Client Collector provides the following default checks and policies for Linux Metrics
monitoring.

Linux monitoring metrics checks
Linux metrics policy
Check

Metric Name

os.linux.metricsproc.acc.running
processusage

proc.acc.cpuPercent

proc.acc.memPercent

os.linux.metricsreboot.count.today
rebootcounttoday

Resource

Description Units

processname

Number of count
processes
running
with this
name(acc)

processname

Percentage percent
of cpu
taken
by the
process.

processname

Percentage percent
of
memory
taken
by the
process.

empty

Number
of reboot
done on
today

Featured
Metric

Anomaly
Detection

count

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4479


<!-- page 4480 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

os.linux.metricscpu.total.user
systemcpu

total

Normal
count
processes
executing
in user
mode;
cpu.total.user
is the total
of the
cpuN.user
metrics.

cpu.total.nice

total

Niced
count
processes
executing
in user
mode;
cpu.total.nice
is the total
of the
cpuN.nice
metrics.

cpu.total.system

total

Time
sec
the CPU
spent
running
the
kernel;
cpu.total.system
is the total
of the
cpuN.system
metrics.

cpu.total.idle

total

Total time sec
the CPU
spent in
an idle
state.;
cpu.total.idle
is the total
of the
cpuN.idle
metrics.

cpu.total.iowait

total

Total time sec
the CPU
spent
waiting
for IO
operations
to
complete.;

Featured
Metric

Anomaly
Detection

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4480


<!-- page 4481 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

cpu.total.iowait
is the total
of the
cpuN.iowait
metrics.
cpu.total.irq

total

Total time sec
that the
processor
is
spending
on
handling
Interrupts.;
cpu.total.irq
is the total
of the
cpuN.irq
metrics.

cpu.total.softirq

total

Time
sec
spent on
servicing
soft
interrupt
requests;
cpu.total.softirq
is the total
of the
cpuN.softirq
metrics.

cpu.total.steal

total

Total time sec
the virtual
CPU
spent
waiting
for the
hypervisor
to service
another
virtual
CPU. Only
applies
to virtual
machines.

cpu.total.guest

total

Total time sec
the CPU
spent
running
the virtual
processor.
Only

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4481


<!-- page 4482 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

applies to
hypervisors.
cpu.total.guest_nice

total

Total time sec
the CPU
spent
running
as nice
guest OS.
cpu.total.guset_nice
si the total
of the
cpuN.guest_nice
metrics

cpu.<cpu-core>.user

cpu-core

Time
sec
spent with
normal
processing
in user
mode.

cpu.<cpu-core>.nice

cpu-core

Time
sec
spent
with niced
processes
in user
mode.

cpu.<cpucore>.system

cpu-core

Time
spent
running
in kernel
mode.

sec

cpu.<cpu-core>.idle

cpu-core

Time
spent in
vacations
twiddling
thumbs.

sec

cpu.<cpu-core>.iowait

cpu-core

Time
sec
spent
waiting
for I/O to
completed.
This is
considered
idle time
too.

cpu.<cpu-core>.irq

cpu-core

Time
spent
serving

sec

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4482


<!-- page 4483 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

hardware
interrupts.
cpu.<cpu-core>.softirq cpu-core

Time
sec
spent
serving
software
interrupts.

cpu.<cpu-core>.steal

cpu-core

Time
sec
stolen
by other
operating
systems
running in
a virtual
environment.

cpu.<cpu-core>.guest

cpu-core

Time
sec
spent for
running
a virtual
CPU or
guest OS
under the
control of
the kernel.

cpu.<cpucore>.guest_nice

cpu-core

Total time
the CPU
spent
running
as nice
guest OS.

cpu.intr

empty

Interrupts sec
serviced
since boot
time.

cpu.ctxt

empty

Total
number
of context
switches
across all
CPUs.

count

cpu.btime

empty

The
time the
system
booted

sec

cpu.processes

empty

The
count
number of
processes

sec

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4483


<!-- page 4484 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

and
threads
created,
which
includes
(but is not
limited
to) those
created
by calls
to the
fork() and
clone()
system
calls.
cpu.procs_running

empty

The total
count
number of
processes
running
on all
CPUs.

cpu.procs_blocked

empty

The
count
number of
processes
currently
blocked,
waiting
for I/O to
complete.

cpu.cpu_count

empty

Number
of cpu
on the
system

cpu.<cpu-core>.cores

cpu-core

The
core
number of count
CPU cores

os.linux.metricsload_avg.one
systemcpu-load

empty

The
average
system
load
over one
minute.

thread
count

yes

yes

load_avg.five

empty

The
average
system
load
over five
minutes.

thread
count

yes

yes

count

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4484


<!-- page 4485 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

load_avg.fifteen

empty

The
average
system
load over
fifteen
minutes.

load_avg.norm.one

empty

The
thread
average
count
system
load
over one
minute
normalized
by the
number of
CPUs.

load_avg.norm.five

empty

The
thread
average
count
system
load
over five
minutes
normalized
by the
number of
CPUs.

load_avg.norm.fifteen

empty

The
thread
average
count
system
load over
fifteen
minutes
normalized
by the
number of
CPUs.

empty

Percent of percent
cpu was
used on
average

empty

Percent of percent
time total
cpu was
used by
normal
processes
in user
mode

os.linux.metricscpu.avgutilization_​
systempercentage
cpupercentage
cpu.user_percentage

thread
count

Featured
Metric

Anomaly
Detection

yes

yes

yes

yes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4485


<!-- page 4486 -->
Linux metrics policy (continued)
Check

Featured
Metric

Anomaly
Detection

Percent
percent
of time all
cpus used
by niced
processes
in user
mode

yes

yes

empty

The
percent
percent
of time
the CPU
spent
running
the kernel.

yes

yes

empty

Percent
percent
of time all
cpus were
idle

yes

yes

empty

Percent
of time
all cpus
waiting
for I/O to
complete

percent

yes

yes

empty

Percent
of time
all cpus
servicing
interrupts

percent

yes

yes

empty

Percent
of time
all cpus
servicing
software
interrupts

percent

yes

yes

empty

Percent
of time
all cpus
serviced
virtual
hosts
operating
systems

percent

yes

yes

cpu.guest_percentage empty

Percent
of time
all cpus
serviced
guest

percent

yes

yes

Metric Name

Resource

Description Units

cpu.nice_percentage

empty

cpu.system_​
percentage

cpu.idle_percentage

cpu.iowait_​
percentage

cpu.irq_percentage

cpu.softirq_​
percentage

cpu.steal_percentage

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4486


<!-- page 4487 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

yes

yes

yes

yes

operating
system
os.linux.metricsdisk.<disksystemname>.reads
disk

disk-name Total
count
number
of reads
completed
successfully.

disk.<diskname>.readsMerged

disk-name Total
number
of reads
merged

count

disk.<diskname>.sectorsRead

disk-name Total
count
number
of sectors
read
successfully.

disk.<diskname>.readTime

disk-name Total
millisec
number of
milliseconds
spent by
all reads.

disk.<diskname>.writes

disk-name Total
count
number
of writes
completed
successfully.

disk.<diskname>.writesMerged

disk-name Total
number
of writes
merged

disk.<diskname>.sectorsWritten

disk-name Total
count
number
of sectors
written
successfully.

disk.<diskname>.writeTime

disk-name Total
misllisec
number of
milliseconds
spent by
all writes.

disk.<diskname>.ioInProgress

disk-name Total
number
of I/Os
currently
in
progress

count

count

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4487


<!-- page 4488 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

disk.<diskname>.ioTime

Description Units

Total time millisec
spent
doing I/Os

Featured
Metric

Anomaly
Detection

yes

yes

disk.<diskdisk-name Total time millisec
name>.ioTimeWeighted
spent
doing
I/Os.
This can
provide
an easy
measure
of both
I/O
completion
time
and the
backlog
that
may be
accumulating.
os.linux.metricsdisk.<file-systemsystemname>.total
diskcapacity

filesystemname

The total
size of
the file
system.

disk.<file-systemname>.used

filesystemname

The total
byte
amount
of space
allocated
to existing
files in
the file
system.

disk.<file-systemname>.avail

filesystemname

The total
amount
of space
available
within
the file
system.

disk.<file-systemfilename>.used_percentagesystemname

byte

byte

The
percent
percentage
of the
available
space that
currently
allocated
to all files

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4488


<!-- page 4489 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

yes

yes

on the file
system.
disk.<file-systemname>.itotal

filesystemname

The total
number
of inodes
on the file
system.

count

disk.<file-systemname>.iused

filesystemname

The
number
of used
inodes.

count

disk.<file-systemname>.iavail

filesystemname

The
number
of free
(unused)
inodes.

count

disk.<file-systemfilename>.iused_percentage
systemname
os.linux.metricsdisk_usage.<disk>.total disk-name
systemdiskusage

The
percent
percentage
of used
inodes.
Total
amount
of space
available
on this
disk

bytes

disk_usage.<disk>.used disk-name Total
amount
of space
used in
this disk

bytes

disk_usage.<disk>.avail disk-name Total
amount
of space
available
on this
disk

bytes

disk_usage.<disk>.used_​disk-name The
percent
percentage
percentage
of space
used on
this disk
os.linux.metricsmemory.total
systemmemoryos.​
linux.metricssystem-​

empty

Total
usable
RAM.

KB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4489


<!-- page 4490 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

memorypercent

memory.free

empty

Total free
RAM.

memory.available

empty

An
KB
estimate
of how
much
memory is
available
for
starting
new
applications,
without
swapping.

memory.buffers

empty

Temporary KB
storage
used for
raw disk
blocks.

memory.cached

empty

InKB
memory
cache for
files read
from disk
(the page
cache).
Does not
include
mem_swapcached.

memory.swapTotal

empty

Total
amount
of swap
space
available.

memory.swapFree

empty

Amount
of swap
space
that is
currently
unused.

memory.dirty

empty

Memory
KB
which is
waiting to
get written
back to
the disk.

memory.swapUsed

empty

The
amount

Featured
Metric

Anomaly
Detection

yes

yes

yes

yes

yes

yes

KB

KB

KB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4490


<!-- page 4491 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

of swap
space in
use.
memory.used

empty

The
amount
of RAM in
use.

KB

memory.​
empty
usedWOBuffersCaches

The
KB
amount of
memory in
use.

memory.​
empty
freeWOBuffersCaches

Value of
KB
MemAvailable
from /
proc/
meminfo
if present,
but falls
back to
adding
free +
buffered
+ cached
memory if
not.

memory.​
swapUsedPercentage

empty

Percent
of swap
space
used.

memory_percent.free

empty

Percent of percent
free RAM

yes

yes

memory_percent.​
available

empty

Percent
of Mem
available

percent

yes

yes

memory_percent.​
buffers

empty

Precent of percent
Memory
used for
raw disk
blocks

yes

yes

memory_percent.​
cached

empty

Percent of percent
memory
used
for inmemory
cache for
files read
from disk

yes

yes

percent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4491


<!-- page 4492 -->
Linux metrics policy (continued)
Check

Featured
Metric

Anomaly
Detection

Percent of percent
memory
waiting to
get written
back to
the disk.

yes

yes

Percent
of swap
space
used.

percent

yes

yes

memory_percent.​
empty
usedWOBuffersCaches

Percent of percent
memory
is being
used

yes

yes

memory_percent.​
empty
freeWOBuffersCaches

Percent of percent
Memory
available

yes

yes

Metric Name

Resource

Description Units

memory_percent.dirty

empty

memory_percent.​
swapUsed

empty

os.linux.metrics-​
system.uptime(sec)
systemuptime

empty

The
sec
amount of
time the
system
has been
working
and
available.

os.linux.metrics-​
vmstat.nr_free_pages
memoryvmstat

empty

Pages
that are
currently
unused
by the
system.

vmstat.nr_alloc_batch

empty

pages
pages
allocated
to other
domains
due to
insufficient
memory
in each
domain
of each
NUMA

vmstat.nr_​
inactive_anon

empty

memory
pages
in each
domain
of each
NUMA

pages

pages

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4492


<!-- page 4493 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

node
that have
not been
accessed
for a long
time
vmstat.nr_active_anon empty

AnonymousKB
virtual
memory
pages
that have
been
recently
used

vmstat.nr_inactive_file empty

The
KB
memory
page
corresponding
to the file
that has
not been
accessed
for a long
time in
each
domain
of each
NUMA.

vmstat.nr_active_file

empty

The
pages
memory
page
corresponding
to the
file that
has been
accesseed
recently .

vmstat.nr_unevictable empty

The
count
number
of pages
is in the
unevictable
(non-)LRU
list

vmstat.nr_mlock

Pages
pages
mapped
into a
VM_LOCKED
VMA - are

empty

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4493


<!-- page 4494 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

a class of
unevictable
pages.
vmstat.nr_anon_​
pages

empty

Memory
mapped
pages
that is not
part of a
file.

pages

vmstat.nr_mapped

empty

The
count
number of
memory
mapped
pages.

vmstat.nr_file_pages

empty

vmstat.nr_dirty

empty

Pages
waiting to
be written
to disk

pages

vmstat.nr_writeback

empty

Pages
currently
being
written to
disk

pages

vmstat.nr_slab_​
reclaimable

empty

Pages
pages
from the
kernel
slab
memory
usage that
can be
reclaimed

vmstat.nr_slab_​
unreclaimable

empty

Pages
pages
from the
kernel
slab
memory
usage that
cannot be
reclaimed

vmstat.nr_page_table_​ empty
pages

Pages
allocated
to page
tables

vmstat.nr_kernel_​
stack

Amount of KB
memory
allocated

empty

pages

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4494


<!-- page 4495 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

to kernel
stacks.
vmstat.nr_unstable

empty

vmstat.nr_bounce

empty

vmstat.nr_vmscan_​
write

empty

vmstat.nr_vmscan_​
immediate_reclaim

empty

vmstat.nr_writeback_​
temp

empty

vmstat.nr_isolated_​
anon

empty

vmstat.nr_isolated_file empty

The
count
number of
unstable
pages
in each
domain
of each
NUMA
node

The
number
of dirty
pages
written
back
during a
scan of
LRU(s)

count

The
count
number of
anonymous
memory
pages
isolated
in each
domain
of each
NUMA
node
The
number
of pages
of file
storage
pages
isolated
in each
domain
of each
NUMA
node

count

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4495


<!-- page 4496 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

vmstat.nr_shmem

empty

The
number
of shared
memory
pages

count

vmstat.nr_dirtied

empty

The
number
of dirty
pages
in each
domain
of each
NUMA
node

count

vmstat.nr_written

empty

vmstat.numa_hit

empty

The
count
number
of pages
that were
successfully
allocated
to this
node.

vmstat.numa_miss

empty

The
number
of pages
that were
allocated
on this
node
because
of low
memory
on the
intended
node.

vmstat.numa_foreign

empty

The
count
number
of pages
initially
intended
for this
node
that were
allocated
to another
node
instead.

Featured
Metric

Anomaly
Detection

count

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4496


<!-- page 4497 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

vmstat.numa_​
interleave

empty

The
count
number of
interleave
policy
pages
successfully
allocated
to this
node.

vmstat.numa_local

empty

The
count
number
of pages
successfully
allocated
on this
node, by
a process
on this
node

vmstat.numa_other

empty

The
number
of pages
allocated
on this
node, by
a process
on
another
node.

vmstat.workingset_​
refault

empty

vmstat.workingset_​
activate

empty

vmstat.workingset_​
nodereclaim

empty

Featured
Metric

Anomaly
Detection

count

vmstat.nr_anon_transparent_​
empty
hugepages
vmstat.nr_free_cma

empty

Free
continuous
memory
allocator
pages
in each
domain
of each
NUMA

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4497


<!-- page 4498 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

vmstat.nr_dirty_​
threshold

empty

Description Units

Featured
Metric

Anomaly
Detection

vmstat.nr_dirty_​
empty
background_threshold
vmstat.pgpgin

empty

The
count
number
of pages
brought in
from disk

vmstat.pgpgout

empty

The
count
number
of pages
written out
to disk

vmstat.pswpin

empty

The
count
number
of pages
brought in
from swap
space

vmstat.pswpout

empty

The
number
of pages
swapped
out into
swap
space

vmstat.pgalloc_dma

empty

count

vmstat.pgalloc_dma32 empty
vmstat.pgalloc_normal empty
vmstat.pgalloc_​
movable

empty

vmstat.pgfree

empty

The
count
number of
pages are
free since
last boot

vmstat.pgactivat

empty

Number
count
of page
activations
since last
boot

vmstat.pgdeactivate

empty

Number
count
of page
deactivations

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4498


<!-- page 4499 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

since last
boot
vmstat.pgfault

empty

Minor
faults
since last
boot

pages

vmstat.pgmajfault

empty

Major
faults
since last
boot

pages

vmstat.pglazyfreed

empty

vmstat.pgrefill_dma

empty

Number
of page
refills
since last
boot

count

Number
of pages

count

vmstat.pgrefill_dma32 empty
vmstat.pgrefill_normal empty

vmstat.pgrefill_​
movable

empty

vmstat.pgsteal_​
kswapd_dma

empty

vmstat.pgsteal_​
kswapd_dma32

empty

vmstat.pgsteal_​
kswapd_normal

empty

vmstat.pgsteal_​
kswapd_movable

empty

vmstat.pgsteal_​
direct_dma

empty

vmstat.pgsteal_​
direct_dma32

empty

vmstat.pgsteal_​
direct_normal

empty

vmstat.pgsteal_​
direct_movable

empty

vmstat.pgscan_​
kswapd_dma

empty

vmstat.pgscan_​
kswapd_dma32

empty

vmstat.pgscan_​
kswapd_normal

empty

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4499


<!-- page 4500 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

scanned
by
kswapd
since boot
vmstat.pgscan_​
kswapd_movable

empty

vmstat.pgscan_​
direct_dma

empty

vmstat.pgscan_​
direct_dma32

empty

vmstat.pgscan_​
direct_normal

empty

vmstat.pgscan_​
direct_movable

empty

vmstat.pgscan_​
direct_throttle

empty

vmstat.zone_​
reclaim_failed

empty

vmstat.pginodesteal

empty

Number
count
of pages
reclaimed
since boot

vmstat.slabs_scanned empty
vmstat.kswapd_​
inodesteal

empty

vmstat.kswapd_low_​
wmark_hit_quickly

empty

vmstat.kswapd_high_​
wmark_hit_quickly

empty

vmstat.pageoutrun

empty

Number
of times
kswapd
called
page
reclaim

vmstat.allocstall

empty

Number
count
of times
page
reclaim
was called
directly
(low
memory)

vmstat.pgrotated

empty

count

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4500


<!-- page 4501 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

vmstat.drop_​
pagecache

empty

vmstat.drop_slab

empty

vmstat.numa_pte_​
updates

empty

vmstat.numa_huge_​
pte_updates

empty

vmstat.numa_hint_​
faults

empty

vmstat.numa_hint_​
faults_local

empty

vmstat.numa_pages_​
migrated

empty

vmstat.pgmigrate_​
success

empty

vmstat.pgmigrate_fail

empty

vmstat.compact_​
migrate_scanned

empty

vmstat.compact_​
free_scanned

empty

vmstat.compact_​
isolated

empty

vmstat.compact_stall

empty

The
count
number
of times a
process
stalls
to run
memory
compaction
so that
a huge
page is
free for
use.

vmstat.compact_fail

empty

The
count
number of
times the
system
tries to
compact
memory
but failed.

Featured
Metric

Anomaly
Detection

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4501


<!-- page 4502 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

vmstat.compact_​
success

empty

The
count
number of
times the
system
compacted
memory
and freed
a huge
page for
use.

vmstat.htlb_buddy_​
alloc_success

empty

vmstat.htlb_buddy_​
alloc_fail

empty

vmstat.unevictable_​
pgs_culled

empty

vmstat.unevictable_​
pgs_scanned

empty

vmstat.unevictable_​
pgs_rescued

empty

vmstat.unevictable_​
pgs_mlocked

empty

vmstat.unevictable_​
pgs_munlocked

empty

vmstat.unevictable_​
pgs_cleared

empty

vmstat.unevictable_​
pgs_stranded

empty

vmstat.thp_fault_alloc

empty

The
count
number
of huge
pages is
successfully
allocated
to handle
a page
fault.

vmstat.thp_fault_​
fallback

empty

The
count
number
of page
fault fails
to allocate
a huge
page and
instead

Featured
Metric

Anomaly
Detection

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4502


<!-- page 4503 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

falls back
to using
small
pages.
vmstat.thp_collapse_alloc
empty

The
count
number of
collapse
of a range
of pages
into one
huge
page
and then
successfull
allocation
of a new
huge
page to
store the
data.

vmstat.thp_collapse_​
alloc_failed

empty

The
count
number of
collapse
of a range
of pages
into one
huge
page but
failed the
allocation.

vmstat.thp_split

empty

The
number
of split of
a huge
page
into base
pages

vmstat.thp_zero_​
page_alloc

empty

The
count
number of
successful
allocation
of huge
zero page

vmstat.thp_zero_​
page_alloc_failed

empty

The
count
number
of times
the kernel
failed to
allocate

count

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4503


<!-- page 4504 -->
Linux metrics policy (continued)
Check

Metric Name

Resource

Description Units

Featured
Metric

Anomaly
Detection

huge zero
page and
falls back
to using
small
pages.
vmstat.balloon_inflate empty
vmstat.balloon_​
deflate

empty

vmstat.balloon_​
migrate

empty

os.linux.metricsproc.<process>.VmSize processprocessname
status

The total
amount
of virtual
memory
used
by the
process

KB

proc.<process>.VmRSS processname

The nonswapped
physical
memory
a process
has used

KB

proc.<process>.VmSwapprocessname

The total
amount
of swap
space
used.

KB

Linux network monitoring checks

Note: When upgrading from an earlier version, manually add the checks in this table to
the Linux metrics policy.
Linux metrics policy
Type

Check

Description

Metric

os.linux.metrics-Retrieves
networkall network
interface
interface
related
metrics for
Linux servers.

Usage and
usage example

Metrics
collected

• rxBytes
(featured
• -x,
metric)
excludeinterface:
• rxPackets
List of
(featured
interfaces
metric)
to exclude
• rxErrors

Usage:

Featured
Metric

yes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4504


