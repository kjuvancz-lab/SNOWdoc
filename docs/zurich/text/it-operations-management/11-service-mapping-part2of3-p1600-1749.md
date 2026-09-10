# Zurich IT Operations Management — Service Mapping

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 1600–1749 of 4823 | Part 2 of 3

Sections: Service Mapping (p1450)

---

<!-- page 1600 -->
Oracle Database (on Windows) (continued)
Command

Parameter

Description

and

select value as
NEEBULA from v\
$parameter where
name='log_archive_dest'
and

select file_name
as NEEBULA from
dba_data_files;
and

select DB_LINK,HOST
from DBA_DB_LINKS
lsnrctl

version
And

services
netstat

Various options

This command is used only
for discovering the real
application cluster (RAC)
version.
Gets the RAC version.
Lists open ports.

Oracle iAS Web Module (on Windows)
Command

Parameter

Description

findstr

Various options

Extracts strings from the
output.

dir

Various options

Lists files and folders in the
specified folder.

find

Various options

This command is used only
to create the Web Services
connections.
Finds specified strings in the
file and folders.

netstat

Various options

Lists open ports.

Parameter

Description

version

Gets the version and status of
the Oracle Net Listener.

Oracle Net Listener (on UNIX)
Command

lsnrctl

and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1600


<!-- page 1601 -->
Oracle Net Listener (on UNIX) (continued)
Command

Parameter

Description

status
export
crsctl

-

Sets the variable.

status res -t

Gets the services status and
configuration.

and

config service -d
Oracle PeopleSoft (on UNIX)
Command

Parameter

Description

psadmin

Various options

Retrieves information from
the PeopleSoft repository or
server.

tnsping

Various options

Retrieves information about
the database instance given
to the tnsping command.

sqlplus

Various options

Connects to the database
instance and runs the sql
query.

Oracle Process Manager (on Windows)
Command

Parameter

Description

findstr

Various options

Extracts strings from the
output.

dir

Various options

Lists files and folders in the
specified folder.

find

Various options

Finds specified strings in the
file and folders.

Oracle Report Server (on Windows)
Command

Parameter

Description

findstr

Various options

Extracts strings from the
output.

dir

Various options

Lists files and folders in the
specified folder.

find

Various options

Finds specified strings in the
file and folders.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1601


<!-- page 1602 -->
Oracle Tnslsnr Engine (on Windows)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specific strings in files
and folders.

Oracle WebLogic Module (on Windows)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specific strings in files
and folders.

Oracle WebLogic Server (version 10.3) (on Windows)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specific strings in files
and folders.

Oracle WebLogic On-demand Router Load Balancer (on UNIX or Windows)
Command

Parameter

Description

dir

Various options

(On Windows only) Lists files
and folders in the specified
folder.

findstr

Various options

(On Windows only) Extracts
strings from the output.

find

Various options

(For Windows only) Finds
specific strings in files and
folders.

versionInfo.sh

-

Gets the Websphere
Application Server version.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1602


<!-- page 1603 -->
Oracle Tuxedo (on Unix or Windows)
Command

Parameter

Description

findstr

Various

(For Windows only) Extracts
strings from the output

dir

Various

(For Windows only) Lists all
existing files in the given
folder.

find

Various

(For Windows only) Finds
specific strings in files and
folders.

find

-name

This command is used
only to create web service
connections.
Finds files and folders for
specific name.

tmadmin

-v

Gets the Tuxedo version.

netstat

Various

Gets open ports.

ss

Various options

Lists open ports.

Oracle Tuxedo Portal (on UNIX or Windows)
Command

Parameter

Description

findstr

Various

(For Windows only) Extracts
strings from the output

dir

Various

(For Windows only) Lists all
existing files in the given
folder.

find

Various

(For Windows only) Finds
specific strings in files and
folders.

find

-name

This command is used
only to create web service
connections.
Finds files and folders for
specific name.

PostgreSQL Database (on UNIX and Windows)
Command

Parameter

Description

postgres

-v

Gets the version.

findstr

Various options

(For Windows only) Extracts
strings from the output.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1603


<!-- page 1604 -->
PostgreSQL Database (on UNIX and Windows) (continued)
Command

Parameter

Description

dir

Various options

(For Windows only) Lists files
and folders in the specified
folder.

Red Hat Cluster Suite (on Linux)
Command

Parameter

Description

ps

-ef

Displays the currently running
process.

grep

Various options

Searches plain-text data sets
for lines that match the regular
expression.

grep

-v <string>

Searches plain-text data sets
for lines that do not match the
regular expression.

ps

-ef | grep corosync
| grep -v grep'

Checks if the corosync
process is running on the
server. If the process is
running, the Red Hat Cluster is
running on this server.

ifconfig

-

Displays the current network
configuration information.

ip a

-

Displays the current network
configuration information.

awk

Various options

Manipulates the output.

hostname

-s

Displays the Fully Qualified
Domain Name (FQDN).

hostname

-f

Displays the short host name.

SAP BO BOXI ScheduleRouter (on Windows)
Command

Parameter

Description

findstr

Various options

(For Windows only) Extracts
strings from the output.

type

-

tnsping

instance

This command is used to
create connections to Oracle.

SAP Business Objects CMS Server (on Windows)
Command

Parameter

Description

findstr

Various options

(For Windows only) Extracts
strings from the output.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1604


<!-- page 1605 -->
SAP Business Objects CMS Server (on Windows) (continued)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

tnsping

instance

This command is used to
create connections to Oracle.
Gets the version.

SAP Central Instance (on UNIX or Windows)
Command

Parameter

Description

dir

Various options

(For Windows only) Lists files
and folders in the specified
folder.

disp + work

-V

Gets the version.

ping

-n 1

(For Windows only) Verifies
that the host is answering.

netstat

Various options

Lists open ports.

ss

Lists open ports.

Lists open ports.

SAP NetWeaver Dialog Instance (on UNIX or Windows)
Command

Parameter

Description

dir

Various options

(For Windows only) Lists files
and folders in the specified
folder.

disp + work

-V

Gets the version.

ping

-c 1

(For Unix only) Verifies that the
host is answering.

ping

-n 1

(For Windows only) Verifies
that the host is answering.

netstat

Various options

Lists open ports.

SAP Evaluated Receipt Settlement (ERS) (on UNIX or Windows)
Command

Parameter

Description

dir

Various options

(For Windows only) Lists files
and folders in the specified
folder.

disp + work

-V

Gets the version.

ping

-n 1

(For Windows only) Verifies
that the host is answering.

netstat

Various options

Lists open ports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1605


<!-- page 1606 -->
SAP Evaluated Receipt Settlement (ERS) (on UNIX or Windows) (continued)
Command

Parameter

Description

ss

Lists open ports.

Lists open ports.

SAP HANA Database (on UNIX or Windows)
Command

Parameter

Description

hdbsql

-v

Gets the version.

SAP HANA Database Catalog on UNIX
Command

Parameter

hdbsql

Various options

Description

• Gets schemas info
• Gets time zone
• Gets disk size

SAP Java Cluster (on UNIX or Windows)
Command

Parameter

Description

dir

Various options

(For Windows only) Lists files
and folders in the specified
folder.

jlaunch

-V

Gets the version.

ping

-n 1

(For Windows only) Verifies
that the host is answering.

netstat

Various options

Lists the open ports.

SAP Central Services (SCS) (on UNIX or Windows)
Command

Parameter

Description

dir

Various options

(For Windows only) Lists files
and folders in the specified
folder.

msg_server

-V

Gets the version.

ping

-n 1

(For Windows only) Verifies
that the host is answering.

netstat

Various options

Lists the open ports.

ss

Lists open ports.

Lists open ports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1606


<!-- page 1607 -->
SQL Server Analysis Services (SSAS) (on Windows)
Command

Parameter

Description

MsMdSrv.exe

-n

Gets the instance name.

netstat

Various options

Lists the open ports.

SQL Server Integration Services (SSIS) Job (on Windows)
Command

Parameter

Description

MsMdSrv.exe

-n

Gets the instance name.

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specified strings in the
file and folders.

sqlcmd

This command is used only for

-Stcp:
discovering jobs.
[computer_system.primaryManagementIP],
[port] -y 0
-h-1 -E -Qselect
convert(varchar(max),
convert(varbinary(max),packagedata))from
msdb.dbo.sysssispackages
where name =
'[name]' -o
[tmp_dir]/[name].xml
and

-Stcp:
[computer_system.primaryManagementIP],
[port] -y 0
-h-1 -E -Qselect
convert(varchar(max),
job_id)###[command]@@@
from
msdb.dbo.sysjobsteps
and

-Stcp:
[computer_system.primaryManagementIP],
[port] -y 0
-h-1 -E -Qselect
[name]###convert(varchar(max),
job_id) from
msdb.dbo.sysjobs

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1607


<!-- page 1608 -->
SQL Server Integration Services (SSIS) (on Windows)
Command

Parameter

Description

dir

Various options

Lists files and folders in the
specified folder.

findstr

Various options

Extracts strings from the
output.

find

Various options

Finds specified strings in the
file and folders.

sqlcmd

This command is used only if

-Stcp:
you need to discover jobs.
[computer_system.primaryManagementIP],
[port] -h-1
-E -QSELECT
[name]###DB FROM
msdb.dbo.sysssispackages
and

-Stcp:
[computer_system.managementIP],
[port] -h-1
-E -QSELECT
[name]###DB FROM
msdb.dbo.sysssispackages
and

-Stcp:
[computer_system.primaryManagementIP],
[port] -h-1
-E -QSELECT
[name]###JOB FROM
msdb.dbo.sysjobs
and

-Stcp:
[computer_system.managementIP],
[port] -h-1
-E -Q SELECT
[name]###JOB FROM
msdb.dbo.sysjobs

Sun Directory (on Solaris)
Command

Parameter

Description

slapd-dirserv

-D [instance] -v

Gets the version.

netstat

Various options

Lists the open ports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1608


<!-- page 1609 -->
Sun JES (on Solaris)
Command

Parameter

Description

configutil

-

Gets the JES configuration.

Command

Parameter

Description

dataserverv

-v

Gets the version.

dir

Various options

(For Windows only) Lists files
and folders in the specified
folder.

Sybase (on Unix or Windows)

Symantec Enterprise Vault (on Windows)
Command

Parameter

Description

findstr

Various options

Extracts strings from the
output.

netstat

Various options

Lists open ports.

ping

-n 1[ip]

Verifies that the SQL server is
running.

TIBCO ActiveMatrix Adapter (on UNIX or Windows)
Command

Parameter

Description

hostname

-

Gets the hostname.

"IFS=$'\n';for
i in `find " +
$tra_home + " -type
f | grep -v /tmp
| egrep \".process
$|.substvar$\"`; do
result=`grep \"" +
$entry_point.queue +
"\" $i`; echo $i###
$result@@@; done|
grep -v \"###@@@\""

-

Scans the label file and brings
the actual values.

TIBCO ActiveMatrix BusinessWorks (on UNIX or Windows)
Command

Parameter

Description

TibcoFilesParser.ksh

-

(For Unix only) This file is
necessary for performing the
put file operation. It replaces
all tags in Tibco configuration
files and puts them under
the /tmp folder.

hostname

-

Gets the hostname.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1609


<!-- page 1610 -->
TIBCO ActiveMatrix BusinessWorks (on UNIX or Windows) (continued)
Command

Parameter

Description

cd

-

(On Unix only) Changes
directory.

chmod

-

(On Unix only) Changes file
permissions.

for

Various options

(On Unix only) Runs loops.

echo

Various options

(On Unix only) Prints strings in
the output.

if

Various options

(On Unix only) Starts a
condition.

wc

-l

(On Unix only) Counts the
output lines.

dir

Various options

(On Windows only) Lists files
and folders in the specified
folder.

findstr

Various options

(On Windows only) Extracts
strings from the output.

netstat

Various options

Lists open ports.

TIBCO ActiveMatrix BusinessWorks Process (on UNIX or Windows)
Command

Parameter

Description

hostname

-

Gets the hostname.

cd

-

(On Unix only) Changes
directory.

chmod

-

(On Unix only) Changes file
permissions.

for

Various options

(On Unix only) Runs loops.

echo

Various options

(On Unix only) Prints strings in
the output.

if

Various options

(On Unix only) Starts a
condition.

wc

-l

(On Unix only) Counts the
output lines.

dir

Various options

(On Windows only) Lists files
and folders in the specified
folder.

findstr

Various options

(On Windows only) Extracts
strings from the output.

netstat

Various options

Lists open ports.

ss

Lists open ports.

Lists open ports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1610


<!-- page 1611 -->
TIBCO ActiveMatrix BusinessWorks Process (on UNIX or Windows) (continued)
Command

Parameter

Description

cut

Various options

(On Unix only) Splits the
output line.

TIBCO Enterprise Message Service (EMS) Queue (on UNIX or Windows)
Command

Parameter

Description

rm

-f /tmp/ems.cmd

Prepares the EMS script.

tibemsadmin

-server tcp://
Connects to the EMS
+[computer_system.primaryManagementIP]:
administrator and gets the list
[port] -user
of EMS Queue consumers.
[username] -password
[password] -script
[script]

echo

Various options

Prints strings in the output.

TIBCO Enterprise Message Service (EMS) (on UNIX and Windows)
Command

Parameter

Description

rm

-f /tmp/ems.cmd

Prepares the EMS script.

tibemsadmin

-server tcp://
Connects to the EMS
+[computer_system.primaryManagementIP]:
administrator and gets the list
[port] -user
of EMS Queue consumers.
[username] -password
[password] -script
[script]

echo

Various options

(On Windows only) Prints
strings in the output.

Related topics
Service Mapping commands requiring a privileged user
SNMP-based queries
Service Mapping accesses network infrastructure devices like load balancers and routers
using Simple Network Management Protocol (SNMP) v1/v2c/v3. Configure SNMP community
credentials to enable this type of access.
Configure SNMP community if you use SNMP v1/v2 or SNMPv3 credentials if you use SNMP v3.
For operational information, see SSH credentials .
SNMP-based queries have the format of strings of integers.

General SNMP-based queries
Make sure that the user has credentials for SNMPv3 unless read-only community string is used.
• 1.3.6.1.2.1.47.1.1.1.1.13
• 1.3.6.1.2.1.1.6
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1611


<!-- page 1612 -->
• 1.3.6.1.2.1.47.1.1.1.1
• 1.3.6.1.4.1.9.9.774.1.1.1
• 1.3.6.1.4.1.9.6

SNMP-based queries for switches and routers
• 1.3.6.1.4.1.9.9.46.1.3.1.1
• 1.3.6.1.4.1.9.9.68.1.2.1.1
• 1.3.6.1.2.1.17.1.4.1
• 1.3.6.1.2.1.17.4.3.1
• 1.3.6.1.2.1.17.7.1.2.2.1
• 1.3.6.1.2.1.17.2.15.1
• 1.3.6.1.4.1.9.9.23.1.2.1.1
• 1.3.6.1.4.1.45.1.6.13.2.1.1
• 1.0.8802.1.1.2.1.4.2.1
• 1.0.8802.1.1.2.1.4.1.1

A10 Thunder Series
• 1.3.6.1.4.1.1872.2.5.1.1.1.11
• 1.3.6.1.4.1.1872.2.5.3.1.3.2.1
• 1.3.6.1.4.1.1872.2.5.3.1.2.4.1
• 1.3.6.1.4.1.1872.2.5.1.3.1.10
• 1.3.6.1.4.1.1872.2.5.4.1.1.4.2.1
• 1.3.6.1.4.1.1872.2.5.3.1.6.3.1
• 1.3.6.1.4.1.22610.2.4.1.1.1
• 1.3.6.1.4.1.22610.2.4.1.6.2
• 1.3.6.1.4.1.22610.2.4.3.4.1.2.1
• 1.3.6.1.4.1.22610.2.4.3.2.1.2.1
• 1.3.6.1.4.1.22610.2.4.3.3.1.2.1
• 1.3.6.1.4.1.22610.2.4.3.4.3.1.1
• 1.3.6.1.4.1.22610.2.4.3.3.3.1.1

BIG-IP Local Traffic Manager (LTM ) F5 (on F5 BIG-IP) and BIG-IP Global Traffic
Manager (GTM) F5
• 1.3.6.1.4.1.3375.2.1.6.3
• 1.3.6.1.4.1.3375.2.1.4.1
• 1.3.6.1.4.1.3375.2.1.3.3.3
• 1.3.6.1.4.1.3375.2.1.6.2
• 1.3.6.1.4.1.3375.2.1.2.1.1.2.1
• 1.3.6.1.4.1.3375.2.2.10.1.2.1
• 1.3.6.1.4.1.3375.2.3.12.4.2.1
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1612


<!-- page 1613 -->
• 1.3.6.1.4.1.3375.2.3.12.1.2.1
• 1.3.6.1.4.1.3375.2.1.4.1
• 1.3.6.1.4.1.3375.2.1.6.2
• 1.3.6.1.4.1.3375.2.1.4.2
• 1.3.6.1.4.1.3375.2.2.10.1.2.1
• 1.3.6.1.4.1.3375.2.2.5.6.2.1
• 1.3.6.1.4.1.3375.2.2.10.8.2.1
• 1.3.6.1.4.1.3375.2.2.5.6.2.1
• 1.3.6.1.4.1.3375.2.2.10.1.2.1
• 1.3.6.1.4.1.3375.2.1.4.1
• 1.3.6.1.4.1.3375.2.1.4.2
• 1.3.6.1.4.1.3375.2.1.6.2
• 1.3.6.1.4.1.3375.2.3.11.1.2.1
• 1.3.6.1.4.1.3375.2.3.12.3.2.1
• 1.3.6.1.4.1.3375.2.3.12.4.2.1
• 1.3.6.1.4.1.3375.2.2.5.6.2.1
• 1.3.6.1.4.1.3375.2.3.12.3.2.1
• 1.3.6.1.4.1.3375.2.3.12.4.2.1
• 1.3.6.1.4.1.3375.2.3.12.5.2.1
• 1.3.6.1.4.1.3375.2.3.6.7.2.1
• 1.3.6.1.4.1.3375.2.3.11.4.2.1
• 1.3.6.1.4.1.3375.2.3.3.1.2.1
• 1.3.6.1.4.1.3375.2.3.3.3.2.1
• 1.3.6.1.4.1.3375.2.3.9.1.2.1
• 1.3.6.1.4.1.3375.2.3.9.3.2.1

Cisco Content Services Switch (CSS)
• 1.3.6.1.4.1.2467.1.16.4.1
• 1.3.6.1.4.1.2467.1.31.3
• 1.3.6.1.2.1.1.2
• 1.3.6.1.4.1.2467.4.1
• 1.3.6.1.4.1.2467.4.2
• 1.3.6.1.4.1.2467.4.3
• 1.3.6.1.4.1.2467.4.4
• 1.3.6.1.2.1.1.1
• 1.3.6.1.4.1.2467.1.15.2.1
• 1.3.6.1.4.1.2467.1.16.4.1
• 1.3.6.1.4.1.2467.1.18.2.1

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1613


<!-- page 1614 -->
Cisco Global Site Selector (GSS)
• 1.3.6.1.2.1.1.5 – to get the hostname.
• 1.3.6.1.2.1.1.1 – to get product name.

Citrix Netscaler
• 1.3.6.1.4.1.5951.4.1.3.6.1
• 1.3.6.1.4.1.5951.4.1.3.2.1
• 1.3.6.1.4.1.5951.4.1.3.1.1
• 1.3.6.1.4.1.5951.4.1.2.7.1
• 1.3.6.1.4.1.5951.4.1.2.2.1
• 1.3.6.1.4.1.5951.4.1.2.11.1
• 1.3.6.1.4.1.5951.4.1.2.1.1
• 1.3.6.1.4.1.5951.4.1.1.6
• 1.3.6.1.4.1.5951.4.1.1.26.1
• 1.3.6.1.4.1.5951.4.1.1.24.1
• 1.3.6.1.4.1.5951.4.1.1.14
• 1.3.6.1.2.1.55.1.8.1
• 1.3.6.1.2.1.47.1.1.1.1
• 1.3.6.1.2.1.4.20.1
• 1.3.6.1.2.1.2.2.1
• 1.3.6.1.2.1.2.2.1
• 1.3.6.1.2.1.1.5

Citrix Netscaler Global Server Load Balancer
• 1.3.6.1.4.1.5951.4.1.1.51.3.1.1
• 1.3.6.1.4.1.5951.4.1.2.1.1

HPE BladeSystem Enclosure
• 1.3.6.1.4.1.232.22.2.3.1
• 1.3.6.1.4.1.11.5.7.1.2

IBM WebSphere DataPower
• For horizontal discovery of the Data Power Hosting Server [cmdb_ci_datapower_server]:
◦ 1.3.6.1.2.1.1.1
◦ 1.3.6.1.2.1.1.5
◦ 1.3.6.1.2.1.4.20.1
◦ 1.3.6.1.2.1.2.2.1
◦ 1.3.6.1.4.1.14685.3.1.196.1

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1614


<!-- page 1615 -->
◦ 1.3.6.1.4.1.14685.3.1.11.1
◦ 1.3.6.1.4.1.14685.3.1.112.1
• For top-down discovery of the Data Power [cmdb_ci_datapower_server]:
◦ 1.3.6.1.2.1.1.1
◦ 1.3.6.1.2.1.1.5
◦ 1.3.6.1.4.1.14685.3.1.11.1

Juniper Junos
1.3.6.1.4.1.2636.3.1.3

Network Appliance Filer Storage Array
• 1.3.6.1.4.1.789.1.1.2
• 1.3.6.1.4.1.789.1.1.9

Radware Alteon NG
• 1.3.6.1.4.1.1872.2.5.4.2.32.1
• 1.3.6.1.4.1.1872.2.5.1.1.1.11
• 1.3.6.1.4.1.1872.2.5.3.1.3.2.1
• 1.3.6.1.4.1.1872.2.5.3.1.2.4.1
• 1.3.6.1.4.1.1872.2.5.1.3.1.10
• 1.3.6.1.4.1.1872.2.5.4.1.1.4.2.1
• 1.3.6.1.4.1.1872.2.5.3.1.6.3.1
• 1.3.6.1.4.1.1872.2.5.4.1.1.4.2.1
• 1.3.6.1.2.1.1.1
• 1.3.6.1.4.1.1872.2.5.4.1.1.4.5.1
• 1.3.6.1.4.1.1872.2.5.4.1.1.3.3.1
• 1.3.6.1.4.1.1872.2.5.4.1.1.2.2.1
• 1.3.6.1.2.1.4.24.4.1
• 1.3.6.1.4.1.89.35.1.13.1.2
• 1.3.6.1.4.1.89.2.12
• 1.3.6.1.4.1.89.2.4
• 1.3.6.1.4.1.89.35.1.40.52.1.1
• 1.3.6.1.4.1.89.35.1.13.1
• 1.3.6.1.4.1.89.35.1.30.1
• 1.3.6.1.2.1.68.1.3.1
• 1.3.6.1.4.1.89.35.1.13.1
• 1.3.6.1.4.1.89.35.1.11.1
• 1.3.6.1.4.1.89.35.1.40.52.1.1

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1615


<!-- page 1616 -->
Related topics
ITOM Content Service reference
Create a discovery behavior for Unix-based load balancers
If your network uses load balancers running on Linux hosts, create a discovery behavior to
ensure that Service Mapping and Discovery discover them correctly.

Before you begin

Make sure that Discovery is activated.
Role required: service_mapping_admin or admin

About this task

The discovery and mapping process begins with Discovery identifying the host. After the host
discovery is complete, Service Mapping starts discovering and mapping applications running on
this host.
The default discovery process identifies a configuration item (CI) as a Linux server if it finds an
SSH port in use. It may lead to incorrect discovery of load balancers running on Linux as Linux
servers. Create a discovery behavior to first discover network devices using SNMP protocol.
After Discovery has discovered Unix-based load balancers correctly and created the appropriate
CIs for them, you can continue with discovering and mapping application services in Service
Mapping.
Discovery performs discovery through a MID Server located in the enterprise private network. A
behavior determines:
• What MID Server Discovery is using.
• What probes and patterns the chosen the MID Server is running.

Procedure
1. Create a new behavior for discovering Unix-based load balancers:
a. Navigate to Service Mapping > Administration > Behavior.
b. Click New.
c. Enter the name for this behavior.
d. Right-click on the header bar and click Save.
e. Click New on the Discovery Functionality tab.
f. Enter 1 in the Phase field.
g. Select SNMP only from the Functionality definition list.
h. Select the relevant MID Servers in the MID Servers area.
i. Check the Active check box.
j. Click Submit.
2. Create a discovery schedule for the newly defined behavior:
a. Navigate to Discovery > Discovery Schedules.
b. Click New.
c. Fill in the fields as follows:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1616


<!-- page 1617 -->
Discovery Schedule Form for Discovery
Field

Description

Name

Enter a unique, descriptive name for your schedule.

Discover

Select Configuration items.

MID Server selection method

Select Use behavior.

Behavior

Select the behavior you created in step 1.

Active

Select the check box to enable this schedule. If you
clear the check box, the schedule is disabled, but
you can still run a discovery manually from this form,
using the configured values.

Max run time

Set a time limit for running this schedule. When
the configured time elapses, the remaining tasks
for the discovery are canceled, even if the scan is
not complete. Use this field to limit system load to a
desirable time window. If no value is entered in this
field, this schedule runs until complete.

Max Idle time

Set a time limit for inactivity during discovery to
automatically cancel stalled processes and log
the event. A discovery is only considered idle if no
input records are processed and nothing remains
in the processing state; idle time is measured from
the most recent change to an ECC Queue record.
The configured idle time is fixed at the start of the
discovery and won’t reflect any edits until the next
run. If no value is entered in this field, this schedule
runs until complete or cancelled.

Note: By default, the Max Idle time field
doesn’t display in the Discovery Schedule
form. To include this parameter, open the
Discovery Schedules [discovery_schedule]
table, add the column, and configure the Max
Idle time directly in the table. For information
about customizing columns in tables, see
Personalize a list .
Run and related fields

Determines the run schedule of the discovery.
Configure the frequency in the Run field and the
other fields that appear to specify an exact time.

Note: The run time always uses the system
time zone. If you add the optional Run as tz
field, it has no effect on the actual runtime.

3. Create an IP range for the discovery schedule:

Important: The IP range for the schedule must correlate with the IP range of the MID
Server that you assigned to the behavior. The MID Server must also have the appropriate
application or the ALL application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1617


<!-- page 1618 -->
a. On the Discovery IP Ranges tab, click New.
b. Enter the name for this IP range.
c. Configure the IP range by entering IP addresses in the Starting IP and Ending IP fields.
4. Click Submit.
Related topics
Pattern-based discovery in Service Mapping
MID Server
Verify that Service Mapping is set up properly
Before you start mapping application services, verify that you configured MID Servers to discover
application services and provided all the necessary host and application credentials.

Before you begin

To check readiness of mapping based on Predictive Intelligence, install Service Mapping Plus
from ServiceNow Store.
Role required: service_mapping_admin

About this task

Service Mapping performs an automatic scan of the following resources and configurations to
give you the readiness status:
• (Mandatory) There are MID Servers with correctly configured IP ranges and the applications
and capabilities settings. For more information, see MID Server configuration for Service
Mapping.
If this check does not recognize correctly configured MID Servers, you cannot perform the bulk
discovery.
• (Optional) There are credentials for operating systems and applications as described in
Prerequisites for performing top-down discovery using Service Mapping.
• (Optional) There are at least three load balancers recently discovered during horizontal
discovery.
• (Optional) There are at least 100 hosts discovered by the horizontal discovery in the last 14
days.
• (Optional) The data collection using Netflow or VPC Flow Logs is configured. This configuration
is necessary to enhance the traffic-based discovery in Service Mapping. For more information,
see Data collection and discovery using Netflow and Data collection and discovery using VPC
Flow Logs.
• (Optional) Cloud Discovery is activated and configured. This setting is necessary to discover
application service based on IaaS.
If an optional resource or configuration is missing, you can still map application service, but it
may result in partial discovery of some CIs and connections.
In addition, Service Mapping performs the readiness check for mapping functionality based on
Predictive Intelligence.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1618


<!-- page 1619 -->
Procedure
1. Navigate to All > Service Mapping > Home.
The Home page displays only information on service instances that Service Mapping can
discover or already discovered. The Home page does not display information on service
instances that are created manually or using the API.
2. Verify that Service Mapping is set up and ready for discovery.
If some obligatory configurations are missing, the error displays at the top of the window.
a. Click the link in the error or click the Readiness Checklist icon (

).

b. In the Service Mapping Readiness Checklist window, click the link next to the setup category
with the error icon (
).
You cannot perform discovery and mapping unless there are no errors in the Readiness
Checklist window.
c. Perform the necessary action to complete the setup.
For example, configure missing credentials.
3. If more than one setup category has an error, return to the Readiness Checklist window and fix
any other errors.
4. Verify that Service Mapping is ready for discovery based on Predictive Intelligence.
a. Navigate to Workspaces > Service Mapping, and then select Application Service
Readiness icon

.

b. Verify that all items in the Prerequisites status list are in the Ready state.
If any prerequisites are not fulfilled, perform the necessary procedure, and then select
Check readiness.

What to do next

Map business services in bulk
Related topics
Application service readiness dashboard in configurable workspace
Quick start tests for Service Mapping
After upgrades and deployments of new applications or integrations, run quick start tests to
verify that Service Mapping still works. If you have customized Service Mapping, copy the quick
start tests and configure them for your customizations.
Service Mapping quick start tests require activating the Service Mapping (com.snc.servicemapping) plugin and loading the demo data.
Service Mapping quick start tests
Test

Description

Release version

SM OOTB: Tests SM
application visibility by roles

Validate the visibility
of Service Mapping
applications and modules
for different roles. For
example, the test verifies

Madrid

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1619


<!-- page 1620 -->
Service Mapping quick start tests (continued)
Test

Description

Release version

that a user logged in with
the service_mapping_user
role cannot access the
Administration module under
Service Mapping.
SM OOTB: Service map
verification

Use this test template to
create custom tests for
verifying that the topology of
the most significant services
is unchanged.

Orlando, updated Paris

Configure values under Test
Run Data Sets, to identify the
name of the service to test
and the nodes that you expect
to find in this service.
For the node name values,
enter the node attribute
exactly as it appears on the
map, for example, "Apache
server." If the attribute name
for a node is truncated or
shows that a node is a CI
cluster, configure this node
name value to reflect the way
it appears on the map, for
example, "11x ExchangeF"
for a group of 11 Exchange
FrontEnd servers.

Note: You cannot use
this test to verify the
service content beyond
the top, unexpanded
level.
SM OOTB: Check UI
accessibility after an upgrade

Run this test to check that the
Service Mapping UI is fully
functional after an upgrade.

Orlando

Related topics
Run an automated test
Advanced Service Mapping configuration
Fine-tune Service Mapping collaboration with other components and modules as well as
customize data display in service instance maps.
In addition to the basic setup described in Configuring Service Mapping, you can perform
optional configurations to meet the needs of your organization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1620


<!-- page 1621 -->
• Enable traffic-based discovery for CI types or specific CIs
• Tag-based discovery configuration
• Configuration file tracking
• Fine-tune tracking changes for the change history
• Data collection and discovery using Netflow
• Data collection and discovery using VPC Flow Logs
• Configure Search Assistant for Windows
• Modify display for CI attributes
• Configure support for Windows servers with non-English OS
• Upload the rctrlx.exe file to MID Servers
• Fine-tune Service Mapping with MID affinity and IP reuse
Enable traffic-based discovery for CI types or specific CIs
Service Mapping can discover and map CIs by detecting the inbound and outbound traffic that
the CIs generate. Create a traffic-based discovery rule to determine which configuration items
are available for traffic-based mapping.

Before you begin

If your ServiceNow instance uses domain separation and you have access to the global domain,
log in to the relevant domain. The selected domain must be a domain without any child domains.
Role required: service_mapping_admin
• Ensure that the traffic-based discovery is enabled at the Service Mapping product level:
navigate to Service Mapping > Administration > Properties and verify that the Traffic based
discovery check box is selected.
• Enable traffic-based discovery for a specific service instance as described in Map a single
application service using classic Service Mapping.

About this task

You may choose to use traffic-based discovery in addition to the pattern-based mapping.
You can create rules to configure Service Mapping to use traffic-based discovery for certain CIs.
You can configure traffic-based discovery rules to monitor specific CIs or types of CIs.
For example, you enable traffic-based discovery for a specific service instance that includes
a Tomcat server, a MySQL database, and a web application. You create a CI type rule that
excludes all Tomcat servers from traffic-based discovery. However, you also create a discovery
rule enabling traffic-based discovery for a specific Tomcat server. Service Mapping uses trafficbased discovery to discover the MySQL database, the web application, and that specific Tomcat
despite the CI type rule excluding all Tomcat servers.
Depending on your configuration, the behavior of traffic-based discovery is different. If Predictive
Intelligence is enabled, Service Mapping automatically adds connections to service instances
based on connection rules. These suggestions are generated using traffic-related data from the
Configuration Management Database (CMDB) and the analysis of application fingerprints, CIs,
and processes by Predictive Intelligence.
If discovery based on Predictive Intelligence isn't enabled, Service Mapping automatically adds
traffic-based connections using data from the CMDB to the service instances. However, to keep
your service instances well-organized, you might need to manually remove connections to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1621


<!-- page 1622 -->
irrelevant CIs. To learn more about traffic-based method, see Traffic-based discovery in Service
Mapping.
If your instance uses domain separation, you can create traffic-based rules for specific domains.
Rules in the base system are assigned to the global domain and apply to all domains of all levels.
When you create a rule for a specific domain, the new rule is used only for this domain and does
not exist in any other domains. If you customize an existing rule in the global domain and assign
it to a specific domain, you create a copy of the global rule, which is still used in all other domains
except the domain that has the customized version of this rule. Likewise, if you customize a rule
in the global domain, the change affects all domains except the one that uses a customized copy
of this rule.

Procedure
1. Navigate to Service Mapping > Administration > Traffic Based Discovery.
2. Click New.
3. Define the rule parameters as follows:

Field

Description

Action

Select Enable to add traffic-based connections to the specific CI or CI Type.

Rule
Scope

Select Specific CI to detect traffic for one configuration item, or select CI Type to
detect traffic for all configuration items in one of the CI-based table.

CI/CI
Type

Select a specific CI, or select the table that contains the CIs for which you want to
detect traffic.

Domain Select the domain to which the rule belongs.
4. Click Submit.
5. To fine-tune traffic-based discovery, define advanced parameters as follows:

Parameter

Description

sa.traffic_based_discovery.conn_aging_time

Time period in hours for a Traffic Based
Connection to remain active since last
discovered.
◦ Type: integer
◦ Default value: 72
◦ Other possible values: any number higher
than 24
◦ Location: Service Mapping >
Administration > Properties.

sa.traffic_based_discovery.ignored_ports

Ports to ignore when found by traffic-based
discovery.
This property is available in the System
Property [sys_properties] table.
Change this property to define ports that
Service Mapping ignores while performing
traffic-based discovery. It makes discovery

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1622


<!-- page 1623 -->
Parameter

Description

more efficient since resources are not wasted
on discovering irrelevant connections.
◦ Type: string
◦ Default value: 445, 139, 111, 2049, 860,
3260, 135, 53
◦ Other possible values: any relevant port
numbers
◦ Location: System Property [sys_properties]
table
sa.traffic_based_discovery.max_connections

Maximum number of traffic-based
connections from a single CI.
This property is available in the System
Property [sys_properties] table.
This property helps to keep the map size
reasonable by limiting the number of
possible CI connections.
◦ Type: integer
◦ Default value: 30
◦ Other possible values: any number higher
than 1
◦ Location: System Property [sys_properties]
table

Tag-based discovery configuration
You can refine the default configuration to control which CIs Service Mapping includes in
application services during the tag-based discovery process.

Note: Starting with Service Mapping Plus version 1.16.3, take advantage of the Tag-based
Service Mapping workspace to efficiently map your application services. .
Service Mapping provides preconfigured CI relationships which can participate in tag-based
discovery. You have the ability to customize these CI relationships and refine the default
configuration using one of the following methods:
• include CIs based on classes in tag-based discovery;
• exclude CIs based on their install status;
• exclude preconfigured CI relationships;
• add or edit CI relationships.
To view preconfigured CI relationships which Service Mapping includes in application services
during tag-based discovery, see Preconfigured CI relationships in tag-based discovery.
To view properties installed with Service Mapping that relate to tag-based discovery, see
Properties related to tag-based discovery.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1623


<!-- page 1624 -->
Include CIs based on classes in tag-based discovery
Use CI classes to identify which CIs Service Mapping includes in application services during
tag-based discovery. By default, this list appears empty and includes all CIs belonging to all CI
classes. Define CI classes and allow only CIs belonging to these classes or their extensions to
participate in tag-based discovery.

Before you begin

Learn about default feature configuration in Tag-based discovery in Service Mapping.

Note: Starting with Service Mapping Plus version 1.16.3, take advantage of the Tag-based
Service Mapping workspace to efficiently map your application services. .
Role required: service_mapping_admin

Procedure
1. Navigate to Service Mapping > Administration > Properties.
2. Enter CI classes, separated by commas, in the allow list that controls which tagged CIs
participate in tag-based mapping.

3. Click Save.

What to do next

If you refine the default configuration after creating appliations based on tags, see Recalculate
previously created application services for the next steps.
Exclude CIs based on their installation status in tag-based discovery
Use the CI installation status to create CI classes and exclude CIs from application services
during tag-based discovery. By default, application services based on tags exclude CIs with the
Retired or Absent install status. You can expand this list of excluded CIs to include additional
installation statuses such as Pending install or Stolen.

Before you begin

Learn about default feature configuration in Tag-based discovery in Service Mapping.

Note: Starting with Service Mapping Plus version 1.16.3, take advantage of the Tag-based
Service Mapping workspace to efficiently map your application services. .
Role required: service_mapping_admin

Procedure
1. Navigate to Service Mapping > Administration > Properties.
2. Enter values for installation statuses into the deny list that controls which CIs to exclude from
tag-based mapping based on install status.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1624


<!-- page 1625 -->
Use commas to separate the values.

3. Click Save.

What to do next

If you refine the default configuration after creating appliations based on tags, see Recalculate
previously created application services for the next steps.
Exclude preconfigured CI relationships in tag-based discovery
Exclude preconfigured CI relationships from the tag-based discovery process to refine the
application services created. Service Mapping consists of preconfigured CI relationships and
includes CIs in these relationships even if they do not have assigned tags. Choose which
preconfigured CI relationships to exclude and the remaining CI relationships participate in tagbased discovery.

Before you begin

Learn about default feature configuration in Tag-based discovery in Service Mapping.

Note: Starting with Service Mapping Plus version 1.16.3, take advantage of the Tag-based
Service Mapping workspace to efficiently map your application services. .
Role required: service_mapping_admin

About this task

The Traversal Rules for Application Services [svc_traversal_rules] table stores the CI
relationships that participate in tag-based discovery. By default, preconfigured CI relationships
used in tag-based discovery have the true value in the Base System Rule column. Use this
information to exclude preconfigured CI relationships from tag-based discovery.

Important: You cannot delete or modify preconfigured CI relationships used for tagbased discovery from the Traversal Rules for Application Services [svc_traversal_rules]
table.

Procedure
1. Navigate to Service Mapping > Administration > Tag-based Service Traversal Rules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1625


<!-- page 1626 -->
2. Click the preconfigured CI relationship you want to exclude from tag-based discovery.
To view these CI relationships, see Preconfigured CI relationships in tag-based discovery
3. Clear the Active check box.
4. Click Submit in the Traversal Rules for Application Services form.

What to do next

If you refine the default configuration after creating appliations based on tags, see Recalculate
previously created application services for the next steps.
Add or edit CI relationships in tag-based discovery
Activate pre-configured CI relationships that Service Mapping does not include by default or add
additional relationships to use in the tag-based discovery process. For example, you can add a
CI relationship between Linux servers and storage devices to discover servers hosting storage
devices based on tags.

Before you begin

Learn about default feature configuration in Tag-based discovery in Service Mapping.

Note: Starting with Service Mapping Plus version 1.16.3, take advantage of the Tag-based
Service Mapping workspace to efficiently map your application services. .
Role required: service_mapping_admin

About this task

The Application Services [svc_traversal_rules] table appears filtered to show only CI
relationships used for tag-based discovery. By default, preconfigured CI relationships used in
tag-based discovery have the true value in the Base System Rule column. Use this information to
create new CI relationships or to edit preconfigured CI relationships in tag-based discovery.

Important: You cannot delete or modify preconfigured CI relationships used for tagbased discovery from the Traversal Rules for Application Services [svc_traversal_rules]
table.

Procedure
1. Navigate to Service Mapping > Administration > Tag-based Service Traversal Rules.

2. Click the existing CI relationship that you want to modify or click New to use an additional CI
relationship in the tag-based discovery process.
To view default CI relationships, see Preconfigured CI relationships in tag-based discovery.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1626


<!-- page 1627 -->
3. Complete the Traversal Rules for Application Services form.
To complete this form, see Traversal Rules for Application Services form completion.
4. Click Submit.

What to do next

If you refine the default configuration after creating appliations based on tags, see Recalculate
previously created application services for the next steps
Recalculate previously created application services
Recalculate application services after you refine the default configuration to control which CIs to
include during the tag-based discovery process.

Before you begin

Complete the steps to refine the default configuration for the tag-based discovery process. For
more details, see Tag-based discovery configuration.

Note: Starting with Service Mapping Plus version 1.16.3, take advantage of the Tag-based
Service Mapping workspace to efficiently map your application services. .
Role required: service_mapping_admin

Procedure
1. Navigate to Service Mapping > Services > Application Services.
2. Click the relevant application service.
3. Click Recalculate Service under Related Links.
4. Repeat these steps for all relevant tag-based services.
Fine-tune tracking changes for the change history
Define CI fields for which the system reflects changes in the change history for application
services. The change history view shows changes to CIs making up application services as well
as changes to application services themselves.

Before you begin

Role required: admin

About this task

Details about changes to a service instance and to its CIs are stored in the CMDB. Typically,
these changes reflect adding or removing CIs from a service instance, upgrading or updating
CIs, or modifying CI configuration files. The system gathers this data by querying CMDB tables
and then creating the change history view. In deployments where Service Mapping is activated,
the type of change information Service Mapping queries depends on discovery patterns that
Service Mapping uses to discover CIs.
Changes to configuration files are associated with CIs to which these files belong. Maps show
configuration file changes as changes to related CIs.

Procedure
1. Navigate to All > Configuration > Exclusion List.
The Exclusion Lists list opens displaying records that the system uses to exclude changes from
the change history view.
2. To make the system ignore changes to an extra field:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1627


<!-- page 1628 -->
a. Click New.
b. Enter the CI class name in the Table Name field.
For example, enter cmdb_ci for the Configuration Item [cmdb_ci] class.

Note: The Service Mapping user interface refers to CI classes as CI types.
c. Enter the name of the field you want to exclude in the Field Name field.
For example, enter work_notes to exclude changes to the item work notes from the
change history view.
d. Select Submit.
3. To make the system include previously ignored changes in the change history:
a. Select the check boxes next to the relevant records.
b. Select Delete from the Actions on selected rows list.
Related topics
View the change history of application services in legacy Agent Workspace
View the change history of application services in classic Service Mapping
Data collection and discovery using Netflow
Service Mapping can perform discovery based on data collected using the Netflow protocol.
Netflow is a protocol that Service Mapping can use to collect data about CIs and their
connections along with Netstat and lsof commands.
Using the Netflow protocol for collecting data is one of the traffic-based discovery methods.
Other methods deployed by Service Mapping are using netstat and lsof commands and the VPC
Flow Logs. For more information, refer to Traffic-based discovery in Service Mapping.
In base systems, which are the default or standard configurations, traffic-based discovery relies
solely on TCP-related data collected using the netstat, ss, and lsof commands. Discovery
based on Netflow and VPC logs requires additional configuration. You can enrich your trafficbased discovery by configuring Service Mapping to use the Netflow protocol.
The component, which receives data in the Netflow format is the Netflow Collector. Its location
depends on whether you configure data collection for testing purposes or standard operation:
For the test purposes
This setup results in half automated data collection flow, where Service Mapping
imports data only if you manually copy it from the Netflow Collector. You place
the Netflow Collector on a server inside your organization network. This must be
a server different from the server hosting the MID Server. You configure and test
this setup as described in Configure onetime data import using Netflow for testing
purposes.
For standard operation
This setup results in fully automated data collection flow, where all involved
components send, collect and analyze data automatically. You place the Netflow
Collector on the same server as the MID Server inside your organization network.
For instructions, see Configure data collection using Netflow.
Netflow-based discovery has the following flow:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1628


<!-- page 1629 -->
1. The Netflow daemon runs and receives data from switches communicating with servers in the
organization. The Netflow Collector writes received data from the Netflow daemon.
2. The server, hosting the Netflow collector, uses the Netflow nfdump utility to write the data
into the nfdump output file. This file summarizes the raw data on all switches used for server
communication.
Collecting data and writing it into the nfdump output file

3. In testing setups, where the Netflow Collector is located not on the same server as the MID
Server, you may need to convert the nfdump into the gzip format. Then you must manually
copy the raw data in the nfdump output file onto the MID Server.
Copying the nfdump output file onto the MID Server

4. The MID Server processes the raw data in the nfdump output file and places the processed
information onto the ECC queue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1629


<!-- page 1630 -->
Analyzing the raw data and placing it at the ECC Queue

5. A sensor retrieves the processes data from the ECC queue and writes it into the Flow
Connection [sa_flow_connection] table.
6. Whenever Service Mapping checks the ECC queue and receives information on a discovered
CI, it checks these tables for any data on outbound connections related to the CI: the
cmdb_tcp and sa_flow_connection tables. If these two tables contain unique data that patterns
did not discover, Service Mapping enriches the information about the CI connections and
adds them to the map.
Service Mapping retrieves data from the sa_flow_connection table

Related topics
https://support.servicenow.com/kb_view.do?sysparm_article=KB0597467
Configure onetime data import using Netflow for testing purposes
Configure and test Service Mapping discovery process based on data collected using the
Netflow protocol.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1630


<!-- page 1631 -->
Before you begin

Learn about Traffic-based discovery in Service Mapping.
Role required: admin or service_mapping_admin

About this task

In base systems, which are the default or standard configurations, traffic-based discovery
relies solely on TCP-related data collected using the netstat, ss, and lsof commands.
Discovery based on Netflow and VPC logs requires additional configuration. You can enrich your
traffic-based discovery by configuring Service Mapping to use the Netflow protocol. For more
information about the way Service Mapping to collect Netflow data, see Data collection and
discovery using Netflow.
For testing purposes, install the Netflow Collector (nfdump) on a Unix server inside your
organization. In this case, this Unix server should be different from the server hosting the MID
Server server.
Configure the ServiceNow connector to trigger MID Server to collect the data from the flow log
and processes it.

Procedure
1. Download and install the Netflow collector (nfdump) on a Unix or Ubuntu server inside your
organization.
◦ For a Linux server, download, compile, and install the nfdump package. You can download
the nfdump package from https://sourceforge.net/projects/nfdump/ .
◦ For an Ubuntu server, install the nfdump package without predownloading or compiling it.
Open the command-line window and run the following command:

sudo apt-get install nfdump
◦ For an Ubuntu server, if the apt-get command fails, predownload the nfdump package,
save it locally and then install it. Open the command-line window and run the following
commands:

sudo dpkg -i nfdump_1.6.15-3_i386.deb sudo apt-get -f install

Note: The file name for the nfdump package has the following format:
nfdump_<version number> .deb. In this example it is nfdump_1.6.15-3_i386.deb.
2. Configure the Netflow collector to save data for one day.
a. Open the command-line window on the server hosting the Netflow collector.
b. Create a cron job.
crontab -e
c. Enter the following command using the correct paths.
*/10 * * * * /usr/local/bin/nfexpire -e /data/nfdump -t 1d
3. Create a file with the nfdump data.
For example, use the following command:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1631


<!-- page 1632 -->
nfdump -q -m -R /data/nfdump/ -o extended -t 2016/07/06.07:00:00-2016/07/06.07:10:00 'inet
and proto tcp' >> /tmp/my_file
4. If the file is very large, you can compress it using the gzip format by using the following
command:
gzip /tmp/my_file
5. Copy the nfdump data file to the MID Server.
6. Configure Service Mapping to receive data collected by the Netflow collector:
a. Navigate to Service Mapping > Administration > Flow Connectors.
b. Click New.
c. Click ndfdump file.
d. On the dfdump file page, configure parameters as follows:

Field

Description

Name

A descriptive name for the connector.

nfdump data path

The path to a location on the MID Server to
which you saved the nfdump data file in 5.

MID Server

The MID Server, onto which you copied the
nfdump file.

Gzipped file

If you converted the nfdump file into the gzip
format before saving it on the MID Server,
set this parameter to true to unzip it.

e. Click Submit.
7. Verify that Service Mapping collects data using Netflow:
a. On the nfdump file form, select the newly configured connector and click Run now to start
the data collection flow and populate the Flow Connection [sa_flow_connection] table.
b. Navigate to System Definitions > Tables.
c. Click the Flow Connection [sa_flow_connection] table.
d. Under Related Links, click Show List.
e. Verify that the table contains data.

What to do next

If you are satisfied with the results of the test, configure Netflow-based data collection as
described in Configure data collection using Netflow.
Configure data collection using Netflow
Enable Service Mapping to perform discovery based on data collected using the Netflow
protocol. This setup results in fully automated data collection flow, where all involved
components send, collect, and analyze data automatically.

Before you begin

Learn about Traffic-based discovery in Service Mapping.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1632


<!-- page 1633 -->
Enable the following scheduled job: Flow Discovery Scheduler
[sysauto_script_74c676f0dbb0220060ff742eaf9619f2].
Role required: admin or service_mapping_admin

About this task

In base systems, which are the default or standard configurations, traffic-based discovery
relies solely on TCP-related data collected using the netstat, ss, and lsof commands.
Discovery based on Netflow and VPC logs requires additional configuration. You can enrich your
traffic-based discovery by configuring Service Mapping to use the Netflow protocol. For more
information about the way Service Mapping uses Netflow, see Data collection and discovery
using Netflow.
Configure the ServiceNow Netflow connector to trigger the MID Server to collect the data from
the Netflow flows and process them.

Procedure
1. Install the nfdump package on a server hosting the MID Server in your organization:
◦ For a Linux server, download, compile, and install the nfdump package. You can download
the nfdump package from https://sourceforge.net/projects/nfdump/ .
◦ For an Ubuntu server, install the nfdump package without predownloading or compiling it.
Open the command-line window and run the following command:

sudo apt-get install nfdump
◦ For an Ubuntu server, if the apt-get command fails, predownload the nfdump package,
save it locally and then install it. Open the command-line window and run the following
commands:

sudo dpkg -i nfdump_1.6.15-3_i386.deb sudo apt-get -f install

Note: The file name for the nfdump package has the following format:
nfdump_<version number> .deb. In this example it is nfdump_1.6.15-3_i386.deb.
2. Configure the Netflow collector to save the nfdump file in the required directory.
a. Open the /etc/init.d/nfdump file.
b. Modify the parameter responsible for saving this file in the required location.
For example, on an Ubuntu server, specify the location using the DEAMON_ARGS parameter:
DATA_BASE_DIR="/var/cache/nfdump"
DAEMON_ARGS="-D -l $DATA_BASE_DIR -P $PIDFILE"
For operational information, refer to https://sourceforge.net/projects/nfdump/

.

3. Configure the switches to forward their nfdump files to the MID Server.
The default value for the MID Server is port 9995.
4. Configure the Netflow collector to save data for one day.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1633


<!-- page 1634 -->
a. Open the command-line window on the server hosting the Netflow collector.
b. Create a cron job.
crontab -e
c. Enter the following command using the correct paths.
*/10 * * * * /usr/local/bin/nfexpire -e /data/nfdump -t 1d
5. Verify that the Netflow collector is configured correctly and receives the correct data from the
network resources.
a. Run the following command:
nfdump -q -O tstart -R /data/nfdump/ -o extended
b. In the command output, verify that marked fields contain real data:

6. Configure Service Mapping to receive data collected by the Netflow collector:
a. Navigate to Service Mapping > Administration > Flow Connectors.
b. Click New.
c. Click nfdump install.
d. On the nfdump install page, configure parameters as follows:

Field

Description

Name

A descriptive name for the connector.

MID Server

The MID Server on which you installed the
Netflow collector.

nfdump data directory

The data directory where you configured the
Netflow collector to save the nfdump files.

e. Click Submit.
7. Verify that Service Mapping collects data using Netflow:
a. On the nfdump install form, select the newly configured connector and click Run now to
start the data collection flow and populate the Flow Connection [sa_flow_connection] table.
b. Navigate to System Definitions > Tables.
c. Click the Flow Connection [sa_flow_connection] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1634


<!-- page 1635 -->
d. Under Related Links, click Show List.
e. Verify that the table contains data.

Data collection and discovery using VPC Flow Logs
Service Mapping can perform discovery based on data collected using VPC Flow Logs. Amazon
VPC hosts Amazon Elastic Compute Cloud (EC2) instances that provide Amazon Web Services.
VPC Flow Logs collect data on IP traffic going to and from network interfaces in the VPC.
In base systems, which are the default or standard configurations, traffic-based discovery relies
solely on TCP-related data collected using the netstat, ss, and lsof commands. Discovery
based on Netflow and VPC logs requires additional configuration. You can enrich your trafficbased discovery by configuring Service Mapping to use VPC Flow Logs.
Service Mapping discovery based on VPC Flow logs has the following flow:
1. Amazon EC2 instances collect their individual logs into log streams and forward them to the
central flow log group.
Amazon EC2 instances collect their individual logs

2. The ServiceNow connector triggers MID Server to collect the data from the flow log and
processes it.
3. The MID Server places the processed information onto the ECC queue.
MID Server collects the data from the flow log and places it onto the ECC queue

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1635


<!-- page 1636 -->
4. A sensor retrieves the processes data from the ECC queue and writes it into the Flow
Connection [sa_flow_connection] table.
5. Whenever Service Mapping checks the ECC queue and receives information on a discovered
CI, it checks these tables for any data on outbound connections related to the CI: the
cmdb_tcp and sa_flow_connection tables. If these two tables contain unique data that patterns
did not discover, Service Mapping enriches the information about the CI connections and
adds them to the map.
Collected data is written into the sa_flow_connection table from which Service
Mapping collects the data

In deployments with multiple flow log groups, configure a dedicated connector that works
with one MID Server for every flow log group. Multiple flow log groups my use the same AWS
credentials.
Related topics
https://support.servicenow.com/kb_view.do?sysparm_article=KB0597467
Traffic-based discovery in Service Mapping
Configure data collection using VPC Flow Logs
Enable Service Mapping to perform discovery based on data collected using Virtual Private
Cloud (VPC) logs. This method is relevant for organizations using Amazon Web Services (AWS).

Before you begin

Verify that credentials for the AWS account are configured in the Credentials module of the
platform by navigating to Service Mapping > Credentials > AWS Credentials. For more
information about AWS credentials, see Cloud credentials .
Role required: admin or service_mapping_admin

About this task

In base systems, which are the default or standard configurations, traffic-based discovery relies
solely on TCP-related data collected using the netstat, ss, and lsof commands. Discovery
based on Netflow and VPC logs requires additional configuration. You can enrich your trafficbased discovery by configuring Service Mapping to use VPC Flow Logs. For more information
about the Service Mapping discovery flow based on VPC Flow logs, see Data collection and
discovery using VPC Flow Logs.
Amazon VPC hosts Amazon Elastic Compute Cloud (EC2) instances that provide Amazon Web
Services. VPC flow logs collect data on IP traffic going to and from network interfaces in the VPC.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1636


<!-- page 1637 -->
Configure the ServiceNow connector to trigger MID Server to collect the data from the flow log
and processes it. In deployments with multiple flow log groups, configure a dedicated connector
that works with one MID Server for every flow log group. Multiple flow log groups my use the
same AWS credentials.

Procedure
1. Configure VPC Flow Logs on the Amazon EC2 console as described in the official AWS
documentation.
2. Configure Service Mapping to work with VPC Flow Logs:
a. Navigate to Service Mapping > Administration > Flow Connectors.
b. Click New.
c. Click AWS VPC flow logs.
d. On the AWS VPC flow logs page, configure the connector parameters as follows:

Field

Description

Name

A descriptive name for the connector.

Group name

The name of the central flow log group to
which Amazon EC2 instances forward their
log streams.

MID Server

The MID Server that Service Mapping uses
to collect the data from the flow log group on
AWS.

AWS Credentials

Select AWS credentials relevant for the
account for which you want to collect flow
logs.

e. Click Submit.
3. Verify that Service Mapping collects data using VPC Flow Logs:
a. On the AWS VPC flow logs form, select the newly configured connector and click Run now
to start the data collection flow and populate the Flow Connection [sa_flow_connection]
table.
b. Navigate to System Definitions > Tables.
c. Click the Flow Connection [sa_flow_connection] table.
d. Under Related Links, click Show List.
e. Verify that the table contains data.
Configure Search Assistant for Windows
The Search Assistant feature of Pattern Designer allows you to search within files or registries.
Upload grep files on to your instance to enable this feature to search on Windows servers.

Before you begin

Role required: admin or service_mapping_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1637


<!-- page 1638 -->
About this task

Grep is a utility that the Search Assistant feature uses to search files for matches. Grep is native
to Unix-based systems, therefore you must upload it only for Windows-based configuration items
(CI). Once you upload grep files onto the instance, it transfers them onto all MID Server which
distribute the files onto all Windows-based CIs in your organization.

Procedure
1. Download the following files onto the computer from the Internet.
◦ egrep.exe
◦ libiconv2.dll
◦ libintl3.dll
◦ pcre3.dll
◦ regex2.dll
For example, you can download the zip files for the Dependencies and Binaries folders at the
following location: http://gnuwin32.sourceforge.net/packages/grep.htm
2. Extract the files.
After you extract the downloaded folders, the files are located as follows:
◦ grep-2.5.4-bin/bin/egrep.exe
◦ grep-2.5.4-dep/bin/libiconv2.dll
◦ grep-2.5.4-dep/bin/libintl3.dll
◦ grep-2.5.4-dep/bin/pcre3.dll
◦ grep-2.5.4-dep/bin/regex2.dll
3. Navigate to Pattern Designer > Uploaded Files.
4. Click New.
5. Enter the original file name in the Name field on the Logical Name tab, for example
egrep.exe.
6. Click OS Types and select Windows.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1638


<!-- page 1639 -->
7. Click OS Architectures and select both 32-bit and 64-bit option.
8. Click the Manage Attachments icon.
9. Click Choose Files.
10. In the Downloads folder on your computer, navigate to the file which name you entered before,
for example egrep.exe.
11. Click Choose.
12. Close the Attachments window.
13. Repeat Step 3 to Step 11 to upload the rest of the files:
◦ libiconv2.dll
◦ libintl3.dll
◦ pcre3.dll
◦ regex2.dll
14. Connect to each Windows MID Server and update the PATH environmental variable with the
location of the bin directory where egrep.exe is installed.
Modify display for CI attributes
You can control what configuration item (CI) attributes the system displays in the Properties pane
of service instance maps.

Before you begin
Get familiar with the notion of views. For more information on views, see View Management

.

Decide for which CI classes you need to modify display.
Decide whether you want to modify display for parent CI classes to see the view change in all
their child CI classes. To check the parent CI class of a CI class, perform the steps below:

Note: The Service Mapping user interface refers to CI classes as CI types.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1639


<!-- page 1640 -->
1. Navigate to System Definition > Tables.
2. Set the search field to Name, and enter the relevant CI class.
The list of all CI class that match the name is displayed.
3. Check the Extends table column to see the parent CI class.
Role required: service_mapping_admin or app_service_admin

About this task

When working with service instance maps, the Properties pane displays attributes for CIs and
connections you select in a map. Since there is a large number of attributes to display, you may
want to choose which attributes are displayed, and in what order.
The attributes and their order of display is determined by a combination of the CI type definition
and the view for this CI type.
CMDB stores CI class in the form of a hierarchy where some CI classes are parents to other CI
classes, who automatically derive their parent's attributes in addition to attributes you configure
specifically for child CI classes. CI class hierarchy is used widely for configuring CI behavior,
relationships, and display.
Child CI classes derive attributes from their parents

The view that controls the attribute display in service instance maps is called
sa_map_properties. You can assign this view to new CI classes or modify the view for CI
classes which already use it. Use the CI type hierarchy to configure the sa_map_properties
view:
• The parent CI class at the top of the hierarchy is cmdb.
• If you do not define the view for a child CI class, the system displays attributes derived from
the parent with the addition to all the attributes of this child CI class.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1640


<!-- page 1641 -->
• If you define a view for a child CI class, it includes only the attributes that you specifically
added to the child CI class. The system does not display any of its parent attributes
automatically.

• If you do not add a parent CI class or its child CI class to the view, the system uses the
ascendant CI class that was added to the view in addition to all attributes of all parent CI

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1641


<!-- page 1642 -->
classes in the hierarchy between this child CI classes and the parent CI class that is added to
the view.

For example, if you define the sa_map_properties view for the CI class for Windows
Servers, the Properties pane displays the same attributes for all Windows Servers: CI type
(class), Class, Model ID, and name.
CIs belonging to the same class

You can modify the view at any time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1642


<!-- page 1643 -->
Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. In the service instance map, select the CI whose attributes you want to change.
3. In the Properties pane, click Detailed Properties.

4. In the CI Detailed Properties page, click the Additional actions icon and select Configure >
Form Layout.
5. In the View name list under For view and section, define which view you want to modify:

◦ Select sa_map_properties if it appears in the list, or
◦ If sa_map_properties does not appear in the list:
a. Select New.
b. In the View name field, enter sa_map_properties.
c. Click OK.
6. Use the slushbucket to add or remove attributes from the view.
7. Click Save.
8. Return to the service instance map and reselect the CI for which you changed the view.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1643


<!-- page 1644 -->
The Properties pane displays the attributes that you configured for the view.
9. If necessary, repeat the procedure for other CI classes.
Related topics
View CI attributes in an application service map
Configure support for Windows servers with non-English OS
You can configure your ServiceNow AI Platform to support Windows servers that use non-English
Windows operating system (OS).

Before you begin

You can perform this procedure only on the MID Servers that serve locations using non-English
operating system. Alternatively, you can perform this configuration on all MID Servers in one go,
even MID Servers that are used for locations using English operating systems.
Role required: mid_server

About this task

If your organization does not deploy Service Mapping, this configuration is not necessary.
Sometimes organizations choose to use operating systems in local languages. While having
a localized operating system (OS) may be user-friendly, it poses a problem when it comes to
automatically discovering Windows servers running the localized OS. During the discovery and
mapping process Service Mapping sends discovery commands to Windows servers on your
infrastructure via a MID Server. If a Windows server returns a message in a language other than
English, Service Mapping does not recognize it as a valid response and the interaction fails.
If your organization uses non-English operating system for some of the Windows servers, you
must perform this procedure to make sure that Service Mapping can access all Windows servers,
not exclusively Windows servers using the English operating system. This configuration allows
the MID Server, that is located between Service Mapping and Windows servers, to recognize a
non-English response from a Windows server and to change the language of the CI operating
system into English.
This configuration affects only the user for which you perform this procedure.

Procedure
1. Navigate to All > MID Servers > Properties in the Modules pane.
2. Click New.
3. In the Name field, enter mid.servicewatch.wmi.mui.
4. In the Value field, enter true.
5. In the MID server field, select the server to which you want to apply this change.
Option

Action

To apply the change to all MID Servers in
your organization

Leave the MID Server field blank.

To apply the change to a specific MID Serv­
er

Select the relevant MID Server from the list.

6. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1644


<!-- page 1645 -->
Related topics
Resolve pattern-related mapping errors
MID Server
Upload the rctrlx.exe file to MID Servers
Upload the rctrlx.exe file to MID Servers to enable running discovery commands on Microsoft
Exchange 2007 and 2010, and Citrix XenApp.

Before you begin

Role required: admin or service_mapping_admin

About this task

During the discovery process, the MID Server runs Service Mapping and Discovery patterns
on applications and devices located inside the organization network. A pattern is a sequence
of commands designed to detect attributes of a CI and its outbound connections. To execute
commands over PowerShell correctly, MID Server runs patterns as services using the
rctrlx.exe file. The rctrlx.exe file is part of the open source ManagePC utility and is available for
downloading from the Internet.
Upload an rctrlx.exe file for every MID Server in your deployment.

Procedure
1. Download the rctrlx.exe file onto your computer from the Internet.
For example, https://github.com/leonsodhi/rctrlx/releases
rctrlx.exe file:

offers the latest versions of the

2. Place the rctrlx.exe file into the folder for Windows 32-bit servers:
<MID Server installation directory>\agent\bin\sw_wmi\bin\32
For example, C:\SN_MID\SN_MID_Dev\agent\bin\sw_wmi\bin\32.
3. Place the rctrlx.exe file into the folder for Windows 64-bit servers:
<MID Server installation directory>\agent\bin\sw_wmi\bin\64
For example, C:\SN_MID\SN_MID_Dev\agent\bin\sw_wmi\bin\64.
Related topics
Pattern-based discovery in Service Mapping
MID Server
Fine-tune Service Mapping with MID affinity and IP reuse
The MID Server needed to map an application service might be misidentified in subnetworks
with overlapping IP ranges and reused IP addresses. To enable the successful discovery of
resources associated with a subnetwork, Service Mapping provides several properties for MID
Server identification.
The networks of large organizations are often divided into numerous subnetworks, each
acting as a network of its own. Service Mapping selects the MID Server based on its IP range.
Subnetworks with overlapping IP ranges and reuse of IP addresses risk misidentification of
the MID Server needed to map an application service. Discovery can therefore fail, resulting in
incomplete or inaccurate service maps.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1645


<!-- page 1646 -->
Two properties included with Service Mapping offer a solution to system administrators.

Note: For full functionality, this feature requires the installation of CMDB CI Class Models
version 1.50.0 or later.
• MID affinity: If horizontal discovery has been configured, you can enable the
sm.topdown.reuse_mid_from_hd_schedule system property. It identifies the
subnetwork MID Server that was previously configured during horizontal discovery and reuses
it for top-down discovery in Service Mapping. Configuring the MID Server using this method
requires less time and results in fewer misidentifications.
• Network location: After locations have been assigned to the horizontal discovery schedules,
you can enable the sm.network_location.detect_host_by_location system
property, which adds a Network Location field to the Entry point form. The top-down discovery
process starts with the entry point defined on this form and can then identify both the MID
Server and the host using the location provided in the horizontal discovery schedule.
To learn more about enabling each property, see Components installed with Service Mapping
Related topics
Schedule a horizontal discovery
MID Server configuration for Service Mapping
Configure Service Mapping to work with the Configuration Management Database (CMDB)
Configure Service Mapping to use the existing data within your CMDB to run top-down discovery
and map application services.

Before you begin

Verify that the necessary tables are populated with data according to the process explained in
CMDB-based mapping.
• Transmission Control Protocol (TCP) Connection [cmdb_tcp] table
• Running Process [cmdb_running_process] table
• Hardware [cmdb_ci_hardware] table
Confirm that you have installed the Service Mapping Plus August 2024 version from the
®
ServiceNow Store.
Role required: service_mapping_admin

Procedure
1. Enter sys_properties.list in the navigation filter.
2. In the System Properties [sys_properties] table, search for the
sa.topdown.enable_cmdb_based_mapping property.
3. Set the sa.topdown.enable_cmdb_based_mapping system property to configure
Service Mapping to use the data in your CMDB.
a. Confirm that the Type field value is set to true|false.
b. Set the Value field to true.
Configure Agent Client Collector for use with Service Mapping
Configure Agent Client Collector to discover and map application services without having to
configure credentials for the MID Server.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1646


<!-- page 1647 -->
Before you begin

Confirm that you have installed both Agent Client Collector for Visibility - Content version 3.5.0
®
and the Kubernetes Visibility Agent (KVA) from the ServiceNow Store.
Ensure that Agent Client Collector has been configured. For more information, see Application
patterns for the Agent Client Collector.
Verify that agents have the necessary privileges to execute the required application pattern
commands for successful completion of top-down discovery. For more information, see SSH
commands requiring a privileged user during probe-based discovery and SSH commands not
requiring a privileged user during probe-based discovery.

Important: This configuration requires a MID Server that is up and running to work
correctly. Service Mapping selects the MID Server to which the target agent connects, in
order to run commands through the agent.
Role required: service_mapping_admin

About this task

Agent Client Collector enables the discovery and mapping of application services without
requiring you to set up credentials for the MID Server. You can deploy both top-down and
machine learning-based Service Mapping and benefit from a simplified approach to mapping
application services.

Procedure
1. Enter sys_properties.list in the navigation filter.
2. In the System Properties [sys_properties] table, search for the
sa.topdown.mapping_with_acc_mode property.
3. Set the property to configure Agent Client Collector for Service Mapping and define the MID
Server selection mode for top-down discovery.
a. Confirm that the Type field value is set to integer.
b. Determine how top-down discovery should run by setting the Value field value.
Possible values are:
▪ 0 (the default) - Top-down discovery runs using the MID Server exclusively.
▪ 1 - Top-down discovery initially attempts to run using Agent Client Collector. If no agent is
available, then it defaults to using the MID Server.
▪ 2 - Top-down discovery runs using Agent Client Collector exclusively. If unsuccessful, the
process terminates.

Using Service Mapping
As the Service Mapping administrator, you support companies in their efforts to map and
maintain critical application services so that they remain service-aware.
Access the Unified Map feature from the Service Mapping Workspace
View a hierarchical map of CIs and the relationships between them by adding access to the
Unified Map feature to the Service Mapping Workspace.

Before you begin

Ensure that you have the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1647


<!-- page 1648 -->
• Vancouver release or later
• Service Mapping Plus, November 2023 release
• CMDB Workspace, v. 4.0.1 or later.
Role required: service_mapping_admin

About this task
Review Unified Map

to learn more about the Unified Map feature.

Note: The Unified Map feature offers limited Service Mapping functionality.
Procedure
1. Navigate to All > System Properties > All Properties.
2. Enter sn_sm_scoped_app.sa.unified_map.enabled in the Search field.
3. Confirm that the value of the property is set to true.
4. Navigate to Workspaces > Service Mapping.

Note: Access to the Unified Map is only available through the Service Mapping
Workspace.
5. Select the Mapped application services widget.
6. Select the check box next to the desired application service.
7. Select the View map button.
A new tab opens displaying the Unified Map for the application service in the CMDB
Workspace.
Related topics
View the attributes of a CI or a relationship
View service instances for a CI
View historical changes for a CI
Map application services based on Automated Service Suggestions
Map a new application service based on automatically generated suggestions. Use the
Automated Service Suggestions or Service Fingerprints features to create a new application
service or add to an existing service in a few clicks.

Before you begin
• Service Mapping Plus must be installed. For more information, see Install Service Mapping
Plus.
• Confirm that the application is ready to discover and map application services. See
Application service readiness dashboard in configurable workspace.
Role required: service_mapping_admin

About this task

In addition to being provided with automatically generated suggestions, you can also identify
and choose an application service by using Service Fingerprints suggestions that include
information about the components in the application service candidates. For more information,
see Automated Service Suggestions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1648


<!-- page 1649 -->
Procedure
1. Navigate to Workspaces > Service Mapping
2. Select ML powered candidates.

Note: Starting with Service Mapping Plus version 1.16.3, the filtering process has been
updated to include only the most relevant candidates, excluding any ignored or irrelevant
ones. This enhancement requires the installation of ITOM Content Service.
3. Select an application service either based on candidate suggestions or identify services with
desired component.
Search method

Actions

a. Select the Service Fingerprints tab.
Select from candidates based on a desired com­
ponent

b. Review the list of Service Fingerprints
suggestions that include compo­
nents.
c. Select your preferred application ser­
vice candidate.
a. Select the Application Service
Suggestions tab.

Select the candidate using basic details

b. Review the list of suggested applica­
tion services.
c. Select your preferred candidate.

4. Optional: Preview the map.
a. Select Preview map.
b. Review the components of the proposed application service map.

Note: This preview map might appear different from the candidate because it
doesn’t show absent connections. For more information, see the Automated Service
Suggestions Troubleshooting [KB1205971]
article in the ServiceNow Support
Knowledge Base.
c. Select List navigation to return to the candidate list.
5. Select Map application service.
6. Either create a new application service with the suggested candidate or add the suggested
candidate to an existing application service.
Action

Steps

Create a new application service

a. Select
Cre­
ate
new
ser­
vice.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1649


<!-- page 1650 -->
Action

Steps

b. On
the
form,
fill
in
the
fields.
Map
ap­
pli­
ca­
tion
ser­
vice
form
Description
Field

Name
Prepopulated,
unique
name
suggested
for
the
new
application
service.
Use
this
name.
enter
a
unique
name,
or
select
Other
name
suggestions
for
additional
options.
For
more
information,
see
Name
suggestions
for
application
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1650


<!-- page 1651 -->
Action

Steps
Description
Field

service
candidates.
PreNumber
populated
unique
ID
for
the
application
service.
Description
of
the
new
application
service.
The
Service
user
owner
who
approves
of
or
rejects
any
change
to
the
mapped
application
service.
A
Service
specific
group
application
services
group
to
which
you
want
to
add
this
service.
The
default
All
setting
means
the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1651


<!-- page 1652 -->
Action

Steps
Description
Field

application
service
is
available
to
all
groups.
a. Select
Add
to
ex­
ist­
ing
ser­
vice.

Add a candidate to an existing service

b. Be­
gin
en­
ter­
ing
the
name
of
the
ex­
ist­
ing
ser­
vice
and
se­
lect
the
de­
sired
ser­
vice
from
the
list.

7. Select Map service.
8. Optional: Select View map to view the new or modified application service.
Related topics
Automated Service Suggestions

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1652


<!-- page 1653 -->
Create an application service for unmapped servers
Maximize the use of your organization's resources by mapping application service candidates
that include unmapped servers. Use the Service Mapping workspace's unmapped servers
widget to create an application service and ensure that your servers are used efficiently.

Before you begin
• Ensure that Predictive Intelligence is enabled.
• Verify Machine Learning readiness.
• Confirm that the data is trained.
For more information, see Application service readiness dashboard in configurable workspace.

Important:
Service Mapping Plus v.1.10.0 or higher:
To update your data and view application candidates for unmapped servers, see
Troubleshooting steps for Mapping unmapped servers with Application service candidates
[KB1585065]
in the Now Support Knowledge Base.
Role required: service_mapping_admin

Procedure
1. Navigate to Workspaces > Service Mapping.
2. Select the unmapped server that you want to use to create an application service.
Version of Service Mapping Plus

Actions

a. In the Unmapped servers tile, select the Un­
mapped servers with Candidate ID graph.
b. Review the list of suggested candidates.
c. Organize the candidate list to prioritize your
work.

Organization
method

Action

Order

Select a column
name to sort
the results in
ascending or
descending order.

Group

Select the menu

Versions released before version 1.16.3

( ) icon to group
results by the
selected column.
d. Select the preferred candidate.
e. Select Map application service.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1653


<!-- page 1654 -->
Version of Service Mapping Plus

Actions

a. In the Unmapped servers tile, select the Un­
mapped servers with relevant candidate
graph.

Note: All application service candi­
dates have been filtered to exclude ir­
relevant tools, so only the most rele­
vant candidates are presented.
b. Review the list of servers with their associat­
ed candidates.
c. Organize the candidate list to prioritize your
work.

Starting with version 1.16.3

Organization
method

Action

Order

Select a column
name to sort
the results in
ascending or
descending order.

Group

Select the menu
( ) icon to group
results by the
selected column.

d. Select the preferred server or candidate.
e. Select Map application service.

Result

The selected application service candidate is converted to an application service, and the
selected unmapped servers are mapped.
Map your application services using tags in the Service Mapping Workspace
Categorize and organize organization's configuration items and map them into application
services using the Tag-based dashboard in the Service Mapping workspace.

Before you begin
• Verify that you have installed Service Mapping Plus version 1.16.3, which is required to access
tag-based mapping in the Service Mapping workspace. For more information, see Install
Service Mapping Plus.
• Review and analyze your organization’s tag usage, making a list of all tags and their purposes.
Use the Key Value [cmdb_key_value] table to see the tags in the Configuration Management
Database (CMDB).
• Use Tag Governance to optimize tag application in your organization. See Tag Governance for
more information.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1654


<!-- page 1655 -->
• Assign tags to configuration items (CIs) that you want to include in application services.
• Run Discovery to horizontally discover CIs. Discovery populates the CMDB with the CI data,
including tags. For more information about discovery tag-based discovery for the Service
Mapping workspace, see Tag-based discovery for the Service Mapping Workspace.
Role required: service_mapping_admin

Procedure
1. Navigate to Workspaces > Service Mapping, then select the Tag-based Service Mapping icon
from the navigation pane.
2. Select Create service maps.
3. Either select an existing tag category or create a new tag category.
Tag category option

Action

a. Start entering the category name in the
search field.
Select an existing tag category

b. Select the tag category from the list.
c. Select Define the tag values and enter val­
ues for the selected category.
a. Create a new tag category by selecting Cre­
ate a new tag category.

Create a new tag category

b. Enter the tag category name.
c. Enter values for the tag keys in the Tags
field.

4. Save the tag category and values by selecting Save.

Note: To save the tag categories in a service family so you can return later to complete
the mapping process, select Save and exit at any time.

5. Search for potential services matching the tag categories by selecting Find candidates.
6. Review the list of tag-based service candidates by selecting Map selected candidates when
you have chosen your preferred candidates.
7. When prompted, enter a unique name for the tag-based service family.
8. Select Save and map.

Result

A tag-based application service and tag-based service family have been created.
Application service mapping using classic Service Mapping
You can perform initial mapping of multiple or single application services in your organization
using a method that best suits you.
You can map application services after you complete the Service Mapping setup.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1655


<!-- page 1656 -->
Service Mapping workflow

A typical organization has hundreds of application services. Mapping each of them individually
can be time and effort consuming. With Service Mapping, you can map most IT services in bulk.
Mapping multiple application services at once is very effective, but is not precise. You may need
to individually map application services omitted during bulk mapping.
A discovery method depends on how you have been managing your application services prior to
mapping them and what information about them you gathered:
• Map multiple application services suggested by classic Service Mapping
Service Mapping uses load balancers on your network to identify possible application services
(candidates). You can map all or selected candidate in bulk, creating multiple application
services in a single operation. This method suits your organization if you do not have much
information about application services.
• Map application services using tags with classic Service Mapping
If your organization uses tags for asset management, you can use these tags to map service
instances. Unlike other mapping methods, tag-based mapping does not require configuring
credentials or providing users with elevated rights. You can effectively use tags to map multiple
service instances.
• Map multiple application services from a CSV file using classic Service Mapping
This method suits you if your organization has performed cross-organization mapping and
analysis and collected some information about planned service instances. If so, you can
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1656


<!-- page 1657 -->
organize the collected information in a specific order and save it as a CSV file. Service
Mapping extracts information from this file and creates potential service instances referred to
as service candidates.
• Map a single application service using classic Service Mapping
You can map individual, single application services one by one by defining attributes for each
service instance. Use this mapping method for application services Service Mapping cannot
discover during bulk mapping. You must know or plan to find out application service attributes
necessary for mapping.
Map multiple application services suggested by classic Service Mapping
You can map multiple application services identified and suggested by Service Mapping in a
single operation. This method suits your organization if you do not have much information about
application services.

Before you begin

Role required: service_mapping_admin

About this task

You must have Service Mapping enabled to map or review service instances.
Immediately after you complete the Service Mapping setup, Service Mapping automatically
creates potential application services referred to as candidates:
1. Service Mapping extracts entries directly from load balancers on your network.
2. Service Mapping converts load balancer entries into potential entry points and stores them in
the Candidate Entry Points [sa_cand_entry_point] table.
Service Mapping also creates candidate entry points based on Netflow and TCP and stores
them in the same table.
An entry point is a point where clients access a service instance. Service Mapping starts the
mapping process from this point. For example, to map your electronic mailing service instance,
define an IP address or host name of the email server as an entry point.
3. Service Mapping checks that potential entry points created from Netflow and VPC logs are
unique and not in use by any existing application services to avoid duplication.
4. Service Mapping creates a service instance candidate for each entry point.
Not all candidate service instances correlate to actual service instances. Service
Mapping filters out unlikely candidates by applying an algorithm that takes into account
such parameters as empty IP addresses, port numbers, and the load balancer VIP hit
counts less than 1000. Service Mapping stores candidates in the Candidate Entry Point
[sa_cand_entry_point] table in the CMDB.
During the discovery and mapping process, Service Mapping creates a service instance from
each candidate and assigns it the entry point retrieved from the candidate. While mapping in
bulk is an effective and fast way to create numerous service instances, the result of the bulk
mapping is not precise. There may be some false or duplicate service instances created by
mistake because the data from the load balancer is raw. During the review and approval process,
you review all mapped service instances and get rid of the ones that were erroneously created.
You can further filter the list of candidates by selecting specific ones to include in or exclude from
discovery. Mapping only selected candidates provides the following advantages:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1657


<!-- page 1658 -->
• Reduces the discovery time
• Minimizes the number of potential irrelevant application services
You can remove the unwanted candidates from the list using these methods either by filtering
them out or deleting them from the Candidate Entry Point [sa_cand_entry_point] table. In both
cases, you can bring hidden or deleted candidates back to the list.

Procedure
1. Navigate to All > Service Mapping > Home.
The Home page displays only information on service instances that Service Mapping can
discover or already discovered. The Home page does not display information on service
instances that are created manually or using the API.
2. Verify that Service Mapping is set up and ready for discovery.
If some obligatory configurations are missing, the error displays at the top of the window.
a. Click the link in the error or click the Readiness Checklist icon (

).

b. In the Service Mapping Readiness Checklist window, click the link next to the setup category
with the error icon (
).
You cannot perform discovery and mapping unless there are no errors in the Readiness
Checklist window.
c. Perform the necessary action to complete the setup.
For example, configure missing credentials.
3. To map all application services suggested by Service Mapping, click Discover All or select
them individually under the Action on selected rows button then click Discover Selected.
4. To map selected application services suggested by Service Mapping:
a. Click Additional options under the Map tile.
b. Select View Candidates List.
c. Optional: Display candidates based on traffic-based connections, remove the condition
that filters out candidates retrieved from load balancers or imported from a CSV file.

The candidate list shows candidates with the source attribute netstat.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1658


<!-- page 1659 -->
d. Review the list of candidates to decide which ones you want to discover as application
services.
e. Create application services from the relevant candidates:

If you want to create
application services
from most of the
candidates

i. Filter out irrelevant candidates by selecting them and clicking
Actions on selected rows, and then clicking Ignore Selected.
The irrelevant candidates are hidden from the list.

Note: To show candidates you previously filtered out, set
the Ignore filtering condition to true.

ii. Alternatively, delete irrelevant candidates by selecting them
and clicking Actions on selected rows, and then selecting
Delete.
The irrelevant candidates are removed from the Candidate
Entry Point [sa_cand_entry_point] table containing candidates.

Note: Service Mapping recreates deleted candidates
every time Discovery performs horizontal discovery of the
same load balancers or you reimport candidates from the
same CSV file.
iii. Click Discover All.
If you want to create
application services
only from several
candidates

i. Select the check boxes next to the relevant candidates.
ii. Click Actions on selected rows at the bottom of the screen.
iii. Click Discover selected.

Service Mapping starts discovery of all candidates and creates application services from them.
If you have many candidates, the discovery may take some time.
After the discovery process finishes, application services, which Service Mapping discovered
without errors and with at least one discovered CI, appear under the Approve tile. application
services discovered with errors appear under the Fix tile.

What to do next
• If the connection suggestions feature is enabled, Service Mapping does not automatically add
any traffic-based connections to application services, providing suggestions instead. Add or
remove CIs for multiple application services using connection suggestions.
• Fix application services discovered with errors. For more information, see Fix application
service errors in bulk.
• Review the list of created application services. If Service Mapping did not create some
application services during bulk mapping as you expected, create them manually as described
in Map a single application service using classic Service Mapping.
• Send application services discovered without errors to their respective owners for approval.
For more information, see Send application service maps for review.
• Make sure that the service instances aren't too large:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1659


<!-- page 1660 -->
◦ Service Mapping doesn't offer to view CI list instead of a map for a service instance.
◦ There is no discovery message indicating that the service instance is too large: The map

does not display the entire service, because it is too large.
The number of CI connections exceeded the allowed maximum.

If some application services are too large, resolve the service size issue:
◦ If you use customized discovery patterns and mapping results in very large service
instances, modify the patterns so that they don't map irrelevant CIs.
◦ Split the service into smaller services.
Add or remove CIs for multiple application services using connection suggestions
If the discovery based on Predictive Intelligence is enabled, the newly mapped application
services include only CIs and CI connections added by discovery patterns. Use connection
suggestions to decide which configuration items (CIs) to include or exclude globally. Service
Mapping then updates all relevant discovered application services to reflect your decisions.

Before you begin

Confirm that fingerprint-based discovery remains enabled, since it is enabled by default. To
verify, navigate to All > System Properties > All Properties. Check that the sys_property
process.clustering.appfingerprint.enabled property does not appear on the
list.
Confirm that discovery based on Predictive Intelligence is enabled.
Navigate to the System Property [sys_properties] table and verify that the
sa_ml.connection_suggestions.active property is set to True.
You can add or remove CIs using connection suggestions only in application services
discovered by Service Mapping.
Role required: service_mapping_admin

About this task

If Predictive Intelligence is enabled, Service Mapping automatically adds connections to service
instances based on connection rules. These suggestions are generated using traffic-related
data from the Configuration Management Database (CMDB) and the analysis of application
fingerprints, CIs, and processes by Predictive Intelligence. Predictive Intelligence evaluates
connections between application fingerprints, CIs, and processes, and ranks their relevancy.
Service Mapping uses this information to create connections based on connection rules. It
also generates connection suggestions for servers and load balancers for you to decide which
connections to add or remove from the service instances. For more information, see Trafficbased discovery in Service Mapping.
If you are not sure which traffic-based connections are relevant, identify a group of application
services that your organization uses for the same purpose. Add or remove CI connections for a
single application service in this group. Then use the connections you created for this service as
an example of traffic-based connections for multiple application services.

Procedure
1. Optional: Discover applications based on fingerprints to view information about all application
CIs in connection suggestions.

Important: Not using fingerprint-based discovery may result in mapping some
application CIs as generic applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1660


<!-- page 1661 -->
2. Navigate to Service Mapping > Administration > Connection Suggestions.
The Connection Suggestions window opens.
3. Expand the relevant group to see the connection suggestions.
For example, expand the python - python group.
4. Review the suggestion details paying attention to the parameters covered in the Connections
Suggestions list.
5. Select the check boxes next to the relevant suggestions and click the action button at the
bottom of the window:

Action

Result

Add

Service Mapping includes both the
connections and the CIs that these
connections lead to, making them part of
the service instance. The Decision value
for added connections changes to Added
manually.

Exclude

Service Mapping excludes connections
and the CIs they lead to from the service
instance. The Decision value for removed
connections changes to Excluded manually.

Reset

Service Mapping reverses earlier decisions,
whether made manually or by rule. The
Decision value for reset connections
changes to Undecided.
This action is relevant only if you have
already used connection suggestions to
complete this service instance.

6. Refresh the connection suggestions to see the changes that you made:
a. Click the List controls icon

.

b. Select Refresh list.

Result

Service Mapping applies the changes to traffic-based connections to all relevant application
services in the background.
Add CIs to multiple application services using connection rules
Create rules for automatically adding traffic-based connections and the CIs they lead to in
discovered service instances. Create rules that add CIs to multiple application services.

Before you begin
• Analyze the infrastructure you are mapping to identify the most common connections. These
common connections are good candidates for connection rules.
• Discover applications based on fingerprints.
• Confirm that discovery based on Predictive Intelligence is enabled.
Navigate to the System Property [sys_properties] table and verify that the
sa_ml.connection_suggestions.active property is set to True.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1661


<!-- page 1662 -->
Role required: service_mapping_admin

About this task

Connection rules enhance the connection suggestions generated using Predictive Intelligence.
Each rule contains a condition that describes an aspect of a traffic-based connection. The fields
available in conditions come from the Connection Suggestion [sa_ml_connection_suggestion]
table, which is only populated when you run top-down discovery. You can base your rules directly
on the connection suggestions. For example, create a rule for any connection with confidence
level High. Alternatively, if you know which CIs must be part of the service instances, you can
choose fields that point at these CIs.
For information about Service Mapping evaluating and applying connection rules, see Trafficbased discovery in Service Mapping.
In addition to connection rules that add CIs to multiple services, you can create rules for adding
CIs to specific application services.

Procedure
1. Navigate to Service Mapping > Administration > Connection Rules.
Alternatively, from a service application map, select Suggestions > Global Rules.
2. Create a new connection rule by clicking New.
Alternatively, customize an existing rule by clicking the rule name in the list.
The Connection Rule form opens.
3. Select Active to start using this connection rule.
Service Mapping evaluates only active connection rules.
4. Enter a unique and meaningful name in the Name field.
5. Enter the value that Service Mapping uses for the sequence in the Order field.
6. Configure the filter condition in the Condition area.
a. Select the field, operator, and the value.
Example
For example, to add outgoing connections for any Tomcat server, configure the following
filtering condition.

b. To create an additional filtering condition, click Add Filter Condition.
c. To create an additional filtering condition using the OR operator, click Add "OR" Clause.
7. Select Global from the Scope list.
8. Optional: Specify services to which this connection rule doesn't apply.
a. Click New in the Excluded Services area.
The Excluded Service form opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1662


<!-- page 1663 -->
b. Select the relevant service from the Discovered Application Service list.
c. Click Submit.
9. Click Update.

What to do next

Verify that Service Mapping added CIs as expected by performing the following steps:
1. After the scheduled jobs rediscover the application services, open the maps of the application
services where you expected Service Mapping to add CIs.
2. Check that CIs are added correctly based on the connection rules.
Related topics
Discovery based on Predictive Intelligence
Map application services using tags with classic Service Mapping
Use tags that help categorize and organize configuration items (CIs) in your organization to map
application services. Tag-based mapping doesn't require configuring credentials or providing
users with elevated rights.

Before you begin

Analyse, review, and define tags as covered in Prepare for mapping application services based
on tags.
Role required: service_mapping_admin

About this task

A tag is a label that consists of a key-value pair. Your organization may use tags to categorize
its assets, to enhance query and reporting capabilities. Discovery and Cloud Provisioning and
Governance can discover tags used by all major cloud providers and container ecosystems.
Once the tags are discovered, Service Mapping can create service instances based on these
tags. For example, you can use tags to map all application services your organization uses in the
production environment in the EMEA region. You can effectively use tags to map multiple service
instances.

Note: Starting with Service Mapping Plus version 1.16.3, take advantage of the Tag-based
Service Mapping workspace to efficiently map your application services. .
The result of the tag-based mapping is a hierarchical service map that may be less precise than
the application service created using the patterns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1663


<!-- page 1664 -->
Comparison of pattern-based and tag-based mapping results

Service Mapping creates names for tag-based services using tag values discovered for the
tag definitions, to which these tag-based services belong. For example, for Environment and
Application tag categories with Production and HR as their respective tag values, the default
service name is production::hr. Tag-based service names use low case.

Important: If you add or remove tag categories after mapping services, Service Mapping
does not implement these changes for previously mapped services belonging to this
service family. For more information, see Modify or update tag definitions for tag-based
mapping.
In domain-separated deployments, Service Mapping populates tag-based services based on
this service family only with CIs belonging to the leaf domain to which the service family belongs.
To map a single application service using tags without preliminary configuration, use the flow
based on Common Service Data Model. For more information, see Populate application services
using tags .

Note: Starting with version 1.15.2, there is a limit of 200 application service candidates per
family.

Procedure
1. Navigate to Service Mapping > Administration > Tag-based Service Families.
2. Click New.
3. Define the service family name.
4. Optional: Select Regularly update service candidates for Service Mapping to regenerate
suggestions for service instances that match tag categories you define for the service family.
5. Define the tag categories and tag values to use for mapping service instances belonging to
this service family.
a. Under Selected tag categories, select the relevant tag category from the list of tag
categories you defined earlier.
b. Optional: To make the mapping process more precise, add the tag value, for example,
Production.
For multiple tag values, use comma as a separator: Staging, Production.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1664


<!-- page 1665 -->
c. Optional: To change the default service naming convention, set the order in which Service
Mapping uses the tag values in the candidate name.
For example, the first category of the service family is Environment and the second category
is Application. The default service name that Service Mapping assigns to the service
candidate is Production::Finance. To make Service Mapping use the Application category
value at the beginning of the name, set the Order value for the Application category to 1.
d. Optional: Select other tag categories as necessary for this service family.
The maximum number of categories per service family is three.
6. Click View service candidates.
7. In the Service candidate window, review the suggested service candidates and select the
ones that you want to map.
If there are no service candidates, in the Key Value [cmdb_key_value] table, ensure that there
are tag values for the tag keys you used for mapping.
8. Click Map selected.
Service Mapping creates service instances based on the candidates you selected.
If there is an error about the service name that exists in the system, fix the candidate name by
performing the following steps:
a. Click View service candidates.
b. Click the name that exists and change it.
c. Click OK

to save the change.

d. View the service candidates and map the relevant ones.
New candidates contain only the service instance CIs as their entry points. The Populate
Calculated Services scheduled job maps new tag-based services once a day.
9. Optional: To map a new service instance immediately, without waiting for the scheduled job to
populate it:
a. Select the relevant service instance.
b. In the service instance form, click Additional Info on the left.
c. Under Related Links, click Recalculate Service.
d. Click View Map at the top of the form and review the mapping result.
10. After the scheduled job maps all new tag-based services, navigate to the relevant tag-based
service family and review the newly mapped services listed under Mapped services.

Result

All tag-based service instances have their respective service instance CIs as their entry points.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1665


<!-- page 1666 -->
The map for the Finance::Production service instance based on tags

What to do next
1. After the scheduled job maps all new tag-based services, navigate to the relevant tag-based
service family and review the newly mapped services listed under Mapped services.
2. Make sure that the service instances aren't too large: The following discovery message is
displayed in a tag-based service instance: This tag-based service instance

reached the maximum number of CIs. For more information, refer
to the product documentation.
If some application services are too large, resolve the service size issue:
◦ Modify tag definitions used for mapping to make sure Service Mapping includes only
relevant CIs in the service instance.
◦ If necessary, Tag-based discovery configuration to change which CIs Service Mapping
includes in tag-based service instances.
3. To fine-tune or fix the tag-based services, modify the tag categories that you used for the
service family.

Important: The map window displays maps for tag-based and dynamic services in the
View mode only. You cannot fine-tune or edit tag-based and dynamic services from the
map.
Related topics
Choose the right method for discovery and mapping application services
Tag-based discovery configuration
Prepare for mapping application services based on tags
Analyze, review, and define tags in your organization for successful mapping.

Before you begin

Role required: service_mapping_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1666


<!-- page 1667 -->
About this task

As a preparation for tag-based mapping, create tag categories that contain tags with similar use.

Note: Starting with Service Mapping Plus version 1.16.3, take advantage of the Tag-based
Service Mapping workspace to efficiently map your application services. .
Define a tag-based service family and define tags that you want Service Mapping to use for
mapping. Based on the tag definitions for the tag-based service family, Service Mapping creates
service candidates - suggested service instances. You review the candidates and decide which
ones you want to use to create the actual tag-based service instances. For details on the tagbased mapping process, see Tag-based discovery in Service Mapping.
CIs that have discovered tag values for the tag categories you selected become part of
application services. Service Mapping creates a separate service candidate for each tag
value combination. If you narrow the criteria down by defining the tag values in addition to
tag categories, Service Mapping maps only CIs that have the matching values. CIs that have
more than one tag assigned to them, can be part of multiple services. You may want to create
a tag category for tags related to different types of environments, if your organization uses
"production" and "staging" tag values. Tag-based mapping is not case-sensitive; same key
names and key values spelled with upper and lower case are identified as the same.

Note: Service Mapping includes CIs that are part of CI relationships even if these CIs do
not have tags assigned to them. For more information, see Tag-based discovery in Service
Mapping.

Procedure
1. Analyze the tag usage in your organization and make a list of all tags and their purposes. Use
the Key Value [cmdb_key_value] table to see the tags in the CMDB.
Use Tag Governance to analyze and optimize tag application in your organization. See Tag
Governance.
2. If necessary, assign tags to CIs that you want to include in application services.
Avoid creating very large application services containing more than 5000 CI relations. Such
large services may cause performance issues.
3. Create and define tag categories that you want Service Mapping to use for mapping service
instances.
For example, to map all service instances your organization uses in the production
environment in the EMEA region, create the following tag categories: Applications, EMEA
region, and Production.
a. Navigate to Service Mapping > Administration > CI Tag Categories.
b. Select a CI tag category to modify or select New.
c. Define the tag category name, for example, Environment.
d. Under CI tag keys, double-click the row and type the tag key, for example Env.
Since tag-based mapping is not case-sensitive, tag key variants using different
capitalization, like Env, env or ENV, are also assigned to this same tag category.
Repeat this step until you add all tag key variants that your organization uses for the same
purpose, for example Env and Environment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1667


<!-- page 1668 -->
Note: To see detailed examples of defining tag-based mapping criteria for service
families, see Example definitions for service families in tag-based mapping.
4. Run Discovery to horizontally discover CIs. Discovery populates the CMDB with the CI data,
including tags.
If your ServiceNow instance uses domain separation and you have access to the global
domain, log in to the relevant domain. The selected domain must be a domain without any
child domains.
Map multiple application services from a CSV file using classic Service Mapping
This method suits you if your organization has performed cross-organization mapping and
analysis and collected some information about planned service instances. If so, you can
organize the collected information in a specific order and save it as a CSV file. Service Mapping
extracts information from this file and creates potential service instances referred to as service
candidates.

Before you begin

Perform the procedure described in Prepare a CSV file for mapping your candidates.
Role required: service_mapping_admin

About this task

You must have Service Mapping enabled to map or review service instances.
If necessary, you can import service candidates from multiple CSV files.
When reimporting service instance candidates, Service Mapping does not import candidates
you chose to ignore earlier.
After Service Mapping discovers configuration items (CIs) belonging to your service instance for
the first time, it then rediscovers CIs to find changes and updates. Create or modify discovery
schedules to control how often Service Mapping rediscovers services or CIs.

Procedure
1. Navigate to All > Service Mapping > Home.
The Home page displays only information on service instances that Service Mapping can
discover or already discovered. The Home page does not display information on service
instances that are created manually or using the API.
2. Under the Map tile, select Additional Options.
3. Select Import Service Map List.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1668


<!-- page 1669 -->
Map tile Additional Options

4. In the Import CSV file window, select Choose file.
5. Navigate to the CSV file to use for the import and select Open.
6. Select Import.
The imported service instance candidates are added to the list of candidates.
7. Check that the overall number of service candidates on the Map tile increased by the
expected number.
8. On the Map tile, select Map Your Services to create application services from the candidates
you imported from the CSV file.

What to do next
• Review the list of created application services. If Service Mapping did not create some
application services during bulk mapping as you expected, create them manually as described
in Map a single application service using classic Service Mapping.
• Fix application services discovered with errors. For more information, see Fix application
service errors in bulk.
• Send application services discovered without errors to their respective owners for approval.
For more information, see Send application service maps for review.
Prepare a CSV file for mapping your candidates
Organize information about potential application services (candidates) in your organization and
save it in a CSV file.

Before you begin

Role required: service_mapping_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1669


<!-- page 1670 -->
About this task
Procedure
1. Create an .xlsx file.
2. Define entry point attributes for service candidates in the .xlsx file.
Customers use these entry points to access services. For example, they use http://
www.google.com:8080 to access the Google page.

Warning: Do not confuse column order in the .xlsx file. Entering attributes in wrong
columns causes mapping errors.

Column

Description

A

Enter a unique name of the planned service
instance. For example, NY Public Library or
Google.

Warning: Service Mapping imports
only application services with unique
names.
If there is more than one entry with the
same name in CSV files you use, the latest
imported record overwrites the previous
ones.
B

(Optional) If you know the URL that serves as
the entry point to your service instance, enter
it in this column. For example, enter https://
www.nypl.org/ or www.google.com:8080.

Warning: If you define the URL, you
do not have to define the IP address,
port, FQDN, and protocol. Service
Mapping parses the URL to extract the
IP address, port, and FQDN.
If there is no URL that serves as the entry
point, define other parameters in columns C,
and E.
C

(Optional) The IP address of the entry point
in the IPv4 format. Enter this parameter only if
you did not enter the URL in column B.

D

(Optional) The port of the entry point. For
example, 8080 for the Google page. Enter
this parameter only if you did not enter URL in
column B.
If you did not enter either URL or the port,
Service Mapping uses port 80 for the http
protocol and port 443 for the https protocol.

E

(Optional) The FQDN of the service entry
point, for example,www.google.com for

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1670


<!-- page 1671 -->
Column

Description

Google. Enter this parameter only if you did
not enter the URL in column B.
3. Save the file in a drive that you can access during the import with the .csv extension.

What to do next

Map multiple application services from a CSV file using classic Service Mapping
Map a single application service using classic Service Mapping
In addition to mapping application services in bulk, you can map individual, single application
services by defining attributes for each application service. Use this mapping method if you
already know or are planning to find out application service details. You must have Service
Mapping enabled to map or review application services.

Before you begin
• Verify that Service Mapping is set up properly.
• If the service instance relies on PaaS supported by Microsoft Azure or Amazon Web Services,
discover datacenters and then create horizontal discovery schedules on the cloud service
account.
Role required: service_mapping_admin

About this task

You can map single application services in addition to bulk mapping, which is effective at
mapping multiple application services, but is not precise. You may need to individually map
application services omitted during bulk mapping.
The most important attribute you must know and configure to discover an application service is
an entry point.
An entry point is a point where clients access a service instance. Usually, it is either a URL or a
combination of the IP address and port. Service Mapping starts the mapping process from this
point. For example, to map your electronic mailing service instance, define an IP address or host
name of the email server as an entry point.
Entry points vary depending on the nature of the service instance. Service Mapping comes with
a wide range of preconfigured entry point types that cover many commonly used applications.
In addition to entry points that Service Mapping can discover, you may add entry points that
Service Mapping cannot discover. You may want to add such an entry point as an indication that
your service instance contains a device or application.
Also, you must define an owner for your service instance. The service instance owner is a user
who is familiar with the infrastructure and applications making up the service. This user is the
service instance SME who provides information necessary for a successful creation of a service
instance. After a service is mapped, this user reviews the results, and either approves it or
suggests changes.
After Service Mapping discovers configuration items (CIs) belonging to your service instance for
the first time, it then rediscovers CIs to find changes and updates. Create or modify discovery
schedules to control how often Service Mapping rediscovers services or CIs.
All service instances, both manually created and discovered by Service Mapping, are stored in
the Mapped Service Instance [cmdb_ci_service_discovered] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1671


<!-- page 1672 -->
You can also create a single application service manually using the flow based on Common
Service Data Model. The Common Service Data Model (CSDM) helps you streamline service
types and service offerings. You can add relationships between application services and other
service-related objects in the CSDM: Business Application, Technical Service Offerings, or
Business Service Offerings. For more information, see Create application services
.

Procedure
1. Navigate to All > Service Mapping > Home.
The Home page displays only information on service instances that Service Mapping can
discover or already discovered. The Home page does not display information on service
instances that are created manually or using the API.
2. Click Additional options under the Map tile.
3. Click Define A Single Service Map.
4. Define the basic service instance attributes:

Field

Description

Name

Enter a unique application service name which is not in use by any other type of
application service. Use self-explanatory names such asmailing service or
printing service.

Owner Select an owner who is responsible for this service instance in the organization.
If the owner name does not appear in the list, create a user for this person and
assign the sm_app_owner role to this user. Alternatively, choose a user with the
service_mapping_admin role.
5. If you do not know the entry points, request them from the service instance owner, as
described in Request information about entry points for application services.
6. To add an entry point that Service Mapping can discover, perform these steps.
a. Click Discoverable by Service Mapping.
The page offers tiles for applications most commonly used for entry points.
b. Click the tile matching the application to which the entry point belongs.
For example, Web Application if you create an service instance with a web interface. If the
tiles do not contain the necessary application, click See More Types to choose from a list of
all preconfigured entry point types.

Important: Do not use central IT components like Microsoft MQ or Microsoft Active
Directory as entry points. Using such entry points creates large services, which cause
performance issues during mapping and monitoring.
c. Optional: If the required entry point type does not appear in the list, you may need to create
it as described in Create entry point types for Service Mapping.
d. Configure attributes for the entry point as described in Entry point attributes.
Entry point attributes depend on the type you select.
e. Click Add.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1672


<!-- page 1673 -->
The entry point is added under Entry Points.
f. To add more entry points, click Add Entry Point and repeat step 6.
7. Optional: To add a static entry point that Service Mapping cannot discover, perform these
steps.
a. Click Manually created.
b. Define the CI to serve as the entry point.

Field

Description

CI Type

Select the CI type (CI class) for the CI
you are adding. Every CI belongs to a CI
type which contains a set of attributes
configured for this kind of CI, for example,
cmdb_ci_appl for applications.

CI Name

Select the CI from the list of CIs of the
selected CI type.

Note: To eliminate the possibility of
delayed results when searching for
a specific CI, make your search as
specific as possible. A search with
*<name> might take a long time and
return a large data set.
The CI type list includes only allowed CI types. For example, you cannot add an application
cluster.
c. Click Submit.
8. To save attributes you have defined up until this moment and carry on configuring attributes for
this service instance, click Save or Update.
Service Mapping saves the new service instance in the Mapped Application Service
[cmdb_ci_service_discovered] table. It also starts the discovery process in the background.
9. To save definitions, discover this service instance, and navigate to the map for this service
instance, click View Map.
Service Mapping starts the discovery process. The map for this service instance page opens
and displays the mapping in progress. The service instance status changes to In Progress.

What to do next
• If Service Mapping discovers the service instance with errors, fix errors in individual
application services using discovery messages.
• Make sure that the service instances aren't too large:
◦ Service Mapping doesn't offer to view CI list instead of a map for a service instance.
◦ There is no discovery message indicating that the service instance is too large: The map

does not display the entire service, because it is too large.
The number of CI connections exceeded the allowed maximum.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1673


<!-- page 1674 -->
If some application services are too large, resolve the service size issue:
◦ If you use customized discovery patterns and mapping results in very large service
instances, modify the patterns so that they don't map irrelevant CIs.
◦ Split the service into smaller services.
• Send application services discovered without errors to their respective owners for approval.
For more information, see Send application service maps for review.
Request information about entry points for application services
The most important attribute you must know and configure to discover an service instance is an
entry point. If you do not know the entry points for the service instance, request this information
from the service instance owner.

Before you begin

Requesting information about entry points is an optional part of mapping a single application
service.
Roles required: service_mapping_admin

About this task

An entry point is a point where clients access a service instance. Usually, it is either a URL or a
combination of the IP address and port. Service Mapping starts the mapping process from this
point. For example, to map your electronic mailing service instance, define an IP address or host
name of the email server as an entry point.
Entry points vary depending on the nature of the service instance. Service Mapping comes with
a wide range of preconfigured entry point types that cover many commonly used applications.

Procedure
1. Click the Request data link.
The Request for data window opens.
2. If the Assigned to list is empty, select the name of the service instance owner.
3. Enter your questions about this service instance in the Description field.
For example, you can ask what the entry points are.
4. Click Submit.
The system opens ServiceNow task for the owner and automatically sends an email
notification.
5. Review information added by the owner on the Other Entry Points and Components tabs.
Once the owner provides missing information, you receive an email notification.
6. Click the link in the email to open the Questionnaire screen for the relevant service instance.
7. Continue mapping a single application service.
Provide entry points for mapping an application service
As an application service owner you may receive a request for information about entry points
in an email notification. Provide information about entry points to enable administrators to start
discovery of an application service.

Before you begin

Role required: sm_app_owner or service_mapping_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1674


<!-- page 1675 -->
About this task

If information about service instance entry points is missing, an administrator cannot start
mapping the service instance. In this case, the administrator sends a request for missing data
from the service instance form, which creates a service process task assigned to you. You
receive an email notification with the link to the Questionnaire page where you must enter the
missing data. The most important information is about the entry points, however, any additional
data about application service components, their connections, or usage is of help for the
administrator. When you finish entering data in the Questionnaire and submit it, the system
closes the service process task.
Mapping an application service flow

Procedure
1. Click the link in the notification email to access the Questionnaire page.
2. Alternatively, open to the Questionnaire page from the list of tasks assigned to you.
a. Navigate to Service Mapping > Administration > My Tasks.
b. Optional: Sort the list of service process tasks as required.
c. Click the required task.
d. Click the service instance form link.
e. Click Questionnaire in the left pane.
3. On the Planned Custom Entry Points tab, enter information about service instance entry
points.

Note:
If you cannot specify the exact attributes of the entry points, such as the URL or the IP
address, add general information which can guide the administrator. For example, the
type of the application, like Tomcat server.
4. To add information about any other components comprising this service instance, click the
Components tab, and enter the relevant data there.
5. When you finished entering the information, click Actions, and then select Submit
Questionnaire.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1675


<!-- page 1676 -->
The data request task assigned to you closes. The service instance state changes to In
Progress.
6. If there is any other useful information concerning this service instance, enter it in the Notes
field under Worknotes and press Enter to post your comment.
Add or remove CIs for single application services using connection suggestions
If discovery based on Predictive Intelligence is enabled, newly mapped application services
include only configuration items (CIs) and CI connections added using discovery patterns. Use
the suggestions for CI connections, generated by Service Mapping, to complete the application
service.

Before you begin
• Confirm that fingerprint-based discovery remains enabled, since it is enabled by default. To
verify, navigate to All > System Properties > All Properties. Check that the sys_property
process.clustering.appfingerprint.enabled property does not appear on the
list.
• Confirm that discovery based on Predictive Intelligence is enabled.
Navigate to the System Property [sys_properties] table and verify that the
sa_ml.connection_suggestions.active property is set to True.
Role required: service_mapping_admin

About this task

If discovery based on Predictive Intelligence is enabled, Service Mapping automatically adds
connections to service instances based on connection rules. These suggestions are generated
from traffic-related data in the Configuration Management Database (CMDB) and an analysis
of application fingerprints, CIs, and processes. Predictive Intelligence evaluates and ranks
the relevancy of these connections, and Service Mapping then uses this information to create
connections and provide suggestions for servers and load balancers. Then you can decide
which connections to add or remove from service instances. For more information, see Trafficbased discovery in Service Mapping.

Important: You can add or remove CIs using connection suggestions only in application
services discovered by Service Mapping.

Procedure
1. Optional: View information about all application CIs in connection suggestions.
See Discover applications based on fingerprints for more information.

Important: If you don’t use fingerprint-based discovery, some application CIs might be
mapped as generic applications, lacking specific identification or detailed information.
2. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
3. Select Suggestions > Connection Suggestions at the top of the map to see suggestions for
the entire application service.
Alternatively, right-click a CI for which you want to see connection suggestions and select
Show connection suggestions.
4. Review the suggestion details paying attention to the parameters covered in the Connections
Suggestions list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1676


<!-- page 1677 -->
5. Optional: If you haven't discovered application CIs, discover a standalone CI of the
application class based on fingerprints:
next to the relevant suggestion based on the application
a. Select the Preview icon
fingerprints (AFP).
The Connection Suggestion list opens showing details of this suggestion.
b. Select the Preview this record icon next to Target AFP, and then select Open Record.
c. Select Discover Application.
d. Select Refresh in the Review suggested connections window to confirm that the displayed
information reflects the discovered CI classes.
6. Select the check boxes next to the relevant suggestions and click the action button at the
bottom of the window:

Action

Result

Add

Service Mapping includes both the
connections and the CIs that these
connections lead to, making them part of
the service instance. The Decision value
for added connections changes to Added
manually.

Exclude

Service Mapping excludes connections
and the CIs they lead to from the service
instance. The Decision value for removed
connections changes to Excluded manually.

Reset

Service Mapping reverses earlier decisions,
whether made manually or by rule. The
Decision value for reset connections
changes to Undecided.
This action is relevant only if you have
already used connection suggestions to
complete this service instance.

7. Select Close to leave the Review suggested connections window.

Result

The application service map reflects the changes that you made. The connections you added,
along with the CIs they lead to, appear on the map.
Related topics
Traffic-based discovery in Service Mapping
Add CIs for single application services using connection rules
Create rules for automatically adding traffic-based connections and the CIs they lead to in
discovered service instances. Add CIs to specific application services using connection rules.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1677


<!-- page 1678 -->
Before you begin
• Analyze the infrastructure you are mapping to identify the most common connections. These
common connections are good candidates for connection rules.
• Confirm that discovery based on Predictive Intelligence is enabled.
Navigate to the System Property [sys_properties] table and verify that the
sa_ml.connection_suggestions.active property is set to True.
• Discover applications based on fingerprints.
Role required: service_mapping_admin

About this task

Connection rules enhance the connection suggestions generated using Predictive Intelligence.
Each rule contains a condition that describes an aspect of a traffic-based connection. The fields
available in conditions come from the Connection Suggestion [sa_ml_connection_suggestion]
table, which is only populated when you run top-down discovery. You can base your rules directly
on the connection suggestions. For example, create a rule for any connection with confidence
level High. Alternatively, if you know which CIs must be part of the service instances, you can
choose fields that point at these CIs.
You can create connection rules that apply to specific application services or to all application
services. If the rule is for a specific service, but the rule condition points at a CI that is part of
multiple services, Service Mapping adds this CI to all relevant services.
For information about Service Mapping evaluating and applying connection rules, see Trafficbased discovery in Service Mapping.
In addition to connection rules that add CIs to specific services, you can create rules for adding
CIs to multiple application services.

Procedure
1. Navigate to Service Mapping > Administration > Connection Rules.
Alternatively, from a service application map, select Suggestions > Local Rules.
2. Create a new connection rule by clicking New.
Alternatively, customize an existing rule by clicking the rule name in the list.
3. Select Active to start using this connection rule.
Service Mapping evaluates only active connection rules.
4. Enter a unique and meaningful name in the Name field.
5. Enter the value that Service Mapping uses for the sequence in the Order field.
6. Configure the filter condition in the Condition area.
a. Select the field, operator, and the value.
Example
For example, to add outgoing connections for any Tomcat server, configure the following
filtering condition.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1678


<!-- page 1679 -->
b. To create an additional filtering condition, click Add Filter Condition.
c. To create an additional filtering condition using the OR operator, click Add "OR" Clause.
7. Select Local from the Scope list.
8. From the Discovered Application Service list, select an existing service to which this rule
applies.
9. Click Update.

What to do next

Verify that Service Mapping added CIs as expected by performing the following steps:
1. Open the map for the application service you selected for this connection rule.
2. Click Discover at the top of the map window.
3. After the application service is rediscovered, check that CIs are added correctly based on the
connection rule.
Enable traffic-based discovery for an application service
Make Service Mapping use traffic-based connections to discover CIs making up an application
service.

Before you begin

Role required: service_mapping_admin

About this task

Service Mapping can discover and map configuration items (CIs) following their traffic-based
connections. This method is referred to as traffic-based mapping and complements patternbased mapping. For more information about how Service Mapping performs traffic-based
discovery, see Traffic-based discovery in Service Mapping.

Procedure
1. In the classic environment, perform the following steps:
a. Navigate to All > Service Mapping > Home.
The Home page displays only information on service instances that Service Mapping can
discover or already discovered. The Home page does not display information on service
instances that are created manually or using the API.
b. Click View Your Services on the Completed tile.
c. Select the relevant application service.
d. Click Additional Info.
e. Click the Traffic based discovery check box.
f. Click Update.
2. Alternatively, perform the following steps in the Agent Workspace UI:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1679


<!-- page 1680 -->
a. Navigate to Agent Workspace > Agent Workspace Home.
b. Click Lists in the left pane.
c. Navigate to Services > All Services.
The list of services displays services in Operational status.
d. Select the relevant application service.
e. Click the Open Preview icon.

The Details pane opens on the right.
f. Click the Traffic based discovery check box in the Details pane.
g. Click Update.
Mapping application services containing Citrix XenApp and Presentation Server
Service Mapping can discover application services containing Citrix XenApp, Presentation
Server, and Citrix Usage Collector.

Discovered components

Name

Platform

Citrix XenApp
Server

Windows

Version

6.x>6.5, 7.x<7.6

Protocol

WMI
WinRM

Citrix
Presentation
Server

Windows

Citrix Usage
Collector

Windows

4.x, 5.x,
6.x<6.5

WMI
WinRM

7.x>7.5, 8.x

WMI

Discovery type

Pattern (or
probe if
indicated)

Citrix
Horizontal and XenApp or
top-down
Presentation
Server
Citrix
Horizontal and XenApp or
top-down
Presentation
Server
Top-down

Citrix
Collector

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1680


<!-- page 1681 -->
Name

Platform

Version

Protocol

Discovery type

Pattern (or
probe if
indicated)

Top-down

Citrix
Application
Icon Path

WinRM
Generic
application
based on the
Icon Path

Windows

-

WMI
WinRM

Map application services containing Citrix XenApp and Presentation Server
Map an application service containing Citrix XenApps, Presentation Servers, and Citrix Usage
Collectors and verify that Service Mapping discovered all Citrix components correctly.

Before you begin
• Provide a user with permissions to read and query the Citrix repository:
◦ For versions 4.5 and later, a PowerShell script from the XenApp server.
◦ For versions earlier than 4.5, a Microsoft Visual Basic Script (VBScript) from the Citrix
Presentation Server
• On the ServiceNow AI Platform, configure a domain user for accessing the Windows OS as
described in Windows credentials .

Note: To use this credential later for XenAPP, set the Credential alias attribute to

cmdb_ci_appl_citrix_xenapp. To use this credential later for Citrix, set the Credential
alias attribute to cmdb_ci_appl_citrix_collector.
• (Optional) To discover using the WinRM protocol, see Configure WinRM trusted hosts on MID
Server
• Configure a user with permissions to run PowerShell commands on the Citrix server.
• (For discovery of Citrix Presentation Server only) Find out the icon path for the entry point:
1. In the Citrix Access Management Console, navigate to Presentation Server > Applications.
2. Locate the Icon Path folder in the navigation tree.
3. Right-click the Icon Path folder and click Copy path.
• (For discovery of Citrix XenApp Server only) Find out the icon path for the entry point by
checking the Distinguish Name attribute for the Icon Path.
Role required: service_mapping_admin

Procedure
1. Create a service instance.
a. Navigate to All > Service Mapping > Service Instances.
b. Click New.
The Discoverable by Service Mapping option is selected by default.
c. In the Name field, enter a descriptive name for the service instance.
2. Define the entry point for this service instance:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1681


<!-- page 1682 -->
a. Select the Citrix XenApp tile.
b. Define entry point attributes.

Attribute

Description

Host

The URL of the Citrix XenApp or
Presentation Server. The URL must contain a
VIP IP or a physical host.

Port

The port that the Citrix XenApp or
Presentation Server uses on the host.

Icon Path

The path to the logical application
location as it appears in the Citrix Access
Management Console. The path must start
with the Applications folder. For example, /
Application/Jane/Windows Media Player.

URL

The URL must contain a VIP IP or a physical
host. For example, http://<host>/Citrix/
StoreWeb.

c. Click Add.
d. Click Save.
3. Click Additional Info on the left and clear the Traffic based discovery check box.
4. Click Update.
5. Verify that the mapping result is satisfactory:
a. Click View map and wait until the mapping is complete.
It may take a few minutes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1682


<!-- page 1683 -->
b. Review the application service map and make sure that it resembles in the following
example.

Trouble?
If the mapping result is not as you expected, perform basic troubleshooting.

Symptom

Cause

Solution

Discovery failed. The
discovery log displays the
message that starts with the
following text:

The indication sections of the
pattern fail, because the user
does not have permissions
for running PowerShell
commands.

Make sure that you provided
a user with permissions to
run PowerShell commands
on servers that host Citrix
XenApp, Presentation Server,
or Citrix Usage Collector.

The MID Server cannot
run PowerShell commands
remotely, because the
execution policy is set to
RemoteSigned on the target
servers.

Use the setexecutionpolicy
remotesigned command
on the target servers to enable
the MID Server to successfully
run PowerShell commands.

You do not have sufficient
permissions.
Discovery failed. The
discovery log displays the
error message that includes
the following text:
CategoryInfo : NotSpecified:
(:) [], PSSecurityException
+ FullyQualifiedErrorId :
RuntimeException

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1683


<!-- page 1684 -->
Symptom

Cause

Solution

Discovery failed. The
discovery log displays the
error message that includes
the following text:

The target host does not
have this PowerShell library:
Citrix Common Commands
PowerShell Snapin.

Download and install
PowerShell SDK for Citrix
XenApp on all servers hosting
Citrix XenApp, Presentation
Server, or Citrix Usage
Collector.

The icon path you defined is
incorrect.

Verify the icon path and
reenter it in the entry point
attributes for the application
service.

Import-XAFarm : The Citrix
Common Commands
PowerShell Snapin is not
installed
The application service map
shows the Citrix Delivery
Controller, but does not
include the Citrix XenApp,
Citrix Presentation Server or
Citrix Usage Collector.

Mapping application services containing Microsoft Exchange Server
Service Mapping can discover service instances containing a Microsoft Exchange Server and
the Exchange Server components.

Discovered components
If e-mail services in your organization deploy Microsoft Exchange Server, the discovered
application service includes the following components:

Name

Microsoft
Active
Directory
Domain
Services
Microsoft
server (as
a Microsoft
Exchange
component)
HUB Transport
Server (as
a Microsoft
Exchange
component)

Platform

Version

Protocol

Discovery
type

Windows

13, 30, 31, 44,
47, 52, 56, 69

WMI

Top-down

WinRM

Windows

Windows

Client Access
Windows
Server (CAS)
(as a Microsoft
Exchange
component)

2003, 2007,
2010, 2013,
2016

WMI

2003, 2007,
2010, 2013,
2016

WMI

2003, 2007,
2010, 2013,
2016

WMI

WinRM

WinRM

WinRM

Pattern (or
probe if
indicated)

Active
Directory
Service
pattern

Horizontal
and topdown

ExchangeFrontEndServer
On Windows;
PatternExchangeBackEndServ
On Windows
pattern

Horizontal
and topdown

Hub Transport
Server On
Windows
pattern

Horizontal
and topdown

CAS On
Windows
pattern

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1684


<!-- page 1685 -->
Typically, you do not want to discover Outlook clients connected to the Exchange Server to avoid
noise. If this is the case, disable the traffic-based discovery for this application service.
For information on the discovery flow, refer to pattern-based discovery in Service Mapping.
Failure to provide users with required permissions may cause Service Mapping to perform trafficbased discovery.

Limitations
Discovery and Service Mapping cannot discover the Exchange Server if its configuration does
not support public folders, edge transports, and public messaging. Create a pattern or customize
the existing pattern to discover the Exchange Server with such configuration.
Map application services containing Microsoft Exchange Servers
Map an application service containing an Microsoft Exchange Server and verify that Service
Mapping discovered all Microsoft Exchange Server components correctly.

Before you begin
• On the ServiceNow AI Platform, configure a domain user for accessing the Windows OS as
described in Windows credentials . Use the Microsoft Exchange Server administrator's user
name and password as Windows credentials. For example, user name: local\administrator and
password: Are1300.

Note: If you configure Windows credentials for a user different from the Microsoft
Exchange Server administrator, Service Mapping uses traffic-based discovery that results
in mapping all Microsoft Exchange clients.
• (For Exchange CAS 2010 and 2013, 2016) On the ServiceNow AI Platform, configure applicative
credentials , setting the CI type to Exchange Mailbox.

Warning: Do not confuse the Exchange Mailbox CI type with the Exchange Mailbox
Server CI type.
Service Mapping uses these applicative credentials to access the of/Servers/Servers.slab
folder on the Key Exchange Admin Center (EAC). Service Mapping also uses the applicative
credentials to run the following PowerShell commands against the MID Servers:
◦ Get-ExchangeServer
◦ Get-ExchangeServer
◦ Get-MailboxServer
◦ Get-ClusteredMailBoxServerStatus
◦ Get-ExchangeServer
◦ Get-StorageGroup
◦ Get-MailboxDatabase
• (For Microsoft Exchange CAS 2010 and 2016) On the Windows Server hosting Microsoft
Exchange CAS, install the Microsoft.Exchange.Management.PowerShell.E2010 module.
• (For Microsoft Exchange CAS 2007) On the Windows Server hosting Microsoft Exchange CAS,
install the Microsoft.Exchange.Management.PowerShell.Admin module.
• (For Microsoft Exchange CAS 2007, 2010) On the ServiceNow AI Platform, upload the rctrlx tool
for running PowerShell commands as described in Upload the rctrlx.exe file to MID Servers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1685


<!-- page 1686 -->
• (For Microsoft Exchange CAS 2007 and 2010) Provide an Exchange Mailbox OS user with
the rights to run Exchange services on Windows and has permission to query Exchange
repository:
On the ServiceNow AI Platform, configure Windows credentials
setting the Credential
alias attribute to [cmdb_ci_exchange_mailbox]. Configuring this attribute allows you later to
use the credential for this CI in patterns.
• (Optional) For discovering using the WinRM protocol, see Configure WinRM trusted hosts on
MID Server .
• Verify that you know the entry point necessary for discovering the Microsoft Exchange Server.
Use the URL for the Outlook web access in the following format:
http(s)://<hostname>:<port>/owa
For example, http(s)://myhost:<443>/owa
Role required: service_mapping_admin

Procedure
1. Create a service instance.
a. Navigate to All > Service Mapping > Service Instances.
b. Click New.
The Discoverable by Service Mapping option is selected by default.
c. In the Name field, enter a descriptive name for the service instance.
2. Define the entry point for this service instance:
a. Select the Web Application tile.
The Discoverable by Service Mapping option is selected by default.
b. In the URL field, enter the URL of the Outlook web access.
For example, http(s)://myhost:<443>/owa.
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

1686


<!-- page 1687 -->
b. Review the application service map and make sure that the service layout is as in the
examples below.

Trouble?
If the mapping result is not as you expected, perform basic troubleshooting.

Symptom

Cause

Solution

Discovery failed. The discovery log displays the
message that starts with the following text:

The indication sections
of the pattern fail,
because the user does
not have permissions
for running PowerShell
commands.

Make sure that
you provided
a user with
permissions to
run PowerShell
commands on
servers that
host Microsoft
Exchange Server
components, for
example, CAS.

The indication sections
of the pattern fail,
because the MID
Server is not configured
as a trusted host on
the component you are
discovering.

Add the MID
Server to the
list of trusted
hosts on all hosts
that you want to
discover.

You must have the Exchange Common
Commands PowerShell Snapin installed to use
this script.

Discovery failed. The discovery log displays the
error message that starts with the following text:
[servername.destination.com] Connecting to
remote server failed with the following error
message: The WinRM client can not process
the request. The authentication mechanism
requested by the client is not supported by the
server or unencrypted traffic is disabled in the
service configuration. Verify the unencrypted

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1687


<!-- page 1688 -->
Symptom

Cause

Solution

(In deployments using
Microsoft Exchange
Server 2007, 2010 or
2013), Service Mapping
created connections
using traffic-based
discovery, which traces
all open connections,
instead of using
PowerShell commands.

Make sure that
you provided
a user with
permissions to
run PowerShell
commands on
servers that
host Microsoft
Exchange Server
components, for
example, CAS.

traffic setting in the service configuration or
specify one of the authentication mechanisms
supported by the server.
The application service map is very large,
because it includes connections to all Outlook
clients.

Tibco BusinessWorks and EMS discovery
Discovery can find Tibco ActiveMatrix BusinessWorks and Enterprise Message Service (EMS).
Service Mapping can discover application services containing Tibco BusinessWorks, Enterprise
Message Service (EMS), and their components.

Data collected by Discovery for Tibco ActiveMatrix BusinessWorks
The following data is collected in the ActiveMatrix Business Works
[cmdb_ci_appl_tibco_matrix] table.

Table and field

Description

ActiveMatrix Business Works [cmdb_ci_appl_tibco_matrix]
Name [name]
Version [version]

The attributes of ActiveMatrix BusinessWorks
configuration item.

TCP port(s) [tcp_port]
Class [sys_class_name]
Fully qualified domain name [fqdn]
IP Address [ip_address]
Configuration directory
[config_directory]
Configuration file [config_file]
Installation directory
[install_directory]
Project [project]

Data collected by Discovery for Tibco Enterprise Message Service
By default, Discovery uses the Enterprise Message Service pattern to discover Tibco
Enterprise Message Service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1688


<!-- page 1689 -->
For a list of privileged commands that you need for Discovery and Service Mapping, see Service
Mapping commands requiring a privileged user. This list includes commands that require
elevated rights to discover and map Unix-based hosts in your organization.

Note: For information on Probe to Pattern migration see the knowledge article
KB0694477

.

Table and field

Field Name

Tibco Enterprise Message Services [cmdb_ci_appl_tibco_message]
Name [name]
Version [version]

Attributes of the Tibco Enterprise Message Services
configuration item.

Class [sys_class_name]
Fully qualified domain name
[fqdn]
IP Address [ip_address]
Installation directory
[install_directory]
TCP port(s) [tcp_port]
Configuration directory
[config_directory]
Configuration file [config_file]
Installation directory
[install_directory]

Data collected by Service Mapping
Service Mapping can discover application services that contain Tibco ActiveMatrix
BusinessWorks (including BusinessWorks Process), Tibco Enterprise Message Service (EMS),
Tibco Enterprise Message Service (EMS) Queue.
Map application services containing Tibco BusinessWorks and EMS
Map an application service containing Tibco BusinessWorks and Enterprise Message Service
(EMS) and verify that Service Mapping discovered all Tibco components correctly.

Before you begin
• (If hosted on Unix) Configure applicative credentials

for the Tibco EMS.

• (If hosted on a Windows server) On the ServiceNow AI Platform, configure Windows
credentials .
• (If hosted on a Unix server) On the ServiceNow AI Platform, configure SSH credentials

.

• (Optional) For discovering using the WinRM protocol, see Configure WinRM trusted hosts on
MID Server .
Role required: service_mapping_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1689


<!-- page 1690 -->
Procedure
1. Create a service instance.
a. Navigate to All > Service Mapping > Service Instances.
b. Click New.
The Discoverable by Service Mapping option is selected by default.
c. In the Name field, enter a descriptive name for the service instance.
2. Define the entry point for this application service:
a. Select the Other application tile.
The Discoverable by Service Mapping option is selected by default.
b. From the Select Entry Point Type list, select HTTP(s) Endpoint, TCP Endpoint,
Tibco BW Endpoint.
c. Define the entry point as follows:
▪ The URL to the process that correlates to the Tibco BusinessWorks Project, for example,
http://10.xx.xx.xx:6710/GetMemberActivitiy/Processes/
ServiceGetMemberActivitiy.service .
▪ (Optional) The hostname on which the BusinessWorks Project runs as a service.
d. Click Add.
e. Click Save.
3. Click Additional Info on the left and clear the Traffic based discovery check box.
4. Click Update.
5. Verify that the mapping result is satisfactory:
a. Click View Map and wait until the mapping is complete.
It may take a few minutes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1690


<!-- page 1691 -->
b. Review the application service map and make sure that the service layout is as in the
following examples.

In addition, verify that the BusinessWorks CIs are inclusions each of which contain a
BusinesWorks process. Also, verify that the EMS CIs are inclusions containing EMS Queues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1691


<!-- page 1692 -->
Trouble?
If the mapping result is not as you expected, perform basic troubleshooting.

Symptom

Cause

Solution

(Only for deployments hosting
BusinessWorks on a Unix server)
The service instance map shows
the BusinessWorks CI without an
inclusion of the BusinessWorks
process.

Service Mapping
failed to run the
TibcoFilesParser.ksh
command.

Make sure that you
provided a user with
elevated rights as
described in Service
Mapping commands not
requiring a privileged user.

Service Mapping failed to
run the tibemsadmin
command.

Make sure that you
provided a user with
elevated rights as
described in Service
Mapping commands not
requiring a privileged user.

The discovery log shows the error
message stating that the user does
not have sufficient credentials.
Service Mapping failed to discover
the outgoing connections of EMS
to the EMS process.

Mapping application services containing Oracle GlassFish Servers
Service Mapping can discover application services containing Oracle GlassFish Servers.

Discovered components

Name

Platform

Oracle
GlassFish
Server

Windows

Version

3.1, 4.0, 4.1

UNIX

Pattern (or
probe if
indicated)

Protocol

Discovery type

WMI

GlassFish
Horizontal and Server
top-down

WinRM
SSH

Oracle
GlassFish
WAR file

Windows
UNIX

3.1, 4.0, 4.1

WMI
WinRM

GlassFish
Horizontal and WAR
top-down

SSH
Map application services containing Oracle GlassFish Servers
Map an service instance containing an Oracle GlassFish Server correctly.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1692


<!-- page 1693 -->
Before you begin
• (If hosted on a Windows server) On the ServiceNow AI Platform, configure Windows
credentials .
• (If hosted on a Linux or UNIX server) (Optional) on the ServiceNow AI Platform, configure SSH
credentials .
• (Optional) For discovering using the WinRM protocol, see Configure WinRM trusted hosts on
MID Server .
Role required: service_mapping_admin

Procedure
1. Create a service instance.
a. Navigate to All > Service Mapping > Service Instances.
b. Click New.
The Discoverable by Service Mapping option is selected by default.
c. In the Name field, enter a descriptive name for the service instance.
2. Define the entry point for this application service:
a. Select the Other Application tile.
The Discoverable by Service Mapping option is selected by default.
b. Define the entry point by filling in the fields.

Field

Description

Select Entry Point Type

Entry point type:
▪ HTTP(S) Endpoint
▪ TCP Endpoint
▪ Tibco BW Endpoint

URL

The URL of the process that correlates with the GlassFish
Server, for example, http://10.196.xx.xx:28080/
hello/.
This field appears when HTTP(S) Endpoint is selected in
Select Entry Point Type.

Host

The server that hosts the GlassFish Server.
This field appears when Tibco BW Endpoint or TCP
Endpoint is selected in Select Entry Point Type.

Host Name

The host name of the server that hosts the GlassFish
Server.
This field appears when HTTP(S) Endpoint is selected in
Select Entry Point Type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1693


<!-- page 1694 -->
Field

Description

Port

The port, which the process correlating with the GlassFish
Server uses.
This field appears when Tibco BW Endpointo r TCP
Endpoint is selected in Select Entry Point Type.

Process Name

The name of the process that correlates with the GlassFish
Server.
This field appears when Tibco BW Endpoint is selected in
Select Entry Point Type.

Comments

Free text comment to provide information on the endpoint.
This field appears when HTTP(S) Endpoint or TCP
Endpoint is selected in Select Entry Point Type.

c. Click Add.
d. Click Save.
3. Click Additional Info on the left and clear the Traffic based discovery check box.
4. Click Update.
5. Verify that the mapping result is satisfactory:
a. Click View Map and wait until the mapping is complete.
It may take a few minutes.
b. Review the application service map and make sure that the service layout is as in the
following example.

In addition, verify that the GlassFish Server CIs are inclusions, each of which contains a WAR
file.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1694


<!-- page 1695 -->
Trouble?
If the mapping result is not as you expected, perform basic troubleshooting.

Symptom

Cause

Solution

Service Mapping fails to
There is no process running
discover the GlassFish Server on the port that is part of the
CI. The discovery log displays entry point.
the following message:
Process is not running or port
is not correctFailed to identify
CI due to the host 10.196.xx.xx
lacking an application running
on port 28080. Make sure that
the application is running and
run quick discovery on the
host.

1. Make sure that the entry
point is correct.
2. If the entry point is correct,
check that here is a process
running on the port by
running a quick discovery
on the host.

Mapping application services containing Oracle Tuxedo platform
Service Mapping can discover application services containing Oracle Tuxedo platform and its
components.

Discovered components

Name

Oracle Tuxedo

Platform

Windows

Version

10.x, 11.x, 12.x

UNIX

Discovery
type

Protocol

WMI

Horizontal
and topdown

WinRM

Pattern (or
probe if
indicated)

Tuxedo

SSH
Oracle Tuxedo
Portal

Windows
UNIX

10.x, 11.x, 12.x

WMI

Horizontal
and topdown

WinRM

Tuxedo Portal
pattern

SSH
Map application services containing Oracle Tuxedo platform
Map an application service containing an Oracle Tuxedo platform and verify that Service
Mapping discovered all Tuxedo components correctly.

Before you begin
• On the ServiceNow AI Platform, configure SSH credentials

.

• (Optional) For discovering using the WinRM protocol, see Configure WinRM trusted hosts on
MID Server .
• (If hosted on Unix) Provide a user with the elevated rights for running commands described in
Service Mapping commands requiring a privileged user.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1695


<!-- page 1696 -->
Role required: service_mapping_admin

Procedure
1. Create a service instance.
a. Navigate to All > Service Mapping > Service Instances.
b. Click New.
The Discoverable by Service Mapping option is selected by default.
c. In the Name field, enter a descriptive name for the service instance.
2. Define the entry point for this application service:
a. Select the Other Application tile.
b. Select TCP Endpoint from the list.
c. Define the entry point as follows:
▪ A host of the server that hosts the Tuxedo process.
▪ A port on this server that the Tuxedo process opens.
d. Click Add.
e. Click Save.
3. Click Additional Info on the left and clear the Traffic based discovery check box.
4. Click Update.
5. Verify that the mapping result is satisfactory:
a. Click View Map and wait until the mapping is complete.
It may take a few minutes.
b. Review the application service map.
Trouble?
If the mapping result is not as you expected, perform basic troubleshooting.

Symptom

Cause

Solution

Service Mapping fails to discover the
Tuxedo CI. The discovery log displays the
message that states that the credentials are
insufficient for running the command including
"permissions.tmadadmin -v".

The provided
user does not
have elevated
permissions
for running this
command.

Make sure that you
provided a user with
permissions to run
commands requiring
elevated rights.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1696


<!-- page 1697 -->
Symptom

Cause

Service Mapping fails to discover the Tuxedo
The provided user
CI. The discovery log displays the message that does not have the
states that the user cannot run the tux.env script. permissions to run
the tux.env script.

Solution

Make sure that you
provided a user with
permissions to run the
tux.env script.

Modify or update tag definitions for tag-based mapping
You can change tag definitions that Service Mapping uses for tag-based mapping. Service
Mapping uses updated tag definitions to create new tag-based services without applying tagrelated changes to services you mapped earlier.

Before you begin

If you need to create a new tag category or modify an existing tag category, follow the
prerequisites in Map application services using tags with classic Service Mapping.
Review recommendations in Prepare for mapping application services based on tags.
Role required: service_mapping_admin

About this task

Note: Starting with Service Mapping Plus version 1.16.3, take advantage of the Tag-based
Service Mapping workspace to efficiently map your application services. .
You may decide to add or remove tag categories from a tag-based service family in the following
cases:
• If you are not satisfied with the results of the tag-based mapping, for example, if the service is
too large, because it includes irrelevant CIs.
• If there are changes in the way your organization uses tags, for example there are new tags.
When you modify tag categories defined for a tag-based service family or delete a tag-based
family itself, the system detaches all mapped services from this tag-based service family.
These services still exist and Service Mapping continues to update them using the original tag
definition. To avoid having tag-based services based on outdated tag definitions, delete existing
tag-based services.
Service Mapping generates new tag-based service candidates that you use to map services
based on modified tag definition.

Important: New services based on modified tag definitions do not overwrite previously
mapped services.

Procedure
1. Delete existing tag-based services:
a. Navigate to Service Mapping > Administration > Tag-based Service Families.
b. Select the tag-based service family for which you want to modify the tag definition.
c. Under Mapped services, click Delete mapped services to delete all services.
d. Alternatively, click the Mark for deletion icon next to the relevant service in the list, and then
click Delete.
2. Navigate to Service Mapping > Administration > Tag-based Service Families.
3. Select the tag-based service for which you want to modify the tag definition.
4. Under Selected tag categories, perform one of the following actions:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1697


<!-- page 1698 -->
◦ Add a new tag category by double-clicking the empty row and selecting the relevant tag
category from the list of tag categories you defined earlier.
◦ Remove a tag category by clicking the Mark for deletion icon next to it.
◦ Modify the use of a tag category already associated with the service family by changing the
tag values or the service naming order.
For multiple tag values, use comma as a separator. The service naming order defines
how Service Mapping uses the tag category name in the names of application services
generated for the service family.
◦ Modify the tag category itself by clicking the tag category name and then defining the CI tag
keys.
5. Click Update.

What to do next

Remap tag-based application services to reflect tag changes
Remap tag-based application services to reflect tag changes
Recreate tag-based services if the way your organization uses tags have changed or after
modifying tag definitions for tag-based service families.

Before you begin

If necessary, modify the tag definitions for the relevant tag-based service family.
Role required: service_mapping_admin

About this task

Remap existing tag-based services after you have manually modified tag definitions. If your
organization uses new tag keys or tag values, you may also want to remap existing services.
In both cases, Service Mapping does not automatically update existing services to reflect tag
changes.

Procedure
1. Navigate to Service Mapping > Administration > Tag-based Service Families.
2. Select the tag-based service family for which tag definitions have changed.
3. Under Related Links, click Manually update candidates to generate new service candidates
using the modified tag definitions.
4. In the Service candidate window, review the suggested service candidates and select the
ones that you want to map.
If there are no service candidates, ensure that you selected the tag values that exist in the Key
Value [cmdb_key_value] table.
5. Click Map selected.
Service Mapping creates application services based on the candidates you selected.
6. Under Mapped services, review the newly created services to ensure that the result is as you
expected.
If Service Mapping offers to view the CI list instead of a map for an application service, this
service is too large. Fine-tune it as described in modify the tag categories.

Result

You have mapped the application service based on the latest tag definitions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1698


<!-- page 1699 -->
Remapped tab-based application service

What to do next

Make sure that the service instances aren't too large:
• Service Mapping doesn't offer to view CI list instead of a map for a service instance.
• There is no discovery message indicating that the service instance is too large: The map

does not display the entire service, because it is too large.
The number of CI connections exceeded the allowed maximum.

If the service is too large, perform the following actions:
• Modify tag definitions used for mapping to make sure Service Mapping includes only relevant
CIs in the service instance.
• If necessary, Tag-based discovery configuration to change which CIs Service Mapping
includes in tag-based service instances.
Fix application service errors in bulk
Service Mapping classifies errors by their root cause, for example, missing credentials or task
timeout. For a fast and efficient process, fix errors belonging to the same category in bulk.

Before you begin

Role required: service_mapping_admin or admin

About this task

You can view errors by category, for example, Configuration, Network, and Credentials. Each
category tile also displays the error counter.
As part of the Service Mapping workflow, after you map application services in bulk, you can fix
multiple application service errors in bulk (as a group).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1699


<!-- page 1700 -->
Fixing errors in bulk workflow

After performing initial mapping, Service Mapping rediscovers configuration items (CIs) regularly,
constantly updating the list of errors. Discovery schedules define how often Service Mapping
runs the discovery process for CIs. Service Mapping discovers only CIs belonging to application
services with Operational status.
There may be discovery errors not assigned to any category:
• After upgrading Service Mapping from Jakarta release or earlier.
• If there are configuration items (CIs) that have errors associated with them, and that were first
removed from application services and then readded to application services.

Procedure
1. Navigate to All > Service Mapping > Home and then click Fix Your Services in the Fix box.
The number in the Fix box indicates the number of affected service maps. Click Update (
to update the display.

)

Note: To fix the errors for a particular service instead, click Manage Errors by Service.
2. If there are uncategorized errors, you can categorize them by service instance:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1700


<!-- page 1701 -->
a. Click View Uncategorized Errors by Service.
b. Click the relevant service name.
c. On the service instance map, click Run Discovery.
Service Mapping discovers all CIs discovered with errors and belonging to this service
instance.
3. If there are uncategorized errors, categorize them by clicking Rediscover Relevant CIs, and
clicking Continue in the confirmation message.
Service Mapping discovers all CIs discovered with errors and belonging to application
services with Operational status.
4. Click an error category box.
In the example below, configuration errors are selected.
◦ The Errors by Category page organizes errors by high, medium, and low impact on the
services.
◦ For each impact category, errors are grouped into boxes by error code (possibly the root
cause).
◦ If error tasks have been assigned, the task numbers appear in the box. Click a task to view
details. Point to a task to view comments that the assigner might have added. A check mark
indicates that a task is completed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1701


<!-- page 1702 -->
5. To view the list of errors that share an error code, click the box.
You can perform one of the Recommended Actions on items that you select or on all items in
the list.
In the example, All patterns failed is selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1702


<!-- page 1703 -->
6. Click an action in the Action on All section, or select errors and click an action in the Action on
Selected section.
Retry Discovery
Performs the full Discovery process. You typically perform Discovery after
following the fix instructions that appear when you click View instructions.
View affected services
Displays a popup list of all services that are affected by the selected error. In the
list, click a service to view service details.
Mark as assigned
Apply the Mark as assigned action when you plan to perform an out-of-band
action to notify a person to fix the error (typically a person who does not use
the ServiceNow instance). You can enter a Comment in the Mark as Assigned
popup. Click Update to set the Error Status field in the error record as Assigned
and associate the Comment with the error. To view the comment, point to the
Assigned link.

Note: The Create ServiceNow task action also sets the Error Status field
in the error record as Assigned.
Create a ServiceNow task
Opens the ServiceNow Error task form in a pop-up window so you can create and
assign a task for the selected errors. Sets the Error Status field in the error record
as Assigned. For information on creating error tasks, see Create a table
and
Create a task from an incident, problem, or change request .

Note: The Mark as assigned action also sets the Error Status field in the
error record as Assigned.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1703


<!-- page 1704 -->
Retry Discovery
Performs the full Discovery process. You typically perform Discovery after
following the fix instructions that appear when you click View instructions.
View instructions
Displays a troubleshooting procedure in a pop-up window. Follow the steps to try
to resolve the error.
Ignore Error
Right-click an error and then select Ignore Error to set the Ignored value to true.
The system performs the action on the items, displays In progress, and then displays the
result (success or failure) of the action. If the error is resolved, the Error Status field in the error
record is set to Resolved.

Note: If an action (for example, Discovery) is in progress, but taking too long, you can
click Stop to stop the action.

7. Click Done to close the status message.
8. If you performed an action on a selection and the error was resolved, you can click Resolve All
to apply the same action to all items in the list.
Fix errors in individual application service maps
You can address discovery issues in each application service map individually.

Before you begin

Role required: service_mapping_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1704


<!-- page 1705 -->
About this task

You can fix errors in individual application services at any time. When you perform initial mapping
of application services in your organization, you typically fix errors in individual application
services after resolving errors in multiple services, in bulk. You may also need to fix errors in an
approved and completed application service at a later stage.
Service Mapping workflow

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. Ensure that the map opens in Edit mode.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1705


<!-- page 1706 -->
CIs discovered with errors appear with the warning icon (
) on the map. Discovery messages
on the Discovery Messages tab give short error descriptions.
3. Optional: Group errors by types by clicking Group Errors.
The discovery error messages on the Discovery Messages tab appear grouped by predefined
types, error codes.
4. To review and fix an error from the list, click Handle Error next to the error description.
Or
5. To review the first error in the largest error group, click Handle Next Error at the left top corner
of the map.
6. To learn how to resolve the error, click Open instructions under Action on Selected in the right
pane.

Note: Instructions are available only for the most common errors.
7. Click the relevant semi-automated resolution option to resolve the error under Action on
Selected in the right pane.
Error resolution options vary, because they depend on the specific discovery error associated
with the selected CI.
Use this option

To do this

Add Management IP

Enter the management IP to trigger discovery
on the host resources and connections. Typ­
ically, you need this solution for application
services that have undiscovered devices like
load balancers as their entry points. The man­
agement IP address of a network device is
the address that you use to reach the device
using the SNMP or any other management
protocol.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1706


<!-- page 1707 -->
Use this option

To do this

Note: The system does not save the
management IP you configure.

Create new WMI credentials

Open the Windows Credentials form and con­
figure missing Windows credentials for the se­
lected CI. See
.

Create new SSH credentials

Open the SSH Credentials form and config­
ure missing SSH credentials for the selected
CI. See
.

Create new SSH private key

Open the SSH private keys form and config­
ure missing credentials for the selected CI.
See
.

Create new SNMP credentials

Open the SNMP credentials form and config­
ure missing SNMP credentials for the select­
ed CI. See
.

Show Discovery Log

See the log to understand at what stage an er­
ror occurred and what caused it.

Skip and resume

Manually add the CI whose discovery failed
and configure attributes of the entry point
from which Service Mapping continues dis­
covery. For more information, see Skip errors
to continue discovering an application ser­
vice.

Retry discovery

Run the discovery process for the selected CI
after trying to resolve a discovery error associ­
ated with it.

View affected services

Display a list of all services affected by the se­
lected error. In the list, click a service to view
service details.

8. If there are no instructions or semi-automated resolution options available, fix errors based on
symptoms and discovery messages.
9. To ignore an irrelevant error, right-click its error message on the Discovery Messages tab and
select Toggle Ignore State.
The ignored error disappears from the map and from the list of discovery error messages.

Note: If necessary, you can still display ignored errors by switching on the Include

Ignored Errors option under More Options menu. For more info, see Modify view for an
application service map.
10. Click Handle Next Error to review the next error in the largest error group.
11. When finished reviewing and handling errors, click anywhere in the map to close the Resolve
Error pane.

What to do next

If you resolved most errors, send the service instance for review.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1707


<!-- page 1708 -->
Related topics
Prerequisites for performing top-down discovery using Service Mapping
Fix errors in individual application services using discovery messages
Service Mapping does not offer semi-automated resolution options for errors that require
advanced resolution. Fix such errors using symptoms and discovery messages.

Before you begin

Try fixing errors using semi-automated resolution options as described in Fix errors in individual
application service maps.
Role required: service_mapping_admin

About this task

You can fix errors in individual application services at any time.

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. Click View Map next to the relevant service instance.
3. Ensure that the map opens in Edit mode.

CIs discovered with errors appear with the warning icon (
) on the map. Discovery messages
on the Discovery Messages tab give short error descriptions.
4. Fix errors based on the symptoms and discovery messages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1708


<!-- page 1709 -->
Symptom

Resolution

The following discovery message is
displayed: The map does not
display the entire service,
because it is too large.
The number of CI connections
exceeded the allowed maximum.

Reduce the application service size.
◦ For an application service mapped using
pattern-based and traffic-based discovery,
perform the following actions:
▪ If you use customized discovery patterns
and mapping results in very large service
instances, modify the patterns so that
they don't map irrelevant CIs.
▪ Split the service into smaller services.
◦ For an application service converted
from an application service, perform the
following actions:
▪ Review the converted service instance
to identify CI relations irrelevant or
redundant for this service. Remove such
CI relations in the CMDB.
▪ Decide how many levels of related
CIs you must include into this service
instance. If necessary, change the
number of levels used in conversion
reduce the service size.

The following discovery message
is displayed in a tag-based service
instance: This tag-based service

instance reached the maximum
number of CIs. For more
information, refer to the
product documentation.

◦ The service instance map displays the
warning icon (
) on top or instead of the
configuration item.

to

Perform the following actions:
◦ Modify tag definitions used for mapping to
make sure Service Mapping includes only
relevant CIs in the service instance.
◦ If necessary, Tag-based discovery
configuration to change which CIs Service
Mapping includes in tag-based service
instances.
KB0621669: Resolving failure to execute
commands using sudo during Discovery in
Service Mapping

◦ The following discovery message displays
for the configuration item: Failed to
execute command using sudo on
host <host IP address>.
The following error message displays for the
configuration item: Access is denied.

KB0564283: Resolving an issue of denied
access to a Windows Server

◦ The service instance map displays the

KB0564282: Resolving issue of RPC Server
unavailable during Windows Server discovery
in Service Mapping

warning icon (
) on top or instead of the
Windows Server.
◦ The following discovery message displays
for the Windows Server: RPC Server
unavailable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1709


<!-- page 1710 -->
Symptom

Resolution

◦ The service instance map displays the

KB0610414: Resolving failure to discover
operating system for a load balancer

warning icon
balancer CI.

instead of the load

◦ The following discovery message
is displayed: Service Mapping
triggered the horizontal
discovery to find the host
x.x.x.x, because this host
was not in the CMDB. The
horizontal discovery failed.
See discovery status for more
info.
Instead of the map, the following discovery
KB0596671: Resolving a large topology issue
message displays: Cannot display the in service instance maps
map. Topology too large.
A Virtual IP (VIP) for a load balancer service
CI is sometimes updated with the IP
addresses of another load balancer.

KB0610412: Resolving load balancers
merging into one CI in Service Mapping

The map displays incorrect virtual IP names
for load balancers.

KB0610413: Resolving incorrect virtual
IP names of load balancers in Service
Mapping

The service instance map consists of
different CIs every time you run the mapping
process on the same entry points to discover
the same service instance.

KB0595227: Troubleshooting inconsistent
mapping results

There is no load balancer CI on the service
instance map. There are connections going
directly from the entry point of the service
instance to the next tier CIs. The rest of the
CIs also disappear from the map.

KB0621529: Resolving the issue of a load
balancer disappearing from the application
service map

◦ The service instance map displays the
warning icon (
) on top or instead of the
configuration item.

KB0621670: Resolving the issue of SSH
command time-out during discovery in
Service Mapping

◦ The following discovery message displays
for the configuration item: SSH command
timed out on host.
A cluster CI appears detached from all CIs in
map tiers above or below it.

KB0621531: Resolving disconnected cluster
CIs on the service instance map

◦ The map displays either the load balancer
configuration item (CI) with a warning icon

KB0621576: Resolving failure to discover VIP
for a load balancer

or just the warning icon
◦ The following discovery message appears
for the CI that is expected to be the load
balancer in the service instance: Failed

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1710


<!-- page 1711 -->
Symptom

Resolution

to recognize application. See
the discovery log for more
details.
The service instance map shows a different
load balancer from the one you expected to
see in this application service.

KB0621616: Business service map displays a
wrong load balancer in Service Mapping

◦ The service instance map displays the

KB0621670: Resolving the issue of SSH
command time out during discovery in
Service Mapping

warning icon (
) on top or instead of the
configuration item.
◦ The following discovery message displays
for the configuration item: SSH command
timed out on host.
◦ The service instance map displays the
warning icon (
) on top or instead of the
configuration item.

KB0622808: Resolving a failure to find a MID
Server for an IP address

◦ The following discovery message displays
for the configuration item: No active
MID Server found for IP
X.X.X.X.
◦ The service instance map displays the
warning icon (
) on top or instead of the
configuration item.

Perform the procedure described in Upload
the rctrlx.exe file to MID Servers.

◦ The following discovery message displays
for the configuration item: '64\rctrlx'
is not recognized as an
internal or external command,
operable program or batch
file.
A CI or a segment of the map is grayed out
after Service Mapping runs the top-down
discovery on a previously mapped service
instance.
In this application service Service Mapping
failed to rediscover the CI or connections
leading to this CI.

Perform the following steps:
a. (Optional for grayed out segments) Identify
the faulty CI that causes the segment to be
grayed out.
b. Use the discovery message associated
with this faulty CI to resolve the problem.

5. Click Run Discovery.
Skip errors to continue discovering an application service
If you know what configuration items (CIs) and connections make up your service instance, you
can enable Service Mapping to continue discovery of the service instance even if there are
some errors. You can skip errors to troubleshoot later so you can complete mapping most of the
service instance, even if some CIs are missing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1711


<!-- page 1712 -->
Before you begin

Familiarize yourself with the structure of the application service to know which CIs make up the
next tier after the problematic CI. If necessary, consult the application service owner to collect
necessary information.
Role required: service_mapping_admin or admin

About this task

Normally, discovery of an application service stops when Service Mapping fails to identify a CI.
In this case, the map shows a warning icon instead of the undiscovered CI. There are no CIs or
connections going out of the undiscovered CI.
Undiscovered CI on the map

You can overcome the obstacle of the undiscovered CI and restart discovery from the CIs
belonging to the next tier after the problematic CI. To do so, add a CI manually if you know what
the undiscovered CI is and what the incoming connection of the next tier CI is. Service Mapping
uses incoming connections to access a CI for discovery. These connections are referred to as
endpoints.

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. Ensure that the map opens in Edit mode.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1712


<!-- page 1713 -->
3. Ensure that the map is not in the Host View.
4. Click the arrow next to the undiscovered CI and select Skip and Resume.
5. Define attributes of the CI you want to manually place instead of the undiscovered CI.

Field

Description

CI Type

Select the CI type (CI class) for the CI you are
adding. Every CI belongs to a CI type which
contains a set of attributes configured for this
kind of CI, for example, cmdb_ci_appl for
applications.

CI Name

Select the CI from the list of CIs of the
selected CI type.

Note: To eliminate the possibility of
delayed results when searching for
a specific CI, make your search as
specific as possible. A search with
*<name> might take a long time and
return a large data set.

Note:
If the CI type does not appear in the list, Service Mapping does not allow adding CIs of
this type manually. For example, you cannot add an application cluster or an endpoint
manually.
6. Configure attributes of the entry point from which Service Mapping continues discovery by
selecting the entry point type and entering relevant fields.
If the required entry point type does not appear in the Select Entry Point Type list, create it as
described in Create entry point types for Service Mapping.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1713


<!-- page 1714 -->
7. Click Submit.
The map shows the manually added CI instead of the undiscovered CI. Service Mapping starts
discovery for CIs of the next tiers. When the discovery process finishes, the map shows all
discovered CIs below the manually added CI.

What to do next

To discover the problematic CI automatically:
1. Perform necessary troubleshooting to enable Service Mapping to discover the problematic CI.
For example, you may need to customize the relevant pattern, provide missing credentials or
fine-tune traffic-based discovery.
2. Navigate to the relevant service instance map.
3. Click Run discovery.
4. After the discovery process finishes, verify that Service Mapping discovered the CI. If Service
Mapping discovered the CI, the map shows the actual CI without the Warning icon (

).

Related topics
Discovery patterns used by ITOM Visibility
Enable traffic-based discovery for CI types or specific CIs
Prerequisites for performing top-down discovery using Service Mapping
Resolve pattern-related mapping errors
You can troubleshoot mapping errors caused by patterns.
Service Mapping Part 2 | Troubleshooting
This video provides an alternative way of troubleshooting pattern-related errors.

Before you begin

Verify that the mapping error is caused by an inaccurate pattern by checking the discovery
message. If the message says "Failed to recognize application", the error is pattern-related.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1714


<!-- page 1715 -->
You need to be familiar with the Pattern Designer module of Service Mapping.
Role required: admin and service_mapping_admin

About this task

If there are configuration items (CIs) that Service Mapping could not map correctly, they appear
on your service instance map with warning icons
. Typically, mapping errors happen when
Service Mapping fails to connect to a CI or fails to recognize it due to an inaccurate pattern.
You can identify problematic steps in your pattern and fix them without reviewing all steps and
operations contained in the pattern. It allows you to troubleshoot pattern-related errors quickly
and effectively.

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. Ensure that the map opens in Edit mode displaying discovery messages and errors.

3. Right-click the CI with the warning icon (

) and select Show discovery log.

4. Expand the failed pattern which appears above the result marked red.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1715


<!-- page 1716 -->
5. Expand the failed section and click the failed step.

6. Click Debug.
7. Click the first step and wait for Pattern Designer to run it.
Repeat this action for other steps following the order until you reach the faulty step that causes
the error.
In the example below the port number is 8081 instead of 8080 which causes the problem.

8. Click OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1716


<!-- page 1717 -->
9. Fix the pattern attribute that causes the problem.
10. Click Test.
11. Verify that Pattern Designer returns a success message.
12. Click Save.
13. Click Activate.
14. Return to the service instance map which contained the mapping error.
15. Right-click the CI for which the pattern was fixed and select Resume discovery.
16. Verify that the CI is discovered and mapped correctly.
Review and approval of application service maps
After the Service Mapping administrator maps IT services and fixes errors in them, the
administrator and the owner collaborate to review and approve the service maps. The review and
approval process is available only for discovered and manually created service instances.
You must have Service Mapping enabled to map or review service instances.
Users who perform review and approval have the roles of a Service Mapping administrator and
an Service Mapping administrator is responsible for mapping, fixing, and maintaining application
services. The service instance owner checks that the service instance maps are complete and
all major components comprising it are correctly represented. If necessary, the owner leaves
comments, referred to as reject messages, on service instance maps for the Service Mapping
administrator to implement.
The review and approval process is performed in the following stages:
1. After the initial mapping of service instances, the administrator fixes errors and sends
individual service instances for review. The system creates a service process task assigned to
the service instance owner and sends an email notification about it.
2. The service instance owner checks that the service instance maps are complete and all
major components comprising it are correctly represented. If necessary, the owner leaves
comments, referred to as reject messages, on service instance maps for the Service Mapping
administrator to implement. The service process task assigned to the owner closes. The
system sends an email notification to the administrator that the owner posted comments.
3. The administrator receives the email notification, views owner requests and implements them.
4. The administrator resends the service instance maps for review. The system again creates a
service process task assigned to the service instance owner and sends an email notification
about it.
5. If the revised service instance maps are satisfactory, the service instance owner approves
them. If not, the owner requests further fixes, which the administrator must address.
To see documentation for a review phase, click the relevant box in the diagram.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1717


<!-- page 1718 -->
1. Send the service instance for review
2. Review the business service and request fixes
3. Review and implement owner's requests
4. Resend the application services for review
5. Review and approve the application services
The process of application service review may take some time as it requires making changes and
repeatedly running the mapping process on the application service. Typically, it takes several
iterations to arrive at the desired result.
Once the owner approves an application service, the application service status changes to
Approved and it appears in the list of completed application services on the Home page.
Send application service maps for review
After you map an application service, send it to the application service owner for review to make
sure that the map is accurate.

Before you begin

Perform initial error fixing as described in Fix application service errors in bulk and Fix errors in
individual application service maps.
Role required: service_mapping_admin

About this task

While you can fix errors in bulk, you always send application services for review individually, one
by one.
Sending application service maps for review is part of the review and approval process. Typically,
you send each application service map for review twice: The first time for the initial owner review
and the second time after you implemented owner feedback.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1718


<!-- page 1719 -->
After the initial mapping of application services, you fix errors and send individual application
services for review. The system creates a service process task assigned to the service instance
owner and sends an email notification about it.
To see documentation for another review phase, click the relevant box in the diagram.

1. Review the service instance and request fixes
2. Review and implement owner's requests
3. Resend the service instance for review
4. Review and approve the service instance

Procedure
1. To send an service instance for review from the service instance form:
a. Open the service instance map.
b. Sort the list of planned application services by status and scroll to see services in In
progress status, or use the filter to narrow the list.
c. Click the required service instance.
d. Click Actions > Send For Review.
2. Alternatively, send an service instance for review from its map:
a. Navigate to Service Mapping > Home.
The Home page displays only information on service instances that Service Mapping can
discover or already discovered. The Home page does not display information on service
instances that are created manually or using the API.
b. Click the Approve tile.
c. Click Send For Review.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1719


<!-- page 1720 -->
d. Click the required service instance.
The map for this service instance opens.
e. Click Send For Review in the upper corner of the window.

What to do next

When you receive an email notification that the owner sent comments for this service instance,
review and implement the owner's requests.
Review application service maps
As the application service owner for the application service map, you receive an email
notification that the application service map is assigned to you for review. Review mapping
results for correctness and either provide your feedback or approve the application service map.
The review and approval process is available only for discovered and manually created service
instances.

Before you begin

Role required: sm_app_owner

About this task

Ideally, only the application service owner reviews the planned application service, however,
users with the sm_app_owner or service_mapping_admin role can also perform this task.
Reviewing application service maps is part of the review and approval process. The process of
application service review may take some time as it requires making changes and repeatedly
running the mapping process on the application service. Typically, it takes several iterations to
arrive at the desired result. Once you are satisfied with the discovery result, you approve the
application service.
After you request fixes or approve the application service, the service process task assigned to
you closes.
To see documentation for another review phase, click the relevant box in the diagram.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1720


<!-- page 1721 -->
1. Send the application service for review
2. Review and implement owner's requests
3. Resend the application services for review

Procedure
1. Click the link to the application service map in the email notification.
The map of the application service opens in the ServiceNow instance.
2. Alternatively, open to the application service to review from the list of tasks assigned to you.
a. Navigate to Service Mapping > Administration > My Tasks.
b. Optional: Sort the list of service process tasks as required.
c. Click the required task.
d. Click the application service form link.
e. Click View map.
3. On the application service map, check that all essential CIs comprising the application service
are discovered and mapped correctly.
Purpose

Action

Verify that there are no missing CI connec­
tions.

Pay attention to CIs with no connectors from
it to other CIs. For example, in the following fig­
ure, the Web Server on win2K12 CI is missing
connections.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1721


<!-- page 1722 -->
Purpose

Action

If connections and CIs to which they lead
are missing, the map does not reflect the re­
al state of the service instance and its opera­
tion. Inaccurate data can also be transferred
to Event Management, causing imprecise
monitoring.

Verify that there are no CIs that do not be­
long in the service.

Check all CIs comprising the application ser­
vice map to identify CIs not belonging to this
application service. Typically, it is applica­
tions supporting internal services. For exam­
ple, Microsoft Internet Information Services
(IIS) connecting to Active Directory, may be
not part of the application service.

Check that the connections between CIs
are correct.

View CI connection attributes in an applica­
tion service map in classic Service Mapping.
Click the plus (+) icon next to a CI.
There are two types of clusters:
Application cluster
In an application cluster, two or
more applications or devices are
configured to work together and
serve the same purpose. Typical­
ly, the clusters provide high avail­
ability or load balancing. For ex­
ample, web servers working be­
hind a load balancer.

Check that clusters are reflected correctly.

This type of cluster appears as a
stack of CIs with a label showing
the number of CIs in this cluster
with the multiplication sign.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1722


<!-- page 1723 -->
Purpose

Action

Application clusters can have a
cluster within a cluster, but never
more than two levels:

OS cluster
In an OS cluster, a server hosts
two identical operating systems.
Typically, the cluster provides
failover.
This type of cluster appears as a
CI with a plus sign and the num­
ber of CIs in this cluster.

Click the plus (+) icon next to a CI.
In an inclusion, a server hosts applications
that are treated as independent objects. For
example, IIS Virtual Directory can run on a
Windows Service as its host.

Check that inclusions are reflected correct­
ly.

4. To notify the service mapping admin of a necessary change or fix, perform the following steps:
a. Click Actions above the map.
b. Select Reject Service Map.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1723


<!-- page 1724 -->
c. In the Add Reject Message window, enter your comment, and click Add.
The new comment appears on the Discovery Messages tab under the map. The application
service status changes to Rejected.
d. If necessary, add more comments.
5. If you are satisfied with the results, approve this application service by clicking Actions, and
then Approve service.
The application service status changes to Approved and it appears in the list of completed
application services on the Home page. The operational status changes to Operational. From
this point, other applications can use data collected and organized by Service Mapping.
Related topics
Fix errors in individual application service maps
Fine-tune application services to implement owner requests
As an administrator, you tweak and fine-tune maps based on comments from the application
service owner.

Before you begin

Role required: service_mapping_admin

About this task

You can edit discovered and manually created service instances.

Important: You cannot fine-tune or edit tag-based and dynamic services from the map.
Reviewing and implementing owner requests is part of the review and approval process.
To see documentation for another review phase, click the relevant box in the diagram.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1724


<!-- page 1725 -->
1. Send the service instance for review
2. Review the service instance and request fixes
3. Resend the application services for review
4. Review and approve the service instance

Procedure
1. Navigate to the relevant application service:
a. Click Approve on the Home page.
The Home page displays only information on service instances that Service Mapping can
discover or already discovered. The Home page does not display information on service
instances that are created manually or using the API.
b. Click Fix Rejected.
c. Right-click the required application service and select Open Service Form.
The form for this application service opens.
2. Click Reject Messages on the left.
The owner comments are displayed under the Service Discovery Messages tab.
3. Review the reject messages to see comments that the application service owner left.
4. Click View Map.
5. Implement changes requested by the application service owner.
6. Click the discovery message describing the service defect that you have fixed and click Mark
as Resolved under Action On Selected on the right.
7. If necessary, resend the application service for review.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1725


<!-- page 1726 -->
Manually add CIs to an application service
Add configuration items to manually created application services or to services discovered by
Service Mapping.

Before you begin
• Verify that the CI type for the configuration item (CI) that you are planning to add, exists.
If necessary, create the CI type as described in Create CI types for Service Mapping and
Discovery.
• Add CIs to the CMDB for the device or application that you want to add, if necessary. See
Populate the CMDB
for more information.
Role required: app_service_admin or service_mapping_admin

About this task

Adding a CI to an application service requires creating a relationship between the new CI and
a CI in the application service. You can add CIs to an application service that was created
manually, by either:
• Adding a method to populate the application service.
Navigate to CSDM > Manage Technology Management Services > Application Service.
Select an application service and then use the Populate the Application Service tab to
choose a method to populate the application service. For more details, see Create an
application service .
• Using the application service service map as described in the steps below.
The default relationship type of the added connection in this case is Depends
on::Used by. You can modify this default relationship type by changing the value of the
sa.it_service.manual_ci_rel_type property. See Components installed with
application services
for more information.

Important: You cannot fine-tune or edit tag-based and dynamic services from the map.
Manually adding a new CI to an existing CI in a service instance prompts the CMDB to update
the information about both CIs, including their relationship type. If other application services use
the same applicative flow, the CMDB recognizes the new CI and automatically adds it to those
services as well.
For example, you manually add an IBM WebSphere Message Broker to an IBM WebSphere
HTTP Listener in the Bank Customer Portal service. The system also adds this IBM WebSphere
Message Broker to the same HTTP Listener in the Bank Internal Portal service, because it uses
this HTTP Listener. Similarly, when you remove a CI you added manually, the system removes it
from all application services where you either manually added it or it was automatically added by
analogy.
You can manually connect a CI only to actual CIs existing in the CMDB, not to a visualization of
other items on the map such as clusters or boundaries. Also, you cannot add CIs of these CI
types to an application service:
• NAT [cmdb_ci_translation_rule]
• Endpoint [cmdb_ci_endpoint]
• Qualifier [cmdb_ci_qualifier]
• Application cluster [cmdb_ci_application_cluster]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1726


<!-- page 1727 -->
There are system records in the Manual CI Exclusions/Inclusions
[svc_manual_ci_exclusions_inclusions] table. See Components installed with application
services
for more information.

Note: The Manual CI Exclusions/Inclusions [svc_manual_ci_exclusions_inclusions] table
doesn't include CIs added using traversal rules.
In environments with domain separation, only CIs belonging to the same domain as the service
instance are added to the service instance. If there is a domain hierarchy, CIs must belong to the
same child domain as the service instance.
If working with an service instance discovered by Service Mapping, manually add a CI:
• To indicate that an service instance contains a device or application, which Service Mapping
cannot discover. For example, add an A/C unit to the Production Floor service.
• To add a temporary placeholder for a CI, which Service Mapping did not discover. In this
case you are planning to perform necessary troubleshooting to ensure that Service Mapping
discovers this CI in the future. For example, add an IBM WebSphere Message Broker to the
Bank Customer Portal service.
• To create an service instance that combines entry points and CIs automatically discovered by
Service Mapping with entry points and CIs from the CMDB. After you manually add an entry
point, you can update the service instance with CIs from the CMDB based on the relationships
defined there.
For additional information related to Service Mapping, see Pattern customization and Enable
traffic-based discovery for CI types or specific CIs.

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. If needed, click Edit to ensure that the map is in Edit mode.
If Service Mapping is deployed, then in Edit mode, the Discovery Messages section appears
below the map.
3. To connect a CI to another CI on the map, right-click the CI to which you want to connect the
new CI, and then select Add a CI.
4. In the Add A CI dialog box, specify the CI to add:

Field

Description

CI Type

Select the CI type (CI class) for the CI you are
adding. Every CI belongs to a CI type which
contains a set of attributes configured for this
kind of CI, for example, cmdb_ci_appl for
applications.

CI Name

Select the CI from the list of CIs of the
selected CI type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1727


<!-- page 1728 -->
Field

Description

Note: To eliminate the possibility of
delayed results when searching for
a specific CI, make your search as
specific as possible. A search with
*<name> might take a long time and
return a large data set.
The CI type list includes only allowed CI types. For example, you cannot add an application
cluster.
5. Click Submit.
The manually added CI appears on the map.

Note: When you manually add a CI, which is an application, as a child to a service that
already includes its parent application CI, the newly added child application CI is hidden
inside the inclusion. Click the plus (+) symbol next to the parent application CI to see the
child application CI.
6. Optional: If Service Mapping is activated, add a discoverable outgoing connection for the
manually added CI:
a. Right-click the manually added CI.
b. Select Manually add a connection.

Note: If you do not see the Manually add a connection option in the right-click menu,
check that you are logged in with the user that belongs to the same domain as the
application service.
c. Configure attributes for the entry point as described in Entry points attributes.
d. Click Submit.
Discovery and Service Mapping attempt to discover this CI. If successful, the CI appears on
the map. Otherwise, a warning icon (

) appears.

7. Optional: If Service Mapping is activated and you want Service Mapping to automatically
discover a CI, which you previously added manually:
a. Customize the relevant pattern or fine-tune traffic-based discovery to enable Service
Mapping to discover the CI.
b. Navigate to the relevant service instance map.
c. Click Run discovery.
d. After the discovery process finishes, verify that Service Mapping discovered the CI by
checking the connector leading to the CI.
If Service Mapping discovered the CI, then two connectors, a manual and automatically
discovered, appear for the CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1728


<!-- page 1729 -->
e. Right-click the CI you added manually.
In the example, it is IBM WebSphere Message Broker.
f. Select Remove manually added CI.
The map shows the CI with only one connector leading to it. If this CI had any manually
added connections, they are removed together with the manually added CI.
Related topics
Link application services
addCI()
Remove CIs not belonging to application services
Remove CIs erroneously mapped as part of an application service by Service Mapping.
Unnecessary CIs included in the map can generate irrelevant alerts in Event Management.
For example, when creating an application service for a web portal, Service Mapping might
automatically discover a connection to unaffiliated external services, such as PayPal.

Before you begin

You remove CIs only from application services discovered by Service Mapping.

Important: You cannot fine-tune or edit tag-based and dynamic services from the map.
Role required: service_mapping_admin

About this task

Removing CIs from the map also removes all their connections. For example, if you remove
a CI of the second tier on the map, all CIs of the third tier connected to it through outgoing
connections, get removed too.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1729


<!-- page 1730 -->
Depending on why Service Mapping mapped an unwanted CI, you can remove it by the following
methods:
• Add mapping boundaries to remove the unnecessary CIs. A boundary makes Service Mapping
stop discovery from this point and not follow outgoing connections. Use this method to remove
CIs that Service Mapping discovered using patterns or using traffic-based discovery.
• Tweak traffic-based discovery. Service Mapping can discover and map configuration items
(CIs) following their traffic-based connections. This method is referred to as traffic-based
mapping and complements pattern-based mapping. Service Mapping generates connection
suggestions based on traffic-based connections and on Predictive Intelligence analysis of
application fingerprints. If the connection suggestions feature is enabled, Service Mapping
doesn't automatically add any traffic-based connections to application services, providing
suggestions. Review the suggestions and choose which CIs to add or to remove.
If the connection suggestions feature is disabled, Service Mapping automatically adds trafficbased connections and CIs to application services. Remove connections that lead to irrelevant
CIs to declutter application services.

Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. Remove CIs that do not belong to this service instance by completing the following actions.
Action

Steps

a. Right-click the connector leading to the CI
you want to remove.
b. Select Mark boundary.
Add mapping boundaries

The CI is marked as boundary on the map
(

).

Note: Ensure that you are looking at
the map in Edit view.
a. Right-click the CI on the map.

Note: You can see traffic-based con­
(If the connection suggestions feature is dis­
abled) Remove CIs discovered using traf­
fic-based connections

nections for a CI, even if you disabled
the traffic-based discovery for an ser­
vice instance the CI is part of.
b. Select Show traffic based connections.
The Traffic Based Connections List opens.
See Traffic-based connections list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1730


<!-- page 1731 -->
Action

Steps

c. In the Traffic Based Connections List, iden­
tify the connection used to discover the un­
wanted CI.
d. Select Remove from the User decision
field for this connection.
e. Click Close.
(If the connection suggestions feature is en­
abled) Remove CIs discovered using traf­
fic-based connections

Perform the procedure described in Add or re­
move CIs for single application services using
connection suggestions.

Related topics
Enable traffic-based discovery for CI types or specific CIs
Transfer a map segment into another application service
You can remove a branch of a service and place it into another application service, either new
or existing. Transfer map segments to split large services or when you want to organize services
differently from the initial mapping result.

Before you begin

You can edit discovered and manually created service instances.

Important: You cannot fine-tune or edit tag-based and dynamic services from the map.
Role required: service_mapping_admin

About this task

When you transfer a map segment into another application service, you create a link between
the original application service and the application service into which you planted the map
segment. The connection to the top CI in the segment becomes an entry point when you transfer
it into another, existing or new, application service.
The original service map shows the link to the other application service instead of the map
segment. The service that contains the reference, becomes a dependent service. The service
that appears as a reference is a contained service.
When you transfer a map segment into another application service, the information about the
connection to the top CI in the transferred segment, is updated in the CMDB. If other application
services use the same ingoing connection (endpoint), the CMDB recognizes it and replaces map
segments coming out of the same connection with connected service CIs by analogy.
You can't insert links to multiple application services from the same connection.
If you use Event Management for service monitoring in your organization, dependent application
services include alerts generated for their contained services.

Procedure
1. Open the application service map containing the segment that you want to transfer:
a. Navigate to Service-Mapping > Application Services.
b. Click View map next to the relevant service instance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1731


<!-- page 1732 -->
c. Optional: Click Edit to be in Edit mode.
d. If the Host view is on, switch it off by clicking More Options and clicking the Display in Host
View toggle.

2. Identify the segment of the map that you want to transfer.
3. Right-click the connection leading to the CI at the top of this segment.

4. To transfer the segment into an existing application service map and connect to it:
a. Select Connect to existing service.
b. In the Add To Existing Discovered Service window, select the application service to which
you want to transfer the segment.
c. Click Choose.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1732


<!-- page 1733 -->
The map displays the contained application service icon instead of the transferred segment.
The application service map to which you transferred the segment, shows it under the
newly added entry point. For example, the Tomcat application service map includes the
Trade application service as its contained service. The Tomcat application service becomes
dependent on the Trade service. The Trade application service map shows the segment
transferred from the Tomcat application service.

5. To transfer the segment into a new service instance map and connect to it:
a. Select Create new service from here.
b. In the Create New Discovered Service window, define attributes for the service instance that
you want to create for this segment:

Field

Description

Name

Enter the service instance name. This
name must be unique. Use self-explanatory
names such as mailing service or
printing service.

Group

(Optional) Restrict access to a service
instance by adding it to an service instance
group. Users must then have the service
group role to access the service instance.

Criticality

(Optional) Select the option that reflects
how important this service instance is
to your organization operation. For more
information about service instance criticality,
see Define criticality for application services.

c. Click Create.
The map displays the contained application service icon instead of the transferred segment.
The new application service appears in the list of application services and contains the
transferred segment of the map. For example, the Tomcat application service includes the TP
rooms service as its contained service. The Tomcat application service becomes a service

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1733


<!-- page 1734 -->
dependent on the TP rooms service. The TP rooms application service map contains the
segment transferred from the Tomcat application service.

What to do next

To revert this operation:
1. On the service instance map containing the connected service CI, click the connection
leading to it.
2. In the Properties pane, note the URL attribute of the connection.

3. Double-click the connected service CI.
The service instance map for the CI containing the transferred segment opens.
4. Click Service Map Form.
5. Under Entry Points on the left, locate the entry point with the same URL you took note of.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1734


<!-- page 1735 -->
6. Click Delete on the entry point tab, and click Remove to confirm.
This entry point disappears from this service instance form.
The transferred segment disappears from the map of this service instance.
7. Navigate to the map that contained the connected service CI.
This map displays a boundary (

) instead of the connected service CI.

8. Click the boundary CI and click Unmark boundary.
The map is refreshed and displays the segment of the service instance.
Related topics
View dependent application services in classic Service Mapping
View contained application services in classic Service Mapping
Control user access to application services
Link application services
You can manually link two application services by adding a reference to one application
service into another application service. The service that contains the reference, becomes a
dependent service. The service that you include as a reference is a contained service. You can
link application services to create dependencies for impact monitoring in Event Management.

Before you begin

You can edit discovered and manually created service instances.

Important: You cannot fine-tune or edit tag-based and dynamic services from the map.
Ensure that you know the name and the service type of the application service, to which you
want to add a reference.
Role required: app_service_admin or service_mapping_admin

About this task

To create a link, add a reference to the relevant application service as an outgoing connection
of the relevant CI inside another application service. For example, you can add the UK Portal
application service as a link to the Online Store application service. In this case, the Online Store
service becomes dependent on the UK Portal service that it contains. The Online Store service
reflects discovery errors for its contained service in the Edit map mode, as well as alerts in Event
Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1735


<!-- page 1736 -->
Example of linked application services

When you link an application service to another application service, the information about
the CI, to which you linked the service, is updated in the CMDB. The CMDB recognizes other
application services that use the same applicative flow, and adds the contained application
service to these application services by analogy. The same logic applies when you remove a
contained application service: The system removes it from all application services where you
either manually linked this service or the system linked this service by analogy.
When using Service Mapping, you may want to link application services to create:
• A dependency between two application services.
• A placeholder for a map branch that Service Mapping failed to discover. If you create or
customize a pattern to discover the configuration item (CI) serving as an entry point for the
contained service instance, Service Mapping can discover this contained service.
• An indication that an service instance contains a branch, which Service Mapping cannot
discover.
You can add an service instance as a contained service to as many service instance as
necessary.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1736


<!-- page 1737 -->
Procedure
1. Navigate to Service Mapping > Application Services.
2. Click View map next to the relevant application service.
3. If needed, click Edit to ensure that the map is in Edit mode.
4. Right-click the CI to which you want to link an application service as a reference.
5. Select Add A CI.
6. In the Add a CI dialog box, select the application service you want to add as a contained
service:

Field

Description

CI Type

Select the relevant service type from this list:
◦ Tag-Based Application Service
◦ Mapped Application Service for
discovered or manually created application
services
◦ Calculated Application
Service for dynamic services
◦ Dynamic CI Group

CI Name

Select the name of the application service
that you want to link as a contained service.

7. Click Submit.
The icon for the contained service appears on the map.
Related topics
Application services
View dependent application services in classic Service Mapping
View contained application services in classic Service Mapping
Discover CIs identified as generic applications
Service Mapping identifies application configuration items (CIs) that it failed to properly discover
as generic applications. Correctly identify generic applications by creating a simplified discovery
pattern from an application service map, rather than creating a fully functional pattern from
scratch using the Pattern Designer.

Before you begin

You can edit discovered and manually created service instances.

Important: You cannot fine-tune or edit tag-based and dynamic services from the map.
Make sure that you understand what discovery process classification is.
Request information about the CI discovered as generic application from the application service
owner.
Role required: pd_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1737


<!-- page 1738 -->
About this task

ServiceNow applications refer to devices and applications that comprise a service instance as
configuration items (CIs).
As part of creating a simplified pattern for complete and proper application CI discovery, you
create these necessary articles:
CI type
All applications and hosts in your organization must have a corresponding
configuration item (CI) type, which is necessary for discovering and processing
applications and hosts correctly. A CI type (or class) contains several important
definitions that apply to all CIs belonging to it. Preconfigured CI types form a
hierarchy where child CI types derive attributes from their parents.
Define the CI type name and label for Service Mapping to create a child CI type for
the application [cmdb_ci_appl] CI type. For more information about CI types, see
Create CI types for Service Mapping and Discovery.
Process classification
Service Mapping relies on process information collected and classified by
Discovery to run relevant patterns to discover an application CI. During the
horizontal discovery process, Discovery checks if the attributes of the processes
running by the application match classification criteria you define. When a match
is found, Discovery uses the existing Application Rule identifier to check if the
application CI is new or if it already exists in the CMDB. Then Discovery either
updates an existing record or creates a new record for this application CI in the
CMDB.
Prior to starting the top-down discovery of an application CI, Service Mapping
checks its process classification in the CMDB. It then runs only those patterns that
are relevant for this application CI.
Create process classification by defining the classification criteria based on
preconfigured process attributes. The new process classification is added to
the Process Classification [discovery_classy_proc] table. To learn about process
classification, refer to Discovery classifiers.
Pattern
A pattern is a sequence of commands designed to detect attributes of a CI and
its outbound connections. When you create a simplified pattern for a generic
application, Service Mapping assigns the new simplified pattern to the CI type you
define as part of this process. The default name for the pattern starts with "ga_".
Association of an icon with this CI type
Each CI type is associated with an icon. When a CI is discovered and classified as
belonging to a CI type, the map displays the associated icon to visualize this CI.
You cannot create simplified patterns from generic applications that are based on multiple
processes. In this case, you have to either create a fully functional pattern using the Pattern
Designer or create a new CI type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1738


<!-- page 1739 -->
Procedure
1. Open the service instance map.
a. Navigate to All > CSDM > Manage Technology Management Services > Service Instance.
b. Select the needed service instance.
c. On the service instance page, select View Map.
2. Optional: Click Edit to be in Edit mode.

3. On the map, right-click the relevant generic application CI.
The CI Type attribute in the Application pane is Generic Application.
In the base system, the map displays generic application CIs with the gear icon.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1739


<!-- page 1740 -->
4. Select Create pattern for this generic application.
5. Define the CI type for the application.

Field

Description

Label

CI type name. For example, Citrix Licensing
Server.

Name

The table name containing data
for this CI type. For example,
cmdb_ci_app_license_server.
Use a name that is consistent with existing
CI type names. Typically, application CI type
names start from "cmdb_ci_app".

Icon

Select the name of the existing icon to
represent this application on maps.

6. Create the process classification for this CI by defining classification criteria for identifying the
process that the generic application is running.
In the base system, there are two conditions based on the running process name and the
running process command. The values are filled in by the latest process discovery.
a. Select the CI attribute from the list.
The attributes in the list are from the Running Process [cmdb_running_process] table.
b. Select an operator from the list.
If you select Is Empty, the second field is rendered irrelevant and disappears.
c. Specify the value to match.
The value field displays a dynamically generated suggestion from the latest process
discovery.
d. To add a dependent condition, click OR or AND.

Note: If the value in the first condition is not unique like Java.exe, use additional
conditions to narrow down the results.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1740


<!-- page 1741 -->
For example, to discover a Citrix Licensing server, use the following classification
criteria: the process name Imadmin.exe with the command C:\Program Files
(x86)\Citrix\Licensing\LS\lmadmin.exe.
e. To add a top-level condition, click New Criteria.
7. Click Create.
Once Service Mapping finished creating the CI type, the pattern, and the process
classification, it resumes discovery of the CI initially identified as a generic application.
8. Verify that Service Mapping discovered the CI as you expected.

Notice that Service Mapping uses the name of the process for the CI label on the map.

What to do next

If Service Mapping still has not discovered the CI as you expected, fine-tune the match and
classification criteria for the process classifier and configure advanced classification parameters.
If you are familiar with modifying patterns in the Pattern Designer, you can also enrich the
simplified pattern by defining operations that discover more attributes for the CI.
You may configure Discovery to use a different identifier. For more information, see Discovery
identifiers.
Related topics
Pattern-based discovery in Service Mapping
Application service completion
After an application service is reviewed and approved, you can define attributes that enhance its
discovery, reflect its importance, and control access to it.
There are several configurations you must perform to complete definition of an application
service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1741


<!-- page 1742 -->
Service Mapping workflow

Define criticality for application services
For each service instance, select a criticality level that reflects how important it is to your
organization operations.

Before you begin

Determine how important the application service is to your organization.
Role required: service_mapping_admin

About this task

Typically, you might assign high criticality to service instances, which impact your customer
base or sales revenue, while giving low criticality to internal service instances causing minor
inconvenience to organization employees. For example, you could set high criticality for a service
instance that supports sales functionality using the organization web site. A service instance that
provides internal printing for the organization employees could receive low criticality.
You can also use a criticality value to define recovery strategies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1742


<!-- page 1743 -->
Criticality levels displayed in Operator Workspace page

Procedure
1. In the classic environment, perform the following steps:
a. Navigate to All > Service Mapping > Home.
The Home page displays only information on service instances that Service Mapping can
discover or already discovered. The Home page does not display information on service
instances that are created manually or using the API.
b. Click View Your Services on the Completed tile.
c. Select the relevant application service.
d. Click Additional Info.
e. Select the appropriate option from the Business criticality list.
f. Click Update.
2. Alternatively, perform the following steps in the Agent Workspace UI:
a. Navigate to Agent Workspace > Agent Workspace Home.
b. Click Lists in the left pane.
c. Navigate to Services > All Services.
The list of services displays services in Operational status.
d. Select the relevant application service.
e. Click the Open Preview icon.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1743


<!-- page 1744 -->
The Details pane opens on the right.
f. Select the appropriate option from the Business criticality list.
g. Click Update.
Group application services
Organize application services by groups to perform actions simultaneously on multiple services,
and to control user access to services. You can use Event Management to track service health by
service groups.

Before you begin

Role required: service_mapping_admin or app_service_admin

About this task

Typically, enterprises have hundreds of services which makes it impractical to manage them
individually. Service groups can make service lists much shorter and easier to manage,
especially in large organizations or service providers.
How you group service instances depends on the user and on service provisioning policies in
your enterprise. The relation between service instances in groups is purely logical and the same
service instance can belong to multiple groups. For example, the Mobile service can be part of
the following service groups: Sales, Beijing, and Telephony.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1744


<!-- page 1745 -->
Example of a service instance belonging to different groups

You can embed a service group within another service group to create a hierarchy of service
groups. If users have access to a parent service group, they automatically have access to all
its child groups. By default, all new services are assigned to the All service group that lets all
users view and manage service instances. When you assign a role to a service group, the users
with this role can access service instances in this service group and in the All service group. To
enable users with this role to access other services, assign this role to the respective service
group. Do not assign user roles directly to the All service group.
If Service Mapping is activated, service groups can contain a mixture of manually created
application services and application services discovered by Service Mapping.
You can use ServiceNow AI Platform Notifications to alert users if the service group severity
changes to critical. The overall severity of the group is determined by the highest alert severity
within the group.

Procedure
1. Navigate to All > Configuration > Application Services > Service Groups.
2. Click New.
3. Enter the name of the new service instance group in the Name field.
4. To embed this group in another group, enter the name of the other group in the Parent Group
field.
5. Right-click the form header and click Save.
6. Add a service instance to the newly created service group.
a. In the Service Group Members section, click New.
b. In the Name field, enter the name of the service instance.
If you are using Event Management, you can also enter an alert group name.
c. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1745


<!-- page 1746 -->
7. Alternatively, add a service instance to a group from the service instance form.
a. Navigate to All > Configuration > Service Instances > Service Instances.
b. Select the service instance you want to add to a service group.
c. In the Service Group Members section, double-click Insert a new row.
d. Enter the name of the service group to which you want to add the selected service instance.
e. Click the OK icon (

).

f. Click Update.
Control user access to application services
Assign user roles to service groups to grant users access to application services in your
organization. Your organization may restrict access to some services for security or secrecy
reasons.

Before you begin

Make sure that you have performed the user provisioning tasks for the users you want to grant
access:
1. Add users to user groups
2. Create new roles

.

.

3. Assign roles to users or user groups

.

Also, make sure that you have created service groups as described in Group application
services.
Role required: app_service_admin or service_mapping_admin

About this task

In the base system, the following roles provide access to application services:
app_service_admin
Creates and modifies service instances, creates service groups, views, and edits
service instance maps.
app_service_user
Views maps for operational service instances and retrieves service content using
the getContent - GET REST API. The itil role that serves as the basic helpdesk
technician role contains the app_service_user role.
Service Mapping provides these preconfigured roles:
service_mapping_admin
Sets up the Service Mapping application. Maps, fixes, and maintains service
instances. Also performs advanced configuration and customization of the product.
Assign this role to application administrators.
service_mapping_user
Views maps for operational service instances to plan change or migration, as well
as analyze the continuity and availability of services. Assign this role to application
users.
sm_app_owner
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1746


<!-- page 1747 -->
Provides information necessary for successful mapping of a service instance. Once
a service is mapped, this user reviews the results and either approves it or suggests
changes. Assign the sm_app_owner role to users who own service instances and
are familiar with the infrastructure and applications that make up the services.

Note: Users with the itil role only can view all service instances.
Event Management provides these preconfigured roles:
evt_mgmt_admin
Has read and write access to all Event Management features to configure Event
Management.
evt_mgmt_operator
In addition to the evt_mgmt_user permissions, can also activate operations on
alerts such as acknowledge, close, open incident, and run remediations.
evt_mgmt_user
Has read access to all Event Management features. Has write access to alerts to
manage the alert life. Has the itil role to be able to manage incidents that are created
from alerts.
evt_mgmt_integration
Has create access to the Event [em_event] and Registered Nodes
[em_registered_nodes] tables to integrate with external event sources.
Typically, enterprises have hundreds of services which makes it impractical to manage them
individually. Service groups can make service lists much shorter and easier to manage,
especially in large organizations or service providers. In a hierarchy of service groups, access to
a parent service group automatically grants access to all the child service groups.
Users inherit permissions from roles that are assigned to them. You can assign some roles
directly to service groups to allow all users with this role to access all application services
belonging to this group. However, most enterprises choose to organize their roles as a hierarchy.
It helps to manage roles across multiple ServiceNow applications. For example, the Service
Mapping administrator [service_mapping_admin] can be part of a broader administrator role like
administrator [admin]. You can add users to user groups and then assign roles to the user groups
to give permissions of this role simultaneously to all the group users.
Assigning a role to an application service group

By default, all new services are assigned to the All service group that lets all users view and
manage service instances. When you assign a role to a service group, the users with this role can
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1747


<!-- page 1748 -->
access service instances in this service group and in the All service group. To enable users with
this role to access other services, assign this role to the respective service group. Do not assign
user roles directly to the All service group.

Procedure
1. Navigate to either of the following:
◦ Configuration > Application Services > Service Group Responsibilities.
◦ If Service Mapping is activated: Service Mapping > Services > Service Group
Responsibilities.
◦ If Event Management is activated: Event Management > Services > Service Group
Responsibilities.
2. Click New and fill out the Application Service Group Responsibilities form.

Field

Description

Application Service Group

Service group to which you want to assign a
role.

Role

Role you want to assign to the selected
service group.
For example, financial_services_admin.

3. Click Submit.

Example:

To manage access to services that contain sensitive financial information in your organization:
1. Organize the services into the Financial Services group.
2. Create a new user role, financial services administrator [financial_services_admin] role, that
contains the [app_service_admin] role.
3. Assign the Financial Services administrator role to the Financial Services group.
As a result, only users with the Financial Services administrator role can access application
services belonging to the Financial Services group.
Schedule a top-down discovery by Service Mapping
After Service Mapping discovers configuration items (CIs) belonging to your service instance for
the first time, it then rediscovers CIs to find changes and updates. Create or modify discovery
schedules to control how often Service Mapping rediscovers services or CIs. For example, you
may create custom discovery schedules to avoid redundant stress on the infrastructure.

Before you begin

Define your application services prior to defining discovery schedules for discovering CIs which
are part of these services.
When creating a schedule for CI types or specific CIs, make sure that at least one application
service containing the relevant CI is in the operational state.
Learn about different types of top-down discovery schedules.
Role required: service_mapping_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1748


<!-- page 1749 -->
About this task
Procedure
1. Navigate to Service Mapping > Administration > Discovery Schedules.
2. To create a custom discovery schedule, click New.
Or
To customize the generic schedule for all application CIs, click All Applications or Load
Balancer Service.

3. In fresh install or reset instances, fill in the fields in the Discovery Schedule form.

Field

Description

Name

For a new specific schedule, enter a unique and descriptive name.

Discover By default, the value for this field is Service, indicating that you are creating a
top-down discovery schedule. You cannot change this value.
Discover The schedule types for specific top-down discovery:
by
◦ CI Type
◦ Specific CI
◦ Service Attributes
◦ Service Group Attributes
CI type

This field is available when CI type is selected from Select Discovery. For a new CI
type-based schedule, select the relevant application CI type from the list.

CI

This field is available when Specific CI is selected from Discover by. For a
new schedule for a specific CI, select the relevant CI from the list.

Filter
This area contains the condition builder and is available when Service
Services Attributes is selected from Discover by. Use the filter to create the filtering
to
criteria for services. Service Mapping discovers only services that answer the
Discover defined criteria.
Filter
This field contains the condition builder and is available when Service Group
Groups Attributes is selected from Discover by. Use the filter to create the filtering
to
criteria for service groups. Service Mapping discovers only services belonging to
Discover the groups that answer the defined criteria.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1749


